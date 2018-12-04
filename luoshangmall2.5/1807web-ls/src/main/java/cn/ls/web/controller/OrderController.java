package cn.ls.web.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ls.common.service.RedisService;
import cn.ls.common.util.CookieUtils;
import cn.ls.common.util.ObjectUtil;
import cn.ls.common.util.UUIDUtil;
import cn.ls.web.pojo.Cart;
import cn.ls.web.pojo.Order;
import cn.ls.web.pojo.User;
import cn.ls.web.service.CartService;
import cn.ls.web.service.OrderService;



@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private CartService cartService;
	@Autowired
	private RedisService redis;
	@RequestMapping("order/cart-order")
	public String collectOrder(HttpServletRequest request,Model model) throws Exception{
		String ticket = CookieUtils.getCookieValue(request, "LS_TICKET");
		String userJson = redis.get(ticket);
		if(userJson==null||userJson.trim()==""){
			return "relogin-toolongtime";
		}
		
		
		User user = ObjectUtil.mapper.readValue(userJson, User.class);
		String userId=user.getUserId();
		List<Cart> cartList=cartService.queryMyCart(userId);
		
		for (Cart cart : cartList) {
			cart.setSize(cart.getSize());
		}
		
		System.out.println("订单中的cartList"+cartList);
		model.addAttribute("cartList",cartList);
		System.out.println("购物车详细信息:"+cartList);
		return "order_add";
	}
	

	@RequestMapping("order/list")
	public String queryMyOrder(HttpServletRequest request,Model model) throws Exception, Exception{
		String ticket = CookieUtils.getCookieValue(request, "LS_TICKET");
		String userJson;
		if(ticket==null){
			return "relogin-order";
		}else{
		 userJson = redis.get(ticket);
			if(userJson==null||userJson.trim()==""){
				return "relogin-toolongtime";
			}
		}
		User user = ObjectUtil.mapper.readValue(userJson, User.class);
		String userId=user.getUserId();
		List<Order> orderList=orderService.queryMyOrder(userId);
		model.addAttribute("orderList",orderList);
		return "order_list";
	}
	
	
	@RequestMapping("order/deleteOrder/{orderId}")
	public String deleteOrder(@PathVariable String orderId) throws Exception
	{	
		System.out.println(orderId);
		orderService.deleteOrder(orderId);
		return "redirect:/order/list";
	}
	

	@RequestMapping("order/addOrder")
	public String saveOrder(Order order,HttpServletRequest request) throws Exception
	{	
		String ticket = CookieUtils.getCookieValue(request, "LS_TICKET");
		String userJoson = redis.get(ticket);
		User user = ObjectUtil.mapper.readValue(userJoson, User.class);
		String userId=user.getUserId();
		order.setOrderId(UUIDUtil.getUUID());
		order.setUserId(userId);
//		Date date = new Date();
//		order.setOrderTime(date);
//		System.out.println(date);
//		order.setOrderPaystate(0+"");
		order.setOrderPaystate(0+"");
		System.out.println(order);
		if(order.getReceiverAddress()==null||order.getReceiverAddress().trim()==""){
			return "errorAddress";
		}
		
		System.out.println(order.getOrderId());
		try {
			orderService.saveOrder(order);
			return "index";
		} catch (Exception e) {
			e.printStackTrace();
			return "errorAddOrder";
		}	
	}
	
	

}

	
	
	
	
	
	
	

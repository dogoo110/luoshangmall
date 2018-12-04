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
import cn.ls.web.pojo.Cart;
import cn.ls.web.pojo.User;
import cn.ls.web.service.CartService;


@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	@Autowired
	private RedisService redis;
	//查询我的购物车的逻辑
	@RequestMapping("cart/mycart")
	public String showMyCart(HttpServletRequest request,Model model) throws Exception {
		//从cookie中拿到key 去redis取userId,用于查询购物车的信息
		String ticket = CookieUtils.getCookieValue(request, "LS_TICKET");

		String userJson;
		
		if(ticket==null){
			return "relogin-cart";
		}else{
		 userJson = redis.get(ticket);
			if(userJson==null||userJson.trim()==""){
				return "relogin-toolongtime";
			}
		}
		User user = ObjectUtil.mapper.readValue(userJson, User.class);
		String userId=user.getUserId();
		List<Cart> cartList=cartService.queryMyCart(userId);
		if(cartList!=null){
			for (Cart cart : cartList) {
				cart.setProductName(cart.getProductName().substring(0,14));
				cart.setSize(cart.getSize().toUpperCase());
			}
		}
		System.out.println(cartList);
		model.addAttribute("cartList",cartList);
		return "cart";
	}
	//加入购物车
	@RequestMapping("cart/addCart/{productId}/{num}/{size}")
	public String addCart(@PathVariable String productId,@PathVariable Integer num,
			@PathVariable String size,
			HttpServletRequest request) throws Exception{
		int success=0;
//		String userId=(String) request.getAttribute("userId");
		String ticket = CookieUtils.getCookieValue(request, "LS_TICKET");
		String userJson;
		if(ticket==null){
			return "relogin-cart";
		}else{
		 userJson = redis.get(ticket);
		 if(redis.getTime(ticket)<=10*60){
		 redis.set(ticket, redis.get(ticket), (int)(redis.getTime(ticket)+10*60));
		 }
		}
		User user = ObjectUtil.mapper.readValue(userJson, User.class);
		String userId = user.getUserId();
		Cart exists=cartService.ifExist(productId,userId,size);
		if(exists!=null){
			cartService.updateCartNum(userId, productId, exists.getNum()+1, size);
			return "redirect:/cart/mycart";
		}else{
			success=cartService.addCart(userId,productId,num,size);
		}
		if(success==1){
			//新增成功
			return "redirect:/cart/mycart";
		}else{
			return "index";
		}
	}
	//更新商品数量
	@RequestMapping("cart/editCart/{productId}/{num}/{size}")
	public String updateCartNum(@PathVariable String productId,@PathVariable Integer num,
			@PathVariable String size,HttpServletRequest request) throws Exception{
		String ticket = CookieUtils.getCookieValue(request, "LS_TICKET");
		String userJoson = redis.get(ticket);
		User user = ObjectUtil.mapper.readValue(userJoson, User.class);
		String userId=user.getUserId();
		System.out.println(userId+",,"+productId+",,"+num+",,"+size);
		cartService.updateCartNum(userId,productId,num,size);
		return "redirect:http://web.luoshangmall.cn/cart/mycart";
	}
	
	//删除
	@RequestMapping("cart/deleteCart/{productId}/{size}")
	public String deleteCart(@PathVariable String productId,
			@PathVariable String size,HttpServletRequest request) throws Exception{
		String ticket = CookieUtils.getCookieValue(request, "LS_TICKET");
		String userJoson = redis.get(ticket);
		User user = ObjectUtil.mapper.readValue(userJoson, User.class);
		String userId=user.getUserId();
		int success = cartService.deleteCart(userId,productId,size);
		if(success==1){			
			return "redirect:http://web.luoshangmall.cn/cart/mycart";
		}else{
			return "index";
		}
	}
}

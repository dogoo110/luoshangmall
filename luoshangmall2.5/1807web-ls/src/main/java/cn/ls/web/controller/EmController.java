package cn.ls.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.JsonNode;

import cn.ls.common.util.ObjectUtil;
import cn.ls.web.config.EmEvent;
import cn.ls.web.pojo.DeleteStyleNum;
import cn.ls.web.pojo.Product;
import cn.ls.web.service.OrderService;
import cn.ls.web.service.ProductService;
@Controller
public class EmController{

	
@Autowired
ApplicationContext applicationContext;
	@Autowired
	OrderService orderService;
	
	
	@RequestMapping("order/pay/{userId}/{orderId}")
	@ResponseBody
	public String Payorder(@PathVariable String userId,
			@PathVariable String orderId) throws Exception{
		applicationContext.publishEvent(new EmEvent(new EmController()));
		orderService.changePaystate(userId,orderId);
		
		String delStyleJson=orderService.queryItemId(orderId);

		
		orderService.delNum(delStyleJson);
		
		//支付状态改变后 数据库内 库存数量对应减少
		//根据userId和orderId查询order所有信息,拿到oderItem里面的size码数, where size=size去减少相应的num
//		orderService.queryMyOrder(userId)
		return "<h1 stryle='text-align:center;color:red'>支付成功<h1>";
	}
	
	@RequestMapping("order/success")
	public String successEm(){
		return "success";
	}
	
	

}

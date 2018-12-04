package cn.ls.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ls.web.pojo.OrderSelect;

@Controller
public class EmImageController {
	@RequestMapping("pay/imageEm/{userId}/{orderId}")
	public String imageEm(@PathVariable String userId,@PathVariable String orderId,Model model){
		OrderSelect orderInfo=new OrderSelect();
		orderInfo.setUserId(userId);
		orderInfo.setOrderId(orderId);
		model.addAttribute("orderInfo", orderInfo);
		return "imageEm";
	}
}

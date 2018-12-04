package xyz.ls.check.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import xyz.ls.check.service.SendService;


@RestController
public class SendController {

	@Autowired
	private SendService sendService;
	
	
	@RequestMapping("/check/sendCheckMail")
	public String sendEmail(String userid,String email,HttpServletResponse response){
		response.setHeader("Access-Control-Allow-Origin","*");
		System.out.println("发送已接收");
		sendService.SendCheckMail(userid,email);
		return "1";
	}
	
}

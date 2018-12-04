package cn.ls.web.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import cn.ls.web.controller.EmController;
@Component
@Controller
public class MyEventListener implements ApplicationListener<EmEvent>{
@Autowired
	EmController emcontroller;
	@Override
	public void onApplicationEvent(EmEvent event) {
		System.out.println("事件源:"+event.getSource().getClass().getName()+"监听成功");
		this.success();
	}
	
	public String success(){
		return "success";
	}

    
}

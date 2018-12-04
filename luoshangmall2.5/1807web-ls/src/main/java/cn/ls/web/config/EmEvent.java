package cn.ls.web.config;

import org.springframework.context.ApplicationEvent;

import cn.ls.web.controller.EmController;

@SuppressWarnings("serial")
public class EmEvent extends ApplicationEvent{

	public EmEvent(EmController source) {
		super(source);
	}
	

}

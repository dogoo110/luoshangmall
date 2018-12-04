package cn.ls.sec.config;

import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.DirectExchange;
import org.springframework.amqp.core.Queue;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.amqp.core.Binding;

@Configuration
public class SecConfig {
	//声明交换机
	@Bean
	public DirectExchange getEx(){
		return new DirectExchange("sec-ex");
	}
	
	//声明队列
	@Bean
	public Queue queue(){
		return new Queue("sec-queue");
	}
	
	//绑定队列到交换机
	@Bean
	public Binding bind(){
		return BindingBuilder.bind(queue()).to(getEx()).with("seckill");
	}
}

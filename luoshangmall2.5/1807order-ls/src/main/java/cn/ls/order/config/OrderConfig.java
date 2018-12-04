package cn.ls.order.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
@ImportResource("classpath:spring-quartz.xml")
public class OrderConfig {

}

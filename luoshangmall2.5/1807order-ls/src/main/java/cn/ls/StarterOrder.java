package cn.ls;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("cn.ls.order.mapper")
public class StarterOrder {
	public static void main(String[] args) {
		SpringApplication.run(StarterOrder.class, args);
	}
}

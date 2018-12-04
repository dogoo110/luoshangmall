package cn.ls;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("cn.ls.cart.mapper")
public class StarterCart {
	public static void main(String[] args) {
		SpringApplication.run(StarterCart.class, args);
	}
}

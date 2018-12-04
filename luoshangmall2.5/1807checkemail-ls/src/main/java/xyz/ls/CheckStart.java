package xyz.ls;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
@MapperScan("xyz.ls.check.mapper")
public class CheckStart{

	
	public static void main(String[] args) {
		SpringApplication.run(CheckStart.class);
	}
		
}

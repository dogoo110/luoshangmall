package cn.ls;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("cn.ls.web.mapper")
public class StarterLs {
	public static void main(String[] args) {
		SpringApplication.run(StarterLs.class, args);
	}
}

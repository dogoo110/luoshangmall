package cn.ls;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("cn.ls.sec.mapper")
public class SecStart {
	public static void main(String[] args) {
		SpringApplication.run(SecStart.class, args);
	}

}

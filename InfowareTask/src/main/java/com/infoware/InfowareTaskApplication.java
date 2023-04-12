package com.infoware;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.infoware")
public class InfowareTaskApplication {

	public static void main(String[] args) {
		
		SpringApplication.run(InfowareTaskApplication.class, args);
		System.out.println("Application Started");
	}

}

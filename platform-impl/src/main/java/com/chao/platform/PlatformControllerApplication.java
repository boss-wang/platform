package com.chao.platform;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(value = "com.chao.platform.dao")
public class PlatformControllerApplication {

    public static void main(String[] args) {
        SpringApplication.run(PlatformControllerApplication.class, args);
    }

}


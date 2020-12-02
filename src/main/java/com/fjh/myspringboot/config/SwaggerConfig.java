package com.fjh.myspringboot.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

import java.util.HashSet;

@Configuration
public class SwaggerConfig {
    @Bean
    public Docket createRestApi() {
        ApiInfo apiInfo = new ApiInfoBuilder().title("JunhanProject-Swagger接口")
                .description("Swagger接口，供前端页面进行api调用")
                .contact(new Contact("FangJunhan", null, "fang.junhan@qq.com"))
                .version("1.0")
                .build();
        HashSet hashSet = new HashSet();
        hashSet.add("http");

        return new Docket(DocumentationType.OAS_30).pathMapping("/")
                .enable(true)
                .apiInfo(apiInfo)
                .select() // 指定需要发布到Swagger的接口目录，不支持通配符
                .apis(RequestHandlerSelectors.basePackage("com.fjh.myspringboot.controller"))
                .paths(PathSelectors.any())
                .build()
                .protocols(hashSet);
    }
}

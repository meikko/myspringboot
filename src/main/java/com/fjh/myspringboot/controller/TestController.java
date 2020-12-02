package com.fjh.myspringboot.controller;

import com.fjh.myspringboot.dto.Response;
import com.fjh.myspringboot.dto.TestDto;
import com.fjh.myspringboot.service.TestService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/test")
@Api(tags = "通用测试")
public class TestController {

    private TestService testService;

    public TestController(TestService testService) {
        this.testService = testService;
    }

    @GetMapping("/myest")
    @ApiOperation("第一个测试")
    public Response<TestDto> mytest(
            @ApiParam("字符-Y") @RequestParam String zifu,
            @ApiParam("数字-3") @RequestParam Integer shuzi) {

        TestDto testDto = testService.list(zifu, shuzi);
        return Response.success(testDto);
    }
}

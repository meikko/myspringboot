package com.fjh.myspringboot.controller;

import com.fjh.myspringboot.dto.Response;
import com.fjh.myspringboot.dto.TestDto;
import com.fjh.myspringboot.service.TestService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Arrays;


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

    @GetMapping("/putcookie")
    @ApiOperation("cookie和session")
    Response putcookie(HttpServletResponse resp, HttpServletRequest rsq,
                       HttpSession session){
        resp.addCookie(new Cookie("cookie0", "ab"));
        resp.addCookie(new Cookie("cookie1", "ac"));
        session.setAttribute("session1","s1");
        session.setAttribute("session2","s2");

        Cookie[] cookie = rsq.getCookies();
        String a0 = null; String a1 = null; String a2 = null;
        if(cookie != null && cookie.length > 0){
            a0 = cookie[0].getValue();
            a1 = cookie[1].getValue(); // 在不清理缓存、 生命周期活跃的情况下, 可以获取到.
            a2 = cookie[2].getValue(); // 同时, session 也属于 按序设置的 cookie
            // cookie会报空指针
        }
        
        String session1 = (String) session.getAttribute("session1");
        String session2 = (String) session.getAttribute("session2");
        String session3 = (String) session.getAttribute("session3"); // session HttpSession访问即创建

        System.out.println("cookie数组= " + Arrays.toString(cookie));
        System.out.println("cookie0= " + a0);
        System.out.println("cookie1= " + a1);
        System.out.println("cookie2= " + a2);
        System.out.println("session1= " + session1);
        System.out.println("session2= " + session2);
        System.out.println("session3= " + session3);

        return Response.success();
    }
}

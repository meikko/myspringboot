package com.fjh.myspringboot.service;

import com.alibaba.fastjson.JSON;
import com.fjh.myspringboot.dto.TestDto;
import com.fjh.myspringboot.dto.TestMeatDto;
import com.fjh.myspringboot.entity.TestList;
import com.fjh.myspringboot.mapper.TestMapper;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class TestService {

    private TestMapper testMapper;

    public TestService(TestMapper testMapper) {
        this.testMapper = testMapper;
    }

    public TestDto list(String zifu, Integer shuzi){
        List<TestList> lists = null;
        if (zifu.equals("Y") && shuzi == 3){
            lists = testMapper.list();
        }
        TestDto testDto = new TestDto();
        List<TestMeatDto> meatDtos = new ArrayList<>();
        lists.forEach(item -> {
            TestMeatDto meatDto = JSON.parseObject(JSON.toJSONString(item),TestMeatDto.class);
            meatDtos.add(meatDto);
        });
        testDto.setA(7989);
        testDto.setC("success");
        testDto.setList(meatDtos);

        return testDto;
    }


}

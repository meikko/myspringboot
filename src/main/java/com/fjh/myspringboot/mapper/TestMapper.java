package com.fjh.myspringboot.mapper;

import com.fjh.myspringboot.entity.TestList;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TestMapper {

    List<TestList> list();
}

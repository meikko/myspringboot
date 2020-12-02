package com.fjh.myspringboot.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * 返回给外部接口的包装类
 */
@Data
public class TestDto implements Serializable {

/**
 * 实现Serializable接口的类可以被ObjectOutputStream转换为字节流，同时也可以通过ObjectInputStream再将其解析为对象。
 */

    private Integer a;
    private Integer b;
    private String c;
    private List<TestMeatDto> list;
}

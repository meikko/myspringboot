package com.fjh.myspringboot.dto;

import lombok.Data;

import java.io.Serializable;

@Data
public class Response<T> implements Serializable {
    private Integer code;
    private String message;
    private T data;

    public Response(Integer code, String message, T data) {
        this.code = code;
        this.message = message;
        this.data = data;
    }

    public static<T> Response<T> success() {
        return new Response<>(0, "成功", null);
    }

    public static<T> Response<T> success(T data) {
        return new Response<>(0, "成功", data);
    }

    public static<T> Response<T> success(String message, T data) {
        return new Response<>(0, message, data);
    }

    public static Response<Object> fail(String message) {
        return new Response<>(1, message, null);
    }

    public static Response<Object> fail(Integer code, String message) {
        return new Response<>(code, message, null);
    }
}

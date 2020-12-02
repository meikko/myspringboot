package com.fjh.myspringboot.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 返回给外部接口包装类 的内部列表(具体业务数据)
 */
@Data
@ApiModel
public class TestMeatDto implements Serializable {

    @ApiModelProperty(value = "测试字符1")
    private String a;

    @ApiModelProperty(value = "测试数字2")
    private Integer b;

    @ApiModelProperty(value = "登录用户名")
    private String loginname;

    @ApiModelProperty(value = "用户昵称")
    private String name;

    @ApiModelProperty(value = "登录次数")
    private Integer logincount;

    @ApiModelProperty(value = "状态")
    private Integer status;

    @ApiModelProperty(value = "前后台用户标识")
    private Integer usertype;

    @ApiModelProperty(value = "用户创建时间")
    private Date createtime;

    @ApiModelProperty(value = "邮件")
    private String email;
}

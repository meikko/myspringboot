package com.fjh.myspringboot.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 数据库读写，与数据表对应
 */
@Data
public class TestList implements Serializable {
    private Integer userid; // 主键
    private String loginname; // 登录用户名
    private String password; // 登录密码
    private Date logindate; // 登录时间
    private String name; // 用户昵称
    private String loginip; // 限制登录IP
    private Integer departmentid; // 所属部门
    private Integer logincount; // 登录次数
    private Integer failcount; // 连续登录失败次数
    private Integer status; // 状态
    private Integer usertype; // 前后台用户标识
    private Date createtime; // 用户创建时间
    private Integer organid; // 所属机构
    private Integer styletype; // 自定义系统颜色 1紫色 2蓝色 3灰色 4无色
    private String allotorgan; // 分配机构
    private String mobile; // 手机
    private String email; // 邮件
    private Integer sensitiveright; // 关注权限控制 1共享关注 2个人关注 4他人关注
}

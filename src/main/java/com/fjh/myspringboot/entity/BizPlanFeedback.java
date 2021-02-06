package com.fjh.myspringboot.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
public class BizPlanFeedback {

    // 主键
    private Long id;

    // 参与单位主键
    private Long participaterUnitId;

    // 统筹表主键
    private Long bizPlanId;

    // 反馈情况 -1:未反馈 0:参加 1:不参加
    private Integer isJoin;

    // 参加人
    private String joinUser;

    // 联系电话
    private String mobie;

    // 备注
    private String remark;

    // 反馈时间
    private Date feedbackDate;

    // 是否提醒 0:未提醒 1:已经提醒
    private Long isRemind;
}

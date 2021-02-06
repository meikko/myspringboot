package com.fjh.myspringboot.myEEtest;

import com.fjh.myspringboot.entity.BizPlanFeedback;

import java.util.*;

public class stream {

    public static void main(String[] args) {
        String[] participaterUnitId = {"2", "3", "5", "7"};
        List<BizPlanFeedback> bizPlanFeedbacks = new ArrayList();
        BizPlanFeedback bizPlanFeedback1 = new BizPlanFeedback();
        bizPlanFeedback1.setParticipaterUnitId(3L);
        BizPlanFeedback bizPlanFeedback2 = new BizPlanFeedback();
        bizPlanFeedback2.setParticipaterUnitId(9L);
        bizPlanFeedbacks.add(0, bizPlanFeedback1);
        bizPlanFeedbacks.add(1, bizPlanFeedback2);

        // 用前端参与单位数 匹配 list
        for (String id : participaterUnitId) {
            if (bizPlanFeedbacks.stream().noneMatch(w -> w.getParticipaterUnitId().equals(Long.valueOf(id)))) {
                // list中没有该参与单位, 新增
                System.out.println(id);
            }
        }
        System.out.println("---------------");
        // 用list 匹配 前端参与单位数
        for (BizPlanFeedback w : bizPlanFeedbacks) {
            if (!Arrays.asList(participaterUnitId).contains(w.getParticipaterUnitId().toString())) {
                // 前端参与单位不存在list中, 删除
                System.out.println(w.getParticipaterUnitId());
            }
        }


    }

}

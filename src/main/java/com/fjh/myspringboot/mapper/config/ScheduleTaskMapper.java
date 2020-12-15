package com.fjh.myspringboot.mapper.config;

import org.springframework.stereotype.Repository;

@Repository
public interface ScheduleTaskMapper {

    String getCron(int id);
}

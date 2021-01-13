package com.fjh.myspringboot;

import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.transaction.annotation.Transactional;

@SpringBootTest(classes = SpringBootTest.class)
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@Transactional
public class BaseTest {

}

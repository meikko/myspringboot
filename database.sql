-- 创建用户表
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
                            `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
                            `loginname` varchar(50) NOT NULL COMMENT '登录用户名',
                            `password` varchar(32) NOT NULL COMMENT '登录密码',
                            `logindate` datetime DEFAULT NULL COMMENT '登录时间',
                            `name` varchar(50) DEFAULT NULL COMMENT '用户昵称',
                            `loginip` varchar(255) DEFAULT NULL COMMENT '限制登录IP',
                            `departmentid` int(11) NOT NULL COMMENT '所属部门',
                            `logincount` int(11) DEFAULT '0' COMMENT '登录次数',
                            `failcount` int(11) DEFAULT '0' COMMENT '连续登录失败次数',
                            `status` int(11) NOT NULL COMMENT '状态',
                            `usertype` int(11) NOT NULL COMMENT '前后台用户标识',
                            `createtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '用户创建时间',
                            `organid` int(11) DEFAULT NULL COMMENT '所属机构',
                            `styletype` int(11) DEFAULT NULL COMMENT '自定义系统颜色 1紫色 2蓝色 3灰色 4无色',
                            `allotorgan` varchar(255) DEFAULT '#' COMMENT '分配机构',
                            `mobile` varchar(11) DEFAULT NULL COMMENT '手机',
                            `email` varchar(100) DEFAULT NULL,
                            `sensitiveright` tinyint(4) NOT NULL DEFAULT '1' COMMENT '关注权限控制 1共享关注 2个人关注 4他人关注',
                            PRIMARY KEY (`userid`),
                            KEY `fk_dep_user` (`departmentid`) USING BTREE,
                            KEY `fk_user_userid` (`userid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2131 DEFAULT CHARSET=utf8 COMMENT='系统用户表\r\nstatus==1表示账号非锁定，status==2表示账号锁定\r\nusertype==1表示前台用户，usertype==2表示后台用户,usertype==3表示前台，后台用户';
INSERT INTO `sys_user` VALUES (1912, 'panws', '26CAD0B966AFF7EA641436067B2F8C70', '2020-04-22 09:10:21', '潘某某', '', 1, 24, 0, 1, 1, '2019-07-16 09:01:27', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1913, 'yany', '26CAD0B966AFF7EA641436067B2F8C70', '2020-04-21 13:40:41', '闫某某', '', 1, 151, 0, 1, 1, '2019-07-16 09:04:51', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1914, 'zhangf', '26CAD0B966AFF7EA641436067B2F8C70', '2019-09-12 09:19:55', '张某某', '', 1, 2, 0, 1, 1, '2019-07-16 09:07:02', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1915, 'huangln', '26CAD0B966AFF7EA641436067B2F8C70', '2019-07-18 16:31:19', '黄某某', '', 1, 4, 0, 1, 1, '2019-07-16 09:07:42', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1916, 'pansr', '26CAD0B966AFF7EA641436067B2F8C70', NULL, '潘某某', '', 1, 0, 0, 1, 1, '2019-07-16 09:09:51', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1917, 'wangfj', '26CAD0B966AFF7EA641436067B2F8C70', NULL, '王某某', '', 1, 0, 0, 1, 1, '2019-07-16 09:12:20', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1918, 'qiangy', '26CAD0B966AFF7EA641436067B2F8C70', NULL, '强某某', '', 1, 0, 0, 1, 1, '2019-07-16 09:13:34', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1919, 'xuw', '26CAD0B966AFF7EA641436067B2F8C70', NULL, '徐某某', '', 1, 0, 0, 1, 1, '2019-07-16 09:14:02', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1920, '赵若楠', '25F9E794323B453885F5181F1B624D0B', NULL, '赵某某', NULL, 2, 0, 0, 1, 1, '2019-07-31 10:27:08', 2, NULL, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1921, '范劭林', '25F9E794323B453885F5181F1B624D0B', NULL, '范某某', '', 2, 0, 0, 1, 1, '2019-07-31 10:27:09', 2, NULL, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1922, '杨柳', '25F9E794323B453885F5181F1B624D0B', NULL, '杨某某', NULL, 2, 0, 0, 1, 1, '2019-07-31 10:27:09', 2, NULL, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1924, '13817980989', '25F9E794323B453885F5181F1B624D0B', NULL, '陈某某', NULL, 2, 0, 0, 1, 1, '2019-08-19 10:39:26', 2, NULL, NULL, '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1926, 'fansl', '26CAD0B966AFF7EA641436067B2F8C70', '2020-01-20 15:50:13', '范某某', '', 1, 5, 0, 1, 1, '2019-08-23 14:15:06', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1927, '18917701916', '25F9E794323B453885F5181F1B624D0B', NULL, '马某某', NULL, 2, 0, 0, 1, 1, '2019-08-23 14:36:06', 2, NULL, NULL, '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1928, '15001854767', '25F9E794323B453885F5181F1B624D0B', '2019-08-30 13:43:11', '王某某', NULL, 2, 10, 0, 1, 1, '2019-08-23 14:44:18', 2, NULL, NULL, '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1961, 'cuiyan', 'CB5996EBD19803D7164EEF944407CD76', '2020-05-07 08:41:59', '方某某', '', 1, 26, 0, 1, 1, '2019-11-07 15:27:12', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1962, 'lixiaofeng', 'CB5996EBD19803D7164EEF944407CD76', '2020-09-03 15:21:48', '李某某', '', 1, 897, 0, 1, 1, '2019-11-07 15:30:02', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1963, 'wuy', '26CAD0B966AFF7EA641436067B2F8C70', '2020-04-20 14:45:50', '吴某某', '', 1, 277, 0, 1, 1, '2019-11-07 16:19:19', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1964, 'guyin', '26CAD0B966AFF7EA641436067B2F8C70', NULL, '顾某某', '', 1, 0, 0, 1, 1, '2019-11-27 09:35:02', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1967, 'zag', '26CAD0B966AFF7EA641436067B2F8C70', '2020-04-08 11:00:35', '郑某某', '', 5, 11, 0, 1, 1, '2019-12-06 10:29:02', 5, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1968, 'fzcs', '26CAD0B966AFF7EA641436067B2F8C70', '2020-03-29 00:03:12', '方某某', '', 5, 43, 0, 1, 1, '2019-12-06 11:03:14', 5, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1969, 'cdxj2', '26CAD0B966AFF7EA641436067B2F8C70', '2019-12-21 23:00:06', '城某某', '', 1, 1, 0, 1, 1, '2019-12-19 14:48:57', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (1970, 'cdxj3', '26CAD0B966AFF7EA641436067B2F8C70', '2020-04-13 13:56:41', '城某某', '', 1, 24, 0, 1, 1, '2019-12-19 14:51:04', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2079, 'chenlei', 'CB5996EBD19803D7164EEF944407CD76', '2020-09-01 13:52:37', '陈某某', '', 1, 15, 0, 1, 1, '2020-05-27 14:48:43', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2080, 'maqiaomei', 'CB5996EBD19803D7164EEF944407CD76', '2020-05-27 14:57:39', '马某某', '', 1, 2, 0, 1, 1, '2020-05-27 14:50:16', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2081, 'mayinchao', 'CB5996EBD19803D7164EEF944407CD76', '2020-05-27 14:56:18', '马某某', '', 1, 3, 0, 1, 1, '2020-05-27 14:52:04', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2082, 'mayuzhen', 'CB5996EBD19803D7164EEF944407CD76', '2020-05-27 14:56:46', '马某某', '', 1, 2, 0, 1, 1, '2020-05-27 14:53:06', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2083, 'geerceshi', 'F01E2E9EBE649742FADCE7E14FC2B137', '2020-08-28 11:32:34', '格某某', '', 1, 7, 0, 1, 1, '2020-06-03 11:18:02', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2084, 'bxwzb', '26CAD0B966AFF7EA641436067B2F8C70', '2020-06-29 11:19:42', '百某某', '', 4, 2, 0, 1, 1, '2020-06-29 11:19:02', 4, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2085, 'jzwzb', '26CAD0B966AFF7EA641436067B2F8C70', '2020-07-02 10:27:36', '军某某', '', 4, 2, 0, 1, 1, '2020-07-02 10:27:06', 4, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2086, 'fjh613', 'F096BC0F76F67E04C22D5E37183ED913', '2020-12-01 16:15:34', 'F某某', '', 1, 255, 0, 1, 1, '2020-07-22 10:28:20', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2087, 'duandc', 'F096BC0F76F67E04C22D5E37183ED913', '2020-12-02 11:26:07', 'D某某', '', 1, 326, 0, 1, 1, '2020-07-22 10:29:17', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2088, 'mabelp', 'F096BC0F76F67E04C22D5E37183ED913', '2020-09-04 10:03:47', '格某某', '', 1, 25, 0, 1, 1, '2020-07-22 10:30:08', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2089, 'grfs', 'F096BC0F76F67E04C22D5E37183ED913', '2020-07-23 10:02:45', 'F某某', '', 1, 3, 0, 1, 1, '2020-07-23 09:58:17', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2090, 'yuanc', '26CAD0B966AFF7EA641436067B2F8C70', '2020-08-17 13:55:42', '袁某某', '', 1, 22, 0, 1, 1, '2020-08-04 18:05:48', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2096, 'bianxl', 'F096BC0F76F67E04C22D5E37183ED913', '2020-09-16 16:15:00', '卞某某', '', 1, 16, 0, 1, 1, '2020-09-09 14:25:13', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2097, 'jiazh', 'F096BC0F76F67E04C22D5E37183ED913', '2020-11-25 13:14:53', '贾某某', '', 1, 178, 0, 1, 1, '2020-09-11 13:06:04', 1, 3, '#', '11111111111', 'test@test.com', 7);
INSERT INTO `sys_user` VALUES (2098, 'jscs3', 'F096BC0F76F67E04C22D5E37183ED913', NULL, 'j某某', '', 4, 0, 0, 1, 1, '2020-09-11 15:59:24', 4, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2099, 'sunyh123', 'F096BC0F76F67E04C22D5E37183ED913', '2020-12-02 09:44:00', 'S某某', '', 1, 180, 0, 1, 1, '2020-09-14 15:37:17', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2100, 'zhangdf', 'F096BC0F76F67E04C22D5E37183ED913', '2020-12-02 09:29:27', '张某某', '', 1, 239, 0, 1, 1, '2020-09-16 14:45:03', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2101, 'dengnn', 'F096BC0F76F67E04C22D5E37183ED913', '2020-10-15 13:49:50', '邓某某', '', 1, 68, 0, 1, 1, '2020-09-16 14:53:32', 1, 3, '#', '11111111111', 'test@test.com', 7);
INSERT INTO `sys_user` VALUES (2102, 'ljl09', 'F096BC0F76F67E04C22D5E37183ED913', '2020-10-26 15:56:13', '李某某', '', 1, 16, 0, 1, 1, '2020-10-21 12:06:24', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2103, 'hrl1028', 'F096BC0F76F67E04C22D5E37183ED913', '2020-11-30 17:26:04', '霍某某', '', 1, 76, 0, 1, 1, '2020-10-28 11:17:29', 1, 3, '#', '11111111111', 'test@test.com', 1);
INSERT INTO `sys_user` VALUES (2105, '刘丹', '25F9E794323B453885F5181F1B624D0B', NULL, '刘丹', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:16', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2106, '孔岩', '25F9E794323B453885F5181F1B624D0B', NULL, '孔岩', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:16', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2107, '宋雪峰', '25F9E794323B453885F5181F1B624D0B', NULL, '宋雪峰', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:17', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2108, '王一春', '25F9E794323B453885F5181F1B624D0B', NULL, '王一春', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:17', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2109, '项蒙昱', '25F9E794323B453885F5181F1B624D0B', NULL, '项蒙昱', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:17', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2110, '张驰', '25F9E794323B453885F5181F1B624D0B', NULL, '张驰', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:17', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2111, '陈潇雨', '25F9E794323B453885F5181F1B624D0B', NULL, '陈潇雨', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:17', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2112, '李道胜', '25F9E794323B453885F5181F1B624D0B', NULL, '李道胜', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:17', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2113, '赵彦龙', '25F9E794323B453885F5181F1B624D0B', NULL, '赵彦龙', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:17', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2114, '潘佳伶', '25F9E794323B453885F5181F1B624D0B', NULL, '潘佳伶', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:17', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2115, '李喆敏', '25F9E794323B453885F5181F1B624D0B', NULL, '李喆敏', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:17', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2116, '苑程浩', '25F9E794323B453885F5181F1B624D0B', NULL, '苑程浩', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:17', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2117, '瞿晓凤', '25F9E794323B453885F5181F1B624D0B', NULL, '瞿晓凤', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:17', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2118, '陈晨琪', '25F9E794323B453885F5181F1B624D0B', NULL, '陈晨琪', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:17', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2119, '李斌', '25F9E794323B453885F5181F1B624D0B', NULL, '李斌', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:17', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2120, '叶青', '25F9E794323B453885F5181F1B624D0B', NULL, '叶青', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:18', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2121, '朱瑞', '25F9E794323B453885F5181F1B624D0B', NULL, '朱瑞', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:18', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2122, '王璐', '25F9E794323B453885F5181F1B624D0B', NULL, '王璐', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:18', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2123, '郑森峰', '25F9E794323B453885F5181F1B624D0B', NULL, '郑森峰', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:18', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2124, '张伟清', '25F9E794323B453885F5181F1B624D0B', NULL, '张伟清', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:18', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2125, '杨琪', '25F9E794323B453885F5181F1B624D0B', NULL, '杨琪', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:18', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2126, '陆霖霖', '25F9E794323B453885F5181F1B624D0B', NULL, '陆霖霖', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:19', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2127, '游元超', '25F9E794323B453885F5181F1B624D0B', NULL, '游元超', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:19', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2128, '申金鑫', '25F9E794323B453885F5181F1B624D0B', NULL, '申金鑫', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:19', 2, NULL, '#', NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (2129, '叶然', '25F9E794323B453885F5181F1B624D0B', NULL, '叶然', NULL, 2, 0, 0, 1, 1, '2020-11-23 09:30:19', 2, NULL, '#', NULL, NULL, 1);


-- 创建定时任务管理表
DROP TABLE IF EXISTS SOCKS;
CREATE TABLE SOCKS
(
    CRON_ID INT(2) NOT NULL PRIMARY KEY auto_increment COMMENT '定时任务ID',
    CRON VARCHAR(255) NOT NULL COMMENT '执行时间',
    DESCRIPTION VARCHAR(255) COMMENT '任务简述'
);
INSERT INTO SOCKS (CRON, DESCRIPTION) VALUES ('0/30 * * ? * *', '每30秒执行一次该任务');

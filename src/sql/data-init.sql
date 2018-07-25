INSERT INTO `sys_role_menu` (`ID`, `ROLE_ID`, `MENU_ID`) VALUES (52, 1, 1);
INSERT INTO `sys_role_menu` (`ID`, `ROLE_ID`, `MENU_ID`) VALUES (53, 1, 2);
INSERT INTO `sys_role_menu` (`ID`, `ROLE_ID`, `MENU_ID`) VALUES (54, 1, 3);
INSERT INTO `sys_role_menu` (`ID`, `ROLE_ID`, `MENU_ID`) VALUES (55, 1, 4);
INSERT INTO `sys_role_menu` (`ID`, `ROLE_ID`, `MENU_ID`) VALUES (56, 1, 5);
INSERT INTO `sys_role_menu` (`ID`, `ROLE_ID`, `MENU_ID`) VALUES (57, 1, 6);
INSERT INTO `sys_role_menu` (`ID`, `ROLE_ID`, `MENU_ID`) VALUES (58, 1, 10);
INSERT INTO `sys_role_menu` (`ID`, `ROLE_ID`, `MENU_ID`) VALUES (59, 1, 11);

INSERT INTO `sys_group` (`group_id`, `group_name`, `group_no`, `remark`, `add_time`) VALUES (1, '青岛研发中心', '1000', '分公司', '2018-7-6 15:48:03');

INSERT INTO `sys_menu` (`MENU_ID`, `MENU_NAME`, `PARENT_MENU_ID`, `MENU_URL`, `UPDATE_TIME`) VALUES (1, '系统管理', NULL, '', '2018-7-6 15:47:35');
INSERT INTO `sys_menu` (`MENU_ID`, `MENU_NAME`, `PARENT_MENU_ID`, `MENU_URL`, `UPDATE_TIME`) VALUES (2, '机构管理', 1, '/app/page/sysgroup', '2018-7-6 15:47:32');
INSERT INTO `sys_menu` (`MENU_ID`, `MENU_NAME`, `PARENT_MENU_ID`, `MENU_URL`, `UPDATE_TIME`) VALUES (3, '修改密码', 1, '/app/page/syspasswd', '2018-7-6 15:47:15');
INSERT INTO `sys_menu` (`MENU_ID`, `MENU_NAME`, `PARENT_MENU_ID`, `MENU_URL`, `UPDATE_TIME`) VALUES (4, '菜单管理', 1, '/app/page/sysmenu', '2018-7-6 15:47:18');
INSERT INTO `sys_menu` (`MENU_ID`, `MENU_NAME`, `PARENT_MENU_ID`, `MENU_URL`, `UPDATE_TIME`) VALUES (5, '角色管理', 1, '/app/page/sysrole', '2018-7-6 15:47:22');
INSERT INTO `sys_menu` (`MENU_ID`, `MENU_NAME`, `PARENT_MENU_ID`, `MENU_URL`, `UPDATE_TIME`) VALUES (6, '用户管理', 1, '/app/page/sysuser', '2018-7-6 15:47:28');
INSERT INTO `sys_menu` (`MENU_ID`, `MENU_NAME`, `PARENT_MENU_ID`, `MENU_URL`, `UPDATE_TIME`) VALUES (10, '统计报表', NULL, '', '2018-7-6 15:47:39');
INSERT INTO `sys_menu` (`MENU_ID`, `MENU_NAME`, `PARENT_MENU_ID`, `MENU_URL`, `UPDATE_TIME`) VALUES (11, '食品统计', 10, 'report/echart', '2018-7-6 15:47:55');

INSERT INTO `sys_role` (`ROLE_ID`, `ROLE_NAME`, `REMARK`, `UPDATE_TIME`) VALUES (1, '超级管理员', '具有全部权限', '2018-7-6 15:48:10');

INSERT INTO `sys_user` (`USER_ID`, `USERNAME`, `PASSWORD`, `NAME`, `ROLE_ID`, `add_time`, `GROUP_ID`) VALUES (1, 'admin', '202cb962ac59075b964b07152d234b70', 'admin', 1, '2018-7-6 03:00:00', 1);
INSERT INTO `sys_user` (`USER_ID`, `USERNAME`, `PASSWORD`, `NAME`, `ROLE_ID`, `add_time`, `GROUP_ID`) VALUES (2, 'liushuijun', 'e10adc3949ba59abbe56e057f20f883e', '刘水军', 1, '2018-7-6 15:38:40', 1);

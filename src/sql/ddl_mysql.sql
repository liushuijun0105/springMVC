/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/07/03 15:16:25                          */
/*==============================================================*/


drop table if exists SYS_GROUP;

drop table if exists SYS_MENU;

drop table if exists SYS_ROLE;

drop table if exists SYS_ROLE_MENU;

drop table if exists SYS_USER;

/*==============================================================*/
/* Table: SYS_GROUP                                             */
/*==============================================================*/
CREATE TABLE `sys_group` (
  `group_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '组ID',
  `group_name` varchar(100) NOT NULL COMMENT '组名',
  `group_no` varchar(10) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `add_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统用户组表';

/*==============================================================*/
/* Table: SYS_MENU                                              */
/*==============================================================*/
CREATE TABLE `sys_menu` (
  `MENU_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID、主键',
  `MENU_NAME` varchar(100) DEFAULT NULL,
  `PARENT_MENU_ID` bigint(20) DEFAULT NULL COMMENT '父菜单',
  `MENU_URL` varchar(100) DEFAULT NULL COMMENT '菜单对应的URL',
  `UPDATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;


/*==============================================================*/
/* Table: SYS_ROLE                                              */
/*==============================================================*/
CREATE TABLE `sys_role` (
  `ROLE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID、主键',
  `ROLE_NAME` varchar(50) DEFAULT NULL COMMENT '角色名',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  `UPDATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统用户角色表';


/*==============================================================*/
/* Table: SYS_ROLE_MENU                                         */
/*==============================================================*/
CREATE TABLE `sys_role_menu` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID、主键',
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID，对应角色表',
  `MENU_ID` bigint(20) NOT NULL COMMENT '菜单ID，对应菜单表',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色菜单表';

/*==============================================================*/
/* Table: SYS_USER                                              */
/*==============================================================*/
CREATE TABLE `sys_user` (
  `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID、主键',
  `USERNAME` varchar(50) NOT NULL COMMENT '用户名、登录名',
  `PASSWORD` varchar(40) NOT NULL COMMENT '密码（MD5存储）',
  `NAME` varchar(40) NOT NULL COMMENT '姓名',
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID，对应角色表',
  `add_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `GROUP_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  KEY `IDX_SYS_USER_UNI_USERNAME` (`USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统用户表';



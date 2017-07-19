CREATE TABLE `tb_shop_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '店铺id',
  `shop_type` int(10) NOT NULL COMMENT '店铺类型，厂家或者经销商',
  `exp_level` int(10) DEFAULT NULL COMMENT '等级',
  `exp` int(10) DEFAULT NULL COMMENT '产生经验值',
  `shop_name` varchar(60) NOT NULL COMMENT '店铺名称',
  `company_name` varchar(60) DEFAULT NULL COMMENT '公司名称',
  `contract` varchar(20) DEFAULT NULL COMMENT '联系人',
  `contract_phone` varchar(30) DEFAULT NULL COMMENT '联系人联系方式',
  `company_tel` varchar(30) DEFAULT NULL COMMENT '公司座机',
  `legal_representative` varchar(30) DEFAULT NULL COMMENT '法人代表',
  `reg_province` int(10) DEFAULT NULL COMMENT '注册省',
  `reg_city` int(10) DEFAULT NULL COMMENT '注册市',
  `reg_country` int(10) DEFAULT NULL COMMENT '注册区县',
  `reg_street` int(10) DEFAULT NULL COMMENT '注册街道',
  `reg_address` varchar(200) DEFAULT NULL COMMENT '具体地址',
  `productType_id` int(10) DEFAULT NULL COMMENT '经营的分类',
  `brand_name` varchar(30) DEFAULT NULL COMMENT '品牌名称',
  `scope` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `sales` int(10) NOT NULL DEFAULT '0' COMMENT '销售量',
  `taxpayer_image` varchar(50) DEFAULT NULL COMMENT '一般纳税人图片',
  `license_image` varchar(50) DEFAULT NULL COMMENT '营业执照图片',
  `organization_image` varchar(50) DEFAULT NULL COMMENT '组织机构代码证图片',
  `shop_image1` varchar(50) DEFAULT NULL COMMENT '实景图片',
  `shop_image2` varchar(50) DEFAULT NULL COMMENT '实景图片',
  `shop_image3` varchar(50) DEFAULT NULL COMMENT '实景图片',
  `ads_image` varchar(50) DEFAULT NULL COMMENT '公司名称',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注,扩展字段',
  `auth_status` int(10) DEFAULT NULL COMMENT '审核状态',
  `create_by` int(10) DEFAULT NULL COMMENT '创建人',
  `create_dt` bigint(16) NOT NULL COMMENT '创建时间',
  `version` int(10) DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺表';


CREATE TABLE `tb_user_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `shop_type` int(10) NOT NULL COMMENT '用户类型',
  `exp_level` int(10) DEFAULT NULL COMMENT '等级',
  `exp` int(10) DEFAULT NULL COMMENT '产生经验值',
  `reg_province` int(10) DEFAULT NULL COMMENT '注册省',
  `reg_city` int(10) DEFAULT NULL COMMENT '注册市',
  `reg_country` int(10) DEFAULT NULL COMMENT '注册区县',
  `reg_street` int(10) DEFAULT NULL COMMENT '注册街道',
  `reg_address` varchar(200) DEFAULT NULL COMMENT '具体地址',
  `sales` int(10) DEFAULT NULL COMMENT '销售量',
  `image` varchar(50) DEFAULT NULL COMMENT '营业执照图片',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注,扩展字段',
  `auth_status` int(10) DEFAULT NULL COMMENT '审核状态',
  `create_by` int(10) DEFAULT NULL COMMENT '创建人',
  `create_dt` bigint(16) NOT NULL COMMENT '创建时间',
  `version` int(10) DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户详细表';

CREATE TABLE `tb_web_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(32) NOT NULL COMMENT '登录用户名',
  `password` varchar(128) NOT NULL COMMENT '密码',
  `address` varchar(256) DEFAULT NULL COMMENT '常用地址',
  `email` varchar(128) DEFAULT NULL COMMENT '邮箱地址',
  `mobile` varchar(20) NOT NULL COMMENT '手机',
  `name` varchar(32) NOT NULL COMMENT '姓名',
  `role_id` int(10) DEFAULT NULL COMMENT '角色id',
  `type_id` int(10) NOT NULL COMMENT '类型id',
  `shop_id` int(10) DEFAULT NULL COMMENT '店铺id',
  `userinfo_id` int(10) DEFAULT NULL COMMENT '用户详情id',
  `id_card` varchar(32) DEFAULT NULL COMMENT '扩展字段_身份证',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注,扩展字段',
  `version` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='前台用户表';




































/*--------------------------------------------------------------------------*/













CREATE TABLE `tb_shop_info` (
  `id` INT(10) NOT NULL AUTO_INCREMENT COMMENT '店铺id',
  `shop_type` INT(10) NOT NULL  COMMENT '店铺类型，厂家或者经销商',
  `exp_level` int(10) DEFAULT NULL COMMENT '等级',
  `exp` int(10) DEFAULT NULL COMMENT '产生经验值',
  `shop_name` varchar(60) NOT NULL COMMENT '店铺名称',
  `company_name` varchar(60) DEFAULT NULL COMMENT '公司名称',
  `contract` varchar(20) DEFAULT NULL COMMENT '联系人',
  `contract_phone` varchar(30) DEFAULT NULL COMMENT '联系人联系方式',
  `company_tel`  varchar(30) DEFAULT NULL COMMENT '公司座机',
  `legal_representative` varchar(30) DEFAULT NULL COMMENT '法人代表',
  `reg_province` int(10) DEFAULT NULL COMMENT '注册省',
  `reg_city` int(10) DEFAULT NULL COMMENT '注册市',
  `reg_country` int(10) DEFAULT NULL COMMENT '注册区县',
  `reg_street` int(10) DEFAULT NULL COMMENT '注册街道',
  `reg_address` varchar(200) DEFAULT NULL COMMENT '具体地址',  
  `productType_id` int(10) NOT NULL COMMENT '经营的分类',
  `brand_name` varchar(30) DEFAULT NULL COMMENT '品牌名称',
  `scope` varchar(200) DEFAULT NULL COMMENT '经营范围',
    `sales` int(10)  NOT NULL DEFAULT '0' COMMENT '销售量',
  `taxpayer_image` varchar(50) DEFAULT NULL COMMENT '一般纳税人图片',
  `license_image` varchar(50) DEFAULT NULL COMMENT '营业执照图片',
  `organization_image` varchar(50) DEFAULT NULL COMMENT '组织机构代码证图片',
  `shop_image1` varchar(50) DEFAULT NULL COMMENT '实景图片',
  `shop_image2` varchar(50) DEFAULT NULL COMMENT '实景图片',
  `shop_image3` varchar(50) DEFAULT NULL COMMENT '实景图片',
  `ads_image` varchar(50) DEFAULT NULL COMMENT '公司名称',
  `remark`   VARCHAR(500) COMMENT '备注,扩展字段',
  `auth_status` int(10) DEFAULT NULL COMMENT '审核状态',
  `create_by` int(10) DEFAULT NULL COMMENT '创建人',
  `create_dt` bigint(16) NOT NULL COMMENT '创建时间',
  `version` INT(10) NULL DEFAULT NULL COMMENT '版本号',
	PRIMARY KEY (`id`)
)
COMMENT='店铺表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=18;


CREATE TABLE `tb_web_user` (
	`id` INT(10) NOT NULL AUTO_INCREMENT COMMENT '用户id',
	`user_name` VARCHAR(32) NOT NULL COMMENT '登录用户名',
	`password` VARCHAR(128) NOT NULL COMMENT '密码',
	`address` VARCHAR(256)  COMMENT '常用地址',
	`email` VARCHAR(128) COMMENT '邮箱地址',
	`mobile` VARCHAR(20) NOT NULL COMMENT '手机',
	`name` VARCHAR(32) NOT NULL COMMENT '姓名',
	`role_id` INT(10) DEFAULT NULL COMMENT '角色id',
	`type_id` INT(10) NOT NULL COMMENT '类型id',
	`shop_id` INT(10) NOT NULL COMMENT '店铺id',
	`id_card` VARCHAR(32) COMMENT '扩展字段_身份证',
	`remark`   VARCHAR(500) COMMENT '备注,扩展字段',
	`version` INT(10) NULL DEFAULT NULL,
	PRIMARY KEY (`id`)
)
COMMENT='前台用户表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=18;








CREATE TABLE `tb_shop_info` (
  `id` INT(10) NOT NULL AUTO_INCREMENT COMMENT '店铺id',
  `shop_type` INT(10) NOT NULL  COMMENT '店铺类型，厂家或者经销商',
  `exp_level` int(10) DEFAULT NULL COMMENT '等级',
  `exp` int(10) DEFAULT NULL COMMENT '产生经验值',
  `shop_name` varchar(60) DEFAULT NULL COMMENT '店铺名称',
  `company_name` varchar(60) DEFAULT NULL COMMENT '公司名称',
  `contract` varchar(20) DEFAULT NULL COMMENT '联系人',
  `contract_phone` varchar(30) DEFAULT NULL COMMENT '联系人联系方式',
  `company_tel`  varchar(30) DEFAULT NULL COMMENT '公司座机',
  `legal_representative` varchar(30) DEFAULT NULL COMMENT '法人代表',
  `reg_province` int(10) DEFAULT NULL COMMENT '注册省',
  `reg_city` int(10) DEFAULT NULL COMMENT '注册市',
  `reg_country` int(10) DEFAULT NULL COMMENT '注册区县',
  `reg_street` int(10) DEFAULT NULL COMMENT '注册街道',
  `reg_address` varchar(200) DEFAULT NULL COMMENT '具体地址',  
  `productType_id` int(10) DEFAULT NULL COMMENT '经营的分类',
  `brand_name` varchar(30) DEFAULT NULL COMMENT '品牌名称',
  `scope` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `sales` int(10)  NOT NULL DEFAULT '0' COMMENT '销售量',
  `taxpayer_image` varchar(50) DEFAULT NULL COMMENT '一般纳税人图片',
  `license_image` varchar(50) DEFAULT NULL COMMENT '营业执照图片',
  `organization_image` varchar(50) DEFAULT NULL COMMENT '组织机构代码证图片',
  `shop_image1` varchar(50) DEFAULT NULL COMMENT '实景图片',
  `shop_image2` varchar(50) DEFAULT NULL COMMENT '实景图片',
  `shop_image3` varchar(50) DEFAULT NULL COMMENT '实景图片',
  `ads_image` varchar(50) DEFAULT NULL COMMENT '公司名称',
  `remark`   VARCHAR(500) COMMENT '备注,扩展字段',
  `auth_status` int(10) DEFAULT NULL COMMENT '审核状态',
  `create_by` int(10) DEFAULT NULL COMMENT '创建人',
  `create_dt` bigint(16) NOT NULL COMMENT '创建时间',
  `version` INT(10) NULL DEFAULT NULL COMMENT '版本号',
	PRIMARY KEY (`id`)
)
COMMENT='店铺表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=18;
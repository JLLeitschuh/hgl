CREATE TABLE `tb_merchants` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '招商id',
  `brandId` int(10) NOT NULL COMMENT '品牌id',
  `userId` int(10) NOT NULL COMMENT '用户id',
  `type` int(10) DEFAULT NULL COMMENT '类型',
  `level` int(10) DEFAULT NULL COMMENT '招商层次',
  `number` double NOT NULL COMMENT '招商购买量',
  `other` varchar(200) DEFAULT NULL COMMENT '其他',
  `coupons` double NOT NULL COMMENT '优惠卷',
  `address` int(10) DEFAULT '0' COMMENT '招商区域',
  `views` int(10) DEFAULT '0' COMMENT '围观商家',
  `winning` int(10) DEFAULT '0' COMMENT '已中标商家',
  `participate` int(10) DEFAULT '0' COMMENT '参与商家',
  `province` int(10) DEFAULT '0' COMMENT '省',
  `city` int(10) DEFAULT '0' COMMENT '市',
  `country` int(10) DEFAULT '0' COMMENT '区',
  `street` int(10) DEFAULT '0' COMMENT '街镇',
  `places` int(10) DEFAULT '0' COMMENT '招商位数',
  `state` int(10) DEFAULT '0' COMMENT '状态',
  `reserved` int(10) DEFAULT NULL COMMENT '预留字段int',
  `reserved1` varchar(200) DEFAULT NULL COMMENT '预留字段String',
  `version` int(10) NOT NULL DEFAULT '0',
  `create_time` bigint(20) DEFAULT NULL,
  `release_time` bigint(20) DEFAULT NULL,
  `last_update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='招商表';

CREATE TABLE `tb_agency` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '代理id',
  `brandId` int(10) NOT NULL COMMENT '品牌id',
  `merchantId` int(10) NOT NULL COMMENT '招商id',
  `shopId` int(10) NOT NULL COMMENT '经销商id',
  `orderId` varchar(100) DEFAULT NULL COMMENT '商品购买订单号',
  `type` int(10) DEFAULT NULL COMMENT '类型',
  `exp_level` int(10) DEFAULT NULL COMMENT '代理层级',
  `number` double NOT NULL COMMENT '招商购买量',
  `coupons` double NOT NULL COMMENT '招商服务费',
  `coupons_state` int(10) DEFAULT '0' COMMENT '服务费状态',
  `address` int(10) DEFAULT '0' COMMENT '代理区域',
  `province` int(10) DEFAULT '0' COMMENT '省',
  `city` int(10) DEFAULT '0' COMMENT '市',
  `country` int(10) DEFAULT '0' COMMENT '区',
  `street` int(10) DEFAULT '0' COMMENT '街镇',
  `reserved` int(10) DEFAULT NULL COMMENT '预留字段int',
  `version` int(10) NOT NULL DEFAULT '0',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注,扩展字段',
  `state` int(10) DEFAULT NULL COMMENT '状态',
  `create_by` int(10) DEFAULT NULL COMMENT '创建人',
  `create_dt` bigint(16) NOT NULL COMMENT '创建时间',
  `recommend_code` varchar(4) DEFAULT NULL,
  `order_state` int(10) DEFAULT '0' COMMENT '订单状态',
  `couponsOrderNumber` varchar(100) DEFAULT NULL COMMENT '服务费订单号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='代理权表';

CREATE TABLE `tb_shop_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '店铺id',
  `shop_type` int(10) NOT NULL COMMENT '厂家:102，经销商：104',
  `exp_level` int(10) DEFAULT NULL COMMENT '等级',
  `exp` int(10) DEFAULT '0' COMMENT '产生经验值',
  `shop_name` varchar(60) DEFAULT NULL COMMENT '店铺名称',
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
  `product_type_id` int(10) DEFAULT NULL COMMENT '经营的分类id',
  `brandId` int(10) DEFAULT NULL COMMENT '品牌id',
  `scope` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `sales` int(10) NOT NULL COMMENT '销售量',
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
  `coupon_gainAmt` double DEFAULT '0' COMMENT '惠券优收入金额',
  `coupon_employAmt` double DEFAULT '0' COMMENT '惠券优支出金额',
  `coupon_remainingAmt` double DEFAULT '0' COMMENT '优惠券余额',
  `balance` double unsigned zerofill NOT NULL DEFAULT '0000000000000000000000' COMMENT '剩余金额',
  `lon` double unsigned DEFAULT NULL COMMENT '店铺的纵坐标',
  `lat` double unsigned DEFAULT NULL COMMENT '店铺的横坐标',
  `version` int(10) NOT NULL DEFAULT '0' COMMENT '版本号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='店铺表';

CREATE TABLE `tb_shop_level` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '等级id',
  `level_name` varchar(60) NOT NULL COMMENT '等级名称',
  `min_exp` int(10) DEFAULT '0' COMMENT '最小经验值',
  `exp_proportion` double DEFAULT '1' COMMENT '经验折算规则',
  `user_sale` double DEFAULT '1' COMMENT '用户优惠折扣',
  `coupon_rule` double DEFAULT '0' COMMENT '优惠卷使用规则',
  `cash_num` int(10) DEFAULT '0' COMMENT '体现次数',
  `level_remark` varchar(60) DEFAULT NULL COMMENT '等级说明',
  `update_by` int(10) DEFAULT NULL COMMENT '修改用户人id',
  `update_dt` bigint(16) DEFAULT NULL COMMENT '修改时间',
  `version` int(10) DEFAULT '0' COMMENT '版本',
  `max_exp` int(10) DEFAULT '0' COMMENT '最大经验值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='等级表';



INSERT INTO `tb_shop_level` VALUES (1,'VIP1',0,1,0.98,1,2,'初始等级',1,NULL,40,3000),(2,'VIP2',3000,1.2,0.95,1.1,2,'',1,NULL,21,8000),(3,'VIP3',8000,1.5,0.92,1.2,3,'',1,NULL,12,15000),(4,'VIP4',15000,1.8,0.9,1.3,3,'可参与某些特惠秒杀',1,NULL,7,30000),(5,'VIP5',30000,2.2,0.88,1.4,3,'',1,NULL,8,50000),(6,'VIP6',50000,2.8,0.85,1.5,4,'',1,NULL,10,80000),(7,'VIP7',80000,3.2,0.84,1.6,4,'',1,NULL,3,100000),(8,'VIP8',100000,3.8,0.83,1.7,5,'一对一专属客服',1,NULL,7,150000),(9,'VIP9',150000,4.5,0.8,2,5,'',1,NULL,7,180000),(10,'VIP10',180000,5,0.79,2.5,6,'秒杀提醒',1,NULL,38,900000);


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
  `version` int(10) DEFAULT '1',
  `state` int(10) NOT NULL COMMENT '用户状态',
  `audit_description` varchar(500) DEFAULT NULL COMMENT '审核描述',
  `referrerId` int(10) DEFAULT NULL COMMENT '推荐人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='前台用户表';
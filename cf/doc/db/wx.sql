/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : wx

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2017-06-16 11:57:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '活动标题',
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `content` varchar(5120) COLLATE utf8_unicode_ci NOT NULL COMMENT '活动内容',
  `photoId` int(11) NOT NULL COMMENT '活动封面',
  `userLimit` int(11) NOT NULL DEFAULT '0' COMMENT '活动人数限制',
  `endTime` int(11) NOT NULL COMMENT '活动时间限制',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格 如果是免费活动 则价格默认为0',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='活动表';

-- ----------------------------
-- Table structure for activityapply
-- ----------------------------
DROP TABLE IF EXISTS `activityapply`;
CREATE TABLE `activityapply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `activityId` int(11) NOT NULL COMMENT '活动ID',
  `userId` int(11) NOT NULL COMMENT '用户ID',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='活动申请表';

-- ----------------------------
-- Table structure for advertisement
-- ----------------------------
DROP TABLE IF EXISTS `advertisement`;
CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `content` varchar(512) COLLATE utf8_unicode_ci NOT NULL COMMENT '广告内容',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '广告URL',
  `photoId` int(11) DEFAULT NULL COMMENT '广告图片',
  `status` tinyint(1) NOT NULL COMMENT '广告状态',
  `type` tinyint(1) NOT NULL COMMENT '文章类型',
  `articleId` int(11) NOT NULL COMMENT '文章ID',
  `startTime` int(11) NOT NULL COMMENT '开始时间',
  `endTime` int(11) NOT NULL COMMENT '结束时间',
  `startDayTime` int(11) NOT NULL COMMENT '每一天什么时间端展示',
  `endDayTime` int(11) NOT NULL COMMENT '每一天什么时间端展示',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='广告表';

-- ----------------------------
-- Table structure for advertisementclick
-- ----------------------------
DROP TABLE IF EXISTS `advertisementclick`;
CREATE TABLE `advertisementclick` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号',
  `advertisementId` int(11) NOT NULL COMMENT '广告ID',
  `userId` int(11) NOT NULL COMMENT '用户ID',
  `creatTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='广告点击表';

-- ----------------------------
-- Table structure for alleyarticle
-- ----------------------------
DROP TABLE IF EXISTS `alleyarticle`;
CREATE TABLE `alleyarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `userId` int(11) NOT NULL COMMENT '作者ID',
  `classId` int(11) NOT NULL COMMENT '类型ID',
  `snackName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '饭馆名字',
  `areaInfo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '地址信息',
  `latLon` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '经纬度',
  `title` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '标题',
  `content` varchar(5120) CHARACTER SET utf8 NOT NULL COMMENT '内容',
  `visitNum` int(11) NOT NULL COMMENT '访问数',
  `shareAppNum` int(11) NOT NULL COMMENT '分享微信',
  `shareFriendNum` int(11) NOT NULL COMMENT '分享朋友圈',
  `shareQQ` int(11) NOT NULL COMMENT '分享到QQ',
  `classExtra` int(11) NOT NULL COMMENT '分类补充',
  `creatTime` int(11) NOT NULL COMMENT '创建时间表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='走街串巷文章表';

-- ----------------------------
-- Table structure for alleyarticlephoto
-- ----------------------------
DROP TABLE IF EXISTS `alleyarticlephoto`;
CREATE TABLE `alleyarticlephoto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `articleId` int(11) NOT NULL COMMENT '文章ID',
  `bigPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '大图',
  `smallPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '小图',
  `big_w` int(11) NOT NULL COMMENT '图片宽度',
  `big_h` int(11) NOT NULL COMMENT '图片高度',
  `small_w` int(11) NOT NULL COMMENT '小图片宽度',
  `small_h` int(11) NOT NULL COMMENT '小图片高度',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='走街串巷文章图片';

-- ----------------------------
-- Table structure for alleybadges
-- ----------------------------
DROP TABLE IF EXISTS `alleybadges`;
CREATE TABLE `alleybadges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `name` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT '走街串巷标签名',
  `status` tinyint(1) NOT NULL COMMENT '走街串巷标签状态',
  `isDelete` tinyint(1) NOT NULL COMMENT '是否删除',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='走街串巷标签';

-- ----------------------------
-- Table structure for alleybadgesunite
-- ----------------------------
DROP TABLE IF EXISTS `alleybadgesunite`;
CREATE TABLE `alleybadgesunite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `articleId` int(11) NOT NULL COMMENT '乡味文章ID',
  `badgesId` int(11) NOT NULL COMMENT '勋章ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='走街串巷标签关联表';

-- ----------------------------
-- Table structure for alleyclass
-- ----------------------------
DROP TABLE IF EXISTS `alleyclass`;
CREATE TABLE `alleyclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `name` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT '分类名',
  `status` tinyint(1) NOT NULL COMMENT '状态表 隐藏 显示',
  `isDelete` tinyint(1) NOT NULL COMMENT '是否可以删除（固定的两种不能删除）',
  `creatTime` int(11) NOT NULL COMMENT '创建时间表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='走街串巷类型表';

-- ----------------------------
-- Table structure for articlecomment
-- ----------------------------
DROP TABLE IF EXISTS `articlecomment`;
CREATE TABLE `articlecomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `articleId` int(11) NOT NULL COMMENT '文章ID',
  `type` tinyint(1) NOT NULL COMMENT '文章类型',
  `userId` int(11) NOT NULL COMMENT '用户管理',
  `content` varchar(512) COLLATE utf8_unicode_ci NOT NULL COMMENT '文章内容',
  `praise` int(11) NOT NULL COMMENT '点赞数目',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='文章评论表';

-- ----------------------------
-- Table structure for blind
-- ----------------------------
DROP TABLE IF EXISTS `blind`;
CREATE TABLE `blind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `userId` int(11) NOT NULL COMMENT '作者ID',
  `classId` int(11) NOT NULL COMMENT '类型ID',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '相亲姓名',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别',
  `intent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '意向 交朋友 婚恋',
  `height` int(11) DEFAULT NULL COMMENT '身高',
  `isMarry` tinyint(1) DEFAULT NULL COMMENT '婚否',
  `children` tinyint(4) DEFAULT NULL COMMENT '孩子 0 1 2 3',
  `job` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '职业',
  `education` tinyint(1) DEFAULT NULL COMMENT '学历',
  `income` int(11) DEFAULT NULL COMMENT '收入',
  `hobby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '爱好',
  `province` tinyint(1) DEFAULT NULL COMMENT '省',
  `city` tinyint(1) DEFAULT NULL COMMENT '城市',
  `county` tinyint(1) DEFAULT NULL COMMENT '镇',
  `areaDetail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详细地址',
  `oldProvince` tinyint(1) DEFAULT NULL COMMENT '省',
  `oldCity` tinyint(1) DEFAULT NULL COMMENT '市',
  `oldCounty` tinyint(1) DEFAULT NULL COMMENT '镇',
  `oldAreaDetail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详细地址',
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号',
  `webchat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '微信',
  `qq` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'qq',
  `photoId` int(11) DEFAULT NULL COMMENT '个人封面',
  `visitNum` int(11) NOT NULL COMMENT '访问数',
  `shareAppNum` int(11) NOT NULL COMMENT '分享微信',
  `shareFriendNum` int(11) NOT NULL COMMENT '分享朋友圈',
  `shareQQ` int(11) NOT NULL COMMENT '分享到QQ',
  `classExtra` int(11) NOT NULL COMMENT '分类补充',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `authentication` tinyint(1) NOT NULL COMMENT '线上认证 线下认证',
  `creatTime` int(11) NOT NULL COMMENT '创建时间表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='相亲表';

-- ----------------------------
-- Table structure for blindapply
-- ----------------------------
DROP TABLE IF EXISTS `blindapply`;
CREATE TABLE `blindapply` (
  `id` int(11) NOT NULL DEFAULT '0',
  `publicId` int(11) DEFAULT NULL COMMENT '公众号',
  `userId` int(11) DEFAULT NULL COMMENT '用户ID',
  `blindId` int(11) DEFAULT NULL COMMENT '详情ID',
  `describe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '后台审核状态',
  `suitable` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '相亲对象确认是否同意',
  `creatTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='相亲申请';

-- ----------------------------
-- Table structure for blindarticlephoto
-- ----------------------------
DROP TABLE IF EXISTS `blindarticlephoto`;
CREATE TABLE `blindarticlephoto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `articleId` int(11) DEFAULT NULL,
  `bigPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '大图',
  `smallPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '小图',
  `big_w` int(11) NOT NULL COMMENT '图片宽度',
  `big_h` int(11) NOT NULL COMMENT '图片高度',
  `small_w` int(11) NOT NULL COMMENT '小图片宽度',
  `small_h` int(11) NOT NULL COMMENT '小图片高度',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='婚恋文章照片';

-- ----------------------------
-- Table structure for blindbadges
-- ----------------------------
DROP TABLE IF EXISTS `blindbadges`;
CREATE TABLE `blindbadges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `name` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT '标签名',
  `status` tinyint(1) NOT NULL COMMENT '标签状态',
  `isDelete` tinyint(1) NOT NULL COMMENT '是否可以删除',
  `creatTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='相亲标签';

-- ----------------------------
-- Table structure for blindbadgesunite
-- ----------------------------
DROP TABLE IF EXISTS `blindbadgesunite`;
CREATE TABLE `blindbadgesunite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) DEFAULT NULL,
  `articleId` int(11) NOT NULL COMMENT '乡味文章ID',
  `badgesId` int(11) NOT NULL COMMENT '勋章ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='婚恋标签表';

-- ----------------------------
-- Table structure for blindclass
-- ----------------------------
DROP TABLE IF EXISTS `blindclass`;
CREATE TABLE `blindclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `startAge` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '开始年龄',
  `endAge` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '结束年龄',
  `name` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT '分类名',
  `status` tinyint(1) NOT NULL COMMENT '状态表 隐藏 显示',
  `isDelete` tinyint(1) NOT NULL COMMENT '是否可以删除（固定的两种不能删除）',
  `creatTime` int(11) NOT NULL COMMENT '创建时间表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='相亲类型';

-- ----------------------------
-- Table structure for blindsex
-- ----------------------------
DROP TABLE IF EXISTS `blindsex`;
CREATE TABLE `blindsex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL,
  `sex` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT '性别',
  `creatTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='相亲性别';

-- ----------------------------
-- Table structure for channel
-- ----------------------------
DROP TABLE IF EXISTS `channel`;
CREATE TABLE `channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) DEFAULT NULL,
  `shareId` int(11) DEFAULT NULL COMMENT '分享ID',
  `userId` int(11) DEFAULT NULL COMMENT '带来的用户',
  `creatTime` datetime DEFAULT NULL COMMENT '分享的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='分享带来用户的渠道表';

-- ----------------------------
-- Table structure for clerk
-- ----------------------------
DROP TABLE IF EXISTS `clerk`;
CREATE TABLE `clerk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `merchantId` int(11) NOT NULL COMMENT '店铺ID',
  `userId` int(11) NOT NULL COMMENT '店员ID',
  `status` tinyint(1) NOT NULL COMMENT '店铺状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='店员表';

-- ----------------------------
-- Table structure for commentreply
-- ----------------------------
DROP TABLE IF EXISTS `commentreply`;
CREATE TABLE `commentreply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) DEFAULT NULL,
  `commentId` int(11) DEFAULT NULL COMMENT '评论ID',
  `userId` int(11) DEFAULT NULL COMMENT '用户id',
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '评论内容',
  `creatTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='文章回复表';

-- ----------------------------
-- Table structure for commonphoto
-- ----------------------------
DROP TABLE IF EXISTS `commonphoto`;
CREATE TABLE `commonphoto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `bigPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '大图',
  `smallPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '小图',
  `big_w` int(11) NOT NULL COMMENT '图片宽度',
  `big_h` int(11) NOT NULL COMMENT '图片高度',
  `small_w` int(11) NOT NULL COMMENT '小图片宽度',
  `small_h` int(11) NOT NULL COMMENT '小图片高度',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for farmarticlephoto
-- ----------------------------
DROP TABLE IF EXISTS `farmarticlephoto`;
CREATE TABLE `farmarticlephoto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `articleId` int(11) DEFAULT NULL,
  `bigPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '大图',
  `smallPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '小图',
  `big_w` int(11) NOT NULL COMMENT '图片宽度',
  `big_h` int(11) NOT NULL COMMENT '图片高度',
  `small_w` int(11) NOT NULL COMMENT '小图片宽度',
  `small_h` int(11) NOT NULL COMMENT '小图片高度',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for farmbadgesunite
-- ----------------------------
DROP TABLE IF EXISTS `farmbadgesunite`;
CREATE TABLE `farmbadgesunite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) DEFAULT NULL COMMENT '公众号ID',
  `articleId` int(11) NOT NULL COMMENT '乡味文章ID',
  `badgesId` int(11) NOT NULL COMMENT '勋章ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='文章标签表';

-- ----------------------------
-- Table structure for farmfood
-- ----------------------------
DROP TABLE IF EXISTS `farmfood`;
CREATE TABLE `farmfood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `name` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '美食名称',
  `info` varchar(5120) CHARACTER SET utf8 NOT NULL COMMENT '美食介绍',
  `photoId` int(11) DEFAULT NULL COMMENT '美食封面',
  `areaDetail` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '美食详细产地',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='特色乡村美食表';

-- ----------------------------
-- Table structure for farmfoodarticle
-- ----------------------------
DROP TABLE IF EXISTS `farmfoodarticle`;
CREATE TABLE `farmfoodarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `userId` int(11) NOT NULL COMMENT '作者ID',
  `classId` int(11) NOT NULL COMMENT '类型ID',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `content` varchar(5120) COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `visitNum` int(11) NOT NULL COMMENT '访问数',
  `shareAppNum` int(11) NOT NULL COMMENT '分享微信',
  `shareFriendNum` int(11) NOT NULL COMMENT '分享朋友圈',
  `shareQQ` int(11) NOT NULL COMMENT '分享到QQ',
  `classExtra` int(11) NOT NULL COMMENT '分类补充',
  `creatTime` int(11) NOT NULL COMMENT '创建时间表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='乡味文章表';

-- ----------------------------
-- Table structure for farmfoodbadges
-- ----------------------------
DROP TABLE IF EXISTS `farmfoodbadges`;
CREATE TABLE `farmfoodbadges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `name` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT '标签名字',
  `status` tinyint(1) NOT NULL COMMENT '标签状态',
  `isDelete` tinyint(1) NOT NULL COMMENT '是否可以删除',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='乡味标签表';

-- ----------------------------
-- Table structure for farmfoodclass
-- ----------------------------
DROP TABLE IF EXISTS `farmfoodclass`;
CREATE TABLE `farmfoodclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `name` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT '分类名',
  `status` tinyint(1) NOT NULL COMMENT '状态表 隐藏 显示',
  `isDelete` tinyint(1) NOT NULL COMMENT '是否可以删除（固定的两种不能删除）',
  `creatTime` int(11) NOT NULL COMMENT '创建时间表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='农村美食类型';

-- ----------------------------
-- Table structure for foodbuyapply
-- ----------------------------
DROP TABLE IF EXISTS `foodbuyapply`;
CREATE TABLE `foodbuyapply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) DEFAULT NULL COMMENT '公众号ID',
  `sellId` int(11) DEFAULT NULL COMMENT '出售ID',
  `userId` int(11) DEFAULT NULL COMMENT '申请帐号',
  `userName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请人',
  `foodId` int(11) DEFAULT NULL COMMENT '美食ID',
  `userPhone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请电话',
  `userAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请地址',
  `applyStatus` tinyint(1) DEFAULT NULL COMMENT '申请状态 申请通过，申请失败，等待发货，已经发货，已经签收，退款',
  `money` int(11) DEFAULT NULL COMMENT '需要支付金额',
  `transportMoney` int(11) DEFAULT NULL COMMENT '运费',
  `payStatus` tinyint(1) DEFAULT NULL COMMENT '支付状态 支付成功，支付失败',
  `describe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `logisticsId` int(11) DEFAULT NULL COMMENT '物流ID',
  `logisticsNum` int(11) DEFAULT NULL COMMENT '物流编号',
  `creatTime` int(11) DEFAULT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='食物购买表';

-- ----------------------------
-- Table structure for foodsell
-- ----------------------------
DROP TABLE IF EXISTS `foodsell`;
CREATE TABLE `foodsell` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `ArticleId` int(11) NOT NULL COMMENT '文章ID',
  `isLimit` tinyint(1) NOT NULL COMMENT '是否限制只有优先权权限的用户',
  `type` tinyint(1) NOT NULL COMMENT '关联类型 主要是乡味和小吃',
  `foodId` int(11) NOT NULL COMMENT '食物ID',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `stock` int(11) NOT NULL COMMENT '库存',
  `sold` int(11) NOT NULL COMMENT '出售',
  `creatTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='美食出售表';

-- ----------------------------
-- Table structure for freeride
-- ----------------------------
DROP TABLE IF EXISTS `freeride`;
CREATE TABLE `freeride` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `userId` int(11) NOT NULL COMMENT '作者ID',
  `classId` int(11) NOT NULL COMMENT '类型ID',
  `content` varchar(5120) COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '从哪里出发',
  `to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '到哪里去',
  `startTime` int(11) DEFAULT NULL COMMENT '什么时候出发',
  `seat` int(11) DEFAULT NULL COMMENT '多少座位',
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系人电话',
  `userName` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名称',
  `describe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `time` int(11) DEFAULT NULL COMMENT '时间',
  `demand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '需求',
  `type` tinyint(1) DEFAULT NULL COMMENT '类型 人找车 车找人 租车',
  `visitNum` int(11) NOT NULL COMMENT '访问数',
  `shareAppNum` int(11) NOT NULL COMMENT '分享微信',
  `shareFriendNum` int(11) NOT NULL COMMENT '分享朋友圈',
  `shareQQ` int(11) NOT NULL COMMENT '分享到QQ',
  `classExtra` int(11) NOT NULL COMMENT '分类补充',
  `creatTime` int(11) NOT NULL COMMENT '创建时间表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='顺风车';

-- ----------------------------
-- Table structure for freeridebadges
-- ----------------------------
DROP TABLE IF EXISTS `freeridebadges`;
CREATE TABLE `freeridebadges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `name` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT '标签名字',
  `status` tinyint(1) NOT NULL COMMENT '标签状态',
  `isDelete` tinyint(1) NOT NULL COMMENT '是否可以删除',
  `creatTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='顺风车标签表';

-- ----------------------------
-- Table structure for freeridebadgesunite
-- ----------------------------
DROP TABLE IF EXISTS `freeridebadgesunite`;
CREATE TABLE `freeridebadgesunite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) DEFAULT NULL,
  `articleId` int(11) NOT NULL COMMENT '乡味文章ID',
  `badgesId` int(11) NOT NULL COMMENT '勋章ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='顺风车标签关联表';

-- ----------------------------
-- Table structure for freerideclass
-- ----------------------------
DROP TABLE IF EXISTS `freerideclass`;
CREATE TABLE `freerideclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `articleId` int(11) DEFAULT NULL COMMENT '文章',
  `name` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT '分类名',
  `status` tinyint(1) NOT NULL COMMENT '状态表 隐藏 显示',
  `isDelete` tinyint(1) NOT NULL COMMENT '是否可以删除（固定的两种不能删除）',
  `creatTime` int(11) NOT NULL COMMENT '创建时间表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='顺风车类型';

-- ----------------------------
-- Table structure for freeridephoto
-- ----------------------------
DROP TABLE IF EXISTS `freeridephoto`;
CREATE TABLE `freeridephoto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `articleId` int(11) DEFAULT NULL,
  `bigPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '大图',
  `smallPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '小图',
  `big_w` int(11) NOT NULL COMMENT '图片宽度',
  `big_h` int(11) NOT NULL COMMENT '图片高度',
  `small_w` int(11) NOT NULL COMMENT '小图片宽度',
  `small_h` int(11) NOT NULL COMMENT '小图片高度',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for inquirearticle
-- ----------------------------
DROP TABLE IF EXISTS `inquirearticle`;
CREATE TABLE `inquirearticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `userId` int(11) NOT NULL COMMENT '作者ID',
  `classId` int(11) NOT NULL COMMENT '类型ID',
  `title` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '标题',
  `content` varchar(5120) CHARACTER SET utf8 NOT NULL COMMENT '内容',
  `userName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系人电话',
  `visitNum` int(11) NOT NULL COMMENT '访问数',
  `shareAppNum` int(11) NOT NULL COMMENT '分享微信',
  `shareFriendNum` int(11) NOT NULL COMMENT '分享朋友圈',
  `shareQQ` int(11) NOT NULL COMMENT '分享到QQ',
  `classExtra` int(11) NOT NULL COMMENT '分类补充',
  `creatTime` int(11) NOT NULL COMMENT '创建时间表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='打听事文章表';

-- ----------------------------
-- Table structure for inquirearticlephoto
-- ----------------------------
DROP TABLE IF EXISTS `inquirearticlephoto`;
CREATE TABLE `inquirearticlephoto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `articleId` int(11) DEFAULT NULL,
  `bigPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '大图',
  `smallPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '小图',
  `big_w` int(11) NOT NULL COMMENT '图片宽度',
  `big_h` int(11) NOT NULL COMMENT '图片高度',
  `small_w` int(11) NOT NULL COMMENT '小图片宽度',
  `small_h` int(11) NOT NULL COMMENT '小图片高度',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='打听事文章图片表';

-- ----------------------------
-- Table structure for inquirebadges
-- ----------------------------
DROP TABLE IF EXISTS `inquirebadges`;
CREATE TABLE `inquirebadges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `name` varchar(6) CHARACTER SET utf8 NOT NULL COMMENT '打听事标签名',
  `status` tinyint(1) NOT NULL COMMENT '状态表',
  `isDelete` tinyint(1) NOT NULL COMMENT '是否可以删除',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='打听事标签表';

-- ----------------------------
-- Table structure for inquirebadgesunite
-- ----------------------------
DROP TABLE IF EXISTS `inquirebadgesunite`;
CREATE TABLE `inquirebadgesunite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) DEFAULT NULL,
  `articleId` int(11) NOT NULL COMMENT '乡味文章ID',
  `badgesId` int(11) NOT NULL COMMENT '勋章ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='打听事标签关联标签';

-- ----------------------------
-- Table structure for inquireclass
-- ----------------------------
DROP TABLE IF EXISTS `inquireclass`;
CREATE TABLE `inquireclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `articleId` int(11) DEFAULT NULL,
  `name` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT '分类名',
  `status` tinyint(1) NOT NULL COMMENT '状态表 隐藏 显示',
  `isDelete` tinyint(1) NOT NULL COMMENT '是否可以删除（固定的两种不能删除）',
  `creatTime` int(11) NOT NULL COMMENT '创建时间表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='打听事类型';

-- ----------------------------
-- Table structure for jobarticle
-- ----------------------------
DROP TABLE IF EXISTS `jobarticle`;
CREATE TABLE `jobarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `userId` int(11) NOT NULL COMMENT '作者ID',
  `classId` int(11) NOT NULL COMMENT '类型ID',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `title` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '标题',
  `startAge` int(11) DEFAULT NULL,
  `endAge` int(11) DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `wages` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '工资',
  `job` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '职位',
  `jobNumber` int(11) DEFAULT NULL COMMENT '职位人数',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `dayNight` tinyint(1) DEFAULT NULL COMMENT '白天或者晚上 全天',
  `dayNumber` int(11) DEFAULT NULL COMMENT '天数',
  `area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '区域',
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电话',
  `userName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `describe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `merchantId` int(11) DEFAULT NULL COMMENT '商户ID',
  `visitNum` int(11) NOT NULL COMMENT '访问数',
  `shareAppNum` int(11) NOT NULL COMMENT '分享微信',
  `shareFriendNum` int(11) NOT NULL COMMENT '分享朋友圈',
  `shareQQ` int(11) NOT NULL COMMENT '分享到QQ',
  `classExtra` int(11) NOT NULL COMMENT '分类补充',
  `creatTime` int(11) NOT NULL COMMENT '创建时间表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='工作文章';

-- ----------------------------
-- Table structure for jobarticlephoto
-- ----------------------------
DROP TABLE IF EXISTS `jobarticlephoto`;
CREATE TABLE `jobarticlephoto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `articleId` int(11) DEFAULT NULL,
  `bigPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '大图',
  `smallPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '小图',
  `big_w` int(11) NOT NULL COMMENT '图片宽度',
  `big_h` int(11) NOT NULL COMMENT '图片高度',
  `small_w` int(11) NOT NULL COMMENT '小图片宽度',
  `small_h` int(11) NOT NULL COMMENT '小图片高度',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for jobbadges
-- ----------------------------
DROP TABLE IF EXISTS `jobbadges`;
CREATE TABLE `jobbadges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL,
  `name` varchar(6) CHARACTER SET utf8 NOT NULL COMMENT '标签名称',
  `status` tinyint(1) NOT NULL COMMENT '标签状态',
  `isDelete` tinyint(1) NOT NULL COMMENT '是否可以删除',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for jobbadgesunite
-- ----------------------------
DROP TABLE IF EXISTS `jobbadgesunite`;
CREATE TABLE `jobbadgesunite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) DEFAULT NULL,
  `articleId` int(11) NOT NULL COMMENT '乡味文章ID',
  `badgesId` int(11) NOT NULL COMMENT '勋章ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for jobclass
-- ----------------------------
DROP TABLE IF EXISTS `jobclass`;
CREATE TABLE `jobclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `articleId` int(11) DEFAULT NULL,
  `name` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT '分类名',
  `status` tinyint(1) NOT NULL COMMENT '状态表 隐藏 显示',
  `isDelete` tinyint(1) NOT NULL COMMENT '是否可以删除（固定的两种不能删除）',
  `creatTime` int(11) NOT NULL COMMENT '创建时间表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='农村美食类型';

-- ----------------------------
-- Table structure for lifephotos
-- ----------------------------
DROP TABLE IF EXISTS `lifephotos`;
CREATE TABLE `lifephotos` (
  `id` int(11) NOT NULL DEFAULT '0',
  `publicId` int(11) DEFAULT NULL,
  `photoId` int(11) DEFAULT NULL,
  `blindId` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creatTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='生活照';

-- ----------------------------
-- Table structure for merchant
-- ----------------------------
DROP TABLE IF EXISTS `merchant`;
CREATE TABLE `merchant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号',
  `merchantName` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '商户名称',
  `userId` int(11) NOT NULL COMMENT '创建者用户ID',
  `userName` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '联系人',
  `userPhone` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '联系人电话 或者 手机',
  `describe` varchar(512) CHARACTER SET utf8 NOT NULL COMMENT '商户经营内容',
  `merchantInfo` varchar(512) CHARACTER SET utf8 NOT NULL COMMENT '商户信息',
  `logoId` int(11) NOT NULL COMMENT '商户LOGO图片ID',
  `merchantCoverId` int(11) NOT NULL COMMENT '商户封面ID',
  `businessLicenseId` int(11) DEFAULT NULL COMMENT '营业执照照片',
  `webChatNumber` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商户微信号',
  `webChatQrCodeId` int(11) DEFAULT NULL COMMENT '微信二维码图片ID',
  `province` int(6) NOT NULL COMMENT '省',
  `city` int(6) NOT NULL COMMENT '市',
  `county` int(6) NOT NULL COMMENT '区县',
  `areaDetail` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '地区详细数据',
  `authentication` tinyint(4) NOT NULL COMMENT '认证状态',
  `authenticationTime` int(11) DEFAULT NULL COMMENT '认证时间',
  `authenticationMoney` int(11) DEFAULT NULL COMMENT '认证价格',
  `status` tinyint(1) NOT NULL COMMENT '商户状态（未审核，已审核）',
  `lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '商户经度',
  `lon` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '纬度',
  `recommender` int(11) DEFAULT NULL COMMENT '推荐人',
  `creatTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='商户表';

-- ----------------------------
-- Table structure for merchantclass
-- ----------------------------
DROP TABLE IF EXISTS `merchantclass`;
CREATE TABLE `merchantclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `name` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT '分类名',
  `status` tinyint(1) NOT NULL COMMENT '状态表 隐藏 显示',
  `isDelete` tinyint(1) NOT NULL COMMENT '是否可以删除',
  `creatTime` int(11) NOT NULL COMMENT '创建时间表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='商户类型';

-- ----------------------------
-- Table structure for merchantcoupon
-- ----------------------------
DROP TABLE IF EXISTS `merchantcoupon`;
CREATE TABLE `merchantcoupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `merchantId` int(11) NOT NULL COMMENT '商户ID',
  `startTime` int(11) NOT NULL COMMENT '优惠劵开始时间',
  `endTime` int(11) NOT NULL COMMENT '优惠劵结束时间',
  `limitTime` int(11) NOT NULL COMMENT '优惠劵过期时间',
  `allNumber` int(11) NOT NULL COMMENT '当前优惠劵发布数量',
  `receive` int(11) NOT NULL,
  `usedNumber` int(11) NOT NULL DEFAULT '0' COMMENT '当前优惠劵使用数量',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='优惠券';

-- ----------------------------
-- Table structure for merchantphoto
-- ----------------------------
DROP TABLE IF EXISTS `merchantphoto`;
CREATE TABLE `merchantphoto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `merchantId` int(11) NOT NULL,
  `bigPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '大图',
  `smallPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '小图',
  `big_w` int(11) NOT NULL COMMENT '图片宽度',
  `big_h` int(11) NOT NULL COMMENT '图片高度',
  `small_w` int(11) NOT NULL COMMENT '小图片宽度',
  `small_h` int(11) NOT NULL COMMENT '小图片高度',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='商户图片';

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '消息标题',
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '消息内容',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `type` tinyint(1) NOT NULL COMMENT '类型',
  `fromId` int(11) NOT NULL,
  `creatTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='消息表';

-- ----------------------------
-- Table structure for newsarticle
-- ----------------------------
DROP TABLE IF EXISTS `newsarticle`;
CREATE TABLE `newsarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `userId` int(11) NOT NULL COMMENT '作者ID',
  `classId` int(11) NOT NULL COMMENT '类型ID',
  `title` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '标题',
  `content` varchar(5120) CHARACTER SET utf8 NOT NULL COMMENT '内容',
  `visitNum` int(11) NOT NULL COMMENT '访问数',
  `shareAppNum` int(11) NOT NULL COMMENT '分享微信',
  `shareFriendNum` int(11) NOT NULL COMMENT '分享朋友圈',
  `shareQQ` int(11) NOT NULL COMMENT '分享到QQ',
  `classExtra` int(11) NOT NULL COMMENT '分类补充',
  `creatTime` int(11) NOT NULL COMMENT '创建时间表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='小道消息文章表';

-- ----------------------------
-- Table structure for newsarticlephoto
-- ----------------------------
DROP TABLE IF EXISTS `newsarticlephoto`;
CREATE TABLE `newsarticlephoto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `articleId` int(11) NOT NULL COMMENT '文章ID',
  `bigPhoto` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '大图',
  `smallPhoto` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '小图',
  `big_w` int(11) NOT NULL COMMENT '图片宽度',
  `big_h` int(11) NOT NULL COMMENT '图片高度',
  `small_w` int(11) NOT NULL COMMENT '小图片宽度',
  `small_h` int(11) NOT NULL COMMENT '小图片高度',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='小道消息文章图片表';

-- ----------------------------
-- Table structure for newsbadges
-- ----------------------------
DROP TABLE IF EXISTS `newsbadges`;
CREATE TABLE `newsbadges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `name` varchar(6) CHARACTER SET utf8 NOT NULL COMMENT '消息标签表',
  `status` tinyint(1) NOT NULL COMMENT '状态表 隐藏 显示',
  `isDelete` tinyint(1) NOT NULL COMMENT '是否可以删除',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for newsbadgesunite
-- ----------------------------
DROP TABLE IF EXISTS `newsbadgesunite`;
CREATE TABLE `newsbadgesunite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `articleId` int(11) NOT NULL COMMENT '乡味文章ID',
  `badgesId` int(11) NOT NULL COMMENT '勋章ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='小道消息标签关联表';

-- ----------------------------
-- Table structure for newsclass
-- ----------------------------
DROP TABLE IF EXISTS `newsclass`;
CREATE TABLE `newsclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `articleId` int(11) DEFAULT NULL,
  `name` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT '分类名',
  `status` tinyint(1) NOT NULL COMMENT '状态表 隐藏 显示',
  `isDelete` tinyint(1) NOT NULL COMMENT '是否可以删除（固定的两种不能删除）',
  `creatTime` int(11) NOT NULL COMMENT '创建时间表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='小道消息类型';

-- ----------------------------
-- Table structure for phonerecord
-- ----------------------------
DROP TABLE IF EXISTS `phonerecord`;
CREATE TABLE `phonerecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL,
  `fromId` int(11) NOT NULL COMMENT '从那个文章或者什么',
  `type` tinyint(1) NOT NULL COMMENT '类型',
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userId` int(11) NOT NULL,
  `creatTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for praise
-- ----------------------------
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '点赞ID',
  `publicId` int(11) DEFAULT NULL COMMENT '公众号ID',
  `commentId` int(11) DEFAULT NULL COMMENT '评论ID',
  `userId` int(11) DEFAULT NULL COMMENT '点赞用户ID',
  `creatTime` int(11) DEFAULT NULL COMMENT '点赞时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='评论点赞表';

-- ----------------------------
-- Table structure for public
-- ----------------------------
DROP TABLE IF EXISTS `public`;
CREATE TABLE `public` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` int(6) NOT NULL COMMENT '省的code',
  `city` int(6) NOT NULL COMMENT '市区code',
  `county` int(6) NOT NULL COMMENT '县code',
  `areaDetail` varchar(256) COLLATE utf8_unicode_ci NOT NULL COMMENT '地址详细',
  `publicName` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT '公众号名称',
  `info` varchar(5120) COLLATE utf8_unicode_ci NOT NULL COMMENT '公众号简介',
  `logoUrl` varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '公众号LogoUrl',
  `appID` varchar(18) COLLATE utf8_unicode_ci NOT NULL COMMENT '应用ID',
  `appSecret` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '应用密钥d6f54b4a369491fb754ab8c2c84489b1',
  `url` varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '服务器地址',
  `token` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '令牌',
  `encrypt` tinyint(1) NOT NULL DEFAULT '0',
  `encodingAESKey` varchar(43) COLLATE utf8_unicode_ci NOT NULL COMMENT '消息加解密密钥',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for sceneryarticle
-- ----------------------------
DROP TABLE IF EXISTS `sceneryarticle`;
CREATE TABLE `sceneryarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `userId` int(11) NOT NULL COMMENT '作者ID',
  `classId` int(11) NOT NULL COMMENT '类型ID',
  `area` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '地址',
  `title` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '标题',
  `content` varchar(5120) CHARACTER SET utf8 NOT NULL COMMENT '内容',
  `visitNum` int(11) NOT NULL COMMENT '访问数',
  `shareAppNum` int(11) NOT NULL COMMENT '分享微信',
  `shareFriendNum` int(11) NOT NULL COMMENT '分享朋友圈',
  `shareQQ` int(11) NOT NULL COMMENT '分享到QQ',
  `classExtra` int(11) NOT NULL COMMENT '分类补充',
  `creatTime` int(11) NOT NULL COMMENT '创建时间表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for sceneryarticlephoto
-- ----------------------------
DROP TABLE IF EXISTS `sceneryarticlephoto`;
CREATE TABLE `sceneryarticlephoto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `articleId` int(11) DEFAULT NULL,
  `bigPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '大图',
  `smallPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '小图',
  `big_w` int(11) NOT NULL COMMENT '图片宽度',
  `big_h` int(11) NOT NULL COMMENT '图片高度',
  `small_w` int(11) NOT NULL COMMENT '小图片宽度',
  `small_h` int(11) NOT NULL COMMENT '小图片高度',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='风景文章图片表';

-- ----------------------------
-- Table structure for scenerybadges
-- ----------------------------
DROP TABLE IF EXISTS `scenerybadges`;
CREATE TABLE `scenerybadges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `name` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT '标签名',
  `status` tinyint(1) NOT NULL COMMENT '标签状态',
  `isDelete` tinyint(1) NOT NULL COMMENT '标签是否可以删除',
  `creatTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='风景标签';

-- ----------------------------
-- Table structure for scenerybadgesunite
-- ----------------------------
DROP TABLE IF EXISTS `scenerybadgesunite`;
CREATE TABLE `scenerybadgesunite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) DEFAULT NULL,
  `articleId` int(11) NOT NULL COMMENT '乡味文章ID',
  `badgesId` int(11) NOT NULL COMMENT '勋章ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='风景标签关联表';

-- ----------------------------
-- Table structure for sceneryclass
-- ----------------------------
DROP TABLE IF EXISTS `sceneryclass`;
CREATE TABLE `sceneryclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `articleId` int(11) DEFAULT NULL,
  `name` varchar(6) CHARACTER SET utf8 NOT NULL COMMENT '分类名',
  `status` tinyint(1) NOT NULL COMMENT '状态表 隐藏 显示',
  `isDelete` tinyint(1) NOT NULL COMMENT '是否可以删除（固定的两种不能删除）',
  `creatTime` int(11) NOT NULL COMMENT '创建时间表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='风景类型';

-- ----------------------------
-- Table structure for share
-- ----------------------------
DROP TABLE IF EXISTS `share`;
CREATE TABLE `share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) DEFAULT NULL COMMENT '公众号id',
  `platform` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '分享的平台',
  `userId` int(11) DEFAULT NULL COMMENT '分享的人',
  `page` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '分享的页面',
  `ArticleId` int(11) DEFAULT NULL COMMENT '关联的文章',
  `typeID` int(11) DEFAULT NULL COMMENT '主要是文章类型',
  `number` int(11) DEFAULT NULL COMMENT '查看量',
  `userNum` int(11) DEFAULT NULL COMMENT '用户量',
  `creatTime` datetime DEFAULT NULL COMMENT '分享的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='分享表';

-- ----------------------------
-- Table structure for topclass
-- ----------------------------
DROP TABLE IF EXISTS `topclass`;
CREATE TABLE `topclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) DEFAULT NULL,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '置顶名称',
  `price` int(11) NOT NULL COMMENT '置顶价格',
  `status` tinyint(1) NOT NULL COMMENT '1 显示 0 不显示 2 删除',
  `isAnnounce` tinyint(1) NOT NULL COMMENT '是否全站通告',
  `time` int(11) NOT NULL COMMENT '时间周期',
  `shareNum` int(11) NOT NULL COMMENT '分享次数要求',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='置顶类型表';

-- ----------------------------
-- Table structure for tryeat
-- ----------------------------
DROP TABLE IF EXISTS `tryeat`;
CREATE TABLE `tryeat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `foodId` int(11) NOT NULL COMMENT '美食ID',
  `isLimit` tinyint(1) NOT NULL COMMENT '是否限制只有有优先权的用户才可以购买',
  `prevail` tinyint(1) NOT NULL COMMENT '以量为准，或者以时间和量为准',
  `status` tinyint(1) NOT NULL COMMENT '试吃状态 开启，关闭',
  `startTime` int(11) NOT NULL COMMENT '试吃开始时间',
  `endTime` int(11) NOT NULL COMMENT '试吃结束时间',
  `number` int(11) NOT NULL COMMENT '试吃份额',
  `applyNum` int(11) NOT NULL COMMENT '申请份额',
  `articleId` int(11) NOT NULL COMMENT '关联的文章',
  `type` tinyint(1) NOT NULL COMMENT '主要是乡味和小吃',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='试吃表';

-- ----------------------------
-- Table structure for tryeatapply
-- ----------------------------
DROP TABLE IF EXISTS `tryeatapply`;
CREATE TABLE `tryeatapply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `tryId` int(11) NOT NULL COMMENT '试吃ID',
  `userId` int(11) NOT NULL COMMENT '申请帐号',
  `userName` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '申请人',
  `foodId` int(11) NOT NULL COMMENT '美食ID',
  `userPhone` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT '申请电话',
  `userAddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '申请地址',
  `applyStatus` tinyint(1) NOT NULL COMMENT '申请状态 申请通过，申请失败，等待发货，已经发货，已经签收，退款',
  `money` int(11) DEFAULT NULL COMMENT '需要支付金额',
  `transportMoney` int(11) DEFAULT NULL COMMENT '运费',
  `payStatus` tinyint(1) DEFAULT NULL COMMENT '支付状态 支付成功，支付失败',
  `describe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `logisticsId` int(11) DEFAULT NULL COMMENT '物流ID',
  `logisticsNum` int(11) DEFAULT NULL COMMENT '物流编号',
  `isFirst` tinyint(1) DEFAULT NULL COMMENT '优先使用权',
  `creatTime` int(11) DEFAULT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='试吃申请';

-- ----------------------------
-- Table structure for urgentmatter
-- ----------------------------
DROP TABLE IF EXISTS `urgentmatter`;
CREATE TABLE `urgentmatter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) DEFAULT NULL,
  `articleId` int(11) NOT NULL COMMENT '文章ID',
  `articleType` int(11) NOT NULL COMMENT '置顶文章类别 打听事 顺风车 求职招聘 房屋信息',
  `startTime` int(11) NOT NULL,
  `endTime` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '置顶类型 十万火急 置顶 以及 系统置顶 或者是分享置顶',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='紧急的文章';

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `logoUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户logo',
  `status` tinyint(1) DEFAULT NULL COMMENT '用户状态',
  `sex` tinyint(1) DEFAULT NULL COMMENT '用户性别',
  `age` int(11) DEFAULT NULL COMMENT '用户年龄',
  `province` int(11) DEFAULT NULL COMMENT '省ID',
  `city` int(11) DEFAULT NULL COMMENT '市区',
  `county` int(11) DEFAULT NULL COMMENT '县ID',
  `firstNumber` int(11) DEFAULT NULL COMMENT '优先权',
  `firstUserNumber` int(11) DEFAULT NULL COMMENT '优先权统计人数',
  `creatTime` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户表';

-- ----------------------------
-- Table structure for usercoupon
-- ----------------------------
DROP TABLE IF EXISTS `usercoupon`;
CREATE TABLE `usercoupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchantCouponId` int(11) NOT NULL COMMENT '公司优惠劵ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '优惠劵code',
  `userId` int(11) NOT NULL COMMENT '用户ID',
  `scanningUserId` int(11) NOT NULL COMMENT '扫描的用户（员工或者店主）',
  `publicId` int(11) NOT NULL COMMENT '公众号ID',
  `merchantId` int(11) NOT NULL COMMENT '店铺ID',
  `creatTime` int(11) NOT NULL COMMENT '创建时间',
  `userTime` int(11) NOT NULL COMMENT '使用时间',
  `limitTime` int(11) NOT NULL COMMENT '优惠劵过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户领取优惠劵';

-- ----------------------------
-- Table structure for uservisitrecord
-- ----------------------------
DROP TABLE IF EXISTS `uservisitrecord`;
CREATE TABLE `uservisitrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicId` int(11) NOT NULL,
  `userId` int(11) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '访问的类型',
  `articleId` int(11) NOT NULL COMMENT '访问的文章',
  `creatTime` int(11) NOT NULL COMMENT '创建的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户访问记录表';


CREATE TABLE `menu` (

`id` int NOT NULL AUTO_INCREMENT,

`publicId` int NOT NULL,

`name` varchar(255) NOT NULL COMMENT '按钮名字',

`type` varchar(10) NOT NULL COMMENT '按钮类型',

`url` varchar(255) NOT NULL COMMENT '按钮连接',

`creatTime` int(11) NOT NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `sub_menu` (

`id` int NOT NULL AUTO_INCREMENT,

`publicId` int NOT NULL,

`menuId` int NOT NULL,

`name` varchar(255) NOT NULL,

`type` varchar(10) NOT NULL,

`url` varchar(255) NOT NULL,

`creatTime` int(11) NOT NULL,

PRIMARY KEY (`id`) 

);
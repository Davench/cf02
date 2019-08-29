/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : cf

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2018-03-01 17:32:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for authentication
-- ----------------------------
DROP TABLE IF EXISTS `authentication`;
CREATE TABLE `authentication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) DEFAULT NULL,
  `isThree` int(1) NOT NULL COMMENT '是否三证合一',
  `name` varchar(255) NOT NULL COMMENT '企业全称',
  `creditCode` varchar(255) DEFAULT NULL COMMENT '企业信用代码',
  `representative` varchar(255) NOT NULL COMMENT '法人姓名',
  `representativeCard` varchar(255) NOT NULL COMMENT '法人身份证',
  `representativePhone` varchar(255) NOT NULL COMMENT '法人手机号',
  `contacts` varchar(255) NOT NULL COMMENT '联系人',
  `phone` varchar(255) NOT NULL COMMENT '电话号码',
  `photo` varchar(255) NOT NULL COMMENT '营业执照',
  `cardPhoto` varchar(255) NOT NULL COMMENT '身份证',
  `creatTime` int(11) NOT NULL,
  `businessNumber` varchar(255) DEFAULT NULL COMMENT '工商注册号',
  `organizationCode` varchar(255) DEFAULT NULL COMMENT '组织机构代码',
  `taxCard` varchar(255) DEFAULT NULL COMMENT '税务登记证',
  `organizationCard` varchar(255) DEFAULT NULL COMMENT '组织机构代码证',
  `taxpayersAlias` varchar(255) DEFAULT NULL COMMENT '纳税人识别号',
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authentication
-- ----------------------------
INSERT INTO `authentication` VALUES ('1', '24', '0', 'ceshi', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', '1512020736035.png', '1512020748552.jpg', '1512020750', null, null, null, null, null, '1');
INSERT INTO `authentication` VALUES ('2', '12', '0', '测试', '2123123', '张三', '12312312', '13886027496', '张三', '13886027496', '1512030448475.png', '1512030463050.png', '1512030464', null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3222 DEFAULT CHARSET=utf8 COMMENT='城市表';

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('3', '110000', '北京市');
INSERT INTO `city` VALUES ('4', '110101', '东城区');
INSERT INTO `city` VALUES ('5', '110102', '西城区');
INSERT INTO `city` VALUES ('6', '110105', '朝阳区');
INSERT INTO `city` VALUES ('7', '110106', '丰台区');
INSERT INTO `city` VALUES ('8', '110107', '石景山区');
INSERT INTO `city` VALUES ('9', '110108', '海淀区');
INSERT INTO `city` VALUES ('10', '110109', '门头沟区');
INSERT INTO `city` VALUES ('11', '110111', '房山区');
INSERT INTO `city` VALUES ('12', '110112', '通州区');
INSERT INTO `city` VALUES ('13', '110113', '顺义区');
INSERT INTO `city` VALUES ('14', '110114', '昌平区');
INSERT INTO `city` VALUES ('15', '110115', '大兴区');
INSERT INTO `city` VALUES ('16', '110116', '怀柔区');
INSERT INTO `city` VALUES ('17', '110117', '平谷区');
INSERT INTO `city` VALUES ('18', '110118', '密云区');
INSERT INTO `city` VALUES ('19', '110119', '延庆区');
INSERT INTO `city` VALUES ('20', '120000', '天津市');
INSERT INTO `city` VALUES ('21', '120101', '和平区');
INSERT INTO `city` VALUES ('22', '120102', '河东区');
INSERT INTO `city` VALUES ('23', '120103', '河西区');
INSERT INTO `city` VALUES ('24', '120104', '南开区');
INSERT INTO `city` VALUES ('25', '120105', '河北区');
INSERT INTO `city` VALUES ('26', '120106', '红桥区');
INSERT INTO `city` VALUES ('27', '120110', '东丽区');
INSERT INTO `city` VALUES ('28', '120111', '西青区');
INSERT INTO `city` VALUES ('29', '120112', '津南区');
INSERT INTO `city` VALUES ('30', '120113', '北辰区');
INSERT INTO `city` VALUES ('31', '120114', '武清区');
INSERT INTO `city` VALUES ('32', '120115', '宝坻区');
INSERT INTO `city` VALUES ('33', '120116', '滨海新区');
INSERT INTO `city` VALUES ('34', '120117', '宁河区');
INSERT INTO `city` VALUES ('35', '120118', '静海区');
INSERT INTO `city` VALUES ('36', '120225', '蓟县');
INSERT INTO `city` VALUES ('37', '130000', '河北省');
INSERT INTO `city` VALUES ('38', '130100', '石家庄市');
INSERT INTO `city` VALUES ('39', '130102', '长安区');
INSERT INTO `city` VALUES ('40', '130104', '桥西区');
INSERT INTO `city` VALUES ('41', '130105', '新华区');
INSERT INTO `city` VALUES ('42', '130107', '井陉矿区');
INSERT INTO `city` VALUES ('43', '130108', '裕华区');
INSERT INTO `city` VALUES ('44', '130109', '藁城区');
INSERT INTO `city` VALUES ('45', '130110', '鹿泉区');
INSERT INTO `city` VALUES ('46', '130111', '栾城区');
INSERT INTO `city` VALUES ('47', '130121', '井陉县');
INSERT INTO `city` VALUES ('48', '130123', '正定县');
INSERT INTO `city` VALUES ('49', '130125', '行唐县');
INSERT INTO `city` VALUES ('50', '130126', '灵寿县');
INSERT INTO `city` VALUES ('51', '130127', '高邑县');
INSERT INTO `city` VALUES ('52', '130128', '深泽县');
INSERT INTO `city` VALUES ('53', '130129', '赞皇县');
INSERT INTO `city` VALUES ('54', '130130', '无极县');
INSERT INTO `city` VALUES ('55', '130131', '平山县');
INSERT INTO `city` VALUES ('56', '130132', '元氏县');
INSERT INTO `city` VALUES ('57', '130133', '赵县');
INSERT INTO `city` VALUES ('58', '130181', '辛集市');
INSERT INTO `city` VALUES ('59', '130183', '晋州市');
INSERT INTO `city` VALUES ('60', '130184', '新乐市');
INSERT INTO `city` VALUES ('61', '130200', '唐山市');
INSERT INTO `city` VALUES ('62', '130202', '路南区');
INSERT INTO `city` VALUES ('63', '130203', '路北区');
INSERT INTO `city` VALUES ('64', '130204', '古冶区');
INSERT INTO `city` VALUES ('65', '130205', '开平区');
INSERT INTO `city` VALUES ('66', '130207', '丰南区');
INSERT INTO `city` VALUES ('67', '130208', '丰润区');
INSERT INTO `city` VALUES ('68', '130209', '曹妃甸区');
INSERT INTO `city` VALUES ('69', '130223', '滦县');
INSERT INTO `city` VALUES ('70', '130224', '滦南县');
INSERT INTO `city` VALUES ('71', '130225', '乐亭县');
INSERT INTO `city` VALUES ('72', '130227', '迁西县');
INSERT INTO `city` VALUES ('73', '130229', '玉田县');
INSERT INTO `city` VALUES ('74', '130281', '遵化市');
INSERT INTO `city` VALUES ('75', '130283', '迁安市');
INSERT INTO `city` VALUES ('76', '130300', '秦皇岛市');
INSERT INTO `city` VALUES ('77', '130302', '海港区');
INSERT INTO `city` VALUES ('78', '130303', '山海关区');
INSERT INTO `city` VALUES ('79', '130304', '北戴河区');
INSERT INTO `city` VALUES ('80', '130306', '抚宁区');
INSERT INTO `city` VALUES ('81', '130321', '青龙满族自治县');
INSERT INTO `city` VALUES ('82', '130322', '昌黎县');
INSERT INTO `city` VALUES ('83', '130324', '卢龙县');
INSERT INTO `city` VALUES ('84', '130400', '邯郸市');
INSERT INTO `city` VALUES ('85', '130402', '邯山区');
INSERT INTO `city` VALUES ('86', '130403', '丛台区');
INSERT INTO `city` VALUES ('87', '130404', '复兴区');
INSERT INTO `city` VALUES ('88', '130406', '峰峰矿区');
INSERT INTO `city` VALUES ('89', '130421', '邯郸县');
INSERT INTO `city` VALUES ('90', '130423', '临漳县');
INSERT INTO `city` VALUES ('91', '130424', '成安县');
INSERT INTO `city` VALUES ('92', '130425', '大名县');
INSERT INTO `city` VALUES ('93', '130426', '涉县');
INSERT INTO `city` VALUES ('94', '130427', '磁县');
INSERT INTO `city` VALUES ('95', '130428', '肥乡县');
INSERT INTO `city` VALUES ('96', '130429', '永年县');
INSERT INTO `city` VALUES ('97', '130430', '邱县');
INSERT INTO `city` VALUES ('98', '130431', '鸡泽县');
INSERT INTO `city` VALUES ('99', '130432', '广平县');
INSERT INTO `city` VALUES ('100', '130433', '馆陶县');
INSERT INTO `city` VALUES ('101', '130434', '魏县');
INSERT INTO `city` VALUES ('102', '130435', '曲周县');
INSERT INTO `city` VALUES ('103', '130481', '武安市');
INSERT INTO `city` VALUES ('104', '130500', '邢台市');
INSERT INTO `city` VALUES ('105', '130502', '桥东区');
INSERT INTO `city` VALUES ('106', '130503', '桥西区');
INSERT INTO `city` VALUES ('107', '130521', '邢台县');
INSERT INTO `city` VALUES ('108', '130522', '临城县');
INSERT INTO `city` VALUES ('109', '130523', '内丘县');
INSERT INTO `city` VALUES ('110', '130524', '柏乡县');
INSERT INTO `city` VALUES ('111', '130525', '隆尧县');
INSERT INTO `city` VALUES ('112', '130526', '任县');
INSERT INTO `city` VALUES ('113', '130527', '南和县');
INSERT INTO `city` VALUES ('114', '130528', '宁晋县');
INSERT INTO `city` VALUES ('115', '130529', '巨鹿县');
INSERT INTO `city` VALUES ('116', '130530', '新河县');
INSERT INTO `city` VALUES ('117', '130531', '广宗县');
INSERT INTO `city` VALUES ('118', '130532', '平乡县');
INSERT INTO `city` VALUES ('119', '130533', '威县');
INSERT INTO `city` VALUES ('120', '130534', '清河县');
INSERT INTO `city` VALUES ('121', '130535', '临西县');
INSERT INTO `city` VALUES ('122', '130581', '南宫市');
INSERT INTO `city` VALUES ('123', '130582', '沙河市');
INSERT INTO `city` VALUES ('124', '130600', '保定市');
INSERT INTO `city` VALUES ('125', '130602', '竞秀区');
INSERT INTO `city` VALUES ('126', '130604', '南市区');
INSERT INTO `city` VALUES ('127', '130606', '莲池区');
INSERT INTO `city` VALUES ('128', '130607', '满城区');
INSERT INTO `city` VALUES ('129', '130608', '清苑区');
INSERT INTO `city` VALUES ('130', '130609', '徐水区');
INSERT INTO `city` VALUES ('131', '130623', '涞水县');
INSERT INTO `city` VALUES ('132', '130624', '阜平县');
INSERT INTO `city` VALUES ('133', '130626', '定兴县');
INSERT INTO `city` VALUES ('134', '130627', '唐县');
INSERT INTO `city` VALUES ('135', '130628', '高阳县');
INSERT INTO `city` VALUES ('136', '130629', '容城县');
INSERT INTO `city` VALUES ('137', '130630', '涞源县');
INSERT INTO `city` VALUES ('138', '130631', '望都县');
INSERT INTO `city` VALUES ('139', '130632', '安新县');
INSERT INTO `city` VALUES ('140', '130633', '易县');
INSERT INTO `city` VALUES ('141', '130634', '曲阳县');
INSERT INTO `city` VALUES ('142', '130635', '蠡县');
INSERT INTO `city` VALUES ('143', '130636', '顺平县');
INSERT INTO `city` VALUES ('144', '130637', '博野县');
INSERT INTO `city` VALUES ('145', '130638', '雄县');
INSERT INTO `city` VALUES ('146', '130681', '涿州市');
INSERT INTO `city` VALUES ('147', '130682', '定州市');
INSERT INTO `city` VALUES ('148', '130683', '安国市');
INSERT INTO `city` VALUES ('149', '130684', '高碑店市');
INSERT INTO `city` VALUES ('150', '130700', '张家口市');
INSERT INTO `city` VALUES ('151', '130702', '桥东区');
INSERT INTO `city` VALUES ('152', '130703', '桥西区');
INSERT INTO `city` VALUES ('153', '130705', '宣化区');
INSERT INTO `city` VALUES ('154', '130706', '下花园区');
INSERT INTO `city` VALUES ('155', '130721', '宣化县');
INSERT INTO `city` VALUES ('156', '130722', '张北县');
INSERT INTO `city` VALUES ('157', '130723', '康保县');
INSERT INTO `city` VALUES ('158', '130724', '沽源县');
INSERT INTO `city` VALUES ('159', '130725', '尚义县');
INSERT INTO `city` VALUES ('160', '130726', '蔚县');
INSERT INTO `city` VALUES ('161', '130727', '阳原县');
INSERT INTO `city` VALUES ('162', '130728', '怀安县');
INSERT INTO `city` VALUES ('163', '130729', '万全县');
INSERT INTO `city` VALUES ('164', '130730', '怀来县');
INSERT INTO `city` VALUES ('165', '130731', '涿鹿县');
INSERT INTO `city` VALUES ('166', '130732', '赤城县');
INSERT INTO `city` VALUES ('167', '130733', '崇礼县');
INSERT INTO `city` VALUES ('168', '130800', '承德市');
INSERT INTO `city` VALUES ('169', '130802', '双桥区');
INSERT INTO `city` VALUES ('170', '130803', '双滦区');
INSERT INTO `city` VALUES ('171', '130804', '鹰手营子矿区');
INSERT INTO `city` VALUES ('172', '130821', '承德县');
INSERT INTO `city` VALUES ('173', '130822', '兴隆县');
INSERT INTO `city` VALUES ('174', '130823', '平泉县');
INSERT INTO `city` VALUES ('175', '130824', '滦平县');
INSERT INTO `city` VALUES ('176', '130825', '隆化县');
INSERT INTO `city` VALUES ('177', '130826', '丰宁满族自治县');
INSERT INTO `city` VALUES ('178', '130827', '宽城满族自治县');
INSERT INTO `city` VALUES ('179', '130828', '围场满族蒙古族自治县');
INSERT INTO `city` VALUES ('180', '130900', '沧州市');
INSERT INTO `city` VALUES ('181', '130902', '新华区');
INSERT INTO `city` VALUES ('182', '130903', '运河区');
INSERT INTO `city` VALUES ('183', '130921', '沧县');
INSERT INTO `city` VALUES ('184', '130922', '青县');
INSERT INTO `city` VALUES ('185', '130923', '东光县');
INSERT INTO `city` VALUES ('186', '130924', '海兴县');
INSERT INTO `city` VALUES ('187', '130925', '盐山县');
INSERT INTO `city` VALUES ('188', '130926', '肃宁县');
INSERT INTO `city` VALUES ('189', '130927', '南皮县');
INSERT INTO `city` VALUES ('190', '130928', '吴桥县');
INSERT INTO `city` VALUES ('191', '130929', '献县');
INSERT INTO `city` VALUES ('192', '130930', '孟村回族自治县');
INSERT INTO `city` VALUES ('193', '130981', '泊头市');
INSERT INTO `city` VALUES ('194', '130982', '任丘市');
INSERT INTO `city` VALUES ('195', '130983', '黄骅市');
INSERT INTO `city` VALUES ('196', '130984', '河间市');
INSERT INTO `city` VALUES ('197', '131000', '廊坊市');
INSERT INTO `city` VALUES ('198', '131002', '安次区');
INSERT INTO `city` VALUES ('199', '131003', '广阳区');
INSERT INTO `city` VALUES ('200', '131022', '固安县');
INSERT INTO `city` VALUES ('201', '131023', '永清县');
INSERT INTO `city` VALUES ('202', '131024', '香河县');
INSERT INTO `city` VALUES ('203', '131025', '大城县');
INSERT INTO `city` VALUES ('204', '131026', '文安县');
INSERT INTO `city` VALUES ('205', '131028', '大厂回族自治县');
INSERT INTO `city` VALUES ('206', '131081', '霸州市');
INSERT INTO `city` VALUES ('207', '131082', '三河市');
INSERT INTO `city` VALUES ('208', '131100', '衡水市');
INSERT INTO `city` VALUES ('209', '131102', '桃城区');
INSERT INTO `city` VALUES ('210', '131121', '枣强县');
INSERT INTO `city` VALUES ('211', '131122', '武邑县');
INSERT INTO `city` VALUES ('212', '131123', '武强县');
INSERT INTO `city` VALUES ('213', '131124', '饶阳县');
INSERT INTO `city` VALUES ('214', '131125', '安平县');
INSERT INTO `city` VALUES ('215', '131126', '故城县');
INSERT INTO `city` VALUES ('216', '131127', '景县');
INSERT INTO `city` VALUES ('217', '131128', '阜城县');
INSERT INTO `city` VALUES ('218', '131181', '冀州市');
INSERT INTO `city` VALUES ('219', '131182', '深州市');
INSERT INTO `city` VALUES ('220', '140000', '山西省');
INSERT INTO `city` VALUES ('221', '140100', '太原市');
INSERT INTO `city` VALUES ('222', '140105', '小店区');
INSERT INTO `city` VALUES ('223', '140106', '迎泽区');
INSERT INTO `city` VALUES ('224', '140107', '杏花岭区');
INSERT INTO `city` VALUES ('225', '140108', '尖草坪区');
INSERT INTO `city` VALUES ('226', '140109', '万柏林区');
INSERT INTO `city` VALUES ('227', '140110', '晋源区');
INSERT INTO `city` VALUES ('228', '140121', '清徐县');
INSERT INTO `city` VALUES ('229', '140122', '阳曲县');
INSERT INTO `city` VALUES ('230', '140123', '娄烦县');
INSERT INTO `city` VALUES ('231', '140181', '古交市');
INSERT INTO `city` VALUES ('232', '140200', '大同市');
INSERT INTO `city` VALUES ('233', '140202', '城区');
INSERT INTO `city` VALUES ('234', '140203', '矿区');
INSERT INTO `city` VALUES ('235', '140211', '南郊区');
INSERT INTO `city` VALUES ('236', '140212', '新荣区');
INSERT INTO `city` VALUES ('237', '140221', '阳高县');
INSERT INTO `city` VALUES ('238', '140222', '天镇县');
INSERT INTO `city` VALUES ('239', '140223', '广灵县');
INSERT INTO `city` VALUES ('240', '140224', '灵丘县');
INSERT INTO `city` VALUES ('241', '140225', '浑源县');
INSERT INTO `city` VALUES ('242', '140226', '左云县');
INSERT INTO `city` VALUES ('243', '140227', '大同县');
INSERT INTO `city` VALUES ('244', '140300', '阳泉市');
INSERT INTO `city` VALUES ('245', '140302', '城区');
INSERT INTO `city` VALUES ('246', '140303', '矿区');
INSERT INTO `city` VALUES ('247', '140311', '郊区');
INSERT INTO `city` VALUES ('248', '140321', '平定县');
INSERT INTO `city` VALUES ('249', '140322', '盂县');
INSERT INTO `city` VALUES ('250', '140400', '长治市');
INSERT INTO `city` VALUES ('251', '140402', '城区');
INSERT INTO `city` VALUES ('252', '140411', '郊区');
INSERT INTO `city` VALUES ('253', '140421', '长治县');
INSERT INTO `city` VALUES ('254', '140423', '襄垣县');
INSERT INTO `city` VALUES ('255', '140424', '屯留县');
INSERT INTO `city` VALUES ('256', '140425', '平顺县');
INSERT INTO `city` VALUES ('257', '140426', '黎城县');
INSERT INTO `city` VALUES ('258', '140427', '壶关县');
INSERT INTO `city` VALUES ('259', '140428', '长子县');
INSERT INTO `city` VALUES ('260', '140429', '武乡县');
INSERT INTO `city` VALUES ('261', '140430', '沁县');
INSERT INTO `city` VALUES ('262', '140431', '沁源县');
INSERT INTO `city` VALUES ('263', '140481', '潞城市');
INSERT INTO `city` VALUES ('264', '140500', '晋城市');
INSERT INTO `city` VALUES ('265', '140502', '城区');
INSERT INTO `city` VALUES ('266', '140521', '沁水县');
INSERT INTO `city` VALUES ('267', '140522', '阳城县');
INSERT INTO `city` VALUES ('268', '140524', '陵川县');
INSERT INTO `city` VALUES ('269', '140525', '泽州县');
INSERT INTO `city` VALUES ('270', '140581', '高平市');
INSERT INTO `city` VALUES ('271', '140600', '朔州市');
INSERT INTO `city` VALUES ('272', '140602', '朔城区');
INSERT INTO `city` VALUES ('273', '140603', '平鲁区');
INSERT INTO `city` VALUES ('274', '140621', '山阴县');
INSERT INTO `city` VALUES ('275', '140622', '应县');
INSERT INTO `city` VALUES ('276', '140623', '右玉县');
INSERT INTO `city` VALUES ('277', '140624', '怀仁县');
INSERT INTO `city` VALUES ('278', '140700', '晋中市');
INSERT INTO `city` VALUES ('279', '140702', '榆次区');
INSERT INTO `city` VALUES ('280', '140721', '榆社县');
INSERT INTO `city` VALUES ('281', '140722', '左权县');
INSERT INTO `city` VALUES ('282', '140723', '和顺县');
INSERT INTO `city` VALUES ('283', '140724', '昔阳县');
INSERT INTO `city` VALUES ('284', '140725', '寿阳县');
INSERT INTO `city` VALUES ('285', '140726', '太谷县');
INSERT INTO `city` VALUES ('286', '140727', '祁县');
INSERT INTO `city` VALUES ('287', '140728', '平遥县');
INSERT INTO `city` VALUES ('288', '140729', '灵石县');
INSERT INTO `city` VALUES ('289', '140781', '介休市');
INSERT INTO `city` VALUES ('290', '140800', '运城市');
INSERT INTO `city` VALUES ('291', '140802', '盐湖区');
INSERT INTO `city` VALUES ('292', '140821', '临猗县');
INSERT INTO `city` VALUES ('293', '140822', '万荣县');
INSERT INTO `city` VALUES ('294', '140823', '闻喜县');
INSERT INTO `city` VALUES ('295', '140824', '稷山县');
INSERT INTO `city` VALUES ('296', '140825', '新绛县');
INSERT INTO `city` VALUES ('297', '140826', '绛县');
INSERT INTO `city` VALUES ('298', '140827', '垣曲县');
INSERT INTO `city` VALUES ('299', '140828', '夏县');
INSERT INTO `city` VALUES ('300', '140829', '平陆县');
INSERT INTO `city` VALUES ('301', '140830', '芮城县');
INSERT INTO `city` VALUES ('302', '140881', '永济市');
INSERT INTO `city` VALUES ('303', '140882', '河津市');
INSERT INTO `city` VALUES ('304', '140900', '忻州市');
INSERT INTO `city` VALUES ('305', '140902', '忻府区');
INSERT INTO `city` VALUES ('306', '140921', '定襄县');
INSERT INTO `city` VALUES ('307', '140922', '五台县');
INSERT INTO `city` VALUES ('308', '140923', '代县');
INSERT INTO `city` VALUES ('309', '140924', '繁峙县');
INSERT INTO `city` VALUES ('310', '140925', '宁武县');
INSERT INTO `city` VALUES ('311', '140926', '静乐县');
INSERT INTO `city` VALUES ('312', '140927', '神池县');
INSERT INTO `city` VALUES ('313', '140928', '五寨县');
INSERT INTO `city` VALUES ('314', '140929', '岢岚县');
INSERT INTO `city` VALUES ('315', '140930', '河曲县');
INSERT INTO `city` VALUES ('316', '140931', '保德县');
INSERT INTO `city` VALUES ('317', '140932', '偏关县');
INSERT INTO `city` VALUES ('318', '140981', '原平市');
INSERT INTO `city` VALUES ('319', '141000', '临汾市');
INSERT INTO `city` VALUES ('320', '141002', '尧都区');
INSERT INTO `city` VALUES ('321', '141021', '曲沃县');
INSERT INTO `city` VALUES ('322', '141022', '翼城县');
INSERT INTO `city` VALUES ('323', '141023', '襄汾县');
INSERT INTO `city` VALUES ('324', '141024', '洪洞县');
INSERT INTO `city` VALUES ('325', '141025', '古县');
INSERT INTO `city` VALUES ('326', '141026', '安泽县');
INSERT INTO `city` VALUES ('327', '141027', '浮山县');
INSERT INTO `city` VALUES ('328', '141028', '吉县');
INSERT INTO `city` VALUES ('329', '141029', '乡宁县');
INSERT INTO `city` VALUES ('330', '141030', '大宁县');
INSERT INTO `city` VALUES ('331', '141031', '隰县');
INSERT INTO `city` VALUES ('332', '141032', '永和县');
INSERT INTO `city` VALUES ('333', '141033', '蒲县');
INSERT INTO `city` VALUES ('334', '141034', '汾西县');
INSERT INTO `city` VALUES ('335', '141081', '侯马市');
INSERT INTO `city` VALUES ('336', '141082', '霍州市');
INSERT INTO `city` VALUES ('337', '141100', '吕梁市');
INSERT INTO `city` VALUES ('338', '141102', '离石区');
INSERT INTO `city` VALUES ('339', '141121', '文水县');
INSERT INTO `city` VALUES ('340', '141122', '交城县');
INSERT INTO `city` VALUES ('341', '141123', '兴县');
INSERT INTO `city` VALUES ('342', '141124', '临县');
INSERT INTO `city` VALUES ('343', '141125', '柳林县');
INSERT INTO `city` VALUES ('344', '141126', '石楼县');
INSERT INTO `city` VALUES ('345', '141127', '岚县');
INSERT INTO `city` VALUES ('346', '141128', '方山县');
INSERT INTO `city` VALUES ('347', '141129', '中阳县');
INSERT INTO `city` VALUES ('348', '141130', '交口县');
INSERT INTO `city` VALUES ('349', '141181', '孝义市');
INSERT INTO `city` VALUES ('350', '141182', '汾阳市');
INSERT INTO `city` VALUES ('351', '150000', '内蒙古自治区');
INSERT INTO `city` VALUES ('352', '150100', '呼和浩特市');
INSERT INTO `city` VALUES ('353', '150102', '新城区');
INSERT INTO `city` VALUES ('354', '150103', '回民区');
INSERT INTO `city` VALUES ('355', '150104', '玉泉区');
INSERT INTO `city` VALUES ('356', '150105', '赛罕区');
INSERT INTO `city` VALUES ('357', '150121', '土默特左旗');
INSERT INTO `city` VALUES ('358', '150122', '托克托县');
INSERT INTO `city` VALUES ('359', '150123', '和林格尔县');
INSERT INTO `city` VALUES ('360', '150124', '清水河县');
INSERT INTO `city` VALUES ('361', '150125', '武川县');
INSERT INTO `city` VALUES ('362', '150200', '包头市');
INSERT INTO `city` VALUES ('363', '150202', '东河区');
INSERT INTO `city` VALUES ('364', '150203', '昆都仑区');
INSERT INTO `city` VALUES ('365', '150204', '青山区');
INSERT INTO `city` VALUES ('366', '150205', '石拐区');
INSERT INTO `city` VALUES ('367', '150206', '白云鄂博矿区');
INSERT INTO `city` VALUES ('368', '150207', '九原区');
INSERT INTO `city` VALUES ('369', '150221', '土默特右旗');
INSERT INTO `city` VALUES ('370', '150222', '固阳县');
INSERT INTO `city` VALUES ('371', '150223', '达尔罕茂明安联合旗');
INSERT INTO `city` VALUES ('372', '150300', '乌海市');
INSERT INTO `city` VALUES ('373', '150302', '海勃湾区');
INSERT INTO `city` VALUES ('374', '150303', '海南区');
INSERT INTO `city` VALUES ('375', '150304', '乌达区');
INSERT INTO `city` VALUES ('376', '150400', '赤峰市');
INSERT INTO `city` VALUES ('377', '150402', '红山区');
INSERT INTO `city` VALUES ('378', '150403', '元宝山区');
INSERT INTO `city` VALUES ('379', '150404', '松山区');
INSERT INTO `city` VALUES ('380', '150421', '阿鲁科尔沁旗');
INSERT INTO `city` VALUES ('381', '150422', '巴林左旗');
INSERT INTO `city` VALUES ('382', '150423', '巴林右旗');
INSERT INTO `city` VALUES ('383', '150424', '林西县');
INSERT INTO `city` VALUES ('384', '150425', '克什克腾旗');
INSERT INTO `city` VALUES ('385', '150426', '翁牛特旗');
INSERT INTO `city` VALUES ('386', '150428', '喀喇沁旗');
INSERT INTO `city` VALUES ('387', '150429', '宁城县');
INSERT INTO `city` VALUES ('388', '150430', '敖汉旗');
INSERT INTO `city` VALUES ('389', '150500', '通辽市');
INSERT INTO `city` VALUES ('390', '150502', '科尔沁区');
INSERT INTO `city` VALUES ('391', '150521', '科尔沁左翼中旗');
INSERT INTO `city` VALUES ('392', '150522', '科尔沁左翼后旗');
INSERT INTO `city` VALUES ('393', '150523', '开鲁县');
INSERT INTO `city` VALUES ('394', '150524', '库伦旗');
INSERT INTO `city` VALUES ('395', '150525', '奈曼旗');
INSERT INTO `city` VALUES ('396', '150526', '扎鲁特旗');
INSERT INTO `city` VALUES ('397', '150581', '霍林郭勒市');
INSERT INTO `city` VALUES ('398', '150600', '鄂尔多斯市');
INSERT INTO `city` VALUES ('399', '150602', '东胜区');
INSERT INTO `city` VALUES ('400', '150621', '达拉特旗');
INSERT INTO `city` VALUES ('401', '150622', '准格尔旗');
INSERT INTO `city` VALUES ('402', '150623', '鄂托克前旗');
INSERT INTO `city` VALUES ('403', '150624', '鄂托克旗');
INSERT INTO `city` VALUES ('404', '150625', '杭锦旗');
INSERT INTO `city` VALUES ('405', '150626', '乌审旗');
INSERT INTO `city` VALUES ('406', '150627', '伊金霍洛旗');
INSERT INTO `city` VALUES ('407', '150700', '呼伦贝尔市');
INSERT INTO `city` VALUES ('408', '150702', '海拉尔区');
INSERT INTO `city` VALUES ('409', '150703', '扎赉诺尔区');
INSERT INTO `city` VALUES ('410', '150721', '阿荣旗');
INSERT INTO `city` VALUES ('411', '150722', '莫力达瓦达斡尔族自治旗');
INSERT INTO `city` VALUES ('412', '150723', '鄂伦春自治旗');
INSERT INTO `city` VALUES ('413', '150724', '鄂温克族自治旗');
INSERT INTO `city` VALUES ('414', '150725', '陈巴尔虎旗');
INSERT INTO `city` VALUES ('415', '150726', '新巴尔虎左旗');
INSERT INTO `city` VALUES ('416', '150727', '新巴尔虎右旗');
INSERT INTO `city` VALUES ('417', '150781', '满洲里市');
INSERT INTO `city` VALUES ('418', '150782', '牙克石市');
INSERT INTO `city` VALUES ('419', '150783', '扎兰屯市');
INSERT INTO `city` VALUES ('420', '150784', '额尔古纳市');
INSERT INTO `city` VALUES ('421', '150785', '根河市');
INSERT INTO `city` VALUES ('422', '150800', '巴彦淖尔市');
INSERT INTO `city` VALUES ('423', '150802', '临河区');
INSERT INTO `city` VALUES ('424', '150821', '五原县');
INSERT INTO `city` VALUES ('425', '150822', '磴口县');
INSERT INTO `city` VALUES ('426', '150823', '乌拉特前旗');
INSERT INTO `city` VALUES ('427', '150824', '乌拉特中旗');
INSERT INTO `city` VALUES ('428', '150825', '乌拉特后旗');
INSERT INTO `city` VALUES ('429', '150826', '杭锦后旗');
INSERT INTO `city` VALUES ('430', '150900', '乌兰察布市');
INSERT INTO `city` VALUES ('431', '150902', '集宁区');
INSERT INTO `city` VALUES ('432', '150921', '卓资县');
INSERT INTO `city` VALUES ('433', '150922', '化德县');
INSERT INTO `city` VALUES ('434', '150923', '商都县');
INSERT INTO `city` VALUES ('435', '150924', '兴和县');
INSERT INTO `city` VALUES ('436', '150925', '凉城县');
INSERT INTO `city` VALUES ('437', '150926', '察哈尔右翼前旗');
INSERT INTO `city` VALUES ('438', '150927', '察哈尔右翼中旗');
INSERT INTO `city` VALUES ('439', '150928', '察哈尔右翼后旗');
INSERT INTO `city` VALUES ('440', '150929', '四子王旗');
INSERT INTO `city` VALUES ('441', '150981', '丰镇市');
INSERT INTO `city` VALUES ('442', '152200', '兴安盟');
INSERT INTO `city` VALUES ('443', '152201', '乌兰浩特市');
INSERT INTO `city` VALUES ('444', '152202', '阿尔山市');
INSERT INTO `city` VALUES ('445', '152221', '科尔沁右翼前旗');
INSERT INTO `city` VALUES ('446', '152222', '科尔沁右翼中旗');
INSERT INTO `city` VALUES ('447', '152223', '扎赉特旗');
INSERT INTO `city` VALUES ('448', '152224', '突泉县');
INSERT INTO `city` VALUES ('449', '152500', '锡林郭勒盟');
INSERT INTO `city` VALUES ('450', '152501', '二连浩特市');
INSERT INTO `city` VALUES ('451', '152502', '锡林浩特市');
INSERT INTO `city` VALUES ('452', '152522', '阿巴嘎旗');
INSERT INTO `city` VALUES ('453', '152523', '苏尼特左旗');
INSERT INTO `city` VALUES ('454', '152524', '苏尼特右旗');
INSERT INTO `city` VALUES ('455', '152525', '东乌珠穆沁旗');
INSERT INTO `city` VALUES ('456', '152526', '西乌珠穆沁旗');
INSERT INTO `city` VALUES ('457', '152527', '太仆寺旗');
INSERT INTO `city` VALUES ('458', '152528', '镶黄旗');
INSERT INTO `city` VALUES ('459', '152529', '正镶白旗');
INSERT INTO `city` VALUES ('460', '152530', '正蓝旗');
INSERT INTO `city` VALUES ('461', '152531', '多伦县');
INSERT INTO `city` VALUES ('462', '152900', '阿拉善盟');
INSERT INTO `city` VALUES ('463', '152921', '阿拉善左旗');
INSERT INTO `city` VALUES ('464', '152922', '阿拉善右旗');
INSERT INTO `city` VALUES ('465', '152923', '额济纳旗');
INSERT INTO `city` VALUES ('466', '210000', '辽宁省');
INSERT INTO `city` VALUES ('467', '210100', '沈阳市');
INSERT INTO `city` VALUES ('468', '210102', '和平区');
INSERT INTO `city` VALUES ('469', '210103', '沈河区');
INSERT INTO `city` VALUES ('470', '210104', '大东区');
INSERT INTO `city` VALUES ('471', '210105', '皇姑区');
INSERT INTO `city` VALUES ('472', '210106', '铁西区');
INSERT INTO `city` VALUES ('473', '210111', '苏家屯区');
INSERT INTO `city` VALUES ('474', '210112', '东陵区');
INSERT INTO `city` VALUES ('475', '210113', '沈北新区');
INSERT INTO `city` VALUES ('476', '210114', '于洪区');
INSERT INTO `city` VALUES ('477', '210122', '辽中县');
INSERT INTO `city` VALUES ('478', '210123', '康平县');
INSERT INTO `city` VALUES ('479', '210124', '法库县');
INSERT INTO `city` VALUES ('480', '210181', '新民市');
INSERT INTO `city` VALUES ('481', '210200', '大连市');
INSERT INTO `city` VALUES ('482', '210202', '中山区');
INSERT INTO `city` VALUES ('483', '210203', '西岗区');
INSERT INTO `city` VALUES ('484', '210204', '沙河口区');
INSERT INTO `city` VALUES ('485', '210211', '甘井子区');
INSERT INTO `city` VALUES ('486', '210212', '旅顺口区');
INSERT INTO `city` VALUES ('487', '210213', '金州区');
INSERT INTO `city` VALUES ('488', '210224', '长海县');
INSERT INTO `city` VALUES ('489', '210281', '瓦房店市');
INSERT INTO `city` VALUES ('490', '210214', '普兰店区');
INSERT INTO `city` VALUES ('491', '210283', '庄河市');
INSERT INTO `city` VALUES ('492', '210300', '鞍山市');
INSERT INTO `city` VALUES ('493', '210302', '铁东区');
INSERT INTO `city` VALUES ('494', '210303', '铁西区');
INSERT INTO `city` VALUES ('495', '210304', '立山区');
INSERT INTO `city` VALUES ('496', '210311', '千山区');
INSERT INTO `city` VALUES ('497', '210321', '台安县');
INSERT INTO `city` VALUES ('498', '210323', '岫岩满族自治县');
INSERT INTO `city` VALUES ('499', '210381', '海城市');
INSERT INTO `city` VALUES ('500', '210400', '抚顺市');
INSERT INTO `city` VALUES ('501', '210402', '新抚区');
INSERT INTO `city` VALUES ('502', '210403', '东洲区');
INSERT INTO `city` VALUES ('503', '210404', '望花区');
INSERT INTO `city` VALUES ('504', '210411', '顺城区');
INSERT INTO `city` VALUES ('505', '210421', '抚顺县');
INSERT INTO `city` VALUES ('506', '210422', '新宾满族自治县');
INSERT INTO `city` VALUES ('507', '210423', '清原满族自治县');
INSERT INTO `city` VALUES ('508', '210500', '本溪市');
INSERT INTO `city` VALUES ('509', '210502', '平山区');
INSERT INTO `city` VALUES ('510', '210503', '溪湖区');
INSERT INTO `city` VALUES ('511', '210504', '明山区');
INSERT INTO `city` VALUES ('512', '210505', '南芬区');
INSERT INTO `city` VALUES ('513', '210521', '本溪满族自治县');
INSERT INTO `city` VALUES ('514', '210522', '桓仁满族自治县');
INSERT INTO `city` VALUES ('515', '210600', '丹东市');
INSERT INTO `city` VALUES ('516', '210602', '元宝区');
INSERT INTO `city` VALUES ('517', '210603', '振兴区');
INSERT INTO `city` VALUES ('518', '210604', '振安区');
INSERT INTO `city` VALUES ('519', '210624', '宽甸满族自治县');
INSERT INTO `city` VALUES ('520', '210681', '东港市');
INSERT INTO `city` VALUES ('521', '210682', '凤城市');
INSERT INTO `city` VALUES ('522', '210700', '锦州市');
INSERT INTO `city` VALUES ('523', '210702', '古塔区');
INSERT INTO `city` VALUES ('524', '210703', '凌河区');
INSERT INTO `city` VALUES ('525', '210711', '太和区');
INSERT INTO `city` VALUES ('526', '210726', '黑山县');
INSERT INTO `city` VALUES ('527', '210727', '义县');
INSERT INTO `city` VALUES ('528', '210781', '凌海市');
INSERT INTO `city` VALUES ('529', '210782', '北镇市');
INSERT INTO `city` VALUES ('530', '210800', '营口市');
INSERT INTO `city` VALUES ('531', '210802', '站前区');
INSERT INTO `city` VALUES ('532', '210803', '西市区');
INSERT INTO `city` VALUES ('533', '210804', '鲅鱼圈区');
INSERT INTO `city` VALUES ('534', '210811', '老边区');
INSERT INTO `city` VALUES ('535', '210881', '盖州市');
INSERT INTO `city` VALUES ('536', '210882', '大石桥市');
INSERT INTO `city` VALUES ('537', '210900', '阜新市');
INSERT INTO `city` VALUES ('538', '210902', '海州区');
INSERT INTO `city` VALUES ('539', '210903', '新邱区');
INSERT INTO `city` VALUES ('540', '210904', '太平区');
INSERT INTO `city` VALUES ('541', '210905', '清河门区');
INSERT INTO `city` VALUES ('542', '210911', '细河区');
INSERT INTO `city` VALUES ('543', '210921', '阜新蒙古族自治县');
INSERT INTO `city` VALUES ('544', '210922', '彰武县');
INSERT INTO `city` VALUES ('545', '211000', '辽阳市');
INSERT INTO `city` VALUES ('546', '211002', '白塔区');
INSERT INTO `city` VALUES ('547', '211003', '文圣区');
INSERT INTO `city` VALUES ('548', '211004', '宏伟区');
INSERT INTO `city` VALUES ('549', '211005', '弓长岭区');
INSERT INTO `city` VALUES ('550', '211011', '太子河区');
INSERT INTO `city` VALUES ('551', '211021', '辽阳县');
INSERT INTO `city` VALUES ('552', '211081', '灯塔市');
INSERT INTO `city` VALUES ('553', '211100', '盘锦市');
INSERT INTO `city` VALUES ('554', '211102', '双台子区');
INSERT INTO `city` VALUES ('555', '211103', '兴隆台区');
INSERT INTO `city` VALUES ('556', '211121', '大洼县');
INSERT INTO `city` VALUES ('557', '211122', '盘山县');
INSERT INTO `city` VALUES ('558', '211200', '铁岭市');
INSERT INTO `city` VALUES ('559', '211202', '银州区');
INSERT INTO `city` VALUES ('560', '211204', '清河区');
INSERT INTO `city` VALUES ('561', '211221', '铁岭县');
INSERT INTO `city` VALUES ('562', '211223', '西丰县');
INSERT INTO `city` VALUES ('563', '211224', '昌图县');
INSERT INTO `city` VALUES ('564', '211281', '调兵山市');
INSERT INTO `city` VALUES ('565', '211282', '开原市');
INSERT INTO `city` VALUES ('566', '211300', '朝阳市');
INSERT INTO `city` VALUES ('567', '211302', '双塔区');
INSERT INTO `city` VALUES ('568', '211303', '龙城区');
INSERT INTO `city` VALUES ('569', '211321', '朝阳县');
INSERT INTO `city` VALUES ('570', '211322', '建平县');
INSERT INTO `city` VALUES ('571', '211324', '喀喇沁左翼蒙古族自治县');
INSERT INTO `city` VALUES ('572', '211381', '北票市');
INSERT INTO `city` VALUES ('573', '211382', '凌源市');
INSERT INTO `city` VALUES ('574', '211400', '葫芦岛市');
INSERT INTO `city` VALUES ('575', '211402', '连山区');
INSERT INTO `city` VALUES ('576', '211403', '龙港区');
INSERT INTO `city` VALUES ('577', '211404', '南票区');
INSERT INTO `city` VALUES ('578', '211421', '绥中县');
INSERT INTO `city` VALUES ('579', '211422', '建昌县');
INSERT INTO `city` VALUES ('580', '211481', '兴城市');
INSERT INTO `city` VALUES ('581', '220000', '吉林省');
INSERT INTO `city` VALUES ('582', '220100', '长春市');
INSERT INTO `city` VALUES ('583', '220102', '南关区');
INSERT INTO `city` VALUES ('584', '220103', '宽城区');
INSERT INTO `city` VALUES ('585', '220104', '朝阳区');
INSERT INTO `city` VALUES ('586', '220105', '二道区');
INSERT INTO `city` VALUES ('587', '220106', '绿园区');
INSERT INTO `city` VALUES ('588', '220112', '双阳区');
INSERT INTO `city` VALUES ('589', '220113', '九台区');
INSERT INTO `city` VALUES ('590', '220122', '农安县');
INSERT INTO `city` VALUES ('591', '220182', '榆树市');
INSERT INTO `city` VALUES ('592', '220183', '德惠市');
INSERT INTO `city` VALUES ('593', '220200', '吉林市');
INSERT INTO `city` VALUES ('594', '220202', '昌邑区');
INSERT INTO `city` VALUES ('595', '220203', '龙潭区');
INSERT INTO `city` VALUES ('596', '220204', '船营区');
INSERT INTO `city` VALUES ('597', '220211', '丰满区');
INSERT INTO `city` VALUES ('598', '220221', '永吉县');
INSERT INTO `city` VALUES ('599', '220281', '蛟河市');
INSERT INTO `city` VALUES ('600', '220282', '桦甸市');
INSERT INTO `city` VALUES ('601', '220283', '舒兰市');
INSERT INTO `city` VALUES ('602', '220284', '磐石市');
INSERT INTO `city` VALUES ('603', '220300', '四平市');
INSERT INTO `city` VALUES ('604', '220302', '铁西区');
INSERT INTO `city` VALUES ('605', '220303', '铁东区');
INSERT INTO `city` VALUES ('606', '220322', '梨树县');
INSERT INTO `city` VALUES ('607', '220323', '伊通满族自治县');
INSERT INTO `city` VALUES ('608', '220381', '公主岭市');
INSERT INTO `city` VALUES ('609', '220382', '双辽市');
INSERT INTO `city` VALUES ('610', '220400', '辽源市');
INSERT INTO `city` VALUES ('611', '220402', '龙山区');
INSERT INTO `city` VALUES ('612', '220403', '西安区');
INSERT INTO `city` VALUES ('613', '220421', '东丰县');
INSERT INTO `city` VALUES ('614', '220422', '东辽县');
INSERT INTO `city` VALUES ('615', '220500', '通化市');
INSERT INTO `city` VALUES ('616', '220502', '东昌区');
INSERT INTO `city` VALUES ('617', '220503', '二道江区');
INSERT INTO `city` VALUES ('618', '220521', '通化县');
INSERT INTO `city` VALUES ('619', '220523', '辉南县');
INSERT INTO `city` VALUES ('620', '220524', '柳河县');
INSERT INTO `city` VALUES ('621', '220581', '梅河口市');
INSERT INTO `city` VALUES ('622', '220582', '集安市');
INSERT INTO `city` VALUES ('623', '220600', '白山市');
INSERT INTO `city` VALUES ('624', '220602', '浑江区');
INSERT INTO `city` VALUES ('625', '220605', '江源区');
INSERT INTO `city` VALUES ('626', '220621', '抚松县');
INSERT INTO `city` VALUES ('627', '220622', '靖宇县');
INSERT INTO `city` VALUES ('628', '220623', '长白朝鲜族自治县');
INSERT INTO `city` VALUES ('629', '220681', '临江市');
INSERT INTO `city` VALUES ('630', '220700', '松原市');
INSERT INTO `city` VALUES ('631', '220702', '宁江区');
INSERT INTO `city` VALUES ('632', '220721', '前郭尔罗斯蒙古族自治县');
INSERT INTO `city` VALUES ('633', '220722', '长岭县');
INSERT INTO `city` VALUES ('634', '220723', '乾安县');
INSERT INTO `city` VALUES ('635', '220781', '扶余市');
INSERT INTO `city` VALUES ('636', '220800', '白城市');
INSERT INTO `city` VALUES ('637', '220802', '洮北区');
INSERT INTO `city` VALUES ('638', '220821', '镇赉县');
INSERT INTO `city` VALUES ('639', '220822', '通榆县');
INSERT INTO `city` VALUES ('640', '220881', '洮南市');
INSERT INTO `city` VALUES ('641', '220882', '大安市');
INSERT INTO `city` VALUES ('642', '222400', '延边朝鲜族自治州');
INSERT INTO `city` VALUES ('643', '222401', '延吉市');
INSERT INTO `city` VALUES ('644', '222402', '图们市');
INSERT INTO `city` VALUES ('645', '222403', '敦化市');
INSERT INTO `city` VALUES ('646', '222404', '珲春市');
INSERT INTO `city` VALUES ('647', '222405', '龙井市');
INSERT INTO `city` VALUES ('648', '222406', '和龙市');
INSERT INTO `city` VALUES ('649', '222424', '汪清县');
INSERT INTO `city` VALUES ('650', '222426', '安图县');
INSERT INTO `city` VALUES ('651', '230000', '黑龙江省');
INSERT INTO `city` VALUES ('652', '230100', '哈尔滨市');
INSERT INTO `city` VALUES ('653', '230102', '道里区');
INSERT INTO `city` VALUES ('654', '230103', '南岗区');
INSERT INTO `city` VALUES ('655', '230104', '道外区');
INSERT INTO `city` VALUES ('656', '230108', '平房区');
INSERT INTO `city` VALUES ('657', '230109', '松北区');
INSERT INTO `city` VALUES ('658', '230110', '香坊区');
INSERT INTO `city` VALUES ('659', '230111', '呼兰区');
INSERT INTO `city` VALUES ('660', '230112', '阿城区');
INSERT INTO `city` VALUES ('661', '230113', '双城区');
INSERT INTO `city` VALUES ('662', '230123', '依兰县');
INSERT INTO `city` VALUES ('663', '230124', '方正县');
INSERT INTO `city` VALUES ('664', '230125', '宾县');
INSERT INTO `city` VALUES ('665', '230126', '巴彦县');
INSERT INTO `city` VALUES ('666', '230127', '木兰县');
INSERT INTO `city` VALUES ('667', '230128', '通河县');
INSERT INTO `city` VALUES ('668', '230129', '延寿县');
INSERT INTO `city` VALUES ('669', '230183', '尚志市');
INSERT INTO `city` VALUES ('670', '230184', '五常市');
INSERT INTO `city` VALUES ('671', '230200', '齐齐哈尔市');
INSERT INTO `city` VALUES ('672', '230202', '龙沙区');
INSERT INTO `city` VALUES ('673', '230203', '建华区');
INSERT INTO `city` VALUES ('674', '230204', '铁锋区');
INSERT INTO `city` VALUES ('675', '230205', '昂昂溪区');
INSERT INTO `city` VALUES ('676', '230206', '富拉尔基区');
INSERT INTO `city` VALUES ('677', '230207', '碾子山区');
INSERT INTO `city` VALUES ('678', '230208', '梅里斯达斡尔族区');
INSERT INTO `city` VALUES ('679', '230221', '龙江县');
INSERT INTO `city` VALUES ('680', '230223', '依安县');
INSERT INTO `city` VALUES ('681', '230224', '泰来县');
INSERT INTO `city` VALUES ('682', '230225', '甘南县');
INSERT INTO `city` VALUES ('683', '230227', '富裕县');
INSERT INTO `city` VALUES ('684', '230229', '克山县');
INSERT INTO `city` VALUES ('685', '230230', '克东县');
INSERT INTO `city` VALUES ('686', '230231', '拜泉县');
INSERT INTO `city` VALUES ('687', '230281', '讷河市');
INSERT INTO `city` VALUES ('688', '230300', '鸡西市');
INSERT INTO `city` VALUES ('689', '230302', '鸡冠区');
INSERT INTO `city` VALUES ('690', '230303', '恒山区');
INSERT INTO `city` VALUES ('691', '230304', '滴道区');
INSERT INTO `city` VALUES ('692', '230305', '梨树区');
INSERT INTO `city` VALUES ('693', '230306', '城子河区');
INSERT INTO `city` VALUES ('694', '230307', '麻山区');
INSERT INTO `city` VALUES ('695', '230321', '鸡东县');
INSERT INTO `city` VALUES ('696', '230381', '虎林市');
INSERT INTO `city` VALUES ('697', '230382', '密山市');
INSERT INTO `city` VALUES ('698', '230400', '鹤岗市');
INSERT INTO `city` VALUES ('699', '230402', '向阳区');
INSERT INTO `city` VALUES ('700', '230403', '工农区');
INSERT INTO `city` VALUES ('701', '230404', '南山区');
INSERT INTO `city` VALUES ('702', '230405', '兴安区');
INSERT INTO `city` VALUES ('703', '230406', '东山区');
INSERT INTO `city` VALUES ('704', '230407', '兴山区');
INSERT INTO `city` VALUES ('705', '230421', '萝北县');
INSERT INTO `city` VALUES ('706', '230422', '绥滨县');
INSERT INTO `city` VALUES ('707', '230500', '双鸭山市');
INSERT INTO `city` VALUES ('708', '230502', '尖山区');
INSERT INTO `city` VALUES ('709', '230503', '岭东区');
INSERT INTO `city` VALUES ('710', '230505', '四方台区');
INSERT INTO `city` VALUES ('711', '230506', '宝山区');
INSERT INTO `city` VALUES ('712', '230521', '集贤县');
INSERT INTO `city` VALUES ('713', '230522', '友谊县');
INSERT INTO `city` VALUES ('714', '230523', '宝清县');
INSERT INTO `city` VALUES ('715', '230524', '饶河县');
INSERT INTO `city` VALUES ('716', '230600', '大庆市');
INSERT INTO `city` VALUES ('717', '230602', '萨尔图区');
INSERT INTO `city` VALUES ('718', '230603', '龙凤区');
INSERT INTO `city` VALUES ('719', '230604', '让胡路区');
INSERT INTO `city` VALUES ('720', '230605', '红岗区');
INSERT INTO `city` VALUES ('721', '230606', '大同区');
INSERT INTO `city` VALUES ('722', '230621', '肇州县');
INSERT INTO `city` VALUES ('723', '230622', '肇源县');
INSERT INTO `city` VALUES ('724', '230623', '林甸县');
INSERT INTO `city` VALUES ('725', '230624', '杜尔伯特蒙古族自治县');
INSERT INTO `city` VALUES ('726', '230700', '伊春市');
INSERT INTO `city` VALUES ('727', '230702', '伊春区');
INSERT INTO `city` VALUES ('728', '230703', '南岔区');
INSERT INTO `city` VALUES ('729', '230704', '友好区');
INSERT INTO `city` VALUES ('730', '230705', '西林区');
INSERT INTO `city` VALUES ('731', '230706', '翠峦区');
INSERT INTO `city` VALUES ('732', '230707', '新青区');
INSERT INTO `city` VALUES ('733', '230708', '美溪区');
INSERT INTO `city` VALUES ('734', '230709', '金山屯区');
INSERT INTO `city` VALUES ('735', '230710', '五营区');
INSERT INTO `city` VALUES ('736', '230711', '乌马河区');
INSERT INTO `city` VALUES ('737', '230712', '汤旺河区');
INSERT INTO `city` VALUES ('738', '230713', '带岭区');
INSERT INTO `city` VALUES ('739', '230714', '乌伊岭区');
INSERT INTO `city` VALUES ('740', '230715', '红星区');
INSERT INTO `city` VALUES ('741', '230716', '上甘岭区');
INSERT INTO `city` VALUES ('742', '230722', '嘉荫县');
INSERT INTO `city` VALUES ('743', '230781', '铁力市');
INSERT INTO `city` VALUES ('744', '230800', '佳木斯市');
INSERT INTO `city` VALUES ('745', '230803', '向阳区');
INSERT INTO `city` VALUES ('746', '230804', '前进区');
INSERT INTO `city` VALUES ('747', '230805', '东风区');
INSERT INTO `city` VALUES ('748', '230811', '郊区');
INSERT INTO `city` VALUES ('749', '230822', '桦南县');
INSERT INTO `city` VALUES ('750', '230826', '桦川县');
INSERT INTO `city` VALUES ('751', '230828', '汤原县');
INSERT INTO `city` VALUES ('752', '230833', '抚远县');
INSERT INTO `city` VALUES ('753', '230881', '同江市');
INSERT INTO `city` VALUES ('754', '230882', '富锦市');
INSERT INTO `city` VALUES ('755', '230900', '七台河市');
INSERT INTO `city` VALUES ('756', '230902', '新兴区');
INSERT INTO `city` VALUES ('757', '230903', '桃山区');
INSERT INTO `city` VALUES ('758', '230904', '茄子河区');
INSERT INTO `city` VALUES ('759', '230921', '勃利县');
INSERT INTO `city` VALUES ('760', '231000', '牡丹江市');
INSERT INTO `city` VALUES ('761', '231002', '东安区');
INSERT INTO `city` VALUES ('762', '231003', '阳明区');
INSERT INTO `city` VALUES ('763', '231004', '爱民区');
INSERT INTO `city` VALUES ('764', '231005', '西安区');
INSERT INTO `city` VALUES ('765', '231025', '林口县');
INSERT INTO `city` VALUES ('766', '231081', '绥芬河市');
INSERT INTO `city` VALUES ('767', '231083', '海林市');
INSERT INTO `city` VALUES ('768', '231084', '宁安市');
INSERT INTO `city` VALUES ('769', '231085', '穆棱市');
INSERT INTO `city` VALUES ('770', '231086', '东宁市');
INSERT INTO `city` VALUES ('771', '231100', '黑河市');
INSERT INTO `city` VALUES ('772', '231102', '爱辉区');
INSERT INTO `city` VALUES ('773', '231121', '嫩江县');
INSERT INTO `city` VALUES ('774', '231123', '逊克县');
INSERT INTO `city` VALUES ('775', '231124', '孙吴县');
INSERT INTO `city` VALUES ('776', '231181', '北安市');
INSERT INTO `city` VALUES ('777', '231182', '五大连池市');
INSERT INTO `city` VALUES ('778', '231200', '绥化市');
INSERT INTO `city` VALUES ('779', '231202', '北林区');
INSERT INTO `city` VALUES ('780', '231221', '望奎县');
INSERT INTO `city` VALUES ('781', '231222', '兰西县');
INSERT INTO `city` VALUES ('782', '231223', '青冈县');
INSERT INTO `city` VALUES ('783', '231224', '庆安县');
INSERT INTO `city` VALUES ('784', '231225', '明水县');
INSERT INTO `city` VALUES ('785', '231226', '绥棱县');
INSERT INTO `city` VALUES ('786', '231281', '安达市');
INSERT INTO `city` VALUES ('787', '231282', '肇东市');
INSERT INTO `city` VALUES ('788', '231283', '海伦市');
INSERT INTO `city` VALUES ('789', '232700', '大兴安岭地区');
INSERT INTO `city` VALUES ('790', '232721', '呼玛县');
INSERT INTO `city` VALUES ('791', '232722', '塔河县');
INSERT INTO `city` VALUES ('792', '232723', '漠河县');
INSERT INTO `city` VALUES ('793', '310000', '上海市');
INSERT INTO `city` VALUES ('794', '310101', '黄浦区');
INSERT INTO `city` VALUES ('795', '310104', '徐汇区');
INSERT INTO `city` VALUES ('796', '310105', '长宁区');
INSERT INTO `city` VALUES ('797', '310106', '静安区');
INSERT INTO `city` VALUES ('798', '310107', '普陀区');
INSERT INTO `city` VALUES ('799', '310109', '虹口区');
INSERT INTO `city` VALUES ('800', '310110', '杨浦区');
INSERT INTO `city` VALUES ('801', '310112', '闵行区');
INSERT INTO `city` VALUES ('802', '310113', '宝山区');
INSERT INTO `city` VALUES ('803', '310114', '嘉定区');
INSERT INTO `city` VALUES ('804', '310115', '浦东新区');
INSERT INTO `city` VALUES ('805', '310116', '金山区');
INSERT INTO `city` VALUES ('806', '310117', '松江区');
INSERT INTO `city` VALUES ('807', '310118', '青浦区');
INSERT INTO `city` VALUES ('808', '310120', '奉贤区');
INSERT INTO `city` VALUES ('809', '310230', '崇明县');
INSERT INTO `city` VALUES ('810', '320000', '江苏省');
INSERT INTO `city` VALUES ('811', '320100', '南京市');
INSERT INTO `city` VALUES ('812', '320102', '玄武区');
INSERT INTO `city` VALUES ('813', '320104', '秦淮区');
INSERT INTO `city` VALUES ('814', '320105', '建邺区');
INSERT INTO `city` VALUES ('815', '320106', '鼓楼区');
INSERT INTO `city` VALUES ('816', '320111', '浦口区');
INSERT INTO `city` VALUES ('817', '320113', '栖霞区');
INSERT INTO `city` VALUES ('818', '320114', '雨花台区');
INSERT INTO `city` VALUES ('819', '320115', '江宁区');
INSERT INTO `city` VALUES ('820', '320116', '六合区');
INSERT INTO `city` VALUES ('821', '320117', '溧水区');
INSERT INTO `city` VALUES ('822', '320118', '高淳区');
INSERT INTO `city` VALUES ('823', '320200', '无锡市');
INSERT INTO `city` VALUES ('824', '320205', '锡山区');
INSERT INTO `city` VALUES ('825', '320206', '惠山区');
INSERT INTO `city` VALUES ('826', '320211', '滨湖区');
INSERT INTO `city` VALUES ('827', '320213', '梁溪区');
INSERT INTO `city` VALUES ('828', '320214', '新吴区');
INSERT INTO `city` VALUES ('829', '320281', '江阴市');
INSERT INTO `city` VALUES ('830', '320282', '宜兴市');
INSERT INTO `city` VALUES ('831', '320300', '徐州市');
INSERT INTO `city` VALUES ('832', '320302', '鼓楼区');
INSERT INTO `city` VALUES ('833', '320303', '云龙区');
INSERT INTO `city` VALUES ('834', '320305', '贾汪区');
INSERT INTO `city` VALUES ('835', '320311', '泉山区');
INSERT INTO `city` VALUES ('836', '320312', '铜山区');
INSERT INTO `city` VALUES ('837', '320321', '丰县');
INSERT INTO `city` VALUES ('838', '320322', '沛县');
INSERT INTO `city` VALUES ('839', '320324', '睢宁县');
INSERT INTO `city` VALUES ('840', '320381', '新沂市');
INSERT INTO `city` VALUES ('841', '320382', '邳州市');
INSERT INTO `city` VALUES ('842', '320400', '常州市');
INSERT INTO `city` VALUES ('843', '320402', '天宁区');
INSERT INTO `city` VALUES ('844', '320404', '钟楼区');
INSERT INTO `city` VALUES ('845', '320411', '新北区');
INSERT INTO `city` VALUES ('846', '320412', '武进区');
INSERT INTO `city` VALUES ('847', '320413', '金坛区');
INSERT INTO `city` VALUES ('848', '320481', '溧阳市');
INSERT INTO `city` VALUES ('849', '320500', '苏州市');
INSERT INTO `city` VALUES ('850', '320505', '虎丘区');
INSERT INTO `city` VALUES ('851', '320506', '吴中区');
INSERT INTO `city` VALUES ('852', '320507', '相城区');
INSERT INTO `city` VALUES ('853', '320508', '姑苏区');
INSERT INTO `city` VALUES ('854', '320509', '吴江区');
INSERT INTO `city` VALUES ('855', '320581', '常熟市');
INSERT INTO `city` VALUES ('856', '320582', '张家港市');
INSERT INTO `city` VALUES ('857', '320583', '昆山市');
INSERT INTO `city` VALUES ('858', '320585', '太仓市');
INSERT INTO `city` VALUES ('859', '320600', '南通市');
INSERT INTO `city` VALUES ('860', '320602', '崇川区');
INSERT INTO `city` VALUES ('861', '320611', '港闸区');
INSERT INTO `city` VALUES ('862', '320612', '通州区');
INSERT INTO `city` VALUES ('863', '320621', '海安县');
INSERT INTO `city` VALUES ('864', '320623', '如东县');
INSERT INTO `city` VALUES ('865', '320681', '启东市');
INSERT INTO `city` VALUES ('866', '320682', '如皋市');
INSERT INTO `city` VALUES ('867', '320684', '海门市');
INSERT INTO `city` VALUES ('868', '320700', '连云港市');
INSERT INTO `city` VALUES ('869', '320703', '连云区');
INSERT INTO `city` VALUES ('870', '320706', '海州区');
INSERT INTO `city` VALUES ('871', '320707', '赣榆区');
INSERT INTO `city` VALUES ('872', '320722', '东海县');
INSERT INTO `city` VALUES ('873', '320723', '灌云县');
INSERT INTO `city` VALUES ('874', '320724', '灌南县');
INSERT INTO `city` VALUES ('875', '320800', '淮安市');
INSERT INTO `city` VALUES ('876', '320802', '清河区');
INSERT INTO `city` VALUES ('877', '320803', '淮安区');
INSERT INTO `city` VALUES ('878', '320804', '淮阴区');
INSERT INTO `city` VALUES ('879', '320811', '清浦区');
INSERT INTO `city` VALUES ('880', '320826', '涟水县');
INSERT INTO `city` VALUES ('881', '320829', '洪泽县');
INSERT INTO `city` VALUES ('882', '320830', '盱眙县');
INSERT INTO `city` VALUES ('883', '320831', '金湖县');
INSERT INTO `city` VALUES ('884', '320900', '盐城市');
INSERT INTO `city` VALUES ('885', '320902', '亭湖区');
INSERT INTO `city` VALUES ('886', '320903', '盐都区');
INSERT INTO `city` VALUES ('887', '320904', '大丰区');
INSERT INTO `city` VALUES ('888', '320921', '响水县');
INSERT INTO `city` VALUES ('889', '320922', '滨海县');
INSERT INTO `city` VALUES ('890', '320923', '阜宁县');
INSERT INTO `city` VALUES ('891', '320924', '射阳县');
INSERT INTO `city` VALUES ('892', '320925', '建湖县');
INSERT INTO `city` VALUES ('893', '320981', '东台市');
INSERT INTO `city` VALUES ('894', '321000', '扬州市');
INSERT INTO `city` VALUES ('895', '321002', '广陵区');
INSERT INTO `city` VALUES ('896', '321003', '邗江区');
INSERT INTO `city` VALUES ('897', '321012', '江都区');
INSERT INTO `city` VALUES ('898', '321023', '宝应县');
INSERT INTO `city` VALUES ('899', '321081', '仪征市');
INSERT INTO `city` VALUES ('900', '321084', '高邮市');
INSERT INTO `city` VALUES ('901', '321100', '镇江市');
INSERT INTO `city` VALUES ('902', '321102', '京口区');
INSERT INTO `city` VALUES ('903', '321111', '润州区');
INSERT INTO `city` VALUES ('904', '321112', '丹徒区');
INSERT INTO `city` VALUES ('905', '321181', '丹阳市');
INSERT INTO `city` VALUES ('906', '321182', '扬中市');
INSERT INTO `city` VALUES ('907', '321183', '句容市');
INSERT INTO `city` VALUES ('908', '321200', '泰州市');
INSERT INTO `city` VALUES ('909', '321202', '海陵区');
INSERT INTO `city` VALUES ('910', '321203', '高港区');
INSERT INTO `city` VALUES ('911', '321204', '姜堰区');
INSERT INTO `city` VALUES ('912', '321281', '兴化市');
INSERT INTO `city` VALUES ('913', '321282', '靖江市');
INSERT INTO `city` VALUES ('914', '321283', '泰兴市');
INSERT INTO `city` VALUES ('915', '321300', '宿迁市');
INSERT INTO `city` VALUES ('916', '321302', '宿城区');
INSERT INTO `city` VALUES ('917', '321311', '宿豫区');
INSERT INTO `city` VALUES ('918', '321322', '沭阳县');
INSERT INTO `city` VALUES ('919', '321323', '泗阳县');
INSERT INTO `city` VALUES ('920', '321324', '泗洪县');
INSERT INTO `city` VALUES ('921', '330000', '浙江省');
INSERT INTO `city` VALUES ('922', '330100', '杭州市');
INSERT INTO `city` VALUES ('923', '330102', '上城区');
INSERT INTO `city` VALUES ('924', '330103', '下城区');
INSERT INTO `city` VALUES ('925', '330104', '江干区');
INSERT INTO `city` VALUES ('926', '330105', '拱墅区');
INSERT INTO `city` VALUES ('927', '330106', '西湖区');
INSERT INTO `city` VALUES ('928', '330108', '滨江区');
INSERT INTO `city` VALUES ('929', '330109', '萧山区');
INSERT INTO `city` VALUES ('930', '330110', '余杭区');
INSERT INTO `city` VALUES ('931', '330111', '富阳区');
INSERT INTO `city` VALUES ('932', '330122', '桐庐县');
INSERT INTO `city` VALUES ('933', '330127', '淳安县');
INSERT INTO `city` VALUES ('934', '330182', '建德市');
INSERT INTO `city` VALUES ('935', '330185', '临安市');
INSERT INTO `city` VALUES ('936', '330200', '宁波市');
INSERT INTO `city` VALUES ('937', '330203', '海曙区');
INSERT INTO `city` VALUES ('938', '330204', '江东区');
INSERT INTO `city` VALUES ('939', '330205', '江北区');
INSERT INTO `city` VALUES ('940', '330206', '北仑区');
INSERT INTO `city` VALUES ('941', '330211', '镇海区');
INSERT INTO `city` VALUES ('942', '330212', '鄞州区');
INSERT INTO `city` VALUES ('943', '330225', '象山县');
INSERT INTO `city` VALUES ('944', '330226', '宁海县');
INSERT INTO `city` VALUES ('945', '330281', '余姚市');
INSERT INTO `city` VALUES ('946', '330282', '慈溪市');
INSERT INTO `city` VALUES ('947', '330283', '奉化市');
INSERT INTO `city` VALUES ('948', '330300', '温州市');
INSERT INTO `city` VALUES ('949', '330302', '鹿城区');
INSERT INTO `city` VALUES ('950', '330303', '龙湾区');
INSERT INTO `city` VALUES ('951', '330304', '瓯海区');
INSERT INTO `city` VALUES ('952', '330305', '洞头区');
INSERT INTO `city` VALUES ('953', '330324', '永嘉县');
INSERT INTO `city` VALUES ('954', '330326', '平阳县');
INSERT INTO `city` VALUES ('955', '330327', '苍南县');
INSERT INTO `city` VALUES ('956', '330328', '文成县');
INSERT INTO `city` VALUES ('957', '330329', '泰顺县');
INSERT INTO `city` VALUES ('958', '330381', '瑞安市');
INSERT INTO `city` VALUES ('959', '330382', '乐清市');
INSERT INTO `city` VALUES ('960', '330400', '嘉兴市');
INSERT INTO `city` VALUES ('961', '330402', '南湖区');
INSERT INTO `city` VALUES ('962', '330411', '秀洲区');
INSERT INTO `city` VALUES ('963', '330421', '嘉善县');
INSERT INTO `city` VALUES ('964', '330424', '海盐县');
INSERT INTO `city` VALUES ('965', '330481', '海宁市');
INSERT INTO `city` VALUES ('966', '330482', '平湖市');
INSERT INTO `city` VALUES ('967', '330483', '桐乡市');
INSERT INTO `city` VALUES ('968', '330500', '湖州市');
INSERT INTO `city` VALUES ('969', '330502', '吴兴区');
INSERT INTO `city` VALUES ('970', '330503', '南浔区');
INSERT INTO `city` VALUES ('971', '330521', '德清县');
INSERT INTO `city` VALUES ('972', '330522', '长兴县');
INSERT INTO `city` VALUES ('973', '330523', '安吉县');
INSERT INTO `city` VALUES ('974', '330600', '绍兴市');
INSERT INTO `city` VALUES ('975', '330602', '越城区');
INSERT INTO `city` VALUES ('976', '330603', '柯桥区');
INSERT INTO `city` VALUES ('977', '330604', '上虞区');
INSERT INTO `city` VALUES ('978', '330624', '新昌县');
INSERT INTO `city` VALUES ('979', '330681', '诸暨市');
INSERT INTO `city` VALUES ('980', '330683', '嵊州市');
INSERT INTO `city` VALUES ('981', '330700', '金华市');
INSERT INTO `city` VALUES ('982', '330702', '婺城区');
INSERT INTO `city` VALUES ('983', '330703', '金东区');
INSERT INTO `city` VALUES ('984', '330723', '武义县');
INSERT INTO `city` VALUES ('985', '330726', '浦江县');
INSERT INTO `city` VALUES ('986', '330727', '磐安县');
INSERT INTO `city` VALUES ('987', '330781', '兰溪市');
INSERT INTO `city` VALUES ('988', '330782', '义乌市');
INSERT INTO `city` VALUES ('989', '330783', '东阳市');
INSERT INTO `city` VALUES ('990', '330784', '永康市');
INSERT INTO `city` VALUES ('991', '330800', '衢州市');
INSERT INTO `city` VALUES ('992', '330802', '柯城区');
INSERT INTO `city` VALUES ('993', '330803', '衢江区');
INSERT INTO `city` VALUES ('994', '330822', '常山县');
INSERT INTO `city` VALUES ('995', '330824', '开化县');
INSERT INTO `city` VALUES ('996', '330825', '龙游县');
INSERT INTO `city` VALUES ('997', '330881', '江山市');
INSERT INTO `city` VALUES ('998', '330900', '舟山市');
INSERT INTO `city` VALUES ('999', '330902', '定海区');
INSERT INTO `city` VALUES ('1000', '330903', '普陀区');
INSERT INTO `city` VALUES ('1001', '330921', '岱山县');
INSERT INTO `city` VALUES ('1002', '330922', '嵊泗县');
INSERT INTO `city` VALUES ('1003', '331000', '台州市');
INSERT INTO `city` VALUES ('1004', '331002', '椒江区');
INSERT INTO `city` VALUES ('1005', '331003', '黄岩区');
INSERT INTO `city` VALUES ('1006', '331004', '路桥区');
INSERT INTO `city` VALUES ('1007', '331021', '玉环县');
INSERT INTO `city` VALUES ('1008', '331022', '三门县');
INSERT INTO `city` VALUES ('1009', '331023', '天台县');
INSERT INTO `city` VALUES ('1010', '331024', '仙居县');
INSERT INTO `city` VALUES ('1011', '331081', '温岭市');
INSERT INTO `city` VALUES ('1012', '331082', '临海市');
INSERT INTO `city` VALUES ('1013', '331100', '丽水市');
INSERT INTO `city` VALUES ('1014', '331102', '莲都区');
INSERT INTO `city` VALUES ('1015', '331121', '青田县');
INSERT INTO `city` VALUES ('1016', '331122', '缙云县');
INSERT INTO `city` VALUES ('1017', '331123', '遂昌县');
INSERT INTO `city` VALUES ('1018', '331124', '松阳县');
INSERT INTO `city` VALUES ('1019', '331125', '云和县');
INSERT INTO `city` VALUES ('1020', '331126', '庆元县');
INSERT INTO `city` VALUES ('1021', '331127', '景宁畲族自治县');
INSERT INTO `city` VALUES ('1022', '331181', '龙泉市');
INSERT INTO `city` VALUES ('1023', '340000', '安徽省');
INSERT INTO `city` VALUES ('1024', '340100', '合肥市');
INSERT INTO `city` VALUES ('1025', '340102', '瑶海区');
INSERT INTO `city` VALUES ('1026', '340103', '庐阳区');
INSERT INTO `city` VALUES ('1027', '340104', '蜀山区');
INSERT INTO `city` VALUES ('1028', '340111', '包河区');
INSERT INTO `city` VALUES ('1029', '340121', '长丰县');
INSERT INTO `city` VALUES ('1030', '340122', '肥东县');
INSERT INTO `city` VALUES ('1031', '340123', '肥西县');
INSERT INTO `city` VALUES ('1032', '340124', '庐江县');
INSERT INTO `city` VALUES ('1033', '340181', '巢湖市');
INSERT INTO `city` VALUES ('1034', '340200', '芜湖市');
INSERT INTO `city` VALUES ('1035', '340202', '镜湖区');
INSERT INTO `city` VALUES ('1036', '340203', '弋江区');
INSERT INTO `city` VALUES ('1037', '340207', '鸠江区');
INSERT INTO `city` VALUES ('1038', '340208', '三山区');
INSERT INTO `city` VALUES ('1039', '340221', '芜湖县');
INSERT INTO `city` VALUES ('1040', '340222', '繁昌县');
INSERT INTO `city` VALUES ('1041', '340223', '南陵县');
INSERT INTO `city` VALUES ('1042', '340225', '无为县');
INSERT INTO `city` VALUES ('1043', '340300', '蚌埠市');
INSERT INTO `city` VALUES ('1044', '340302', '龙子湖区');
INSERT INTO `city` VALUES ('1045', '340303', '蚌山区');
INSERT INTO `city` VALUES ('1046', '340304', '禹会区');
INSERT INTO `city` VALUES ('1047', '340311', '淮上区');
INSERT INTO `city` VALUES ('1048', '340321', '怀远县');
INSERT INTO `city` VALUES ('1049', '340322', '五河县');
INSERT INTO `city` VALUES ('1050', '340323', '固镇县');
INSERT INTO `city` VALUES ('1051', '340400', '淮南市');
INSERT INTO `city` VALUES ('1052', '340402', '大通区');
INSERT INTO `city` VALUES ('1053', '340403', '田家庵区');
INSERT INTO `city` VALUES ('1054', '340404', '谢家集区');
INSERT INTO `city` VALUES ('1055', '340405', '八公山区');
INSERT INTO `city` VALUES ('1056', '340406', '潘集区');
INSERT INTO `city` VALUES ('1057', '340421', '凤台县');
INSERT INTO `city` VALUES ('1058', '340422', '寿县');
INSERT INTO `city` VALUES ('1059', '340500', '马鞍山市');
INSERT INTO `city` VALUES ('1060', '340503', '花山区');
INSERT INTO `city` VALUES ('1061', '340504', '雨山区');
INSERT INTO `city` VALUES ('1062', '340506', '博望区');
INSERT INTO `city` VALUES ('1063', '340521', '当涂县');
INSERT INTO `city` VALUES ('1064', '340522', '含山县');
INSERT INTO `city` VALUES ('1065', '340523', '和县');
INSERT INTO `city` VALUES ('1066', '340600', '淮北市');
INSERT INTO `city` VALUES ('1067', '340602', '杜集区');
INSERT INTO `city` VALUES ('1068', '340603', '相山区');
INSERT INTO `city` VALUES ('1069', '340604', '烈山区');
INSERT INTO `city` VALUES ('1070', '340621', '濉溪县');
INSERT INTO `city` VALUES ('1071', '340700', '铜陵市');
INSERT INTO `city` VALUES ('1072', '340705', '铜官区');
INSERT INTO `city` VALUES ('1073', '340706', '义安区');
INSERT INTO `city` VALUES ('1074', '340711', '郊区');
INSERT INTO `city` VALUES ('1075', '340722', '枞阳县');
INSERT INTO `city` VALUES ('1076', '340800', '安庆市');
INSERT INTO `city` VALUES ('1077', '340802', '迎江区');
INSERT INTO `city` VALUES ('1078', '340803', '大观区');
INSERT INTO `city` VALUES ('1079', '340811', '宜秀区');
INSERT INTO `city` VALUES ('1080', '340822', '怀宁县');
INSERT INTO `city` VALUES ('1081', '340824', '潜山县');
INSERT INTO `city` VALUES ('1082', '340825', '太湖县');
INSERT INTO `city` VALUES ('1083', '340826', '宿松县');
INSERT INTO `city` VALUES ('1084', '340827', '望江县');
INSERT INTO `city` VALUES ('1085', '340828', '岳西县');
INSERT INTO `city` VALUES ('1086', '340881', '桐城市');
INSERT INTO `city` VALUES ('1087', '341000', '黄山市');
INSERT INTO `city` VALUES ('1088', '341002', '屯溪区');
INSERT INTO `city` VALUES ('1089', '341003', '黄山区');
INSERT INTO `city` VALUES ('1090', '341004', '徽州区');
INSERT INTO `city` VALUES ('1091', '341021', '歙县');
INSERT INTO `city` VALUES ('1092', '341022', '休宁县');
INSERT INTO `city` VALUES ('1093', '341023', '黟县');
INSERT INTO `city` VALUES ('1094', '341024', '祁门县');
INSERT INTO `city` VALUES ('1095', '341100', '滁州市');
INSERT INTO `city` VALUES ('1096', '341102', '琅琊区');
INSERT INTO `city` VALUES ('1097', '341103', '南谯区');
INSERT INTO `city` VALUES ('1098', '341122', '来安县');
INSERT INTO `city` VALUES ('1099', '341124', '全椒县');
INSERT INTO `city` VALUES ('1100', '341125', '定远县');
INSERT INTO `city` VALUES ('1101', '341126', '凤阳县');
INSERT INTO `city` VALUES ('1102', '341181', '天长市');
INSERT INTO `city` VALUES ('1103', '341182', '明光市');
INSERT INTO `city` VALUES ('1104', '341200', '阜阳市');
INSERT INTO `city` VALUES ('1105', '341202', '颍州区');
INSERT INTO `city` VALUES ('1106', '341203', '颍东区');
INSERT INTO `city` VALUES ('1107', '341204', '颍泉区');
INSERT INTO `city` VALUES ('1108', '341221', '临泉县');
INSERT INTO `city` VALUES ('1109', '341222', '太和县');
INSERT INTO `city` VALUES ('1110', '341225', '阜南县');
INSERT INTO `city` VALUES ('1111', '341226', '颍上县');
INSERT INTO `city` VALUES ('1112', '341282', '界首市');
INSERT INTO `city` VALUES ('1113', '341300', '宿州市');
INSERT INTO `city` VALUES ('1114', '341302', '埇桥区');
INSERT INTO `city` VALUES ('1115', '341321', '砀山县');
INSERT INTO `city` VALUES ('1116', '341322', '萧县');
INSERT INTO `city` VALUES ('1117', '341323', '灵璧县');
INSERT INTO `city` VALUES ('1118', '341324', '泗县');
INSERT INTO `city` VALUES ('1119', '341500', '六安市');
INSERT INTO `city` VALUES ('1120', '341502', '金安区');
INSERT INTO `city` VALUES ('1121', '341503', '裕安区');
INSERT INTO `city` VALUES ('1122', '341504', '叶集区');
INSERT INTO `city` VALUES ('1123', '341522', '霍邱县');
INSERT INTO `city` VALUES ('1124', '341523', '舒城县');
INSERT INTO `city` VALUES ('1125', '341524', '金寨县');
INSERT INTO `city` VALUES ('1126', '341525', '霍山县');
INSERT INTO `city` VALUES ('1127', '341600', '亳州市');
INSERT INTO `city` VALUES ('1128', '341602', '谯城区');
INSERT INTO `city` VALUES ('1129', '341621', '涡阳县');
INSERT INTO `city` VALUES ('1130', '341622', '蒙城县');
INSERT INTO `city` VALUES ('1131', '341623', '利辛县');
INSERT INTO `city` VALUES ('1132', '341700', '池州市');
INSERT INTO `city` VALUES ('1133', '341702', '贵池区');
INSERT INTO `city` VALUES ('1134', '341721', '东至县');
INSERT INTO `city` VALUES ('1135', '341722', '石台县');
INSERT INTO `city` VALUES ('1136', '341723', '青阳县');
INSERT INTO `city` VALUES ('1137', '341800', '宣城市');
INSERT INTO `city` VALUES ('1138', '341802', '宣州区');
INSERT INTO `city` VALUES ('1139', '341821', '郎溪县');
INSERT INTO `city` VALUES ('1140', '341822', '广德县');
INSERT INTO `city` VALUES ('1141', '341823', '泾县');
INSERT INTO `city` VALUES ('1142', '341824', '绩溪县');
INSERT INTO `city` VALUES ('1143', '341825', '旌德县');
INSERT INTO `city` VALUES ('1144', '341881', '宁国市');
INSERT INTO `city` VALUES ('1145', '350000', '福建省');
INSERT INTO `city` VALUES ('1146', '350100', '福州市');
INSERT INTO `city` VALUES ('1147', '350102', '鼓楼区');
INSERT INTO `city` VALUES ('1148', '350103', '台江区');
INSERT INTO `city` VALUES ('1149', '350104', '仓山区');
INSERT INTO `city` VALUES ('1150', '350105', '马尾区');
INSERT INTO `city` VALUES ('1151', '350111', '晋安区');
INSERT INTO `city` VALUES ('1152', '350121', '闽侯县');
INSERT INTO `city` VALUES ('1153', '350122', '连江县');
INSERT INTO `city` VALUES ('1154', '350123', '罗源县');
INSERT INTO `city` VALUES ('1155', '350124', '闽清县');
INSERT INTO `city` VALUES ('1156', '350125', '永泰县');
INSERT INTO `city` VALUES ('1157', '350128', '平潭县');
INSERT INTO `city` VALUES ('1158', '350181', '福清市');
INSERT INTO `city` VALUES ('1159', '350182', '长乐市');
INSERT INTO `city` VALUES ('1160', '350200', '厦门市');
INSERT INTO `city` VALUES ('1161', '350203', '思明区');
INSERT INTO `city` VALUES ('1162', '350205', '海沧区');
INSERT INTO `city` VALUES ('1163', '350206', '湖里区');
INSERT INTO `city` VALUES ('1164', '350211', '集美区');
INSERT INTO `city` VALUES ('1165', '350212', '同安区');
INSERT INTO `city` VALUES ('1166', '350213', '翔安区');
INSERT INTO `city` VALUES ('1167', '350300', '莆田市');
INSERT INTO `city` VALUES ('1168', '350302', '城厢区');
INSERT INTO `city` VALUES ('1169', '350303', '涵江区');
INSERT INTO `city` VALUES ('1170', '350304', '荔城区');
INSERT INTO `city` VALUES ('1171', '350305', '秀屿区');
INSERT INTO `city` VALUES ('1172', '350322', '仙游县');
INSERT INTO `city` VALUES ('1173', '350400', '三明市');
INSERT INTO `city` VALUES ('1174', '350402', '梅列区');
INSERT INTO `city` VALUES ('1175', '350403', '三元区');
INSERT INTO `city` VALUES ('1176', '350421', '明溪县');
INSERT INTO `city` VALUES ('1177', '350423', '清流县');
INSERT INTO `city` VALUES ('1178', '350424', '宁化县');
INSERT INTO `city` VALUES ('1179', '350425', '大田县');
INSERT INTO `city` VALUES ('1180', '350426', '尤溪县');
INSERT INTO `city` VALUES ('1181', '350427', '沙县');
INSERT INTO `city` VALUES ('1182', '350428', '将乐县');
INSERT INTO `city` VALUES ('1183', '350429', '泰宁县');
INSERT INTO `city` VALUES ('1184', '350430', '建宁县');
INSERT INTO `city` VALUES ('1185', '350481', '永安市');
INSERT INTO `city` VALUES ('1186', '350500', '泉州市');
INSERT INTO `city` VALUES ('1187', '350502', '鲤城区');
INSERT INTO `city` VALUES ('1188', '350503', '丰泽区');
INSERT INTO `city` VALUES ('1189', '350504', '洛江区');
INSERT INTO `city` VALUES ('1190', '350505', '泉港区');
INSERT INTO `city` VALUES ('1191', '350521', '惠安县');
INSERT INTO `city` VALUES ('1192', '350524', '安溪县');
INSERT INTO `city` VALUES ('1193', '350525', '永春县');
INSERT INTO `city` VALUES ('1194', '350526', '德化县');
INSERT INTO `city` VALUES ('1195', '350527', '金门县');
INSERT INTO `city` VALUES ('1196', '350581', '石狮市');
INSERT INTO `city` VALUES ('1197', '350582', '晋江市');
INSERT INTO `city` VALUES ('1198', '350583', '南安市');
INSERT INTO `city` VALUES ('1199', '350600', '漳州市');
INSERT INTO `city` VALUES ('1200', '350602', '芗城区');
INSERT INTO `city` VALUES ('1201', '350603', '龙文区');
INSERT INTO `city` VALUES ('1202', '350622', '云霄县');
INSERT INTO `city` VALUES ('1203', '350623', '漳浦县');
INSERT INTO `city` VALUES ('1204', '350624', '诏安县');
INSERT INTO `city` VALUES ('1205', '350625', '长泰县');
INSERT INTO `city` VALUES ('1206', '350626', '东山县');
INSERT INTO `city` VALUES ('1207', '350627', '南靖县');
INSERT INTO `city` VALUES ('1208', '350628', '平和县');
INSERT INTO `city` VALUES ('1209', '350629', '华安县');
INSERT INTO `city` VALUES ('1210', '350681', '龙海市');
INSERT INTO `city` VALUES ('1211', '350700', '南平市');
INSERT INTO `city` VALUES ('1212', '350702', '延平区');
INSERT INTO `city` VALUES ('1213', '350703', '建阳区');
INSERT INTO `city` VALUES ('1214', '350721', '顺昌县');
INSERT INTO `city` VALUES ('1215', '350722', '浦城县');
INSERT INTO `city` VALUES ('1216', '350723', '光泽县');
INSERT INTO `city` VALUES ('1217', '350724', '松溪县');
INSERT INTO `city` VALUES ('1218', '350725', '政和县');
INSERT INTO `city` VALUES ('1219', '350781', '邵武市');
INSERT INTO `city` VALUES ('1220', '350782', '武夷山市');
INSERT INTO `city` VALUES ('1221', '350783', '建瓯市');
INSERT INTO `city` VALUES ('1222', '350800', '龙岩市');
INSERT INTO `city` VALUES ('1223', '350802', '新罗区');
INSERT INTO `city` VALUES ('1224', '350803', '永定区');
INSERT INTO `city` VALUES ('1225', '350821', '长汀县');
INSERT INTO `city` VALUES ('1226', '350823', '上杭县');
INSERT INTO `city` VALUES ('1227', '350824', '武平县');
INSERT INTO `city` VALUES ('1228', '350825', '连城县');
INSERT INTO `city` VALUES ('1229', '350881', '漳平市');
INSERT INTO `city` VALUES ('1230', '350900', '宁德市');
INSERT INTO `city` VALUES ('1231', '350902', '蕉城区');
INSERT INTO `city` VALUES ('1232', '350921', '霞浦县');
INSERT INTO `city` VALUES ('1233', '350922', '古田县');
INSERT INTO `city` VALUES ('1234', '350923', '屏南县');
INSERT INTO `city` VALUES ('1235', '350924', '寿宁县');
INSERT INTO `city` VALUES ('1236', '350925', '周宁县');
INSERT INTO `city` VALUES ('1237', '350926', '柘荣县');
INSERT INTO `city` VALUES ('1238', '350981', '福安市');
INSERT INTO `city` VALUES ('1239', '350982', '福鼎市');
INSERT INTO `city` VALUES ('1240', '360000', '江西省');
INSERT INTO `city` VALUES ('1241', '360100', '南昌市');
INSERT INTO `city` VALUES ('1242', '360102', '东湖区');
INSERT INTO `city` VALUES ('1243', '360103', '西湖区');
INSERT INTO `city` VALUES ('1244', '360104', '青云谱区');
INSERT INTO `city` VALUES ('1245', '360105', '湾里区');
INSERT INTO `city` VALUES ('1246', '360111', '青山湖区');
INSERT INTO `city` VALUES ('1247', '360112', '新建区');
INSERT INTO `city` VALUES ('1248', '360121', '南昌县');
INSERT INTO `city` VALUES ('1249', '360123', '安义县');
INSERT INTO `city` VALUES ('1250', '360124', '进贤县');
INSERT INTO `city` VALUES ('1251', '360200', '景德镇市');
INSERT INTO `city` VALUES ('1252', '360202', '昌江区');
INSERT INTO `city` VALUES ('1253', '360203', '珠山区');
INSERT INTO `city` VALUES ('1254', '360222', '浮梁县');
INSERT INTO `city` VALUES ('1255', '360281', '乐平市');
INSERT INTO `city` VALUES ('1256', '360300', '萍乡市');
INSERT INTO `city` VALUES ('1257', '360302', '安源区');
INSERT INTO `city` VALUES ('1258', '360313', '湘东区');
INSERT INTO `city` VALUES ('1259', '360321', '莲花县');
INSERT INTO `city` VALUES ('1260', '360322', '上栗县');
INSERT INTO `city` VALUES ('1261', '360323', '芦溪县');
INSERT INTO `city` VALUES ('1262', '360400', '九江市');
INSERT INTO `city` VALUES ('1263', '360402', '庐山区');
INSERT INTO `city` VALUES ('1264', '360403', '浔阳区');
INSERT INTO `city` VALUES ('1265', '360421', '九江县');
INSERT INTO `city` VALUES ('1266', '360423', '武宁县');
INSERT INTO `city` VALUES ('1267', '360424', '修水县');
INSERT INTO `city` VALUES ('1268', '360425', '永修县');
INSERT INTO `city` VALUES ('1269', '360426', '德安县');
INSERT INTO `city` VALUES ('1270', '360427', '星子县');
INSERT INTO `city` VALUES ('1271', '360428', '都昌县');
INSERT INTO `city` VALUES ('1272', '360429', '湖口县');
INSERT INTO `city` VALUES ('1273', '360430', '彭泽县');
INSERT INTO `city` VALUES ('1274', '360481', '瑞昌市');
INSERT INTO `city` VALUES ('1275', '360482', '共青城市');
INSERT INTO `city` VALUES ('1276', '360500', '新余市');
INSERT INTO `city` VALUES ('1277', '360502', '渝水区');
INSERT INTO `city` VALUES ('1278', '360521', '分宜县');
INSERT INTO `city` VALUES ('1279', '360600', '鹰潭市');
INSERT INTO `city` VALUES ('1280', '360602', '月湖区');
INSERT INTO `city` VALUES ('1281', '360622', '余江县');
INSERT INTO `city` VALUES ('1282', '360681', '贵溪市');
INSERT INTO `city` VALUES ('1283', '360700', '赣州市');
INSERT INTO `city` VALUES ('1284', '360702', '章贡区');
INSERT INTO `city` VALUES ('1285', '360703', '南康区');
INSERT INTO `city` VALUES ('1286', '360721', '赣县');
INSERT INTO `city` VALUES ('1287', '360722', '信丰县');
INSERT INTO `city` VALUES ('1288', '360723', '大余县');
INSERT INTO `city` VALUES ('1289', '360724', '上犹县');
INSERT INTO `city` VALUES ('1290', '360725', '崇义县');
INSERT INTO `city` VALUES ('1291', '360726', '安远县');
INSERT INTO `city` VALUES ('1292', '360727', '龙南县');
INSERT INTO `city` VALUES ('1293', '360728', '定南县');
INSERT INTO `city` VALUES ('1294', '360729', '全南县');
INSERT INTO `city` VALUES ('1295', '360730', '宁都县');
INSERT INTO `city` VALUES ('1296', '360731', '于都县');
INSERT INTO `city` VALUES ('1297', '360732', '兴国县');
INSERT INTO `city` VALUES ('1298', '360733', '会昌县');
INSERT INTO `city` VALUES ('1299', '360734', '寻乌县');
INSERT INTO `city` VALUES ('1300', '360735', '石城县');
INSERT INTO `city` VALUES ('1301', '360781', '瑞金市');
INSERT INTO `city` VALUES ('1302', '360800', '吉安市');
INSERT INTO `city` VALUES ('1303', '360802', '吉州区');
INSERT INTO `city` VALUES ('1304', '360803', '青原区');
INSERT INTO `city` VALUES ('1305', '360821', '吉安县');
INSERT INTO `city` VALUES ('1306', '360822', '吉水县');
INSERT INTO `city` VALUES ('1307', '360823', '峡江县');
INSERT INTO `city` VALUES ('1308', '360824', '新干县');
INSERT INTO `city` VALUES ('1309', '360825', '永丰县');
INSERT INTO `city` VALUES ('1310', '360826', '泰和县');
INSERT INTO `city` VALUES ('1311', '360827', '遂川县');
INSERT INTO `city` VALUES ('1312', '360828', '万安县');
INSERT INTO `city` VALUES ('1313', '360829', '安福县');
INSERT INTO `city` VALUES ('1314', '360830', '永新县');
INSERT INTO `city` VALUES ('1315', '360881', '井冈山市');
INSERT INTO `city` VALUES ('1316', '360900', '宜春市');
INSERT INTO `city` VALUES ('1317', '360902', '袁州区');
INSERT INTO `city` VALUES ('1318', '360921', '奉新县');
INSERT INTO `city` VALUES ('1319', '360922', '万载县');
INSERT INTO `city` VALUES ('1320', '360923', '上高县');
INSERT INTO `city` VALUES ('1321', '360924', '宜丰县');
INSERT INTO `city` VALUES ('1322', '360925', '靖安县');
INSERT INTO `city` VALUES ('1323', '360926', '铜鼓县');
INSERT INTO `city` VALUES ('1324', '360981', '丰城市');
INSERT INTO `city` VALUES ('1325', '360982', '樟树市');
INSERT INTO `city` VALUES ('1326', '360983', '高安市');
INSERT INTO `city` VALUES ('1327', '361000', '抚州市');
INSERT INTO `city` VALUES ('1328', '361002', '临川区');
INSERT INTO `city` VALUES ('1329', '361021', '南城县');
INSERT INTO `city` VALUES ('1330', '361022', '黎川县');
INSERT INTO `city` VALUES ('1331', '361023', '南丰县');
INSERT INTO `city` VALUES ('1332', '361024', '崇仁县');
INSERT INTO `city` VALUES ('1333', '361025', '乐安县');
INSERT INTO `city` VALUES ('1334', '361026', '宜黄县');
INSERT INTO `city` VALUES ('1335', '361027', '金溪县');
INSERT INTO `city` VALUES ('1336', '361028', '资溪县');
INSERT INTO `city` VALUES ('1337', '361029', '东乡县');
INSERT INTO `city` VALUES ('1338', '361030', '广昌县');
INSERT INTO `city` VALUES ('1339', '361100', '上饶市');
INSERT INTO `city` VALUES ('1340', '361102', '信州区');
INSERT INTO `city` VALUES ('1341', '361121', '上饶县');
INSERT INTO `city` VALUES ('1342', '361103', '广丰区');
INSERT INTO `city` VALUES ('1343', '361123', '玉山县');
INSERT INTO `city` VALUES ('1344', '361124', '铅山县');
INSERT INTO `city` VALUES ('1345', '361125', '横峰县');
INSERT INTO `city` VALUES ('1346', '361126', '弋阳县');
INSERT INTO `city` VALUES ('1347', '361127', '余干县');
INSERT INTO `city` VALUES ('1348', '361128', '鄱阳县');
INSERT INTO `city` VALUES ('1349', '361129', '万年县');
INSERT INTO `city` VALUES ('1350', '361130', '婺源县');
INSERT INTO `city` VALUES ('1351', '361181', '德兴市');
INSERT INTO `city` VALUES ('1352', '370000', '山东省');
INSERT INTO `city` VALUES ('1353', '370100', '济南市');
INSERT INTO `city` VALUES ('1354', '370102', '历下区');
INSERT INTO `city` VALUES ('1355', '370103', '市中区');
INSERT INTO `city` VALUES ('1356', '370104', '槐荫区');
INSERT INTO `city` VALUES ('1357', '370105', '天桥区');
INSERT INTO `city` VALUES ('1358', '370112', '历城区');
INSERT INTO `city` VALUES ('1359', '370113', '长清区');
INSERT INTO `city` VALUES ('1360', '370124', '平阴县');
INSERT INTO `city` VALUES ('1361', '370125', '济阳县');
INSERT INTO `city` VALUES ('1362', '370126', '商河县');
INSERT INTO `city` VALUES ('1363', '370181', '章丘市');
INSERT INTO `city` VALUES ('1364', '370200', '青岛市');
INSERT INTO `city` VALUES ('1365', '370202', '市南区');
INSERT INTO `city` VALUES ('1366', '370203', '市北区');
INSERT INTO `city` VALUES ('1367', '370211', '黄岛区');
INSERT INTO `city` VALUES ('1368', '370212', '崂山区');
INSERT INTO `city` VALUES ('1369', '370213', '李沧区');
INSERT INTO `city` VALUES ('1370', '370214', '城阳区');
INSERT INTO `city` VALUES ('1371', '370281', '胶州市');
INSERT INTO `city` VALUES ('1372', '370282', '即墨市');
INSERT INTO `city` VALUES ('1373', '370283', '平度市');
INSERT INTO `city` VALUES ('1374', '370285', '莱西市');
INSERT INTO `city` VALUES ('1375', '370300', '淄博市');
INSERT INTO `city` VALUES ('1376', '370302', '淄川区');
INSERT INTO `city` VALUES ('1377', '370303', '张店区');
INSERT INTO `city` VALUES ('1378', '370304', '博山区');
INSERT INTO `city` VALUES ('1379', '370305', '临淄区');
INSERT INTO `city` VALUES ('1380', '370306', '周村区');
INSERT INTO `city` VALUES ('1381', '370321', '桓台县');
INSERT INTO `city` VALUES ('1382', '370322', '高青县');
INSERT INTO `city` VALUES ('1383', '370323', '沂源县');
INSERT INTO `city` VALUES ('1384', '370400', '枣庄市');
INSERT INTO `city` VALUES ('1385', '370402', '市中区');
INSERT INTO `city` VALUES ('1386', '370403', '薛城区');
INSERT INTO `city` VALUES ('1387', '370404', '峄城区');
INSERT INTO `city` VALUES ('1388', '370405', '台儿庄区');
INSERT INTO `city` VALUES ('1389', '370406', '山亭区');
INSERT INTO `city` VALUES ('1390', '370481', '滕州市');
INSERT INTO `city` VALUES ('1391', '370500', '东营市');
INSERT INTO `city` VALUES ('1392', '370502', '东营区');
INSERT INTO `city` VALUES ('1393', '370503', '河口区');
INSERT INTO `city` VALUES ('1394', '370521', '垦利县');
INSERT INTO `city` VALUES ('1395', '370522', '利津县');
INSERT INTO `city` VALUES ('1396', '370523', '广饶县');
INSERT INTO `city` VALUES ('1397', '370600', '烟台市');
INSERT INTO `city` VALUES ('1398', '370602', '芝罘区');
INSERT INTO `city` VALUES ('1399', '370611', '福山区');
INSERT INTO `city` VALUES ('1400', '370612', '牟平区');
INSERT INTO `city` VALUES ('1401', '370613', '莱山区');
INSERT INTO `city` VALUES ('1402', '370634', '长岛县');
INSERT INTO `city` VALUES ('1403', '370681', '龙口市');
INSERT INTO `city` VALUES ('1404', '370682', '莱阳市');
INSERT INTO `city` VALUES ('1405', '370683', '莱州市');
INSERT INTO `city` VALUES ('1406', '370684', '蓬莱市');
INSERT INTO `city` VALUES ('1407', '370685', '招远市');
INSERT INTO `city` VALUES ('1408', '370686', '栖霞市');
INSERT INTO `city` VALUES ('1409', '370687', '海阳市');
INSERT INTO `city` VALUES ('1410', '370700', '潍坊市');
INSERT INTO `city` VALUES ('1411', '370702', '潍城区');
INSERT INTO `city` VALUES ('1412', '370703', '寒亭区');
INSERT INTO `city` VALUES ('1413', '370704', '坊子区');
INSERT INTO `city` VALUES ('1414', '370705', '奎文区');
INSERT INTO `city` VALUES ('1415', '370724', '临朐县');
INSERT INTO `city` VALUES ('1416', '370725', '昌乐县');
INSERT INTO `city` VALUES ('1417', '370781', '青州市');
INSERT INTO `city` VALUES ('1418', '370782', '诸城市');
INSERT INTO `city` VALUES ('1419', '370783', '寿光市');
INSERT INTO `city` VALUES ('1420', '370784', '安丘市');
INSERT INTO `city` VALUES ('1421', '370785', '高密市');
INSERT INTO `city` VALUES ('1422', '370786', '昌邑市');
INSERT INTO `city` VALUES ('1423', '370800', '济宁市');
INSERT INTO `city` VALUES ('1424', '370811', '任城区');
INSERT INTO `city` VALUES ('1425', '370812', '兖州区');
INSERT INTO `city` VALUES ('1426', '370826', '微山县');
INSERT INTO `city` VALUES ('1427', '370827', '鱼台县');
INSERT INTO `city` VALUES ('1428', '370828', '金乡县');
INSERT INTO `city` VALUES ('1429', '370829', '嘉祥县');
INSERT INTO `city` VALUES ('1430', '370830', '汶上县');
INSERT INTO `city` VALUES ('1431', '370831', '泗水县');
INSERT INTO `city` VALUES ('1432', '370832', '梁山县');
INSERT INTO `city` VALUES ('1433', '370881', '曲阜市');
INSERT INTO `city` VALUES ('1434', '370883', '邹城市');
INSERT INTO `city` VALUES ('1435', '370900', '泰安市');
INSERT INTO `city` VALUES ('1436', '370902', '泰山区');
INSERT INTO `city` VALUES ('1437', '370911', '岱岳区');
INSERT INTO `city` VALUES ('1438', '370921', '宁阳县');
INSERT INTO `city` VALUES ('1439', '370923', '东平县');
INSERT INTO `city` VALUES ('1440', '370982', '新泰市');
INSERT INTO `city` VALUES ('1441', '370983', '肥城市');
INSERT INTO `city` VALUES ('1442', '371000', '威海市');
INSERT INTO `city` VALUES ('1443', '371002', '环翠区');
INSERT INTO `city` VALUES ('1444', '371003', '文登区');
INSERT INTO `city` VALUES ('1445', '371082', '荣成市');
INSERT INTO `city` VALUES ('1446', '371083', '乳山市');
INSERT INTO `city` VALUES ('1447', '371100', '日照市');
INSERT INTO `city` VALUES ('1448', '371102', '东港区');
INSERT INTO `city` VALUES ('1449', '371103', '岚山区');
INSERT INTO `city` VALUES ('1450', '371121', '五莲县');
INSERT INTO `city` VALUES ('1451', '371122', '莒县');
INSERT INTO `city` VALUES ('1452', '371200', '莱芜市');
INSERT INTO `city` VALUES ('1453', '371202', '莱城区');
INSERT INTO `city` VALUES ('1454', '371203', '钢城区');
INSERT INTO `city` VALUES ('1455', '371300', '临沂市');
INSERT INTO `city` VALUES ('1456', '371302', '兰山区');
INSERT INTO `city` VALUES ('1457', '371311', '罗庄区');
INSERT INTO `city` VALUES ('1458', '371312', '河东区');
INSERT INTO `city` VALUES ('1459', '371321', '沂南县');
INSERT INTO `city` VALUES ('1460', '371322', '郯城县');
INSERT INTO `city` VALUES ('1461', '371323', '沂水县');
INSERT INTO `city` VALUES ('1462', '371324', '兰陵县');
INSERT INTO `city` VALUES ('1463', '371325', '费县');
INSERT INTO `city` VALUES ('1464', '371326', '平邑县');
INSERT INTO `city` VALUES ('1465', '371327', '莒南县');
INSERT INTO `city` VALUES ('1466', '371328', '蒙阴县');
INSERT INTO `city` VALUES ('1467', '371329', '临沭县');
INSERT INTO `city` VALUES ('1468', '371400', '德州市');
INSERT INTO `city` VALUES ('1469', '371402', '德城区');
INSERT INTO `city` VALUES ('1470', '371403', '陵城区');
INSERT INTO `city` VALUES ('1471', '371422', '宁津县');
INSERT INTO `city` VALUES ('1472', '371423', '庆云县');
INSERT INTO `city` VALUES ('1473', '371424', '临邑县');
INSERT INTO `city` VALUES ('1474', '371425', '齐河县');
INSERT INTO `city` VALUES ('1475', '371426', '平原县');
INSERT INTO `city` VALUES ('1476', '371427', '夏津县');
INSERT INTO `city` VALUES ('1477', '371428', '武城县');
INSERT INTO `city` VALUES ('1478', '371481', '乐陵市');
INSERT INTO `city` VALUES ('1479', '371482', '禹城市');
INSERT INTO `city` VALUES ('1480', '371500', '聊城市');
INSERT INTO `city` VALUES ('1481', '371502', '东昌府区');
INSERT INTO `city` VALUES ('1482', '371521', '阳谷县');
INSERT INTO `city` VALUES ('1483', '371522', '莘县');
INSERT INTO `city` VALUES ('1484', '371523', '茌平县');
INSERT INTO `city` VALUES ('1485', '371524', '东阿县');
INSERT INTO `city` VALUES ('1486', '371525', '冠县');
INSERT INTO `city` VALUES ('1487', '371526', '高唐县');
INSERT INTO `city` VALUES ('1488', '371581', '临清市');
INSERT INTO `city` VALUES ('1489', '371600', '滨州市');
INSERT INTO `city` VALUES ('1490', '371602', '滨城区');
INSERT INTO `city` VALUES ('1491', '371603', '沾化区');
INSERT INTO `city` VALUES ('1492', '371621', '惠民县');
INSERT INTO `city` VALUES ('1493', '371622', '阳信县');
INSERT INTO `city` VALUES ('1494', '371623', '无棣县');
INSERT INTO `city` VALUES ('1495', '371625', '博兴县');
INSERT INTO `city` VALUES ('1496', '371626', '邹平县');
INSERT INTO `city` VALUES ('1497', '371700', '菏泽市');
INSERT INTO `city` VALUES ('1498', '371702', '牡丹区');
INSERT INTO `city` VALUES ('1499', '371721', '曹县');
INSERT INTO `city` VALUES ('1500', '371722', '单县');
INSERT INTO `city` VALUES ('1501', '371723', '成武县');
INSERT INTO `city` VALUES ('1502', '371724', '巨野县');
INSERT INTO `city` VALUES ('1503', '371725', '郓城县');
INSERT INTO `city` VALUES ('1504', '371726', '鄄城县');
INSERT INTO `city` VALUES ('1505', '371727', '定陶县');
INSERT INTO `city` VALUES ('1506', '371728', '东明县');
INSERT INTO `city` VALUES ('1507', '410000', '河南省');
INSERT INTO `city` VALUES ('1508', '410100', '郑州市');
INSERT INTO `city` VALUES ('1509', '410102', '中原区');
INSERT INTO `city` VALUES ('1510', '410103', '二七区');
INSERT INTO `city` VALUES ('1511', '410104', '管城回族区');
INSERT INTO `city` VALUES ('1512', '410105', '金水区');
INSERT INTO `city` VALUES ('1513', '410106', '上街区');
INSERT INTO `city` VALUES ('1514', '410108', '惠济区');
INSERT INTO `city` VALUES ('1515', '410122', '中牟县');
INSERT INTO `city` VALUES ('1516', '410181', '巩义市');
INSERT INTO `city` VALUES ('1517', '410182', '荥阳市');
INSERT INTO `city` VALUES ('1518', '410183', '新密市');
INSERT INTO `city` VALUES ('1519', '410184', '新郑市');
INSERT INTO `city` VALUES ('1520', '410185', '登封市');
INSERT INTO `city` VALUES ('1521', '410200', '开封市');
INSERT INTO `city` VALUES ('1522', '410202', '龙亭区');
INSERT INTO `city` VALUES ('1523', '410203', '顺河回族区');
INSERT INTO `city` VALUES ('1524', '410204', '鼓楼区');
INSERT INTO `city` VALUES ('1525', '410205', '禹王台区');
INSERT INTO `city` VALUES ('1526', '410212', '祥符区');
INSERT INTO `city` VALUES ('1527', '410221', '杞县');
INSERT INTO `city` VALUES ('1528', '410222', '通许县');
INSERT INTO `city` VALUES ('1529', '410223', '尉氏县');
INSERT INTO `city` VALUES ('1530', '410225', '兰考县');
INSERT INTO `city` VALUES ('1531', '410300', '洛阳市');
INSERT INTO `city` VALUES ('1532', '410302', '老城区');
INSERT INTO `city` VALUES ('1533', '410303', '西工区');
INSERT INTO `city` VALUES ('1534', '410304', '瀍河回族区');
INSERT INTO `city` VALUES ('1535', '410305', '涧西区');
INSERT INTO `city` VALUES ('1536', '410306', '吉利区');
INSERT INTO `city` VALUES ('1537', '410311', '洛龙区');
INSERT INTO `city` VALUES ('1538', '410322', '孟津县');
INSERT INTO `city` VALUES ('1539', '410323', '新安县');
INSERT INTO `city` VALUES ('1540', '410324', '栾川县');
INSERT INTO `city` VALUES ('1541', '410325', '嵩县');
INSERT INTO `city` VALUES ('1542', '410326', '汝阳县');
INSERT INTO `city` VALUES ('1543', '410327', '宜阳县');
INSERT INTO `city` VALUES ('1544', '410328', '洛宁县');
INSERT INTO `city` VALUES ('1545', '410329', '伊川县');
INSERT INTO `city` VALUES ('1546', '410381', '偃师市');
INSERT INTO `city` VALUES ('1547', '410400', '平顶山市');
INSERT INTO `city` VALUES ('1548', '410402', '新华区');
INSERT INTO `city` VALUES ('1549', '410403', '卫东区');
INSERT INTO `city` VALUES ('1550', '410404', '石龙区');
INSERT INTO `city` VALUES ('1551', '410411', '湛河区');
INSERT INTO `city` VALUES ('1552', '410421', '宝丰县');
INSERT INTO `city` VALUES ('1553', '410422', '叶县');
INSERT INTO `city` VALUES ('1554', '410423', '鲁山县');
INSERT INTO `city` VALUES ('1555', '410425', '郏县');
INSERT INTO `city` VALUES ('1556', '410481', '舞钢市');
INSERT INTO `city` VALUES ('1557', '410482', '汝州市');
INSERT INTO `city` VALUES ('1558', '410500', '安阳市');
INSERT INTO `city` VALUES ('1559', '410502', '文峰区');
INSERT INTO `city` VALUES ('1560', '410503', '北关区');
INSERT INTO `city` VALUES ('1561', '410505', '殷都区');
INSERT INTO `city` VALUES ('1562', '410506', '龙安区');
INSERT INTO `city` VALUES ('1563', '410522', '安阳县');
INSERT INTO `city` VALUES ('1564', '410523', '汤阴县');
INSERT INTO `city` VALUES ('1565', '410526', '滑县');
INSERT INTO `city` VALUES ('1566', '410527', '内黄县');
INSERT INTO `city` VALUES ('1567', '410581', '林州市');
INSERT INTO `city` VALUES ('1568', '410600', '鹤壁市');
INSERT INTO `city` VALUES ('1569', '410602', '鹤山区');
INSERT INTO `city` VALUES ('1570', '410603', '山城区');
INSERT INTO `city` VALUES ('1571', '410611', '淇滨区');
INSERT INTO `city` VALUES ('1572', '410621', '浚县');
INSERT INTO `city` VALUES ('1573', '410622', '淇县');
INSERT INTO `city` VALUES ('1574', '410700', '新乡市');
INSERT INTO `city` VALUES ('1575', '410702', '红旗区');
INSERT INTO `city` VALUES ('1576', '410703', '卫滨区');
INSERT INTO `city` VALUES ('1577', '410704', '凤泉区');
INSERT INTO `city` VALUES ('1578', '410711', '牧野区');
INSERT INTO `city` VALUES ('1579', '410721', '新乡县');
INSERT INTO `city` VALUES ('1580', '410724', '获嘉县');
INSERT INTO `city` VALUES ('1581', '410725', '原阳县');
INSERT INTO `city` VALUES ('1582', '410726', '延津县');
INSERT INTO `city` VALUES ('1583', '410727', '封丘县');
INSERT INTO `city` VALUES ('1584', '410728', '长垣县');
INSERT INTO `city` VALUES ('1585', '410781', '卫辉市');
INSERT INTO `city` VALUES ('1586', '410782', '辉县市');
INSERT INTO `city` VALUES ('1587', '410800', '焦作市');
INSERT INTO `city` VALUES ('1588', '410802', '解放区');
INSERT INTO `city` VALUES ('1589', '410803', '中站区');
INSERT INTO `city` VALUES ('1590', '410804', '马村区');
INSERT INTO `city` VALUES ('1591', '410811', '山阳区');
INSERT INTO `city` VALUES ('1592', '410821', '修武县');
INSERT INTO `city` VALUES ('1593', '410822', '博爱县');
INSERT INTO `city` VALUES ('1594', '410823', '武陟县');
INSERT INTO `city` VALUES ('1595', '410825', '温县');
INSERT INTO `city` VALUES ('1596', '410882', '沁阳市');
INSERT INTO `city` VALUES ('1597', '410883', '孟州市');
INSERT INTO `city` VALUES ('1598', '410900', '濮阳市');
INSERT INTO `city` VALUES ('1599', '410902', '华龙区');
INSERT INTO `city` VALUES ('1600', '410922', '清丰县');
INSERT INTO `city` VALUES ('1601', '410923', '南乐县');
INSERT INTO `city` VALUES ('1602', '410926', '范县');
INSERT INTO `city` VALUES ('1603', '410927', '台前县');
INSERT INTO `city` VALUES ('1604', '410928', '濮阳县');
INSERT INTO `city` VALUES ('1605', '411000', '许昌市');
INSERT INTO `city` VALUES ('1606', '411002', '魏都区');
INSERT INTO `city` VALUES ('1607', '411023', '许昌县');
INSERT INTO `city` VALUES ('1608', '411024', '鄢陵县');
INSERT INTO `city` VALUES ('1609', '411025', '襄城县');
INSERT INTO `city` VALUES ('1610', '411081', '禹州市');
INSERT INTO `city` VALUES ('1611', '411082', '长葛市');
INSERT INTO `city` VALUES ('1612', '411100', '漯河市');
INSERT INTO `city` VALUES ('1613', '411102', '源汇区');
INSERT INTO `city` VALUES ('1614', '411103', '郾城区');
INSERT INTO `city` VALUES ('1615', '411104', '召陵区');
INSERT INTO `city` VALUES ('1616', '411121', '舞阳县');
INSERT INTO `city` VALUES ('1617', '411122', '临颍县');
INSERT INTO `city` VALUES ('1618', '411200', '三门峡市');
INSERT INTO `city` VALUES ('1619', '411202', '湖滨区');
INSERT INTO `city` VALUES ('1620', '411203', '陕州区');
INSERT INTO `city` VALUES ('1621', '411221', '渑池县');
INSERT INTO `city` VALUES ('1622', '411224', '卢氏县');
INSERT INTO `city` VALUES ('1623', '411281', '义马市');
INSERT INTO `city` VALUES ('1624', '411282', '灵宝市');
INSERT INTO `city` VALUES ('1625', '411300', '南阳市');
INSERT INTO `city` VALUES ('1626', '411302', '宛城区');
INSERT INTO `city` VALUES ('1627', '411303', '卧龙区');
INSERT INTO `city` VALUES ('1628', '411321', '南召县');
INSERT INTO `city` VALUES ('1629', '411322', '方城县');
INSERT INTO `city` VALUES ('1630', '411323', '西峡县');
INSERT INTO `city` VALUES ('1631', '411324', '镇平县');
INSERT INTO `city` VALUES ('1632', '411325', '内乡县');
INSERT INTO `city` VALUES ('1633', '411326', '淅川县');
INSERT INTO `city` VALUES ('1634', '411327', '社旗县');
INSERT INTO `city` VALUES ('1635', '411328', '唐河县');
INSERT INTO `city` VALUES ('1636', '411329', '新野县');
INSERT INTO `city` VALUES ('1637', '411330', '桐柏县');
INSERT INTO `city` VALUES ('1638', '411381', '邓州市');
INSERT INTO `city` VALUES ('1639', '411400', '商丘市');
INSERT INTO `city` VALUES ('1640', '411402', '梁园区');
INSERT INTO `city` VALUES ('1641', '411403', '睢阳区');
INSERT INTO `city` VALUES ('1642', '411421', '民权县');
INSERT INTO `city` VALUES ('1643', '411422', '睢县');
INSERT INTO `city` VALUES ('1644', '411423', '宁陵县');
INSERT INTO `city` VALUES ('1645', '411424', '柘城县');
INSERT INTO `city` VALUES ('1646', '411425', '虞城县');
INSERT INTO `city` VALUES ('1647', '411426', '夏邑县');
INSERT INTO `city` VALUES ('1648', '411481', '永城市');
INSERT INTO `city` VALUES ('1649', '411500', '信阳市');
INSERT INTO `city` VALUES ('1650', '411502', '浉河区');
INSERT INTO `city` VALUES ('1651', '411503', '平桥区');
INSERT INTO `city` VALUES ('1652', '411521', '罗山县');
INSERT INTO `city` VALUES ('1653', '411522', '光山县');
INSERT INTO `city` VALUES ('1654', '411523', '新县');
INSERT INTO `city` VALUES ('1655', '411524', '商城县');
INSERT INTO `city` VALUES ('1656', '411525', '固始县');
INSERT INTO `city` VALUES ('1657', '411526', '潢川县');
INSERT INTO `city` VALUES ('1658', '411527', '淮滨县');
INSERT INTO `city` VALUES ('1659', '411528', '息县');
INSERT INTO `city` VALUES ('1660', '411600', '周口市');
INSERT INTO `city` VALUES ('1661', '411602', '川汇区');
INSERT INTO `city` VALUES ('1662', '411621', '扶沟县');
INSERT INTO `city` VALUES ('1663', '411622', '西华县');
INSERT INTO `city` VALUES ('1664', '411623', '商水县');
INSERT INTO `city` VALUES ('1665', '411624', '沈丘县');
INSERT INTO `city` VALUES ('1666', '411625', '郸城县');
INSERT INTO `city` VALUES ('1667', '411626', '淮阳县');
INSERT INTO `city` VALUES ('1668', '411627', '太康县');
INSERT INTO `city` VALUES ('1669', '411628', '鹿邑县');
INSERT INTO `city` VALUES ('1670', '411681', '项城市');
INSERT INTO `city` VALUES ('1671', '411700', '驻马店市');
INSERT INTO `city` VALUES ('1672', '411702', '驿城区');
INSERT INTO `city` VALUES ('1673', '411721', '西平县');
INSERT INTO `city` VALUES ('1674', '411722', '上蔡县');
INSERT INTO `city` VALUES ('1675', '411723', '平舆县');
INSERT INTO `city` VALUES ('1676', '411724', '正阳县');
INSERT INTO `city` VALUES ('1677', '411725', '确山县');
INSERT INTO `city` VALUES ('1678', '411726', '泌阳县');
INSERT INTO `city` VALUES ('1679', '411727', '汝南县');
INSERT INTO `city` VALUES ('1680', '411728', '遂平县');
INSERT INTO `city` VALUES ('1681', '411729', '新蔡县');
INSERT INTO `city` VALUES ('1682', '419001', '济源市');
INSERT INTO `city` VALUES ('1683', '420000', '湖北省');
INSERT INTO `city` VALUES ('1684', '420100', '武汉市');
INSERT INTO `city` VALUES ('1685', '420102', '江岸区');
INSERT INTO `city` VALUES ('1686', '420103', '江汉区');
INSERT INTO `city` VALUES ('1687', '420104', '硚口区');
INSERT INTO `city` VALUES ('1688', '420105', '汉阳区');
INSERT INTO `city` VALUES ('1689', '420106', '武昌区');
INSERT INTO `city` VALUES ('1690', '420107', '青山区');
INSERT INTO `city` VALUES ('1691', '420111', '洪山区');
INSERT INTO `city` VALUES ('1692', '420112', '东西湖区');
INSERT INTO `city` VALUES ('1693', '420113', '汉南区');
INSERT INTO `city` VALUES ('1694', '420114', '蔡甸区');
INSERT INTO `city` VALUES ('1695', '420115', '江夏区');
INSERT INTO `city` VALUES ('1696', '420116', '黄陂区');
INSERT INTO `city` VALUES ('1697', '420117', '新洲区');
INSERT INTO `city` VALUES ('1698', '420200', '黄石市');
INSERT INTO `city` VALUES ('1699', '420202', '黄石港区');
INSERT INTO `city` VALUES ('1700', '420203', '西塞山区');
INSERT INTO `city` VALUES ('1701', '420204', '下陆区');
INSERT INTO `city` VALUES ('1702', '420205', '铁山区');
INSERT INTO `city` VALUES ('1703', '420222', '阳新县');
INSERT INTO `city` VALUES ('1704', '420281', '大冶市');
INSERT INTO `city` VALUES ('1705', '420300', '十堰市');
INSERT INTO `city` VALUES ('1706', '420302', '茅箭区');
INSERT INTO `city` VALUES ('1707', '420303', '张湾区');
INSERT INTO `city` VALUES ('1708', '420304', '郧阳区');
INSERT INTO `city` VALUES ('1709', '420322', '郧西县');
INSERT INTO `city` VALUES ('1710', '420323', '竹山县');
INSERT INTO `city` VALUES ('1711', '420324', '竹溪县');
INSERT INTO `city` VALUES ('1712', '420325', '房县');
INSERT INTO `city` VALUES ('1713', '420381', '丹江口市');
INSERT INTO `city` VALUES ('1714', '420500', '宜昌市');
INSERT INTO `city` VALUES ('1715', '420502', '西陵区');
INSERT INTO `city` VALUES ('1716', '420503', '伍家岗区');
INSERT INTO `city` VALUES ('1717', '420504', '点军区');
INSERT INTO `city` VALUES ('1718', '420505', '猇亭区');
INSERT INTO `city` VALUES ('1719', '420506', '夷陵区');
INSERT INTO `city` VALUES ('1720', '420525', '远安县');
INSERT INTO `city` VALUES ('1721', '420526', '兴山县');
INSERT INTO `city` VALUES ('1722', '420527', '秭归县');
INSERT INTO `city` VALUES ('1723', '420528', '长阳土家族自治县');
INSERT INTO `city` VALUES ('1724', '420529', '五峰土家族自治县');
INSERT INTO `city` VALUES ('1725', '420581', '宜都市');
INSERT INTO `city` VALUES ('1726', '420582', '当阳市');
INSERT INTO `city` VALUES ('1727', '420583', '枝江市');
INSERT INTO `city` VALUES ('1728', '420600', '襄阳市');
INSERT INTO `city` VALUES ('1729', '420602', '襄城区');
INSERT INTO `city` VALUES ('1730', '420606', '樊城区');
INSERT INTO `city` VALUES ('1731', '420607', '襄州区');
INSERT INTO `city` VALUES ('1732', '420624', '南漳县');
INSERT INTO `city` VALUES ('1733', '420625', '谷城县');
INSERT INTO `city` VALUES ('1734', '420626', '保康县');
INSERT INTO `city` VALUES ('1735', '420682', '老河口市');
INSERT INTO `city` VALUES ('1736', '420683', '枣阳市');
INSERT INTO `city` VALUES ('1737', '420684', '宜城市');
INSERT INTO `city` VALUES ('1738', '420700', '鄂州市');
INSERT INTO `city` VALUES ('1739', '420702', '梁子湖区');
INSERT INTO `city` VALUES ('1740', '420703', '华容区');
INSERT INTO `city` VALUES ('1741', '420704', '鄂城区');
INSERT INTO `city` VALUES ('1742', '420800', '荆门市');
INSERT INTO `city` VALUES ('1743', '420802', '东宝区');
INSERT INTO `city` VALUES ('1744', '420804', '掇刀区');
INSERT INTO `city` VALUES ('1745', '420821', '京山县');
INSERT INTO `city` VALUES ('1746', '420822', '沙洋县');
INSERT INTO `city` VALUES ('1747', '420881', '钟祥市');
INSERT INTO `city` VALUES ('1748', '420900', '孝感市');
INSERT INTO `city` VALUES ('1749', '420902', '孝南区');
INSERT INTO `city` VALUES ('1750', '420921', '孝昌县');
INSERT INTO `city` VALUES ('1751', '420922', '大悟县');
INSERT INTO `city` VALUES ('1752', '420923', '云梦县');
INSERT INTO `city` VALUES ('1753', '420981', '应城市');
INSERT INTO `city` VALUES ('1754', '420982', '安陆市');
INSERT INTO `city` VALUES ('1755', '420984', '汉川市');
INSERT INTO `city` VALUES ('1756', '421000', '荆州市');
INSERT INTO `city` VALUES ('1757', '421002', '沙市区');
INSERT INTO `city` VALUES ('1758', '421003', '荆州区');
INSERT INTO `city` VALUES ('1759', '421022', '公安县');
INSERT INTO `city` VALUES ('1760', '421023', '监利县');
INSERT INTO `city` VALUES ('1761', '421024', '江陵县');
INSERT INTO `city` VALUES ('1762', '421081', '石首市');
INSERT INTO `city` VALUES ('1763', '421083', '洪湖市');
INSERT INTO `city` VALUES ('1764', '421087', '松滋市');
INSERT INTO `city` VALUES ('1765', '421100', '黄冈市');
INSERT INTO `city` VALUES ('1766', '421102', '黄州区');
INSERT INTO `city` VALUES ('1767', '421121', '团风县');
INSERT INTO `city` VALUES ('1768', '421122', '红安县');
INSERT INTO `city` VALUES ('1769', '421123', '罗田县');
INSERT INTO `city` VALUES ('1770', '421124', '英山县');
INSERT INTO `city` VALUES ('1771', '421125', '浠水县');
INSERT INTO `city` VALUES ('1772', '421126', '蕲春县');
INSERT INTO `city` VALUES ('1773', '421127', '黄梅县');
INSERT INTO `city` VALUES ('1774', '421181', '麻城市');
INSERT INTO `city` VALUES ('1775', '421182', '武穴市');
INSERT INTO `city` VALUES ('1776', '421200', '咸宁市');
INSERT INTO `city` VALUES ('1777', '421202', '咸安区');
INSERT INTO `city` VALUES ('1778', '421221', '嘉鱼县');
INSERT INTO `city` VALUES ('1779', '421222', '通城县');
INSERT INTO `city` VALUES ('1780', '421223', '崇阳县');
INSERT INTO `city` VALUES ('1781', '421224', '通山县');
INSERT INTO `city` VALUES ('1782', '421281', '赤壁市');
INSERT INTO `city` VALUES ('1783', '421300', '随州市');
INSERT INTO `city` VALUES ('1784', '421303', '曾都区');
INSERT INTO `city` VALUES ('1785', '421321', '随县');
INSERT INTO `city` VALUES ('1786', '421381', '广水市');
INSERT INTO `city` VALUES ('1787', '422800', '恩施土家族苗族自治州');
INSERT INTO `city` VALUES ('1788', '422801', '恩施市');
INSERT INTO `city` VALUES ('1789', '422802', '利川市');
INSERT INTO `city` VALUES ('1790', '422822', '建始县');
INSERT INTO `city` VALUES ('1791', '422823', '巴东县');
INSERT INTO `city` VALUES ('1792', '422825', '宣恩县');
INSERT INTO `city` VALUES ('1793', '422826', '咸丰县');
INSERT INTO `city` VALUES ('1794', '422827', '来凤县');
INSERT INTO `city` VALUES ('1795', '422828', '鹤峰县');
INSERT INTO `city` VALUES ('1796', '429004', '仙桃市');
INSERT INTO `city` VALUES ('1797', '429005', '潜江市');
INSERT INTO `city` VALUES ('1798', '429006', '天门市');
INSERT INTO `city` VALUES ('1799', '429021', '神农架林区');
INSERT INTO `city` VALUES ('1800', '430000', '湖南省');
INSERT INTO `city` VALUES ('1801', '430100', '长沙市');
INSERT INTO `city` VALUES ('1802', '430102', '芙蓉区');
INSERT INTO `city` VALUES ('1803', '430103', '天心区');
INSERT INTO `city` VALUES ('1804', '430104', '岳麓区');
INSERT INTO `city` VALUES ('1805', '430105', '开福区');
INSERT INTO `city` VALUES ('1806', '430111', '雨花区');
INSERT INTO `city` VALUES ('1807', '430112', '望城区');
INSERT INTO `city` VALUES ('1808', '430121', '长沙县');
INSERT INTO `city` VALUES ('1809', '430124', '宁乡县');
INSERT INTO `city` VALUES ('1810', '430181', '浏阳市');
INSERT INTO `city` VALUES ('1811', '430200', '株洲市');
INSERT INTO `city` VALUES ('1812', '430202', '荷塘区');
INSERT INTO `city` VALUES ('1813', '430203', '芦淞区');
INSERT INTO `city` VALUES ('1814', '430204', '石峰区');
INSERT INTO `city` VALUES ('1815', '430211', '天元区');
INSERT INTO `city` VALUES ('1816', '430221', '株洲县');
INSERT INTO `city` VALUES ('1817', '430223', '攸县');
INSERT INTO `city` VALUES ('1818', '430224', '茶陵县');
INSERT INTO `city` VALUES ('1819', '430225', '炎陵县');
INSERT INTO `city` VALUES ('1820', '430281', '醴陵市');
INSERT INTO `city` VALUES ('1821', '430300', '湘潭市');
INSERT INTO `city` VALUES ('1822', '430302', '雨湖区');
INSERT INTO `city` VALUES ('1823', '430304', '岳塘区');
INSERT INTO `city` VALUES ('1824', '430321', '湘潭县');
INSERT INTO `city` VALUES ('1825', '430381', '湘乡市');
INSERT INTO `city` VALUES ('1826', '430382', '韶山市');
INSERT INTO `city` VALUES ('1827', '430400', '衡阳市');
INSERT INTO `city` VALUES ('1828', '430405', '珠晖区');
INSERT INTO `city` VALUES ('1829', '430406', '雁峰区');
INSERT INTO `city` VALUES ('1830', '430407', '石鼓区');
INSERT INTO `city` VALUES ('1831', '430408', '蒸湘区');
INSERT INTO `city` VALUES ('1832', '430412', '南岳区');
INSERT INTO `city` VALUES ('1833', '430421', '衡阳县');
INSERT INTO `city` VALUES ('1834', '430422', '衡南县');
INSERT INTO `city` VALUES ('1835', '430423', '衡山县');
INSERT INTO `city` VALUES ('1836', '430424', '衡东县');
INSERT INTO `city` VALUES ('1837', '430426', '祁东县');
INSERT INTO `city` VALUES ('1838', '430481', '耒阳市');
INSERT INTO `city` VALUES ('1839', '430482', '常宁市');
INSERT INTO `city` VALUES ('1840', '430500', '邵阳市');
INSERT INTO `city` VALUES ('1841', '430502', '双清区');
INSERT INTO `city` VALUES ('1842', '430503', '大祥区');
INSERT INTO `city` VALUES ('1843', '430511', '北塔区');
INSERT INTO `city` VALUES ('1844', '430521', '邵东县');
INSERT INTO `city` VALUES ('1845', '430522', '新邵县');
INSERT INTO `city` VALUES ('1846', '430523', '邵阳县');
INSERT INTO `city` VALUES ('1847', '430524', '隆回县');
INSERT INTO `city` VALUES ('1848', '430525', '洞口县');
INSERT INTO `city` VALUES ('1849', '430527', '绥宁县');
INSERT INTO `city` VALUES ('1850', '430528', '新宁县');
INSERT INTO `city` VALUES ('1851', '430529', '城步苗族自治县');
INSERT INTO `city` VALUES ('1852', '430581', '武冈市');
INSERT INTO `city` VALUES ('1853', '430600', '岳阳市');
INSERT INTO `city` VALUES ('1854', '430602', '岳阳楼区');
INSERT INTO `city` VALUES ('1855', '430603', '云溪区');
INSERT INTO `city` VALUES ('1856', '430611', '君山区');
INSERT INTO `city` VALUES ('1857', '430621', '岳阳县');
INSERT INTO `city` VALUES ('1858', '430623', '华容县');
INSERT INTO `city` VALUES ('1859', '430624', '湘阴县');
INSERT INTO `city` VALUES ('1860', '430626', '平江县');
INSERT INTO `city` VALUES ('1861', '430681', '汨罗市');
INSERT INTO `city` VALUES ('1862', '430682', '临湘市');
INSERT INTO `city` VALUES ('1863', '430700', '常德市');
INSERT INTO `city` VALUES ('1864', '430702', '武陵区');
INSERT INTO `city` VALUES ('1865', '430703', '鼎城区');
INSERT INTO `city` VALUES ('1866', '430721', '安乡县');
INSERT INTO `city` VALUES ('1867', '430722', '汉寿县');
INSERT INTO `city` VALUES ('1868', '430723', '澧县');
INSERT INTO `city` VALUES ('1869', '430724', '临澧县');
INSERT INTO `city` VALUES ('1870', '430725', '桃源县');
INSERT INTO `city` VALUES ('1871', '430726', '石门县');
INSERT INTO `city` VALUES ('1872', '430781', '津市市');
INSERT INTO `city` VALUES ('1873', '430800', '张家界市');
INSERT INTO `city` VALUES ('1874', '430802', '永定区');
INSERT INTO `city` VALUES ('1875', '430811', '武陵源区');
INSERT INTO `city` VALUES ('1876', '430821', '慈利县');
INSERT INTO `city` VALUES ('1877', '430822', '桑植县');
INSERT INTO `city` VALUES ('1878', '430900', '益阳市');
INSERT INTO `city` VALUES ('1879', '430902', '资阳区');
INSERT INTO `city` VALUES ('1880', '430903', '赫山区');
INSERT INTO `city` VALUES ('1881', '430921', '南县');
INSERT INTO `city` VALUES ('1882', '430922', '桃江县');
INSERT INTO `city` VALUES ('1883', '430923', '安化县');
INSERT INTO `city` VALUES ('1884', '430981', '沅江市');
INSERT INTO `city` VALUES ('1885', '431000', '郴州市');
INSERT INTO `city` VALUES ('1886', '431002', '北湖区');
INSERT INTO `city` VALUES ('1887', '431003', '苏仙区');
INSERT INTO `city` VALUES ('1888', '431021', '桂阳县');
INSERT INTO `city` VALUES ('1889', '431022', '宜章县');
INSERT INTO `city` VALUES ('1890', '431023', '永兴县');
INSERT INTO `city` VALUES ('1891', '431024', '嘉禾县');
INSERT INTO `city` VALUES ('1892', '431025', '临武县');
INSERT INTO `city` VALUES ('1893', '431026', '汝城县');
INSERT INTO `city` VALUES ('1894', '431027', '桂东县');
INSERT INTO `city` VALUES ('1895', '431028', '安仁县');
INSERT INTO `city` VALUES ('1896', '431081', '资兴市');
INSERT INTO `city` VALUES ('1897', '431100', '永州市');
INSERT INTO `city` VALUES ('1898', '431102', '零陵区');
INSERT INTO `city` VALUES ('1899', '431103', '冷水滩区');
INSERT INTO `city` VALUES ('1900', '431121', '祁阳县');
INSERT INTO `city` VALUES ('1901', '431122', '东安县');
INSERT INTO `city` VALUES ('1902', '431123', '双牌县');
INSERT INTO `city` VALUES ('1903', '431124', '道县');
INSERT INTO `city` VALUES ('1904', '431125', '江永县');
INSERT INTO `city` VALUES ('1905', '431126', '宁远县');
INSERT INTO `city` VALUES ('1906', '431127', '蓝山县');
INSERT INTO `city` VALUES ('1907', '431128', '新田县');
INSERT INTO `city` VALUES ('1908', '431129', '江华瑶族自治县');
INSERT INTO `city` VALUES ('1909', '431200', '怀化市');
INSERT INTO `city` VALUES ('1910', '431202', '鹤城区');
INSERT INTO `city` VALUES ('1911', '431221', '中方县');
INSERT INTO `city` VALUES ('1912', '431222', '沅陵县');
INSERT INTO `city` VALUES ('1913', '431223', '辰溪县');
INSERT INTO `city` VALUES ('1914', '431224', '溆浦县');
INSERT INTO `city` VALUES ('1915', '431225', '会同县');
INSERT INTO `city` VALUES ('1916', '431226', '麻阳苗族自治县');
INSERT INTO `city` VALUES ('1917', '431227', '新晃侗族自治县');
INSERT INTO `city` VALUES ('1918', '431228', '芷江侗族自治县');
INSERT INTO `city` VALUES ('1919', '431229', '靖州苗族侗族自治县');
INSERT INTO `city` VALUES ('1920', '431230', '通道侗族自治县');
INSERT INTO `city` VALUES ('1921', '431281', '洪江市');
INSERT INTO `city` VALUES ('1922', '431300', '娄底市');
INSERT INTO `city` VALUES ('1923', '431302', '娄星区');
INSERT INTO `city` VALUES ('1924', '431321', '双峰县');
INSERT INTO `city` VALUES ('1925', '431322', '新化县');
INSERT INTO `city` VALUES ('1926', '431381', '冷水江市');
INSERT INTO `city` VALUES ('1927', '431382', '涟源市');
INSERT INTO `city` VALUES ('1928', '433100', '湘西土家族苗族自治州');
INSERT INTO `city` VALUES ('1929', '433101', '吉首市');
INSERT INTO `city` VALUES ('1930', '433122', '泸溪县');
INSERT INTO `city` VALUES ('1931', '433123', '凤凰县');
INSERT INTO `city` VALUES ('1932', '433124', '花垣县');
INSERT INTO `city` VALUES ('1933', '433125', '保靖县');
INSERT INTO `city` VALUES ('1934', '433126', '古丈县');
INSERT INTO `city` VALUES ('1935', '433127', '永顺县');
INSERT INTO `city` VALUES ('1936', '433130', '龙山县');
INSERT INTO `city` VALUES ('1937', '440000', '广东省');
INSERT INTO `city` VALUES ('1938', '440100', '广州市');
INSERT INTO `city` VALUES ('1939', '440103', '荔湾区');
INSERT INTO `city` VALUES ('1940', '440104', '越秀区');
INSERT INTO `city` VALUES ('1941', '440105', '海珠区');
INSERT INTO `city` VALUES ('1942', '440106', '天河区');
INSERT INTO `city` VALUES ('1943', '440111', '白云区');
INSERT INTO `city` VALUES ('1944', '440112', '黄埔区');
INSERT INTO `city` VALUES ('1945', '440113', '番禺区');
INSERT INTO `city` VALUES ('1946', '440114', '花都区');
INSERT INTO `city` VALUES ('1947', '440115', '南沙区');
INSERT INTO `city` VALUES ('1948', '440117', '从化区');
INSERT INTO `city` VALUES ('1949', '440118', '增城区');
INSERT INTO `city` VALUES ('1950', '440200', '韶关市');
INSERT INTO `city` VALUES ('1951', '440203', '武江区');
INSERT INTO `city` VALUES ('1952', '440204', '浈江区');
INSERT INTO `city` VALUES ('1953', '440205', '曲江区');
INSERT INTO `city` VALUES ('1954', '440222', '始兴县');
INSERT INTO `city` VALUES ('1955', '440224', '仁化县');
INSERT INTO `city` VALUES ('1956', '440229', '翁源县');
INSERT INTO `city` VALUES ('1957', '440232', '乳源瑶族自治县');
INSERT INTO `city` VALUES ('1958', '440233', '新丰县');
INSERT INTO `city` VALUES ('1959', '440281', '乐昌市');
INSERT INTO `city` VALUES ('1960', '440282', '南雄市');
INSERT INTO `city` VALUES ('1961', '440300', '深圳市');
INSERT INTO `city` VALUES ('1962', '440303', '罗湖区');
INSERT INTO `city` VALUES ('1963', '440304', '福田区');
INSERT INTO `city` VALUES ('1964', '440305', '南山区');
INSERT INTO `city` VALUES ('1965', '440306', '宝安区');
INSERT INTO `city` VALUES ('1966', '440307', '龙岗区');
INSERT INTO `city` VALUES ('1967', '440308', '盐田区');
INSERT INTO `city` VALUES ('1968', '440400', '珠海市');
INSERT INTO `city` VALUES ('1969', '440402', '香洲区');
INSERT INTO `city` VALUES ('1970', '440403', '斗门区');
INSERT INTO `city` VALUES ('1971', '440404', '金湾区');
INSERT INTO `city` VALUES ('1972', '440500', '汕头市');
INSERT INTO `city` VALUES ('1973', '440507', '龙湖区');
INSERT INTO `city` VALUES ('1974', '440511', '金平区');
INSERT INTO `city` VALUES ('1975', '440512', '濠江区');
INSERT INTO `city` VALUES ('1976', '440513', '潮阳区');
INSERT INTO `city` VALUES ('1977', '440514', '潮南区');
INSERT INTO `city` VALUES ('1978', '440515', '澄海区');
INSERT INTO `city` VALUES ('1979', '440523', '南澳县');
INSERT INTO `city` VALUES ('1980', '440600', '佛山市');
INSERT INTO `city` VALUES ('1981', '440604', '禅城区');
INSERT INTO `city` VALUES ('1982', '440605', '南海区');
INSERT INTO `city` VALUES ('1983', '440606', '顺德区');
INSERT INTO `city` VALUES ('1984', '440607', '三水区');
INSERT INTO `city` VALUES ('1985', '440608', '高明区');
INSERT INTO `city` VALUES ('1986', '440700', '江门市');
INSERT INTO `city` VALUES ('1987', '440703', '蓬江区');
INSERT INTO `city` VALUES ('1988', '440704', '江海区');
INSERT INTO `city` VALUES ('1989', '440705', '新会区');
INSERT INTO `city` VALUES ('1990', '440781', '台山市');
INSERT INTO `city` VALUES ('1991', '440783', '开平市');
INSERT INTO `city` VALUES ('1992', '440784', '鹤山市');
INSERT INTO `city` VALUES ('1993', '440785', '恩平市');
INSERT INTO `city` VALUES ('1994', '440800', '湛江市');
INSERT INTO `city` VALUES ('1995', '440802', '赤坎区');
INSERT INTO `city` VALUES ('1996', '440803', '霞山区');
INSERT INTO `city` VALUES ('1997', '440804', '坡头区');
INSERT INTO `city` VALUES ('1998', '440811', '麻章区');
INSERT INTO `city` VALUES ('1999', '440823', '遂溪县');
INSERT INTO `city` VALUES ('2000', '440825', '徐闻县');
INSERT INTO `city` VALUES ('2001', '440881', '廉江市');
INSERT INTO `city` VALUES ('2002', '440882', '雷州市');
INSERT INTO `city` VALUES ('2003', '440883', '吴川市');
INSERT INTO `city` VALUES ('2004', '440900', '茂名市');
INSERT INTO `city` VALUES ('2005', '440902', '茂南区');
INSERT INTO `city` VALUES ('2006', '440904', '电白区');
INSERT INTO `city` VALUES ('2007', '440981', '高州市');
INSERT INTO `city` VALUES ('2008', '440982', '化州市');
INSERT INTO `city` VALUES ('2009', '440983', '信宜市');
INSERT INTO `city` VALUES ('2010', '441200', '肇庆市');
INSERT INTO `city` VALUES ('2011', '441202', '端州区');
INSERT INTO `city` VALUES ('2012', '441203', '鼎湖区');
INSERT INTO `city` VALUES ('2013', '441204', '高要区');
INSERT INTO `city` VALUES ('2014', '441223', '广宁县');
INSERT INTO `city` VALUES ('2015', '441224', '怀集县');
INSERT INTO `city` VALUES ('2016', '441225', '封开县');
INSERT INTO `city` VALUES ('2017', '441226', '德庆县');
INSERT INTO `city` VALUES ('2018', '441284', '四会市');
INSERT INTO `city` VALUES ('2019', '441300', '惠州市');
INSERT INTO `city` VALUES ('2020', '441302', '惠城区');
INSERT INTO `city` VALUES ('2021', '441303', '惠阳区');
INSERT INTO `city` VALUES ('2022', '441322', '博罗县');
INSERT INTO `city` VALUES ('2023', '441323', '惠东县');
INSERT INTO `city` VALUES ('2024', '441324', '龙门县');
INSERT INTO `city` VALUES ('2025', '441400', '梅州市');
INSERT INTO `city` VALUES ('2026', '441402', '梅江区');
INSERT INTO `city` VALUES ('2027', '441403', '梅县区');
INSERT INTO `city` VALUES ('2028', '441422', '大埔县');
INSERT INTO `city` VALUES ('2029', '441423', '丰顺县');
INSERT INTO `city` VALUES ('2030', '441424', '五华县');
INSERT INTO `city` VALUES ('2031', '441426', '平远县');
INSERT INTO `city` VALUES ('2032', '441427', '蕉岭县');
INSERT INTO `city` VALUES ('2033', '441481', '兴宁市');
INSERT INTO `city` VALUES ('2034', '441500', '汕尾市');
INSERT INTO `city` VALUES ('2035', '441502', '城区');
INSERT INTO `city` VALUES ('2036', '441521', '海丰县');
INSERT INTO `city` VALUES ('2037', '441523', '陆河县');
INSERT INTO `city` VALUES ('2038', '441581', '陆丰市');
INSERT INTO `city` VALUES ('2039', '441600', '河源市');
INSERT INTO `city` VALUES ('2040', '441602', '源城区');
INSERT INTO `city` VALUES ('2041', '441621', '紫金县');
INSERT INTO `city` VALUES ('2042', '441622', '龙川县');
INSERT INTO `city` VALUES ('2043', '441623', '连平县');
INSERT INTO `city` VALUES ('2044', '441624', '和平县');
INSERT INTO `city` VALUES ('2045', '441625', '东源县');
INSERT INTO `city` VALUES ('2046', '441700', '阳江市');
INSERT INTO `city` VALUES ('2047', '441702', '江城区');
INSERT INTO `city` VALUES ('2048', '441704', '阳东区');
INSERT INTO `city` VALUES ('2049', '441721', '阳西县');
INSERT INTO `city` VALUES ('2050', '441781', '阳春市');
INSERT INTO `city` VALUES ('2051', '441800', '清远市');
INSERT INTO `city` VALUES ('2052', '441802', '清城区');
INSERT INTO `city` VALUES ('2053', '441803', '清新区');
INSERT INTO `city` VALUES ('2054', '441821', '佛冈县');
INSERT INTO `city` VALUES ('2055', '441823', '阳山县');
INSERT INTO `city` VALUES ('2056', '441825', '连山壮族瑶族自治县');
INSERT INTO `city` VALUES ('2057', '441826', '连南瑶族自治县');
INSERT INTO `city` VALUES ('2058', '441881', '英德市');
INSERT INTO `city` VALUES ('2059', '441882', '连州市');
INSERT INTO `city` VALUES ('2060', '441900', '东莞市');
INSERT INTO `city` VALUES ('2061', '442000', '中山市');
INSERT INTO `city` VALUES ('2062', '445100', '潮州市');
INSERT INTO `city` VALUES ('2063', '445102', '湘桥区');
INSERT INTO `city` VALUES ('2064', '445103', '潮安区');
INSERT INTO `city` VALUES ('2065', '445122', '饶平县');
INSERT INTO `city` VALUES ('2066', '445200', '揭阳市');
INSERT INTO `city` VALUES ('2067', '445202', '榕城区');
INSERT INTO `city` VALUES ('2068', '445203', '揭东区');
INSERT INTO `city` VALUES ('2069', '445222', '揭西县');
INSERT INTO `city` VALUES ('2070', '445224', '惠来县');
INSERT INTO `city` VALUES ('2071', '445281', '普宁市');
INSERT INTO `city` VALUES ('2072', '445300', '云浮市');
INSERT INTO `city` VALUES ('2073', '445302', '云城区');
INSERT INTO `city` VALUES ('2074', '445303', '云安区');
INSERT INTO `city` VALUES ('2075', '445321', '新兴县');
INSERT INTO `city` VALUES ('2076', '445322', '郁南县');
INSERT INTO `city` VALUES ('2077', '445381', '罗定市');
INSERT INTO `city` VALUES ('2078', '450000', '广西壮族自治区');
INSERT INTO `city` VALUES ('2079', '450100', '南宁市');
INSERT INTO `city` VALUES ('2080', '450102', '兴宁区');
INSERT INTO `city` VALUES ('2081', '450103', '青秀区');
INSERT INTO `city` VALUES ('2082', '450105', '江南区');
INSERT INTO `city` VALUES ('2083', '450107', '西乡塘区');
INSERT INTO `city` VALUES ('2084', '450108', '良庆区');
INSERT INTO `city` VALUES ('2085', '450109', '邕宁区');
INSERT INTO `city` VALUES ('2086', '450110', '武鸣区');
INSERT INTO `city` VALUES ('2087', '450123', '隆安县');
INSERT INTO `city` VALUES ('2088', '450124', '马山县');
INSERT INTO `city` VALUES ('2089', '450125', '上林县');
INSERT INTO `city` VALUES ('2090', '450126', '宾阳县');
INSERT INTO `city` VALUES ('2091', '450127', '横县');
INSERT INTO `city` VALUES ('2092', '450200', '柳州市');
INSERT INTO `city` VALUES ('2093', '450202', '城中区');
INSERT INTO `city` VALUES ('2094', '450203', '鱼峰区');
INSERT INTO `city` VALUES ('2095', '450204', '柳南区');
INSERT INTO `city` VALUES ('2096', '450205', '柳北区');
INSERT INTO `city` VALUES ('2097', '450221', '柳江县');
INSERT INTO `city` VALUES ('2098', '450222', '柳城县');
INSERT INTO `city` VALUES ('2099', '450223', '鹿寨县');
INSERT INTO `city` VALUES ('2100', '450224', '融安县');
INSERT INTO `city` VALUES ('2101', '450225', '融水苗族自治县');
INSERT INTO `city` VALUES ('2102', '450226', '三江侗族自治县');
INSERT INTO `city` VALUES ('2103', '450300', '桂林市');
INSERT INTO `city` VALUES ('2104', '450302', '秀峰区');
INSERT INTO `city` VALUES ('2105', '450303', '叠彩区');
INSERT INTO `city` VALUES ('2106', '450304', '象山区');
INSERT INTO `city` VALUES ('2107', '450305', '七星区');
INSERT INTO `city` VALUES ('2108', '450311', '雁山区');
INSERT INTO `city` VALUES ('2109', '450312', '临桂区');
INSERT INTO `city` VALUES ('2110', '450321', '阳朔县');
INSERT INTO `city` VALUES ('2111', '450323', '灵川县');
INSERT INTO `city` VALUES ('2112', '450324', '全州县');
INSERT INTO `city` VALUES ('2113', '450325', '兴安县');
INSERT INTO `city` VALUES ('2114', '450326', '永福县');
INSERT INTO `city` VALUES ('2115', '450327', '灌阳县');
INSERT INTO `city` VALUES ('2116', '450328', '龙胜各族自治县');
INSERT INTO `city` VALUES ('2117', '450329', '资源县');
INSERT INTO `city` VALUES ('2118', '450330', '平乐县');
INSERT INTO `city` VALUES ('2119', '450331', '荔浦县');
INSERT INTO `city` VALUES ('2120', '450332', '恭城瑶族自治县');
INSERT INTO `city` VALUES ('2121', '450400', '梧州市');
INSERT INTO `city` VALUES ('2122', '450403', '万秀区');
INSERT INTO `city` VALUES ('2123', '450405', '长洲区');
INSERT INTO `city` VALUES ('2124', '450406', '龙圩区');
INSERT INTO `city` VALUES ('2125', '450421', '苍梧县');
INSERT INTO `city` VALUES ('2126', '450422', '藤县');
INSERT INTO `city` VALUES ('2127', '450423', '蒙山县');
INSERT INTO `city` VALUES ('2128', '450481', '岑溪市');
INSERT INTO `city` VALUES ('2129', '450500', '北海市');
INSERT INTO `city` VALUES ('2130', '450502', '海城区');
INSERT INTO `city` VALUES ('2131', '450503', '银海区');
INSERT INTO `city` VALUES ('2132', '450512', '铁山港区');
INSERT INTO `city` VALUES ('2133', '450521', '合浦县');
INSERT INTO `city` VALUES ('2134', '450600', '防城港市');
INSERT INTO `city` VALUES ('2135', '450602', '港口区');
INSERT INTO `city` VALUES ('2136', '450603', '防城区');
INSERT INTO `city` VALUES ('2137', '450621', '上思县');
INSERT INTO `city` VALUES ('2138', '450681', '东兴市');
INSERT INTO `city` VALUES ('2139', '450700', '钦州市');
INSERT INTO `city` VALUES ('2140', '450702', '钦南区');
INSERT INTO `city` VALUES ('2141', '450703', '钦北区');
INSERT INTO `city` VALUES ('2142', '450721', '灵山县');
INSERT INTO `city` VALUES ('2143', '450722', '浦北县');
INSERT INTO `city` VALUES ('2144', '450800', '贵港市');
INSERT INTO `city` VALUES ('2145', '450802', '港北区');
INSERT INTO `city` VALUES ('2146', '450803', '港南区');
INSERT INTO `city` VALUES ('2147', '450804', '覃塘区');
INSERT INTO `city` VALUES ('2148', '450821', '平南县');
INSERT INTO `city` VALUES ('2149', '450881', '桂平市');
INSERT INTO `city` VALUES ('2150', '450900', '玉林市');
INSERT INTO `city` VALUES ('2151', '450902', '玉州区');
INSERT INTO `city` VALUES ('2152', '450903', '福绵区');
INSERT INTO `city` VALUES ('2153', '450921', '容县');
INSERT INTO `city` VALUES ('2154', '450922', '陆川县');
INSERT INTO `city` VALUES ('2155', '450923', '博白县');
INSERT INTO `city` VALUES ('2156', '450924', '兴业县');
INSERT INTO `city` VALUES ('2157', '450981', '北流市');
INSERT INTO `city` VALUES ('2158', '451000', '百色市');
INSERT INTO `city` VALUES ('2159', '451002', '右江区');
INSERT INTO `city` VALUES ('2160', '451021', '田阳县');
INSERT INTO `city` VALUES ('2161', '451022', '田东县');
INSERT INTO `city` VALUES ('2162', '451023', '平果县');
INSERT INTO `city` VALUES ('2163', '451024', '德保县');
INSERT INTO `city` VALUES ('2164', '451026', '那坡县');
INSERT INTO `city` VALUES ('2165', '451027', '凌云县');
INSERT INTO `city` VALUES ('2166', '451028', '乐业县');
INSERT INTO `city` VALUES ('2167', '451029', '田林县');
INSERT INTO `city` VALUES ('2168', '451030', '西林县');
INSERT INTO `city` VALUES ('2169', '451031', '隆林各族自治县');
INSERT INTO `city` VALUES ('2170', '451081', '靖西市');
INSERT INTO `city` VALUES ('2171', '451100', '贺州市');
INSERT INTO `city` VALUES ('2172', '451102', '八步区');
INSERT INTO `city` VALUES ('2173', '451121', '昭平县');
INSERT INTO `city` VALUES ('2174', '451122', '钟山县');
INSERT INTO `city` VALUES ('2175', '451123', '富川瑶族自治县');
INSERT INTO `city` VALUES ('2176', '451200', '河池市');
INSERT INTO `city` VALUES ('2177', '451202', '金城江区');
INSERT INTO `city` VALUES ('2178', '451221', '南丹县');
INSERT INTO `city` VALUES ('2179', '451222', '天峨县');
INSERT INTO `city` VALUES ('2180', '451223', '凤山县');
INSERT INTO `city` VALUES ('2181', '451224', '东兰县');
INSERT INTO `city` VALUES ('2182', '451225', '罗城仫佬族自治县');
INSERT INTO `city` VALUES ('2183', '451226', '环江毛南族自治县');
INSERT INTO `city` VALUES ('2184', '451227', '巴马瑶族自治县');
INSERT INTO `city` VALUES ('2185', '451228', '都安瑶族自治县');
INSERT INTO `city` VALUES ('2186', '451229', '大化瑶族自治县');
INSERT INTO `city` VALUES ('2187', '451281', '宜州市');
INSERT INTO `city` VALUES ('2188', '451300', '来宾市');
INSERT INTO `city` VALUES ('2189', '451302', '兴宾区');
INSERT INTO `city` VALUES ('2190', '451321', '忻城县');
INSERT INTO `city` VALUES ('2191', '451322', '象州县');
INSERT INTO `city` VALUES ('2192', '451323', '武宣县');
INSERT INTO `city` VALUES ('2193', '451324', '金秀瑶族自治县');
INSERT INTO `city` VALUES ('2194', '451381', '合山市');
INSERT INTO `city` VALUES ('2195', '451400', '崇左市');
INSERT INTO `city` VALUES ('2196', '451402', '江州区');
INSERT INTO `city` VALUES ('2197', '451421', '扶绥县');
INSERT INTO `city` VALUES ('2198', '451422', '宁明县');
INSERT INTO `city` VALUES ('2199', '451423', '龙州县');
INSERT INTO `city` VALUES ('2200', '451424', '大新县');
INSERT INTO `city` VALUES ('2201', '451425', '天等县');
INSERT INTO `city` VALUES ('2202', '451481', '凭祥市');
INSERT INTO `city` VALUES ('2203', '460000', '海南省');
INSERT INTO `city` VALUES ('2204', '460100', '海口市');
INSERT INTO `city` VALUES ('2205', '460105', '秀英区');
INSERT INTO `city` VALUES ('2206', '460106', '龙华区');
INSERT INTO `city` VALUES ('2207', '460107', '琼山区');
INSERT INTO `city` VALUES ('2208', '460108', '美兰区');
INSERT INTO `city` VALUES ('2209', '460200', '三亚市');
INSERT INTO `city` VALUES ('2210', '460202', '海棠区');
INSERT INTO `city` VALUES ('2211', '460203', '吉阳区');
INSERT INTO `city` VALUES ('2212', '460204', '天涯区');
INSERT INTO `city` VALUES ('2213', '460205', '崖州区');
INSERT INTO `city` VALUES ('2214', '460300', '三沙市');
INSERT INTO `city` VALUES ('2215', '460400', '儋州市');
INSERT INTO `city` VALUES ('2216', '469001', '五指山市');
INSERT INTO `city` VALUES ('2217', '469002', '琼海市');
INSERT INTO `city` VALUES ('2218', '469005', '文昌市');
INSERT INTO `city` VALUES ('2219', '469006', '万宁市');
INSERT INTO `city` VALUES ('2220', '469007', '东方市');
INSERT INTO `city` VALUES ('2221', '469021', '定安县');
INSERT INTO `city` VALUES ('2222', '469022', '屯昌县');
INSERT INTO `city` VALUES ('2223', '469023', '澄迈县');
INSERT INTO `city` VALUES ('2224', '469024', '临高县');
INSERT INTO `city` VALUES ('2225', '469025', '白沙黎族自治县');
INSERT INTO `city` VALUES ('2226', '469026', '昌江黎族自治县');
INSERT INTO `city` VALUES ('2227', '469027', '乐东黎族自治县');
INSERT INTO `city` VALUES ('2228', '469028', '陵水黎族自治县');
INSERT INTO `city` VALUES ('2229', '469029', '保亭黎族苗族自治县');
INSERT INTO `city` VALUES ('2230', '469030', '琼中黎族苗族自治县');
INSERT INTO `city` VALUES ('2231', '500000', '重庆市');
INSERT INTO `city` VALUES ('2232', '500101', '万州区');
INSERT INTO `city` VALUES ('2233', '500102', '涪陵区');
INSERT INTO `city` VALUES ('2234', '500103', '渝中区');
INSERT INTO `city` VALUES ('2235', '500104', '大渡口区');
INSERT INTO `city` VALUES ('2236', '500105', '江北区');
INSERT INTO `city` VALUES ('2237', '500106', '沙坪坝区');
INSERT INTO `city` VALUES ('2238', '500107', '九龙坡区');
INSERT INTO `city` VALUES ('2239', '500108', '南岸区');
INSERT INTO `city` VALUES ('2240', '500109', '北碚区');
INSERT INTO `city` VALUES ('2241', '500110', '綦江区');
INSERT INTO `city` VALUES ('2242', '500111', '大足区');
INSERT INTO `city` VALUES ('2243', '500112', '渝北区');
INSERT INTO `city` VALUES ('2244', '500113', '巴南区');
INSERT INTO `city` VALUES ('2245', '500114', '黔江区');
INSERT INTO `city` VALUES ('2246', '500115', '长寿区');
INSERT INTO `city` VALUES ('2247', '500116', '江津区');
INSERT INTO `city` VALUES ('2248', '500117', '合川区');
INSERT INTO `city` VALUES ('2249', '500118', '永川区');
INSERT INTO `city` VALUES ('2250', '500119', '南川区');
INSERT INTO `city` VALUES ('2251', '500120', '璧山区');
INSERT INTO `city` VALUES ('2252', '500151', '铜梁区');
INSERT INTO `city` VALUES ('2253', '500152', '潼南区');
INSERT INTO `city` VALUES ('2254', '500153', '荣昌区');
INSERT INTO `city` VALUES ('2255', '500228', '梁平县');
INSERT INTO `city` VALUES ('2256', '500229', '城口县');
INSERT INTO `city` VALUES ('2257', '500230', '丰都县');
INSERT INTO `city` VALUES ('2258', '500231', '垫江县');
INSERT INTO `city` VALUES ('2259', '500232', '武隆县');
INSERT INTO `city` VALUES ('2260', '500233', '忠县');
INSERT INTO `city` VALUES ('2261', '500234', '开县');
INSERT INTO `city` VALUES ('2262', '500235', '云阳县');
INSERT INTO `city` VALUES ('2263', '500236', '奉节县');
INSERT INTO `city` VALUES ('2264', '500237', '巫山县');
INSERT INTO `city` VALUES ('2265', '500238', '巫溪县');
INSERT INTO `city` VALUES ('2266', '500240', '石柱土家族自治县');
INSERT INTO `city` VALUES ('2267', '500241', '秀山土家族苗族自治县');
INSERT INTO `city` VALUES ('2268', '500242', '酉阳土家族苗族自治县');
INSERT INTO `city` VALUES ('2269', '500243', '彭水苗族土家族自治县');
INSERT INTO `city` VALUES ('2270', '510000', '四川省');
INSERT INTO `city` VALUES ('2271', '510100', '成都市');
INSERT INTO `city` VALUES ('2272', '510104', '锦江区');
INSERT INTO `city` VALUES ('2273', '510105', '青羊区');
INSERT INTO `city` VALUES ('2274', '510106', '金牛区');
INSERT INTO `city` VALUES ('2275', '510107', '武侯区');
INSERT INTO `city` VALUES ('2276', '510108', '成华区');
INSERT INTO `city` VALUES ('2277', '510112', '龙泉驿区');
INSERT INTO `city` VALUES ('2278', '510113', '青白江区');
INSERT INTO `city` VALUES ('2279', '510114', '新都区');
INSERT INTO `city` VALUES ('2280', '510115', '温江区');
INSERT INTO `city` VALUES ('2281', '510116', '双流区');
INSERT INTO `city` VALUES ('2282', '510121', '金堂县');
INSERT INTO `city` VALUES ('2283', '510124', '郫县');
INSERT INTO `city` VALUES ('2284', '510129', '大邑县');
INSERT INTO `city` VALUES ('2285', '510131', '蒲江县');
INSERT INTO `city` VALUES ('2286', '510132', '新津县');
INSERT INTO `city` VALUES ('2287', '510181', '都江堰市');
INSERT INTO `city` VALUES ('2288', '510182', '彭州市');
INSERT INTO `city` VALUES ('2289', '510183', '邛崃市');
INSERT INTO `city` VALUES ('2290', '510184', '崇州市');
INSERT INTO `city` VALUES ('2291', '510300', '自贡市');
INSERT INTO `city` VALUES ('2292', '510302', '自流井区');
INSERT INTO `city` VALUES ('2293', '510303', '贡井区');
INSERT INTO `city` VALUES ('2294', '510304', '大安区');
INSERT INTO `city` VALUES ('2295', '510311', '沿滩区');
INSERT INTO `city` VALUES ('2296', '510321', '荣县');
INSERT INTO `city` VALUES ('2297', '510322', '富顺县');
INSERT INTO `city` VALUES ('2298', '510400', '攀枝花市');
INSERT INTO `city` VALUES ('2299', '510402', '东区');
INSERT INTO `city` VALUES ('2300', '510403', '西区');
INSERT INTO `city` VALUES ('2301', '510411', '仁和区');
INSERT INTO `city` VALUES ('2302', '510421', '米易县');
INSERT INTO `city` VALUES ('2303', '510422', '盐边县');
INSERT INTO `city` VALUES ('2304', '510500', '泸州市');
INSERT INTO `city` VALUES ('2305', '510502', '江阳区');
INSERT INTO `city` VALUES ('2306', '510503', '纳溪区');
INSERT INTO `city` VALUES ('2307', '510504', '龙马潭区');
INSERT INTO `city` VALUES ('2308', '510521', '泸县');
INSERT INTO `city` VALUES ('2309', '510522', '合江县');
INSERT INTO `city` VALUES ('2310', '510524', '叙永县');
INSERT INTO `city` VALUES ('2311', '510525', '古蔺县');
INSERT INTO `city` VALUES ('2312', '510600', '德阳市');
INSERT INTO `city` VALUES ('2313', '510603', '旌阳区');
INSERT INTO `city` VALUES ('2314', '510623', '中江县');
INSERT INTO `city` VALUES ('2315', '510626', '罗江县');
INSERT INTO `city` VALUES ('2316', '510681', '广汉市');
INSERT INTO `city` VALUES ('2317', '510682', '什邡市');
INSERT INTO `city` VALUES ('2318', '510683', '绵竹市');
INSERT INTO `city` VALUES ('2319', '510700', '绵阳市');
INSERT INTO `city` VALUES ('2320', '510703', '涪城区');
INSERT INTO `city` VALUES ('2321', '510704', '游仙区');
INSERT INTO `city` VALUES ('2322', '510722', '三台县');
INSERT INTO `city` VALUES ('2323', '510723', '盐亭县');
INSERT INTO `city` VALUES ('2324', '510724', '安县');
INSERT INTO `city` VALUES ('2325', '510725', '梓潼县');
INSERT INTO `city` VALUES ('2326', '510726', '北川羌族自治县');
INSERT INTO `city` VALUES ('2327', '510727', '平武县');
INSERT INTO `city` VALUES ('2328', '510781', '江油市');
INSERT INTO `city` VALUES ('2329', '510800', '广元市');
INSERT INTO `city` VALUES ('2330', '510802', '利州区');
INSERT INTO `city` VALUES ('2331', '510811', '昭化区');
INSERT INTO `city` VALUES ('2332', '510812', '朝天区');
INSERT INTO `city` VALUES ('2333', '510821', '旺苍县');
INSERT INTO `city` VALUES ('2334', '510822', '青川县');
INSERT INTO `city` VALUES ('2335', '510823', '剑阁县');
INSERT INTO `city` VALUES ('2336', '510824', '苍溪县');
INSERT INTO `city` VALUES ('2337', '510900', '遂宁市');
INSERT INTO `city` VALUES ('2338', '510903', '船山区');
INSERT INTO `city` VALUES ('2339', '510904', '安居区');
INSERT INTO `city` VALUES ('2340', '510921', '蓬溪县');
INSERT INTO `city` VALUES ('2341', '510922', '射洪县');
INSERT INTO `city` VALUES ('2342', '510923', '大英县');
INSERT INTO `city` VALUES ('2343', '511000', '内江市');
INSERT INTO `city` VALUES ('2344', '511002', '市中区');
INSERT INTO `city` VALUES ('2345', '511011', '东兴区');
INSERT INTO `city` VALUES ('2346', '511024', '威远县');
INSERT INTO `city` VALUES ('2347', '511025', '资中县');
INSERT INTO `city` VALUES ('2348', '511028', '隆昌县');
INSERT INTO `city` VALUES ('2349', '511100', '乐山市');
INSERT INTO `city` VALUES ('2350', '511102', '市中区');
INSERT INTO `city` VALUES ('2351', '511111', '沙湾区');
INSERT INTO `city` VALUES ('2352', '511112', '五通桥区');
INSERT INTO `city` VALUES ('2353', '511113', '金口河区');
INSERT INTO `city` VALUES ('2354', '511123', '犍为县');
INSERT INTO `city` VALUES ('2355', '511124', '井研县');
INSERT INTO `city` VALUES ('2356', '511126', '夹江县');
INSERT INTO `city` VALUES ('2357', '511129', '沐川县');
INSERT INTO `city` VALUES ('2358', '511132', '峨边彝族自治县');
INSERT INTO `city` VALUES ('2359', '511133', '马边彝族自治县');
INSERT INTO `city` VALUES ('2360', '511181', '峨眉山市');
INSERT INTO `city` VALUES ('2361', '511300', '南充市');
INSERT INTO `city` VALUES ('2362', '511302', '顺庆区');
INSERT INTO `city` VALUES ('2363', '511303', '高坪区');
INSERT INTO `city` VALUES ('2364', '511304', '嘉陵区');
INSERT INTO `city` VALUES ('2365', '511321', '南部县');
INSERT INTO `city` VALUES ('2366', '511322', '营山县');
INSERT INTO `city` VALUES ('2367', '511323', '蓬安县');
INSERT INTO `city` VALUES ('2368', '511324', '仪陇县');
INSERT INTO `city` VALUES ('2369', '511325', '西充县');
INSERT INTO `city` VALUES ('2370', '511381', '阆中市');
INSERT INTO `city` VALUES ('2371', '511400', '眉山市');
INSERT INTO `city` VALUES ('2372', '511402', '东坡区');
INSERT INTO `city` VALUES ('2373', '511403', '彭山区');
INSERT INTO `city` VALUES ('2374', '511421', '仁寿县');
INSERT INTO `city` VALUES ('2375', '511423', '洪雅县');
INSERT INTO `city` VALUES ('2376', '511424', '丹棱县');
INSERT INTO `city` VALUES ('2377', '511425', '青神县');
INSERT INTO `city` VALUES ('2378', '511500', '宜宾市');
INSERT INTO `city` VALUES ('2379', '511502', '翠屏区');
INSERT INTO `city` VALUES ('2380', '511503', '南溪区');
INSERT INTO `city` VALUES ('2381', '511521', '宜宾县');
INSERT INTO `city` VALUES ('2382', '511523', '江安县');
INSERT INTO `city` VALUES ('2383', '511524', '长宁县');
INSERT INTO `city` VALUES ('2384', '511525', '高县');
INSERT INTO `city` VALUES ('2385', '511526', '珙县');
INSERT INTO `city` VALUES ('2386', '511527', '筠连县');
INSERT INTO `city` VALUES ('2387', '511528', '兴文县');
INSERT INTO `city` VALUES ('2388', '511529', '屏山县');
INSERT INTO `city` VALUES ('2389', '511600', '广安市');
INSERT INTO `city` VALUES ('2390', '511602', '广安区');
INSERT INTO `city` VALUES ('2391', '511603', '前锋区');
INSERT INTO `city` VALUES ('2392', '511621', '岳池县');
INSERT INTO `city` VALUES ('2393', '511622', '武胜县');
INSERT INTO `city` VALUES ('2394', '511623', '邻水县');
INSERT INTO `city` VALUES ('2395', '511681', '华蓥市');
INSERT INTO `city` VALUES ('2396', '511700', '达州市');
INSERT INTO `city` VALUES ('2397', '511702', '通川区');
INSERT INTO `city` VALUES ('2398', '511703', '达川区');
INSERT INTO `city` VALUES ('2399', '511722', '宣汉县');
INSERT INTO `city` VALUES ('2400', '511723', '开江县');
INSERT INTO `city` VALUES ('2401', '511724', '大竹县');
INSERT INTO `city` VALUES ('2402', '511725', '渠县');
INSERT INTO `city` VALUES ('2403', '511781', '万源市');
INSERT INTO `city` VALUES ('2404', '511800', '雅安市');
INSERT INTO `city` VALUES ('2405', '511802', '雨城区');
INSERT INTO `city` VALUES ('2406', '511803', '名山区');
INSERT INTO `city` VALUES ('2407', '511822', '荥经县');
INSERT INTO `city` VALUES ('2408', '511823', '汉源县');
INSERT INTO `city` VALUES ('2409', '511824', '石棉县');
INSERT INTO `city` VALUES ('2410', '511825', '天全县');
INSERT INTO `city` VALUES ('2411', '511826', '芦山县');
INSERT INTO `city` VALUES ('2412', '511827', '宝兴县');
INSERT INTO `city` VALUES ('2413', '511900', '巴中市');
INSERT INTO `city` VALUES ('2414', '511902', '巴州区');
INSERT INTO `city` VALUES ('2415', '511903', '恩阳区');
INSERT INTO `city` VALUES ('2416', '511921', '通江县');
INSERT INTO `city` VALUES ('2417', '511922', '南江县');
INSERT INTO `city` VALUES ('2418', '511923', '平昌县');
INSERT INTO `city` VALUES ('2419', '512000', '资阳市');
INSERT INTO `city` VALUES ('2420', '512002', '雁江区');
INSERT INTO `city` VALUES ('2421', '512021', '安岳县');
INSERT INTO `city` VALUES ('2422', '512022', '乐至县');
INSERT INTO `city` VALUES ('2423', '512081', '简阳市');
INSERT INTO `city` VALUES ('2424', '513200', '阿坝藏族羌族自治州');
INSERT INTO `city` VALUES ('2425', '513201', '马尔康区');
INSERT INTO `city` VALUES ('2426', '513221', '汶川县');
INSERT INTO `city` VALUES ('2427', '513222', '理县');
INSERT INTO `city` VALUES ('2428', '513223', '茂县');
INSERT INTO `city` VALUES ('2429', '513224', '松潘县');
INSERT INTO `city` VALUES ('2430', '513225', '九寨沟县');
INSERT INTO `city` VALUES ('2431', '513226', '金川县');
INSERT INTO `city` VALUES ('2432', '513227', '小金县');
INSERT INTO `city` VALUES ('2433', '513228', '黑水县');
INSERT INTO `city` VALUES ('2434', '513230', '壤塘县');
INSERT INTO `city` VALUES ('2435', '513231', '阿坝县');
INSERT INTO `city` VALUES ('2436', '513232', '若尔盖县');
INSERT INTO `city` VALUES ('2437', '513233', '红原县');
INSERT INTO `city` VALUES ('2438', '513300', '甘孜藏族自治州');
INSERT INTO `city` VALUES ('2439', '513301', '康定市');
INSERT INTO `city` VALUES ('2440', '513322', '泸定县');
INSERT INTO `city` VALUES ('2441', '513323', '丹巴县');
INSERT INTO `city` VALUES ('2442', '513324', '九龙县');
INSERT INTO `city` VALUES ('2443', '513325', '雅江县');
INSERT INTO `city` VALUES ('2444', '513326', '道孚县');
INSERT INTO `city` VALUES ('2445', '513327', '炉霍县');
INSERT INTO `city` VALUES ('2446', '513328', '甘孜县');
INSERT INTO `city` VALUES ('2447', '513329', '新龙县');
INSERT INTO `city` VALUES ('2448', '513330', '德格县');
INSERT INTO `city` VALUES ('2449', '513331', '白玉县');
INSERT INTO `city` VALUES ('2450', '513332', '石渠县');
INSERT INTO `city` VALUES ('2451', '513333', '色达县');
INSERT INTO `city` VALUES ('2452', '513334', '理塘县');
INSERT INTO `city` VALUES ('2453', '513335', '巴塘县');
INSERT INTO `city` VALUES ('2454', '513336', '乡城县');
INSERT INTO `city` VALUES ('2455', '513337', '稻城县');
INSERT INTO `city` VALUES ('2456', '513338', '得荣县');
INSERT INTO `city` VALUES ('2457', '513400', '凉山彝族自治州');
INSERT INTO `city` VALUES ('2458', '513401', '西昌市');
INSERT INTO `city` VALUES ('2459', '513422', '木里藏族自治县');
INSERT INTO `city` VALUES ('2460', '513423', '盐源县');
INSERT INTO `city` VALUES ('2461', '513424', '德昌县');
INSERT INTO `city` VALUES ('2462', '513425', '会理县');
INSERT INTO `city` VALUES ('2463', '513426', '会东县');
INSERT INTO `city` VALUES ('2464', '513427', '宁南县');
INSERT INTO `city` VALUES ('2465', '513428', '普格县');
INSERT INTO `city` VALUES ('2466', '513429', '布拖县');
INSERT INTO `city` VALUES ('2467', '513430', '金阳县');
INSERT INTO `city` VALUES ('2468', '513431', '昭觉县');
INSERT INTO `city` VALUES ('2469', '513432', '喜德县');
INSERT INTO `city` VALUES ('2470', '513433', '冕宁县');
INSERT INTO `city` VALUES ('2471', '513434', '越西县');
INSERT INTO `city` VALUES ('2472', '513435', '甘洛县');
INSERT INTO `city` VALUES ('2473', '513436', '美姑县');
INSERT INTO `city` VALUES ('2474', '513437', '雷波县');
INSERT INTO `city` VALUES ('2475', '520000', '贵州省');
INSERT INTO `city` VALUES ('2476', '520100', '贵阳市');
INSERT INTO `city` VALUES ('2477', '520102', '南明区');
INSERT INTO `city` VALUES ('2478', '520103', '云岩区');
INSERT INTO `city` VALUES ('2479', '520111', '花溪区');
INSERT INTO `city` VALUES ('2480', '520112', '乌当区');
INSERT INTO `city` VALUES ('2481', '520113', '白云区');
INSERT INTO `city` VALUES ('2482', '520115', '观山湖区');
INSERT INTO `city` VALUES ('2483', '520121', '开阳县');
INSERT INTO `city` VALUES ('2484', '520122', '息烽县');
INSERT INTO `city` VALUES ('2485', '520123', '修文县');
INSERT INTO `city` VALUES ('2486', '520181', '清镇市');
INSERT INTO `city` VALUES ('2487', '520200', '六盘水市');
INSERT INTO `city` VALUES ('2488', '520201', '钟山区');
INSERT INTO `city` VALUES ('2489', '520203', '六枝特区');
INSERT INTO `city` VALUES ('2490', '520221', '水城县');
INSERT INTO `city` VALUES ('2491', '520222', '盘县');
INSERT INTO `city` VALUES ('2492', '520300', '遵义市');
INSERT INTO `city` VALUES ('2493', '520302', '红花岗区');
INSERT INTO `city` VALUES ('2494', '520303', '汇川区');
INSERT INTO `city` VALUES ('2495', '520321', '遵义县');
INSERT INTO `city` VALUES ('2496', '520322', '桐梓县');
INSERT INTO `city` VALUES ('2497', '520323', '绥阳县');
INSERT INTO `city` VALUES ('2498', '520324', '正安县');
INSERT INTO `city` VALUES ('2499', '520325', '道真仡佬族苗族自治县');
INSERT INTO `city` VALUES ('2500', '520326', '务川仡佬族苗族自治县');
INSERT INTO `city` VALUES ('2501', '520327', '凤冈县');
INSERT INTO `city` VALUES ('2502', '520328', '湄潭县');
INSERT INTO `city` VALUES ('2503', '520329', '余庆县');
INSERT INTO `city` VALUES ('2504', '520330', '习水县');
INSERT INTO `city` VALUES ('2505', '520381', '赤水市');
INSERT INTO `city` VALUES ('2506', '520382', '仁怀市');
INSERT INTO `city` VALUES ('2507', '520400', '安顺市');
INSERT INTO `city` VALUES ('2508', '520402', '西秀区');
INSERT INTO `city` VALUES ('2509', '520403', '平坝区');
INSERT INTO `city` VALUES ('2510', '520422', '普定县');
INSERT INTO `city` VALUES ('2511', '520423', '镇宁布依族苗族自治县');
INSERT INTO `city` VALUES ('2512', '520424', '关岭布依族苗族自治县');
INSERT INTO `city` VALUES ('2513', '520425', '紫云苗族布依族自治县');
INSERT INTO `city` VALUES ('2514', '520500', '毕节市');
INSERT INTO `city` VALUES ('2515', '520502', '七星关区');
INSERT INTO `city` VALUES ('2516', '520521', '大方县');
INSERT INTO `city` VALUES ('2517', '520522', '黔西县');
INSERT INTO `city` VALUES ('2518', '520523', '金沙县');
INSERT INTO `city` VALUES ('2519', '520524', '织金县');
INSERT INTO `city` VALUES ('2520', '520525', '纳雍县');
INSERT INTO `city` VALUES ('2521', '520526', '威宁彝族回族苗族自治县');
INSERT INTO `city` VALUES ('2522', '520527', '赫章县');
INSERT INTO `city` VALUES ('2523', '520600', '铜仁市');
INSERT INTO `city` VALUES ('2524', '520602', '碧江区');
INSERT INTO `city` VALUES ('2525', '520603', '万山区');
INSERT INTO `city` VALUES ('2526', '520621', '江口县');
INSERT INTO `city` VALUES ('2527', '520622', '玉屏侗族自治县');
INSERT INTO `city` VALUES ('2528', '520623', '石阡县');
INSERT INTO `city` VALUES ('2529', '520624', '思南县');
INSERT INTO `city` VALUES ('2530', '520625', '印江土家族苗族自治县');
INSERT INTO `city` VALUES ('2531', '520626', '德江县');
INSERT INTO `city` VALUES ('2532', '520627', '沿河土家族自治县');
INSERT INTO `city` VALUES ('2533', '520628', '松桃苗族自治县');
INSERT INTO `city` VALUES ('2534', '522300', '黔西南布依族苗族自治州');
INSERT INTO `city` VALUES ('2535', '522301', '兴义市');
INSERT INTO `city` VALUES ('2536', '522322', '兴仁县');
INSERT INTO `city` VALUES ('2537', '522323', '普安县');
INSERT INTO `city` VALUES ('2538', '522324', '晴隆县');
INSERT INTO `city` VALUES ('2539', '522325', '贞丰县');
INSERT INTO `city` VALUES ('2540', '522326', '望谟县');
INSERT INTO `city` VALUES ('2541', '522327', '册亨县');
INSERT INTO `city` VALUES ('2542', '522328', '安龙县');
INSERT INTO `city` VALUES ('2543', '522600', '黔东南苗族侗族自治州');
INSERT INTO `city` VALUES ('2544', '522601', '凯里市');
INSERT INTO `city` VALUES ('2545', '522622', '黄平县');
INSERT INTO `city` VALUES ('2546', '522623', '施秉县');
INSERT INTO `city` VALUES ('2547', '522624', '三穗县');
INSERT INTO `city` VALUES ('2548', '522625', '镇远县');
INSERT INTO `city` VALUES ('2549', '522626', '岑巩县');
INSERT INTO `city` VALUES ('2550', '522627', '天柱县');
INSERT INTO `city` VALUES ('2551', '522628', '锦屏县');
INSERT INTO `city` VALUES ('2552', '522629', '剑河县');
INSERT INTO `city` VALUES ('2553', '522630', '台江县');
INSERT INTO `city` VALUES ('2554', '522631', '黎平县');
INSERT INTO `city` VALUES ('2555', '522632', '榕江县');
INSERT INTO `city` VALUES ('2556', '522633', '从江县');
INSERT INTO `city` VALUES ('2557', '522634', '雷山县');
INSERT INTO `city` VALUES ('2558', '522635', '麻江县');
INSERT INTO `city` VALUES ('2559', '522636', '丹寨县');
INSERT INTO `city` VALUES ('2560', '522700', '黔南布依族苗族自治州');
INSERT INTO `city` VALUES ('2561', '522701', '都匀市');
INSERT INTO `city` VALUES ('2562', '522702', '福泉市');
INSERT INTO `city` VALUES ('2563', '522722', '荔波县');
INSERT INTO `city` VALUES ('2564', '522723', '贵定县');
INSERT INTO `city` VALUES ('2565', '522725', '瓮安县');
INSERT INTO `city` VALUES ('2566', '522726', '独山县');
INSERT INTO `city` VALUES ('2567', '522727', '平塘县');
INSERT INTO `city` VALUES ('2568', '522728', '罗甸县');
INSERT INTO `city` VALUES ('2569', '522729', '长顺县');
INSERT INTO `city` VALUES ('2570', '522730', '龙里县');
INSERT INTO `city` VALUES ('2571', '522731', '惠水县');
INSERT INTO `city` VALUES ('2572', '522732', '三都水族自治县');
INSERT INTO `city` VALUES ('2573', '530000', '云南省');
INSERT INTO `city` VALUES ('2574', '530100', '昆明市');
INSERT INTO `city` VALUES ('2575', '530102', '五华区');
INSERT INTO `city` VALUES ('2576', '530103', '盘龙区');
INSERT INTO `city` VALUES ('2577', '530111', '官渡区');
INSERT INTO `city` VALUES ('2578', '530112', '西山区');
INSERT INTO `city` VALUES ('2579', '530113', '东川区');
INSERT INTO `city` VALUES ('2580', '530114', '呈贡区');
INSERT INTO `city` VALUES ('2581', '530122', '晋宁县');
INSERT INTO `city` VALUES ('2582', '530124', '富民县');
INSERT INTO `city` VALUES ('2583', '530125', '宜良县');
INSERT INTO `city` VALUES ('2584', '530126', '石林彝族自治县');
INSERT INTO `city` VALUES ('2585', '530127', '嵩明县');
INSERT INTO `city` VALUES ('2586', '530128', '禄劝彝族苗族自治县');
INSERT INTO `city` VALUES ('2587', '530129', '寻甸回族彝族自治县');
INSERT INTO `city` VALUES ('2588', '530181', '安宁市');
INSERT INTO `city` VALUES ('2589', '530300', '曲靖市');
INSERT INTO `city` VALUES ('2590', '530302', '麒麟区');
INSERT INTO `city` VALUES ('2591', '530321', '马龙县');
INSERT INTO `city` VALUES ('2592', '530322', '陆良县');
INSERT INTO `city` VALUES ('2593', '530323', '师宗县');
INSERT INTO `city` VALUES ('2594', '530324', '罗平县');
INSERT INTO `city` VALUES ('2595', '530325', '富源县');
INSERT INTO `city` VALUES ('2596', '530326', '会泽县');
INSERT INTO `city` VALUES ('2597', '530328', '沾益县');
INSERT INTO `city` VALUES ('2598', '530381', '宣威市');
INSERT INTO `city` VALUES ('2599', '530400', '玉溪市');
INSERT INTO `city` VALUES ('2600', '530402', '红塔区');
INSERT INTO `city` VALUES ('2601', '530403', '江川区');
INSERT INTO `city` VALUES ('2602', '530422', '澄江县');
INSERT INTO `city` VALUES ('2603', '530423', '通海县');
INSERT INTO `city` VALUES ('2604', '530424', '华宁县');
INSERT INTO `city` VALUES ('2605', '530425', '易门县');
INSERT INTO `city` VALUES ('2606', '530426', '峨山彝族自治县');
INSERT INTO `city` VALUES ('2607', '530427', '新平彝族傣族自治县');
INSERT INTO `city` VALUES ('2608', '530428', '元江哈尼族彝族傣族自治县');
INSERT INTO `city` VALUES ('2609', '530500', '保山市');
INSERT INTO `city` VALUES ('2610', '530502', '隆阳区');
INSERT INTO `city` VALUES ('2611', '530521', '施甸县');
INSERT INTO `city` VALUES ('2612', '530581', '腾冲市');
INSERT INTO `city` VALUES ('2613', '530523', '龙陵县');
INSERT INTO `city` VALUES ('2614', '530524', '昌宁县');
INSERT INTO `city` VALUES ('2615', '530600', '昭通市');
INSERT INTO `city` VALUES ('2616', '530602', '昭阳区');
INSERT INTO `city` VALUES ('2617', '530621', '鲁甸县');
INSERT INTO `city` VALUES ('2618', '530622', '巧家县');
INSERT INTO `city` VALUES ('2619', '530623', '盐津县');
INSERT INTO `city` VALUES ('2620', '530624', '大关县');
INSERT INTO `city` VALUES ('2621', '530625', '永善县');
INSERT INTO `city` VALUES ('2622', '530626', '绥江县');
INSERT INTO `city` VALUES ('2623', '530627', '镇雄县');
INSERT INTO `city` VALUES ('2624', '530628', '彝良县');
INSERT INTO `city` VALUES ('2625', '530629', '威信县');
INSERT INTO `city` VALUES ('2626', '530630', '水富县');
INSERT INTO `city` VALUES ('2627', '530700', '丽江市');
INSERT INTO `city` VALUES ('2628', '530702', '古城区');
INSERT INTO `city` VALUES ('2629', '530721', '玉龙纳西族自治县');
INSERT INTO `city` VALUES ('2630', '530722', '永胜县');
INSERT INTO `city` VALUES ('2631', '530723', '华坪县');
INSERT INTO `city` VALUES ('2632', '530724', '宁蒗彝族自治县');
INSERT INTO `city` VALUES ('2633', '530800', '普洱市');
INSERT INTO `city` VALUES ('2634', '530802', '思茅区');
INSERT INTO `city` VALUES ('2635', '530821', '宁洱哈尼族彝族自治县');
INSERT INTO `city` VALUES ('2636', '530822', '墨江哈尼族自治县');
INSERT INTO `city` VALUES ('2637', '530823', '景东彝族自治县');
INSERT INTO `city` VALUES ('2638', '530824', '景谷傣族彝族自治县');
INSERT INTO `city` VALUES ('2639', '530825', '镇沅彝族哈尼族拉祜族自治县');
INSERT INTO `city` VALUES ('2640', '530826', '江城哈尼族彝族自治县');
INSERT INTO `city` VALUES ('2641', '530827', '孟连傣族拉祜族佤族自治县');
INSERT INTO `city` VALUES ('2642', '530828', '澜沧拉祜族自治县');
INSERT INTO `city` VALUES ('2643', '530829', '西盟佤族自治县');
INSERT INTO `city` VALUES ('2644', '530900', '临沧市');
INSERT INTO `city` VALUES ('2645', '530902', '临翔区');
INSERT INTO `city` VALUES ('2646', '530921', '凤庆县');
INSERT INTO `city` VALUES ('2647', '530922', '云县');
INSERT INTO `city` VALUES ('2648', '530923', '永德县');
INSERT INTO `city` VALUES ('2649', '530924', '镇康县');
INSERT INTO `city` VALUES ('2650', '530925', '双江拉祜族佤族布朗族傣族自治县');
INSERT INTO `city` VALUES ('2651', '530926', '耿马傣族佤族自治县');
INSERT INTO `city` VALUES ('2652', '530927', '沧源佤族自治县');
INSERT INTO `city` VALUES ('2653', '532300', '楚雄彝族自治州');
INSERT INTO `city` VALUES ('2654', '532301', '楚雄市');
INSERT INTO `city` VALUES ('2655', '532322', '双柏县');
INSERT INTO `city` VALUES ('2656', '532323', '牟定县');
INSERT INTO `city` VALUES ('2657', '532324', '南华县');
INSERT INTO `city` VALUES ('2658', '532325', '姚安县');
INSERT INTO `city` VALUES ('2659', '532326', '大姚县');
INSERT INTO `city` VALUES ('2660', '532327', '永仁县');
INSERT INTO `city` VALUES ('2661', '532328', '元谋县');
INSERT INTO `city` VALUES ('2662', '532329', '武定县');
INSERT INTO `city` VALUES ('2663', '532331', '禄丰县');
INSERT INTO `city` VALUES ('2664', '532500', '红河哈尼族彝族自治州');
INSERT INTO `city` VALUES ('2665', '532501', '个旧市');
INSERT INTO `city` VALUES ('2666', '532502', '开远市');
INSERT INTO `city` VALUES ('2667', '532503', '蒙自市');
INSERT INTO `city` VALUES ('2668', '532504', '弥勒市');
INSERT INTO `city` VALUES ('2669', '532523', '屏边苗族自治县');
INSERT INTO `city` VALUES ('2670', '532524', '建水县');
INSERT INTO `city` VALUES ('2671', '532525', '石屏县');
INSERT INTO `city` VALUES ('2672', '532527', '泸西县');
INSERT INTO `city` VALUES ('2673', '532528', '元阳县');
INSERT INTO `city` VALUES ('2674', '532529', '红河县');
INSERT INTO `city` VALUES ('2675', '532530', '金平苗族瑶族傣族自治县');
INSERT INTO `city` VALUES ('2676', '532531', '绿春县');
INSERT INTO `city` VALUES ('2677', '532532', '河口瑶族自治县');
INSERT INTO `city` VALUES ('2678', '532600', '文山壮族苗族自治州');
INSERT INTO `city` VALUES ('2679', '532601', '文山市');
INSERT INTO `city` VALUES ('2680', '532622', '砚山县');
INSERT INTO `city` VALUES ('2681', '532623', '西畴县');
INSERT INTO `city` VALUES ('2682', '532624', '麻栗坡县');
INSERT INTO `city` VALUES ('2683', '532625', '马关县');
INSERT INTO `city` VALUES ('2684', '532626', '丘北县');
INSERT INTO `city` VALUES ('2685', '532627', '广南县');
INSERT INTO `city` VALUES ('2686', '532628', '富宁县');
INSERT INTO `city` VALUES ('2687', '532800', '西双版纳傣族自治州');
INSERT INTO `city` VALUES ('2688', '532801', '景洪市');
INSERT INTO `city` VALUES ('2689', '532822', '勐海县');
INSERT INTO `city` VALUES ('2690', '532823', '勐腊县');
INSERT INTO `city` VALUES ('2691', '532900', '大理白族自治州');
INSERT INTO `city` VALUES ('2692', '532901', '大理市');
INSERT INTO `city` VALUES ('2693', '532922', '漾濞彝族自治县');
INSERT INTO `city` VALUES ('2694', '532923', '祥云县');
INSERT INTO `city` VALUES ('2695', '532924', '宾川县');
INSERT INTO `city` VALUES ('2696', '532925', '弥渡县');
INSERT INTO `city` VALUES ('2697', '532926', '南涧彝族自治县');
INSERT INTO `city` VALUES ('2698', '532927', '巍山彝族回族自治县');
INSERT INTO `city` VALUES ('2699', '532928', '永平县');
INSERT INTO `city` VALUES ('2700', '532929', '云龙县');
INSERT INTO `city` VALUES ('2701', '532930', '洱源县');
INSERT INTO `city` VALUES ('2702', '532931', '剑川县');
INSERT INTO `city` VALUES ('2703', '532932', '鹤庆县');
INSERT INTO `city` VALUES ('2704', '533100', '德宏傣族景颇族自治州');
INSERT INTO `city` VALUES ('2705', '533102', '瑞丽市');
INSERT INTO `city` VALUES ('2706', '533103', '芒市');
INSERT INTO `city` VALUES ('2707', '533122', '梁河县');
INSERT INTO `city` VALUES ('2708', '533123', '盈江县');
INSERT INTO `city` VALUES ('2709', '533124', '陇川县');
INSERT INTO `city` VALUES ('2710', '533300', '怒江傈僳族自治州');
INSERT INTO `city` VALUES ('2711', '533321', '泸水县');
INSERT INTO `city` VALUES ('2712', '533323', '福贡县');
INSERT INTO `city` VALUES ('2713', '533324', '贡山独龙族怒族自治县');
INSERT INTO `city` VALUES ('2714', '533325', '兰坪白族普米族自治县');
INSERT INTO `city` VALUES ('2715', '533400', '迪庆藏族自治州');
INSERT INTO `city` VALUES ('2716', '533401', '香格里拉市');
INSERT INTO `city` VALUES ('2717', '533422', '德钦县');
INSERT INTO `city` VALUES ('2718', '533423', '维西傈僳族自治县');
INSERT INTO `city` VALUES ('2719', '540000', '西藏自治区');
INSERT INTO `city` VALUES ('2720', '540100', '拉萨市');
INSERT INTO `city` VALUES ('2721', '540102', '城关区');
INSERT INTO `city` VALUES ('2722', '540103', '堆龙德庆区');
INSERT INTO `city` VALUES ('2723', '540121', '林周县');
INSERT INTO `city` VALUES ('2724', '540122', '当雄县');
INSERT INTO `city` VALUES ('2725', '540123', '尼木县');
INSERT INTO `city` VALUES ('2726', '540124', '曲水县');
INSERT INTO `city` VALUES ('2727', '540126', '达孜县');
INSERT INTO `city` VALUES ('2728', '540127', '墨竹工卡县');
INSERT INTO `city` VALUES ('2729', '540200', '日喀则市');
INSERT INTO `city` VALUES ('2730', '540202', '桑珠孜区');
INSERT INTO `city` VALUES ('2731', '540221', '南木林县');
INSERT INTO `city` VALUES ('2732', '540222', '江孜县');
INSERT INTO `city` VALUES ('2733', '540223', '定日县');
INSERT INTO `city` VALUES ('2734', '540224', '萨迦县');
INSERT INTO `city` VALUES ('2735', '540225', '拉孜县');
INSERT INTO `city` VALUES ('2736', '540226', '昂仁县');
INSERT INTO `city` VALUES ('2737', '540227', '谢通门县');
INSERT INTO `city` VALUES ('2738', '540228', '白朗县');
INSERT INTO `city` VALUES ('2739', '540229', '仁布县');
INSERT INTO `city` VALUES ('2740', '540230', '康马县');
INSERT INTO `city` VALUES ('2741', '540231', '定结县');
INSERT INTO `city` VALUES ('2742', '540232', '仲巴县');
INSERT INTO `city` VALUES ('2743', '540233', '亚东县');
INSERT INTO `city` VALUES ('2744', '540234', '吉隆县');
INSERT INTO `city` VALUES ('2745', '540235', '聂拉木县');
INSERT INTO `city` VALUES ('2746', '540236', '萨嘎县');
INSERT INTO `city` VALUES ('2747', '540237', '岗巴县');
INSERT INTO `city` VALUES ('2748', '540300', '昌都市');
INSERT INTO `city` VALUES ('2749', '540302', '卡若区');
INSERT INTO `city` VALUES ('2750', '540321', '江达县');
INSERT INTO `city` VALUES ('2751', '540322', '贡觉县');
INSERT INTO `city` VALUES ('2752', '540323', '类乌齐县');
INSERT INTO `city` VALUES ('2753', '540324', '丁青县');
INSERT INTO `city` VALUES ('2754', '540325', '察雅县');
INSERT INTO `city` VALUES ('2755', '540326', '八宿县');
INSERT INTO `city` VALUES ('2756', '540327', '左贡县');
INSERT INTO `city` VALUES ('2757', '540328', '芒康县');
INSERT INTO `city` VALUES ('2758', '540329', '洛隆县');
INSERT INTO `city` VALUES ('2759', '540330', '边坝县');
INSERT INTO `city` VALUES ('2760', '540400', '林芝市');
INSERT INTO `city` VALUES ('2761', '540402', '巴宜区');
INSERT INTO `city` VALUES ('2762', '540421', '工布江达县');
INSERT INTO `city` VALUES ('2763', '540422', '米林县');
INSERT INTO `city` VALUES ('2764', '540423', '墨脱县');
INSERT INTO `city` VALUES ('2765', '540424', '波密县');
INSERT INTO `city` VALUES ('2766', '540425', '察隅县');
INSERT INTO `city` VALUES ('2767', '540426', '朗县');
INSERT INTO `city` VALUES ('2768', '542200', '山南地区');
INSERT INTO `city` VALUES ('2769', '542221', '乃东县');
INSERT INTO `city` VALUES ('2770', '542222', '扎囊县');
INSERT INTO `city` VALUES ('2771', '542223', '贡嘎县');
INSERT INTO `city` VALUES ('2772', '542224', '桑日县');
INSERT INTO `city` VALUES ('2773', '542225', '琼结县');
INSERT INTO `city` VALUES ('2774', '542226', '曲松县');
INSERT INTO `city` VALUES ('2775', '542227', '措美县');
INSERT INTO `city` VALUES ('2776', '542228', '洛扎县');
INSERT INTO `city` VALUES ('2777', '542229', '加查县');
INSERT INTO `city` VALUES ('2778', '542231', '隆子县');
INSERT INTO `city` VALUES ('2779', '542232', '错那县');
INSERT INTO `city` VALUES ('2780', '542233', '浪卡子县');
INSERT INTO `city` VALUES ('2781', '542400', '那曲地区');
INSERT INTO `city` VALUES ('2782', '542421', '那曲县');
INSERT INTO `city` VALUES ('2783', '542422', '嘉黎县');
INSERT INTO `city` VALUES ('2784', '542423', '比如县');
INSERT INTO `city` VALUES ('2785', '542424', '聂荣县');
INSERT INTO `city` VALUES ('2786', '542425', '安多县');
INSERT INTO `city` VALUES ('2787', '542426', '申扎县');
INSERT INTO `city` VALUES ('2788', '542427', '索县');
INSERT INTO `city` VALUES ('2789', '542428', '班戈县');
INSERT INTO `city` VALUES ('2790', '542429', '巴青县');
INSERT INTO `city` VALUES ('2791', '542430', '尼玛县');
INSERT INTO `city` VALUES ('2792', '542431', '双湖县');
INSERT INTO `city` VALUES ('2793', '542500', '阿里地区');
INSERT INTO `city` VALUES ('2794', '542521', '普兰县');
INSERT INTO `city` VALUES ('2795', '542522', '札达县');
INSERT INTO `city` VALUES ('2796', '542523', '噶尔县');
INSERT INTO `city` VALUES ('2797', '542524', '日土县');
INSERT INTO `city` VALUES ('2798', '542525', '革吉县');
INSERT INTO `city` VALUES ('2799', '542526', '改则县');
INSERT INTO `city` VALUES ('2800', '542527', '措勤县');
INSERT INTO `city` VALUES ('2801', '610000', '陕西省');
INSERT INTO `city` VALUES ('2802', '610100', '西安市');
INSERT INTO `city` VALUES ('2803', '610102', '新城区');
INSERT INTO `city` VALUES ('2804', '610103', '碑林区');
INSERT INTO `city` VALUES ('2805', '610104', '莲湖区');
INSERT INTO `city` VALUES ('2806', '610111', '灞桥区');
INSERT INTO `city` VALUES ('2807', '610112', '未央区');
INSERT INTO `city` VALUES ('2808', '610113', '雁塔区');
INSERT INTO `city` VALUES ('2809', '610114', '阎良区');
INSERT INTO `city` VALUES ('2810', '610115', '临潼区');
INSERT INTO `city` VALUES ('2811', '610116', '长安区');
INSERT INTO `city` VALUES ('2812', '610117', '高陵区');
INSERT INTO `city` VALUES ('2813', '610122', '蓝田县');
INSERT INTO `city` VALUES ('2814', '610124', '周至县');
INSERT INTO `city` VALUES ('2815', '610125', '户县');
INSERT INTO `city` VALUES ('2816', '610200', '铜川市');
INSERT INTO `city` VALUES ('2817', '610202', '王益区');
INSERT INTO `city` VALUES ('2818', '610203', '印台区');
INSERT INTO `city` VALUES ('2819', '610204', '耀州区');
INSERT INTO `city` VALUES ('2820', '610222', '宜君县');
INSERT INTO `city` VALUES ('2821', '610300', '宝鸡市');
INSERT INTO `city` VALUES ('2822', '610302', '渭滨区');
INSERT INTO `city` VALUES ('2823', '610303', '金台区');
INSERT INTO `city` VALUES ('2824', '610304', '陈仓区');
INSERT INTO `city` VALUES ('2825', '610322', '凤翔县');
INSERT INTO `city` VALUES ('2826', '610323', '岐山县');
INSERT INTO `city` VALUES ('2827', '610324', '扶风县');
INSERT INTO `city` VALUES ('2828', '610326', '眉县');
INSERT INTO `city` VALUES ('2829', '610327', '陇县');
INSERT INTO `city` VALUES ('2830', '610328', '千阳县');
INSERT INTO `city` VALUES ('2831', '610329', '麟游县');
INSERT INTO `city` VALUES ('2832', '610330', '凤县');
INSERT INTO `city` VALUES ('2833', '610331', '太白县');
INSERT INTO `city` VALUES ('2834', '610400', '咸阳市');
INSERT INTO `city` VALUES ('2835', '610402', '秦都区');
INSERT INTO `city` VALUES ('2836', '610403', '杨陵区');
INSERT INTO `city` VALUES ('2837', '610404', '渭城区');
INSERT INTO `city` VALUES ('2838', '610422', '三原县');
INSERT INTO `city` VALUES ('2839', '610423', '泾阳县');
INSERT INTO `city` VALUES ('2840', '610424', '乾县');
INSERT INTO `city` VALUES ('2841', '610425', '礼泉县');
INSERT INTO `city` VALUES ('2842', '610426', '永寿县');
INSERT INTO `city` VALUES ('2843', '610427', '彬县');
INSERT INTO `city` VALUES ('2844', '610428', '长武县');
INSERT INTO `city` VALUES ('2845', '610429', '旬邑县');
INSERT INTO `city` VALUES ('2846', '610430', '淳化县');
INSERT INTO `city` VALUES ('2847', '610431', '武功县');
INSERT INTO `city` VALUES ('2848', '610481', '兴平市');
INSERT INTO `city` VALUES ('2849', '610500', '渭南市');
INSERT INTO `city` VALUES ('2850', '610502', '临渭区');
INSERT INTO `city` VALUES ('2851', '610503', '华州区');
INSERT INTO `city` VALUES ('2852', '610522', '潼关县');
INSERT INTO `city` VALUES ('2853', '610523', '大荔县');
INSERT INTO `city` VALUES ('2854', '610524', '合阳县');
INSERT INTO `city` VALUES ('2855', '610525', '澄城县');
INSERT INTO `city` VALUES ('2856', '610526', '蒲城县');
INSERT INTO `city` VALUES ('2857', '610527', '白水县');
INSERT INTO `city` VALUES ('2858', '610528', '富平县');
INSERT INTO `city` VALUES ('2859', '610581', '韩城市');
INSERT INTO `city` VALUES ('2860', '610582', '华阴市');
INSERT INTO `city` VALUES ('2861', '610600', '延安市');
INSERT INTO `city` VALUES ('2862', '610602', '宝塔区');
INSERT INTO `city` VALUES ('2863', '610621', '延长县');
INSERT INTO `city` VALUES ('2864', '610622', '延川县');
INSERT INTO `city` VALUES ('2865', '610623', '子长县');
INSERT INTO `city` VALUES ('2866', '610624', '安塞县');
INSERT INTO `city` VALUES ('2867', '610625', '志丹县');
INSERT INTO `city` VALUES ('2868', '610626', '吴起县');
INSERT INTO `city` VALUES ('2869', '610627', '甘泉县');
INSERT INTO `city` VALUES ('2870', '610628', '富县');
INSERT INTO `city` VALUES ('2871', '610629', '洛川县');
INSERT INTO `city` VALUES ('2872', '610630', '宜川县');
INSERT INTO `city` VALUES ('2873', '610631', '黄龙县');
INSERT INTO `city` VALUES ('2874', '610632', '黄陵县');
INSERT INTO `city` VALUES ('2875', '610700', '汉中市');
INSERT INTO `city` VALUES ('2876', '610702', '汉台区');
INSERT INTO `city` VALUES ('2877', '610721', '南郑县');
INSERT INTO `city` VALUES ('2878', '610722', '城固县');
INSERT INTO `city` VALUES ('2879', '610723', '洋县');
INSERT INTO `city` VALUES ('2880', '610724', '西乡县');
INSERT INTO `city` VALUES ('2881', '610725', '勉县');
INSERT INTO `city` VALUES ('2882', '610726', '宁强县');
INSERT INTO `city` VALUES ('2883', '610727', '略阳县');
INSERT INTO `city` VALUES ('2884', '610728', '镇巴县');
INSERT INTO `city` VALUES ('2885', '610729', '留坝县');
INSERT INTO `city` VALUES ('2886', '610730', '佛坪县');
INSERT INTO `city` VALUES ('2887', '610800', '榆林市');
INSERT INTO `city` VALUES ('2888', '610802', '榆阳区');
INSERT INTO `city` VALUES ('2889', '610803', '横山区');
INSERT INTO `city` VALUES ('2890', '610821', '神木县');
INSERT INTO `city` VALUES ('2891', '610822', '府谷县');
INSERT INTO `city` VALUES ('2892', '610824', '靖边县');
INSERT INTO `city` VALUES ('2893', '610825', '定边县');
INSERT INTO `city` VALUES ('2894', '610826', '绥德县');
INSERT INTO `city` VALUES ('2895', '610827', '米脂县');
INSERT INTO `city` VALUES ('2896', '610828', '佳县');
INSERT INTO `city` VALUES ('2897', '610829', '吴堡县');
INSERT INTO `city` VALUES ('2898', '610830', '清涧县');
INSERT INTO `city` VALUES ('2899', '610831', '子洲县');
INSERT INTO `city` VALUES ('2900', '610900', '安康市');
INSERT INTO `city` VALUES ('2901', '610902', '汉滨区');
INSERT INTO `city` VALUES ('2902', '610921', '汉阴县');
INSERT INTO `city` VALUES ('2903', '610922', '石泉县');
INSERT INTO `city` VALUES ('2904', '610923', '宁陕县');
INSERT INTO `city` VALUES ('2905', '610924', '紫阳县');
INSERT INTO `city` VALUES ('2906', '610925', '岚皋县');
INSERT INTO `city` VALUES ('2907', '610926', '平利县');
INSERT INTO `city` VALUES ('2908', '610927', '镇坪县');
INSERT INTO `city` VALUES ('2909', '610928', '旬阳县');
INSERT INTO `city` VALUES ('2910', '610929', '白河县');
INSERT INTO `city` VALUES ('2911', '611000', '商洛市');
INSERT INTO `city` VALUES ('2912', '611002', '商州区');
INSERT INTO `city` VALUES ('2913', '611021', '洛南县');
INSERT INTO `city` VALUES ('2914', '611022', '丹凤县');
INSERT INTO `city` VALUES ('2915', '611023', '商南县');
INSERT INTO `city` VALUES ('2916', '611024', '山阳县');
INSERT INTO `city` VALUES ('2917', '611025', '镇安县');
INSERT INTO `city` VALUES ('2918', '611026', '柞水县');
INSERT INTO `city` VALUES ('2919', '620000', '甘肃省');
INSERT INTO `city` VALUES ('2920', '620100', '兰州市');
INSERT INTO `city` VALUES ('2921', '620102', '城关区');
INSERT INTO `city` VALUES ('2922', '620103', '七里河区');
INSERT INTO `city` VALUES ('2923', '620104', '西固区');
INSERT INTO `city` VALUES ('2924', '620105', '安宁区');
INSERT INTO `city` VALUES ('2925', '620111', '红古区');
INSERT INTO `city` VALUES ('2926', '620121', '永登县');
INSERT INTO `city` VALUES ('2927', '620122', '皋兰县');
INSERT INTO `city` VALUES ('2928', '620123', '榆中县');
INSERT INTO `city` VALUES ('2929', '620200', '嘉峪关市');
INSERT INTO `city` VALUES ('2930', '620300', '金昌市');
INSERT INTO `city` VALUES ('2931', '620302', '金川区');
INSERT INTO `city` VALUES ('2932', '620321', '永昌县');
INSERT INTO `city` VALUES ('2933', '620400', '白银市');
INSERT INTO `city` VALUES ('2934', '620402', '白银区');
INSERT INTO `city` VALUES ('2935', '620403', '平川区');
INSERT INTO `city` VALUES ('2936', '620421', '靖远县');
INSERT INTO `city` VALUES ('2937', '620422', '会宁县');
INSERT INTO `city` VALUES ('2938', '620423', '景泰县');
INSERT INTO `city` VALUES ('2939', '620500', '天水市');
INSERT INTO `city` VALUES ('2940', '620502', '秦州区');
INSERT INTO `city` VALUES ('2941', '620503', '麦积区');
INSERT INTO `city` VALUES ('2942', '620521', '清水县');
INSERT INTO `city` VALUES ('2943', '620522', '秦安县');
INSERT INTO `city` VALUES ('2944', '620523', '甘谷县');
INSERT INTO `city` VALUES ('2945', '620524', '武山县');
INSERT INTO `city` VALUES ('2946', '620525', '张家川回族自治县');
INSERT INTO `city` VALUES ('2947', '620600', '武威市');
INSERT INTO `city` VALUES ('2948', '620602', '凉州区');
INSERT INTO `city` VALUES ('2949', '620621', '民勤县');
INSERT INTO `city` VALUES ('2950', '620622', '古浪县');
INSERT INTO `city` VALUES ('2951', '620623', '天祝藏族自治县');
INSERT INTO `city` VALUES ('2952', '620700', '张掖市');
INSERT INTO `city` VALUES ('2953', '620702', '甘州区');
INSERT INTO `city` VALUES ('2954', '620721', '肃南裕固族自治县');
INSERT INTO `city` VALUES ('2955', '620722', '民乐县');
INSERT INTO `city` VALUES ('2956', '620723', '临泽县');
INSERT INTO `city` VALUES ('2957', '620724', '高台县');
INSERT INTO `city` VALUES ('2958', '620725', '山丹县');
INSERT INTO `city` VALUES ('2959', '620800', '平凉市');
INSERT INTO `city` VALUES ('2960', '620802', '崆峒区');
INSERT INTO `city` VALUES ('2961', '620821', '泾川县');
INSERT INTO `city` VALUES ('2962', '620822', '灵台县');
INSERT INTO `city` VALUES ('2963', '620823', '崇信县');
INSERT INTO `city` VALUES ('2964', '620824', '华亭县');
INSERT INTO `city` VALUES ('2965', '620825', '庄浪县');
INSERT INTO `city` VALUES ('2966', '620826', '静宁县');
INSERT INTO `city` VALUES ('2967', '620900', '酒泉市');
INSERT INTO `city` VALUES ('2968', '620902', '肃州区');
INSERT INTO `city` VALUES ('2969', '620921', '金塔县');
INSERT INTO `city` VALUES ('2970', '620922', '瓜州县');
INSERT INTO `city` VALUES ('2971', '620923', '肃北蒙古族自治县');
INSERT INTO `city` VALUES ('2972', '620924', '阿克塞哈萨克族自治县');
INSERT INTO `city` VALUES ('2973', '620981', '玉门市');
INSERT INTO `city` VALUES ('2974', '620982', '敦煌市');
INSERT INTO `city` VALUES ('2975', '621000', '庆阳市');
INSERT INTO `city` VALUES ('2976', '621002', '西峰区');
INSERT INTO `city` VALUES ('2977', '621021', '庆城县');
INSERT INTO `city` VALUES ('2978', '621022', '环县');
INSERT INTO `city` VALUES ('2979', '621023', '华池县');
INSERT INTO `city` VALUES ('2980', '621024', '合水县');
INSERT INTO `city` VALUES ('2981', '621025', '正宁县');
INSERT INTO `city` VALUES ('2982', '621026', '宁县');
INSERT INTO `city` VALUES ('2983', '621027', '镇原县');
INSERT INTO `city` VALUES ('2984', '621100', '定西市');
INSERT INTO `city` VALUES ('2985', '621102', '安定区');
INSERT INTO `city` VALUES ('2986', '621121', '通渭县');
INSERT INTO `city` VALUES ('2987', '621122', '陇西县');
INSERT INTO `city` VALUES ('2988', '621123', '渭源县');
INSERT INTO `city` VALUES ('2989', '621124', '临洮县');
INSERT INTO `city` VALUES ('2990', '621125', '漳县');
INSERT INTO `city` VALUES ('2991', '621126', '岷县');
INSERT INTO `city` VALUES ('2992', '621200', '陇南市');
INSERT INTO `city` VALUES ('2993', '621202', '武都区');
INSERT INTO `city` VALUES ('2994', '621221', '成县');
INSERT INTO `city` VALUES ('2995', '621222', '文县');
INSERT INTO `city` VALUES ('2996', '621223', '宕昌县');
INSERT INTO `city` VALUES ('2997', '621224', '康县');
INSERT INTO `city` VALUES ('2998', '621225', '西和县');
INSERT INTO `city` VALUES ('2999', '621226', '礼县');
INSERT INTO `city` VALUES ('3000', '621227', '徽县');
INSERT INTO `city` VALUES ('3001', '621228', '两当县');
INSERT INTO `city` VALUES ('3002', '622900', '临夏回族自治州');
INSERT INTO `city` VALUES ('3003', '622901', '临夏市');
INSERT INTO `city` VALUES ('3004', '622921', '临夏县');
INSERT INTO `city` VALUES ('3005', '622922', '康乐县');
INSERT INTO `city` VALUES ('3006', '622923', '永靖县');
INSERT INTO `city` VALUES ('3007', '622924', '广河县');
INSERT INTO `city` VALUES ('3008', '622925', '和政县');
INSERT INTO `city` VALUES ('3009', '622926', '东乡族自治县');
INSERT INTO `city` VALUES ('3010', '622927', '积石山保安族东乡族撒拉族自治县');
INSERT INTO `city` VALUES ('3011', '623000', '甘南藏族自治州');
INSERT INTO `city` VALUES ('3012', '623001', '合作市');
INSERT INTO `city` VALUES ('3013', '623021', '临潭县');
INSERT INTO `city` VALUES ('3014', '623022', '卓尼县');
INSERT INTO `city` VALUES ('3015', '623023', '舟曲县');
INSERT INTO `city` VALUES ('3016', '623024', '迭部县');
INSERT INTO `city` VALUES ('3017', '623025', '玛曲县');
INSERT INTO `city` VALUES ('3018', '623026', '碌曲县');
INSERT INTO `city` VALUES ('3019', '623027', '夏河县');
INSERT INTO `city` VALUES ('3020', '630000', '青海省');
INSERT INTO `city` VALUES ('3021', '630100', '西宁市');
INSERT INTO `city` VALUES ('3022', '630102', '城东区');
INSERT INTO `city` VALUES ('3023', '630103', '城中区');
INSERT INTO `city` VALUES ('3024', '630104', '城西区');
INSERT INTO `city` VALUES ('3025', '630105', '城北区');
INSERT INTO `city` VALUES ('3026', '630121', '大通回族土族自治县');
INSERT INTO `city` VALUES ('3027', '630122', '湟中县');
INSERT INTO `city` VALUES ('3028', '630123', '湟源县');
INSERT INTO `city` VALUES ('3029', '630200', '海东市');
INSERT INTO `city` VALUES ('3030', '630202', '乐都区');
INSERT INTO `city` VALUES ('3031', '630203', '平安区');
INSERT INTO `city` VALUES ('3032', '630222', '民和回族土族自治县');
INSERT INTO `city` VALUES ('3033', '630223', '互助土族自治县');
INSERT INTO `city` VALUES ('3034', '630224', '化隆回族自治县');
INSERT INTO `city` VALUES ('3035', '630225', '循化撒拉族自治县');
INSERT INTO `city` VALUES ('3036', '632200', '海北藏族自治州');
INSERT INTO `city` VALUES ('3037', '632221', '门源回族自治县');
INSERT INTO `city` VALUES ('3038', '632222', '祁连县');
INSERT INTO `city` VALUES ('3039', '632223', '海晏县');
INSERT INTO `city` VALUES ('3040', '632224', '刚察县');
INSERT INTO `city` VALUES ('3041', '632300', '黄南藏族自治州');
INSERT INTO `city` VALUES ('3042', '632321', '同仁县');
INSERT INTO `city` VALUES ('3043', '632322', '尖扎县');
INSERT INTO `city` VALUES ('3044', '632323', '泽库县');
INSERT INTO `city` VALUES ('3045', '632324', '河南蒙古族自治县');
INSERT INTO `city` VALUES ('3046', '632500', '海南藏族自治州');
INSERT INTO `city` VALUES ('3047', '632521', '共和县');
INSERT INTO `city` VALUES ('3048', '632522', '同德县');
INSERT INTO `city` VALUES ('3049', '632523', '贵德县');
INSERT INTO `city` VALUES ('3050', '632524', '兴海县');
INSERT INTO `city` VALUES ('3051', '632525', '贵南县');
INSERT INTO `city` VALUES ('3052', '632600', '果洛藏族自治州');
INSERT INTO `city` VALUES ('3053', '632621', '玛沁县');
INSERT INTO `city` VALUES ('3054', '632622', '班玛县');
INSERT INTO `city` VALUES ('3055', '632623', '甘德县');
INSERT INTO `city` VALUES ('3056', '632624', '达日县');
INSERT INTO `city` VALUES ('3057', '632625', '久治县');
INSERT INTO `city` VALUES ('3058', '632626', '玛多县');
INSERT INTO `city` VALUES ('3059', '632700', '玉树藏族自治州');
INSERT INTO `city` VALUES ('3060', '632701', '玉树市');
INSERT INTO `city` VALUES ('3061', '632722', '杂多县');
INSERT INTO `city` VALUES ('3062', '632723', '称多县');
INSERT INTO `city` VALUES ('3063', '632724', '治多县');
INSERT INTO `city` VALUES ('3064', '632725', '囊谦县');
INSERT INTO `city` VALUES ('3065', '632726', '曲麻莱县');
INSERT INTO `city` VALUES ('3066', '632800', '海西蒙古族藏族自治州');
INSERT INTO `city` VALUES ('3067', '632801', '格尔木市');
INSERT INTO `city` VALUES ('3068', '632802', '德令哈市');
INSERT INTO `city` VALUES ('3069', '632821', '乌兰县');
INSERT INTO `city` VALUES ('3070', '632822', '都兰县');
INSERT INTO `city` VALUES ('3071', '632823', '天峻县');
INSERT INTO `city` VALUES ('3072', '640000', '宁夏回族自治区');
INSERT INTO `city` VALUES ('3073', '640100', '银川市');
INSERT INTO `city` VALUES ('3074', '640104', '兴庆区');
INSERT INTO `city` VALUES ('3075', '640105', '西夏区');
INSERT INTO `city` VALUES ('3076', '640106', '金凤区');
INSERT INTO `city` VALUES ('3077', '640121', '永宁县');
INSERT INTO `city` VALUES ('3078', '640122', '贺兰县');
INSERT INTO `city` VALUES ('3079', '640181', '灵武市');
INSERT INTO `city` VALUES ('3080', '640200', '石嘴山市');
INSERT INTO `city` VALUES ('3081', '640202', '大武口区');
INSERT INTO `city` VALUES ('3082', '640205', '惠农区');
INSERT INTO `city` VALUES ('3083', '640221', '平罗县');
INSERT INTO `city` VALUES ('3084', '640300', '吴忠市');
INSERT INTO `city` VALUES ('3085', '640302', '利通区');
INSERT INTO `city` VALUES ('3086', '640303', '红寺堡区');
INSERT INTO `city` VALUES ('3087', '640323', '盐池县');
INSERT INTO `city` VALUES ('3088', '640324', '同心县');
INSERT INTO `city` VALUES ('3089', '640381', '青铜峡市');
INSERT INTO `city` VALUES ('3090', '640400', '固原市');
INSERT INTO `city` VALUES ('3091', '640402', '原州区');
INSERT INTO `city` VALUES ('3092', '640422', '西吉县');
INSERT INTO `city` VALUES ('3093', '640423', '隆德县');
INSERT INTO `city` VALUES ('3094', '640424', '泾源县');
INSERT INTO `city` VALUES ('3095', '640425', '彭阳县');
INSERT INTO `city` VALUES ('3096', '640500', '中卫市');
INSERT INTO `city` VALUES ('3097', '640502', '沙坡头区');
INSERT INTO `city` VALUES ('3098', '640521', '中宁县');
INSERT INTO `city` VALUES ('3099', '640522', '海原县');
INSERT INTO `city` VALUES ('3100', '650000', '新疆维吾尔自治区');
INSERT INTO `city` VALUES ('3101', '650100', '乌鲁木齐市');
INSERT INTO `city` VALUES ('3102', '650102', '天山区');
INSERT INTO `city` VALUES ('3103', '650103', '沙依巴克区');
INSERT INTO `city` VALUES ('3104', '650104', '新市区');
INSERT INTO `city` VALUES ('3105', '650105', '水磨沟区');
INSERT INTO `city` VALUES ('3106', '650106', '头屯河区');
INSERT INTO `city` VALUES ('3107', '650107', '达坂城区');
INSERT INTO `city` VALUES ('3108', '650109', '米东区');
INSERT INTO `city` VALUES ('3109', '650121', '乌鲁木齐县');
INSERT INTO `city` VALUES ('3110', '650200', '克拉玛依市');
INSERT INTO `city` VALUES ('3111', '650202', '独山子区');
INSERT INTO `city` VALUES ('3112', '650203', '克拉玛依区');
INSERT INTO `city` VALUES ('3113', '650204', '白碱滩区');
INSERT INTO `city` VALUES ('3114', '650205', '乌尔禾区');
INSERT INTO `city` VALUES ('3115', '650400', '吐鲁番市');
INSERT INTO `city` VALUES ('3116', '650402', '高昌区');
INSERT INTO `city` VALUES ('3117', '650421', '鄯善县');
INSERT INTO `city` VALUES ('3118', '650422', '托克逊县');
INSERT INTO `city` VALUES ('3119', '652200', '哈密地区');
INSERT INTO `city` VALUES ('3120', '652201', '哈密市');
INSERT INTO `city` VALUES ('3121', '652222', '巴里坤哈萨克自治县');
INSERT INTO `city` VALUES ('3122', '652223', '伊吾县');
INSERT INTO `city` VALUES ('3123', '652300', '昌吉回族自治州');
INSERT INTO `city` VALUES ('3124', '652301', '昌吉市');
INSERT INTO `city` VALUES ('3125', '652302', '阜康市');
INSERT INTO `city` VALUES ('3126', '652323', '呼图壁县');
INSERT INTO `city` VALUES ('3127', '652324', '玛纳斯县');
INSERT INTO `city` VALUES ('3128', '652325', '奇台县');
INSERT INTO `city` VALUES ('3129', '652327', '吉木萨尔县');
INSERT INTO `city` VALUES ('3130', '652328', '木垒哈萨克自治县');
INSERT INTO `city` VALUES ('3131', '652700', '博尔塔拉蒙古自治州');
INSERT INTO `city` VALUES ('3132', '652701', '博乐市');
INSERT INTO `city` VALUES ('3133', '652702', '阿拉山口市');
INSERT INTO `city` VALUES ('3134', '652722', '精河县');
INSERT INTO `city` VALUES ('3135', '652723', '温泉县');
INSERT INTO `city` VALUES ('3136', '652800', '巴音郭楞蒙古自治州');
INSERT INTO `city` VALUES ('3137', '652801', '库尔勒市');
INSERT INTO `city` VALUES ('3138', '652822', '轮台县');
INSERT INTO `city` VALUES ('3139', '652823', '尉犁县');
INSERT INTO `city` VALUES ('3140', '652824', '若羌县');
INSERT INTO `city` VALUES ('3141', '652825', '且末县');
INSERT INTO `city` VALUES ('3142', '652826', '焉耆回族自治县');
INSERT INTO `city` VALUES ('3143', '652827', '和静县');
INSERT INTO `city` VALUES ('3144', '652828', '和硕县');
INSERT INTO `city` VALUES ('3145', '652829', '博湖县');
INSERT INTO `city` VALUES ('3146', '652900', '阿克苏地区');
INSERT INTO `city` VALUES ('3147', '652901', '阿克苏市');
INSERT INTO `city` VALUES ('3148', '652922', '温宿县');
INSERT INTO `city` VALUES ('3149', '652923', '库车县');
INSERT INTO `city` VALUES ('3150', '652924', '沙雅县');
INSERT INTO `city` VALUES ('3151', '652925', '新和县');
INSERT INTO `city` VALUES ('3152', '652926', '拜城县');
INSERT INTO `city` VALUES ('3153', '652927', '乌什县');
INSERT INTO `city` VALUES ('3154', '652928', '阿瓦提县');
INSERT INTO `city` VALUES ('3155', '652929', '柯坪县');
INSERT INTO `city` VALUES ('3156', '653000', '克孜勒苏柯尔克孜自治州');
INSERT INTO `city` VALUES ('3157', '653001', '阿图什市');
INSERT INTO `city` VALUES ('3158', '653022', '阿克陶县');
INSERT INTO `city` VALUES ('3159', '653023', '阿合奇县');
INSERT INTO `city` VALUES ('3160', '653024', '乌恰县');
INSERT INTO `city` VALUES ('3161', '653100', '喀什地区');
INSERT INTO `city` VALUES ('3162', '653101', '喀什市');
INSERT INTO `city` VALUES ('3163', '653121', '疏附县');
INSERT INTO `city` VALUES ('3164', '653122', '疏勒县');
INSERT INTO `city` VALUES ('3165', '653123', '英吉沙县');
INSERT INTO `city` VALUES ('3166', '653124', '泽普县');
INSERT INTO `city` VALUES ('3167', '653125', '莎车县');
INSERT INTO `city` VALUES ('3168', '653126', '叶城县');
INSERT INTO `city` VALUES ('3169', '653127', '麦盖提县');
INSERT INTO `city` VALUES ('3170', '653128', '岳普湖县');
INSERT INTO `city` VALUES ('3171', '653129', '伽师县');
INSERT INTO `city` VALUES ('3172', '653130', '巴楚县');
INSERT INTO `city` VALUES ('3173', '653131', '塔什库尔干塔吉克自治县');
INSERT INTO `city` VALUES ('3174', '653200', '和田地区');
INSERT INTO `city` VALUES ('3175', '653201', '和田市');
INSERT INTO `city` VALUES ('3176', '653221', '和田县');
INSERT INTO `city` VALUES ('3177', '653222', '墨玉县');
INSERT INTO `city` VALUES ('3178', '653223', '皮山县');
INSERT INTO `city` VALUES ('3179', '653224', '洛浦县');
INSERT INTO `city` VALUES ('3180', '653225', '策勒县');
INSERT INTO `city` VALUES ('3181', '653226', '于田县');
INSERT INTO `city` VALUES ('3182', '653227', '民丰县');
INSERT INTO `city` VALUES ('3183', '654000', '伊犁哈萨克自治州');
INSERT INTO `city` VALUES ('3184', '654002', '伊宁市');
INSERT INTO `city` VALUES ('3185', '654003', '奎屯市');
INSERT INTO `city` VALUES ('3186', '654004', '霍尔果斯市');
INSERT INTO `city` VALUES ('3187', '654021', '伊宁县');
INSERT INTO `city` VALUES ('3188', '654022', '察布查尔锡伯自治县');
INSERT INTO `city` VALUES ('3189', '654023', '霍城县');
INSERT INTO `city` VALUES ('3190', '654024', '巩留县');
INSERT INTO `city` VALUES ('3191', '654025', '新源县');
INSERT INTO `city` VALUES ('3192', '654026', '昭苏县');
INSERT INTO `city` VALUES ('3193', '654027', '特克斯县');
INSERT INTO `city` VALUES ('3194', '654028', '尼勒克县');
INSERT INTO `city` VALUES ('3195', '654200', '塔城地区');
INSERT INTO `city` VALUES ('3196', '654201', '塔城市');
INSERT INTO `city` VALUES ('3197', '654202', '乌苏市');
INSERT INTO `city` VALUES ('3198', '654221', '额敏县');
INSERT INTO `city` VALUES ('3199', '654223', '沙湾县');
INSERT INTO `city` VALUES ('3200', '654224', '托里县');
INSERT INTO `city` VALUES ('3201', '654225', '裕民县');
INSERT INTO `city` VALUES ('3202', '654226', '和布克赛尔蒙古自治县');
INSERT INTO `city` VALUES ('3203', '654300', '阿勒泰地区');
INSERT INTO `city` VALUES ('3204', '654301', '阿勒泰市');
INSERT INTO `city` VALUES ('3205', '654321', '布尔津县');
INSERT INTO `city` VALUES ('3206', '654322', '富蕴县');
INSERT INTO `city` VALUES ('3207', '654323', '福海县');
INSERT INTO `city` VALUES ('3208', '654324', '哈巴河县');
INSERT INTO `city` VALUES ('3209', '654325', '青河县');
INSERT INTO `city` VALUES ('3210', '654326', '吉木乃县');
INSERT INTO `city` VALUES ('3211', '659001', '石河子市');
INSERT INTO `city` VALUES ('3212', '659002', '阿拉尔市');
INSERT INTO `city` VALUES ('3213', '659003', '图木舒克市');
INSERT INTO `city` VALUES ('3214', '659004', '五家渠市');
INSERT INTO `city` VALUES ('3215', '659005', '北屯市');
INSERT INTO `city` VALUES ('3216', '659006', '铁门关市');
INSERT INTO `city` VALUES ('3217', '659007', '双河市');
INSERT INTO `city` VALUES ('3218', '659008', '可克达拉市');
INSERT INTO `city` VALUES ('3219', '710000', '台湾省');
INSERT INTO `city` VALUES ('3220', '810000', '香港特别行政区');
INSERT INTO `city` VALUES ('3221', '820000', '澳门特别行政区');

-- ----------------------------
-- Table structure for codes
-- ----------------------------
DROP TABLE IF EXISTS `codes`;
CREATE TABLE `codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of codes
-- ----------------------------
INSERT INTO `codes` VALUES ('1', '9305', '0');
INSERT INTO `codes` VALUES ('2', '8365', '0');
INSERT INTO `codes` VALUES ('3', '9687', '0');
INSERT INTO `codes` VALUES ('4', '5511', '1');
INSERT INTO `codes` VALUES ('5', '4884', '0');
INSERT INTO `codes` VALUES ('6', '5806', '0');
INSERT INTO `codes` VALUES ('7', '1919', '0');
INSERT INTO `codes` VALUES ('8', '0505', '0');
INSERT INTO `codes` VALUES ('9', '3490', '1');
INSERT INTO `codes` VALUES ('10', '5411', '0');
INSERT INTO `codes` VALUES ('11', '4720', '0');
INSERT INTO `codes` VALUES ('12', '8451', '1');
INSERT INTO `codes` VALUES ('13', '8579', '0');
INSERT INTO `codes` VALUES ('14', '9528', '0');
INSERT INTO `codes` VALUES ('15', '1181', '1');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `contacts` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL DEFAULT '0' COMMENT '默认为0 为未完善用户信息',
  `qq` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL COMMENT '企业邮箱',
  `web` varchar(255) DEFAULT NULL COMMENT '企业网站',
  `business` int(11) NOT NULL COMMENT '主营业务',
  `operation` int(11) DEFAULT NULL COMMENT '经营方式',
  `type` int(1) DEFAULT NULL COMMENT '企业类型',
  `describe` text COMMENT '企业描述',
  `scale` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL COMMENT '企业地址',
  `photo` varchar(255) DEFAULT NULL COMMENT '企业图片',
  `introduction` text COMMENT '企业简介',
  `user` int(11) NOT NULL COMMENT '创建者',
  `authentication` int(1) NOT NULL DEFAULT '0' COMMENT '认证状态 0 为未认证 1 为企业认证 2为质量',
  `goods` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('12', '武汉六脉神掌', '151511508078180', '张三', '13918387354', '1214234', '55607999@qq.com', '', '2', '2', '2', '测试', '0', '测试', '', '测试', '14', '5', '测2112', '1');
INSERT INTO `company` VALUES ('13', '武汉六脉神掌有限公司', '151511508078180', '张三', '13918387354', '1214234', '55607999@qq.com', '', '2', '2', '2', '测试', '0', '测试', '', '测试', '13', '3', '测2112', '1');
INSERT INTO `company` VALUES ('14', '武汉六脉神剑有限公司', '151511508078180', '张三', '13918387354', '1214234', '55607999@qq.com', '', '2', '2', '2', '测试', '0', '测试', null, '测试', '15', '3', '测2112', '1');
INSERT INTO `company` VALUES ('15', '武汉富士康集团', '161511577937170', '张三', '13918387354', '1214234', '55607999@qq.com', 'http://www.baidu.com', '1', '4', '8', '富士康科技集团是中国台湾鸿海精密集团的高新科技企业，1974年成立于中国台湾省台北市，总裁郭台铭。现拥有120余万员工及全球顶尖客户群。\n1988年在深圳地区投资建厂，在中国从珠三角到长三角到环渤海、从西南到中南到东北建立了30余个科技工业园区、在亚洲、美洲、欧洲等地拥有200余家子公司和派驻机构。2014年12月12日，据国外媒体报道，富士康宣布，由于订单不足，公司将于12月24日关闭公司在印度钦奈的工厂。该工厂的1700多名员工有可能面临失业。', '8', '湖北武汉', '1511578037967.png', '富士康科技集团是中国台湾鸿海精密集团的高新科技企业，1974年成立于中国台湾省台北市，总裁郭台铭。现拥有120余万员工及全球顶尖客户群。\n1988年在深圳地区投资建厂，在中国从珠三角到长三角到环渤海、从西南到中南到东北建立了30余个科技工业园区、在亚洲、美洲、欧洲等地拥有200余家子公司和派驻机构。2014年12月12日，据国外媒体报道，富士康宣布，由于订单不足，公司将于12月24日关闭公司在印度钦奈的工厂。该工厂的1700多名员工有可能面临失业。', '16', '3', '代工加工', '1');
INSERT INTO `company` VALUES ('16', '武汉光电传媒有限公司', '171511591336252', '李四', '13918387354', '', '55607999@qq.com', '', '2', '1', '2', '测试企业', '4', '武汉光谷', null, '这里是企业简介', '17', '0', '', '1');
INSERT INTO `company` VALUES ('17', '武汉六脉神剑有限公司', '151511508078180', '张三', '13918387354', '1214234', '55607999@qq.com', '', '2', '2', '2', '测试', '0', '测试', '', '测试', '18', '1', '测2112', '1');
INSERT INTO `company` VALUES ('18', '武汉可里店家科技有限公司', '191511774940438', '张三', '13918387354', '1214234', '55607999@qq.com', '', '1', '2', '2', '小说描写了一个农村姑娘苦妹凄然惨痛的童年生活和辛酸凄凉的人生经历,在生活和命运的打击折磨下,毅然不灭自己心中对幸福的渴望,对美好生活的期盼。从而也展现了九十年代的农村,人民生活水平的落后,思想观念的腐朽以及人们在那个时代的一种迷茫无助……\n词条标签：\n网络小', '3', '湖北省武汉市洪山区光谷科技港', '1511775543933.png', '小说描写了一个农村姑娘苦妹凄然惨痛的童年生活和辛酸凄凉的人生经历,在生活和命运的打击折磨下,毅然不灭自己心中对幸福的渴望,对美好生活的期盼。从而也展现了九十年代的农村,人民生活水平的落后,思想观念的腐朽以及人们在那个时代的一种迷茫无助……\n词条标签：\n网络小', '19', '3', '产品', '1');
INSERT INTO `company` VALUES ('19', '测试企业', '181511837909275', '张三', '13918387354', '55607999', '55607999@qq.com', '', '2', '3', '3', '企业描述', '5', '武汉地区', '1511837958619.png', '企业简介', '18', '0', '测试产品', '1');
INSERT INTO `company` VALUES ('21', '测试企业', '201511927090767', '张三', '13918387354', '1214234', '55607999@qq.com', '', '1', '4', '2', '测试', '2', '武汉地区', null, '测试', '20', '0', '产品名称', '1');
INSERT INTO `company` VALUES ('22', '测试企业', '211511927324921', '啊啊', '13918387354', '', 'admin@admin.com', '', '4', '5', '2', '测试', '3', '武汉地区', null, '测试', '21', '0', 'adfas', '1');
INSERT INTO `company` VALUES ('23', '测试其企业', '211511927555690', '阿道夫', '13918387354', '', '55607999@qq.com', '测试', '4', '5', '4', '测试', '3', '测试', '1511927592777.png', '测试', '21', '0', '', '1');
INSERT INTO `company` VALUES ('24', '哈哈哈', '211511927788069', 'aa', '13918387354', '5560788', '55607999@qq.com', '', '3', '3', '2', '测试', '4', '武汉地区', null, '测试', '21', '3', '测试', '1');
INSERT INTO `company` VALUES ('25', '测试', '221511928541060', '测试123', '13918387354', '1214234', '55607999@qq.com', '', '2', '3', '2', '测试', '3', '武汉地区', '1512019474521.jpg', '测试', '22', '0', '', '1');

-- ----------------------------
-- Table structure for crowd
-- ----------------------------
DROP TABLE IF EXISTS `crowd`;
CREATE TABLE `crowd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `demandtype1` int(255) NOT NULL COMMENT '需求一级类型',
  `demandtype2` int(255) NOT NULL COMMENT '需求二级类型',
  `title` varchar(255) NOT NULL COMMENT '询价主题',
  `endtime` int(11) NOT NULL COMMENT '询价结束日期',
  `companyid` int(11) NOT NULL COMMENT '企业ID',
  `creatdate` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL COMMENT '需求图片附件',
  `description` varchar(255) NOT NULL COMMENT '详细描述',
  `provincial` varchar(255) DEFAULT NULL,
  `cities` varchar(255) NOT NULL,
  `counties` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contacts` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `type` int(1) NOT NULL COMMENT '草稿 还是预览',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '需求状态0审核1招标中2签署合同3项目进行中4锁定暂停5已完结6已关闭',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='需求';

-- ----------------------------
-- Records of crowd
-- ----------------------------
INSERT INTO `crowd` VALUES ('1', '2', '10', 'aa', '1517068800', '13', '1517131707', '1517131683086.png', 'bbb', '140000', '130200', '130203', 'sdfdsadf', 'asdfasdf', '13918387354', '0', '0');

-- ----------------------------
-- Table structure for crowditem
-- ----------------------------
DROP TABLE IF EXISTS `crowditem`;
CREATE TABLE `crowditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crowdid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desic` varchar(255) NOT NULL,
  `goodid` int(11) DEFAULT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crowditem
-- ----------------------------
INSERT INTO `crowditem` VALUES ('1', '1', 'aaa', 'bbb', null, '121');
INSERT INTO `crowditem` VALUES ('2', '17', '阿道夫萨斯菲111111', '阿道夫萨斯菲1111111', null, '11');

-- ----------------------------
-- Table structure for demand
-- ----------------------------
DROP TABLE IF EXISTS `demand`;
CREATE TABLE `demand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `demandtype1` int(255) NOT NULL COMMENT '需求一级类型',
  `demandtype2` int(255) NOT NULL COMMENT '需求二级类型',
  `title` varchar(255) NOT NULL COMMENT '询价主题',
  `endtime` int(11) NOT NULL COMMENT '询价结束日期',
  `companyid` int(11) NOT NULL COMMENT '企业ID',
  `deliverydate` int(11) NOT NULL COMMENT '交付日期',
  `creatdate` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL COMMENT '需求图片附件',
  `description` varchar(255) NOT NULL COMMENT '详细描述',
  `provincial` varchar(255) NOT NULL,
  `cities` varchar(255) NOT NULL,
  `counties` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contacts` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mode` int(1) NOT NULL DEFAULT '0' COMMENT '交易方式 担保交易1 货到付款2 预付款3 其他0',
  `invoice` int(1) NOT NULL DEFAULT '0' COMMENT '发票要求 无需发票0 增值税普通发票1 增值税专用发票2 个人发票3',
  `freight` int(1) NOT NULL DEFAULT '0' COMMENT '运费承担方 供应方1 采购方2 其他0',
  `rawmaterial` int(1) NOT NULL DEFAULT '0' COMMENT '原材料提供商 供应方1 采购方2 其他0',
  `billing` int(1) NOT NULL COMMENT '是否需要开票',
  `certification` int(1) NOT NULL COMMENT '是否需要实名认证',
  `type` int(1) NOT NULL COMMENT '草稿 还是预览',
  `quotedpriceid` int(11) NOT NULL DEFAULT '0' COMMENT '被选中的报价ID',
  `payment` int(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '需求状态0审核1招标中2签署合同3项目进行中4锁定暂停5已完结6已关闭',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='需求';

-- ----------------------------
-- Records of demand
-- ----------------------------
INSERT INTO `demand` VALUES ('8', '2', '10', '测试发布需求', '1511971200', '12', '1511971200', '1511503024', '1511502752056.jpg', '测试', '140000', '140400', '140421', '测试阿斯多夫', '阿达', '13918387354', '0', '0', '0', '0', '0', '0', '0', '6', '0', '2');
INSERT INTO `demand` VALUES ('9', '2', '10', '需求发布', '1512057600', '12', '1512748800', '1511522284', '1511522248948.png', '测试', '140000', '140400', '140421', '擦的发生fda瑟夫', '张三', '13918387354', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `demand` VALUES ('10', '2', '10', '这里是新的需求发布', '1512057600', '12', '1512748800', '1511522305', '1511522248948.png', '测试', '140000', '140400', '140421', '擦的发生fda瑟夫', '张三', '13918387354', '0', '0', '0', '0', '0', '0', '0', '9', '0', '2');
INSERT INTO `demand` VALUES ('11', '2', '10', '轴承生产，求购一批轴承', '1511712000', '13', '1512662400', '1511576192', '1511576157362.jpg', '在一定载荷作用下，轴承在出现点蚀前所经历的转数或小时数，称为轴承寿命。\r\n滚动轴承之寿命以转数（或以一定转速下的工作的小时数）定义：在此寿命以内的轴承，应在其任何轴承圈或滚动体上发生初步疲劳损坏（剥落或缺损）。然而无论在实验室试验或在实际使用中，都可明显的看到，在同样的工作条件下的外观相同轴承，实际寿命大不相同。此外还有数种不同定义的轴承“寿命”，其中之一即所谓的“工作寿命”，它表示某一轴承在损坏之前可达到的实际寿命是由磨损、损坏通常并非由疲劳所致，而是由磨损、腐蚀、密封损坏等原因造成。', '140000', '140100', '140106', '武汉地区', '张三', '13918387354', '0', '0', '0', '0', '0', '0', '0', '10', '0', '2');
INSERT INTO `demand` VALUES ('12', '2', '10', '测试', '1512403200', '12', '1513699200', '1512404207', '1512404192144.png', '测试', '210000', '210100', '210102', '武汉地区', '测试', '13918387354', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `demand` VALUES ('13', '2', '10', '测试', '1512403200', '12', '1513699200', '1512404251', '1512404192144.png', '测试', '210000', '210100', '210102', '武汉地区', '测试', '13918387354', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `demand` VALUES ('14', '2', '10', '测试', '1512403200', '12', '1513699200', '1512404285', '1512404192144.png', '测试', '210000', '210100', '210102', '武汉地区', '测试', '13918387354', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `demand` VALUES ('15', '2', '10', '测试', '1512403200', '12', '1513699200', '1512404352', '1512404192144.png', '测试', '210000', '210100', '210102', '武汉地区', '测试', '13918387354', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `demand` VALUES ('16', '2', '10', '测试', '1512489600', '12', '1513872000', '1512404460', null, '测试', '140000', '140100', '140105', '武汉地区', '测试', '13918387354', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `demand` VALUES ('17', '2', '10', '哈哈哈', '1519228800', '13', '1517419071', '1517419071', '1517419033600.png', '阿道夫萨斯菲', '360000', '360300', '360313', '阿道夫萨斯菲11111111111111111111111111', '11', '13918387354', '0', '0', '1', '1', '0', '0', '1', '0', '0', '1');

-- ----------------------------
-- Table structure for demandtype
-- ----------------------------
DROP TABLE IF EXISTS `demandtype`;
CREATE TABLE `demandtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `paraent` int(11) NOT NULL DEFAULT '0' COMMENT '是否是二级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='需求类型';

-- ----------------------------
-- Records of demandtype
-- ----------------------------
INSERT INTO `demandtype` VALUES ('1', '产品外协', '0');
INSERT INTO `demandtype` VALUES ('2', '设计', '0');
INSERT INTO `demandtype` VALUES ('3', '制造', '0');
INSERT INTO `demandtype` VALUES ('4', '试验', '0');
INSERT INTO `demandtype` VALUES ('5', '服务', '0');
INSERT INTO `demandtype` VALUES ('6', '其他', '0');
INSERT INTO `demandtype` VALUES ('7', '功能材料制造及成型', '3');
INSERT INTO `demandtype` VALUES ('8', '热处理', '3');
INSERT INTO `demandtype` VALUES ('9', '工艺检测', '5');
INSERT INTO `demandtype` VALUES ('10', '符合材料成型', '2');
INSERT INTO `demandtype` VALUES ('11', '焊接', '3');
INSERT INTO `demandtype` VALUES ('12', '其他制造', '6');
INSERT INTO `demandtype` VALUES ('13', '表面工程', '5');
INSERT INTO `demandtype` VALUES ('14', '机加工', '3');
INSERT INTO `demandtype` VALUES ('15', '测试', '0');
INSERT INTO `demandtype` VALUES ('16', '哈哈', '15');

-- ----------------------------
-- Table structure for enclosure
-- ----------------------------
DROP TABLE IF EXISTS `enclosure`;
CREATE TABLE `enclosure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '附件名称',
  `url` varchar(255) NOT NULL COMMENT '图片下载附件',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '附件类型 发布需求附件0 报价需求附件1',
  `creatdate` int(11) NOT NULL,
  `demandId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of enclosure
-- ----------------------------
INSERT INTO `enclosure` VALUES ('13', '图片111.png', '/upload/图片111.png', '0', '1511503024', '8');
INSERT INTO `enclosure` VALUES ('14', '网站开发功能计划表【20170922】.xls', '/upload/网站开发功能计划表【20170922】.xls', '1', '1511503964', '5');
INSERT INTO `enclosure` VALUES ('15', '新建 Microsoft Word 文档.doc', '/upload/新建 Microsoft Word 文档.doc', '1', '1511508239', '7');
INSERT INTO `enclosure` VALUES ('16', '6283d3399f414f15b7167167db8ebcc1.png', '/upload/6283d3399f414f15b7167167db8ebcc1.png', '0', '1511576192', '11');
INSERT INTO `enclosure` VALUES ('17', 'u=1958711280,3695220665&fm=200&gp=0.jpg', '/upload/u=1958711280,3695220665&fm=200&gp=0.jpg', '1', '1511591977', '8');
INSERT INTO `enclosure` VALUES ('18', 'u=1958711280,3695220665&fm=200&gp=01.jpg', '/upload/u=1958711280,3695220665&fm=200&gp=01.jpg', '1', '1511592321', '9');
INSERT INTO `enclosure` VALUES ('19', '蓝牙锁通信协议F版.pdf', '/upload/蓝牙锁通信协议F版.pdf', '1', '1511838031', '10');
INSERT INTO `enclosure` VALUES ('20', '新建文本文档.html', '/upload/新建文本文档.html', '1', '1511847535', '12');
INSERT INTO `enclosure` VALUES ('21', '微信图片_20170615172526.png', '/upload/微信图片_20170615172526.png', '3', '1517131707', '1');
INSERT INTO `enclosure` VALUES ('22', '微信图片_20170615172526.png', '/upload/微信图片_20170615172526.png', '3', '1517419071', '17');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type1` int(11) NOT NULL,
  `type2` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `unit` varchar(255) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `effective` int(11) DEFAULT NULL,
  `expected` int(11) DEFAULT NULL,
  `creatTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('4', '矿泉水4', '2', '10', '1001', '瓶', '阿杜', '来源地', '1511503024', '1', '1511503024');
INSERT INTO `goods` VALUES ('5', '矿泉水5', '2', '10', '1001', '瓶', '阿杜', '来源地', '1511503024', '1', '1511503024');
INSERT INTO `goods` VALUES ('6', '矿泉水6', '2', '10', '1001', '瓶', '阿杜', '来源地', '1511503024', '1', '1511503024');
INSERT INTO `goods` VALUES ('7', '矿泉水7', '2', '10', '1001', '瓶', '阿杜', '来源地', '1511503024', '1', '1511503024');
INSERT INTO `goods` VALUES ('8', '矿泉水2', '2', '10', '1001', '瓶', '阿杜', '来源地', '1511503024', '1', '1511503024');
INSERT INTO `goods` VALUES ('9', '矿泉水2', '2', '10', '1001', '瓶', '阿杜', '来源地', '1511503024', '1', '1511503024');
INSERT INTO `goods` VALUES ('10', '矿泉水2', '5', '9', '1001', '瓶', '阿杜', '来源地', '1511503024', '1', '1511503024');
INSERT INTO `goods` VALUES ('11', '测试产品', '5', '13', '121', '件', '型号1111', '测试', '1514044800', '11', '1512411598');

-- ----------------------------
-- Table structure for inquiry
-- ----------------------------
DROP TABLE IF EXISTS `inquiry`;
CREATE TABLE `inquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `demandid` int(11) NOT NULL COMMENT '需求ID',
  `goodId` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL COMMENT '需求对象名称',
  `number` int(11) NOT NULL COMMENT '需求对象数量',
  `unit` varchar(255) NOT NULL COMMENT '计量单位',
  `info` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '0为需求对象1为服务对象',
  `creatdate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='询价对象';

-- ----------------------------
-- Records of inquiry
-- ----------------------------
INSERT INTO `inquiry` VALUES ('7', '8', '0', '测试对象', '1', '个', '阿斯多夫', '11', '0', '1511503024');
INSERT INTO `inquiry` VALUES ('8', '10', '0', '我要轴承', '1', '件', '要求高质量', '1212', '0', '1511522305');
INSERT INTO `inquiry` VALUES ('9', '11', '0', '轴承3公分', '121', '个', '要求1级', '121', '0', '1511576192');
INSERT INTO `inquiry` VALUES ('10', '12', '1', '矿泉水', '11', '瓶', '测试', '1', '0', '1512404208');
INSERT INTO `inquiry` VALUES ('11', '13', '1', '矿泉水', '11', '瓶', '测试', '1', '0', '1512404251');
INSERT INTO `inquiry` VALUES ('12', '14', '1', '矿泉水', '11', '瓶', '测试', '1', '0', '1512404285');
INSERT INTO `inquiry` VALUES ('13', '15', '1', '矿泉水', '11', '瓶', '测试', '1', '0', '1512404352');
INSERT INTO `inquiry` VALUES ('14', '16', '2', '矿泉水2', '1', '瓶', '测试2', '10', '0', '1512404460');
INSERT INTO `inquiry` VALUES ('15', '17', '1', '矿泉水', '111', '瓶', 'ces', '1', '0', '1512417086');
INSERT INTO `inquiry` VALUES ('16', '4', '1', '矿泉水', '0', '瓶', '', '1', '1', '1512637069');
INSERT INTO `inquiry` VALUES ('17', '17', '4', '矿泉水4', '11', '瓶', '', '1', '0', '1513997302');
INSERT INTO `inquiry` VALUES ('18', '18', '4', '矿泉水4', '11', '瓶', 'ce', '1', '0', '1513997900');

-- ----------------------------
-- Table structure for inquiryprice
-- ----------------------------
DROP TABLE IF EXISTS `inquiryprice`;
CREATE TABLE `inquiryprice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quotedid` int(11) NOT NULL COMMENT '报价id',
  `inquiryid` int(11) NOT NULL COMMENT '需求对象ID',
  `price` int(11) NOT NULL COMMENT '需求对象单价',
  `creatdate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='询价对象 报价';

-- ----------------------------
-- Records of inquiryprice
-- ----------------------------

-- ----------------------------
-- Table structure for keyword
-- ----------------------------
DROP TABLE IF EXISTS `keyword`;
CREATE TABLE `keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '关键字名称',
  `type` int(1) NOT NULL COMMENT '关键字的类型',
  `contentid` int(11) NOT NULL COMMENT '关键字对应的id',
  `creatdate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关键字';

-- ----------------------------
-- Records of keyword
-- ----------------------------

-- ----------------------------
-- Table structure for quotedprice
-- ----------------------------
DROP TABLE IF EXISTS `quotedprice`;
CREATE TABLE `quotedprice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL COMMENT '用户ID',
  `demandid` int(11) NOT NULL,
  `companyid` int(11) NOT NULL COMMENT '公司ID',
  `freight` int(11) NOT NULL COMMENT '运费',
  `pricedescribe` varchar(255) NOT NULL COMMENT '报价描述',
  `effective` int(11) NOT NULL COMMENT '有效期',
  `user` varchar(255) NOT NULL COMMENT '联系人',
  `phone` varchar(255) NOT NULL COMMENT '联系电话',
  `creatdate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='报价表';

-- ----------------------------
-- Records of quotedprice
-- ----------------------------
INSERT INTO `quotedprice` VALUES ('6', '14', '8', '13', '100', '测试', '1511971200', '测试', '13918387354', '1511506948');
INSERT INTO `quotedprice` VALUES ('7', '15', '8', '14', '100', '阿萨德发顺丰啊三分', '1511884800', '测试', '13918387354', '1511508239');
INSERT INTO `quotedprice` VALUES ('8', '17', '11', '16', '100', '这里是报价说明', '1512057600', '张三', '13918387354', '1511591977');
INSERT INTO `quotedprice` VALUES ('9', '14', '10', '13', '100', '这里是我的报价说明', '1511971200', '联系人', '13918387354', '1511592321');
INSERT INTO `quotedprice` VALUES ('10', '18', '11', '19', '100', '询价', '1511884800', '测试', '13918387354', '1511838031');
INSERT INTO `quotedprice` VALUES ('12', '13', '9', '12', '111', '我要报价', '1511971200', '啊啊', '13918387354', '1511847535');

-- ----------------------------
-- Table structure for server
-- ----------------------------
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `demandtype1` int(11) NOT NULL COMMENT '需求一级类型',
  `demandtype2` int(11) NOT NULL COMMENT '需求二级类型',
  `title` varchar(255) NOT NULL COMMENT '询价主题',
  `prices` int(11) NOT NULL COMMENT '询价结束日期',
  `unit` varchar(255) NOT NULL COMMENT '规格',
  `creatdate` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL COMMENT '需求图片附件',
  `description` varchar(255) NOT NULL COMMENT '详细描述',
  `provincial` varchar(255) NOT NULL,
  `cities` varchar(255) NOT NULL,
  `counties` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contacts` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '草稿 还是预览',
  `companyid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='服务';

-- ----------------------------
-- Records of server
-- ----------------------------
INSERT INTO `server` VALUES ('1', '3', '7', '我们公司可以制作轴承', '121', '个', '1511575854', '1511575677367.jpg', '在一定载荷作用下，轴承在出现点蚀前所经历的转数或小时数，称为轴承寿命。\r\n滚动轴承之寿命以转数（或以一定转速下的工作的小时数）定义：在此寿命以内的轴承，应在其任何轴承圈或滚动体上发生初步疲劳损坏（剥落或缺损）。然而无论在实验室试验或在实际使用中，都可明显的看到，在同样的工作条件下的外观相同轴承，实际寿命大不相同。此外还有数种不同定义的轴承“寿命”，其中之一即所谓的“工作寿命”，它表示某一轴承在损坏之前可达到的实际寿命是由磨损、损坏通常并非由疲劳所致，而是由磨损、腐蚀、密封损坏等原因造成。', '210000', '210100', '210102', '武汉地区', '张三', '13918387354', '0', '12');
INSERT INTO `server` VALUES ('2', '5', '9', '我的服务能力是机械制造', '112', '件', '1511575963', '1511575932223.png', '测试服务能力', '140000', '140200', '140202', '山西大同', '测试', '13918387354', '0', '12');
INSERT INTO `server` VALUES ('3', '15', '16', '我可以提供矿泉水', '0', '暂无', '1512636845', '1512636806504.jpg', '测试', '140000', '140300', '140302', '测试', '测试', '13918387354', '0', '12');

-- ----------------------------
-- Table structure for tb_tfw_blog
-- ----------------------------
DROP TABLE IF EXISTS `tb_tfw_blog`;
CREATE TABLE `tb_tfw_blog` (
  `f_it_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `f_it_del` int(11) DEFAULT '0' COMMENT '状态',
  `f_it_seq` int(11) DEFAULT '0' COMMENT '排序',
  `f_it_content` text COMMENT '内容',
  `f_it_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `f_it_createtime` date DEFAULT NULL COMMENT '创建时间',
  `version` int(11) DEFAULT '0',
  PRIMARY KEY (`f_it_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_tfw_blog
-- ----------------------------
INSERT INTO `tb_tfw_blog` VALUES ('1', '1', '1', 'jfinalblade go', 'jfinalblade', '2016-10-08', '2');
INSERT INTO `tb_tfw_blog` VALUES ('3', '1', '2', '<p style=\"text-align: center;\">112</p>', '测试', '2016-10-10', '1');
INSERT INTO `tb_tfw_blog` VALUES ('4', '1', '3', '<p><img src=\"/upload/image/20161010/1476091111051005215.jpg\" style=\"\" title=\"1476091111051005215.jpg\"/></p><p><img src=\"/upload/image/20161010/1476091111054037337.jpg\" style=\"\" title=\"1476091111054037337.jpg\"/></p><p><img src=\"/upload/image/20161010/1476091111051097841.jpg\" style=\"\" title=\"1476091111051097841.jpg\"/></p><p><br/></p>', '测试1', '2016-10-10', '0');
INSERT INTO `tb_tfw_blog` VALUES ('5', '1', '4', '<p><img src=\"http://ikkong.qiniudn.com/upload/image/20161011/1476170956158098341.jpg\" title=\"1476170956158098341\" alt=\"3 (12).jpg\"/></p>', '测试qiniu', '2016-10-11', '0');

-- ----------------------------
-- Table structure for tb_tfw_tzgg
-- ----------------------------
DROP TABLE IF EXISTS `tb_tfw_tzgg`;
CREATE TABLE `tb_tfw_tzgg` (
  `F_IT_XL` int(11) NOT NULL AUTO_INCREMENT,
  `F_VC_BT` varchar(255) DEFAULT NULL,
  `F_IT_LX` int(11) DEFAULT NULL,
  `F_TX_NR` text,
  `F_DT_FBSJ` datetime DEFAULT NULL,
  `F_DT_CJSJ` datetime DEFAULT NULL,
  `F_IT_CJR` int(11) DEFAULT NULL,
  `F_IT_TP` int(11) DEFAULT NULL,
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`F_IT_XL`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_tfw_tzgg
-- ----------------------------
INSERT INTO `tb_tfw_tzgg` VALUES ('2', '漂亮的大风车', '10', '<p>\r\n	啊啊啊\r\n</p>\r\n<p>\r\n	<img src=\"/kindeditor/renderFile/303\" title=\"303\" alt=\"303\" />\r\n</p>', '2016-09-30 00:00:00', null, null, null, '0');
INSERT INTO `tb_tfw_tzgg` VALUES ('3', '好多图', '1', '<img src=\"/kindeditor/renderFile/304\" title=\"304\" alt=\"304\" /><img src=\"/kindeditor/renderFile/305\" title=\"305\" alt=\"305\" /><img src=\"/kindeditor/renderFile/306\" title=\"306\" alt=\"306\" />', '2016-09-30 00:00:00', null, null, null, '0');

-- ----------------------------
-- Table structure for tfw_attach
-- ----------------------------
DROP TABLE IF EXISTS `tfw_attach`;
CREATE TABLE `tfw_attach` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `URL` text,
  `STATUS` int(11) DEFAULT NULL,
  `CREATER` int(11) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tfw_attach
-- ----------------------------
INSERT INTO `tfw_attach` VALUES ('303', null, '2 (14).jpg', '/upload\\20160930\\1475222724826.jpg', '1', '1', '2016-09-30 16:05:25');
INSERT INTO `tfw_attach` VALUES ('304', null, '2.jpg', '/upload\\20160930\\1475222803894.jpg', '1', '1', '2016-09-30 16:06:44');
INSERT INTO `tfw_attach` VALUES ('305', null, '3 (11).jpg', '/upload\\20160930\\1475222803929.jpg', '1', '1', '2016-09-30 16:06:44');
INSERT INTO `tfw_attach` VALUES ('306', null, '3 (12).jpg', '/upload\\20160930\\1475222804029.jpg', '1', '1', '2016-09-30 16:06:44');
INSERT INTO `tfw_attach` VALUES ('307', null, '3 (13).jpg', '/upload\\20161011\\1476171059172.jpg', '1', '1', '2016-10-11 15:30:59');

-- ----------------------------
-- Table structure for tfw_dept
-- ----------------------------
DROP TABLE IF EXISTS `tfw_dept`;
CREATE TABLE `tfw_dept` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NUM` int(11) DEFAULT NULL,
  `PID` int(11) DEFAULT NULL,
  `SIMPLENAME` varchar(45) DEFAULT NULL,
  `FULLNAME` varchar(255) DEFAULT NULL,
  `TIPS` varchar(255) DEFAULT NULL,
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tfw_dept
-- ----------------------------
INSERT INTO `tfw_dept` VALUES ('1', '0', '0', 'IKKONG', 'IKKONG', null, '2');
INSERT INTO `tfw_dept` VALUES ('2', '1', '1', '江苏空空', '江苏空空信息技术有限公司', null, '2');
INSERT INTO `tfw_dept` VALUES ('3', '1', '2', '技服部', '技术服务部', null, '1');
INSERT INTO `tfw_dept` VALUES ('4', '2', '2', '客服部', '客户服务部', null, '1');
INSERT INTO `tfw_dept` VALUES ('5', '3', '2', '销售部', '销售部', null, '1');
INSERT INTO `tfw_dept` VALUES ('6', '4', '2', '综合管理部', '综合管理部', null, '1');
INSERT INTO `tfw_dept` VALUES ('7', '2', '1', '常州空空', '常州空空软件技术有限公司', null, '4');
INSERT INTO `tfw_dept` VALUES ('8', '1', '7', '产品部', '产品部', null, '1');
INSERT INTO `tfw_dept` VALUES ('9', '2', '7', '研发部', '研发部', null, '1');
INSERT INTO `tfw_dept` VALUES ('10', '3', '7', '项目部', '项目部', null, '1');
INSERT INTO `tfw_dept` VALUES ('11', '4', '7', '运维部', '运维部', null, '1');
INSERT INTO `tfw_dept` VALUES ('12', '5', '7', '销售部', '销售部', null, '1');
INSERT INTO `tfw_dept` VALUES ('13', '6', '7', '行政部', '行政部', null, '1');

-- ----------------------------
-- Table structure for tfw_dict
-- ----------------------------
DROP TABLE IF EXISTS `tfw_dict`;
CREATE TABLE `tfw_dict` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) DEFAULT NULL,
  `NUM` int(11) DEFAULT NULL,
  `PID` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `TIPS` varchar(255) DEFAULT NULL,
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tfw_dict
-- ----------------------------
INSERT INTO `tfw_dict` VALUES ('1', '101', '0', '0', '性别', null, '0');
INSERT INTO `tfw_dict` VALUES ('2', '101', '1', '1', '男', null, '1');
INSERT INTO `tfw_dict` VALUES ('3', '101', '2', '1', '女', null, '0');
INSERT INTO `tfw_dict` VALUES ('5', '901', '0', '0', '账号状态', null, '0');
INSERT INTO `tfw_dict` VALUES ('6', '901', '1', '5', '启用', null, '0');
INSERT INTO `tfw_dict` VALUES ('7', '901', '2', '5', '冻结', null, '0');
INSERT INTO `tfw_dict` VALUES ('8', '901', '3', '5', '待审核', null, '0');
INSERT INTO `tfw_dict` VALUES ('9', '901', '4', '5', '审核拒绝', null, '0');
INSERT INTO `tfw_dict` VALUES ('10', '901', '5', '5', '已删除', null, '0');
INSERT INTO `tfw_dict` VALUES ('11', '902', '0', '0', '状态', null, '0');
INSERT INTO `tfw_dict` VALUES ('12', '902', '1', '11', '启用', null, '0');
INSERT INTO `tfw_dict` VALUES ('13', '902', '2', '11', '禁用', null, '0');
INSERT INTO `tfw_dict` VALUES ('14', '102', '0', '0', '公告类型', null, '0');
INSERT INTO `tfw_dict` VALUES ('15', '102', '10', '14', '通知公告', null, '0');
INSERT INTO `tfw_dict` VALUES ('16', '102', '9', '14', '发布计划', null, '0');
INSERT INTO `tfw_dict` VALUES ('17', '903', '0', '0', '审核状态', null, '0');
INSERT INTO `tfw_dict` VALUES ('18', '903', '1', '17', '待审核', null, '0');
INSERT INTO `tfw_dict` VALUES ('19', '903', '2', '17', '审核拒绝', null, '0');
INSERT INTO `tfw_dict` VALUES ('20', '903', '3', '17', '审核通过', null, '0');
INSERT INTO `tfw_dict` VALUES ('41', '102', '6', '16', '测试', null, '0');
INSERT INTO `tfw_dict` VALUES ('44', '102', '1', '14', '发布测试', null, '0');
INSERT INTO `tfw_dict` VALUES ('45', '102', '2', '16', '测试222', null, '1');

-- ----------------------------
-- Table structure for tfw_generate
-- ----------------------------
DROP TABLE IF EXISTS `tfw_generate`;
CREATE TABLE `tfw_generate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  `REALPATH` varchar(255) DEFAULT NULL,
  `PACKAGENAME` varchar(255) DEFAULT NULL,
  `MODELNAME` varchar(255) DEFAULT NULL,
  `TABLENAME` varchar(255) DEFAULT NULL,
  `PKNAME` varchar(255) DEFAULT NULL,
  `TIPS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tfw_generate
-- ----------------------------
INSERT INTO `tfw_generate` VALUES ('2', 'blog', 'E:\\gen', 'com.ikkong.platform', 'Blog', 'tb_tfw_blog', 'f_it_id', null);
INSERT INTO `tfw_generate` VALUES ('3', 'user', 'F:\\work\\JfinalBlade\\src\\main\\java\\com\\ikkong', 'com.pc.admin', 'user', 'user', 'id', null);
INSERT INTO `tfw_generate` VALUES ('4', 'demand', 'F:\\work\\lonframe\\cf\\cfadmin\\src\\main', 'ikkong.platform', 'demand', 'demand', 'id', null);
INSERT INTO `tfw_generate` VALUES ('5', 'server', 'F:\\work\\lonframe\\cf\\cfadmin\\src\\main', 'ikkong.platform', 'server', 'server', 'id', null);
INSERT INTO `tfw_generate` VALUES ('6', 'authentication', 'F:\\work\\lonframe\\cf\\cfadmin\\src\\main', 'ikkong.platform', 'authentication', 'authentication', 'ID', null);
INSERT INTO `tfw_generate` VALUES ('7', 'goods', 'F:\\work\\lonframe\\cf\\cfadmin\\src\\main', 'ikkong.platform', 'goods', 'goods', 'id', null);
INSERT INTO `tfw_generate` VALUES ('8', 'demandtype', 'F:\\work\\lonframe\\cf\\cfadmin\\src\\main', 'ikkong.platform', 'demandtype', 'demandtype', 'id', null);
INSERT INTO `tfw_generate` VALUES ('9', 'blog', 'F:\\work\\lonframe\\cf\\cfadmin\\src\\main', 'ikkong.platform', 'blog', 'blog', 'id', null);
INSERT INTO `tfw_generate` VALUES ('10', 'crowd', 'F:\\work\\lonframe\\cf\\cfadmin\\src\\main', 'ikkong.platform', 'crowd', 'crowd', 'id', null);
INSERT INTO `tfw_generate` VALUES ('11', 'crowditem', 'F:\\work\\lonframe\\cf\\cfadmin\\src\\main', 'ikkong.platform', 'crowditem', 'crowditem', 'id', null);

-- ----------------------------
-- Table structure for tfw_login_log
-- ----------------------------
DROP TABLE IF EXISTS `tfw_login_log`;
CREATE TABLE `tfw_login_log` (
  `ID` int(65) NOT NULL AUTO_INCREMENT,
  `LOGNAME` varchar(255) DEFAULT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `CLASSNAME` varchar(255) DEFAULT NULL,
  `METHOD` text,
  `CREATETIME` datetime DEFAULT NULL,
  `SUCCEED` varchar(255) DEFAULT NULL,
  `MESSAGE` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tfw_login_log
-- ----------------------------
INSERT INTO `tfw_login_log` VALUES ('69', '12', '2', null, '12', '2016-02-01 00:00:00', '0', '12');
INSERT INTO `tfw_login_log` VALUES ('70', '登录', '1', null, '[sessionID]: ci6ww7e3bmsx7hibkvfgeol3 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-23 10:18:38', '1', null);
INSERT INTO `tfw_login_log` VALUES ('71', '登录', '1', null, '[sessionID]: xtkaw8f6kqarvg8j2trpk48q [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-23 11:05:17', '1', null);
INSERT INTO `tfw_login_log` VALUES ('72', '登录', '1', null, '[sessionID]: 1314dfrltipbd1l62vt9jjhepl [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-23 11:10:29', '1', null);
INSERT INTO `tfw_login_log` VALUES ('73', '登录', '1', null, '[sessionID]: 97sixu4mubk9xfeykmsvr899 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-23 11:25:29', '1', null);
INSERT INTO `tfw_login_log` VALUES ('74', '登录', '1', null, '[sessionID]: 7f1obhumq9o7r40ee8x9bzue [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-23 11:32:52', '1', null);
INSERT INTO `tfw_login_log` VALUES ('75', '登录', '1', null, '[sessionID]: 1u59ybo0da3881lb4anxa2eley [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-23 13:26:45', '1', null);
INSERT INTO `tfw_login_log` VALUES ('76', '登录', '1', null, '[sessionID]: 7967t66pd1tcl7j8755ktokz [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-23 13:49:15', '1', null);
INSERT INTO `tfw_login_log` VALUES ('77', '登录', '1', null, '[sessionID]: tqik4h5jshis10afc10s7feq5 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-23 13:58:45', '1', null);
INSERT INTO `tfw_login_log` VALUES ('78', '登录', '1', null, '[sessionID]: 1oh89iui1mget1ey6a48wcu9gi [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-23 14:02:23', '1', null);
INSERT INTO `tfw_login_log` VALUES ('79', '登录', '1', null, '[sessionID]: gmzgug1wa6za13e6p5pr22kqd [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-23 16:13:41', '1', null);
INSERT INTO `tfw_login_log` VALUES ('80', '登录', '1', null, '[sessionID]: roobkbkfa8c6q765ghb0vem8 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-23 16:31:17', '1', null);
INSERT INTO `tfw_login_log` VALUES ('81', '登录', '1', null, '[sessionID]: 1n80pzkdlvo7qg756vgbowbw5 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-23 17:06:17', '1', null);
INSERT INTO `tfw_login_log` VALUES ('82', '登录', '1', null, '[sessionID]: sfd5cuocbwoe1dqit52tmdcad [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-23 17:23:06', '1', null);
INSERT INTO `tfw_login_log` VALUES ('83', '登录', '1', null, '[sessionID]: yvf4h16zp00t1n1pe0zmlj8sw [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-27 08:40:10', '1', null);
INSERT INTO `tfw_login_log` VALUES ('84', '登录', '1', null, '[sessionID]: z6pm1tslakbat7y3nq2b5hrh [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-27 08:44:44', '1', null);
INSERT INTO `tfw_login_log` VALUES ('85', '登录', '1', null, '[sessionID]: e5gli35jxfwwaf2me02fh4yy [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-27 08:50:57', '1', null);
INSERT INTO `tfw_login_log` VALUES ('86', '登录', '1', null, '[sessionID]: 1drnwjvg008xjp5n8vmaeocx3 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-28 16:57:38', '1', null);
INSERT INTO `tfw_login_log` VALUES ('87', '登录', '1', null, '[sessionID]: wrbrzmxbrrvl8vytok697ygr [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-28 17:01:00', '1', null);
INSERT INTO `tfw_login_log` VALUES ('88', '登录', '1', null, '[sessionID]: 1esel2896m8k1gohohwexvfel [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-28 17:05:06', '1', null);
INSERT INTO `tfw_login_log` VALUES ('89', '登录', '1', null, '[sessionID]: 1e62ele5wc4sv57vf8t4jopjt [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-28 17:37:58', '1', null);
INSERT INTO `tfw_login_log` VALUES ('90', '登录', '1', null, '[sessionID]: mp5bj4n2zzxm1kgjd9y86xkva [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-29 08:52:52', '1', null);
INSERT INTO `tfw_login_log` VALUES ('91', '登录', '1', null, '[sessionID]: pbyjb5bfidruwwjlfkit39t3 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-29 09:24:42', '1', null);
INSERT INTO `tfw_login_log` VALUES ('92', '登录', '1', null, '[sessionID]: zliag84emt7hxzckymgba657 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-29 09:39:30', '1', null);
INSERT INTO `tfw_login_log` VALUES ('93', '登录', '1', null, '[sessionID]: 1dnu4fw2hj97b1f706bytxtoac [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-29 10:41:42', '1', null);
INSERT INTO `tfw_login_log` VALUES ('94', '登录', '1', null, '[sessionID]: ketaeot20pb3m8umwdckb3s [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-29 13:46:22', '1', null);
INSERT INTO `tfw_login_log` VALUES ('95', '登录', '1', null, '[sessionID]: dxa2zge7ad5l18jozf8aamesm [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-29 14:27:12', '1', null);
INSERT INTO `tfw_login_log` VALUES ('96', '登录', '1', null, '[sessionID]: 1o1xosz8z33k1elcraeicv19x [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-29 14:51:46', '1', null);
INSERT INTO `tfw_login_log` VALUES ('97', '登录', '1', null, '[sessionID]: 1gjh1m3o7nvzi1f0j3e4czduoz [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-29 15:06:09', '1', null);
INSERT INTO `tfw_login_log` VALUES ('98', '登录', '1', null, '[sessionID]: ptdfpj7uf67k1ezqk4epw9x8o [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-29 15:11:52', '1', null);
INSERT INTO `tfw_login_log` VALUES ('99', '登录', '1', null, '[sessionID]: w01jfuhrnedx1j0otbu0zd0un [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-29 15:15:02', '1', null);
INSERT INTO `tfw_login_log` VALUES ('100', '登录', '1', null, '[sessionID]: 19nkb5dwpgyo012wddci45xh5d [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-29 16:43:54', '1', null);
INSERT INTO `tfw_login_log` VALUES ('101', '登录', '1', null, '[sessionID]: ufyqfu3uwx201d4mneohmpv3b [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-30 10:20:46', '1', null);
INSERT INTO `tfw_login_log` VALUES ('102', '登录', '1', null, '[sessionID]: unn36ul6nrc51ql83p1zihyow [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-30 10:33:34', '1', null);
INSERT INTO `tfw_login_log` VALUES ('103', '登录', '1', null, '[sessionID]: 1u0c1hllfgqzpnosvhfw4u0ng [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-30 10:51:07', '1', null);
INSERT INTO `tfw_login_log` VALUES ('104', '登录', '1', null, '[sessionID]: jcz41hjqdi5mzuo7rnjerfev [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-30 11:12:34', '1', null);
INSERT INTO `tfw_login_log` VALUES ('105', '登录', '1', null, '[sessionID]: vb3jzam9vef1155uluv4tjc8u [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-30 14:05:38', '1', null);
INSERT INTO `tfw_login_log` VALUES ('106', '登录', '1', null, '[sessionID]: 1v4swciovr3gi1ffi7m916hhx8 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-09-30 14:22:36', '1', null);
INSERT INTO `tfw_login_log` VALUES ('107', '登录', '1', null, '[sessionID]: 1kypmsa14geji8qt0d4jiuo2a [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-10-08 14:15:02', '1', null);
INSERT INTO `tfw_login_log` VALUES ('108', '登录', '1', null, '[sessionID]: 1tp1y6k3te3ok5dt5b4y5hxm1 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-10-08 15:38:38', '1', null);
INSERT INTO `tfw_login_log` VALUES ('109', '登录', '1', null, '[sessionID]: 1fimweejpdztd140lf1ybuxus2 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-10-08 15:53:55', '1', null);
INSERT INTO `tfw_login_log` VALUES ('110', '登录', '1', null, '[sessionID]: 52sj7rlfvtku1092uwymm78u2 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-10-08 15:57:24', '1', null);
INSERT INTO `tfw_login_log` VALUES ('111', '登录', '1', null, '[sessionID]: fo1lisgx2h3x1b8evktry3mxv [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-10-08 16:34:19', '1', null);
INSERT INTO `tfw_login_log` VALUES ('112', '登录', '1', null, '[sessionID]: 1g0vsfudl038s16vy2k5amlhb7 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-10-08 16:47:45', '1', null);
INSERT INTO `tfw_login_log` VALUES ('113', '登录', '1', null, '[sessionID]: 1h4x3ofj6vi3d1ihdpdcd3jq5r [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-10-09 09:02:27', '1', null);
INSERT INTO `tfw_login_log` VALUES ('114', '登录', '1', null, '[sessionID]: 14w46cddtz9gx11xhtio0cd4o9 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-10-09 10:09:28', '1', null);
INSERT INTO `tfw_login_log` VALUES ('115', '登录', '1', null, '[sessionID]: oj0oc3m9tm9k1h5ca8oobcowl [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-10-09 14:18:44', '1', null);
INSERT INTO `tfw_login_log` VALUES ('116', '登录', '1', null, '[sessionID]: 4ffgp6n1f3ay1o91tyn3eqfx5 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-10-09 14:21:09', '1', null);
INSERT INTO `tfw_login_log` VALUES ('117', '登录', '1', null, '[sessionID]: w36zwzquzjz310hwn1ggb2g2z [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-10-09 14:56:36', '1', null);
INSERT INTO `tfw_login_log` VALUES ('118', '登录', '1', null, '[sessionID]: dttzvn7vi8yu155hnfcv2sk93 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-10-09 15:30:27', '1', null);
INSERT INTO `tfw_login_log` VALUES ('119', '登录', '1', null, '[sessionID]: 1ox58z07o0bfya967s0apfjza [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-10-09 16:04:45', '1', null);
INSERT INTO `tfw_login_log` VALUES ('120', '登录', '1', null, '[sessionID]: qx9sorff45bm18jbflap12b9g [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-10-09 16:16:41', '1', null);
INSERT INTO `tfw_login_log` VALUES ('121', '登录', '1', null, '[sessionID]: 1f2wd12bby4m6nd1nwnxkgn97 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-10-10 15:29:55', '1', null);
INSERT INTO `tfw_login_log` VALUES ('122', '登录', '1', null, '[sessionID]: l01ztk5lzin6xmpi4y0em45e [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-10-10 17:17:49', '1', null);
INSERT INTO `tfw_login_log` VALUES ('123', '登录', '1', null, '[sessionID]: 117sou17w07bj1mswchbwhg5gu [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-10-11 15:27:43', '1', null);
INSERT INTO `tfw_login_log` VALUES ('124', '登录', '1', null, '[sessionID]: 1m1qay1rz6yie32yj3w6rplv2 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-11-17 09:05:39', '1', null);
INSERT INTO `tfw_login_log` VALUES ('125', '登录', '1', null, '[sessionID]: 1vt1mcq3uibc9csnrv3o449em [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 1800000', '2016-11-17 09:14:34', '1', null);
INSERT INTO `tfw_login_log` VALUES ('126', '登录', '1', null, '[sessionID]: a922cadb-64ce-4a00-8735-32f768eb5828 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-27 00:26:29', '1', null);
INSERT INTO `tfw_login_log` VALUES ('127', '登出', '1', null, '[sessionID]: a922cadb-64ce-4a00-8735-32f768eb5828 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-27 00:37:24', '1', null);
INSERT INTO `tfw_login_log` VALUES ('128', '登录', '1', null, '[sessionID]: f403843a-2caf-43a8-8d9f-32f909e88f2b [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-27 00:37:30', '1', null);
INSERT INTO `tfw_login_log` VALUES ('129', '登出', '1', null, '[sessionID]: f403843a-2caf-43a8-8d9f-32f909e88f2b [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-27 00:44:50', '1', null);
INSERT INTO `tfw_login_log` VALUES ('130', '登录', '1', null, '[sessionID]: ce80fb7b-45ab-4e7d-94f1-c89fda2e663b [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-27 00:44:55', '1', null);
INSERT INTO `tfw_login_log` VALUES ('131', '登出', '1', null, '[sessionID]: 1eb5c0ba-b96a-4563-a456-6bf43d2841ee [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-27 00:57:23', '1', null);
INSERT INTO `tfw_login_log` VALUES ('132', '登录', '1', null, '[sessionID]: 9d123a6c-aceb-4075-8ade-fcaf45a9deea [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-27 00:57:29', '1', null);
INSERT INTO `tfw_login_log` VALUES ('133', '登出', '1', null, '[sessionID]: 53de9fdc-b076-4546-89b9-0c0db9707b56 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-27 01:59:06', '1', null);
INSERT INTO `tfw_login_log` VALUES ('134', '登录', '1', null, '[sessionID]: c8f32251-7c23-4938-aade-63419dfe64df [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-27 01:59:11', '1', null);
INSERT INTO `tfw_login_log` VALUES ('135', '登录', '1', null, '[sessionID]: 2cf17fc0-8c88-4f2f-9e1b-b7877ea43eaa [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-27 10:20:15', '1', null);
INSERT INTO `tfw_login_log` VALUES ('136', '登录', '1', null, '[sessionID]: c8f06a63-9db1-43ca-856a-a2ef16ec046e [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-27 10:21:23', '1', null);
INSERT INTO `tfw_login_log` VALUES ('137', '登录', '1', null, '[sessionID]: 6c9dad0e-190b-42b0-9c59-9789c4b7f701 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-27 13:53:09', '1', null);
INSERT INTO `tfw_login_log` VALUES ('138', '登录', '1', null, '[sessionID]: 05297804-8d1d-4ab7-aea9-3cf1da39ba10 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 10:13:18', '1', null);
INSERT INTO `tfw_login_log` VALUES ('139', '登出', '1', null, '[sessionID]: 05297804-8d1d-4ab7-aea9-3cf1da39ba10 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 10:15:31', '1', null);
INSERT INTO `tfw_login_log` VALUES ('140', '登录', '1', null, '[sessionID]: 2c4a7435-3ce4-49c1-8896-030a48567080 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 10:21:29', '1', null);
INSERT INTO `tfw_login_log` VALUES ('141', '登录', '1', null, '[sessionID]: 6188242b-aabc-4fc5-9c08-173a964e611c [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 10:26:16', '1', null);
INSERT INTO `tfw_login_log` VALUES ('142', '登出', '1', null, '[sessionID]: 6188242b-aabc-4fc5-9c08-173a964e611c [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 10:26:36', '1', null);
INSERT INTO `tfw_login_log` VALUES ('143', '登录', '1', null, '[sessionID]: b83a7650-c5df-4edc-91ec-1c0e1172ee20 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 10:27:49', '1', null);
INSERT INTO `tfw_login_log` VALUES ('144', '登出', '1', null, '[sessionID]: b83a7650-c5df-4edc-91ec-1c0e1172ee20 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 10:29:03', '1', null);
INSERT INTO `tfw_login_log` VALUES ('145', '登录', '24', null, '[sessionID]: 0748a0af-c6f9-4f0b-af09-805c8eabf4a0 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 10:29:24', '1', null);
INSERT INTO `tfw_login_log` VALUES ('146', '登录', '24', null, '[sessionID]: 7eb953ea-4ecb-4efe-810f-b0ad3b8f09db [sessionHost]: 127.0.0.1 [sessionHost]: 360000', '2017-11-28 10:30:39', '1', null);
INSERT INTO `tfw_login_log` VALUES ('147', '登出', '24', null, '[sessionID]: 1965306d-3e47-4139-b0bf-5933a2471031 [sessionHost]: 127.0.0.1 [sessionHost]: 360000', '2017-11-28 10:43:36', '1', null);
INSERT INTO `tfw_login_log` VALUES ('148', '登录', '1', null, '[sessionID]: c61cc4e4-814d-419f-8a9f-5a0e117a6a26 [sessionHost]: 127.0.0.1 [sessionHost]: 360000', '2017-11-28 10:43:54', '1', null);
INSERT INTO `tfw_login_log` VALUES ('149', '登出', '24', null, '[sessionID]: 8c6375da-61df-474a-a554-1071be99b781 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 11:33:27', '1', null);
INSERT INTO `tfw_login_log` VALUES ('150', '登录', '1', null, '[sessionID]: 37e5efdf-44a8-4570-9af2-8abf2613e643 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 11:33:47', '1', null);
INSERT INTO `tfw_login_log` VALUES ('151', '登出', '1', null, '[sessionID]: cfd1bc34-aad5-4d35-87b4-80dfcfbe4c76 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 14:50:55', '1', null);
INSERT INTO `tfw_login_log` VALUES ('152', '登录', '1', null, '[sessionID]: dbe135a5-edf2-46e5-b34a-4ed5af69afc8 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 14:51:09', '1', null);
INSERT INTO `tfw_login_log` VALUES ('153', '登出', '1', null, '[sessionID]: dbe135a5-edf2-46e5-b34a-4ed5af69afc8 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 14:51:24', '1', null);
INSERT INTO `tfw_login_log` VALUES ('154', '登录', '24', null, '[sessionID]: 65ebea54-48c3-45ed-8885-b9117ba76b04 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 14:51:36', '1', null);
INSERT INTO `tfw_login_log` VALUES ('155', '登出', '24', null, '[sessionID]: 65ebea54-48c3-45ed-8885-b9117ba76b04 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 14:51:41', '1', null);
INSERT INTO `tfw_login_log` VALUES ('156', '登录', '1', null, '[sessionID]: 1fad15fe-854e-4bc8-a7fe-5a52c55841cd [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 14:51:53', '1', null);
INSERT INTO `tfw_login_log` VALUES ('157', '登录', '1', null, '[sessionID]: 17124303-78d1-437f-bb15-ec944fd08618 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 15:01:53', '1', null);
INSERT INTO `tfw_login_log` VALUES ('158', '登出', '1', null, '[sessionID]: 17124303-78d1-437f-bb15-ec944fd08618 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 15:03:56', '1', null);
INSERT INTO `tfw_login_log` VALUES ('159', '登录', '1', null, '[sessionID]: a914f2f9-0c61-4631-87b3-f068933fcefc [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 15:04:04', '1', null);
INSERT INTO `tfw_login_log` VALUES ('160', '登录', '1', null, '[sessionID]: 0b4fa07a-50a5-4235-9fad-1026a944038f [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 15:42:05', '1', null);
INSERT INTO `tfw_login_log` VALUES ('161', '登出', '1', null, '[sessionID]: f293353a-9fa5-4c89-b748-2666bf9d37a3 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 15:57:04', '1', null);
INSERT INTO `tfw_login_log` VALUES ('162', '登录', '1', null, '[sessionID]: 8fb1f19c-9040-4931-8e58-af45cdb5289e [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 15:57:20', '1', null);
INSERT INTO `tfw_login_log` VALUES ('163', '登出', '1', null, '[sessionID]: 8fb1f19c-9040-4931-8e58-af45cdb5289e [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 15:59:56', '1', null);
INSERT INTO `tfw_login_log` VALUES ('164', '登录', '1', null, '[sessionID]: 17b1a0d3-0f10-4007-9195-0859b0e8412c [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 16:00:05', '1', null);
INSERT INTO `tfw_login_log` VALUES ('165', '登出', '1', null, '[sessionID]: 17b1a0d3-0f10-4007-9195-0859b0e8412c [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 16:01:49', '1', null);
INSERT INTO `tfw_login_log` VALUES ('166', '登录', '24', null, '[sessionID]: 725eb487-ebe2-4b39-b5a6-af22b2eacb61 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 16:02:02', '1', null);
INSERT INTO `tfw_login_log` VALUES ('167', '登出', '24', null, '[sessionID]: 725eb487-ebe2-4b39-b5a6-af22b2eacb61 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 16:03:58', '1', null);
INSERT INTO `tfw_login_log` VALUES ('168', '登录', '1', null, '[sessionID]: c7e5aef8-9eb1-4c2f-8427-496c48d8ac30 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 16:04:08', '1', null);
INSERT INTO `tfw_login_log` VALUES ('169', '登出', '1', null, '[sessionID]: efc23f95-872f-4f70-9d57-cc8dfe5b7fe9 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 16:20:26', '1', null);
INSERT INTO `tfw_login_log` VALUES ('170', '登录', '24', null, '[sessionID]: 468d6512-5b8b-49dd-9def-c193328b091d [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-28 16:20:43', '1', null);
INSERT INTO `tfw_login_log` VALUES ('171', '登录', '24', null, '[sessionID]: bf0ce2f3-8c8c-4722-9d32-117298ae3c53 [sessionHost]: 127.0.0.1 [sessionHost]: 360000', '2017-11-28 16:22:00', '1', null);
INSERT INTO `tfw_login_log` VALUES ('172', '登录', '1', null, '[sessionID]: 1777b764-9544-43ec-96cf-a70a35365145 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-30 13:46:16', '1', null);
INSERT INTO `tfw_login_log` VALUES ('173', '登出', '1', null, '[sessionID]: 40ffc6ef-ad1c-49f0-ac02-2ef617c93374 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-30 14:15:07', '1', null);
INSERT INTO `tfw_login_log` VALUES ('174', '登录', '1', null, '[sessionID]: 351f4c90-92ba-417d-89d7-07eb9868d03a [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-30 14:15:19', '1', null);
INSERT INTO `tfw_login_log` VALUES ('175', '登录', '1', null, '[sessionID]: f343103b-40cd-4521-8da3-28c545b22094 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-11-30 14:22:19', '1', null);
INSERT INTO `tfw_login_log` VALUES ('176', '登出', '1', null, '[sessionID]: 8cbbc452-b39b-4efa-8bed-25b88453f029 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-12-05 00:44:17', '1', null);
INSERT INTO `tfw_login_log` VALUES ('177', '登录', '1', null, '[sessionID]: bf23f04c-f0d7-4c50-a0fc-992f591cc2cd [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-12-05 00:44:31', '1', null);
INSERT INTO `tfw_login_log` VALUES ('178', '登出', '1', null, '[sessionID]: bf23f04c-f0d7-4c50-a0fc-992f591cc2cd [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-12-05 00:45:03', '1', null);
INSERT INTO `tfw_login_log` VALUES ('179', '登录', '1', null, '[sessionID]: 56cb0beb-ea3c-4918-af98-92b1a269f6ee [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-12-05 00:45:12', '1', null);
INSERT INTO `tfw_login_log` VALUES ('180', '登出', '1', null, '[sessionID]: f18d6a02-3268-43f0-8956-5bf6891dc974 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-12-05 02:20:52', '1', null);
INSERT INTO `tfw_login_log` VALUES ('181', '登录', '1', null, '[sessionID]: d2aeff40-92e9-4ddf-ba46-e1fed4bddfc8 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-12-05 03:03:48', '1', null);
INSERT INTO `tfw_login_log` VALUES ('182', '登录', '1', null, '[sessionID]: 9c58264d-03ef-4414-aea5-1619db5697eb [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-12-14 09:42:44', '1', null);
INSERT INTO `tfw_login_log` VALUES ('183', '登录', '1', null, '[sessionID]: de9b69c9-7cc2-4055-8236-ef0c654ef9fd [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-12-21 10:02:12', '1', null);
INSERT INTO `tfw_login_log` VALUES ('184', '登出', '1', null, '[sessionID]: 4c17fa4b-a5c3-4be3-9fe4-31c8e4632990 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-12-27 15:29:17', '1', null);
INSERT INTO `tfw_login_log` VALUES ('185', '登录', '25', null, '[sessionID]: 20f1af08-3206-4db6-a28b-034d85875b1c [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-12-27 15:29:54', '1', null);
INSERT INTO `tfw_login_log` VALUES ('186', '登出', '25', null, '[sessionID]: 20f1af08-3206-4db6-a28b-034d85875b1c [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-12-27 15:31:28', '1', null);
INSERT INTO `tfw_login_log` VALUES ('187', '登录', '1', null, '[sessionID]: 20c5470d-e706-4d04-a961-ab8b328b2186 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2017-12-27 15:31:45', '1', null);
INSERT INTO `tfw_login_log` VALUES ('188', '登录', '1', null, '[sessionID]: 872a915f-60fc-4249-808b-2396f22fdb24 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2018-01-28 15:33:45', '1', null);
INSERT INTO `tfw_login_log` VALUES ('189', '登出', '1', null, '[sessionID]: 006626d5-78ae-457a-97c9-8a46c176a137 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2018-01-28 22:01:31', '1', null);
INSERT INTO `tfw_login_log` VALUES ('190', '登录', '1', null, '[sessionID]: cf1d0aad-f391-46ba-a234-f981b5764a1e [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2018-01-28 22:01:48', '1', null);
INSERT INTO `tfw_login_log` VALUES ('191', '登出', '1', null, '[sessionID]: cf1d0aad-f391-46ba-a234-f981b5764a1e [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2018-01-28 22:02:22', '1', null);
INSERT INTO `tfw_login_log` VALUES ('192', '登录', '1', null, '[sessionID]: df69e7bb-9bf6-4229-bcd6-171f2a3bb4b6 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2018-01-28 22:02:31', '1', null);
INSERT INTO `tfw_login_log` VALUES ('193', '登出', '1', null, '[sessionID]: df69e7bb-9bf6-4229-bcd6-171f2a3bb4b6 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2018-01-28 22:03:19', '1', null);
INSERT INTO `tfw_login_log` VALUES ('194', '登录', '1', null, '[sessionID]: 2a4a6961-0773-44be-8f74-7425dd25de7d [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2018-01-28 22:03:27', '1', null);
INSERT INTO `tfw_login_log` VALUES ('195', '登出', '1', null, '[sessionID]: 2a4a6961-0773-44be-8f74-7425dd25de7d [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2018-01-28 22:05:08', '1', null);
INSERT INTO `tfw_login_log` VALUES ('196', '登录', '1', null, '[sessionID]: ffa41f23-f287-43c8-a15a-47d15ba16236 [sessionHost]: 0:0:0:0:0:0:0:1 [sessionHost]: 360000', '2018-01-28 22:05:24', '1', null);

-- ----------------------------
-- Table structure for tfw_menu
-- ----------------------------
DROP TABLE IF EXISTS `tfw_menu`;
CREATE TABLE `tfw_menu` (
  `ID` int(65) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) DEFAULT NULL,
  `PCODE` varchar(255) DEFAULT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ICON` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `NUM` int(65) DEFAULT NULL,
  `LEVELS` int(65) DEFAULT NULL,
  `SOURCE` text,
  `PATH` varchar(255) DEFAULT NULL,
  `TIPS` varchar(255) DEFAULT NULL,
  `STATUS` int(65) DEFAULT NULL,
  `ISOPEN` varchar(255) DEFAULT NULL,
  `ISTEMPLATE` varchar(255) DEFAULT NULL,
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tfw_menu
-- ----------------------------
INSERT INTO `tfw_menu` VALUES ('1', 'system', '0', null, '系统管理', 'fa-cog', null, '9', '1', null, null, null, '1', '1', '0', '3');
INSERT INTO `tfw_menu` VALUES ('2', 'role', 'system', null, '角色管理', 'fa-key', '/role/', '2', '2', null, null, null, '1', '0', null, '1');
INSERT INTO `tfw_menu` VALUES ('3', 'role_add', 'role', 'addex', '角色新增', 'btn btn-xs btn-white | fa fa-floppy-o bigger-120', '/role/add', '1', '3', null, 'role_add.html', '800*340', '1', '0', null, '2');
INSERT INTO `tfw_menu` VALUES ('4', 'role_edit', 'role', 'edit', '修改', 'btn btn-xs btn-white | fa fa-pencil  bigger-120', '/role/edit', '2', '3', null, 'role_edit.html', '800*340', '1', '0', '0', '1');
INSERT INTO `tfw_menu` VALUES ('5', 'role_remove', 'role', 'remove', '删除', 'btn btn-xs btn-white | fa fa-times  bigger-120', '/role/remove', '3', '3', null, null, null, '1', '0', null, '1');
INSERT INTO `tfw_menu` VALUES ('6', 'role_view', 'role', 'view', '查看', 'btn btn-xs btn-white | fa fa-eye bigger-120', '/role/view', '4', '3', null, 'role_view.html', '800*340', '1', null, null, '1');
INSERT INTO `tfw_menu` VALUES ('7', 'role_authority', 'role', 'authority', '权限配置', 'btn btn-xs btn-white | fa fa-wrench  bigger-120', '/role/authority', '5', '3', null, 'role_authority.html', '350*500', '1', '0', null, '2');
INSERT INTO `tfw_menu` VALUES ('8', 'user', 'system', null, '用户管理', 'fa-user', '/user/', '1', '2', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('9', 'user_add', 'user', 'add', '新增', 'btn btn-xs btn-white | fa fa-floppy-o bigger-120', '/user/add', '1', '3', null, 'user_add.html', '800*430', '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('10', 'user_edit', 'user', 'edit', '修改', 'btn btn-xs btn-white | fa fa-pencil  bigger-120', '/user/edit', '2', '3', null, 'user_edit.html', '800*430', '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('11', 'user_del', 'user', 'remove', '删除', 'btn btn-xs btn-white | fa fa fa-times bigger-120', '/user/del', '3', '3', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('12', 'user_view', 'user', 'view', '查看', 'btn btn-xs btn-white | fa fa-eye bigger-120', '/user/view', '4', '3', null, 'user_view.html', '800*390', '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('13', 'user_audit', 'user', 'audit', '审核', 'btn btn-xs btn-white | fa fa-user  bigger-120', '{\"status\":\"3\"}', '5', '3', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('14', 'user_audit_ok', 'user_audit', 'ok', '通过', 'btn btn-xs btn-white | fa fa-check  bigger-120', '/user/auditOk', '1', '4', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('15', 'user_audit_refuse', 'user_audit', 'refuse', '拒绝', 'btn btn-xs btn-white | fa fa-times  bigger-120', '/user/auditRefuse', '2', '4', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('16', 'user_audit_back', 'user_audit', 'back', '返回', 'btn btn-xs btn-white | fa fa-undo  bigger-120', null, '3', '4', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('17', 'user_reset', 'user', 'reset', '重置密码', 'btn btn-xs btn-white | fa fa-key  bigger-120', '/user/reset', '6', '3', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('18', 'user_ban', 'user', 'frozen', '冻结', 'btn btn-xs btn-white | fa fa-ban  bigger-120', '/user/ban', '7', '3', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('19', 'user_recycle', 'user', 'recycle', '回收站', 'btn btn-xs btn-white | fa fa-recycle  bigger-120', '{\"status\":\"5\"}', '8', '3', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('20', 'user_recycle_restore', 'user_recycle', 'restore', '还原', 'btn btn-xs btn-white | fa fa-refresh  bigger-120', '/user/restore', '1', '4', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('21', 'user_recycle_remove', 'user_recycle', 'remove', '彻底删除', 'btn btn-xs btn-white  btn-danger | fa fa fa-times bigger-120', '/user/remove', '2', '4', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('22', 'user_recycle_back', 'user_recycle', 'back', '返回', 'btn btn-xs btn-white | fa fa-undo  bigger-120', null, '3', '4', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('23', 'user_roleAssign', 'user', 'assign', '角色分配', 'btn btn-xs btn-white | fa fa-users bigger-120', '/user/roleAssign', '9', '3', null, 'user_roleAssign.html', '350*500', '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('24', 'user_extrole', 'user', 'agent', '权限代理', 'btn btn-xs btn-white | fa fa-wrench  bigger-120', '/user/extrole', '10', '3', null, 'user_extrole.html', null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('25', 'menu', 'system', null, '菜单管理', 'fa-tasks', '/menu/', '3', '2', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('26', 'menu_add', 'menu', 'addex', '菜单新增', 'btn btn-xs btn-white | fa fa-floppy-o bigger-120', '/menu/add', '1', '3', null, 'menu_add.html', '800*430', '1', '0', '0', '1');
INSERT INTO `tfw_menu` VALUES ('27', 'menu_edit', 'menu', 'edit', '修改', 'btn btn-xs btn-white | fa fa-pencil  bigger-120', '/menu/edit', '2', '3', null, 'menu_edit.html', '800*430', '1', '0', '0', '1');
INSERT INTO `tfw_menu` VALUES ('28', 'menu_del', 'menu', 'remove', '删除', 'btn btn-xs btn-white | fa fa-times  bigger-120', '/menu/del', '3', '3', null, null, null, '1', '0', null, '1');
INSERT INTO `tfw_menu` VALUES ('29', 'menu_view', 'menu', 'view', '查看', 'btn btn-xs btn-white | fa fa-eye bigger-120', '/menu/view', '4', '3', null, 'menu_view.html', '800*430', '1', '0', '0', '1');
INSERT INTO `tfw_menu` VALUES ('30', 'menu_recycle', 'menu', 'recycle', '回收站', 'btn btn-xs btn-white | fa fa-recycle  bigger-120', '{\"status\":\"2\"}', '5', '3', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('31', 'menu_recycle_restore', 'menu_recycle', 'restore', '还原', 'btn btn-xs btn-white | fa fa-refresh  bigger-120', '/menu/restore', '1', '4', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('32', 'menu_recycle_remove', 'menu_recycle', 'remove', '彻底删除', 'btn btn-xs btn-white  btn-danger | fa fa fa-times bigger-120', '/menu/remove', '2', '4', null, null, null, '1', '0', null, '1');
INSERT INTO `tfw_menu` VALUES ('33', 'menu_recycle_back', 'menu_recycle', 'back', '返回', 'btn btn-xs btn-white | fa fa-undo  bigger-120', null, '3', '4', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('34', 'dict', 'system', null, '字典管理', 'fa fa-book', '/dict/', '4', '2', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('35', 'dict_add', 'dict', 'addex', '字典新增', 'btn btn-xs btn-white | fa fa-floppy-o bigger-120', '/dict/add', '1', '3', null, 'dict_add.html', '800*390', '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('36', 'dict_edit', 'dict', 'edit', '修改', 'btn btn-xs btn-white | fa fa-pencil  bigger-120', '/dict/edit', '2', '3', null, 'dict_edit.html', '800*390', '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('37', 'dict_remove', 'dict', 'remove', '删除', 'btn btn-xs btn-white | fa fa-times  bigger-120', '/dict/remove', '3', '3', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('38', 'dict_view', 'dict', 'view', '查看', 'btn btn-xs btn-white | fa fa-eye bigger-120', '/dict/view', '4', '3', null, 'dict_view.html', '800*390', '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('39', 'dept', 'system', null, '部门管理', 'fa fa-users', '/dept/', '5', '2', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('40', 'dept_add', 'dept', 'addex', '部门新增', 'btn btn-xs btn-white | fa fa-floppy-o bigger-120', '/dept/add', '1', '3', null, 'dept_add.html', '800*340', '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('41', 'dept_edit', 'dept', 'edit', '修改', 'btn btn-xs btn-white | fa fa-pencil  bigger-120', '/dept/edit', '2', '3', null, 'dept_edit.html', '800*340', '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('42', 'dept_remove', 'dept', 'remove', '删除', 'btn btn-xs btn-white | fa fa-times  bigger-120', '/dept/remove', '3', '3', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('43', 'dept_view', 'dept', 'view', '查看', 'btn btn-xs btn-white | fa fa-eye bigger-120', '/dept/view', '4', '3', null, 'dept_view.html', '800*340', '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('44', 'attach', 'system', null, '附件管理', 'fa fa-paperclip', '/attach/', '6', '2', null, 'attach.html', null, '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('45', 'attach_add', 'attach', 'add', '新增', 'btn btn-xs btn-white | fa fa-floppy-o bigger-120', '/attach/add', '1', '3', null, 'attach_add.html', '800*450', '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('46', 'attach_edit', 'attach', 'edit', '修改', 'btn btn-xs btn-white | fa fa-pencil  bigger-120', '/attach/edit', '2', '3', null, 'attach_edit.html', '800*290', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('47', 'attach_remove', 'attach', 'remove', '删除', 'btn btn-xs btn-white | fa fa-times  bigger-120', '/attach/remove', '3', '3', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('48', 'attach_view', 'attach', 'view', '查看', 'btn btn-xs btn-white | fa fa-eye bigger-120', '/attach/view', '4', '3', null, 'attach_view.html', '800*450', '1', '0', '0', '1');
INSERT INTO `tfw_menu` VALUES ('49', 'attach_download', 'attach', 'download', '下载', 'btn btn-xs btn-white | fa fa-paperclip bigger-120', '/attach/download', '5', '3', null, null, null, '1', null, null, '0');
INSERT INTO `tfw_menu` VALUES ('56', 'parameter', 'system', null, '参数化管理', 'fa-tags', '/parameter/', '9', '2', null, 'parameter.html', null, '1', '0', '1', '0');
INSERT INTO `tfw_menu` VALUES ('57', 'parameter_add', 'parameter', 'add', '新增', 'btn btn-xs btn-white | fa fa-floppy-o bigger-120', '/parameter/add', '1', '3', null, 'parameter_add.html', null, '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('58', 'parameter_edit', 'parameter', 'edit', '修改', 'btn btn-xs btn-white | fa fa-pencil  bigger-120', '/parameter/edit', '2', '3', null, 'parameter_edit.html', null, '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('59', 'parameter_del', 'parameter', 'remove', '删除', 'btn btn-xs btn-white | fa fa-times  bigger-120', '/parameter/del', '3', '3', null, null, null, '1', '0', '0', '1');
INSERT INTO `tfw_menu` VALUES ('60', 'parameter_view', 'parameter', 'view', '查看', 'btn btn-xs btn-white | fa fa-eye bigger-120', '/parameter/view', '4', '3', null, 'parameter_view.html', null, '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('61', 'parameter_recycle', 'parameter', 'recycle', '回收站', 'btn btn-xs btn-white | fa fa-recycle  bigger-120', '{\"status\":\"5\"}', '5', '3', null, 'parameter_recycle.html', null, '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('62', 'parameter_recycle_restore', 'parameter_recycle', 'restore', '还原', 'btn btn-xs btn-white | fa fa-refresh  bigger-120', '/parameter/restore', '1', '4', null, null, null, '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('63', 'parameter_recycle_remove', 'parameter_recycle', 'remove', '彻底删除', 'btn btn-xs btn-white  btn-danger | fa fa fa-times bigger-120', '/parameter/remove', '2', '4', null, null, null, '1', '0', '0', '1');
INSERT INTO `tfw_menu` VALUES ('64', 'parameter_recycle_back', 'parameter_recycle', 'back', '返回', 'btn btn-xs btn-white | fa fa-undo  bigger-120', null, '3', '4', null, null, null, '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('65', 'druid', 'system', null, '连接池监视', 'fa-arrows-v', '/druid', '10', '2', null, null, null, '1', '0', null, '1');
INSERT INTO `tfw_menu` VALUES ('81', 'log', 'system', null, '日志管理', 'fa-tasks', null, '11', '2', null, null, null, '1', '0', '0', '1');
INSERT INTO `tfw_menu` VALUES ('82', 'olog', 'log', null, '操作日志', 'fa-database', '/olog/', '1', '3', null, 'olog.html', null, '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('83', 'llog', 'log', null, '登录日志', 'fa-sign-in', '/llog/', '2', '3', null, 'llog.html', null, '1', '0', '1', '0');
INSERT INTO `tfw_menu` VALUES ('84', 'olog_add', 'olog', 'add', '新增', 'btn btn-xs btn-white | fa fa-floppy-o bigger-120', '/olog/add', '1', '4', null, 'olog_add.html', null, '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('85', 'olog_edit', 'olog', 'edit', '修改', 'btn btn-xs btn-white | fa fa-pencil  bigger-120', '/olog/edit', '2', '4', null, 'olog_edit.html', null, '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('86', 'olog_remove', 'olog', 'remove', '删除', 'btn btn-xs btn-white | fa fa-times  bigger-120', '/olog/remove', '3', '4', null, null, null, '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('87', 'olog_view', 'olog', 'view', '查看', 'btn btn-xs btn-white | fa fa-eye bigger-120', '/olog/view', '4', '4', null, 'olog_view.html', null, '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('88', 'llog_add', 'llog', 'add', '新增', 'btn btn-xs btn-white | fa fa-floppy-o bigger-120', '/llog/add', '1', '4', null, 'llog_add.html', null, '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('89', 'llog_edit', 'llog', 'edit', '修改', 'btn btn-xs btn-white | fa fa-pencil  bigger-120', '/llog/edit', '2', '4', null, 'llog_edit.html', null, '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('90', 'llog_remove', 'llog', 'remove', '删除', 'btn btn-xs btn-white | fa fa-times  bigger-120', '/llog/remove', '3', '4', null, null, null, '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('91', 'llog_view', 'llog', 'view', '查看', 'btn btn-xs btn-white | fa fa-eye bigger-120', '/llog/view', '4', '4', null, 'llog_view.html', null, '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('92', 'office', '', null, '企业管理', 'fa fa-desktop', null, '1', '1', null, null, null, '1', '0', '0', '1');
INSERT INTO `tfw_menu` VALUES ('93', 'notice', 'office', null, '通知公告', 'fa fa-bell', '/notice/', '1', '2', null, null, null, '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('94', 'notice_add', 'notice', 'add', '新增', 'btn btn-xs btn-white | fa fa-floppy-o bigger-120', '/notice/add', '1', '3', null, null, '800*500', '1', '0', '0', '1');
INSERT INTO `tfw_menu` VALUES ('95', 'notice_edit', 'notice', 'edit', '修改', 'btn btn-xs btn-white | fa fa-pencil  bigger-120', '/notice/edit', '2', '3', null, null, '800*500', '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('96', 'notice_remove', 'notice', 'remove', '删除', 'btn btn-xs btn-white | fa fa-times  bigger-120', '/notice/remove', '3', '3', null, null, null, '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('97', 'notice_view', 'notice', 'view', '查看', 'btn btn-xs btn-white | fa fa-eye bigger-120', '/notice/view', '4', '3', null, null, '800*500', '1', '0', '0', '0');
INSERT INTO `tfw_menu` VALUES ('98', 'online', 'system', '', '在线开发', 'fa-rocket', null, '12', '2', null, null, '800*520', '1', '0', null, '1');
INSERT INTO `tfw_menu` VALUES ('99', 'generate', 'online', null, '代码生成', 'fa-gavel', '/generate/', '1', '3', null, null, '800*520', '1', '0', null, '1');
INSERT INTO `tfw_menu` VALUES ('100', 'generate_add', 'generate', 'add', '新增', 'btn btn-xs btn-white | fa fa-floppy-o bigger-120', '/generate/add', '1', '4', null, null, '800*420', '1', '0', null, '3');
INSERT INTO `tfw_menu` VALUES ('101', 'generate_edit', 'generate', 'edit', '修改', 'btn btn-xs btn-white | fa fa-pencil  bigger-120', '/generate/edit', '2', '4', null, null, '800*420', '1', '0', null, '3');
INSERT INTO `tfw_menu` VALUES ('102', 'generate_remove', 'generate', 'remove', '删除', 'btn btn-xs btn-white | fa fa-times  bigger-120', '/generate/remove', '3', '4', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('103', 'generate_view', 'generate', 'view', '查看', 'btn btn-xs btn-white | fa fa-eye bigger-120', '/generate/view', '4', '4', null, null, '800*420', '1', '0', null, '3');
INSERT INTO `tfw_menu` VALUES ('104', 'generate_gencode', 'generate', 'gencode', '代码生成', 'btn btn-xs btn-white | fa fa-gavel bigger-120', '/generate/gencode', '5', '4', null, null, '800*520', '1', '0', null, '1');
INSERT INTO `tfw_menu` VALUES ('110', 'company', 'office', null, '企业管理', 'fa fa-bell', '/company/', '3', '2', null, null, '800*520', '1', '0', null, '5');
INSERT INTO `tfw_menu` VALUES ('111', 'company_edit', 'company', 'edit', '修改', 'btn btn-xs btn-white | fa fa-pencil  bigger-120', '/company/edit', '1', '3', null, null, '800*500', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('121', 'company_audit', 'company', 'audit', '注册审核', 'btn btn-xs btn-white | fa fa-user  bigger-120', '{\"status\":\"3\"}', '2', '3', null, null, '800*520', '1', '0', null, '1');
INSERT INTO `tfw_menu` VALUES ('122', 'company_audit_ok', 'company_audit', 'ok', '通过', 'btn btn-xs btn-white | fa fa-check  bigger-120', '/company/auditOk', '1', '4', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('123', 'company_audit_refuse', 'company_audit', 'refuse', '拒绝', 'btn btn-xs btn-white  btn-danger | fa fa fa-times bigger-120', '/company/auditRefuse', '2', '4', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('124', 'company_audit_back', 'company_audit', 'back', '返回', 'btn btn-xs btn-white | fa fa-undo  bigger-120', null, '3', '4', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('125', 'company_remove', 'company', 'remove', '删除', 'btn btn-xs btn-white | fa fa-times  bigger-120', '/company/remove', '3', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('126', 'company_recycle', 'company', 'recycle', '回收站', 'btn btn-xs btn-white | fa fa-recycle  bigger-120', '{\"status\":\"5\"}', '4', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('127', 'company_recycle_restore', 'company_recycle', 'restore', '还原', 'btn btn-xs btn-white | fa fa-refresh  bigger-120', '/company/restore', '1', '4', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('128', 'company_recycle_remove', 'company_recycle', 'remove', '彻底删除', 'btn btn-xs btn-white  btn-danger | fa fa fa-times bigger-120', '/company/remove', '2', '4', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('129', 'company_back_back', 'company_recycle', 'back', '返回', 'btn btn-xs btn-white | fa fa-undo  bigger-120', null, '3', '4', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('130', 'company_view', 'company', 'view', '查看基本资料', 'btn btn-xs btn-white | fa fa-eye bigger-120', '/company/view', '5', '3', null, null, '800*520', '1', '0', null, '1');
INSERT INTO `tfw_menu` VALUES ('144', 'demand_manage', '0', null, '需求管理', 'fa-users', null, '1', '1', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('145', 'demand', 'demand_manage', null, '需求管理', 'fa-users', '/demand/', '1', '2', null, null, '800*520', '1', '0', null, '1');
INSERT INTO `tfw_menu` VALUES ('146', 'demand_add', 'demand', 'add', '新增', 'btn btn-xs btn-white | fa fa-floppy-o bigger-120', '/demand/add', '1', '3', null, null, '800*520', '1', '0', null, '1');
INSERT INTO `tfw_menu` VALUES ('147', 'demand_edit', 'demand', 'edit', '修改', 'btn btn-xs btn-white | fa fa-pencil  bigger-120', '/demand/edit', '2', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('148', 'demand_view', 'demand', 'view', '查看', 'btn btn-xs btn-white | fa fa-eye bigger-120', '/demand/view', '3', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('149', 'server_manage', '0', null, '服务能力管理', 'fa-users', null, '1', '1', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('150', 'server', 'server_manage', null, '服务管理', 'fa-users', '/server/', '1', '2', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('151', 'server_add', 'server', 'add', '新增', 'btn btn-xs btn-white | fa fa-floppy-o bigger-120', '/server/add', '1', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('152', 'server_edit', 'server', 'edit', '修改', 'btn btn-xs btn-white | fa fa-pencil  bigger-120', '/server/edit', '2', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('153', 'server_view', 'server', 'view', '查看', 'btn btn-xs btn-white | fa fa-eye bigger-120', '/server/view', '3', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('154', 'company_info', 'company', 'info', '查看认证资料', 'btn btn-xs btn-white | fa fa-eye bigger-120', '/company/info', '6', '3', null, null, '800*520', '1', '0', null, '2');
INSERT INTO `tfw_menu` VALUES ('155', 'company_autok', 'company', 'autok', '认证通过', '/company/auditOk	btn btn-xs btn-white | fa fa-check  bigger-120', '/company/autok', '7', '3', null, null, '800*520', '1', '0', null, '1');
INSERT INTO `tfw_menu` VALUES ('156', 'company_autfail', 'company', 'autfail', '认证失败', 'btn btn-xs btn-white  btn-danger | fa fa fa-times bigger-120', '/company/autfail', '8', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('157', 'goods_mange', '0', null, '产品管理', 'fa-users', null, '4', '1', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('158', 'goods', 'goods_mange', null, '产品管理', 'fa-users', '/goods/', '1', '2', null, null, '800*520', '1', '0', null, '2');
INSERT INTO `tfw_menu` VALUES ('159', 'goods_add', 'goods', 'add', '新增', 'btn btn-xs btn-white | fa fa-floppy-o bigger-120', '/goods/add', '1', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('160', 'goods_edit', 'goods', 'edit', '修改', 'btn btn-xs btn-white | fa fa-pencil  bigger-120', '/goods/edit', '2', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('161', 'goods_view', 'goods', 'view', '查看', 'btn btn-xs btn-white | fa fa-eye bigger-120', '/goods/view', '3', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('162', 'type_mange', '0', null, '类别管理', 'fa-users', null, '5', '1', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('163', 'demandtype', 'type_mange', null, '类别管理', 'fa-users', '/demandtype/', '1', '2', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('164', 'demandtype_add', 'demandtype', 'add', '新增', 'btn btn-xs btn-white | fa fa-floppy-o bigger-120', '/demandtype/add', '1', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('165', 'demandtype_edit', 'demandtype', 'edit', '修改', 'btn btn-xs btn-white | fa fa-pencil  bigger-120', '/demandtype/edit', '2', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('166', 'demandtype_view', 'demandtype', 'view', '查看', 'btn btn-xs btn-white | fa fa-eye bigger-120', '/demandtype/view', '3', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('167', 'demandtype_remove', 'demandtype', 'remove', '删除', 'btn btn-xs btn-white | fa fa-times  bigger-120', '/demandtype/remove', '4', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('168', 'goods_remove', 'goods', 'remove', '删除', 'btn btn-xs btn-white | fa fa-times  bigger-120', '/goods/remove', '4', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('169', 'server_remove', 'server', 'remove', '删除', 'btn btn-xs btn-white | fa fa-times  bigger-120', '/server/remove', '4', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('170', 'demand_remove', 'demand', 'remove', '删除', 'btn btn-xs btn-white | fa fa-times  bigger-120', '/demand/remove', '4', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('171', 'blogmange', '0', null, '博客', 'fa-users', null, '7', '1', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('172', 'blog', 'blogmange', null, '博客管理', 'fa-users', '/blog/', '1', '2', null, null, '800*520', '1', '0', null, '1');
INSERT INTO `tfw_menu` VALUES ('173', 'blog_add', 'blog', 'add', '新增', 'btn btn-xs btn-white | fa fa-floppy-o bigger-120', '/blog/add', '1', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('174', 'blog_edit', 'blog', 'edit', '修改', 'btn btn-xs btn-white | fa fa-pencil  bigger-120', '/blog/edit', '2', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('175', 'blog_remove', 'blog', 'remove', '删除', 'btn btn-xs btn-white | fa fa-times  bigger-120', '/blog/remove', '3', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('176', 'blog_audit', 'blog', 'audit', '审核', 'btn btn-xs btn-white | fa fa-user  bigger-120', '{\"status\":\"3\"}', '4', '3', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('177', 'blog_audit_ok', 'blog_audit', 'ok', '通过', 'btn btn-xs btn-white | fa fa-check  bigger-120', '/blog/auditOk', '1', '4', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('178', 'blog_audit_refuse', 'blog_audit', 'refuse', '拒绝', 'btn btn-xs btn-white  btn-danger | fa fa fa-times bigger-120', '/blog/auditRefuse', '2', '4', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('179', 'crowds', '0', null, '创新管理', 'fa-users', null, '6', '1', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('180', 'crowd', 'crowds', null, '创新众筹', 'fa-users', '/crowd/', '1', '1', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('181', 'crowd_add', 'crowd', 'add', '新增', 'btn btn-xs btn-white | fa fa-floppy-o bigger-120', '/crowd/add', '1', '2', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('182', 'crowd_view', 'crowd', 'view', '查看', 'btn btn-xs btn-white | fa fa-eye bigger-120', '/crowd/view', '2', '2', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('183', 'crowd_remove', 'crowd', 'remove', '删除', 'btn btn-xs btn-white | fa fa-times  bigger-120', '/crowd/remove', '3', '2', null, null, '800*520', '1', '0', null, '0');
INSERT INTO `tfw_menu` VALUES ('184', 'crowd_edit', 'crowd', 'edit', '修改', 'btn btn-xs btn-white | fa fa-pencil  bigger-120', '/crowd/edit', '4', '2', null, null, '800*520', '1', '0', null, '0');

-- ----------------------------
-- Table structure for tfw_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `tfw_operation_log`;
CREATE TABLE `tfw_operation_log` (
  `ID` int(65) NOT NULL AUTO_INCREMENT,
  `LOGNAME` varchar(255) DEFAULT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `CLASSNAME` varchar(255) DEFAULT NULL,
  `METHOD` text,
  `CREATETIME` datetime DEFAULT NULL,
  `SUCCEED` varchar(255) DEFAULT NULL,
  `MESSAGE` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=751 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tfw_operation_log
-- ----------------------------
INSERT INTO `tfw_operation_log` VALUES ('216', '异常日志', '1', null, 'com.sun.proxy.$Proxy27 cannot be cast to org.springframework.web.multipart.MultipartHttpServletRequest', '2016-02-17 16:26:13', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('217', '异常日志', '1', null, 'write javaBean error', '2016-02-17 16:43:12', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('218', '异常日志', '1', null, '-1', '2016-02-17 16:57:21', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('219', '异常日志', '1', null, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: ORA-01722: 无效数字\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_tfw_tzgg (f_dt_fbsj,f_vc_bt,f_it_xl) values (?,?,?)\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-01722: 无效数字\n\n; SQL []; ORA-01722: 无效数字\n; nested exception is java.sql.SQLSyntaxErrorException: ORA-01722: 无效数字\n', '2016-02-18 10:51:46', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('220', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'f_it_xl\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting null for parameter #3 with JdbcType OTHER . Try setting a different JdbcType for this parameter or a different jdbcTypeForNull configuration property. Cause: java.sql.SQLException: 无效的列类型: 1111', '2016-02-18 10:58:01', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('221', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00942: 表或视图不存在\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select * from TMSP_ATTACH where id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00942: 表或视图不存在\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00942: 表或视图不存在\n', '2016-02-18 15:10:05', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('231', '异常日志', '1', null, '文件不存在!', '2016-02-19 08:48:49', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('232', '异常日志', '1', null, '文件不存在!', '2016-02-19 08:49:02', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('233', '异常日志', '1', null, '文件不存在!', '2016-02-19 08:49:39', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('234', '异常日志', '1', null, '文件不存在!', '2016-02-19 08:50:22', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('235', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'code\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-19 13:29:00', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('236', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'code\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-19 13:29:52', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('237', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'code\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-19 13:33:12', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('238', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00918: 未明确定义列\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT count(*) FROM tfw_menu m LEFT JOIN (SELECT num, name FROM tfw_dict WHERE code = 902) d ON m.status = d.num WHERE 1 = 1 AND (name LIKE CONCAT(CONCAT(\'%\', ?), \'%\')) AND (code LIKE CONCAT(CONCAT(\'%\', ?), \'%\'))\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00918: 未明确定义列\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00918: 未明确定义列\n', '2016-02-19 13:35:17', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('239', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'name\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting null for parameter #1 with JdbcType OTHER . Try setting a different JdbcType for this parameter or a different jdbcTypeForNull configuration property. Cause: java.sql.SQLException: 无效的列类型: 1111', '2016-02-19 13:36:31', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('240', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'name\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting null for parameter #1 with JdbcType OTHER . Try setting a different JdbcType for this parameter or a different jdbcTypeForNull configuration property. Cause: java.sql.SQLException: 无效的列类型: 1111', '2016-02-19 13:37:11', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('241', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'name\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting null for parameter #1 with JdbcType OTHER . Try setting a different JdbcType for this parameter or a different jdbcTypeForNull configuration property. Cause: java.sql.SQLException: 无效的列类型: 1111', '2016-02-19 13:40:07', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('242', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00918: 未明确定义列\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT count(*) FROM tfw_menu m LEFT JOIN (SELECT num, name FROM tfw_dict WHERE code = 902) d ON m.status = d.num WHERE 1 = 1 AND (name LIKE CONCAT(CONCAT(\'%\', ?), \'%\')) AND (code LIKE CONCAT(CONCAT(\'%\', ?), \'%\'))\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00918: 未明确定义列\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00918: 未明确定义列\n', '2016-02-19 13:42:08', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('243', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00918: 未明确定义列\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT count(*) FROM tfw_menu m LEFT JOIN (SELECT num, name FROM tfw_dict WHERE code = 902) d ON m.status = d.num WHERE 1 = 1 AND (name LIKE \'%新增%\') AND (code LIKE \'%user%\')\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00918: 未明确定义列\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00918: 未明确定义列\n', '2016-02-19 13:48:24', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('244', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00918: 未明确定义列\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT count(*) FROM (SELECT m.*, d.name AS DIC_STATUS FROM tfw_menu m LEFT JOIN (SELECT num, name FROM tfw_dict WHERE code = 902) d ON m.status = d.num WHERE 1 = 1 AND (name LIKE CONCAT(CONCAT(\'%\', ?), \'%\')) AND (code LIKE CONCAT(CONCAT(\'%\', ?), \'%\'))) blade_statement\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00918: 未明确定义列\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00918: 未明确定义列\n', '2016-02-19 13:50:40', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('245', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00918: 未明确定义列\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT count(*) FROM (SELECT m.*, d.name AS DIC_STATUS FROM tfw_menu m LEFT JOIN (SELECT num, name FROM tfw_dict WHERE code = 902) d ON m.status = d.num WHERE 1 = 1 AND (name LIKE CONCAT(CONCAT(\'%\', ?), \'%\'))) blade_statement\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00918: 未明确定义列\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00918: 未明确定义列\n', '2016-02-19 13:54:35', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('246', '异常日志', '1', null, 'Index: 0, Size: 0', '2016-02-19 14:00:39', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('247', '异常日志', '1', null, 'Index: 0, Size: 0', '2016-02-19 14:00:41', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('248', '异常日志', '1', null, 'Index: 0, Size: 0', '2016-02-19 14:01:13', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('249', '异常日志', '1', null, 'Index: 0, Size: 0', '2016-02-19 14:04:21', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('250', '异常日志', '1', null, 'Index: 0, Size: 0', '2016-02-19 14:04:58', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('251', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"R\".\"ID\": 标识符无效\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select * from ( select tmp_page.*, rownum row_id from ( SELECT * FROM (SELECT r.*, d.simpleName DEPTNAME, (SELECT name FROM tfw_role WHERE id = r.pId) PNAME FROM tfw_role r LEFT JOIN tfw_dept d ON r.deptId = d.id) blade_statement WHERE 1 = 1 order by r.id asc ) tmp_page where rownum <= ? ) where row_id > ?\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"R\".\"ID\": 标识符无效\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00904: \"R\".\"ID\": 标识符无效\n', '2016-02-19 14:08:19', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('252', '异常日志', '21', null, 'java.sql.SQLIntegrityConstraintViolationException: ORA-00001: 违反唯一约束条件 (TFRAMEWORK.SYS_C0041927)\n', '2016-02-19 14:10:58', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('253', '异常日志', '21', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00907: 缺失右括号\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select count(*) from (select * from (select            bg.*,          nr.F_TX_BGNR,          u1.name DIC_F_IT_CJR,          u2.name DIC_F_IT_XGR                from           tb_tfw_gzbg bg           left join tb_tfw_gzbgnr nr on bg.f_it_xl=nr.f_it_bgxl           left join tfw_user u1 on bg.f_it_cjr=u1.id           left join tfw_user u2 on bg.f_it_xgr=u2.id) blade_statement where 1=1  where 1=1 and bg.f_it_cjr = ?) tmp_count\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00907: 缺失右括号\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00907: 缺失右括号\n', '2016-02-19 14:14:47', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('254', '异常日志', '21', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00907: 缺失右括号\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select count(*) from (select * from (select            bg.*,          nr.F_TX_BGNR,          u1.name DIC_F_IT_CJR,          u2.name DIC_F_IT_XGR                from           tb_tfw_gzbg bg           left join tb_tfw_gzbgnr nr on bg.f_it_xl=nr.f_it_bgxl           left join tfw_user u1 on bg.f_it_cjr=u1.id           left join tfw_user u2 on bg.f_it_xgr=u2.id) blade_statement where 1=1  where 1=1 and bg.f_it_cjr = ?) tmp_count\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00907: 缺失右括号\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00907: 缺失右括号\n', '2016-02-19 14:15:23', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('255', '异常日志', '21', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00907: 缺失右括号\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select count(*) from (select * from (select            bg.*,          nr.F_TX_BGNR,          u1.name DIC_F_IT_CJR,          u2.name DIC_F_IT_XGR                from           tb_tfw_gzbg bg           left join tb_tfw_gzbgnr nr on bg.f_it_xl=nr.f_it_bgxl           left join tfw_user u1 on bg.f_it_cjr=u1.id           left join tfw_user u2 on bg.f_it_xgr=u2.id) blade_statement where 1=1 and bg.f_it_cjr = ? where 1=1 ) tmp_count\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00907: 缺失右括号\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00907: 缺失右括号\n', '2016-02-19 14:17:19', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('256', '异常日志', '21', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"BG\".\"F_IT_CJR\": 标识符无效\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT count(*) FROM (SELECT bg.*, nr.F_TX_BGNR, u1.name DIC_F_IT_CJR, u2.name DIC_F_IT_XGR FROM tb_tfw_gzbg bg LEFT JOIN tb_tfw_gzbgnr nr ON bg.f_it_xl = nr.f_it_bgxl LEFT JOIN tfw_user u1 ON bg.f_it_cjr = u1.id LEFT JOIN tfw_user u2 ON bg.f_it_xgr = u2.id) blade_statement WHERE 1 = 1 AND bg.f_it_cjr = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"BG\".\"F_IT_CJR\": 标识符无效\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00904: \"BG\".\"F_IT_CJR\": 标识符无效\n', '2016-02-19 14:18:34', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('257', '异常日志', '21', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"BG\".\"F_IT_XL\": 标识符无效\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select * from ( select tmp_page.*, rownum row_id from ( SELECT * FROM (SELECT bg.*, nr.F_TX_BGNR, u1.name DIC_F_IT_CJR, u2.name DIC_F_IT_XGR FROM tb_tfw_gzbg bg LEFT JOIN tb_tfw_gzbgnr nr ON bg.f_it_xl = nr.f_it_bgxl LEFT JOIN tfw_user u1 ON bg.f_it_cjr = u1.id LEFT JOIN tfw_user u2 ON bg.f_it_xgr = u2.id) blade_statement WHERE 1 = 1 AND f_it_cjr = ? order by bg.F_IT_XL desc ) tmp_page where rownum <= ? ) where row_id > ?\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"BG\".\"F_IT_XL\": 标识符无效\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00904: \"BG\".\"F_IT_XL\": 标识符无效\n', '2016-02-19 14:20:09', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('258', '异常日志', '1', null, 'java.sql.SQLSyntaxErrorException: ORA-00911: 无效字符\n', '2016-02-20 14:03:39', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('261', '异常日志', '1', null, 'Required String parameter \'type\' is not present', '2016-02-23 14:27:19', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('262', '异常日志', '1', null, 'Mapped Statements collection does not contain value for 0', '2016-02-23 14:27:42', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('263', '异常日志', '1', null, 'Mapped Statements collection does not contain value for 0', '2016-02-23 14:28:13', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('264', '异常日志', '1', null, 'Mapped Statements collection does not contain value for 0', '2016-02-23 14:28:33', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('265', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLException: 要执行的 SQL 语句不得为空白或空值\r\n### The error may involve SELECT.0\r\n### The error occurred while executing a query\r\n### SQL: \r\n### Cause: java.sql.SQLException: 要执行的 SQL 语句不得为空白或空值\n; uncategorized SQLException for SQL []; SQL state [99999]; error code [17104]; 要执行的 SQL 语句不得为空白或空值; nested exception is java.sql.SQLException: 要执行的 SQL 语句不得为空白或空值', '2016-02-23 14:30:08', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('266', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLException: 要执行的 SQL 语句不得为空白或空值\r\n### The error may involve SELECT.0\r\n### The error occurred while executing a query\r\n### SQL: \r\n### Cause: java.sql.SQLException: 要执行的 SQL 语句不得为空白或空值\n; uncategorized SQLException for SQL []; SQL state [99999]; error code [17104]; 要执行的 SQL 语句不得为空白或空值; nested exception is java.sql.SQLException: 要执行的 SQL 语句不得为空白或空值', '2016-02-23 14:30:35', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('267', '异常日志', '1', null, 'Mapped Statements collection does not contain value for ', '2016-02-23 15:27:09', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('268', '异常日志', '1', null, 'Mapped Statements collection does not contain value for ', '2016-02-23 15:27:25', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('269', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY\": 标识符无效\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select NUM as \"num\",ID as \"id\",PID as \"pId\",NAME as \"name\",(case when (pId=0 or pId is null) then \'true\' else \'false\' end) \"open\" from  TFW_DICT where code=diy\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY\": 标识符无效\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY\": 标识符无效\n', '2016-02-23 16:10:49', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('270', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY\": 标识符无效\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select NUM as \"num\",ID as \"id\",PID as \"pId\",NAME as \"name\",(case when (pId=0 or pId is null) then \'true\' else \'false\' end) \"open\" from  TFW_DICT where code=diy\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY\": 标识符无效\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY\": 标识符无效\n', '2016-02-23 16:10:50', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('271', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY\": 标识符无效\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select NUM as \"num\",ID as \"id\",PID as \"pId\",NAME as \"name\",(case when (pId=0 or pId is null) then \'true\' else \'false\' end) \"open\" from  TFW_DICT where code=diy\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY\": 标识符无效\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY\": 标识符无效\n', '2016-02-23 16:13:59', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('272', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY\": 标识符无效\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select NUM as \"num\",ID as \"id\",PID as \"pId\",NAME as \"name\",(case when (pId=0 or pId is null) then \'true\' else \'false\' end) \"open\" from  TFW_DICT where code=diy\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY\": 标识符无效\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY\": 标识符无效\n', '2016-02-23 16:14:03', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('273', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY\": 标识符无效\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select NUM as \"num\",ID as \"id\",PID as \"pId\",NAME as \"name\",(case when (pId=0 or pId is null) then \'true\' else \'false\' end) \"open\" from  TFW_DICT where code=diy\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY\": 标识符无效\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY\": 标识符无效\n', '2016-02-23 16:14:06', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('274', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select NUM as \"num\",ID as \"id\",PID as \"pId\",NAME as \"name\",(case when (pId=0 or pId is null) then \'true\' else \'false\' end) \"open\" from  TFW_DICT where code=diy_notice\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n', '2016-02-23 16:19:43', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('275', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select NUM as \"num\",ID as \"id\",PID as \"pId\",NAME as \"name\",(case when (pId=0 or pId is null) then \'true\' else \'false\' end) \"open\" from  TFW_DICT where code=diy_notice\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n', '2016-02-23 16:19:44', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('276', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select NUM as \"num\",ID as \"id\",PID as \"pId\",NAME as \"name\",(case when (pId=0 or pId is null) then \'true\' else \'false\' end) \"open\" from  TFW_DICT where code=diy_notice\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n', '2016-02-23 16:21:50', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('277', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select NUM as \"num\",ID as \"id\",PID as \"pId\",NAME as \"name\",(case when (pId=0 or pId is null) then \'true\' else \'false\' end) \"open\" from  TFW_DICT where code=diy_notice\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n', '2016-02-23 16:21:52', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('278', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select NUM as \"num\",ID as \"id\",PID as \"pId\",NAME as \"name\",(case when (pId=0 or pId is null) then \'true\' else \'false\' end) \"open\" from  TFW_DICT where code=diy_notice\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n', '2016-02-23 16:23:14', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('279', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select NUM as \"num\",ID as \"id\",PID as \"pId\",NAME as \"name\",(case when (pId=0 or pId is null) then \'true\' else \'false\' end) \"open\" from  TFW_DICT where code=diy_notice\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n', '2016-02-23 16:23:33', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('280', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select NUM as \"num\",ID as \"id\",PID as \"pId\",NAME as \"name\",(case when (pId=0 or pId is null) then \'true\' else \'false\' end) \"open\" from  TFW_DICT where code=diy_notice\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00904: \"DIY_NOTICE\": 标识符无效\n', '2016-02-23 16:24:34', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('281', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_IT_LX_equal\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 16:47:44', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('282', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_IT_LX_equal\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 16:48:25', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('283', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_IT_LX_equal\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 16:49:58', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('284', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_IT_LX_equ\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 16:52:15', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('285', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_IT_LX_equal\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 16:55:44', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('286', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_IT_LX_2nd\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 16:57:31', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('287', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_VC_BT_2nd\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 16:59:17', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('288', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_VC_BT\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #2 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #2 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 16:59:38', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('289', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_VC_BT\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #2 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #2 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 17:00:02', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('290', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_VC_BT_2nd\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 17:00:20', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('291', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_VC_BT_2nd\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 17:02:13', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('292', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_VC_BT\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #2 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #2 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 17:03:19', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('293', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_VC_BT\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #2 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #2 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 17:03:56', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('294', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_VC_BT\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #2 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #2 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 17:06:42', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('295', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_VC_BT_2nd\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 17:07:36', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('296', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_VC_BT_2nd\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 17:07:50', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('297', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_IT_LX_2nd\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting null for parameter #1 with JdbcType OTHER . Try setting a different JdbcType for this parameter or a different jdbcTypeForNull configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 17:11:19', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('298', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_IT_LX\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 17:15:33', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('299', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_IT_LX_2nd\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-23 17:15:35', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('300', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_IT_LX\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-24 08:38:32', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('301', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_IT_LX_2nd\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-24 08:38:40', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('302', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_IT_LX_2nd\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-24 08:38:43', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('303', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_IT_LX_2nd\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-24 08:41:40', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('304', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_IT_LX_2nd\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-24 08:41:48', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('305', '异常日志', '1', null, 'Expected one result (or null) to be returned by selectOne(), but found: 2', '2016-02-24 08:41:55', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('306', '异常日志', '1', null, 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'F_IT_LX\', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: 无效的列索引', '2016-02-24 08:43:14', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('307', '异常日志', '1', null, 'Expected one result (or null) to be returned by selectOne(), but found: 2', '2016-02-24 08:45:51', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('308', '异常日志', '1', null, 'Expected one result (or null) to be returned by selectOne(), but found: 2', '2016-02-24 08:47:36', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('309', '异常日志', '1', null, 'Expected one result (or null) to be returned by selectOne(), but found: 2', '2016-02-24 08:53:09', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('310', '异常日志', '1', null, 'Expected one result (or null) to be returned by selectOne(), but found: 2', '2016-02-24 08:53:52', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('311', '异常日志', '1', null, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"USERID\": 标识符无效\n\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select * from tfw_user where userid = 1\r\n### Cause: java.sql.SQLSyntaxErrorException: ORA-00904: \"USERID\": 标识符无效\n\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: ORA-00904: \"USERID\": 标识符无效\n', '2016-02-24 09:57:54', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('312', '异常日志', '1', null, 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Table \'tframework.tfw_user\' doesn\'t exist', '2016-02-24 14:08:54', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('313', '异常日志', '1', null, 'java.lang.IllegalAccessException: Class org.beetl.sql.core.mapping.BeanProcessor can not access a member of class com.tonbusoft.core.toolbox.Maps with modifiers \"private\"', '2016-02-24 16:43:38', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('314', '异常日志', '1', null, 'SQL Script Error:>>04:43:48:变量未定义(VAR_NOT_DEFINED):jds 位于1行 资源:auto._gen_select * from tfw_me', '2016-02-24 16:43:48', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('315', '异常日志', '1', null, 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'1\',\'2\',\'3\',\'4\',\'5\',\'6\',\'7\',\'8\',\'9\',\'10\' \nlimit 0 , 5\' at line 1', '2016-02-24 16:44:46', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('316', '异常日志', '1', null, 'java.sql.SQLSyntaxErrorException: ORA-00907: 缺失右括号\n', '2016-02-24 16:55:09', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('317', '异常日志', '1', null, 'java.lang.InstantiationException', '2016-02-25 13:16:46', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('318', '异常日志', '1', null, 'java.lang.InstantiationException', '2016-02-25 13:17:33', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('319', '异常日志', '1', null, 'java.lang.InstantiationException', '2016-02-25 13:18:37', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('320', '异常日志', '1', null, 'java.lang.IllegalAccessException: Class org.beetl.sql.core.mapping.BeanProcessor can not access a member of class com.tonbusoft.core.toolbox.Maps with modifiers \"private\"', '2016-02-25 13:30:23', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('321', '异常日志', '1', null, '在 /beetlsql/mysql/userMapper.sql 和 /beetlsql/mysql/userMapper.md 和 /beetlsql/userMapper.sql 和 /beetlsql/userMapper.md 和  未找到[id=userMapper.list]相关的SQL', '2016-03-19 11:17:04', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('322', '异常日志', '1', null, '在 /beetlsql/mysql/userMapper.sql 和 /beetlsql/mysql/userMapper.md 和 /beetlsql/userMapper.sql 和 /beetlsql/userMapper.md 和  未找到[id=userMapper.list]相关的SQL', '2016-03-19 11:23:52', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('324', '异常日志', '1', null, '在 /beetlsql/mysql/noticeMapper.sql 和 /beetlsql/mysql/noticeMapper.md 和 /beetlsql/noticeMapper.sql 和 /beetlsql/noticeMapper.md 和  未找到[id=noticeMapper.list]相关的SQL', '2016-03-19 14:43:28', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('325', '异常日志', '1', null, '在 /beetlsql/mysql/noticeMapper.sql 和 /beetlsql/mysql/noticeMapper.md 和 /beetlsql/noticeMapper.sql 和 /beetlsql/noticeMapper.md 和  未找到[id=noticeMapper.list]相关的SQL', '2016-03-19 15:23:03', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('326', '异常日志', '1', null, '在 /beetlsql/mysql/reportMapper.sql 和 /beetlsql/mysql/reportMapper.md 和 /beetlsql/reportMapper.sql 和 /beetlsql/reportMapper.md 和  未找到[id=reportMapper.list]相关的SQL', '2016-03-21 09:11:45', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('327', '异常日志', '1', null, '在 /beetlsql/mysql/reportMapper.sql 和 /beetlsql/mysql/reportMapper.md 和 /beetlsql/reportMapper.sql 和 /beetlsql/reportMapper.md 和  未找到[id=reportMapper.list]相关的SQL', '2016-03-21 09:16:29', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('328', '异常日志', '1', null, 'SQL Script Error:>>09:17:12:调用方法抛出了异常(NATIVE_CALL_EXCEPTION):use 位于2行 资源:auto._gen_select * from (selec', '2016-03-21 09:17:12', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('329', '异常日志', '1', null, 'SQL Script Error:>>09:18:49:调用方法抛出了异常(NATIVE_CALL_EXCEPTION):use 位于2行 资源:auto._gen_select * from (selec', '2016-03-21 09:18:49', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('330', '异常日志', '1', null, 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'from\r\ntb_tfw_gzbg bg\r\nleft join tb_tfw_gzbgnr nr on bg.f_it_xl=nr.f_it_bgxl\r\nlef\' at line 3', '2016-03-21 09:19:11', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('331', '异常日志', '1', null, 'SQL Script Error:>>09:19:54:调用方法抛出了异常(NATIVE_CALL_EXCEPTION):use 位于2行 资源:auto._gen_select * from (selec', '2016-03-21 09:19:54', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('332', '异常日志', '1', null, 'SQL Script Error:>>09:20:01:调用方法抛出了异常(NATIVE_CALL_EXCEPTION):use 位于2行 资源:auto._gen_select * from (selec', '2016-03-21 09:20:01', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('333', '异常日志', '1', null, 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'from\r\ntb_tfw_gzbg bg\r\nleft join tb_tfw_gzbgnr nr on bg.f_it_xl=nr.f_it_bgxl\r\nlef\' at line 3', '2016-03-21 09:20:49', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('334', '异常日志', '1', null, 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'from\r\ntb_tfw_gzbg bg\r\nleft join tb_tfw_gzbgnr nr on bg.f_it_xl=nr.f_it_bgxl\r\nlef\' at line 3', '2016-03-21 09:21:40', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('335', '异常日志', '1', null, 'SQL Script Error:>>09:22:12:调用方法抛出了异常(NATIVE_CALL_EXCEPTION):use 位于2行 资源:auto._gen_select * from (selec', '2016-03-21 09:22:12', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('336', '异常日志', '1', null, 'SQL Script Error:>>09:22:21:调用方法抛出了异常(NATIVE_CALL_EXCEPTION):use 位于2行 资源:auto._gen_select * from (selec', '2016-03-21 09:22:21', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('337', '异常日志', '1', null, 'SQL Script Error:>>09:23:25:调用方法抛出了异常(NATIVE_CALL_EXCEPTION):use 位于2行 资源:auto._gen_select * from (selec', '2016-03-21 09:23:25', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('338', '异常日志', '1', null, 'java.util.ArrayList cannot be cast to java.util.Map', '2016-03-21 09:24:49', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('339', '异常日志', '1', null, '在 /beetlsql/mysql/noticeMapper.sql 和 /beetlsql/mysql/noticeMapper.md 和 /beetlsql/noticeMapper.sql 和 /beetlsql/noticeMapper.md 和  未找到[id=noticeMapper.list]相关的SQL', '2016-03-21 09:30:26', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('340', '异常日志', '1', null, '在 /beetlsql/mysql/newsMapper.sql 和 /beetlsql/mysql/newsMapper.md 和 /beetlsql/newsMapper.sql 和 /beetlsql/newsMapper.md 和  未找到[id=newsMapper.data]相关的SQL', '2016-03-21 09:35:03', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('341', '异常日志', '1', null, '在 /beetlsql/mysql/noticeMapper.sql 和 /beetlsql/mysql/noticeMapper.md 和 /beetlsql/noticeMapper.sql 和 /beetlsql/noticeMapper.md 和  未找到[id=noticeMapper.list]相关的SQL', '2016-03-21 10:57:21', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('342', '异常日志', '1', null, '在 /beetlsql/mysql/noticeMapper.sql 和 /beetlsql/mysql/noticeMapper.md 和 /beetlsql/noticeMapper.sql 和 /beetlsql/noticeMapper.md 和  未找到[id=noticeMapper.list]相关的SQL', '2016-03-21 10:57:45', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('343', '异常日志', '1', null, '在 /beetlsql/mysql/notice.sql 和 /beetlsql/mysql/notice.md 和 /beetlsql/notice.sql 和 /beetlsql/notice.md 和  未找到[id=notice.list]相关的SQL', '2016-03-21 10:58:14', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('344', '异常日志', '1', null, '删除失败！', '2016-03-30 13:35:12', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('345', '异常日志', '1', null, '删除失败！', '2016-03-30 13:35:58', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('346', '异常日志', '1', null, '未取到ID的值,无法修改!', '2016-03-31 08:56:32', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('347', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-04-01 11:23:21', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('348', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-04-01 11:30:07', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('349', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-04-01 12:06:47', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('350', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-04-01 12:08:32', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('351', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-04-01 12:19:34', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('352', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-04-05 08:40:25', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('353', '异常日志', '1', null, '数据库中此数据不存在，可能数据已经被删除，请刷新数据后在操作', '2016-04-05 08:40:33', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('354', '异常日志', '1', null, 'com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'F_CR_FBZT\' at row 1', '2016-04-07 14:08:08', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('355', '异常日志', '1', null, 'Inject [height] error!', '2016-04-07 16:27:32', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('356', '异常日志', '1', null, '\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'dept\' in \'where clause\'\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select NUM as \"num\",ID as \"id\",PID as \"pId\",NAME as \"name\",(case when (pId=0 or pId is null) then \'true\' else \'false\' end) \"open\" from  TFW_DICT where code=dept\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'dept\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'dept\' in \'where clause\'', '2016-04-09 10:07:35', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('357', '异常日志', '1', null, 'Mapped Statements collection does not contain value for 0', '2016-04-09 10:08:46', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('358', '异常日志', '1', null, 'Mapped Statements collection does not contain value for 0', '2016-04-09 10:09:22', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('359', '异常日志', '1', null, '\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'dept\' in \'where clause\'\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select NUM as \"num\",ID as \"id\",PID as \"pId\",NAME as \"name\",(case when (pId=0 or pId is null) then \'true\' else \'false\' end) \"open\" from  TFW_DICT where code=dept\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'dept\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'dept\' in \'where clause\'', '2016-04-09 10:11:16', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('360', '异常日志', '1', null, '\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'dept\' in \'where clause\'\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select NUM as \"num\",ID as \"id\",PID as \"pId\",NAME as \"name\",(case when (pId=0 or pId is null) then \'true\' else \'false\' end) \"open\" from  TFW_DICT where code=dept\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'dept\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'dept\' in \'where clause\'', '2016-04-09 10:11:28', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('361', '异常日志', '1', null, '\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'dept\' in \'where clause\'\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select NUM as \"num\",ID as \"id\",PID as \"pId\",NAME as \"name\",(case when (pId=0 or pId is null) then \'true\' else \'false\' end) \"open\" from  TFW_DICT where code=dept\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'dept\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'dept\' in \'where clause\'', '2016-04-09 10:11:58', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('362', '异常日志', '1', null, 'Mapped Statements collection does not contain value for 0', '2016-04-09 10:12:36', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('363', '异常日志', '1', null, 'Required String parameter \'where\' is not present', '2016-04-09 10:37:24', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('364', '异常日志', '1', null, 'Required String parameter \'where\' is not present', '2016-04-09 10:37:27', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('365', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-04-09 10:37:53', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('366', '异常日志', '1', null, 'Required String parameter \'where\' is not present', '2016-04-09 10:37:59', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('367', '异常日志', '1', null, 'Required String parameter \'where\' is not present', '2016-04-09 10:38:04', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('368', '异常日志', '1', null, '数据库中此数据不存在，可能数据已经被删除，请刷新数据后在操作', '2016-04-09 10:38:18', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('369', '异常日志', '1', null, 'Required String parameter \'where\' is not present', '2016-04-09 11:00:13', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('370', '异常日志', '1', null, 'Required String parameter \'where\' is not present', '2016-04-09 11:30:54', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('371', '异常日志', '1', null, 'Required String parameter \'where\' is not present', '2016-04-09 11:31:16', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('372', '异常日志', '1', null, 'Required String parameter \'where\' is not present', '2016-04-09 11:31:34', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('373', '异常日志', '1', null, 'Required String parameter \'where\' is not present', '2016-04-09 11:31:46', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('374', '异常日志', '1', null, 'Required String parameter \'where\' is not present', '2016-04-09 13:42:14', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('375', '异常日志', '1', null, 'Required String parameter \'where\' is not present', '2016-04-09 13:43:06', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('376', '异常日志', '1', null, 'Required String parameter \'where\' is not present', '2016-04-09 13:43:20', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('377', '异常日志', '1', null, 'syntax error, expect {, actual int', '2016-04-09 13:46:01', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('378', '异常日志', '1', null, 'syntax error, expect {, actual int', '2016-04-09 13:46:15', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('379', '异常日志', '1', null, 'syntax error, expect {, actual int', '2016-04-09 13:46:25', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('380', '异常日志', '1', null, 'syntax error, expect {, actual EOF', '2016-04-09 13:48:11', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('381', '异常日志', '1', null, 'syntax error, expect {, actual EOF', '2016-04-09 13:48:26', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('382', '异常日志', '1', null, '删除失败！', '2016-04-11 10:11:36', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('383', '异常日志', '1', null, '删除失败！', '2016-04-11 10:11:48', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('384', '异常日志', '1', null, 'Required String parameter \'inter\' is not present', '2016-04-12 09:24:15', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('385', '异常日志', '1', null, 'Required String parameter \'inter\' is not present', '2016-04-12 09:24:20', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('386', '异常日志', '1', null, 'Required String parameter \'inter\' is not present', '2016-04-12 09:24:59', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('387', '异常日志', '1', null, 'Required String parameter \'inter\' is not present', '2016-04-12 09:25:05', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('388', '异常日志', '1', null, 'Required String parameter \'inter\' is not present', '2016-04-12 09:27:57', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('389', '异常日志', '1', null, 'Required String parameter \'inter\' is not present', '2016-04-12 09:28:12', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('390', '异常日志', '1', null, 'Required String parameter \'intercept\' is not present', '2016-04-12 09:30:47', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('391', '异常日志', '1', null, 'Instance class [10] error!', '2016-04-12 09:32:45', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('392', '异常日志', '1', null, 'Instance class [] error!', '2016-04-12 09:34:03', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('393', '异常日志', '1', null, 'Instance class [] error!', '2016-04-12 09:34:36', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('394', '异常日志', '1', null, 'Instance class [] error!', '2016-04-12 09:35:52', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('395', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-04-12 16:43:40', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('396', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-04-12 16:44:01', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('397', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-04-12 16:44:11', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('398', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-04-12 16:45:01', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('399', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-04-12 16:49:38', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('400', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-04-12 16:50:08', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('401', '异常日志', '1', null, '已经有XXXX......', '2016-05-07 15:31:01', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('402', '异常日志', '1', null, 'Could not find acceptable representation', '2016-05-10 09:35:31', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('403', '异常日志', '1', null, 'Could not find acceptable representation', '2016-05-10 09:37:13', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('404', '异常日志', '1', null, 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'1\'\' at line 1', '2016-05-16 14:24:36', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('405', '异常日志', '1', null, '\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where id in (1,2,3)) tmp_count\' at line 1\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select count(*) from (select * from (select r.*,d.simpleName DEPTNAME,(select name from tfw_role where id=r.pId) PNAME from tfw_role r left join tfw_dept d on r.deptId=d.id) blade_statement where 1=1 where id in (1,2,3)) tmp_count\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where id in (1,2,3)) tmp_count\' at line 1\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where id in (1,2,3)) tmp_count\' at line 1', '2016-06-03 08:45:03', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('406', '异常日志', '1', null, '\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where r.id in (1,2,3)) tmp_count\' at line 1\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select count(*) from (select * from (select r.*,d.simpleName DEPTNAME,(select name from tfw_role where id=r.pId) PNAME from tfw_role r left join tfw_dept d on r.deptId=d.id) blade_statement where 1=1 where r.id in (1,2,3)) tmp_count\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where r.id in (1,2,3)) tmp_count\' at line 1\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where r.id in (1,2,3)) tmp_count\' at line 1', '2016-06-03 08:46:18', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('407', '异常日志', '21', null, '\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')) tmp_count\' at line 1\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select count(*) from (select * from (select d.*,(select simpleName from tfw_dept  where id=d.pId) PNAME from tfw_dept d) blade_statement where 1=1 and id in (11,)) tmp_count\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')) tmp_count\' at line 1\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')) tmp_count\' at line 1', '2016-06-03 09:00:55', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('408', '异常日志', '21', null, '\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')) tmp_count\' at line 1\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select count(*) from (select * from (select d.*,(select simpleName from tfw_dept  where id=d.pId) PNAME from tfw_dept d) blade_statement where 1=1 and id in (11,)) tmp_count\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')) tmp_count\' at line 1\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')) tmp_count\' at line 1', '2016-06-03 09:01:16', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('409', '异常日志', '21', null, '\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')) tmp_count\' at line 1\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select count(*) from (select * from (select d.*,(select simpleName from tfw_dept  where id=d.pId) PNAME from tfw_dept d) blade_statement where 1=1 and id in (11,)) tmp_count\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')) tmp_count\' at line 1\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')) tmp_count\' at line 1', '2016-06-03 09:01:23', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('410', '异常日志', '21', null, '\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')) tmp_count\' at line 1\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select count(*) from (select * from (select d.*,(select simpleName from tfw_dept  where id=d.pId) PNAME from tfw_dept d) blade_statement where 1=1 and id in (11,)) tmp_count\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')) tmp_count\' at line 1\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')) tmp_count\' at line 1', '2016-06-03 09:02:00', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('411', '异常日志', '22', null, '当前用户无权操作!', '2016-06-03 09:34:11', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('412', '异常日志', '22', null, '\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'and id in (5)\' at line 1\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: select id \"id\",pId \"pId\",name as \"name\",(case when (pId=0 or pId is null) then \'true\' else \'false\' end) \"open\" from  TFW_ROLE order by pId,num asc and id in (5)\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'and id in (5)\' at line 1\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'and id in (5)\' at line 1', '2016-06-03 09:48:07', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('413', '异常日志', '1', null, 'For input string: \"administrator\"', '2016-06-03 15:04:25', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('414', '异常日志', '1', null, 'For input string: \"administrator\"', '2016-06-03 15:05:02', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('415', '异常日志', '1', null, 'For input string: \"administrator\"', '2016-06-03 15:05:45', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('416', '异常日志', '1', null, 'For input string: \"administrator\"', '2016-06-03 15:07:23', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('417', '异常日志', '1', null, 'table \"tb_yw_blog\" not exist', '2016-06-12 16:54:39', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('418', '异常日志', '1', null, 'table \"tb_yw_tzgg\" not exist', '2016-06-12 16:55:12', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('419', '异常日志', '1', null, 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'id\' in \'where clause\'', '2016-06-18 09:54:45', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('420', '异常日志', '1', null, 'Inject [num] error!', '2016-09-29 14:27:28', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('421', '异常日志', '1', null, 'Inject [num] error!', '2016-09-29 14:29:48', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('422', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-09-29 15:07:56', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('423', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-09-29 15:08:02', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('424', '异常日志', '1', null, 'java.lang.reflect.InvocationTargetException', '2016-09-30 10:37:54', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('425', '异常日志', '1', null, '文件不存在!', '2016-09-30 10:51:19', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('426', '异常日志', '1', null, '文件不存在!', '2016-09-30 10:53:15', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('427', '异常日志', '1', null, 'java.lang.reflect.InvocationTargetException', '2016-09-30 10:56:37', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('428', '异常日志', '1', null, 'java.lang.reflect.InvocationTargetException', '2016-09-30 10:59:43', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('429', '异常日志', '1', null, 'java.lang.reflect.InvocationTargetException', '2016-09-30 11:00:13', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('430', '异常日志', '1', null, 'java.lang.reflect.InvocationTargetException', '2016-09-30 11:00:58', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('431', '异常日志', '1', null, '文件不存在!', '2016-09-30 11:15:43', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('432', '异常日志', '1', null, 'Inject [createtime] error!', '2016-09-30 11:27:22', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('433', '异常日志', '1', null, 'Inject [createtime] error!', '2016-09-30 11:27:27', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('434', '异常日志', '1', null, '文件不存在!', '2016-09-30 11:29:37', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('435', '异常日志', '1', null, '文件不存在!', '2016-09-30 11:29:44', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('436', '异常日志', '1', null, '文件不存在!', '2016-09-30 14:08:10', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('437', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-09-30 14:17:04', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('438', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-09-30 14:22:48', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('439', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-09-30 14:24:58', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('440', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-09-30 14:37:59', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('441', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-09-30 14:47:35', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('442', '异常日志', '1', null, '表单数据版本号和数据库数据版本号不一致，可能数据已经被其他人修改，请重新编辑', '2016-09-30 15:45:41', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('445', '修改', '1', null, '[类名]:com.ikkong.system.controller.UserController  [方法]:update  [参数]:TFW_USER.EMAIL=&TFW_USER.PASSWORD=ab857cd259f2c40b551f448fdf553719&VERSION=4&TFW_USER.BIRTHDAY=2016-09-29 09:27:30.0&TFW_USER.NAME=阿斯顿飞过&jstime=1475907985426&password=ab857cd259f2c40b551f448fdf553719&TFW_USER.SEX=2&token_TFW_USER.DEPTID=&TFW_USER.ID=23&TFW_USER.PHONE=1', '2016-10-08 14:26:25', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('446', '删除', '1', null, '[类名]:com.ikkong.system.controller.OlogController  [方法]:remove  [参数]:ids=444', '2016-10-08 14:27:06', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('447', '新增', '1', null, '[类名]:com.ikkong.system.controller.UserController  [方法]:save  [参数]:TFW_USER.EMAIL=&TFW_USER.PASSWORD=&TFW_USER.BIRTHDAY=&TFW_USER.ACCOUNT=1&token_TFW_USER.SEX=&TFW_USER.NAME=&jstime=1475908214145&password=&token_TFW_USER.DEPTID=&TFW_USER.PHONE=', '2016-10-08 14:30:14', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('448', '删除', '1', null, '[类名]:com.ikkong.system.controller.GenerateController  [方法]:remove  [参数]:ids=1', '2016-10-08 15:38:55', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('449', '新增', '1', null, '[类名]:com.ikkong.system.controller.GenerateController  [方法]:save  [参数]:tfw_generate.pkname=f_it_id&tfw_generate.realpath=E:\\gen&tfw_generate.tablename=tb_tfw_blog&jstime=1475912962932&tfw_generate.name=blog&tfw_generate.modelname=Blog&tfw_generate.packagename=com.ikkong.platform', '2016-10-08 15:49:23', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('450', '异常日志', '1', null, 'table \"tb_tfw_blog\" not exist', '2016-10-08 15:49:31', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('451', '异常日志', '1', null, 'table \"tb_tfw_blog\" not exist', '2016-10-08 15:49:45', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('452', '异常日志', '1', null, 'table \"tb_tfw_blog\" not exist', '2016-10-08 15:51:16', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('453', '异常日志', '1', null, 'table \"tb_tfw_blog\" not exist', '2016-10-08 15:53:22', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('454', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa fa-bell&tfw_menu.url=/blog/&tfw_menu.name=博客文章&tfw_menu.isopen=1&jstime=1475915788520&tfw_menu.tips=&tfw_menu.alias=&tfw_menu.code=blog&tfw_menu.pcode=office&tfw_menu.levels=2&tfw_menu.num=2', '2016-10-08 16:36:29', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('455', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa fa-coffee&tfw_menu.url=/blog/&tfw_menu.name=博客文章&tfw_menu.isopen=1&jstime=1475915951225&tfw_menu.tips=800*520&tfw_menu.alias=&tfw_menu.code=blog&tfw_menu.pcode=office&tfw_menu.levels=2&tfw_menu.num=2', '2016-10-08 16:39:11', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('456', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa fa-coffee&tfw_menu.url=/blog/&tfw_menu.name=博客文章&tfw_menu.isopen=1&jstime=1475916429415&tfw_menu.tips=800*520&tfw_menu.alias=&tfw_menu.code=blog&tfw_menu.pcode=office&tfw_menu.levels=2&tfw_menu.num=2', '2016-10-08 16:47:09', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('457', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa fa-coffee&tfw_menu.url=/blog/&tfw_menu.name=博客文章&tfw_menu.isopen=1&jstime=1475916488704&tfw_menu.tips=800*520&tfw_menu.alias=&tfw_menu.code=blog&tfw_menu.pcode=office&tfw_menu.levels=2&tfw_menu.num=2', '2016-10-08 16:48:09', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('458', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa fa-coffee&tfw_menu.url=/blog/&tfw_menu.name=博客文章&tfw_menu.isopen=1&jstime=1475916548600&tfw_menu.tips=800*520&tfw_menu.alias=&tfw_menu.code=blog&tfw_menu.pcode=office&tfw_menu.levels=2&tfw_menu.num=2', '2016-10-08 16:49:09', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('459', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa fa-coffee&tfw_menu.url=/blog/&tfw_menu.name=博客文章&tfw_menu.isopen=1&jstime=1475916709319&tfw_menu.tips=800*520&tfw_menu.alias=&tfw_menu.code=blog&tfw_menu.pcode=office&tfw_menu.levels=2&tfw_menu.num=2', '2016-10-08 16:51:49', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('460', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa fa-coffee&tfw_menu.url=/blog/&tfw_menu.name=博客文章&tfw_menu.isopen=1&jstime=1475917286506&tfw_menu.tips=800*520&tfw_menu.alias=&tfw_menu.code=blog&tfw_menu.pcode=office&tfw_menu.levels=2&tfw_menu.num=2', '2016-10-08 17:01:27', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('461', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa fa-coffee&tfw_menu.url=/blog/&tfw_menu.name=博客文章&tfw_menu.isopen=1&jstime=1475917302779&tfw_menu.tips=800*520&tfw_menu.alias=&tfw_menu.code=blog&tfw_menu.pcode=office&tfw_menu.levels=2&tfw_menu.num=2', '2016-10-08 17:01:43', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('462', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa fa-coffee&tfw_menu.url=/blog/&tfw_menu.name=博客文章&tfw_menu.isopen=1&jstime=1475917340295&tfw_menu.tips=800*520&tfw_menu.alias=&tfw_menu.code=blog&tfw_menu.pcode=office&tfw_menu.levels=2&tfw_menu.num=2', '2016-10-08 17:02:20', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('463', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-floppy-o bigger-120&tfw_menu.url=/blog/add&tfw_menu.name=新增&tfw_menu.isopen=0&jstime=1475917386491&tfw_menu.tips=800*520&tfw_menu.alias=add&tfw_menu.code=blog_add&tfw_menu.pcode=blog&tfw_menu.levels=3&tfw_menu.num=1', '2016-10-08 17:03:06', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('464', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.url=/blog/edit&tfw_menu.name=修改&tfw_menu.isopen=0&jstime=1475917409828&tfw_menu.tips=800*520&tfw_menu.alias=edit&tfw_menu.code=blog_edit&tfw_menu.pcode=blog&tfw_menu.levels=3&tfw_menu.num=2', '2016-10-08 17:03:30', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('465', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-times  bigger-120&tfw_menu.url=/blog/remove&tfw_menu.name=删除&tfw_menu.isopen=0&jstime=1475917420518&tfw_menu.tips=800*520&tfw_menu.alias=remove&tfw_menu.code=blog_remove&tfw_menu.pcode=blog&tfw_menu.levels=3&tfw_menu.num=3', '2016-10-08 17:03:41', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('466', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-eye bigger-120&tfw_menu.url=/blog/view&tfw_menu.name=查看&tfw_menu.isopen=0&jstime=1475917431191&tfw_menu.tips=800*520&tfw_menu.alias=view&tfw_menu.code=blog_view&tfw_menu.pcode=blog&tfw_menu.levels=3&tfw_menu.num=4', '2016-10-08 17:03:51', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('467', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:ids=92,93,94,95,96,97,105,106,107,108,109,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104&roleId=1', '2016-10-08 17:04:05', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('468', '新增', '1', null, '[类名]:com.ikkong.platform.controller.BlogController  [方法]:save  [参数]:tb_tfw_blog.f_it_seq=1&tb_tfw_blog.f_it_content=jfinalblade go&tb_tfw_blog.f_it_title=jfinalblade&jstime=1475918201047&tb_tfw_blog.f_it_createtime=2016-10-08 17:15:45&tb_tfw_blog.f_it_del=1', '2016-10-08 17:16:41', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('469', '修改', '1', null, '[类名]:com.ikkong.platform.controller.BlogController  [方法]:update  [参数]:tb_tfw_blog.version=&tb_tfw_blog.f_it_seq=1&token_tb_tfw_blog.f_it_createtime=2016-10-08 00:00:00&tb_tfw_blog.f_it_title=jfinalblade&token_tb_tfw_blog.f_it_content=jfinalblade go&jstime=1475979016098&tb_tfw_blog.f_it_del=2&tb_tfw_blog.f_it_id=1', '2016-10-09 10:10:16', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('470', '异常日志', '1', null, 'Inject [VERSION] error!', '2016-10-09 10:10:16', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('471', '修改', '1', null, '[类名]:com.ikkong.platform.controller.BlogController  [方法]:update  [参数]:tb_tfw_blog.version=&tb_tfw_blog.f_it_seq=1&token_tb_tfw_blog.f_it_createtime=2016-10-08 00:00:00&tb_tfw_blog.f_it_title=jfinalblade&token_tb_tfw_blog.f_it_content=jfinalblade go&jstime=1475979144831&tb_tfw_blog.f_it_del=2&tb_tfw_blog.f_it_id=1', '2016-10-09 10:12:25', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('472', '异常日志', '1', null, 'Inject [VERSION] error!', '2016-10-09 10:12:25', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('473', '修改', '1', null, '[类名]:com.ikkong.platform.controller.BlogController  [方法]:update  [参数]:tb_tfw_blog.version=0&tb_tfw_blog.f_it_seq=1&token_tb_tfw_blog.f_it_createtime=2016-10-08 00:00:00&tb_tfw_blog.f_it_title=jfinalblade&token_tb_tfw_blog.f_it_content=jfinalblade go&jstime=1475980484071&tb_tfw_blog.f_it_del=2&tb_tfw_blog.f_it_id=1', '2016-10-09 10:34:44', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('474', '修改', '1', null, '[类名]:com.ikkong.platform.controller.BlogController  [方法]:update  [参数]:tb_tfw_blog.version=1&tb_tfw_blog.f_it_seq=1&token_tb_tfw_blog.f_it_createtime=2016-10-08 00:00:00&tb_tfw_blog.f_it_title=jfinalblade&token_tb_tfw_blog.f_it_content=jfinalblade go&jstime=1475980516068&tb_tfw_blog.f_it_del=1&tb_tfw_blog.f_it_id=1', '2016-10-09 10:35:16', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('475', '异常日志', '1', null, '在 /beetlsql/mysql/userMapper.sql 和 /beetlsql/mysql/userMapper.md 和 /beetlsql/userMapper.sql 和 /beetlsql/userMapper.md 和  未找到[id=userMapper.mysqllist]相关的SQL', '2016-10-09 14:18:52', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('476', '异常日志', '1', null, '在 /beetlsql/mysql/userMapper.sql 和 /beetlsql/mysql/userMapper.md 和 /beetlsql/userMapper.sql 和 /beetlsql/userMapper.md 和  未找到[id=userMapper.mysqllist]相关的SQL', '2016-10-09 14:21:19', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('477', '异常日志', '1', null, '在 /beetlsql/mysql/userMapper.sql 和 /beetlsql/mysql/userMapper.md 和 /beetlsql/userMapper.sql 和 /beetlsql/userMapper.md 和  未找到[id=userMapper.mysqllist]相关的SQL', '2016-10-09 14:21:43', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('478', '异常日志', '1', null, '在 /beetlsql/mysql/userMapper.sql 和 /beetlsql/mysql/userMapper.md 和 /beetlsql/userMapper.sql 和 /beetlsql/userMapper.md 和  未找到[id=userMapper.mysqllist]相关的SQL', '2016-10-09 14:24:01', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('479', '异常日志', '1', null, 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Table \'jblade.tmsp_role\' doesn\'t exist', '2016-10-09 14:26:35', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('480', '异常日志', '1', null, '[Ljava.lang.Object; cannot be cast to [Ljava.lang.String;', '2016-10-09 14:32:03', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('481', '异常日志', '1', null, '[Ljava.lang.Object; cannot be cast to [Ljava.lang.String;', '2016-10-09 14:36:01', '0', null);
INSERT INTO `tfw_operation_log` VALUES ('482', '新增', '1', null, '[类名]:com.ikkong.platform.controller.BlogController  [方法]:save  [参数]:tb_tfw_blog.f_it_seq=2&tb_tfw_blog.f_it_title=测试&token_tb_tfw_blog.f_it_content=<p style=\"text-align: center;\">111<br/></p>&jstime=1476086019286&tb_tfw_blog.f_it_createtime=2016-10-10 15:52:52&tb_tfw_blog.f_it_del=1', '2016-10-10 15:53:39', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('483', '删除', '1', null, '[类名]:com.ikkong.platform.controller.BlogController  [方法]:remove  [参数]:ids=2', '2016-10-10 15:57:53', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('484', '新增', '1', null, '[类名]:com.ikkong.platform.controller.BlogController  [方法]:save  [参数]:tb_tfw_blog.f_it_seq=2&tb_tfw_blog.f_it_content=<p style=\"text-align: center;\">111</p>&tb_tfw_blog.f_it_title=测试&jstime=1476087564124&tb_tfw_blog.f_it_createtime=2016-10-10 16:18:25&tb_tfw_blog.f_it_del=1', '2016-10-10 16:19:24', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('485', '修改', '1', null, '[类名]:com.ikkong.platform.controller.BlogController  [方法]:update  [参数]:token_tb_tfw_blog.f_it_del=1&tb_tfw_blog.version=0&tb_tfw_blog.f_it_seq=2&tb_tfw_blog.f_it_content=<p style=\"text-align: center;\">112</p>&token_tb_tfw_blog.f_it_createtime=2016-10-10 00:00:00&tb_tfw_blog.f_it_title=测试&jstime=1476089895959&tb_tfw_blog.f_it_id=3', '2016-10-10 16:58:16', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('486', '新增', '1', null, '[类名]:com.ikkong.platform.controller.BlogController  [方法]:save  [参数]:tb_tfw_blog.f_it_seq=3&tb_tfw_blog.f_it_content=<p><img src=\"/upload/image/20161010/1476091111051005215.jpg\" style=\"\" title=\"1476091111051005215.jpg\"/></p><p><img src=\"/upload/image/20161010/1476091111054037337.jpg\" style=\"\" title=\"1476091111054037337.jpg\"/></p><p><img src=\"/upload/image/20161010/1476091111051097841.jpg\" style=\"\" title=\"1476091111051097841.jpg\"/></p><p><br/></p>&tb_tfw_blog.f_it_title=测试1&jstime=1476091128165&tb_tfw_blog.f_it_createtime=2016-10-10 17:08:41&tb_tfw_blog.f_it_del=1', '2016-10-10 17:18:48', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('487', '新增', '1', null, '[类名]:com.ikkong.platform.controller.BlogController  [方法]:save  [参数]:tb_tfw_blog.f_it_seq=4&tb_tfw_blog.f_it_content=<p><img src=\"http://ikkong.qiniudn.com/upload/image/20161011/1476170956158098341.jpg\" title=\"1476170956158098341\" alt=\"3 (12).jpg\"/></p>&tb_tfw_blog.f_it_title=测试qiniu&jstime=1476170998189&tb_tfw_blog.f_it_createtime=2016-10-11 15:27:53&tb_tfw_blog.f_it_del=1', '2016-10-11 15:29:58', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('488', '修改', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa fa-desktop&tfw_menu.name=企业管理&tfw_menu.url=&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=0&tfw_menu.id=92&tfw_menu.num=1&jstime=1511713851260&tfw_menu.levels=1&tfw_menu.tips=', '2017-11-27 00:30:51', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('489', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa fa-bell&tfw_menu.name=企业管理&tfw_menu.url=/company/&tfw_menu.pcode=office&tfw_menu.alias=&tfw_menu.isopen=1&tfw_menu.num=1&jstime=1511714071600&tfw_menu.code=company&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-27 00:34:32', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('490', '修改', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa fa-bell&tfw_menu.name=企业管理&tfw_menu.url=/company/&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=0&tfw_menu.id=110&tfw_menu.num=1&jstime=1511714144337&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-27 00:35:44', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('491', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=修改&tfw_menu.url=/company/edit&tfw_menu.pcode=company&tfw_menu.alias=edit&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511714239655&tfw_menu.code=company_edit&tfw_menu.levels=3&tfw_menu.tips=800*500', '2017-11-27 00:37:20', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('492', '修改', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa fa-bell&tfw_menu.name=企业管理&tfw_menu.url=/company/&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=1&tfw_menu.id=110&tfw_menu.num=1&jstime=1511714451851&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-11-27 00:40:52', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('493', '修改', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa fa-bell&tfw_menu.name=企业管理&tfw_menu.url=/company/&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=2&tfw_menu.id=110&tfw_menu.num=1&jstime=1511714464193&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-11-27 00:41:04', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('494', '修改', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa fa-bell&tfw_menu.name=企业管理&tfw_menu.url=/company/&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=3&tfw_menu.id=110&tfw_menu.num=1&jstime=1511714505725&tfw_menu.levels=2&tfw_menu.tips=', '2017-11-27 00:41:46', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('495', '修改', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa fa-bell&tfw_menu.name=企业管理&tfw_menu.url=/company/&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=4&tfw_menu.id=110&tfw_menu.num=3&jstime=1511714676885&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-11-27 00:44:37', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('496', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-27 00:48:51', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('497', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,93,94,95,96,97,105,106,107,108,109,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102', '2017-11-27 00:57:46', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('498', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-27 00:58:06', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('499', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-27 00:58:36', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('500', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102', '2017-11-27 00:58:41', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('501', '新增', '1', null, '[类名]:com.ikkong.system.controller.GenerateController  [方法]:save  [参数]:tfw_generate.tablename=user&tfw_generate.pkname=id&tfw_generate.realpath=F:\\work\\JfinalBlade\\src\\main\\java\\com\\ikkong&tfw_generate.name=user&tfw_generate.modelname=user&jstime=1511718473252&tfw_generate.packagename=com.pc.admin', '2017-11-27 01:47:53', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('502', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=用户管理&tfw_menu.url=/user/&tfw_menu.pcode=0&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511718863369&tfw_menu.code=user&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-27 01:54:23', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('503', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=用户管理&tfw_menu.url=/user/&tfw_menu.pcode=0&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511718873530&tfw_menu.code=users&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-27 01:54:34', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('504', '修改', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa fa-desktop&tfw_menu.name=用户管理&tfw_menu.url=/user/&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=0&tfw_menu.id=112&tfw_menu.num=1&jstime=1511718906736&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-27 01:55:07', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('505', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=用户管理&tfw_menu.url=/user/&tfw_menu.pcode=users&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511718981814&tfw_menu.code=用户管理&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-11-27 01:56:22', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('506', '修改', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa fa-desktop&tfw_menu.name=用户管理&tfw_menu.url=&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=1&tfw_menu.id=112&tfw_menu.num=1&jstime=1511718998166&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-27 01:56:38', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('507', '删除', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:del  [参数]:ids=113', '2017-11-27 01:57:27', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('508', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=用户管理&tfw_menu.url=/user/&tfw_menu.pcode=users&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=2&jstime=1511719075918&tfw_menu.code=users_list&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-11-27 01:57:56', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('509', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-floppy-o bigger-120&tfw_menu.name=新增&tfw_menu.url=/users/add&tfw_menu.pcode=users_list&tfw_menu.alias=add&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511719089396&tfw_menu.code=users_add&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-27 01:58:09', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('510', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,112,114,115,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-27 01:58:25', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('511', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,112,114,115,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102', '2017-11-27 01:58:34', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('512', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,112,114,115,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102', '2017-11-27 01:58:56', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('513', '修改', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa fa-desktop&tfw_menu.name=用户管理&tfw_menu.url=/user/&tfw_menu.alias=&tfw_menu.isopen=1&tfw_menu.version=2&tfw_menu.id=112&tfw_menu.num=1&jstime=1511719342612&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-27 02:02:23', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('514', '修改', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa fa-desktop&tfw_menu.name=用户管理1&tfw_menu.url=/user/&tfw_menu.alias=&tfw_menu.isopen=1&tfw_menu.version=3&tfw_menu.id=112&tfw_menu.num=1&jstime=1511719380126&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-27 02:03:00', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('515', '修改', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa fa-desktop&tfw_menu.name=用户模块&tfw_menu.url=&tfw_menu.alias=&tfw_menu.isopen=1&tfw_menu.version=4&tfw_menu.id=112&tfw_menu.num=1&jstime=1511719530200&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-27 02:05:30', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('516', '修改', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa fa-desktop&tfw_menu.name=用户模块&tfw_menu.url=&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=5&tfw_menu.id=112&tfw_menu.num=1&jstime=1511719555223&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-27 02:05:55', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('517', '修改', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa fa-desktop&tfw_menu.name=用户模块&tfw_menu.url=&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=6&tfw_menu.id=112&tfw_menu.num=1&jstime=1511719568136&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-27 02:06:08', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('518', '删除', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:del  [参数]:ids=112,114,115', '2017-11-27 02:06:40', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('519', '删除', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:remove  [参数]:ids=112,114,115', '2017-11-27 02:06:46', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('520', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=企业审核&tfw_menu.url=/company/examine&tfw_menu.pcode=company&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=2&jstime=1511719879350&tfw_menu.code=company_examine&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-27 02:11:19', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('521', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,116,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-27 02:11:48', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('522', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,116,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102', '2017-11-27 02:11:55', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('523', '删除', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:del  [参数]:ids=116', '2017-11-27 02:19:44', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('524', '删除', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:remove  [参数]:ids=116', '2017-11-27 02:19:53', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('525', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-check  bigger-120&tfw_menu.name=通过&tfw_menu.url=/company/auditOk&tfw_menu.pcode=company&tfw_menu.alias=ok&tfw_menu.isopen=0&tfw_menu.num=2&jstime=1511720435951&tfw_menu.code=company_audit_ok&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-27 02:20:36', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('526', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white  btn-danger | fa fa fa-times bigger-120&tfw_menu.name=拒绝&tfw_menu.url=/company/auditRefuse&tfw_menu.pcode=company&tfw_menu.alias=refuse&tfw_menu.isopen=0&tfw_menu.num=3&jstime=1511720466709&tfw_menu.code=company_audit_refuse&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-27 02:21:07', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('527', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,117,118,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-27 02:22:13', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('528', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,117,118,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102', '2017-11-27 02:22:20', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('529', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-user  bigger-120&tfw_menu.name=审核&tfw_menu.url={\"status\":\"3\"}&tfw_menu.pcode=company&tfw_menu.alias=audit&tfw_menu.isopen=0&tfw_menu.num=4&jstime=1511720893465&tfw_menu.code=company_audit&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-27 02:28:13', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('530', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,117,118,119,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-27 02:29:06', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('531', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,117,118,119,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102', '2017-11-27 02:29:14', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('532', '删除', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:del  [参数]:ids=117,118,119', '2017-11-27 09:54:27', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('533', '删除', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:remove  [参数]:ids=117,118,119', '2017-11-27 09:54:33', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('534', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-check  bigger-120&tfw_menu.name=通过&tfw_menu.url=/company/auditOk&tfw_menu.pcode=company&tfw_menu.alias=ok&tfw_menu.isopen=0&tfw_menu.num=2&jstime=1511747727355&tfw_menu.code=company_audit_ok&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-27 09:55:27', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('535', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,120,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-27 09:55:42', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('536', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,120,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102', '2017-11-27 09:55:53', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('537', '删除', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:del  [参数]:ids=120', '2017-11-27 10:13:13', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('538', '删除', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:remove  [参数]:ids=120', '2017-11-27 10:13:18', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('539', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-user  bigger-120&tfw_menu.name=审核&tfw_menu.url={\"status\":\"3\"}&tfw_menu.pcode=company&tfw_menu.alias=audit&tfw_menu.isopen=0&tfw_menu.num=2&jstime=1511748821728&tfw_menu.code=company_audit&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-27 10:13:42', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('540', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-check  bigger-120&tfw_menu.name=通过&tfw_menu.url=/company/auditOk&tfw_menu.pcode=company_audit&tfw_menu.alias=ok&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511748832899&tfw_menu.code=company_audit_ok&tfw_menu.levels=4&tfw_menu.tips=800*520', '2017-11-27 10:13:53', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('541', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,121,122,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-27 10:14:03', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('542', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,121,122,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102', '2017-11-27 10:14:13', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('543', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white  btn-danger | fa fa fa-times bigger-120&tfw_menu.name=拒绝&tfw_menu.url=/company/auditRefuse&tfw_menu.pcode=company_audit&tfw_menu.alias=refuse&tfw_menu.isopen=0&tfw_menu.num=2&jstime=1511749472885&tfw_menu.code=company_audit_refuse&tfw_menu.levels=4&tfw_menu.tips=800*520', '2017-11-27 10:24:33', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('544', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-undo  bigger-120&tfw_menu.name=返回&tfw_menu.url=&tfw_menu.pcode=company_audit&tfw_menu.alias=back&tfw_menu.isopen=0&tfw_menu.num=3&jstime=1511749838911&tfw_menu.code=company_audit_back&tfw_menu.levels=4&tfw_menu.tips=800*520', '2017-11-27 10:30:39', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('545', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,121,122,123,124,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-27 10:31:10', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('546', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,121,122,123,124,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102', '2017-11-27 10:31:19', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('547', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-times  bigger-120&tfw_menu.name=删除&tfw_menu.url=/company/remove&tfw_menu.pcode=company&tfw_menu.alias=remove&tfw_menu.isopen=0&tfw_menu.num=3&jstime=1511749964689&tfw_menu.code=company_remove&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-27 10:32:45', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('548', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,121,122,123,124,125,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-27 10:33:04', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('549', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,121,122,123,124,125,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102', '2017-11-27 10:33:11', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('555', '删除', '1', null, '[类名]:com.ikkong.platform.controller.CompanyController  [方法]:remove  [参数]:ids=12', '2017-11-27 10:36:47', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('556', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-recycle  bigger-120&tfw_menu.name=回收站&tfw_menu.url={\"status\":\"5\"}&tfw_menu.pcode=company&tfw_menu.alias=recycle&tfw_menu.isopen=0&tfw_menu.num=4&jstime=1511750271436&tfw_menu.code=company_recycle&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-27 10:37:51', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('557', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,121,122,123,124,125,126,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-27 10:38:27', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('558', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,121,122,123,124,125,126,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102', '2017-11-27 10:38:33', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('559', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-refresh  bigger-120&tfw_menu.name=还原&tfw_menu.url=/company/restore&tfw_menu.pcode=company_recycle&tfw_menu.alias=restore&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511750691939&tfw_menu.code=company_recycle_restore&tfw_menu.levels=4&tfw_menu.tips=800*520', '2017-11-27 10:44:52', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('560', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white  btn-danger | fa fa fa-times bigger-120&tfw_menu.name=彻底删除&tfw_menu.url=/company/remove&tfw_menu.pcode=company_recycle&tfw_menu.alias=remove&tfw_menu.isopen=0&tfw_menu.num=2&jstime=1511750704341&tfw_menu.code=company_recycle_remove&tfw_menu.levels=4&tfw_menu.tips=800*520', '2017-11-27 10:45:04', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('561', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-undo  bigger-120&tfw_menu.name=返回&tfw_menu.url=&tfw_menu.pcode=company_recycle&tfw_menu.alias=back&tfw_menu.isopen=0&tfw_menu.num=3&jstime=1511750734766&tfw_menu.code=company_back_back&tfw_menu.levels=4&tfw_menu.tips=800*520', '2017-11-27 10:45:35', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('562', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,121,122,123,124,125,126,127,128,129,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-27 10:46:27', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('563', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,121,122,123,124,125,126,127,128,129,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102', '2017-11-27 10:46:32', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('564', '删除', '1', null, '[类名]:com.ikkong.platform.controller.CompanyController  [方法]:remove  [参数]:ids=13', '2017-11-27 10:52:23', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('565', '删除', '1', null, '[类名]:com.ikkong.platform.controller.CompanyController  [方法]:remove  [参数]:ids=14', '2017-11-27 10:55:29', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('566', '还原', '1', null, '[类名]:com.ikkong.platform.controller.CompanyController  [方法]:restore  [参数]:ids=14', '2017-11-27 11:05:47', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('567', '删除', '1', null, '[类名]:com.ikkong.platform.controller.CompanyController  [方法]:remove  [参数]:ids=14', '2017-11-27 11:16:19', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('568', '还原', '1', null, '[类名]:com.ikkong.platform.controller.CompanyController  [方法]:restore  [参数]:ids=14', '2017-11-27 11:16:24', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('569', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,93,94,95,96,97,105,106,107,108,109,110,111,121,122,123,124,125,126,127,128,129,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-27 11:24:55', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('570', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-27 11:25:29', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('571', '新增', '1', null, '[类名]:com.ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-eye bigger-120&tfw_menu.name=查看&tfw_menu.url=/company/view&tfw_menu.pcode=company&tfw_menu.alias=view&tfw_menu.isopen=0&tfw_menu.num=5&jstime=1511753289086&tfw_menu.code=company_view&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-27 11:28:09', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('572', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-27 11:35:36', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('573', '新增', '1', null, '[类名]:com.ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102', '2017-11-27 11:35:42', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('574', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=3&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,62,64,81,82,84,85,86,87,83,88,89,90,91', '2017-11-28 10:14:31', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('575', '新增', '1', null, '[类名]:ikkong.system.controller.UserController  [方法]:save  [参数]:password=123456&TFW_USER.SEX=1&TFW_USER.BIRTHDAY=2017-11-04 00:00:00&TFW_USER.PHONE=&TFW_USER.NAME=管理员&jstime=1511835313990&TFW_USER.PASSWORD=123456&TFW_USER.DEPTID=10&TFW_USER.EMAIL=55607999@qq.com&TFW_USER.ACCOUNT=test', '2017-11-28 10:15:14', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('576', '新增', '1', null, '[类名]:ikkong.system.controller.UserController  [方法]:save  [参数]:password=123456&TFW_USER.SEX=1&TFW_USER.BIRTHDAY=2017-11-04 00:00:00&TFW_USER.PHONE=&TFW_USER.NAME=管理员&jstime=1511835318853&TFW_USER.PASSWORD=123456&TFW_USER.DEPTID=10&TFW_USER.EMAIL=55607999@qq.com&TFW_USER.ACCOUNT=test1', '2017-11-28 10:15:19', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('577', '新增', '1', null, '[类名]:ikkong.system.controller.UserController  [方法]:saveRole  [参数]:roleIds=3&id=24', '2017-11-28 10:15:28', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('578', '修改', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:update  [参数]:tfw_role.name=管理员1&tfw_role.version=2&token_tfw_role.deptid=10&tfw_role.num=2&jstime=1511835716925&token_tfw_role.pid=1&tfw_role.id=3&tfw_role.tips=test', '2017-11-28 10:21:57', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('579', '修改', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:update  [参数]:tfw_role.name=管理员1&tfw_role.version=2&token_tfw_role.deptid=10&tfw_role.num=2&jstime=1511835725985&token_tfw_role.pid=1&tfw_role.id=3&tfw_role.tips=test', '2017-11-28 10:22:06', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('580', '新增', '1', null, '[类名]:ikkong.system.controller.UserController  [方法]:saveRole  [参数]:roleIds=2&id=24', '2017-11-28 10:28:31', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('581', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49', '2017-11-28 10:28:58', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('582', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-user  bigger-120&tfw_menu.name=注册审核&tfw_menu.url={\"status\":\"3\"}&tfw_menu.alias=audit&tfw_menu.isopen=0&tfw_menu.version=0&tfw_menu.id=121&tfw_menu.num=2&jstime=1511837073695&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-28 10:44:34', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('583', '新增', '1', null, '[类名]:ikkong.system.controller.GenerateController  [方法]:save  [参数]:tfw_generate.tablename=demand&tfw_generate.pkname=id&tfw_generate.realpath=F:\\work\\lonframe\\cf\\cfadmin\\src\\main&tfw_generate.name=demand&tfw_generate.modelname=demand&jstime=1511851161255&tfw_generate.packagename=ikkong.platform', '2017-11-28 14:39:21', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('584', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa fa-desktop&tfw_menu.name=需求管理&tfw_menu.url=&tfw_menu.pcode=office&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=4&jstime=1511851296229&tfw_menu.code=demand&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-11-28 14:41:36', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('585', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa fa-bell&tfw_menu.name=需求管理&tfw_menu.url=&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=0&tfw_menu.id=131&tfw_menu.num=4&jstime=1511851311138&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-11-28 14:41:51', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('586', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=需求管理&tfw_menu.url=/demand&tfw_menu.pcode=demand&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511851438174&tfw_menu.code=demand&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-28 14:43:58', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('587', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=需求管理&tfw_menu.url=/demand&tfw_menu.pcode=demand&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511851445208&tfw_menu.code=demand_list&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-28 14:44:05', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('588', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-eye bigger-120&tfw_menu.name=查看&tfw_menu.url=/demand/view&tfw_menu.pcode=demand_list&tfw_menu.alias=view&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511851470972&tfw_menu.code=demand_view&tfw_menu.levels=4&tfw_menu.tips=800*520', '2017-11-28 14:44:31', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('589', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=修改&tfw_menu.url=/demand/edit&tfw_menu.pcode=demand_list&tfw_menu.alias=edit&tfw_menu.isopen=0&tfw_menu.num=2&jstime=1511851479248&tfw_menu.code=demand_edit&tfw_menu.levels=4&tfw_menu.tips=800*520', '2017-11-28 14:44:39', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('590', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,131,132,133,134,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-28 14:45:22', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('591', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,131,132,133,134,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49', '2017-11-28 14:45:28', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('592', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa fa-bell&tfw_menu.name=需求管理&tfw_menu.url=&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=1&tfw_menu.id=131&tfw_menu.num=4&jstime=1511851551621&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-28 14:45:52', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('593', '删除', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:del  [参数]:ids=131,132,133,134', '2017-11-28 14:46:01', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('594', '删除', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:remove  [参数]:ids=131,132,133,134', '2017-11-28 14:46:06', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('595', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa fa-desktop&tfw_menu.name=用户需求&tfw_menu.url=&tfw_menu.pcode=0&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511851627178&tfw_menu.code=demand&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-28 14:47:07', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('596', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=需求管理&tfw_menu.url=&tfw_menu.pcode=demand&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511851747683&tfw_menu.code=demand_manage&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-11-28 14:49:08', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('597', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=需求管理&tfw_menu.url=/demand&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=0&tfw_menu.id=136&tfw_menu.num=1&jstime=1511851782083&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-11-28 14:49:42', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('598', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=需求管理&tfw_menu.url=/demand/&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=1&tfw_menu.id=136&tfw_menu.num=1&jstime=1511851790681&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-11-28 14:49:51', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('599', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,135,136,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-28 14:50:02', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('600', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,135,136,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49', '2017-11-28 14:50:07', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('601', '新增', '1', null, '[类名]:ikkong.system.controller.UserController  [方法]:saveRole  [参数]:roleIds=1,2&id=1', '2017-11-28 14:50:33', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('602', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,135,136,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49', '2017-11-28 14:50:45', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('603', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa fa-desktop&tfw_menu.name=用户需求&tfw_menu.url=&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=0&tfw_menu.id=135&tfw_menu.num=1&jstime=1511852017625&tfw_menu.levels=1&tfw_menu.tips=', '2017-11-28 14:53:38', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('604', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,135,136,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49', '2017-11-28 14:55:21', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('605', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=3&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,135,136,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,62,64,81,82,84,85,86,87,83,88,89,90,91', '2017-11-28 14:55:27', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('606', '删除', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:del  [参数]:ids=136,135', '2017-11-28 15:00:02', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('607', '删除', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:remove  [参数]:ids=135,136', '2017-11-28 15:00:06', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('608', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa fa-desktop&tfw_menu.name=需求管理&tfw_menu.url=&tfw_menu.pcode=0&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511852434711&tfw_menu.code=demand&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-28 15:00:35', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('609', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,137,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-28 15:00:43', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('610', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,137,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49', '2017-11-28 15:00:53', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('611', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=需求列表&tfw_menu.url=/demand/&tfw_menu.pcode=demand&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511852576805&tfw_menu.code=demand_list&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-11-28 15:02:57', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('612', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,137,138,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-28 15:03:15', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('613', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,137,138,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49', '2017-11-28 15:03:25', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('614', '新增', '1', null, '[类名]:ikkong.system.controller.UserController  [方法]:saveRole  [参数]:roleIds=1&id=1', '2017-11-28 15:03:52', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('615', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa fa-desktop&tfw_menu.name=测试&tfw_menu.url=&tfw_menu.pcode=0&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511852872149&tfw_menu.code=test&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-28 15:07:52', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('616', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=列表&tfw_menu.url=&tfw_menu.pcode=test&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511852888973&tfw_menu.code=list&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-11-28 15:08:09', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('617', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,137,138,139,140,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-28 15:08:20', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('618', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=测试&tfw_menu.url=&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=0&tfw_menu.id=139&tfw_menu.num=1&jstime=1511852923760&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-28 15:08:44', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('619', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=列表&tfw_menu.url=&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=0&tfw_menu.id=140&tfw_menu.num=1&jstime=1511852947761&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-11-28 15:09:08', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('620', '删除', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:del  [参数]:ids=139', '2017-11-28 15:09:48', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('621', '删除', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:remove  [参数]:ids=139', '2017-11-28 15:09:53', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('622', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=需求管理&tfw_menu.url=&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=0&tfw_menu.id=137&tfw_menu.num=1&jstime=1511853009768&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-28 15:10:10', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('623', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=需求列表&tfw_menu.url=/demand/&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=0&tfw_menu.id=138&tfw_menu.num=1&jstime=1511853036893&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-11-28 15:10:37', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('624', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-floppy-o bigger-120&tfw_menu.name=新增&tfw_menu.url=/demand/add&tfw_menu.pcode=demand_list&tfw_menu.alias=add&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511855769749&tfw_menu.code=demand_add&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-28 15:56:10', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('625', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-eye bigger-120&tfw_menu.name=查看&tfw_menu.url=/demand/view&tfw_menu.pcode=demand_list&tfw_menu.alias=view&tfw_menu.isopen=0&tfw_menu.num=2&jstime=1511855780780&tfw_menu.code=demand_view&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-28 15:56:21', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('626', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=修改&tfw_menu.url=/demand/edit&tfw_menu.pcode=demand_list&tfw_menu.alias=edit&tfw_menu.isopen=0&tfw_menu.num=3&jstime=1511855787047&tfw_menu.code=demand_edit&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-28 15:56:27', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('627', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,137,138,141,142,143,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104,140', '2017-11-28 15:56:39', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('628', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,137,138,141,142,143,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49', '2017-11-28 15:56:57', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('629', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,137,138,141,142,143,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104,140', '2017-11-28 16:01:15', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('630', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,137,138,141,142,143,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49', '2017-11-28 16:01:44', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('631', '删除', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:del  [参数]:ids=141', '2017-11-28 16:05:51', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('632', '删除', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:del  [参数]:ids=142', '2017-11-28 16:05:58', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('633', '删除', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:del  [参数]:ids=143', '2017-11-28 16:06:03', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('634', '删除', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:del  [参数]:ids=138', '2017-11-28 16:06:11', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('635', '删除', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:del  [参数]:ids=137,138,141,142,143', '2017-11-28 16:06:17', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('636', '删除', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:remove  [参数]:ids=137,138,141,142,143', '2017-11-28 16:06:21', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('637', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=需求管理&tfw_menu.url=&tfw_menu.pcode=0&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511856410828&tfw_menu.code=demand_manage&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-28 16:06:51', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('638', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=需求管理&tfw_menu.url=&tfw_menu.pcode=demand_manage&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511856436115&tfw_menu.code=demand&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-11-28 16:07:16', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('639', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-floppy-o bigger-120&tfw_menu.name=新增&tfw_menu.url=/demand/add&tfw_menu.pcode=demand&tfw_menu.alias=add&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511856460575&tfw_menu.code=demand_add&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-28 16:07:41', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('640', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=修改&tfw_menu.url=/demand/edit&tfw_menu.pcode=demand&tfw_menu.alias=edit&tfw_menu.isopen=0&tfw_menu.num=2&jstime=1511856470563&tfw_menu.code=demand_edit&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-28 16:07:51', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('641', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-eye bigger-120&tfw_menu.name=查看&tfw_menu.url=/demand/view&tfw_menu.pcode=demand&tfw_menu.alias=view&tfw_menu.isopen=0&tfw_menu.num=3&jstime=1511856476834&tfw_menu.code=demand_view&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-28 16:07:57', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('642', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=需求管理&tfw_menu.url=/demand/&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=0&tfw_menu.id=145&tfw_menu.num=1&jstime=1511856490057&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-11-28 16:08:10', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('643', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-floppy-o bigger-120&tfw_menu.name=新增&tfw_menu.url=/demand/add&tfw_menu.alias=add&tfw_menu.isopen=0&tfw_menu.version=0&tfw_menu.id=146&tfw_menu.num=1&jstime=1511856495140&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-28 16:08:15', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('644', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,144,145,146,147,148,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-28 16:08:36', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('645', '新增', '1', null, '[类名]:ikkong.system.controller.GenerateController  [方法]:save  [参数]:tfw_generate.tablename=server&tfw_generate.pkname=id&tfw_generate.realpath=F:\\work\\lonframe\\cf\\cfadmin\\src\\main&tfw_generate.name=server&tfw_generate.modelname=server&jstime=1511856944336&tfw_generate.packagename=ikkong.platform', '2017-11-28 16:15:44', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('646', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=服务能力管理&tfw_menu.url=&tfw_menu.pcode=0&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511857110480&tfw_menu.code=server_manage&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-11-28 16:18:30', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('647', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=服务管理&tfw_menu.url=/server/&tfw_menu.pcode=server_manage&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511857134888&tfw_menu.code=server&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-11-28 16:18:55', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('648', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-floppy-o bigger-120&tfw_menu.name=新增&tfw_menu.url=/server/add&tfw_menu.pcode=server&tfw_menu.alias=add&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1511857145381&tfw_menu.code=server_add&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-28 16:19:05', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('649', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=修改&tfw_menu.url=/server/edit&tfw_menu.pcode=server&tfw_menu.alias=edit&tfw_menu.isopen=0&tfw_menu.num=2&jstime=1511857153189&tfw_menu.code=server_edit&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-28 16:19:13', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('650', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-eye bigger-120&tfw_menu.name=查看&tfw_menu.url=/server/view&tfw_menu.pcode=server&tfw_menu.alias=view&tfw_menu.isopen=0&tfw_menu.num=3&jstime=1511857160036&tfw_menu.code=server_view&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-28 16:19:20', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('651', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,144,145,146,147,148,149,150,151,152,153,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-28 16:19:30', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('652', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,144,145,146,147,148,149,150,151,152,153,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49', '2017-11-28 16:20:23', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('653', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-eye bigger-120&tfw_menu.name=查看基本资料&tfw_menu.url=/company/view&tfw_menu.alias=view&tfw_menu.isopen=0&tfw_menu.version=0&tfw_menu.id=130&tfw_menu.num=5&jstime=1512022557790&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-30 14:15:58', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('654', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=a&tfw_menu.name=查看认证资料&tfw_menu.url=/company/info&tfw_menu.pcode=company&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=6&jstime=1512022642550&tfw_menu.code=company_info&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-30 14:17:23', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('655', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-eye bigger-120&tfw_menu.name=查看认证资料&tfw_menu.url=/company/info&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=0&tfw_menu.id=154&tfw_menu.num=6&jstime=1512022658456&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-30 14:17:38', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('656', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,154,144,145,146,147,148,149,150,151,152,153,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-30 14:17:54', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('657', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,154,144,145,146,147,148,149,150,151,152,153,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49', '2017-11-30 14:18:01', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('658', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-eye bigger-120&tfw_menu.name=查看认证资料&tfw_menu.url=/company/info&tfw_menu.alias=info&tfw_menu.isopen=0&tfw_menu.version=1&tfw_menu.id=154&tfw_menu.num=6&jstime=1512022820059&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-30 14:20:20', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('659', '新增', '1', null, '[类名]:ikkong.system.controller.GenerateController  [方法]:save  [参数]:tfw_generate.tablename=authentication&tfw_generate.pkname=ID&tfw_generate.realpath=F:\\work\\lonframe\\cf\\cfadmin\\src\\main&tfw_generate.name=authentication&tfw_generate.modelname=authentication&jstime=1512023084049&tfw_generate.packagename=ikkong.platform', '2017-11-30 14:24:44', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('660', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=a&tfw_menu.name=认证通过&tfw_menu.url=/company/autok&tfw_menu.pcode=company&tfw_menu.alias=autok&tfw_menu.isopen=0&tfw_menu.num=7&jstime=1512025324569&tfw_menu.code=company_autok&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-30 15:02:05', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('661', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=/company/auditOk	btn btn-xs btn-white | fa fa-check  bigger-120&tfw_menu.name=认证通过&tfw_menu.url=/company/autok&tfw_menu.alias=autok&tfw_menu.isopen=0&tfw_menu.version=0&tfw_menu.id=155&tfw_menu.num=7&jstime=1512025341364&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-30 15:02:21', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('662', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white  btn-danger | fa fa fa-times bigger-120&tfw_menu.name=认证失败&tfw_menu.url=/company/autfail&tfw_menu.pcode=company&tfw_menu.alias=autfail&tfw_menu.isopen=0&tfw_menu.num=8&jstime=1512025417182&tfw_menu.code=company_autfail&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-11-30 15:03:37', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('663', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,154,155,156,144,145,146,147,148,149,150,151,152,153,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-11-30 15:19:42', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('664', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,154,155,156,144,145,146,147,148,149,150,151,152,153,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49', '2017-11-30 15:19:55', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('665', '新增', '1', null, '[类名]:ikkong.system.controller.GenerateController  [方法]:save  [参数]:tfw_generate.tablename=goods&tfw_generate.pkname=id&tfw_generate.realpath=F:\\work\\lonframe\\cf\\cfadmin\\src\\main&tfw_generate.name=goods&tfw_generate.modelname=goods&jstime=1512405058723&tfw_generate.packagename=ikkong.platform', '2017-12-05 00:30:59', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('666', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=产品管理&tfw_menu.url=&tfw_menu.pcode=0&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=4&jstime=1512405668362&tfw_menu.code=goods_mange&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-12-05 00:41:08', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('667', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=产品管理&tfw_menu.url=/goods/&tfw_menu.pcode=goods_mange&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1512405702295&tfw_menu.code=goods&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-12-05 00:41:42', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('668', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-floppy-o bigger-120&tfw_menu.name=新增&tfw_menu.url=/goods/add&tfw_menu.pcode=goods&tfw_menu.alias=add&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1512405726484&tfw_menu.code=goods_add&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-12-05 00:42:06', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('669', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=修改&tfw_menu.url=/goods/edit&tfw_menu.pcode=goods&tfw_menu.alias=edit&tfw_menu.isopen=0&tfw_menu.num=2&jstime=1512405734901&tfw_menu.code=goods_edit&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-12-05 00:42:15', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('670', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-eye bigger-120&tfw_menu.name=查看&tfw_menu.url=/goods/view&tfw_menu.pcode=goods&tfw_menu.alias=view&tfw_menu.isopen=0&tfw_menu.num=3&jstime=1512405743060&tfw_menu.code=goods_view&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-12-05 00:42:23', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('671', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,154,155,156,144,145,146,147,148,149,150,151,152,153,157,158,159,160,161,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-12-05 00:42:35', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('672', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=产品管理&tfw_menu.url=/goods/list&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=0&tfw_menu.id=158&tfw_menu.num=1&jstime=1512405810734&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-12-05 00:43:31', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('673', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=产品管理&tfw_menu.url=/goods/&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=1&tfw_menu.id=158&tfw_menu.num=1&jstime=1512405893759&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-12-05 00:44:54', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('674', '新增', '1', null, '[类名]:ikkong.system.controller.GenerateController  [方法]:save  [参数]:tfw_generate.tablename=demandtype&tfw_generate.pkname=id&tfw_generate.realpath=F:\\work\\lonframe\\cf\\cfadmin\\src\\main&tfw_generate.name=demandtype&tfw_generate.modelname=demandtype&jstime=1512406888175&tfw_generate.packagename=ikkong.platform', '2017-12-05 01:01:28', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('675', '修改', '1', null, '[类名]:ikkong.platform.controller.GoodsController  [方法]:update  [参数]:goods.name=矿泉水2&goods.version=&goods.expected=1&type2=工艺检测&goods.effective=1511503024&goods.attribute=来源地&jstime=1512409593807&goods.unit=瓶&goods.code=1001&type1=服务&goods.model=阿杜&goods.id=10', '2017-12-05 01:46:34', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('678', '修改', '1', null, '[类名]:ikkong.platform.controller.GoodsController  [方法]:update  [参数]:goods.name=矿泉水2&goods.version=&goods.expected=1&type2=工艺检测&goods.effective=1511503024&goods.attribute=来源地&jstime=1512410390161&goods.unit=瓶&goods.code=1001&type1=服务&goods.model=阿杜&goods.id=10', '2017-12-05 01:59:50', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('680', '新增', '1', null, '[类名]:ikkong.platform.controller.GoodsController  [方法]:save  [参数]:goods.name=测试&goods.expected=1&effective=20131&type2=&goods.attribute=按时打发啊&jstime=1512410969336&goods.unit=件&goods.code=1212&type1=设计&goods.model=12313', '2017-12-05 02:09:30', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('683', '新增', '1', null, '[类名]:ikkong.platform.controller.GoodsController  [方法]:save  [参数]:goods.name=测试产品&goods.expected=11&effective=2017-12-24 00:00:00&type2=表面工程&goods.attribute=测试&jstime=1512411598752&goods.unit=件&goods.code=121&type1=服务&goods.model=型号1111', '2017-12-05 02:19:59', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('684', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=类别管理&tfw_menu.url=&tfw_menu.pcode=0&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=5&jstime=1512444997041&tfw_menu.code=type_mange&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-12-05 11:36:37', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('685', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=类别管理&tfw_menu.url=/demandtype/&tfw_menu.pcode=type_mange&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1512445061697&tfw_menu.code=demandtype&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-12-05 11:37:42', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('686', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-floppy-o bigger-120&tfw_menu.name=新增&tfw_menu.url=/demandtype/add&tfw_menu.pcode=demandtype&tfw_menu.alias=add&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1512445078109&tfw_menu.code=demandtype_add&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-12-05 11:37:58', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('687', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=修改&tfw_menu.url=/demandtype/edit&tfw_menu.pcode=demandtype&tfw_menu.alias=edit&tfw_menu.isopen=0&tfw_menu.num=2&jstime=1512445085189&tfw_menu.code=demandtype_edit&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-12-05 11:38:05', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('688', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-eye bigger-120&tfw_menu.name=查看&tfw_menu.url=/demandtype/view&tfw_menu.pcode=demandtype&tfw_menu.alias=view&tfw_menu.isopen=0&tfw_menu.num=3&jstime=1512445097413&tfw_menu.code=demandtype_view&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-12-05 11:38:17', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('689', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,154,155,156,144,145,146,147,148,149,150,151,152,153,157,158,159,160,161,162,163,164,165,166,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-12-05 11:38:31', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('692', '新增', '1', null, '[类名]:ikkong.platform.controller.DemandtypeController  [方法]:save  [参数]:demandtype.name=测试&jstime=1512452233751&type1=0', '2017-12-05 13:37:14', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('693', '新增', '1', null, '[类名]:ikkong.platform.controller.DemandtypeController  [方法]:save  [参数]:demandtype.name=哈哈&jstime=1512452252574&type1=测试', '2017-12-05 13:37:33', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('694', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-times  bigger-120&tfw_menu.name=删除&tfw_menu.url=/demandtype/remove&tfw_menu.pcode=demandtype&tfw_menu.alias=remove&tfw_menu.isopen=0&tfw_menu.num=4&jstime=1513821763008&tfw_menu.code=demandtype_remove&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-12-21 10:02:43', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('695', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-times  bigger-120&tfw_menu.name=删除&tfw_menu.url=/goods/remove&tfw_menu.pcode=goods&tfw_menu.alias=remove&tfw_menu.isopen=0&tfw_menu.num=4&jstime=1513822516657&tfw_menu.code=goods_remove&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-12-21 10:15:17', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('696', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-times  bigger-120&tfw_menu.name=删除&tfw_menu.url=/server/remove&tfw_menu.pcode=server&tfw_menu.alias=remove&tfw_menu.isopen=0&tfw_menu.num=4&jstime=1513822527727&tfw_menu.code=server_remove&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-12-21 10:15:28', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('697', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,154,155,156,144,145,146,147,148,149,150,151,152,153,169,157,158,159,160,161,168,162,163,164,165,166,167,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-12-21 10:16:01', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('701', '删除', '1', null, '[类名]:ikkong.platform.controller.GoodsController  [方法]:remove  [参数]:ids=2,3', '2017-12-21 10:19:26', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('702', '删除', '1', null, '[类名]:ikkong.platform.controller.GoodsController  [方法]:remove  [参数]:ids=1', '2017-12-21 10:19:32', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('709', '删除', '1', null, '[类名]:ikkong.platform.controller.ServerController  [方法]:remove  [参数]:ids=4', '2017-12-21 10:42:35', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('710', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-times  bigger-120&tfw_menu.name=删除&tfw_menu.url=/demand/remove&tfw_menu.pcode=demand&tfw_menu.alias=remove&tfw_menu.isopen=0&tfw_menu.num=4&jstime=1513824211651&tfw_menu.code=demand_remove&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-12-21 10:43:32', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('711', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,154,155,156,144,145,146,147,148,170,149,150,151,152,153,169,157,158,159,160,161,168,162,163,164,165,166,167,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-12-21 10:43:45', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('713', '删除', '1', null, '[类名]:ikkong.platform.controller.DemandController  [方法]:remove  [参数]:ids=17', '2017-12-21 10:44:34', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('714', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:save  [参数]:tfw_role.name=哈哈1&token_tfw_role.deptid=&tfw_role.num=4&jstime=1514359604537&tfw_role.pid=1&tfw_role.tips=测试', '2017-12-27 15:26:45', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('715', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:save  [参数]:tfw_role.name=哈哈1&token_tfw_role.deptid=&tfw_role.num=4&jstime=1514359608258&tfw_role.pid=1&tfw_role.tips=测试', '2017-12-27 15:26:48', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('716', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:save  [参数]:tfw_role.name=哈哈1&tfw_role.deptid=1&tfw_role.num=4&jstime=1514359611773&tfw_role.pid=1&tfw_role.tips=测试', '2017-12-27 15:26:52', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('717', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:save  [参数]:tfw_role.name=哈哈2&tfw_role.deptid=1&tfw_role.num=1&jstime=1514359625228&tfw_role.pid=8&tfw_role.tips=测试2', '2017-12-27 15:27:05', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('718', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=8&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,154,155,156', '2017-12-27 15:27:14', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('719', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=9&ids=92,110,130,154', '2017-12-27 15:27:43', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('720', '新增', '1', null, '[类名]:ikkong.system.controller.UserController  [方法]:save  [参数]:password=111111&TFW_USER.SEX=1&TFW_USER.BIRTHDAY=2017-12-02 00:00:00&TFW_USER.PHONE=&TFW_USER.NAME=测试代理&jstime=1514359702978&TFW_USER.PASSWORD=111111&TFW_USER.DEPTID=1&TFW_USER.EMAIL=55607999@qq.com&TFW_USER.ACCOUNT=aaaa', '2017-12-27 15:28:23', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('721', '新增', '1', null, '[类名]:ikkong.system.controller.UserController  [方法]:save  [参数]:password=111111&TFW_USER.SEX=1&TFW_USER.BIRTHDAY=2017-12-02 00:00:00&TFW_USER.PHONE=&TFW_USER.NAME=测试代理&jstime=1514359706639&TFW_USER.PASSWORD=111111&TFW_USER.DEPTID=1&TFW_USER.EMAIL=55607999@qq.com&TFW_USER.ACCOUNT=aaaaa', '2017-12-27 15:28:27', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('722', '新增', '1', null, '[类名]:ikkong.system.controller.UserController  [方法]:saveRole  [参数]:roleIds=9&id=25', '2017-12-27 15:28:39', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('723', '新增', '1', null, '[类名]:ikkong.system.controller.UserController  [方法]:saveRoleExt  [参数]:idsOut=170&idsIn=144,145,146,147,148,170&userId=25', '2017-12-27 15:28:57', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('724', '新增', '1', null, '[类名]:ikkong.system.controller.GenerateController  [方法]:save  [参数]:tfw_generate.tablename=blog&tfw_generate.pkname=id&tfw_generate.realpath=F:\\work\\lonframe\\cf\\cfadmin\\src\\main&tfw_generate.name=blog&tfw_generate.modelname=blog&jstime=1514454408672&tfw_generate.packagename=ikkong.platform', '2017-12-28 17:46:49', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('725', '删除', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:del  [参数]:ids=105,106,107,108,109', '2017-12-28 17:50:07', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('726', '删除', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:remove  [参数]:ids=105,106,107,108,109', '2017-12-28 17:50:13', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('727', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=博客&tfw_menu.url=&tfw_menu.pcode=0&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=7&jstime=1514454722403&tfw_menu.code=blogmange&tfw_menu.levels=1&tfw_menu.tips=800*520', '2017-12-28 17:52:02', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('728', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=博客管理&tfw_menu.url=/blog/list&tfw_menu.pcode=blogmange&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1514454764984&tfw_menu.code=blog&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-12-28 17:52:45', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('729', '修改', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:update  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=博客管理&tfw_menu.url=/blog/&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.version=0&tfw_menu.id=172&tfw_menu.num=1&jstime=1514454781969&tfw_menu.levels=2&tfw_menu.tips=800*520', '2017-12-28 17:53:02', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('730', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-floppy-o bigger-120&tfw_menu.name=新增&tfw_menu.url=/blog/add&tfw_menu.pcode=blog&tfw_menu.alias=add&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1514454802056&tfw_menu.code=blog_add&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-12-28 17:53:22', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('731', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=修改&tfw_menu.url=/blog/edit&tfw_menu.pcode=blog&tfw_menu.alias=edit&tfw_menu.isopen=0&tfw_menu.num=2&jstime=1514454809050&tfw_menu.code=blog_edit&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-12-28 17:53:29', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('732', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-times  bigger-120&tfw_menu.name=删除&tfw_menu.url=/blog/remove&tfw_menu.pcode=blog&tfw_menu.alias=remove&tfw_menu.isopen=0&tfw_menu.num=3&jstime=1514454824656&tfw_menu.code=blog_remove&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-12-28 17:53:45', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('733', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,154,155,156,144,145,146,147,148,170,149,150,151,152,153,169,157,158,159,160,161,168,162,163,164,165,166,167,171,172,173,174,175,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2017-12-28 17:54:33', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('734', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-user  bigger-120&tfw_menu.name=审核&tfw_menu.url={\"status\":\"3\"}&tfw_menu.pcode=blog&tfw_menu.alias=audit&tfw_menu.isopen=0&tfw_menu.num=4&jstime=1514455121156&tfw_menu.code=blog_audit&tfw_menu.levels=3&tfw_menu.tips=800*520', '2017-12-28 17:58:41', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('735', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-check  bigger-120&tfw_menu.name=通过&tfw_menu.url=/blog/auditOk&tfw_menu.pcode=blog_audit&tfw_menu.alias=ok&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1514455144652&tfw_menu.code=blog_audit_ok&tfw_menu.levels=4&tfw_menu.tips=800*520', '2017-12-28 17:59:05', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('736', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white  btn-danger | fa fa fa-times bigger-120&tfw_menu.name=拒绝&tfw_menu.url=/blog/auditRefuse&tfw_menu.pcode=blog_audit&tfw_menu.alias=refuse&tfw_menu.isopen=0&tfw_menu.num=2&jstime=1514455155756&tfw_menu.code=blog_audit_refuse&tfw_menu.levels=4&tfw_menu.tips=800*520', '2017-12-28 17:59:16', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('737', '新增', '1', null, '[类名]:ikkong.system.controller.GenerateController  [方法]:save  [参数]:tfw_generate.tablename=crowd&tfw_generate.pkname=id&tfw_generate.realpath=F:\\work\\lonframe\\cf\\cfadmin\\src\\main&tfw_generate.name=crowd&tfw_generate.modelname=crowd&jstime=1517124903929&tfw_generate.packagename=ikkong.platform', '2018-01-28 15:35:04', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('738', '新增', '1', null, '[类名]:ikkong.system.controller.GenerateController  [方法]:save  [参数]:tfw_generate.tablename=crowditem&tfw_generate.pkname=id&tfw_generate.realpath=F:\\work\\lonframe\\cf\\cfadmin\\src\\main&tfw_generate.name=crowditem&tfw_generate.modelname=crowditem&jstime=1517125046667&tfw_generate.packagename=ikkong.platform', '2018-01-28 15:37:27', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('739', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=创新管理&tfw_menu.url=&tfw_menu.pcode=0&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=6&jstime=1517147971516&tfw_menu.code=crowds&tfw_menu.levels=1&tfw_menu.tips=800*520', '2018-01-28 21:59:32', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('740', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=fa-users&tfw_menu.name=创新众筹&tfw_menu.url=/crowd/&tfw_menu.pcode=crowds&tfw_menu.alias=&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1517148016234&tfw_menu.code=crowd&tfw_menu.levels=1&tfw_menu.tips=800*520', '2018-01-28 22:00:16', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('741', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-floppy-o bigger-120&tfw_menu.name=新增&tfw_menu.url=/crowd/add&tfw_menu.pcode=crowd&tfw_menu.alias=add&tfw_menu.isopen=0&tfw_menu.num=1&jstime=1517148028714&tfw_menu.code=crowd_add&tfw_menu.levels=2&tfw_menu.tips=800*520', '2018-01-28 22:00:29', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('742', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-eye bigger-120&tfw_menu.name=查看&tfw_menu.url=/crowd/view&tfw_menu.pcode=crowd&tfw_menu.alias=view&tfw_menu.isopen=0&tfw_menu.num=2&jstime=1517148042189&tfw_menu.code=crowd_view&tfw_menu.levels=2&tfw_menu.tips=800*520', '2018-01-28 22:00:42', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('743', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-times  bigger-120&tfw_menu.name=删除&tfw_menu.url=/crowd/remove&tfw_menu.pcode=crowd&tfw_menu.alias=remove&tfw_menu.isopen=0&tfw_menu.num=3&jstime=1517148064305&tfw_menu.code=crowd_remove&tfw_menu.levels=2&tfw_menu.tips=800*520', '2018-01-28 22:01:04', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('744', '新增', '1', null, '[类名]:ikkong.system.controller.MenuController  [方法]:save  [参数]:tfw_menu.icon=btn btn-xs btn-white | fa fa-pencil  bigger-120&tfw_menu.name=修改&tfw_menu.url=/crowd/edit&tfw_menu.pcode=crowd&tfw_menu.alias=edit&tfw_menu.isopen=0&tfw_menu.num=4&jstime=1517148073378&tfw_menu.code=crowd_edit&tfw_menu.levels=2&tfw_menu.tips=800*520', '2018-01-28 22:01:13', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('745', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,154,155,156,144,145,146,147,148,170,149,150,151,152,153,169,157,158,159,160,161,168,162,163,164,165,166,167,179,180,181,182,183,184,171,172,173,174,175,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2018-01-28 22:02:16', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('746', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,154,155,156,144,145,146,147,148,170,149,150,151,152,153,169,157,158,159,160,161,168,162,163,164,165,166,167,179,180,181,182,183,184,171,172,173,174,175,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2018-01-28 22:02:52', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('747', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=2&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,154,155,156,144,145,146,147,148,149,150,151,152,153,157,158,159,160,161,168,162,163,164,165,166,167,179,180,181,182,183,184,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49', '2018-01-28 22:04:15', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('748', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=3&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,144,145,146,147,148,170,149,150,151,152,153,169,157,158,159,160,161,168,162,163,164,165,166,167,179,180,181,182,183,184,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,62,64,81,82,84,85,86,87,83,88,89,90,91', '2018-01-28 22:04:26', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('749', '新增', '1', null, '[类名]:ikkong.system.controller.RoleController  [方法]:saveAuthority  [参数]:roleId=1&ids=92,110,111,121,122,123,124,125,126,127,128,129,130,154,155,156,144,145,146,147,148,170,149,150,151,152,153,169,157,158,159,160,161,168,162,163,164,165,166,167,179,180,181,182,183,184,171,172,173,174,175,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2,3,4,5,6,7,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,56,57,58,59,60,61,62,63,64,65,81,82,84,85,86,87,83,88,89,90,91,98,99,100,101,102,103,104', '2018-01-28 22:04:35', '1', null);
INSERT INTO `tfw_operation_log` VALUES ('750', '新增', '1', null, '[类名]:ikkong.system.controller.UserController  [方法]:saveRole  [参数]:roleIds=1&id=1', '2018-01-28 22:05:06', '1', null);

-- ----------------------------
-- Table structure for tfw_parameter
-- ----------------------------
DROP TABLE IF EXISTS `tfw_parameter`;
CREATE TABLE `tfw_parameter` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) DEFAULT NULL,
  `NUM` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PARA` text,
  `TIPS` varchar(255) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tfw_parameter
-- ----------------------------
INSERT INTO `tfw_parameter` VALUES ('1', '101', '100', '是否开启记录日志', '1', '1:是  2:否', '1', '9');

-- ----------------------------
-- Table structure for tfw_relation
-- ----------------------------
DROP TABLE IF EXISTS `tfw_relation`;
CREATE TABLE `tfw_relation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MENUID` int(11) DEFAULT NULL,
  `ROLEID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9648 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tfw_relation
-- ----------------------------
INSERT INTO `tfw_relation` VALUES ('1384', '72', '6');
INSERT INTO `tfw_relation` VALUES ('1385', '73', '6');
INSERT INTO `tfw_relation` VALUES ('1386', '74', '6');
INSERT INTO `tfw_relation` VALUES ('1387', '75', '6');
INSERT INTO `tfw_relation` VALUES ('1388', '76', '6');
INSERT INTO `tfw_relation` VALUES ('1389', '77', '6');
INSERT INTO `tfw_relation` VALUES ('1390', '78', '6');
INSERT INTO `tfw_relation` VALUES ('1391', '79', '6');
INSERT INTO `tfw_relation` VALUES ('1392', '80', '6');
INSERT INTO `tfw_relation` VALUES ('1393', '81', '6');
INSERT INTO `tfw_relation` VALUES ('1394', '82', '6');
INSERT INTO `tfw_relation` VALUES ('1395', '84', '6');
INSERT INTO `tfw_relation` VALUES ('1396', '85', '6');
INSERT INTO `tfw_relation` VALUES ('1397', '86', '6');
INSERT INTO `tfw_relation` VALUES ('1398', '87', '6');
INSERT INTO `tfw_relation` VALUES ('1399', '83', '6');
INSERT INTO `tfw_relation` VALUES ('1400', '88', '6');
INSERT INTO `tfw_relation` VALUES ('1401', '89', '6');
INSERT INTO `tfw_relation` VALUES ('1402', '90', '6');
INSERT INTO `tfw_relation` VALUES ('1403', '91', '6');
INSERT INTO `tfw_relation` VALUES ('1524', '1', '25');
INSERT INTO `tfw_relation` VALUES ('1525', '62', '25');
INSERT INTO `tfw_relation` VALUES ('1526', '64', '25');
INSERT INTO `tfw_relation` VALUES ('1527', '72', '25');
INSERT INTO `tfw_relation` VALUES ('1528', '73', '25');
INSERT INTO `tfw_relation` VALUES ('1529', '74', '25');
INSERT INTO `tfw_relation` VALUES ('1530', '75', '25');
INSERT INTO `tfw_relation` VALUES ('1531', '76', '25');
INSERT INTO `tfw_relation` VALUES ('1532', '77', '25');
INSERT INTO `tfw_relation` VALUES ('1533', '78', '25');
INSERT INTO `tfw_relation` VALUES ('1534', '79', '25');
INSERT INTO `tfw_relation` VALUES ('1535', '80', '25');
INSERT INTO `tfw_relation` VALUES ('1668', '81', '5');
INSERT INTO `tfw_relation` VALUES ('1669', '82', '5');
INSERT INTO `tfw_relation` VALUES ('1670', '84', '5');
INSERT INTO `tfw_relation` VALUES ('1671', '85', '5');
INSERT INTO `tfw_relation` VALUES ('1672', '86', '5');
INSERT INTO `tfw_relation` VALUES ('1673', '87', '5');
INSERT INTO `tfw_relation` VALUES ('1980', '1', '4');
INSERT INTO `tfw_relation` VALUES ('1981', '2', '4');
INSERT INTO `tfw_relation` VALUES ('1982', '3', '4');
INSERT INTO `tfw_relation` VALUES ('1983', '4', '4');
INSERT INTO `tfw_relation` VALUES ('1984', '5', '4');
INSERT INTO `tfw_relation` VALUES ('1985', '6', '4');
INSERT INTO `tfw_relation` VALUES ('1986', '7', '4');
INSERT INTO `tfw_relation` VALUES ('1987', '81', '4');
INSERT INTO `tfw_relation` VALUES ('1988', '82', '4');
INSERT INTO `tfw_relation` VALUES ('1989', '84', '4');
INSERT INTO `tfw_relation` VALUES ('1990', '85', '4');
INSERT INTO `tfw_relation` VALUES ('1991', '86', '4');
INSERT INTO `tfw_relation` VALUES ('1992', '87', '4');
INSERT INTO `tfw_relation` VALUES ('1993', '83', '4');
INSERT INTO `tfw_relation` VALUES ('1994', '88', '4');
INSERT INTO `tfw_relation` VALUES ('1995', '89', '4');
INSERT INTO `tfw_relation` VALUES ('1996', '90', '4');
INSERT INTO `tfw_relation` VALUES ('1997', '91', '4');
INSERT INTO `tfw_relation` VALUES ('8599', '92', '8');
INSERT INTO `tfw_relation` VALUES ('8600', '110', '8');
INSERT INTO `tfw_relation` VALUES ('8601', '111', '8');
INSERT INTO `tfw_relation` VALUES ('8602', '121', '8');
INSERT INTO `tfw_relation` VALUES ('8603', '122', '8');
INSERT INTO `tfw_relation` VALUES ('8604', '123', '8');
INSERT INTO `tfw_relation` VALUES ('8605', '124', '8');
INSERT INTO `tfw_relation` VALUES ('8606', '125', '8');
INSERT INTO `tfw_relation` VALUES ('8607', '126', '8');
INSERT INTO `tfw_relation` VALUES ('8608', '127', '8');
INSERT INTO `tfw_relation` VALUES ('8609', '128', '8');
INSERT INTO `tfw_relation` VALUES ('8610', '129', '8');
INSERT INTO `tfw_relation` VALUES ('8611', '130', '8');
INSERT INTO `tfw_relation` VALUES ('8612', '154', '8');
INSERT INTO `tfw_relation` VALUES ('8613', '155', '8');
INSERT INTO `tfw_relation` VALUES ('8614', '156', '8');
INSERT INTO `tfw_relation` VALUES ('8630', '92', '9');
INSERT INTO `tfw_relation` VALUES ('8631', '110', '9');
INSERT INTO `tfw_relation` VALUES ('8632', '130', '9');
INSERT INTO `tfw_relation` VALUES ('8633', '154', '9');
INSERT INTO `tfw_relation` VALUES ('9266', '92', '2');
INSERT INTO `tfw_relation` VALUES ('9267', '110', '2');
INSERT INTO `tfw_relation` VALUES ('9268', '111', '2');
INSERT INTO `tfw_relation` VALUES ('9269', '121', '2');
INSERT INTO `tfw_relation` VALUES ('9270', '122', '2');
INSERT INTO `tfw_relation` VALUES ('9271', '123', '2');
INSERT INTO `tfw_relation` VALUES ('9272', '124', '2');
INSERT INTO `tfw_relation` VALUES ('9273', '125', '2');
INSERT INTO `tfw_relation` VALUES ('9274', '126', '2');
INSERT INTO `tfw_relation` VALUES ('9275', '127', '2');
INSERT INTO `tfw_relation` VALUES ('9276', '128', '2');
INSERT INTO `tfw_relation` VALUES ('9277', '129', '2');
INSERT INTO `tfw_relation` VALUES ('9278', '130', '2');
INSERT INTO `tfw_relation` VALUES ('9279', '154', '2');
INSERT INTO `tfw_relation` VALUES ('9280', '155', '2');
INSERT INTO `tfw_relation` VALUES ('9281', '156', '2');
INSERT INTO `tfw_relation` VALUES ('9282', '144', '2');
INSERT INTO `tfw_relation` VALUES ('9283', '145', '2');
INSERT INTO `tfw_relation` VALUES ('9284', '146', '2');
INSERT INTO `tfw_relation` VALUES ('9285', '147', '2');
INSERT INTO `tfw_relation` VALUES ('9286', '148', '2');
INSERT INTO `tfw_relation` VALUES ('9287', '149', '2');
INSERT INTO `tfw_relation` VALUES ('9288', '150', '2');
INSERT INTO `tfw_relation` VALUES ('9289', '151', '2');
INSERT INTO `tfw_relation` VALUES ('9290', '152', '2');
INSERT INTO `tfw_relation` VALUES ('9291', '153', '2');
INSERT INTO `tfw_relation` VALUES ('9292', '157', '2');
INSERT INTO `tfw_relation` VALUES ('9293', '158', '2');
INSERT INTO `tfw_relation` VALUES ('9294', '159', '2');
INSERT INTO `tfw_relation` VALUES ('9295', '160', '2');
INSERT INTO `tfw_relation` VALUES ('9296', '161', '2');
INSERT INTO `tfw_relation` VALUES ('9297', '168', '2');
INSERT INTO `tfw_relation` VALUES ('9298', '162', '2');
INSERT INTO `tfw_relation` VALUES ('9299', '163', '2');
INSERT INTO `tfw_relation` VALUES ('9300', '164', '2');
INSERT INTO `tfw_relation` VALUES ('9301', '165', '2');
INSERT INTO `tfw_relation` VALUES ('9302', '166', '2');
INSERT INTO `tfw_relation` VALUES ('9303', '167', '2');
INSERT INTO `tfw_relation` VALUES ('9304', '179', '2');
INSERT INTO `tfw_relation` VALUES ('9305', '180', '2');
INSERT INTO `tfw_relation` VALUES ('9306', '181', '2');
INSERT INTO `tfw_relation` VALUES ('9307', '182', '2');
INSERT INTO `tfw_relation` VALUES ('9308', '183', '2');
INSERT INTO `tfw_relation` VALUES ('9309', '184', '2');
INSERT INTO `tfw_relation` VALUES ('9310', '1', '2');
INSERT INTO `tfw_relation` VALUES ('9311', '8', '2');
INSERT INTO `tfw_relation` VALUES ('9312', '9', '2');
INSERT INTO `tfw_relation` VALUES ('9313', '10', '2');
INSERT INTO `tfw_relation` VALUES ('9314', '11', '2');
INSERT INTO `tfw_relation` VALUES ('9315', '12', '2');
INSERT INTO `tfw_relation` VALUES ('9316', '13', '2');
INSERT INTO `tfw_relation` VALUES ('9317', '14', '2');
INSERT INTO `tfw_relation` VALUES ('9318', '15', '2');
INSERT INTO `tfw_relation` VALUES ('9319', '16', '2');
INSERT INTO `tfw_relation` VALUES ('9320', '17', '2');
INSERT INTO `tfw_relation` VALUES ('9321', '18', '2');
INSERT INTO `tfw_relation` VALUES ('9322', '19', '2');
INSERT INTO `tfw_relation` VALUES ('9323', '20', '2');
INSERT INTO `tfw_relation` VALUES ('9324', '21', '2');
INSERT INTO `tfw_relation` VALUES ('9325', '22', '2');
INSERT INTO `tfw_relation` VALUES ('9326', '23', '2');
INSERT INTO `tfw_relation` VALUES ('9327', '24', '2');
INSERT INTO `tfw_relation` VALUES ('9328', '34', '2');
INSERT INTO `tfw_relation` VALUES ('9329', '35', '2');
INSERT INTO `tfw_relation` VALUES ('9330', '36', '2');
INSERT INTO `tfw_relation` VALUES ('9331', '37', '2');
INSERT INTO `tfw_relation` VALUES ('9332', '38', '2');
INSERT INTO `tfw_relation` VALUES ('9333', '39', '2');
INSERT INTO `tfw_relation` VALUES ('9334', '40', '2');
INSERT INTO `tfw_relation` VALUES ('9335', '41', '2');
INSERT INTO `tfw_relation` VALUES ('9336', '42', '2');
INSERT INTO `tfw_relation` VALUES ('9337', '43', '2');
INSERT INTO `tfw_relation` VALUES ('9338', '44', '2');
INSERT INTO `tfw_relation` VALUES ('9339', '45', '2');
INSERT INTO `tfw_relation` VALUES ('9340', '46', '2');
INSERT INTO `tfw_relation` VALUES ('9341', '47', '2');
INSERT INTO `tfw_relation` VALUES ('9342', '48', '2');
INSERT INTO `tfw_relation` VALUES ('9343', '49', '2');
INSERT INTO `tfw_relation` VALUES ('9393', '92', '3');
INSERT INTO `tfw_relation` VALUES ('9394', '110', '3');
INSERT INTO `tfw_relation` VALUES ('9395', '111', '3');
INSERT INTO `tfw_relation` VALUES ('9396', '121', '3');
INSERT INTO `tfw_relation` VALUES ('9397', '122', '3');
INSERT INTO `tfw_relation` VALUES ('9398', '123', '3');
INSERT INTO `tfw_relation` VALUES ('9399', '124', '3');
INSERT INTO `tfw_relation` VALUES ('9400', '125', '3');
INSERT INTO `tfw_relation` VALUES ('9401', '126', '3');
INSERT INTO `tfw_relation` VALUES ('9402', '127', '3');
INSERT INTO `tfw_relation` VALUES ('9403', '128', '3');
INSERT INTO `tfw_relation` VALUES ('9404', '129', '3');
INSERT INTO `tfw_relation` VALUES ('9405', '130', '3');
INSERT INTO `tfw_relation` VALUES ('9406', '144', '3');
INSERT INTO `tfw_relation` VALUES ('9407', '145', '3');
INSERT INTO `tfw_relation` VALUES ('9408', '146', '3');
INSERT INTO `tfw_relation` VALUES ('9409', '147', '3');
INSERT INTO `tfw_relation` VALUES ('9410', '148', '3');
INSERT INTO `tfw_relation` VALUES ('9411', '170', '3');
INSERT INTO `tfw_relation` VALUES ('9412', '149', '3');
INSERT INTO `tfw_relation` VALUES ('9413', '150', '3');
INSERT INTO `tfw_relation` VALUES ('9414', '151', '3');
INSERT INTO `tfw_relation` VALUES ('9415', '152', '3');
INSERT INTO `tfw_relation` VALUES ('9416', '153', '3');
INSERT INTO `tfw_relation` VALUES ('9417', '169', '3');
INSERT INTO `tfw_relation` VALUES ('9418', '157', '3');
INSERT INTO `tfw_relation` VALUES ('9419', '158', '3');
INSERT INTO `tfw_relation` VALUES ('9420', '159', '3');
INSERT INTO `tfw_relation` VALUES ('9421', '160', '3');
INSERT INTO `tfw_relation` VALUES ('9422', '161', '3');
INSERT INTO `tfw_relation` VALUES ('9423', '168', '3');
INSERT INTO `tfw_relation` VALUES ('9424', '162', '3');
INSERT INTO `tfw_relation` VALUES ('9425', '163', '3');
INSERT INTO `tfw_relation` VALUES ('9426', '164', '3');
INSERT INTO `tfw_relation` VALUES ('9427', '165', '3');
INSERT INTO `tfw_relation` VALUES ('9428', '166', '3');
INSERT INTO `tfw_relation` VALUES ('9429', '167', '3');
INSERT INTO `tfw_relation` VALUES ('9430', '179', '3');
INSERT INTO `tfw_relation` VALUES ('9431', '180', '3');
INSERT INTO `tfw_relation` VALUES ('9432', '181', '3');
INSERT INTO `tfw_relation` VALUES ('9433', '182', '3');
INSERT INTO `tfw_relation` VALUES ('9434', '183', '3');
INSERT INTO `tfw_relation` VALUES ('9435', '184', '3');
INSERT INTO `tfw_relation` VALUES ('9436', '1', '3');
INSERT INTO `tfw_relation` VALUES ('9437', '8', '3');
INSERT INTO `tfw_relation` VALUES ('9438', '9', '3');
INSERT INTO `tfw_relation` VALUES ('9439', '10', '3');
INSERT INTO `tfw_relation` VALUES ('9440', '11', '3');
INSERT INTO `tfw_relation` VALUES ('9441', '12', '3');
INSERT INTO `tfw_relation` VALUES ('9442', '13', '3');
INSERT INTO `tfw_relation` VALUES ('9443', '14', '3');
INSERT INTO `tfw_relation` VALUES ('9444', '15', '3');
INSERT INTO `tfw_relation` VALUES ('9445', '16', '3');
INSERT INTO `tfw_relation` VALUES ('9446', '17', '3');
INSERT INTO `tfw_relation` VALUES ('9447', '18', '3');
INSERT INTO `tfw_relation` VALUES ('9448', '19', '3');
INSERT INTO `tfw_relation` VALUES ('9449', '20', '3');
INSERT INTO `tfw_relation` VALUES ('9450', '21', '3');
INSERT INTO `tfw_relation` VALUES ('9451', '22', '3');
INSERT INTO `tfw_relation` VALUES ('9452', '23', '3');
INSERT INTO `tfw_relation` VALUES ('9453', '24', '3');
INSERT INTO `tfw_relation` VALUES ('9454', '34', '3');
INSERT INTO `tfw_relation` VALUES ('9455', '35', '3');
INSERT INTO `tfw_relation` VALUES ('9456', '36', '3');
INSERT INTO `tfw_relation` VALUES ('9457', '37', '3');
INSERT INTO `tfw_relation` VALUES ('9458', '38', '3');
INSERT INTO `tfw_relation` VALUES ('9459', '39', '3');
INSERT INTO `tfw_relation` VALUES ('9460', '40', '3');
INSERT INTO `tfw_relation` VALUES ('9461', '41', '3');
INSERT INTO `tfw_relation` VALUES ('9462', '42', '3');
INSERT INTO `tfw_relation` VALUES ('9463', '43', '3');
INSERT INTO `tfw_relation` VALUES ('9464', '44', '3');
INSERT INTO `tfw_relation` VALUES ('9465', '45', '3');
INSERT INTO `tfw_relation` VALUES ('9466', '46', '3');
INSERT INTO `tfw_relation` VALUES ('9467', '47', '3');
INSERT INTO `tfw_relation` VALUES ('9468', '48', '3');
INSERT INTO `tfw_relation` VALUES ('9469', '49', '3');
INSERT INTO `tfw_relation` VALUES ('9470', '62', '3');
INSERT INTO `tfw_relation` VALUES ('9471', '64', '3');
INSERT INTO `tfw_relation` VALUES ('9472', '81', '3');
INSERT INTO `tfw_relation` VALUES ('9473', '82', '3');
INSERT INTO `tfw_relation` VALUES ('9474', '84', '3');
INSERT INTO `tfw_relation` VALUES ('9475', '85', '3');
INSERT INTO `tfw_relation` VALUES ('9476', '86', '3');
INSERT INTO `tfw_relation` VALUES ('9477', '87', '3');
INSERT INTO `tfw_relation` VALUES ('9478', '83', '3');
INSERT INTO `tfw_relation` VALUES ('9479', '88', '3');
INSERT INTO `tfw_relation` VALUES ('9480', '89', '3');
INSERT INTO `tfw_relation` VALUES ('9481', '90', '3');
INSERT INTO `tfw_relation` VALUES ('9482', '91', '3');
INSERT INTO `tfw_relation` VALUES ('9520', '92', '1');
INSERT INTO `tfw_relation` VALUES ('9521', '110', '1');
INSERT INTO `tfw_relation` VALUES ('9522', '111', '1');
INSERT INTO `tfw_relation` VALUES ('9523', '121', '1');
INSERT INTO `tfw_relation` VALUES ('9524', '122', '1');
INSERT INTO `tfw_relation` VALUES ('9525', '123', '1');
INSERT INTO `tfw_relation` VALUES ('9526', '124', '1');
INSERT INTO `tfw_relation` VALUES ('9527', '125', '1');
INSERT INTO `tfw_relation` VALUES ('9528', '126', '1');
INSERT INTO `tfw_relation` VALUES ('9529', '127', '1');
INSERT INTO `tfw_relation` VALUES ('9530', '128', '1');
INSERT INTO `tfw_relation` VALUES ('9531', '129', '1');
INSERT INTO `tfw_relation` VALUES ('9532', '130', '1');
INSERT INTO `tfw_relation` VALUES ('9533', '154', '1');
INSERT INTO `tfw_relation` VALUES ('9534', '155', '1');
INSERT INTO `tfw_relation` VALUES ('9535', '156', '1');
INSERT INTO `tfw_relation` VALUES ('9536', '144', '1');
INSERT INTO `tfw_relation` VALUES ('9537', '145', '1');
INSERT INTO `tfw_relation` VALUES ('9538', '146', '1');
INSERT INTO `tfw_relation` VALUES ('9539', '147', '1');
INSERT INTO `tfw_relation` VALUES ('9540', '148', '1');
INSERT INTO `tfw_relation` VALUES ('9541', '170', '1');
INSERT INTO `tfw_relation` VALUES ('9542', '149', '1');
INSERT INTO `tfw_relation` VALUES ('9543', '150', '1');
INSERT INTO `tfw_relation` VALUES ('9544', '151', '1');
INSERT INTO `tfw_relation` VALUES ('9545', '152', '1');
INSERT INTO `tfw_relation` VALUES ('9546', '153', '1');
INSERT INTO `tfw_relation` VALUES ('9547', '169', '1');
INSERT INTO `tfw_relation` VALUES ('9548', '157', '1');
INSERT INTO `tfw_relation` VALUES ('9549', '158', '1');
INSERT INTO `tfw_relation` VALUES ('9550', '159', '1');
INSERT INTO `tfw_relation` VALUES ('9551', '160', '1');
INSERT INTO `tfw_relation` VALUES ('9552', '161', '1');
INSERT INTO `tfw_relation` VALUES ('9553', '168', '1');
INSERT INTO `tfw_relation` VALUES ('9554', '162', '1');
INSERT INTO `tfw_relation` VALUES ('9555', '163', '1');
INSERT INTO `tfw_relation` VALUES ('9556', '164', '1');
INSERT INTO `tfw_relation` VALUES ('9557', '165', '1');
INSERT INTO `tfw_relation` VALUES ('9558', '166', '1');
INSERT INTO `tfw_relation` VALUES ('9559', '167', '1');
INSERT INTO `tfw_relation` VALUES ('9560', '179', '1');
INSERT INTO `tfw_relation` VALUES ('9561', '180', '1');
INSERT INTO `tfw_relation` VALUES ('9562', '181', '1');
INSERT INTO `tfw_relation` VALUES ('9563', '182', '1');
INSERT INTO `tfw_relation` VALUES ('9564', '183', '1');
INSERT INTO `tfw_relation` VALUES ('9565', '184', '1');
INSERT INTO `tfw_relation` VALUES ('9566', '171', '1');
INSERT INTO `tfw_relation` VALUES ('9567', '172', '1');
INSERT INTO `tfw_relation` VALUES ('9568', '173', '1');
INSERT INTO `tfw_relation` VALUES ('9569', '174', '1');
INSERT INTO `tfw_relation` VALUES ('9570', '175', '1');
INSERT INTO `tfw_relation` VALUES ('9571', '1', '1');
INSERT INTO `tfw_relation` VALUES ('9572', '8', '1');
INSERT INTO `tfw_relation` VALUES ('9573', '9', '1');
INSERT INTO `tfw_relation` VALUES ('9574', '10', '1');
INSERT INTO `tfw_relation` VALUES ('9575', '11', '1');
INSERT INTO `tfw_relation` VALUES ('9576', '12', '1');
INSERT INTO `tfw_relation` VALUES ('9577', '13', '1');
INSERT INTO `tfw_relation` VALUES ('9578', '14', '1');
INSERT INTO `tfw_relation` VALUES ('9579', '15', '1');
INSERT INTO `tfw_relation` VALUES ('9580', '16', '1');
INSERT INTO `tfw_relation` VALUES ('9581', '17', '1');
INSERT INTO `tfw_relation` VALUES ('9582', '18', '1');
INSERT INTO `tfw_relation` VALUES ('9583', '19', '1');
INSERT INTO `tfw_relation` VALUES ('9584', '20', '1');
INSERT INTO `tfw_relation` VALUES ('9585', '21', '1');
INSERT INTO `tfw_relation` VALUES ('9586', '22', '1');
INSERT INTO `tfw_relation` VALUES ('9587', '23', '1');
INSERT INTO `tfw_relation` VALUES ('9588', '24', '1');
INSERT INTO `tfw_relation` VALUES ('9589', '2', '1');
INSERT INTO `tfw_relation` VALUES ('9590', '3', '1');
INSERT INTO `tfw_relation` VALUES ('9591', '4', '1');
INSERT INTO `tfw_relation` VALUES ('9592', '5', '1');
INSERT INTO `tfw_relation` VALUES ('9593', '6', '1');
INSERT INTO `tfw_relation` VALUES ('9594', '7', '1');
INSERT INTO `tfw_relation` VALUES ('9595', '25', '1');
INSERT INTO `tfw_relation` VALUES ('9596', '26', '1');
INSERT INTO `tfw_relation` VALUES ('9597', '27', '1');
INSERT INTO `tfw_relation` VALUES ('9598', '28', '1');
INSERT INTO `tfw_relation` VALUES ('9599', '29', '1');
INSERT INTO `tfw_relation` VALUES ('9600', '30', '1');
INSERT INTO `tfw_relation` VALUES ('9601', '31', '1');
INSERT INTO `tfw_relation` VALUES ('9602', '32', '1');
INSERT INTO `tfw_relation` VALUES ('9603', '33', '1');
INSERT INTO `tfw_relation` VALUES ('9604', '34', '1');
INSERT INTO `tfw_relation` VALUES ('9605', '35', '1');
INSERT INTO `tfw_relation` VALUES ('9606', '36', '1');
INSERT INTO `tfw_relation` VALUES ('9607', '37', '1');
INSERT INTO `tfw_relation` VALUES ('9608', '38', '1');
INSERT INTO `tfw_relation` VALUES ('9609', '39', '1');
INSERT INTO `tfw_relation` VALUES ('9610', '40', '1');
INSERT INTO `tfw_relation` VALUES ('9611', '41', '1');
INSERT INTO `tfw_relation` VALUES ('9612', '42', '1');
INSERT INTO `tfw_relation` VALUES ('9613', '43', '1');
INSERT INTO `tfw_relation` VALUES ('9614', '44', '1');
INSERT INTO `tfw_relation` VALUES ('9615', '45', '1');
INSERT INTO `tfw_relation` VALUES ('9616', '46', '1');
INSERT INTO `tfw_relation` VALUES ('9617', '47', '1');
INSERT INTO `tfw_relation` VALUES ('9618', '48', '1');
INSERT INTO `tfw_relation` VALUES ('9619', '49', '1');
INSERT INTO `tfw_relation` VALUES ('9620', '56', '1');
INSERT INTO `tfw_relation` VALUES ('9621', '57', '1');
INSERT INTO `tfw_relation` VALUES ('9622', '58', '1');
INSERT INTO `tfw_relation` VALUES ('9623', '59', '1');
INSERT INTO `tfw_relation` VALUES ('9624', '60', '1');
INSERT INTO `tfw_relation` VALUES ('9625', '61', '1');
INSERT INTO `tfw_relation` VALUES ('9626', '62', '1');
INSERT INTO `tfw_relation` VALUES ('9627', '63', '1');
INSERT INTO `tfw_relation` VALUES ('9628', '64', '1');
INSERT INTO `tfw_relation` VALUES ('9629', '65', '1');
INSERT INTO `tfw_relation` VALUES ('9630', '81', '1');
INSERT INTO `tfw_relation` VALUES ('9631', '82', '1');
INSERT INTO `tfw_relation` VALUES ('9632', '84', '1');
INSERT INTO `tfw_relation` VALUES ('9633', '85', '1');
INSERT INTO `tfw_relation` VALUES ('9634', '86', '1');
INSERT INTO `tfw_relation` VALUES ('9635', '87', '1');
INSERT INTO `tfw_relation` VALUES ('9636', '83', '1');
INSERT INTO `tfw_relation` VALUES ('9637', '88', '1');
INSERT INTO `tfw_relation` VALUES ('9638', '89', '1');
INSERT INTO `tfw_relation` VALUES ('9639', '90', '1');
INSERT INTO `tfw_relation` VALUES ('9640', '91', '1');
INSERT INTO `tfw_relation` VALUES ('9641', '98', '1');
INSERT INTO `tfw_relation` VALUES ('9642', '99', '1');
INSERT INTO `tfw_relation` VALUES ('9643', '100', '1');
INSERT INTO `tfw_relation` VALUES ('9644', '101', '1');
INSERT INTO `tfw_relation` VALUES ('9645', '102', '1');
INSERT INTO `tfw_relation` VALUES ('9646', '103', '1');
INSERT INTO `tfw_relation` VALUES ('9647', '104', '1');

-- ----------------------------
-- Table structure for tfw_role
-- ----------------------------
DROP TABLE IF EXISTS `tfw_role`;
CREATE TABLE `tfw_role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NUM` int(11) DEFAULT NULL,
  `PID` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DEPTID` int(11) DEFAULT NULL,
  `TIPS` varchar(255) DEFAULT NULL,
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tfw_role
-- ----------------------------
INSERT INTO `tfw_role` VALUES ('1', '1', null, '超级管理员', '1', 'administrator', '0');
INSERT INTO `tfw_role` VALUES ('2', '1', '1', '管理员', '7', 'admin', '3');
INSERT INTO `tfw_role` VALUES ('3', '2', '1', '管理员1', '10', 'admin', '2');
INSERT INTO `tfw_role` VALUES ('4', '2', null, '测试', '10', 'test', '0');
INSERT INTO `tfw_role` VALUES ('5', '1', '4', '测试1', '3', 'test', '1');
INSERT INTO `tfw_role` VALUES ('7', '7', '4', '测试2', '7', 'test2', '0');
INSERT INTO `tfw_role` VALUES ('8', '4', '1', '哈哈1', '1', '测试', '0');
INSERT INTO `tfw_role` VALUES ('9', '1', '8', '哈哈2', '1', '测试2', '0');

-- ----------------------------
-- Table structure for tfw_role_ext
-- ----------------------------
DROP TABLE IF EXISTS `tfw_role_ext`;
CREATE TABLE `tfw_role_ext` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERID` varchar(255) DEFAULT NULL,
  `ROLEIN` text,
  `ROLEOUT` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tfw_role_ext
-- ----------------------------
INSERT INTO `tfw_role_ext` VALUES ('27', '66', '1,44,49', '45');
INSERT INTO `tfw_role_ext` VALUES ('47', '2', '0', '8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24');
INSERT INTO `tfw_role_ext` VALUES ('48', '63', '0', '0');
INSERT INTO `tfw_role_ext` VALUES ('49', '72', '0', '0');
INSERT INTO `tfw_role_ext` VALUES ('50', '74', '0', '0');
INSERT INTO `tfw_role_ext` VALUES ('67', '1', '0', '0');
INSERT INTO `tfw_role_ext` VALUES ('87', '168', '92,103,104,105,106,107', '109,110,111,112,113,114,115,116,117,118,119,120,121,122');
INSERT INTO `tfw_role_ext` VALUES ('107', '189', '108,109,110,111,112,113,114,115,116,117,118,119,120,121,122', '0');
INSERT INTO `tfw_role_ext` VALUES ('127', '21', '92,1,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,39,40,41,42,43,98,99,100,101,102,103,104', '0');
INSERT INTO `tfw_role_ext` VALUES ('128', '25', '144,145,146,147,148,170', '170');

-- ----------------------------
-- Table structure for tfw_user
-- ----------------------------
DROP TABLE IF EXISTS `tfw_user`;
CREATE TABLE `tfw_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACCOUNT` varchar(45) DEFAULT NULL,
  `PASSWORD` varchar(45) DEFAULT NULL,
  `SALT` varchar(45) DEFAULT NULL,
  `NAME` varchar(45) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `SEX` int(11) DEFAULT NULL,
  `EMAIL` varchar(45) DEFAULT NULL,
  `PHONE` varchar(45) DEFAULT NULL,
  `ROLEID` varchar(255) DEFAULT NULL,
  `DEPTID` int(11) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tfw_user
-- ----------------------------
INSERT INTO `tfw_user` VALUES ('1', 'admin', '4779e4a9903dfb08f9f877791c516a73', 'admin', '管理员', '2015-09-08 00:00:00', '1', 'admin@tonbusoft.com.cn', '111111', '1', '9', '1', '2016-01-29 08:49:53', '25');
INSERT INTO `tfw_user` VALUES ('22', '123123', '653f21c93acdd4f03c95876824f440a7', '048wh', '213123', '2016-05-03 00:00:00', '1', '123', '1232', '2', '1', '1', '2016-05-17 18:50:15', '2');
INSERT INTO `tfw_user` VALUES ('23', 'asdfg', 'ab857cd259f2c40b551f448fdf553719', 'nsvnk', '阿斯顿飞过', '2016-09-29 09:27:30', '2', '', '1', '7', null, '1', '2016-09-29 09:27:47', '5');
INSERT INTO `tfw_user` VALUES ('24', 'test1', '18a55dfc6a2abac317bce258173ea465', 'vu0jf', '管理员', '2017-11-04 00:00:00', '1', '55607999@qq.com', null, '2', '10', '1', '2017-11-28 10:15:19', null);
INSERT INTO `tfw_user` VALUES ('25', 'aaaaa', '66616551e3b51d0df0dd022e1f5cc217', 'zlfw1', '测试代理', '2017-12-02 00:00:00', '1', '55607999@qq.com', null, '9', '1', '1', '2017-12-27 15:28:27', null);

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `iscomplete` int(1) NOT NULL DEFAULT '0' COMMENT '默认为0 为未完善用户信息',
  `company` int(11) DEFAULT NULL,
  `creatdate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('13', 'hhhh', '25D55AD283AA400AF464C76D713C07AD', '13918387354', '3', '12', '1511494001');
INSERT INTO `userinfo` VALUES ('14', 'test', 'E10ADC3949BA59ABBE56E057F20F883E', '13918387353', '1', '13', '1511497198');
INSERT INTO `userinfo` VALUES ('15', 'aaaa', 'E10ADC3949BA59ABBE56E057F20F883E', '13918387352', '3', '14', '1511508071');
INSERT INTO `userinfo` VALUES ('16', 'test2', 'E10ADC3949BA59ABBE56E057F20F883E', '13918387351', '3', '15', '1511577927');
INSERT INTO `userinfo` VALUES ('17', 'ceshi', 'E10ADC3949BA59ABBE56E057F20F883E', '13918387358', '3', '16', '1511591315');
INSERT INTO `userinfo` VALUES ('18', 'ceshi2', 'E10ADC3949BA59ABBE56E057F20F883E', '13918387350', '1', '19', '1511594627');
INSERT INTO `userinfo` VALUES ('19', 'jjjj', 'E10ADC3949BA59ABBE56E057F20F883E', '13918387394', '3', '18', '1511774931');
INSERT INTO `userinfo` VALUES ('20', 'aaaaa', 'E10ADC3949BA59ABBE56E057F20F883E', '13918387357', '1', '21', '1511922921');
INSERT INTO `userinfo` VALUES ('21', 'ceshi11', 'E10ADC3949BA59ABBE56E057F20F883E', '13918387311', '1', '24', '1511927319');
INSERT INTO `userinfo` VALUES ('22', 'ceshi123', 'E10ADC3949BA59ABBE56E057F20F883E', '13918387312', '1', '25', '1511928531');
INSERT INTO `userinfo` VALUES ('24', 'ceshi1111', 'E10ADC3949BA59ABBE56E057F20F883E', '13886027496', '0', null, '1511959744');

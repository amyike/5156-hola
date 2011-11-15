/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : thinksns

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2011-11-15 14:53:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `area`
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `areaid` int(11) NOT NULL,
  `area` varchar(20) CHARACTER SET gbk NOT NULL,
  `fatherid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3145 DEFAULT CHARSET=gb2312 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('24', '120106', '红桥区', '120100');
INSERT INTO `area` VALUES ('939', '330206', '北仑区', '330200');
INSERT INTO `area` VALUES ('590', '220281', '蛟河市', '220200');
INSERT INTO `area` VALUES ('638', '222406', '和龙市', '222400');
INSERT INTO `area` VALUES ('182', '130903', '运河区', '130900');
INSERT INTO `area` VALUES ('165', '130731', '涿鹿县', '130700');
INSERT INTO `area` VALUES ('36', '120225', '蓟　县', '120100');
INSERT INTO `area` VALUES ('879', '320826', '涟水县', '320800');
INSERT INTO `area` VALUES ('399', '150623', '鄂托克前旗', '150600');
INSERT INTO `area` VALUES ('578', '220106', '绿园区', '220100');
INSERT INTO `area` VALUES ('111', '130525', '隆尧县', '130500');
INSERT INTO `area` VALUES ('412', '150727', '新巴尔虎右旗', '150700');
INSERT INTO `area` VALUES ('648', '230109', '松北区', '230100');
INSERT INTO `area` VALUES ('574', '220102', '南关区', '220100');
INSERT INTO `area` VALUES ('201', '131023', '永清县', '131000');
INSERT INTO `area` VALUES ('280', '140722', '左权县', '140700');
INSERT INTO `area` VALUES ('128', '130621', '满城县', '130600');
INSERT INTO `area` VALUES ('592', '220283', '舒兰市', '220200');
INSERT INTO `area` VALUES ('520', '210781', '凌海市', '210700');
INSERT INTO `area` VALUES ('913', '321283', '泰兴市', '321200');
INSERT INTO `area` VALUES ('633', '222401', '延吉市', '222400');
INSERT INTO `area` VALUES ('756', '231024', '东宁县', '231000');
INSERT INTO `area` VALUES ('760', '231084', '宁安市', '231000');
INSERT INTO `area` VALUES ('330', '141031', '隰　县', '141000');
INSERT INTO `area` VALUES ('700', '230505', '四方台区', '230500');
INSERT INTO `area` VALUES ('546', '211102', '双台子区', '211100');
INSERT INTO `area` VALUES ('462', '210104', '大东区', '210100');
INSERT INTO `area` VALUES ('581', '220181', '九台市', '220100');
INSERT INTO `area` VALUES ('895', '321003', '邗江区', '321000');
INSERT INTO `area` VALUES ('335', '141082', '霍州市', '141000');
INSERT INTO `area` VALUES ('136', '130629', '容城县', '130600');
INSERT INTO `area` VALUES ('275', '140623', '右玉县', '140600');
INSERT INTO `area` VALUES ('750', '230921', '勃利县', '230900');
INSERT INTO `area` VALUES ('307', '140923', '代　县', '140900');
INSERT INTO `area` VALUES ('714', '230623', '林甸县', '230600');
INSERT INTO `area` VALUES ('522', '210801', '市辖区', '210800');
INSERT INTO `area` VALUES ('114', '130528', '宁晋县', '130500');
INSERT INTO `area` VALUES ('531', '210903', '新邱区', '210900');
INSERT INTO `area` VALUES ('277', '140701', '市辖区', '140700');
INSERT INTO `area` VALUES ('467', '210113', '新城子区', '210100');
INSERT INTO `area` VALUES ('511', '210624', '宽甸满族自治县', '210600');
INSERT INTO `area` VALUES ('105', '130502', '桥东区', '130500');
INSERT INTO `area` VALUES ('619', '220625', '江源县', '220600');
INSERT INTO `area` VALUES ('776', '231226', '绥棱县', '231200');
INSERT INTO `area` VALUES ('233', '140203', '矿　区', '140200');
INSERT INTO `area` VALUES ('981', '330702', '婺城区', '330700');
INSERT INTO `area` VALUES ('262', '140481', '潞城市', '140400');
INSERT INTO `area` VALUES ('616', '220621', '抚松县', '220600');
INSERT INTO `area` VALUES ('100', '130433', '馆陶县', '130400');
INSERT INTO `area` VALUES ('821', '320206', '惠山区', '320200');
INSERT INTO `area` VALUES ('351', '150102', '新城区', '150100');
INSERT INTO `area` VALUES ('14', '110115', '大兴区', '110100');
INSERT INTO `area` VALUES ('340', '141123', '兴　县', '141100');
INSERT INTO `area` VALUES ('834', '320324', '睢宁县', '320300');
INSERT INTO `area` VALUES ('192', '130930', '孟村回族自治县', '130900');
INSERT INTO `area` VALUES ('270', '140601', '市辖区', '140600');
INSERT INTO `area` VALUES ('902', '321102', '京口区', '321100');
INSERT INTO `area` VALUES ('958', '330382', '乐清市', '330300');
INSERT INTO `area` VALUES ('880', '320829', '洪泽县', '320800');
INSERT INTO `area` VALUES ('554', '211223', '西丰县', '211200');
INSERT INTO `area` VALUES ('123', '130582', '沙河市', '130500');
INSERT INTO `area` VALUES ('471', '210124', '法库县', '210100');
INSERT INTO `area` VALUES ('921', '330101', '市辖区', '330100');
INSERT INTO `area` VALUES ('96', '130429', '永年县', '130400');
INSERT INTO `area` VALUES ('121', '130535', '临西县', '130500');
INSERT INTO `area` VALUES ('318', '141001', '市辖区', '141000');
INSERT INTO `area` VALUES ('241', '140226', '左云县', '140200');
INSERT INTO `area` VALUES ('642', '230102', '道里区', '230100');
INSERT INTO `area` VALUES ('624', '220722', '长岭县', '220700');
INSERT INTO `area` VALUES ('706', '230601', '市辖区', '230600');
INSERT INTO `area` VALUES ('929', '330110', '余杭区', '330100');
INSERT INTO `area` VALUES ('623', '220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `area` VALUES ('822', '320211', '滨湖区', '320200');
INSERT INTO `area` VALUES ('312', '140928', '五寨县', '140900');
INSERT INTO `area` VALUES ('279', '140721', '榆社县', '140700');
INSERT INTO `area` VALUES ('595', '220302', '铁西区', '220300');
INSERT INTO `area` VALUES ('602', '220402', '龙山区', '220400');
INSERT INTO `area` VALUES ('441', '152222', '科尔沁右翼中旗', '152200');
INSERT INTO `area` VALUES ('38', '130102', '长安区', '130100');
INSERT INTO `area` VALUES ('662', '230202', '龙沙区', '230200');
INSERT INTO `area` VALUES ('566', '211401', '市辖区', '211400');
INSERT INTO `area` VALUES ('831', '320321', '丰　县', '320300');
INSERT INTO `area` VALUES ('564', '211381', '北票市', '211300');
INSERT INTO `area` VALUES ('503', '210504', '明山区', '210500');
INSERT INTO `area` VALUES ('406', '150721', '阿荣旗', '150700');
INSERT INTO `area` VALUES ('814', '320124', '溧水县', '320100');
INSERT INTO `area` VALUES ('248', '140322', '盂　县', '140300');
INSERT INTO `area` VALUES ('207', '131082', '三河市', '131000');
INSERT INTO `area` VALUES ('643', '230103', '南岗区', '230100');
INSERT INTO `area` VALUES ('876', '320803', '楚州区', '320800');
INSERT INTO `area` VALUES ('905', '321181', '丹阳市', '321100');
INSERT INTO `area` VALUES ('157', '130723', '康保县', '130700');
INSERT INTO `area` VALUES ('841', '320411', '新北区', '320400');
INSERT INTO `area` VALUES ('1', '110101', '东城区', '110100');
INSERT INTO `area` VALUES ('954', '330327', '苍南县', '330300');
INSERT INTO `area` VALUES ('987', '330782', '义乌市', '330700');
INSERT INTO `area` VALUES ('962', '330421', '嘉善县', '330400');
INSERT INTO `area` VALUES ('110', '130524', '柏乡县', '130500');
INSERT INTO `area` VALUES ('97', '130430', '邱　县', '130400');
INSERT INTO `area` VALUES ('618', '220623', '长白朝鲜族自治县', '220600');
INSERT INTO `area` VALUES ('469', '210122', '辽中县', '210100');
INSERT INTO `area` VALUES ('347', '141130', '交口县', '141100');
INSERT INTO `area` VALUES ('468', '210114', '于洪区', '210100');
INSERT INTO `area` VALUES ('484', '210301', '市辖区', '210300');
INSERT INTO `area` VALUES ('23', '120105', '河北区', '120100');
INSERT INTO `area` VALUES ('696', '230422', '绥滨县', '230400');
INSERT INTO `area` VALUES ('603', '220403', '西安区', '220400');
INSERT INTO `area` VALUES ('604', '220421', '东丰县', '220400');
INSERT INTO `area` VALUES ('713', '230622', '肇源县', '230600');
INSERT INTO `area` VALUES ('646', '230107', '动力区', '230100');
INSERT INTO `area` VALUES ('795', '310115', '浦东新区', '310100');
INSERT INTO `area` VALUES ('155', '130721', '宣化县', '130700');
INSERT INTO `area` VALUES ('746', '230901', '市辖区', '230900');
INSERT INTO `area` VALUES ('755', '231005', '西安区', '231000');
INSERT INTO `area` VALUES ('600', '220382', '双辽市', '220300');
INSERT INTO `area` VALUES ('858', '320602', '崇川区', '320600');
INSERT INTO `area` VALUES ('634', '222402', '图们市', '222400');
INSERT INTO `area` VALUES ('524', '210803', '西市区', '210800');
INSERT INTO `area` VALUES ('244', '140302', '城　区', '140300');
INSERT INTO `area` VALUES ('175', '130824', '滦平县', '130800');
INSERT INTO `area` VALUES ('222', '140106', '迎泽区', '140100');
INSERT INTO `area` VALUES ('419', '150802', '临河区', '150800');
INSERT INTO `area` VALUES ('431', '150924', '兴和县', '150900');
INSERT INTO `area` VALUES ('323', '141024', '洪洞县', '141000');
INSERT INTO `area` VALUES ('371', '150302', '海勃湾区', '150300');
INSERT INTO `area` VALUES ('757', '231025', '林口县', '231000');
INSERT INTO `area` VALUES ('191', '130929', '献　县', '130900');
INSERT INTO `area` VALUES ('606', '220501', '市辖区', '220500');
INSERT INTO `area` VALUES ('370', '150301', '市辖区', '150300');
INSERT INTO `area` VALUES ('514', '210701', '市辖区', '210700');
INSERT INTO `area` VALUES ('299', '140829', '平陆县', '140800');
INSERT INTO `area` VALUES ('108', '130522', '临城县', '130500');
INSERT INTO `area` VALUES ('443', '152224', '突泉县', '152200');
INSERT INTO `area` VALUES ('346', '141129', '中阳县', '141100');
INSERT INTO `area` VALUES ('8', '110108', '海淀区', '110100');
INSERT INTO `area` VALUES ('214', '131125', '安平县', '131100');
INSERT INTO `area` VALUES ('498', '210422', '新宾满族自治县', '210400');
INSERT INTO `area` VALUES ('808', '320107', '下关区', '320100');
INSERT INTO `area` VALUES ('629', '220821', '镇赉县', '220800');
INSERT INTO `area` VALUES ('824', '320282', '宜兴市', '320200');
INSERT INTO `area` VALUES ('622', '220702', '宁江区', '220700');
INSERT INTO `area` VALUES ('363', '150204', '青山区', '150200');
INSERT INTO `area` VALUES ('589', '220221', '永吉县', '220200');
INSERT INTO `area` VALUES ('78', '130303', '山海关区', '130300');
INSERT INTO `area` VALUES ('767', '231181', '北安市', '231100');
INSERT INTO `area` VALUES ('37', '130101', '市辖区', '130100');
INSERT INTO `area` VALUES ('310', '140926', '静乐县', '140900');
INSERT INTO `area` VALUES ('758', '231081', '绥芬河市', '231000');
INSERT INTO `area` VALUES ('815', '320125', '高淳县', '320100');
INSERT INTO `area` VALUES ('769', '231201', '市辖区', '231200');
INSERT INTO `area` VALUES ('465', '210111', '苏家屯区', '210100');
INSERT INTO `area` VALUES ('164', '130730', '怀来县', '130700');
INSERT INTO `area` VALUES ('855', '320584', '吴江市', '320500');
INSERT INTO `area` VALUES ('708', '230603', '龙凤区', '230600');
INSERT INTO `area` VALUES ('309', '140925', '宁武县', '140900');
INSERT INTO `area` VALUES ('122', '130581', '南宫市', '130500');
INSERT INTO `area` VALUES ('221', '140105', '小店区', '140100');
INSERT INTO `area` VALUES ('969', '330503', '南浔区', '330500');
INSERT INTO `area` VALUES ('402', '150626', '乌审旗', '150600');
INSERT INTO `area` VALUES ('273', '140621', '山阴县', '140600');
INSERT INTO `area` VALUES ('474', '210202', '中山区', '210200');
INSERT INTO `area` VALUES ('193', '130981', '泊头市', '130900');
INSERT INTO `area` VALUES ('726', '230711', '乌马河区', '230700');
INSERT INTO `area` VALUES ('197', '131001', '市辖区', '131000');
INSERT INTO `area` VALUES ('525', '210804', '鲅鱼圈区', '210800');
INSERT INTO `area` VALUES ('171', '130804', '鹰手营子矿区', '130800');
INSERT INTO `area` VALUES ('639', '222424', '汪清县', '222400');
INSERT INTO `area` VALUES ('861', '320623', '如东县', '320600');
INSERT INTO `area` VALUES ('517', '210711', '太和区', '210700');
INSERT INTO `area` VALUES ('505', '210521', '本溪满族自治县', '210500');
INSERT INTO `area` VALUES ('362', '150203', '昆都仑区', '150200');
INSERT INTO `area` VALUES ('455', '152531', '多伦县', '152500');
INSERT INTO `area` VALUES ('854', '320583', '昆山市', '320500');
INSERT INTO `area` VALUES ('842', '320412', '武进区', '320400');
INSERT INTO `area` VALUES ('802', '320101', '市辖区', '320100');
INSERT INTO `area` VALUES ('204', '131026', '文安县', '131000');
INSERT INTO `area` VALUES ('568', '211403', '龙港区', '211400');
INSERT INTO `area` VALUES ('152', '130703', '桥西区', '130700');
INSERT INTO `area` VALUES ('256', '140426', '黎城县', '140400');
INSERT INTO `area` VALUES ('135', '130628', '高阳县', '130600');
INSERT INTO `area` VALUES ('150', '130701', '市辖区', '130700');
INSERT INTO `area` VALUES ('257', '140427', '壶关县', '140400');
INSERT INTO `area` VALUES ('527', '210881', '盖州市', '210800');
INSERT INTO `area` VALUES ('457', '152922', '阿拉善右旗', '152900');
INSERT INTO `area` VALUES ('817', '320202', '崇安区', '320200');
INSERT INTO `area` VALUES ('58', '130183', '晋州市', '130100');
INSERT INTO `area` VALUES ('865', '320684', '海门市', '320600');
INSERT INTO `area` VALUES ('816', '320201', '市辖区', '320200');
INSERT INTO `area` VALUES ('888', '320923', '阜宁县', '320900');
INSERT INTO `area` VALUES ('302', '140882', '河津市', '140800');
INSERT INTO `area` VALUES ('743', '230833', '抚远县', '230800');
INSERT INTO `area` VALUES ('143', '130636', '顺平县', '130600');
INSERT INTO `area` VALUES ('675', '230230', '克东县', '230200');
INSERT INTO `area` VALUES ('735', '230802', '永红区', '230800');
INSERT INTO `area` VALUES ('489', '210321', '台安县', '210300');
INSERT INTO `area` VALUES ('76', '130301', '市辖区', '130300');
INSERT INTO `area` VALUES ('885', '320903', '盐都区', '320900');
INSERT INTO `area` VALUES ('210', '131121', '枣强县', '131100');
INSERT INTO `area` VALUES ('725', '230710', '五营区', '230700');
INSERT INTO `area` VALUES ('833', '320323', '铜山县', '320300');
INSERT INTO `area` VALUES ('392', '150524', '库伦旗', '150500');
INSERT INTO `area` VALUES ('591', '220282', '桦甸市', '220200');
INSERT INTO `area` VALUES ('344', '141127', '岚　县', '141100');
INSERT INTO `area` VALUES ('125', '130602', '新市区', '130600');
INSERT INTO `area` VALUES ('644', '230104', '道外区', '230100');
INSERT INTO `area` VALUES ('666', '230206', '富拉尔基区', '230200');
INSERT INTO `area` VALUES ('115', '130529', '巨鹿县', '130500');
INSERT INTO `area` VALUES ('461', '210103', '沈河区', '210100');
INSERT INTO `area` VALUES ('730', '230715', '红星区', '230700');
INSERT INTO `area` VALUES ('789', '310108', '闸北区', '310100');
INSERT INTO `area` VALUES ('890', '320925', '建湖县', '320900');
INSERT INTO `area` VALUES ('857', '320601', '市辖区', '320600');
INSERT INTO `area` VALUES ('183', '130921', '沧　县', '130900');
INSERT INTO `area` VALUES ('242', '140227', '大同县', '140200');
INSERT INTO `area` VALUES ('561', '211321', '朝阳县', '211300');
INSERT INTO `area` VALUES ('818', '320203', '南长区', '320200');
INSERT INTO `area` VALUES ('328', '141029', '乡宁县', '141000');
INSERT INTO `area` VALUES ('109', '130523', '内丘县', '130500');
INSERT INTO `area` VALUES ('652', '230125', '宾　县', '230100');
INSERT INTO `area` VALUES ('400', '150624', '鄂托克旗', '150600');
INSERT INTO `area` VALUES ('212', '131123', '武强县', '131100');
INSERT INTO `area` VALUES ('733', '230781', '铁力市', '230700');
INSERT INTO `area` VALUES ('500', '210501', '市辖区', '210500');
INSERT INTO `area` VALUES ('485', '210302', '铁东区', '210300');
INSERT INTO `area` VALUES ('803', '320102', '玄武区', '320100');
INSERT INTO `area` VALUES ('917', '321311', '宿豫区', '321300');
INSERT INTO `area` VALUES ('389', '150521', '科尔沁左翼中旗', '150500');
INSERT INTO `area` VALUES ('478', '210212', '旅顺口区', '210200');
INSERT INTO `area` VALUES ('889', '320924', '射阳县', '320900');
INSERT INTO `area` VALUES ('420', '150821', '五原县', '150800');
INSERT INTO `area` VALUES ('977', '330681', '诸暨市', '330600');
INSERT INTO `area` VALUES ('422', '150823', '乌拉特前旗', '150800');
INSERT INTO `area` VALUES ('995', '330825', '龙游县', '330800');
INSERT INTO `area` VALUES ('349', '141182', '汾阳市', '141100');
INSERT INTO `area` VALUES ('139', '130632', '安新县', '130600');
INSERT INTO `area` VALUES ('2', '110102', '西城区', '110100');
INSERT INTO `area` VALUES ('353', '150104', '玉泉区', '150100');
INSERT INTO `area` VALUES ('562', '211322', '建平县', '211300');
INSERT INTO `area` VALUES ('395', '150581', '霍林郭勒市', '150500');
INSERT INTO `area` VALUES ('89', '130421', '邯郸县', '130400');
INSERT INTO `area` VALUES ('688', '230401', '市辖区', '230400');
INSERT INTO `area` VALUES ('358', '150124', '清水河县', '150100');
INSERT INTO `area` VALUES ('220', '140101', '市辖区', '140100');
INSERT INTO `area` VALUES ('90', '130423', '临漳县', '130400');
INSERT INTO `area` VALUES ('418', '150801', '市辖区', '150800');
INSERT INTO `area` VALUES ('959', '330401', '市辖区', '330400');
INSERT INTO `area` VALUES ('752', '231002', '东安区', '231000');
INSERT INTO `area` VALUES ('416', '150784', '额尔古纳市', '150700');
INSERT INTO `area` VALUES ('782', '232723', '漠河县', '232700');
INSERT INTO `area` VALUES ('274', '140622', '应　县', '140600');
INSERT INTO `area` VALUES ('410', '150725', '陈巴尔虎旗', '150700');
INSERT INTO `area` VALUES ('999', '330903', '普陀区', '330900');
INSERT INTO `area` VALUES ('386', '150430', '敖汉旗', '150400');
INSERT INTO `area` VALUES ('943', '330226', '宁海县', '330200');
INSERT INTO `area` VALUES ('945', '330282', '慈溪市', '330200');
INSERT INTO `area` VALUES ('577', '220105', '二道区', '220100');
INSERT INTO `area` VALUES ('211', '131122', '武邑县', '131100');
INSERT INTO `area` VALUES ('859', '320611', '港闸区', '320600');
INSERT INTO `area` VALUES ('486', '210303', '铁西区', '210300');
INSERT INTO `area` VALUES ('315', '140931', '保德县', '140900');
INSERT INTO `area` VALUES ('483', '210283', '庄河市', '210200');
INSERT INTO `area` VALUES ('337', '141102', '离石区', '141100');
INSERT INTO `area` VALUES ('870', '320721', '赣榆县', '320700');
INSERT INTO `area` VALUES ('426', '150901', '市辖区', '150900');
INSERT INTO `area` VALUES ('710', '230605', '红岗区', '230600');
INSERT INTO `area` VALUES ('45', '130123', '正定县', '130100');
INSERT INTO `area` VALUES ('83', '130324', '卢龙县', '130300');
INSERT INTO `area` VALUES ('610', '220523', '辉南县', '220500');
INSERT INTO `area` VALUES ('162', '130728', '怀安县', '130700');
INSERT INTO `area` VALUES ('295', '140825', '新绛县', '140800');
INSERT INTO `area` VALUES ('166', '130732', '赤城县', '130700');
INSERT INTO `area` VALUES ('388', '150502', '科尔沁区', '150500');
INSERT INTO `area` VALUES ('308', '140924', '繁峙县', '140900');
INSERT INTO `area` VALUES ('627', '220801', '市辖区', '220800');
INSERT INTO `area` VALUES ('530', '210902', '海州区', '210900');
INSERT INTO `area` VALUES ('846', '320502', '沧浪区', '320500');
INSERT INTO `area` VALUES ('989', '330784', '永康市', '330700');
INSERT INTO `area` VALUES ('227', '140121', '清徐县', '140100');
INSERT INTO `area` VALUES ('992', '330803', '衢江区', '330800');
INSERT INTO `area` VALUES ('342', '141125', '柳林县', '141100');
INSERT INTO `area` VALUES ('911', '321281', '兴化市', '321200');
INSERT INTO `area` VALUES ('866', '320701', '市辖区', '320700');
INSERT INTO `area` VALUES ('228', '140122', '阳曲县', '140100');
INSERT INTO `area` VALUES ('453', '152529', '正镶白旗', '152500');
INSERT INTO `area` VALUES ('570', '211421', '绥中县', '211400');
INSERT INTO `area` VALUES ('641', '230101', '市辖区', '230100');
INSERT INTO `area` VALUES ('694', '230407', '兴山区', '230400');
INSERT INTO `area` VALUES ('586', '220203', '龙潭区', '220200');
INSERT INTO `area` VALUES ('863', '320682', '如皋市', '320600');
INSERT INTO `area` VALUES ('579', '220112', '双阳区', '220100');
INSERT INTO `area` VALUES ('46', '130124', '栾城县', '130100');
INSERT INTO `area` VALUES ('607', '220502', '东昌区', '220500');
INSERT INTO `area` VALUES ('225', '140109', '万柏林区', '140100');
INSERT INTO `area` VALUES ('178', '130827', '宽城满族自治县', '130800');
INSERT INTO `area` VALUES ('878', '320811', '清浦区', '320800');
INSERT INTO `area` VALUES ('331', '141032', '永和县', '141000');
INSERT INTO `area` VALUES ('238', '140223', '广灵县', '140200');
INSERT INTO `area` VALUES ('727', '230712', '汤旺河区', '230700');
INSERT INTO `area` VALUES ('936', '330203', '海曙区', '330200');
INSERT INTO `area` VALUES ('663', '230203', '建华区', '230200');
INSERT INTO `area` VALUES ('526', '210811', '老边区', '210800');
INSERT INTO `area` VALUES ('558', '211301', '市辖区', '211300');
INSERT INTO `area` VALUES ('103', '130481', '武安市', '130400');
INSERT INTO `area` VALUES ('736', '230803', '向阳区', '230800');
INSERT INTO `area` VALUES ('159', '130725', '尚义县', '130700');
INSERT INTO `area` VALUES ('73', '130230', '唐海县', '130200');
INSERT INTO `area` VALUES ('707', '230602', '萨尔图区', '230600');
INSERT INTO `area` VALUES ('442', '152223', '扎赉特旗', '152200');
INSERT INTO `area` VALUES ('764', '231121', '嫩江县', '231100');
INSERT INTO `area` VALUES ('951', '330322', '洞头县', '330300');
INSERT INTO `area` VALUES ('86', '130403', '丛台区', '130400');
INSERT INTO `area` VALUES ('284', '140726', '太谷县', '140700');
INSERT INTO `area` VALUES ('765', '231123', '逊克县', '231100');
INSERT INTO `area` VALUES ('674', '230229', '克山县', '230200');
INSERT INTO `area` VALUES ('451', '152527', '太仆寺旗', '152500');
INSERT INTO `area` VALUES ('397', '150621', '达拉特旗', '150600');
INSERT INTO `area` VALUES ('830', '320311', '泉山区', '320300');
INSERT INTO `area` VALUES ('717', '230702', '伊春区', '230700');
INSERT INTO `area` VALUES ('149', '130684', '高碑店市', '130600');
INSERT INTO `area` VALUES ('967', '330501', '市辖区', '330500');
INSERT INTO `area` VALUES ('976', '330624', '新昌县', '330600');
INSERT INTO `area` VALUES ('949', '330303', '龙湾区', '330300');
INSERT INTO `area` VALUES ('263', '140501', '市辖区', '140500');
INSERT INTO `area` VALUES ('545', '211101', '市辖区', '211100');
INSERT INTO `area` VALUES ('316', '140932', '偏关县', '140900');
INSERT INTO `area` VALUES ('133', '130626', '定兴县', '130600');
INSERT INTO `area` VALUES ('147', '130682', '定州市', '130600');
INSERT INTO `area` VALUES ('640', '222426', '安图县', '222400');
INSERT INTO `area` VALUES ('840', '320405', '戚墅堰区', '320400');
INSERT INTO `area` VALUES ('957', '330381', '瑞安市', '330300');
INSERT INTO `area` VALUES ('508', '210602', '元宝区', '210600');
INSERT INTO `area` VALUES ('198', '131002', '安次区', '131000');
INSERT INTO `area` VALUES ('645', '230106', '香坊区', '230100');
INSERT INTO `area` VALUES ('612', '220581', '梅河口市', '220500');
INSERT INTO `area` VALUES ('74', '130281', '遵化市', '130200');
INSERT INTO `area` VALUES ('605', '220422', '东辽县', '220400');
INSERT INTO `area` VALUES ('354', '150105', '赛罕区', '150100');
INSERT INTO `area` VALUES ('491', '210381', '海城市', '210300');
INSERT INTO `area` VALUES ('343', '141126', '石楼县', '141100');
INSERT INTO `area` VALUES ('682', '230305', '梨树区', '230300');
INSERT INTO `area` VALUES ('761', '231085', '穆棱市', '231000');
INSERT INTO `area` VALUES ('9', '110109', '门头沟区', '110100');
INSERT INTO `area` VALUES ('772', '231222', '兰西县', '231200');
INSERT INTO `area` VALUES ('493', '210402', '新抚区', '210400');
INSERT INTO `area` VALUES ('569', '211404', '南票区', '211400');
INSERT INTO `area` VALUES ('55', '130133', '赵　县', '130100');
INSERT INTO `area` VALUES ('294', '140824', '稷山县', '140800');
INSERT INTO `area` VALUES ('982', '330703', '金东区', '330700');
INSERT INTO `area` VALUES ('6', '110106', '丰台区', '110100');
INSERT INTO `area` VALUES ('762', '231101', '市辖区', '231100');
INSERT INTO `area` VALUES ('952', '330324', '永嘉县', '330300');
INSERT INTO `area` VALUES ('998', '330902', '定海区', '330900');
INSERT INTO `area` VALUES ('230', '140181', '古交市', '140100');
INSERT INTO `area` VALUES ('576', '220104', '朝阳区', '220100');
INSERT INTO `area` VALUES ('247', '140321', '平定县', '140300');
INSERT INTO `area` VALUES ('378', '150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `area` VALUES ('300', '140830', '芮城县', '140800');
INSERT INTO `area` VALUES ('849', '320505', '虎丘区', '320500');
INSERT INTO `area` VALUES ('84', '130401', '市辖区', '130400');
INSERT INTO `area` VALUES ('367', '150221', '土默特右旗', '150200');
INSERT INTO `area` VALUES ('723', '230708', '美溪区', '230700');
INSERT INTO `area` VALUES ('240', '140225', '浑源县', '140200');
INSERT INTO `area` VALUES ('205', '131028', '大厂回族自治县', '131000');
INSERT INTO `area` VALUES ('365', '150206', '白云矿区', '150200');
INSERT INTO `area` VALUES ('95', '130428', '肥乡县', '130400');
INSERT INTO `area` VALUES ('306', '140922', '五台县', '140900');
INSERT INTO `area` VALUES ('966', '330483', '桐乡市', '330400');
INSERT INTO `area` VALUES ('845', '320501', '市辖区', '320500');
INSERT INTO `area` VALUES ('900', '321088', '江都市', '321000');
INSERT INTO `area` VALUES ('267', '140524', '陵川县', '140500');
INSERT INTO `area` VALUES ('249', '140401', '市辖区', '140400');
INSERT INTO `area` VALUES ('930', '330122', '桐庐县', '330100');
INSERT INTO `area` VALUES ('993', '330822', '常山县', '330800');
INSERT INTO `area` VALUES ('609', '220521', '通化县', '220500');
INSERT INTO `area` VALUES ('518', '210726', '黑山县', '210700');
INSERT INTO `area` VALUES ('661', '230201', '市辖区', '230200');
INSERT INTO `area` VALUES ('934', '330185', '临安市', '330100');
INSERT INTO `area` VALUES ('187', '130925', '盐山县', '130900');
INSERT INTO `area` VALUES ('534', '210911', '细河区', '210900');
INSERT INTO `area` VALUES ('301', '140881', '永济市', '140800');
INSERT INTO `area` VALUES ('499', '210423', '清原满族自治县', '210400');
INSERT INTO `area` VALUES ('251', '140411', '郊　区', '140400');
INSERT INTO `area` VALUES ('482', '210282', '普兰店市', '210200');
INSERT INTO `area` VALUES ('805', '320104', '秦淮区', '320100');
INSERT INTO `area` VALUES ('69', '130224', '滦南县', '130200');
INSERT INTO `area` VALUES ('80', '130321', '青龙满族自治县', '130300');
INSERT INTO `area` VALUES ('695', '230421', '萝北县', '230400');
INSERT INTO `area` VALUES ('366', '150207', '九原区', '150200');
INSERT INTO `area` VALUES ('246', '140311', '郊　区', '140300');
INSERT INTO `area` VALUES ('206', '131081', '霸州市', '131000');
INSERT INTO `area` VALUES ('542', '211011', '太子河区', '211000');
INSERT INTO `area` VALUES ('439', '152202', '阿尔山市', '152200');
INSERT INTO `area` VALUES ('409', '150724', '鄂温克族自治旗', '150700');
INSERT INTO `area` VALUES ('784', '310103', '卢湾区', '310100');
INSERT INTO `area` VALUES ('403', '150627', '伊金霍洛旗', '150600');
INSERT INTO `area` VALUES ('345', '141128', '方山县', '141100');
INSERT INTO `area` VALUES ('996', '330881', '江山市', '330800');
INSERT INTO `area` VALUES ('361', '150202', '东河区', '150200');
INSERT INTO `area` VALUES ('820', '320205', '锡山区', '320200');
INSERT INTO `area` VALUES ('779', '231283', '海伦市', '231200');
INSERT INTO `area` VALUES ('172', '130821', '承德县', '130800');
INSERT INTO `area` VALUES ('850', '320506', '吴中区', '320500');
INSERT INTO `area` VALUES ('138', '130631', '望都县', '130600');
INSERT INTO `area` VALUES ('783', '310101', '黄浦区', '310100');
INSERT INTO `area` VALUES ('950', '330304', '瓯海区', '330300');
INSERT INTO `area` VALUES ('234', '140211', '南郊区', '140200');
INSERT INTO `area` VALUES ('380', '150423', '巴林右旗', '150400');
INSERT INTO `area` VALUES ('64', '130204', '古冶区', '130200');
INSERT INTO `area` VALUES ('567', '211402', '连山区', '211400');
INSERT INTO `area` VALUES ('630', '220822', '通榆县', '220800');
INSERT INTO `area` VALUES ('381', '150424', '林西县', '150400');
INSERT INTO `area` VALUES ('893', '321001', '市辖区', '321000');
INSERT INTO `area` VALUES ('965', '330482', '平湖市', '330400');
INSERT INTO `area` VALUES ('293', '140823', '闻喜县', '140800');
INSERT INTO `area` VALUES ('407', '150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `area` VALUES ('488', '210311', '千山区', '210300');
INSERT INTO `area` VALUES ('445', '152502', '锡林浩特市', '152500');
INSERT INTO `area` VALUES ('754', '231004', '爱民区', '231000');
INSERT INTO `area` VALUES ('516', '210703', '凌河区', '210700');
INSERT INTO `area` VALUES ('884', '320902', '亭湖区', '320900');
INSERT INTO `area` VALUES ('377', '150404', '松山区', '150400');
INSERT INTO `area` VALUES ('434', '150927', '察哈尔右翼中旗', '150900');
INSERT INTO `area` VALUES ('63', '130203', '路北区', '130200');
INSERT INTO `area` VALUES ('341', '141124', '临　县', '141100');
INSERT INTO `area` VALUES ('797', '310117', '松江区', '310100');
INSERT INTO `area` VALUES ('396', '150602', '东胜区', '150600');
INSERT INTO `area` VALUES ('777', '231281', '安达市', '231200');
INSERT INTO `area` VALUES ('774', '231224', '庆安县', '231200');
INSERT INTO `area` VALUES ('154', '130706', '下花园区', '130700');
INSERT INTO `area` VALUES ('21', '120103', '河西区', '120100');
INSERT INTO `area` VALUES ('544', '211081', '灯塔市', '211000');
INSERT INTO `area` VALUES ('724', '230709', '金山屯区', '230700');
INSERT INTO `area` VALUES ('460', '210102', '和平区', '210100');
INSERT INTO `area` VALUES ('588', '220211', '丰满区', '220200');
INSERT INTO `area` VALUES ('872', '320723', '灌云县', '320700');
INSERT INTO `area` VALUES ('615', '220602', '八道江区', '220600');
INSERT INTO `area` VALUES ('68', '130223', '滦　县', '130200');
INSERT INTO `area` VALUES ('408', '150723', '鄂伦春自治旗', '150700');
INSERT INTO `area` VALUES ('163', '130729', '万全县', '130700');
INSERT INTO `area` VALUES ('82', '130323', '抚宁县', '130300');
INSERT INTO `area` VALUES ('101', '130434', '魏　县', '130400');
INSERT INTO `area` VALUES ('719', '230704', '友好区', '230700');
INSERT INTO `area` VALUES ('53', '130131', '平山县', '130100');
INSERT INTO `area` VALUES ('681', '230304', '滴道区', '230300');
INSERT INTO `area` VALUES ('920', '321324', '泗洪县', '321300');
INSERT INTO `area` VALUES ('127', '130604', '南市区', '130600');
INSERT INTO `area` VALUES ('728', '230713', '带岭区', '230700');
INSERT INTO `area` VALUES ('979', '330683', '嵊州市', '330600');
INSERT INTO `area` VALUES ('868', '320705', '新浦区', '320700');
INSERT INTO `area` VALUES ('974', '330602', '越城区', '330600');
INSERT INTO `area` VALUES ('650', '230123', '依兰县', '230100');
INSERT INTO `area` VALUES ('219', '131182', '深州市', '131100');
INSERT INTO `area` VALUES ('332', '141033', '蒲　县', '141000');
INSERT INTO `area` VALUES ('909', '321202', '海陵区', '321200');
INSERT INTO `area` VALUES ('129', '130622', '清苑县', '130600');
INSERT INTO `area` VALUES ('62', '130202', '路南区', '130200');
INSERT INTO `area` VALUES ('984', '330726', '浦江县', '330700');
INSERT INTO `area` VALUES ('444', '152501', '二连浩特市', '152500');
INSERT INTO `area` VALUES ('379', '150422', '巴林左旗', '150400');
INSERT INTO `area` VALUES ('970', '330521', '德清县', '330500');
INSERT INTO `area` VALUES ('532', '210904', '太平区', '210900');
INSERT INTO `area` VALUES ('679', '230302', '鸡冠区', '230300');
INSERT INTO `area` VALUES ('697', '230501', '市辖区', '230500');
INSERT INTO `area` VALUES ('737', '230804', '前进区', '230800');
INSERT INTO `area` VALUES ('15', '110116', '怀柔区', '110100');
INSERT INTO `area` VALUES ('142', '130635', '蠡　县', '130600');
INSERT INTO `area` VALUES ('702', '230521', '集贤县', '230500');
INSERT INTO `area` VALUES ('224', '140108', '尖草坪区', '140100');
INSERT INTO `area` VALUES ('317', '140981', '原平市', '140900');
INSERT INTO `area` VALUES ('528', '210882', '大石桥市', '210800');
INSERT INTO `area` VALUES ('176', '130825', '隆化县', '130800');
INSERT INTO `area` VALUES ('466', '210112', '东陵区', '210100');
INSERT INTO `area` VALUES ('276', '140624', '怀仁县', '140600');
INSERT INTO `area` VALUES ('320', '141021', '曲沃县', '141000');
INSERT INTO `area` VALUES ('766', '231124', '孙吴县', '231100');
INSERT INTO `area` VALUES ('781', '232722', '塔河县', '232700');
INSERT INTO `area` VALUES ('721', '230706', '翠峦区', '230700');
INSERT INTO `area` VALUES ('338', '141121', '文水县', '141100');
INSERT INTO `area` VALUES ('433', '150926', '察哈尔右翼前旗', '150900');
INSERT INTO `area` VALUES ('85', '130402', '邯山区', '130400');
INSERT INTO `area` VALUES ('991', '330802', '柯城区', '330800');
INSERT INTO `area` VALUES ('786', '310105', '长宁区', '310100');
INSERT INTO `area` VALUES ('877', '320804', '淮阴区', '320800');
INSERT INTO `area` VALUES ('812', '320115', '江宁区', '320100');
INSERT INTO `area` VALUES ('181', '130902', '新华区', '130900');
INSERT INTO `area` VALUES ('458', '152923', '额济纳旗', '152900');
INSERT INTO `area` VALUES ('773', '231223', '青冈县', '231200');
INSERT INTO `area` VALUES ('314', '140930', '河曲县', '140900');
INSERT INTO `area` VALUES ('745', '230882', '富锦市', '230800');
INSERT INTO `area` VALUES ('232', '140202', '城　区', '140200');
INSERT INTO `area` VALUES ('217', '131128', '阜城县', '131100');
INSERT INTO `area` VALUES ('102', '130435', '曲周县', '130400');
INSERT INTO `area` VALUES ('492', '210401', '市辖区', '210400');
INSERT INTO `area` VALUES ('42', '130107', '井陉矿区', '130100');
INSERT INTO `area` VALUES ('712', '230621', '肇州县', '230600');
INSERT INTO `area` VALUES ('620', '220681', '临江市', '220600');
INSERT INTO `area` VALUES ('264', '140502', '城　区', '140500');
INSERT INTO `area` VALUES ('672', '230225', '甘南县', '230200');
INSERT INTO `area` VALUES ('626', '220724', '扶余县', '220700');
INSERT INTO `area` VALUES ('119', '130533', '威　县', '130500');
INSERT INTO `area` VALUES ('385', '150429', '宁城县', '150400');
INSERT INTO `area` VALUES ('87', '130404', '复兴区', '130400');
INSERT INTO `area` VALUES ('538', '211002', '白塔区', '211000');
INSERT INTO `area` VALUES ('614', '220601', '市辖区', '220600');
INSERT INTO `area` VALUES ('938', '330205', '江北区', '330200');
INSERT INTO `area` VALUES ('705', '230524', '饶河县', '230500');
INSERT INTO `area` VALUES ('329', '141030', '大宁县', '141000');
INSERT INTO `area` VALUES ('506', '210522', '桓仁满族自治县', '210500');
INSERT INTO `area` VALUES ('430', '150923', '商都县', '150900');
INSERT INTO `area` VALUES ('94', '130427', '磁　县', '130400');
INSERT INTO `area` VALUES ('258', '140428', '长子县', '140400');
INSERT INTO `area` VALUES ('956', '330329', '泰顺县', '330300');
INSERT INTO `area` VALUES ('898', '321081', '仪征市', '321000');
INSERT INTO `area` VALUES ('685', '230321', '鸡东县', '230300');
INSERT INTO `area` VALUES ('826', '320302', '鼓楼区', '320300');
INSERT INTO `area` VALUES ('16', '110117', '平谷区', '110100');
INSERT INTO `area` VALUES ('799', '310119', '南汇区', '310100');
INSERT INTO `area` VALUES ('848', '320504', '金阊区', '320500');
INSERT INTO `area` VALUES ('324', '141025', '古　县', '141000');
INSERT INTO `area` VALUES ('177', '130826', '丰宁满族自治县', '130800');
INSERT INTO `area` VALUES ('571', '211422', '建昌县', '211400');
INSERT INTO `area` VALUES ('326', '141027', '浮山县', '141000');
INSERT INTO `area` VALUES ('919', '321323', '泗阳县', '321300');
INSERT INTO `area` VALUES ('668', '230208', '梅里斯达斡尔族区', '230200');
INSERT INTO `area` VALUES ('925', '330105', '拱墅区', '330100');
INSERT INTO `area` VALUES ('922', '330102', '上城区', '330100');
INSERT INTO `area` VALUES ('39', '130103', '桥东区', '130100');
INSERT INTO `area` VALUES ('184', '130922', '青　县', '130900');
INSERT INTO `area` VALUES ('61', '130201', '市辖区', '130200');
INSERT INTO `area` VALUES ('659', '230183', '尚志市', '230100');
INSERT INTO `area` VALUES ('835', '320381', '新沂市', '320300');
INSERT INTO `area` VALUES ('926', '330106', '西湖区', '330100');
INSERT INTO `area` VALUES ('540', '211004', '宏伟区', '211000');
INSERT INTO `area` VALUES ('450', '152526', '西乌珠穆沁旗', '152500');
INSERT INTO `area` VALUES ('886', '320921', '响水县', '320900');
INSERT INTO `area` VALUES ('161', '130727', '阳原县', '130700');
INSERT INTO `area` VALUES ('26', '120108', '汉沽区', '120100');
INSERT INTO `area` VALUES ('13', '110114', '昌平区', '110100');
INSERT INTO `area` VALUES ('229', '140123', '娄烦县', '140100');
INSERT INTO `area` VALUES ('552', '211204', '清河区', '211200');
INSERT INTO `area` VALUES ('126', '130603', '北市区', '130600');
INSERT INTO `area` VALUES ('231', '140201', '市辖区', '140200');
INSERT INTO `area` VALUES ('60', '130185', '鹿泉市', '130100');
INSERT INTO `area` VALUES ('665', '230205', '昂昂溪区', '230200');
INSERT INTO `area` VALUES ('360', '150201', '市辖区', '150200');
INSERT INTO `area` VALUES ('286', '140728', '平遥县', '140700');
INSERT INTO `area` VALUES ('44', '130121', '井陉县', '130100');
INSERT INTO `area` VALUES ('686', '230381', '虎林市', '230300');
INSERT INTO `area` VALUES ('285', '140727', '祁　县', '140700');
INSERT INTO `area` VALUES ('303', '140901', '市辖区', '140900');
INSERT INTO `area` VALUES ('393', '150525', '奈曼旗', '150500');
INSERT INTO `area` VALUES ('17', '110228', '密云县', '110100');
INSERT INTO `area` VALUES ('749', '230904', '茄子河区', '230900');
INSERT INTO `area` VALUES ('908', '321201', '市辖区', '321200');
INSERT INTO `area` VALUES ('703', '230522', '友谊县', '230500');
INSERT INTO `area` VALUES ('271', '140602', '朔城区', '140600');
INSERT INTO `area` VALUES ('722', '230707', '新青区', '230700');
INSERT INTO `area` VALUES ('501', '210502', '平山区', '210500');
INSERT INTO `area` VALUES ('575', '220103', '宽城区', '220100');
INSERT INTO `area` VALUES ('632', '220882', '大安市', '220800');
INSERT INTO `area` VALUES ('990', '330801', '市辖区', '330800');
INSERT INTO `area` VALUES ('359', '150125', '武川县', '150100');
INSERT INTO `area` VALUES ('72', '130229', '玉田县', '130200');
INSERT INTO `area` VALUES ('116', '130530', '新河县', '130500');
INSERT INTO `area` VALUES ('311', '140927', '神池县', '140900');
INSERT INTO `area` VALUES ('892', '320982', '大丰市', '320900');
INSERT INTO `area` VALUES ('832', '320322', '沛　县', '320300');
INSERT INTO `area` VALUES ('387', '150501', '市辖区', '150500');
INSERT INTO `area` VALUES ('10', '110111', '房山区', '110100');
INSERT INTO `area` VALUES ('904', '321112', '丹徒区', '321100');
INSERT INTO `area` VALUES ('771', '231221', '望奎县', '231200');
INSERT INTO `area` VALUES ('429', '150922', '化德县', '150900');
INSERT INTO `area` VALUES ('882', '320831', '金湖县', '320800');
INSERT INTO `area` VALUES ('699', '230503', '岭东区', '230500');
INSERT INTO `area` VALUES ('740', '230822', '桦南县', '230800');
INSERT INTO `area` VALUES ('813', '320116', '六合区', '320100');
INSERT INTO `area` VALUES ('693', '230406', '东山区', '230400');
INSERT INTO `area` VALUES ('106', '130503', '桥西区', '130500');
INSERT INTO `area` VALUES ('12', '110113', '顺义区', '110100');
INSERT INTO `area` VALUES ('239', '140224', '灵丘县', '140200');
INSERT INTO `area` VALUES ('169', '130802', '双桥区', '130800');
INSERT INTO `area` VALUES ('553', '211221', '铁岭县', '211200');
INSERT INTO `area` VALUES ('811', '320114', '雨花台区', '320100');
INSERT INTO `area` VALUES ('851', '320507', '相城区', '320500');
INSERT INTO `area` VALUES ('597', '220322', '梨树县', '220300');
INSERT INTO `area` VALUES ('680', '230303', '恒山区', '230300');
INSERT INTO `area` VALUES ('209', '131102', '桃城区', '131100');
INSERT INTO `area` VALUES ('912', '321282', '靖江市', '321200');
INSERT INTO `area` VALUES ('368', '150222', '固阳县', '150200');
INSERT INTO `area` VALUES ('809', '320111', '浦口区', '320100');
INSERT INTO `area` VALUES ('57', '130182', '藁城市', '130100');
INSERT INTO `area` VALUES ('327', '141028', '吉　县', '141000');
INSERT INTO `area` VALUES ('27', '120109', '大港区', '120100');
INSERT INTO `area` VALUES ('333', '141034', '汾西县', '141000');
INSERT INTO `area` VALUES ('529', '210901', '市辖区', '210900');
INSERT INTO `area` VALUES ('836', '320382', '邳州市', '320300');
INSERT INTO `area` VALUES ('70', '130225', '乐亭县', '130200');
INSERT INTO `area` VALUES ('436', '150929', '四子王旗', '150900');
INSERT INTO `area` VALUES ('99', '130432', '广平县', '130400');
INSERT INTO `area` VALUES ('4', '110104', '宣武区', '110100');
INSERT INTO `area` VALUES ('744', '230881', '同江市', '230800');
INSERT INTO `area` VALUES ('897', '321023', '宝应县', '321000');
INSERT INTO `area` VALUES ('521', '210782', '北宁市', '210700');
INSERT INTO `area` VALUES ('438', '152201', '乌兰浩特市', '152200');
INSERT INTO `area` VALUES ('862', '320681', '启东市', '320600');
INSERT INTO `area` VALUES ('268', '140525', '泽州县', '140500');
INSERT INTO `area` VALUES ('34', '120221', '宁河县', '120100');
INSERT INTO `area` VALUES ('20', '120102', '河东区', '120100');
INSERT INTO `area` VALUES ('778', '231282', '肇东市', '231200');
INSERT INTO `area` VALUES ('585', '220202', '昌邑区', '220200');
INSERT INTO `area` VALUES ('322', '141023', '襄汾县', '141000');
INSERT INTO `area` VALUES ('120', '130534', '清河县', '130500');
INSERT INTO `area` VALUES ('587', '220204', '船营区', '220200');
INSERT INTO `area` VALUES ('18', '110229', '延庆县', '110100');
INSERT INTO `area` VALUES ('405', '150702', '海拉尔区', '150700');
INSERT INTO `area` VALUES ('502', '210503', '溪湖区', '210500');
INSERT INTO `area` VALUES ('373', '150304', '乌达区', '150300');
INSERT INTO `area` VALUES ('953', '330326', '平阳县', '330300');
INSERT INTO `area` VALUES ('875', '320802', '清河区', '320800');
INSERT INTO `area` VALUES ('944', '330281', '余姚市', '330200');
INSERT INTO `area` VALUES ('941', '330212', '鄞州区', '330200');
INSERT INTO `area` VALUES ('130', '130623', '涞水县', '130600');
INSERT INTO `area` VALUES ('536', '210922', '彰武县', '210900');
INSERT INTO `area` VALUES ('887', '320922', '滨海县', '320900');
INSERT INTO `area` VALUES ('651', '230124', '方正县', '230100');
INSERT INTO `area` VALUES ('961', '330411', '秀洲区', '330400');
INSERT INTO `area` VALUES ('916', '321302', '宿城区', '321300');
INSERT INTO `area` VALUES ('448', '152524', '苏尼特右旗', '152500');
INSERT INTO `area` VALUES ('25', '120107', '塘沽区', '120100');
INSERT INTO `area` VALUES ('519', '210727', '义　县', '210700');
INSERT INTO `area` VALUES ('910', '321203', '高港区', '321200');
INSERT INTO `area` VALUES ('81', '130322', '昌黎县', '130300');
INSERT INTO `area` VALUES ('195', '130983', '黄骅市', '130900');
INSERT INTO `area` VALUES ('798', '310118', '青浦区', '310100');
INSERT INTO `area` VALUES ('93', '130426', '涉　县', '130400');
INSERT INTO `area` VALUES ('88', '130406', '峰峰矿区', '130400');
INSERT INTO `area` VALUES ('734', '230801', '市辖区', '230800');
INSERT INTO `area` VALUES ('490', '210323', '岫岩满族自治县', '210300');
INSERT INTO `area` VALUES ('806', '320105', '建邺区', '320100');
INSERT INTO `area` VALUES ('671', '230224', '泰来县', '230200');
INSERT INTO `area` VALUES ('556', '211281', '调兵山市', '211200');
INSERT INTO `area` VALUES ('131', '130624', '阜平县', '130600');
INSERT INTO `area` VALUES ('104', '130501', '市辖区', '130500');
INSERT INTO `area` VALUES ('435', '150928', '察哈尔右翼后旗', '150900');
INSERT INTO `area` VALUES ('548', '211121', '大洼县', '211100');
INSERT INTO `area` VALUES ('480', '210224', '长海县', '210200');
INSERT INTO `area` VALUES ('5', '110105', '朝阳区', '110100');
INSERT INTO `area` VALUES ('440', '152221', '科尔沁右翼前旗', '152200');
INSERT INTO `area` VALUES ('140', '130633', '易　县', '130600');
INSERT INTO `area` VALUES ('899', '321084', '高邮市', '321000');
INSERT INTO `area` VALUES ('475', '210203', '西岗区', '210200');
INSERT INTO `area` VALUES ('741', '230826', '桦川县', '230800');
INSERT INTO `area` VALUES ('170', '130803', '双滦区', '130800');
INSERT INTO `area` VALUES ('594', '220301', '市辖区', '220300');
INSERT INTO `area` VALUES ('801', '310230', '崇明县', '310100');
INSERT INTO `area` VALUES ('255', '140425', '平顺县', '140400');
INSERT INTO `area` VALUES ('873', '320724', '灌南县', '320700');
INSERT INTO `area` VALUES ('711', '230606', '大同区', '230600');
INSERT INTO `area` VALUES ('297', '140827', '垣曲县', '140800');
INSERT INTO `area` VALUES ('715', '230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `area` VALUES ('541', '211005', '弓长岭区', '211000');
INSERT INTO `area` VALUES ('292', '140822', '万荣县', '140800');
INSERT INTO `area` VALUES ('383', '150426', '翁牛特旗', '150400');
INSERT INTO `area` VALUES ('398', '150622', '准格尔旗', '150600');
INSERT INTO `area` VALUES ('259', '140429', '武乡县', '140400');
INSERT INTO `area` VALUES ('891', '320981', '东台市', '320900');
INSERT INTO `area` VALUES ('770', '231202', '北林区', '231200');
INSERT INTO `area` VALUES ('391', '150523', '开鲁县', '150500');
INSERT INTO `area` VALUES ('11', '110112', '通州区', '110100');
INSERT INTO `area` VALUES ('658', '230182', '双城市', '230100');
INSERT INTO `area` VALUES ('427', '150902', '集宁区', '150900');
INSERT INTO `area` VALUES ('113', '130527', '南和县', '130500');
INSERT INTO `area` VALUES ('738', '230805', '东风区', '230800');
INSERT INTO `area` VALUES ('793', '310113', '宝山区', '310100');
INSERT INTO `area` VALUES ('775', '231225', '明水县', '231200');
INSERT INTO `area` VALUES ('980', '330701', '市辖区', '330700');
INSERT INTO `area` VALUES ('153', '130705', '宣化区', '130700');
INSERT INTO `area` VALUES ('804', '320103', '白下区', '320100');
INSERT INTO `area` VALUES ('687', '230382', '密山市', '230300');
INSERT INTO `area` VALUES ('202', '131024', '香河县', '131000');
INSERT INTO `area` VALUES ('463', '210105', '皇姑区', '210100');
INSERT INTO `area` VALUES ('325', '141026', '安泽县', '141000');
INSERT INTO `area` VALUES ('677', '230281', '讷河市', '230200');
INSERT INTO `area` VALUES ('298', '140828', '夏　县', '140800');
INSERT INTO `area` VALUES ('261', '140431', '沁源县', '140400');
INSERT INTO `area` VALUES ('787', '310106', '静安区', '310100');
INSERT INTO `area` VALUES ('384', '150428', '喀喇沁旗', '150400');
INSERT INTO `area` VALUES ('180', '130901', '市辖区', '130900');
INSERT INTO `area` VALUES ('669', '230221', '龙江县', '230200');
INSERT INTO `area` VALUES ('654', '230127', '木兰县', '230100');
INSERT INTO `area` VALUES ('549', '211122', '盘山县', '211100');
INSERT INTO `area` VALUES ('334', '141081', '侯马市', '141000');
INSERT INTO `area` VALUES ('844', '320482', '金坛市', '320400');
INSERT INTO `area` VALUES ('788', '310107', '普陀区', '310100');
INSERT INTO `area` VALUES ('580', '220122', '农安县', '220100');
INSERT INTO `area` VALUES ('509', '210603', '振兴区', '210600');
INSERT INTO `area` VALUES ('550', '211201', '市辖区', '211200');
INSERT INTO `area` VALUES ('690', '230403', '工农区', '230400');
INSERT INTO `area` VALUES ('948', '330302', '鹿城区', '330300');
INSERT INTO `area` VALUES ('864', '320683', '通州市', '320600');
INSERT INTO `area` VALUES ('914', '321284', '姜堰市', '321200');
INSERT INTO `area` VALUES ('572', '211481', '兴城市', '211400');
INSERT INTO `area` VALUES ('141', '130634', '曲阳县', '130600');
INSERT INTO `area` VALUES ('611', '220524', '柳河县', '220500');
INSERT INTO `area` VALUES ('838', '320402', '天宁区', '320400');
INSERT INTO `area` VALUES ('557', '211282', '开原市', '211200');
INSERT INTO `area` VALUES ('449', '152525', '东乌珠穆沁旗', '152500');
INSERT INTO `area` VALUES ('452', '152528', '镶黄旗', '152500');
INSERT INTO `area` VALUES ('137', '130630', '涞源县', '130600');
INSERT INTO `area` VALUES ('852', '320581', '常熟市', '320500');
INSERT INTO `area` VALUES ('28', '120110', '东丽区', '120100');
INSERT INTO `area` VALUES ('963', '330424', '海盐县', '330400');
INSERT INTO `area` VALUES ('289', '140801', '市辖区', '140800');
INSERT INTO `area` VALUES ('118', '130532', '平乡县', '130500');
INSERT INTO `area` VALUES ('539', '211003', '文圣区', '211000');
INSERT INTO `area` VALUES ('243', '140301', '市辖区', '140300');
INSERT INTO `area` VALUES ('785', '310104', '徐汇区', '310100');
INSERT INTO `area` VALUES ('369', '150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `area` VALUES ('647', '230108', '平房区', '230100');
INSERT INTO `area` VALUES ('867', '320703', '连云区', '320700');
INSERT INTO `area` VALUES ('304', '140902', '忻府区', '140900');
INSERT INTO `area` VALUES ('656', '230129', '延寿县', '230100');
INSERT INTO `area` VALUES ('266', '140522', '阳城县', '140500');
INSERT INTO `area` VALUES ('649', '230111', '呼兰区', '230100');
INSERT INTO `area` VALUES ('701', '230506', '宝山区', '230500');
INSERT INTO `area` VALUES ('906', '321182', '扬中市', '321100');
INSERT INTO `area` VALUES ('71', '130227', '迁西县', '130200');
INSERT INTO `area` VALUES ('477', '210211', '甘井子区', '210200');
INSERT INTO `area` VALUES ('881', '320830', '盱眙县', '320800');
INSERT INTO `area` VALUES ('635', '222403', '敦化市', '222400');
INSERT INTO `area` VALUES ('425', '150826', '杭锦后旗', '150800');
INSERT INTO `area` VALUES ('336', '141101', '市辖区', '141100');
INSERT INTO `area` VALUES ('742', '230828', '汤原县', '230800');
INSERT INTO `area` VALUES ('35', '120223', '静海县', '120100');
INSERT INTO `area` VALUES ('282', '140724', '昔阳县', '140700');
INSERT INTO `area` VALUES ('621', '220701', '市辖区', '220700');
INSERT INTO `area` VALUES ('684', '230307', '麻山区', '230300');
INSERT INTO `area` VALUES ('437', '150981', '丰镇市', '150900');
INSERT INTO `area` VALUES ('376', '150403', '元宝山区', '150400');
INSERT INTO `area` VALUES ('218', '131181', '冀州市', '131100');
INSERT INTO `area` VALUES ('856', '320585', '太仓市', '320500');
INSERT INTO `area` VALUES ('924', '330104', '江干区', '330100');
INSERT INTO `area` VALUES ('92', '130425', '大名县', '130400');
INSERT INTO `area` VALUES ('50', '130128', '深泽县', '130100');
INSERT INTO `area` VALUES ('481', '210281', '瓦房店市', '210200');
INSERT INTO `area` VALUES ('547', '211103', '兴隆台区', '211100');
INSERT INTO `area` VALUES ('413', '150781', '满洲里市', '150700');
INSERT INTO `area` VALUES ('819', '320204', '北塘区', '320200');
INSERT INTO `area` VALUES ('411', '150726', '新巴尔虎左旗', '150700');
INSERT INTO `area` VALUES ('291', '140821', '临猗县', '140800');
INSERT INTO `area` VALUES ('112', '130526', '任　县', '130500');
INSERT INTO `area` VALUES ('30', '120112', '津南区', '120100');
INSERT INTO `area` VALUES ('305', '140921', '定襄县', '140900');
INSERT INTO `area` VALUES ('678', '230301', '市辖区', '230300');
INSERT INTO `area` VALUES ('655', '230128', '通河县', '230100');
INSERT INTO `area` VALUES ('942', '330225', '象山县', '330200');
INSERT INTO `area` VALUES ('65', '130205', '开平区', '130200');
INSERT INTO `area` VALUES ('194', '130982', '任丘市', '130900');
INSERT INTO `area` VALUES ('874', '320801', '市辖区', '320800');
INSERT INTO `area` VALUES ('971', '330522', '长兴县', '330500');
INSERT INTO `area` VALUES ('235', '140212', '新荣区', '140200');
INSERT INTO `area` VALUES ('364', '150205', '石拐区', '150200');
INSERT INTO `area` VALUES ('763', '231102', '爱辉区', '231100');
INSERT INTO `area` VALUES ('75', '130283', '迁安市', '130200');
INSERT INTO `area` VALUES ('146', '130681', '涿州市', '130600');
INSERT INTO `area` VALUES ('584', '220201', '市辖区', '220200');
INSERT INTO `area` VALUES ('49', '130127', '高邑县', '130100');
INSERT INTO `area` VALUES ('414', '150782', '牙克石市', '150700');
INSERT INTO `area` VALUES ('188', '130926', '肃宁县', '130900');
INSERT INTO `area` VALUES ('290', '140802', '盐湖区', '140800');
INSERT INTO `area` VALUES ('631', '220881', '洮南市', '220800');
INSERT INTO `area` VALUES ('608', '220503', '二道江区', '220500');
INSERT INTO `area` VALUES ('975', '330621', '绍兴县', '330600');
INSERT INTO `area` VALUES ('296', '140826', '绛　县', '140800');
INSERT INTO `area` VALUES ('883', '320901', '市辖区', '320900');
INSERT INTO `area` VALUES ('827', '320303', '云龙区', '320300');
INSERT INTO `area` VALUES ('593', '220284', '磐石市', '220200');
INSERT INTO `area` VALUES ('829', '320305', '贾汪区', '320300');
INSERT INTO `area` VALUES ('216', '131127', '景　县', '131100');
INSERT INTO `area` VALUES ('288', '140781', '介休市', '140700');
INSERT INTO `area` VALUES ('357', '150123', '和林格尔县', '150100');
INSERT INTO `area` VALUES ('213', '131124', '饶阳县', '131100');
INSERT INTO `area` VALUES ('158', '130724', '沽源县', '130700');
INSERT INTO `area` VALUES ('352', '150103', '回民区', '150100');
INSERT INTO `area` VALUES ('47', '130125', '行唐县', '130100');
INSERT INTO `area` VALUES ('417', '150785', '根河市', '150700');
INSERT INTO `area` VALUES ('512', '210681', '东港市', '210600');
INSERT INTO `area` VALUES ('278', '140702', '榆次区', '140700');
INSERT INTO `area` VALUES ('915', '321301', '市辖区', '321300');
INSERT INTO `area` VALUES ('573', '220101', '市辖区', '220100');
INSERT INTO `area` VALUES ('144', '130637', '博野县', '130600');
INSERT INTO `area` VALUES ('31', '120113', '北辰区', '120100');
INSERT INTO `area` VALUES ('237', '140222', '天镇县', '140200');
INSERT INTO `area` VALUES ('339', '141122', '交城县', '141100');
INSERT INTO `area` VALUES ('653', '230126', '巴彦县', '230100');
INSERT INTO `area` VALUES ('718', '230703', '南岔区', '230700');
INSERT INTO `area` VALUES ('186', '130924', '海兴县', '130900');
INSERT INTO `area` VALUES ('372', '150303', '海南区', '150300');
INSERT INTO `area` VALUES ('236', '140221', '阳高县', '140200');
INSERT INTO `area` VALUES ('923', '330103', '下城区', '330100');
INSERT INTO `area` VALUES ('321', '141022', '翼城县', '141000');
INSERT INTO `area` VALUES ('759', '231083', '海林市', '231000');
INSERT INTO `area` VALUES ('199', '131003', '广阳区', '131000');
INSERT INTO `area` VALUES ('375', '150402', '红山区', '150400');
INSERT INTO `area` VALUES ('709', '230604', '让胡路区', '230600');
INSERT INTO `area` VALUES ('537', '211001', '市辖区', '211000');
INSERT INTO `area` VALUES ('968', '330502', '吴兴区', '330500');
INSERT INTO `area` VALUES ('768', '231182', '五大连池市', '231100');
INSERT INTO `area` VALUES ('272', '140603', '平鲁区', '140600');
INSERT INTO `area` VALUES ('447', '152523', '苏尼特左旗', '152500');
INSERT INTO `area` VALUES ('555', '211224', '昌图县', '211200');
INSERT INTO `area` VALUES ('507', '210601', '市辖区', '210600');
INSERT INTO `area` VALUES ('254', '140424', '屯留县', '140400');
INSERT INTO `area` VALUES ('988', '330783', '东阳市', '330700');
INSERT INTO `area` VALUES ('446', '152522', '阿巴嘎旗', '152500');
INSERT INTO `area` VALUES ('933', '330183', '富阳市', '330100');
INSERT INTO `area` VALUES ('972', '330523', '安吉县', '330500');
INSERT INTO `area` VALUES ('319', '141002', '尧都区', '141000');
INSERT INTO `area` VALUES ('22', '120104', '南开区', '120100');
INSERT INTO `area` VALUES ('355', '150121', '土默特左旗', '150100');
INSERT INTO `area` VALUES ('747', '230902', '新兴区', '230900');
INSERT INTO `area` VALUES ('739', '230811', '郊　区', '230800');
INSERT INTO `area` VALUES ('582', '220182', '榆树市', '220100');
INSERT INTO `area` VALUES ('903', '321111', '润州区', '321100');
INSERT INTO `area` VALUES ('203', '131025', '大城县', '131000');
INSERT INTO `area` VALUES ('390', '150522', '科尔沁左翼后旗', '150500');
INSERT INTO `area` VALUES ('464', '210106', '铁西区', '210100');
INSERT INTO `area` VALUES ('287', '140729', '灵石县', '140700');
INSERT INTO `area` VALUES ('853', '320582', '张家港市', '320500');
INSERT INTO `area` VALUES ('794', '310114', '嘉定区', '310100');
INSERT INTO `area` VALUES ('601', '220401', '市辖区', '220400');
INSERT INTO `area` VALUES ('596', '220303', '铁东区', '220300');
INSERT INTO `area` VALUES ('807', '320106', '鼓楼区', '320100');
INSERT INTO `area` VALUES ('185', '130923', '东光县', '130900');
INSERT INTO `area` VALUES ('843', '320481', '溧阳市', '320400');
INSERT INTO `area` VALUES ('657', '230181', '阿城市', '230100');
INSERT INTO `area` VALUES ('283', '140725', '寿阳县', '140700');
INSERT INTO `area` VALUES ('907', '321183', '句容市', '321100');
INSERT INTO `area` VALUES ('523', '210802', '站前区', '210800');
INSERT INTO `area` VALUES ('997', '330901', '市辖区', '330900');
INSERT INTO `area` VALUES ('837', '320401', '市辖区', '320400');
INSERT INTO `area` VALUES ('196', '130984', '河间市', '130900');
INSERT INTO `area` VALUES ('269', '140581', '高平市', '140500');
INSERT INTO `area` VALUES ('985', '330727', '磐安县', '330700');
INSERT INTO `area` VALUES ('156', '130722', '张北县', '130700');
INSERT INTO `area` VALUES ('927', '330108', '滨江区', '330100');
INSERT INTO `area` VALUES ('692', '230405', '兴安区', '230400');
INSERT INTO `area` VALUES ('931', '330127', '淳安县', '330100');
INSERT INTO `area` VALUES ('51', '130129', '赞皇县', '130100');
INSERT INTO `area` VALUES ('716', '230701', '市辖区', '230700');
INSERT INTO `area` VALUES ('599', '220381', '公主岭市', '220300');
INSERT INTO `area` VALUES ('955', '330328', '文成县', '330300');
INSERT INTO `area` VALUES ('454', '152530', '正蓝旗', '152500');
INSERT INTO `area` VALUES ('200', '131022', '固安县', '131000');
INSERT INTO `area` VALUES ('456', '152921', '阿拉善左旗', '152900');
INSERT INTO `area` VALUES ('348', '141181', '孝义市', '141100');
INSERT INTO `area` VALUES ('689', '230402', '向阳区', '230400');
INSERT INTO `area` VALUES ('132', '130625', '徐水县', '130600');
INSERT INTO `area` VALUES ('670', '230223', '依安县', '230200');
INSERT INTO `area` VALUES ('729', '230714', '乌伊岭区', '230700');
INSERT INTO `area` VALUES ('560', '211303', '龙城区', '211300');
INSERT INTO `area` VALUES ('664', '230204', '铁锋区', '230200');
INSERT INTO `area` VALUES ('98', '130431', '鸡泽县', '130400');
INSERT INTO `area` VALUES ('404', '150701', '市辖区', '150700');
INSERT INTO `area` VALUES ('265', '140521', '沁水县', '140500');
INSERT INTO `area` VALUES ('3', '110103', '崇文区', '110100');
INSERT INTO `area` VALUES ('252', '140421', '长治县', '140400');
INSERT INTO `area` VALUES ('932', '330182', '建德市', '330100');
INSERT INTO `area` VALUES ('145', '130638', '雄　县', '130600');
INSERT INTO `area` VALUES ('7', '110107', '石景山区', '110100');
INSERT INTO `area` VALUES ('732', '230722', '嘉荫县', '230700');
INSERT INTO `area` VALUES ('510', '210604', '振安区', '210600');
INSERT INTO `area` VALUES ('565', '211382', '凌源市', '211300');
INSERT INTO `area` VALUES ('780', '232721', '呼玛县', '232700');
INSERT INTO `area` VALUES ('350', '150101', '市辖区', '150100');
INSERT INTO `area` VALUES ('946', '330283', '奉化市', '330200');
INSERT INTO `area` VALUES ('676', '230231', '拜泉县', '230200');
INSERT INTO `area` VALUES ('40', '130104', '桥西区', '130100');
INSERT INTO `area` VALUES ('179', '130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `area` VALUES ('847', '320503', '平江区', '320500');
INSERT INTO `area` VALUES ('636', '222404', '珲春市', '222400');
INSERT INTO `area` VALUES ('223', '140107', '杏花岭区', '140100');
INSERT INTO `area` VALUES ('151', '130702', '桥东区', '130700');
INSERT INTO `area` VALUES ('667', '230207', '碾子山区', '230200');
INSERT INTO `area` VALUES ('59', '130184', '新乐市', '130100');
INSERT INTO `area` VALUES ('964', '330481', '海宁市', '330400');
INSERT INTO `area` VALUES ('790', '310109', '虹口区', '310100');
INSERT INTO `area` VALUES ('148', '130683', '安国市', '130600');
INSERT INTO `area` VALUES ('167', '130733', '崇礼县', '130700');
INSERT INTO `area` VALUES ('356', '150122', '托克托县', '150100');
INSERT INTO `area` VALUES ('428', '150921', '卓资县', '150900');
INSERT INTO `area` VALUES ('839', '320404', '钟楼区', '320400');
INSERT INTO `area` VALUES ('704', '230523', '宝清县', '230500');
INSERT INTO `area` VALUES ('617', '220622', '靖宇县', '220600');
INSERT INTO `area` VALUES ('800', '310120', '奉贤区', '310100');
INSERT INTO `area` VALUES ('394', '150526', '扎鲁特旗', '150500');
INSERT INTO `area` VALUES ('48', '130126', '灵寿县', '130100');
INSERT INTO `area` VALUES ('494', '210403', '东洲区', '210400');
INSERT INTO `area` VALUES ('66', '130207', '丰南区', '130200');
INSERT INTO `area` VALUES ('973', '330601', '市辖区', '330600');
INSERT INTO `area` VALUES ('424', '150825', '乌拉特后旗', '150800');
INSERT INTO `area` VALUES ('535', '210921', '阜新蒙古族自治县', '210900');
INSERT INTO `area` VALUES ('986', '330781', '兰溪市', '330700');
INSERT INTO `area` VALUES ('496', '210411', '顺城区', '210400');
INSERT INTO `area` VALUES ('792', '310112', '闵行区', '310100');
INSERT INTO `area` VALUES ('796', '310116', '金山区', '310100');
INSERT INTO `area` VALUES ('245', '140303', '矿　区', '140300');
INSERT INTO `area` VALUES ('825', '320301', '市辖区', '320300');
INSERT INTO `area` VALUES ('374', '150401', '市辖区', '150400');
INSERT INTO `area` VALUES ('189', '130927', '南皮县', '130900');
INSERT INTO `area` VALUES ('751', '231001', '市辖区', '231000');
INSERT INTO `area` VALUES ('563', '211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `area` VALUES ('513', '210682', '凤城市', '210600');
INSERT INTO `area` VALUES ('983', '330723', '武义县', '330700');
INSERT INTO `area` VALUES ('476', '210204', '沙河口区', '210200');
INSERT INTO `area` VALUES ('823', '320281', '江阴市', '320200');
INSERT INTO `area` VALUES ('978', '330682', '上虞市', '330600');
INSERT INTO `area` VALUES ('869', '320706', '海州区', '320700');
INSERT INTO `area` VALUES ('928', '330109', '萧山区', '330100');
INSERT INTO `area` VALUES ('660', '230184', '五常市', '230100');
INSERT INTO `area` VALUES ('432', '150925', '凉城县', '150900');
INSERT INTO `area` VALUES ('894', '321002', '广陵区', '321000');
INSERT INTO `area` VALUES ('160', '130726', '蔚　县', '130700');
INSERT INTO `area` VALUES ('1000', '330921', '岱山县', '330900');
INSERT INTO `area` VALUES ('637', '222405', '龙井市', '222400');
INSERT INTO `area` VALUES ('940', '330211', '镇海区', '330200');
INSERT INTO `area` VALUES ('173', '130822', '兴隆县', '130800');
INSERT INTO `area` VALUES ('720', '230705', '西林区', '230700');
INSERT INTO `area` VALUES ('994', '330824', '开化县', '330800');
INSERT INTO `area` VALUES ('960', '330402', '秀城区', '330400');
INSERT INTO `area` VALUES ('625', '220723', '乾安县', '220700');
INSERT INTO `area` VALUES ('470', '210123', '康平县', '210100');
INSERT INTO `area` VALUES ('628', '220802', '洮北区', '220800');
INSERT INTO `area` VALUES ('613', '220582', '集安市', '220500');
INSERT INTO `area` VALUES ('33', '120115', '宝坻区', '120100');
INSERT INTO `area` VALUES ('41', '130105', '新华区', '130100');
INSERT INTO `area` VALUES ('583', '220183', '德惠市', '220100');
INSERT INTO `area` VALUES ('473', '210201', '市辖区', '210200');
INSERT INTO `area` VALUES ('918', '321322', '沭阳县', '321300');
INSERT INTO `area` VALUES ('495', '210404', '望花区', '210400');
INSERT INTO `area` VALUES ('29', '120111', '西青区', '120100');
INSERT INTO `area` VALUES ('559', '211302', '双塔区', '211300');
INSERT INTO `area` VALUES ('56', '130181', '辛集市', '130100');
INSERT INTO `area` VALUES ('543', '211021', '辽阳县', '211000');
INSERT INTO `area` VALUES ('415', '150783', '扎兰屯市', '150700');
INSERT INTO `area` VALUES ('598', '220323', '伊通满族自治县', '220300');
INSERT INTO `area` VALUES ('698', '230502', '尖山区', '230500');
INSERT INTO `area` VALUES ('487', '210304', '立山区', '210300');
INSERT INTO `area` VALUES ('691', '230404', '南山区', '230400');
INSERT INTO `area` VALUES ('43', '130108', '裕华区', '130100');
INSERT INTO `area` VALUES ('935', '330201', '市辖区', '330200');
INSERT INTO `area` VALUES ('515', '210702', '古塔区', '210700');
INSERT INTO `area` VALUES ('91', '130424', '成安县', '130400');
INSERT INTO `area` VALUES ('52', '130130', '无极县', '130100');
INSERT INTO `area` VALUES ('215', '131126', '故城县', '131100');
INSERT INTO `area` VALUES ('810', '320113', '栖霞区', '320100');
INSERT INTO `area` VALUES ('423', '150824', '乌拉特中旗', '150800');
INSERT INTO `area` VALUES ('77', '130302', '海港区', '130300');
INSERT INTO `area` VALUES ('168', '130801', '市辖区', '130800');
INSERT INTO `area` VALUES ('533', '210905', '清河门区', '210900');
INSERT INTO `area` VALUES ('174', '130823', '平泉县', '130800');
INSERT INTO `area` VALUES ('421', '150822', '磴口县', '150800');
INSERT INTO `area` VALUES ('479', '210213', '金州区', '210200');
INSERT INTO `area` VALUES ('226', '140110', '晋源区', '140100');
INSERT INTO `area` VALUES ('896', '321011', '郊　区', '321000');
INSERT INTO `area` VALUES ('748', '230903', '桃山区', '230900');
INSERT INTO `area` VALUES ('828', '320304', '九里区', '320300');
INSERT INTO `area` VALUES ('401', '150625', '杭锦旗', '150600');
INSERT INTO `area` VALUES ('134', '130627', '唐　县', '130600');
INSERT INTO `area` VALUES ('107', '130521', '邢台县', '130500');
INSERT INTO `area` VALUES ('947', '330301', '市辖区', '330300');
INSERT INTO `area` VALUES ('791', '310110', '杨浦区', '310100');
INSERT INTO `area` VALUES ('901', '321101', '市辖区', '321100');
INSERT INTO `area` VALUES ('32', '120114', '武清区', '120100');
INSERT INTO `area` VALUES ('504', '210505', '南芬区', '210500');
INSERT INTO `area` VALUES ('673', '230227', '富裕县', '230200');
INSERT INTO `area` VALUES ('19', '120101', '和平区', '120100');
INSERT INTO `area` VALUES ('79', '130304', '北戴河区', '130300');
INSERT INTO `area` VALUES ('281', '140723', '和顺县', '140700');
INSERT INTO `area` VALUES ('753', '231003', '阳明区', '231000');
INSERT INTO `area` VALUES ('472', '210181', '新民市', '210100');
INSERT INTO `area` VALUES ('871', '320722', '东海县', '320700');
INSERT INTO `area` VALUES ('860', '320621', '海安县', '320600');
INSERT INTO `area` VALUES ('124', '130601', '市辖区', '130600');
INSERT INTO `area` VALUES ('190', '130928', '吴桥县', '130900');
INSERT INTO `area` VALUES ('253', '140423', '襄垣县', '140400');
INSERT INTO `area` VALUES ('250', '140402', '城　区', '140400');
INSERT INTO `area` VALUES ('937', '330204', '江东区', '330200');
INSERT INTO `area` VALUES ('683', '230306', '城子河区', '230300');
INSERT INTO `area` VALUES ('551', '211202', '银州区', '211200');
INSERT INTO `area` VALUES ('67', '130208', '丰润区', '130200');
INSERT INTO `area` VALUES ('313', '140929', '岢岚县', '140900');
INSERT INTO `area` VALUES ('208', '131101', '市辖区', '131100');
INSERT INTO `area` VALUES ('260', '140430', '沁　县', '140400');
INSERT INTO `area` VALUES ('382', '150425', '克什克腾旗', '150400');
INSERT INTO `area` VALUES ('117', '130531', '广宗县', '130500');
INSERT INTO `area` VALUES ('497', '210421', '抚顺县', '210400');
INSERT INTO `area` VALUES ('731', '230716', '上甘岭区', '230700');
INSERT INTO `area` VALUES ('459', '210101', '市辖区', '210100');
INSERT INTO `area` VALUES ('54', '130132', '元氏县', '130100');
INSERT INTO `area` VALUES ('1981', '440704', '江海区', '440700');
INSERT INTO `area` VALUES ('1862', '430723', '澧　县', '430700');
INSERT INTO `area` VALUES ('1928', '433127', '永顺县', '433100');
INSERT INTO `area` VALUES ('1079', '340881', '桐城市', '340800');
INSERT INTO `area` VALUES ('1932', '440103', '荔湾区', '440100');
INSERT INTO `area` VALUES ('1853', '430624', '湘阴县', '430600');
INSERT INTO `area` VALUES ('1867', '430801', '市辖区', '430800');
INSERT INTO `area` VALUES ('1600', '410923', '南乐县', '410900');
INSERT INTO `area` VALUES ('1768', '421125', '浠水县', '421100');
INSERT INTO `area` VALUES ('1266', '360426', '德安县', '360400');
INSERT INTO `area` VALUES ('1979', '440701', '市辖区', '440700');
INSERT INTO `area` VALUES ('1634', '411328', '唐河县', '411300');
INSERT INTO `area` VALUES ('1873', '430902', '资阳区', '430900');
INSERT INTO `area` VALUES ('1452', '371203', '钢城区', '371200');
INSERT INTO `area` VALUES ('1963', '440403', '斗门区', '440400');
INSERT INTO `area` VALUES ('1887', '431026', '汝城县', '431000');
INSERT INTO `area` VALUES ('1769', '421126', '蕲春县', '421100');
INSERT INTO `area` VALUES ('1936', '440107', '芳村区', '440100');
INSERT INTO `area` VALUES ('1450', '371201', '市辖区', '371200');
INSERT INTO `area` VALUES ('1886', '431025', '临武县', '431000');
INSERT INTO `area` VALUES ('1803', '430124', '宁乡县', '430100');
INSERT INTO `area` VALUES ('1814', '430281', '醴陵市', '430200');
INSERT INTO `area` VALUES ('1924', '433123', '凤凰县', '433100');
INSERT INTO `area` VALUES ('1842', '430525', '洞口县', '430500');
INSERT INTO `area` VALUES ('1235', '350926', '柘荣县', '350900');
INSERT INTO `area` VALUES ('1010', '331081', '温岭市', '331000');
INSERT INTO `area` VALUES ('1948', '440224', '仁化县', '440200');
INSERT INTO `area` VALUES ('1329', '361025', '乐安县', '361000');
INSERT INTO `area` VALUES ('1881', '431003', '苏仙区', '431000');
INSERT INTO `area` VALUES ('1282', '360722', '信丰县', '360700');
INSERT INTO `area` VALUES ('1134', '341722', '石台县', '341700');
INSERT INTO `area` VALUES ('1202', '350624', '诏安县', '350600');
INSERT INTO `area` VALUES ('1160', '350205', '海沧区', '350200');
INSERT INTO `area` VALUES ('1509', '410105', '金水区', '410100');
INSERT INTO `area` VALUES ('1362', '370205', '四方区', '370200');
INSERT INTO `area` VALUES ('1905', '431221', '中方县', '431200');
INSERT INTO `area` VALUES ('1670', '411701', '市辖区', '411700');
INSERT INTO `area` VALUES ('1208', '350681', '龙海市', '350600');
INSERT INTO `area` VALUES ('1610', '411082', '长葛市', '411000');
INSERT INTO `area` VALUES ('1311', '360881', '井冈山市', '360800');
INSERT INTO `area` VALUES ('1326', '361022', '黎川县', '361000');
INSERT INTO `area` VALUES ('1214', '350724', '松溪县', '350700');
INSERT INTO `area` VALUES ('1400', '370681', '龙口市', '370600');
INSERT INTO `area` VALUES ('1343', '361127', '余干县', '361100');
INSERT INTO `area` VALUES ('1218', '350783', '建瓯市', '350700');
INSERT INTO `area` VALUES ('1383', '370403', '薛城区', '370400');
INSERT INTO `area` VALUES ('1832', '430481', '耒阳市', '430400');
INSERT INTO `area` VALUES ('1589', '410811', '山阳区', '410800');
INSERT INTO `area` VALUES ('1424', '370827', '鱼台县', '370800');
INSERT INTO `area` VALUES ('1482', '371523', '茌平县', '371500');
INSERT INTO `area` VALUES ('1918', '431321', '双峰县', '431300');
INSERT INTO `area` VALUES ('1677', '411726', '泌阳县', '411700');
INSERT INTO `area` VALUES ('1290', '360730', '宁都县', '360700');
INSERT INTO `area` VALUES ('1072', '340822', '怀宁县', '340800');
INSERT INTO `area` VALUES ('1809', '430211', '天元区', '430200');
INSERT INTO `area` VALUES ('1895', '431122', '东安县', '431100');
INSERT INTO `area` VALUES ('1423', '370826', '微山县', '370800');
INSERT INTO `area` VALUES ('1630', '411324', '镇平县', '411300');
INSERT INTO `area` VALUES ('1376', '370305', '临淄区', '370300');
INSERT INTO `area` VALUES ('1874', '430903', '赫山区', '430900');
INSERT INTO `area` VALUES ('1390', '370503', '河口区', '370500');
INSERT INTO `area` VALUES ('1658', '411528', '息　县', '411500');
INSERT INTO `area` VALUES ('1956', '440304', '福田区', '440300');
INSERT INTO `area` VALUES ('1609', '411081', '禹州市', '411000');
INSERT INTO `area` VALUES ('1151', '350122', '连江县', '350100');
INSERT INTO `area` VALUES ('1597', '410901', '市辖区', '410900');
INSERT INTO `area` VALUES ('1601', '410926', '范　县', '410900');
INSERT INTO `area` VALUES ('1884', '431023', '永兴县', '431000');
INSERT INTO `area` VALUES ('1166', '350302', '城厢区', '350300');
INSERT INTO `area` VALUES ('1320', '360981', '丰城市', '360900');
INSERT INTO `area` VALUES ('1996', '440883', '吴川市', '440800');
INSERT INTO `area` VALUES ('1061', '340604', '烈山区', '340600');
INSERT INTO `area` VALUES ('1951', '440233', '新丰县', '440200');
INSERT INTO `area` VALUES ('1194', '350581', '石狮市', '350500');
INSERT INTO `area` VALUES ('1421', '370802', '市中区', '370800');
INSERT INTO `area` VALUES ('1524', '410221', '杞　县', '410200');
INSERT INTO `area` VALUES ('1133', '341721', '东至县', '341700');
INSERT INTO `area` VALUES ('1962', '440402', '香洲区', '440400');
INSERT INTO `area` VALUES ('1092', '341124', '全椒县', '341100');
INSERT INTO `area` VALUES ('1933', '440104', '越秀区', '440100');
INSERT INTO `area` VALUES ('1175', '350423', '清流县', '350400');
INSERT INTO `area` VALUES ('1935', '440106', '天河区', '440100');
INSERT INTO `area` VALUES ('1656', '411526', '潢川县', '411500');
INSERT INTO `area` VALUES ('1911', '431227', '新晃侗族自治县', '431200');
INSERT INTO `area` VALUES ('1393', '370523', '广饶县', '370500');
INSERT INTO `area` VALUES ('1178', '350426', '尤溪县', '350400');
INSERT INTO `area` VALUES ('1723', '420582', '当阳市', '420500');
INSERT INTO `area` VALUES ('1713', '420503', '伍家岗区', '420500');
INSERT INTO `area` VALUES ('1260', '360402', '庐山区', '360400');
INSERT INTO `area` VALUES ('1799', '430105', '开福区', '430100');
INSERT INTO `area` VALUES ('1770', '421127', '黄梅县', '421100');
INSERT INTO `area` VALUES ('1793', '429006', '天门市', '429000');
INSERT INTO `area` VALUES ('1553', '410425', '郏　县', '410400');
INSERT INTO `area` VALUES ('1899', '431126', '宁远县', '431100');
INSERT INTO `area` VALUES ('1234', '350925', '周宁县', '350900');
INSERT INTO `area` VALUES ('1065', '340703', '狮子山区', '340700');
INSERT INTO `area` VALUES ('1663', '411623', '商水县', '411600');
INSERT INTO `area` VALUES ('1328', '361024', '崇仁县', '361000');
INSERT INTO `area` VALUES ('1579', '410725', '原阳县', '410700');
INSERT INTO `area` VALUES ('1135', '341723', '青阳县', '341700');
INSERT INTO `area` VALUES ('1351', '370104', '槐荫区', '370100');
INSERT INTO `area` VALUES ('1550', '410421', '宝丰县', '410400');
INSERT INTO `area` VALUES ('1471', '371424', '临邑县', '371400');
INSERT INTO `area` VALUES ('1099', '341203', '颍东区', '341200');
INSERT INTO `area` VALUES ('1210', '350702', '延平区', '350700');
INSERT INTO `area` VALUES ('1791', '429004', '仙桃市', '429000');
INSERT INTO `area` VALUES ('1463', '371327', '莒南县', '371300');
INSERT INTO `area` VALUES ('1917', '431302', '娄星区', '431300');
INSERT INTO `area` VALUES ('1777', '421223', '崇阳县', '421200');
INSERT INTO `area` VALUES ('1141', '341824', '绩溪县', '341800');
INSERT INTO `area` VALUES ('1700', '420222', '阳新县', '420200');
INSERT INTO `area` VALUES ('1685', '420105', '汉阳区', '420100');
INSERT INTO `area` VALUES ('1652', '411522', '光山县', '411500');
INSERT INTO `area` VALUES ('1970', '440514', '潮南区', '440500');
INSERT INTO `area` VALUES ('1893', '431103', '冷水滩区', '431100');
INSERT INTO `area` VALUES ('1363', '370211', '黄岛区', '370200');
INSERT INTO `area` VALUES ('1013', '331102', '莲都区', '331100');
INSERT INTO `area` VALUES ('1094', '341126', '凤阳县', '341100');
INSERT INTO `area` VALUES ('1859', '430703', '鼎城区', '430700');
INSERT INTO `area` VALUES ('1016', '331123', '遂昌县', '331100');
INSERT INTO `area` VALUES ('1036', '340222', '繁昌县', '340200');
INSERT INTO `area` VALUES ('1012', '331101', '市辖区', '331100');
INSERT INTO `area` VALUES ('1324', '361002', '临川区', '361000');
INSERT INTO `area` VALUES ('1880', '431002', '北湖区', '431000');
INSERT INTO `area` VALUES ('1644', '411424', '柘城县', '411400');
INSERT INTO `area` VALUES ('1872', '430901', '市辖区', '430900');
INSERT INTO `area` VALUES ('1470', '371423', '庆云县', '371400');
INSERT INTO `area` VALUES ('1982', '440705', '新会区', '440700');
INSERT INTO `area` VALUES ('1395', '370602', '芝罘区', '370600');
INSERT INTO `area` VALUES ('1578', '410724', '获嘉县', '410700');
INSERT INTO `area` VALUES ('1484', '371525', '冠　县', '371500');
INSERT INTO `area` VALUES ('1906', '431222', '沅陵县', '431200');
INSERT INTO `area` VALUES ('1989', '440803', '霞山区', '440800');
INSERT INTO `area` VALUES ('1464', '371328', '蒙阴县', '371300');
INSERT INTO `area` VALUES ('1980', '440703', '蓬江区', '440700');
INSERT INTO `area` VALUES ('1547', '410403', '卫东区', '410400');
INSERT INTO `area` VALUES ('1701', '420281', '大冶市', '420200');
INSERT INTO `area` VALUES ('1414', '370781', '青州市', '370700');
INSERT INTO `area` VALUES ('1142', '341825', '旌德县', '341800');
INSERT INTO `area` VALUES ('1353', '370112', '历城区', '370100');
INSERT INTO `area` VALUES ('1804', '430181', '浏阳市', '430100');
INSERT INTO `area` VALUES ('1897', '431124', '道　县', '431100');
INSERT INTO `area` VALUES ('1322', '360983', '高安市', '360900');
INSERT INTO `area` VALUES ('1456', '371312', '河东区', '371300');
INSERT INTO `area` VALUES ('1671', '411702', '驿城区', '411700');
INSERT INTO `area` VALUES ('1888', '431027', '桂东县', '431000');
INSERT INTO `area` VALUES ('1257', '360322', '上栗县', '360300');
INSERT INTO `area` VALUES ('1503', '371727', '定陶县', '371700');
INSERT INTO `area` VALUES ('1043', '340321', '怀远县', '340300');
INSERT INTO `area` VALUES ('1259', '360401', '市辖区', '360400');
INSERT INTO `area` VALUES ('1426', '370829', '嘉祥县', '370800');
INSERT INTO `area` VALUES ('1406', '370687', '海阳市', '370600');
INSERT INTO `area` VALUES ('1254', '360302', '安源区', '360300');
INSERT INTO `area` VALUES ('1225', '350824', '武平县', '350800');
INSERT INTO `area` VALUES ('1811', '430223', '攸　县', '430200');
INSERT INTO `area` VALUES ('1806', '430202', '荷塘区', '430200');
INSERT INTO `area` VALUES ('1821', '430401', '市辖区', '430400');
INSERT INTO `area` VALUES ('1673', '411722', '上蔡县', '411700');
INSERT INTO `area` VALUES ('1359', '370201', '市辖区', '370200');
INSERT INTO `area` VALUES ('1556', '410501', '市辖区', '410500');
INSERT INTO `area` VALUES ('1546', '410402', '新华区', '410400');
INSERT INTO `area` VALUES ('1389', '370502', '东营区', '370500');
INSERT INTO `area` VALUES ('1233', '350924', '寿宁县', '350900');
INSERT INTO `area` VALUES ('1728', '420607', '襄阳区', '420600');
INSERT INTO `area` VALUES ('1570', '410621', '浚　县', '410600');
INSERT INTO `area` VALUES ('1022', '340101', '市辖区', '340100');
INSERT INTO `area` VALUES ('1805', '430201', '市辖区', '430200');
INSERT INTO `area` VALUES ('1276', '360602', '月湖区', '360600');
INSERT INTO `area` VALUES ('1534', '410306', '吉利区', '410300');
INSERT INTO `area` VALUES ('1358', '370181', '章丘市', '370100');
INSERT INTO `area` VALUES ('1365', '370213', '李沧区', '370200');
INSERT INTO `area` VALUES ('1782', '421381', '广水市', '421300');
INSERT INTO `area` VALUES ('1004', '331003', '黄岩区', '331000');
INSERT INTO `area` VALUES ('1298', '360801', '市辖区', '360800');
INSERT INTO `area` VALUES ('1354', '370113', '长清区', '370100');
INSERT INTO `area` VALUES ('1475', '371428', '武城县', '371400');
INSERT INTO `area` VALUES ('1573', '410702', '红旗区', '410700');
INSERT INTO `area` VALUES ('1091', '341122', '来安县', '341100');
INSERT INTO `area` VALUES ('1018', '331125', '云和县', '331100');
INSERT INTO `area` VALUES ('1586', '410802', '解放区', '410800');
INSERT INTO `area` VALUES ('1688', '420111', '洪山区', '420100');
INSERT INTO `area` VALUES ('1021', '331181', '龙泉市', '331100');
INSERT INTO `area` VALUES ('1029', '340123', '肥西县', '340100');
INSERT INTO `area` VALUES ('1612', '411102', '源汇区', '411100');
INSERT INTO `area` VALUES ('1646', '411426', '夏邑县', '411400');
INSERT INTO `area` VALUES ('1385', '370405', '台儿庄区', '370400');
INSERT INTO `area` VALUES ('1074', '340824', '潜山县', '340800');
INSERT INTO `area` VALUES ('1477', '371482', '禹城市', '371400');
INSERT INTO `area` VALUES ('1590', '410821', '修武县', '410800');
INSERT INTO `area` VALUES ('1333', '361029', '东乡县', '361000');
INSERT INTO `area` VALUES ('1183', '350481', '永安市', '350400');
INSERT INTO `area` VALUES ('1548', '410404', '石龙区', '410400');
INSERT INTO `area` VALUES ('1526', '410223', '尉氏县', '410200');
INSERT INTO `area` VALUES ('1334', '361030', '广昌县', '361000');
INSERT INTO `area` VALUES ('1826', '430412', '南岳区', '430400');
INSERT INTO `area` VALUES ('1778', '421224', '通山县', '421200');
INSERT INTO `area` VALUES ('1766', '421123', '罗田县', '421100');
INSERT INTO `area` VALUES ('1299', '360802', '吉州区', '360800');
INSERT INTO `area` VALUES ('1691', '420114', '蔡甸区', '420100');
INSERT INTO `area` VALUES ('1357', '370126', '商河县', '370100');
INSERT INTO `area` VALUES ('1121', '341521', '寿　县', '341500');
INSERT INTO `area` VALUES ('1595', '410882', '沁阳市', '410800');
INSERT INTO `area` VALUES ('1420', '370801', '市辖区', '370800');
INSERT INTO `area` VALUES ('1808', '430204', '石峰区', '430200');
INSERT INTO `area` VALUES ('1028', '340122', '肥东县', '340100');
INSERT INTO `area` VALUES ('1232', '350923', '屏南县', '350900');
INSERT INTO `area` VALUES ('1410', '370704', '坊子区', '370700');
INSERT INTO `area` VALUES ('1978', '440608', '高明区', '440600');
INSERT INTO `area` VALUES ('1637', '411381', '邓州市', '411300');
INSERT INTO `area` VALUES ('1391', '370521', '垦利县', '370500');
INSERT INTO `area` VALUES ('1179', '350427', '沙　县', '350400');
INSERT INTO `area` VALUES ('1574', '410703', '卫滨区', '410700');
INSERT INTO `area` VALUES ('1055', '340503', '花山区', '340500');
INSERT INTO `area` VALUES ('1375', '370304', '博山区', '370300');
INSERT INTO `area` VALUES ('1339', '361123', '玉山县', '361100');
INSERT INTO `area` VALUES ('1139', '341822', '广德县', '341800');
INSERT INTO `area` VALUES ('1269', '360429', '湖口县', '360400');
INSERT INTO `area` VALUES ('1657', '411527', '淮滨县', '411500');
INSERT INTO `area` VALUES ('1625', '411302', '宛城区', '411300');
INSERT INTO `area` VALUES ('1795', '430101', '市辖区', '430100');
INSERT INTO `area` VALUES ('1449', '371122', '莒　县', '371100');
INSERT INTO `area` VALUES ('1839', '430522', '新邵县', '430500');
INSERT INTO `area` VALUES ('1335', '361101', '市辖区', '361100');
INSERT INTO `area` VALUES ('1531', '410303', '西工区', '410300');
INSERT INTO `area` VALUES ('1289', '360729', '全南县', '360700');
INSERT INTO `area` VALUES ('1465', '371329', '临沭县', '371300');
INSERT INTO `area` VALUES ('1562', '410523', '汤阴县', '410500');
INSERT INTO `area` VALUES ('1731', '420626', '保康县', '420600');
INSERT INTO `area` VALUES ('2000', '440923', '电白县', '440900');
INSERT INTO `area` VALUES ('1446', '371102', '东港区', '371100');
INSERT INTO `area` VALUES ('1760', '421083', '洪湖市', '421000');
INSERT INTO `area` VALUES ('1243', '360111', '青山湖区', '360100');
INSERT INTO `area` VALUES ('1101', '341221', '临泉县', '341200');
INSERT INTO `area` VALUES ('1430', '370881', '曲阜市', '370800');
INSERT INTO `area` VALUES ('1140', '341823', '泾　县', '341800');
INSERT INTO `area` VALUES ('1126', '341601', '市辖区', '341600');
INSERT INTO `area` VALUES ('1747', '420921', '孝昌县', '420900');
INSERT INTO `area` VALUES ('1843', '430527', '绥宁县', '430500');
INSERT INTO `area` VALUES ('1355', '370124', '平阴县', '370100');
INSERT INTO `area` VALUES ('1870', '430821', '慈利县', '430800');
INSERT INTO `area` VALUES ('1448', '371121', '五莲县', '371100');
INSERT INTO `area` VALUES ('1598', '410902', '华龙区', '410900');
INSERT INTO `area` VALUES ('1185', '350502', '鲤城区', '350500');
INSERT INTO `area` VALUES ('1771', '421181', '麻城市', '421100');
INSERT INTO `area` VALUES ('1418', '370785', '高密市', '370700');
INSERT INTO `area` VALUES ('1045', '340323', '固镇县', '340300');
INSERT INTO `area` VALUES ('1405', '370686', '栖霞市', '370600');
INSERT INTO `area` VALUES ('1409', '370703', '寒亭区', '370700');
INSERT INTO `area` VALUES ('1960', '440308', '盐田区', '440300');
INSERT INTO `area` VALUES ('1097', '341201', '市辖区', '341200');
INSERT INTO `area` VALUES ('1502', '371726', '鄄城县', '371700');
INSERT INTO `area` VALUES ('1429', '370832', '梁山县', '370800');
INSERT INTO `area` VALUES ('1594', '410881', '济源市', '410800');
INSERT INTO `area` VALUES ('1417', '370784', '安丘市', '370700');
INSERT INTO `area` VALUES ('1167', '350303', '涵江区', '350300');
INSERT INTO `area` VALUES ('1555', '410482', '汝州市', '410400');
INSERT INTO `area` VALUES ('1040', '340303', '蚌山区', '340300');
INSERT INTO `area` VALUES ('1875', '430921', '南　县', '430900');
INSERT INTO `area` VALUES ('1186', '350503', '丰泽区', '350500');
INSERT INTO `area` VALUES ('1081', '341002', '屯溪区', '341000');
INSERT INTO `area` VALUES ('1695', '420201', '市辖区', '420200');
INSERT INTO `area` VALUES ('1067', '340721', '铜陵县', '340700');
INSERT INTO `area` VALUES ('1162', '350211', '集美区', '350200');
INSERT INTO `area` VALUES ('1706', '420322', '郧西县', '420300');
INSERT INTO `area` VALUES ('1467', '371402', '德城区', '371400');
INSERT INTO `area` VALUES ('1443', '371082', '荣成市', '371000');
INSERT INTO `area` VALUES ('1615', '411121', '舞阳县', '411100');
INSERT INTO `area` VALUES ('1296', '360781', '瑞金市', '360700');
INSERT INTO `area` VALUES ('1930', '440101', '市辖区', '440100');
INSERT INTO `area` VALUES ('1169', '350305', '秀屿区', '350300');
INSERT INTO `area` VALUES ('1473', '371426', '平原县', '371400');
INSERT INTO `area` VALUES ('1247', '360124', '进贤县', '360100');
INSERT INTO `area` VALUES ('1511', '410108', '邙山区', '410100');
INSERT INTO `area` VALUES ('1919', '431322', '新化县', '431300');
INSERT INTO `area` VALUES ('1458', '371322', '郯城县', '371300');
INSERT INTO `area` VALUES ('1898', '431125', '江永县', '431100');
INSERT INTO `area` VALUES ('1095', '341181', '天长市', '341100');
INSERT INTO `area` VALUES ('1626', '411303', '卧龙区', '411300');
INSERT INTO `area` VALUES ('1060', '340603', '相山区', '340600');
INSERT INTO `area` VALUES ('1642', '411422', '睢　县', '411400');
INSERT INTO `area` VALUES ('1337', '361121', '上饶县', '361100');
INSERT INTO `area` VALUES ('1838', '430521', '邵东县', '430500');
INSERT INTO `area` VALUES ('1558', '410503', '北关区', '410500');
INSERT INTO `area` VALUES ('1861', '430722', '汉寿县', '430700');
INSERT INTO `area` VALUES ('1034', '340207', '鸠江区', '340200');
INSERT INTO `area` VALUES ('1130', '341623', '利辛县', '341600');
INSERT INTO `area` VALUES ('1349', '370102', '历下区', '370100');
INSERT INTO `area` VALUES ('1532', '410304', '廛河回族区', '410300');
INSERT INTO `area` VALUES ('1617', '411201', '市辖区', '411200');
INSERT INTO `area` VALUES ('1749', '420923', '云梦县', '420900');
INSERT INTO `area` VALUES ('1131', '341701', '市辖区', '341700');
INSERT INTO `area` VALUES ('1275', '360601', '市辖区', '360600');
INSERT INTO `area` VALUES ('1885', '431024', '嘉禾县', '431000');
INSERT INTO `area` VALUES ('1396', '370611', '福山区', '370600');
INSERT INTO `area` VALUES ('1797', '430103', '天心区', '430100');
INSERT INTO `area` VALUES ('1696', '420202', '黄石港区', '420200');
INSERT INTO `area` VALUES ('1521', '410204', '鼓楼区', '410200');
INSERT INTO `area` VALUES ('1583', '410781', '卫辉市', '410700');
INSERT INTO `area` VALUES ('1998', '440902', '茂南区', '440900');
INSERT INTO `area` VALUES ('1650', '411503', '平桥区', '411500');
INSERT INTO `area` VALUES ('1542', '410328', '洛宁县', '410300');
INSERT INTO `area` VALUES ('1062', '340621', '濉溪县', '340600');
INSERT INTO `area` VALUES ('1827', '430421', '衡阳县', '430400');
INSERT INTO `area` VALUES ('1559', '410505', '殷都区', '410500');
INSERT INTO `area` VALUES ('1360', '370202', '市南区', '370200');
INSERT INTO `area` VALUES ('1693', '420116', '黄陂区', '420100');
INSERT INTO `area` VALUES ('1737', '420703', '华容区', '420700');
INSERT INTO `area` VALUES ('1387', '370481', '滕州市', '370400');
INSERT INTO `area` VALUES ('1056', '340504', '雨山区', '340500');
INSERT INTO `area` VALUES ('1775', '421221', '嘉鱼县', '421200');
INSERT INTO `area` VALUES ('1661', '411621', '扶沟县', '411600');
INSERT INTO `area` VALUES ('1640', '411403', '睢阳区', '411400');
INSERT INTO `area` VALUES ('1114', '341421', '庐江县', '341400');
INSERT INTO `area` VALUES ('1877', '430923', '安化县', '430900');
INSERT INTO `area` VALUES ('1251', '360222', '浮梁县', '360200');
INSERT INTO `area` VALUES ('1138', '341821', '郎溪县', '341800');
INSERT INTO `area` VALUES ('1772', '421182', '武穴市', '421100');
INSERT INTO `area` VALUES ('1015', '331122', '缙云县', '331100');
INSERT INTO `area` VALUES ('1231', '350922', '古田县', '350900');
INSERT INTO `area` VALUES ('1921', '431382', '涟源市', '431300');
INSERT INTO `area` VALUES ('1679', '411728', '遂平县', '411700');
INSERT INTO `area` VALUES ('1125', '341525', '霍山县', '341500');
INSERT INTO `area` VALUES ('1868', '430802', '永定区', '430800');
INSERT INTO `area` VALUES ('1428', '370831', '泗水县', '370800');
INSERT INTO `area` VALUES ('1635', '411329', '新野县', '411300');
INSERT INTO `area` VALUES ('1792', '429005', '潜江市', '429000');
INSERT INTO `area` VALUES ('1999', '440903', '茂港区', '440900');
INSERT INTO `area` VALUES ('1093', '341125', '定远县', '341100');
INSERT INTO `area` VALUES ('1239', '360102', '东湖区', '360100');
INSERT INTO `area` VALUES ('1205', '350627', '南靖县', '350600');
INSERT INTO `area` VALUES ('1643', '411423', '宁陵县', '411400');
INSERT INTO `area` VALUES ('1032', '340203', '马塘区', '340200');
INSERT INTO `area` VALUES ('1035', '340221', '芜湖县', '340200');
INSERT INTO `area` VALUES ('1800', '430111', '雨花区', '430100');
INSERT INTO `area` VALUES ('1819', '430381', '湘乡市', '430300');
INSERT INTO `area` VALUES ('1925', '433124', '花垣县', '433100');
INSERT INTO `area` VALUES ('1587', '410803', '中站区', '410800');
INSERT INTO `area` VALUES ('1090', '341103', '南谯区', '341100');
INSERT INTO `area` VALUES ('1722', '420581', '宜都市', '420500');
INSERT INTO `area` VALUES ('1488', '371602', '滨城区', '371600');
INSERT INTO `area` VALUES ('1250', '360203', '珠山区', '360200');
INSERT INTO `area` VALUES ('1341', '361125', '横峰县', '361100');
INSERT INTO `area` VALUES ('1931', '440102', '东山区', '440100');
INSERT INTO `area` VALUES ('1765', '421122', '红安县', '421100');
INSERT INTO `area` VALUES ('1969', '440513', '潮阳区', '440500');
INSERT INTO `area` VALUES ('1927', '433126', '古丈县', '433100');
INSERT INTO `area` VALUES ('1846', '430581', '武冈市', '430500');
INSERT INTO `area` VALUES ('1985', '440784', '鹤山市', '440700');
INSERT INTO `area` VALUES ('1413', '370725', '昌乐县', '370700');
INSERT INTO `area` VALUES ('1866', '430781', '津市市', '430700');
INSERT INTO `area` VALUES ('1940', '440114', '花都区', '440100');
INSERT INTO `area` VALUES ('1001', '330922', '嵊泗县', '330900');
INSERT INTO `area` VALUES ('1581', '410727', '封丘县', '410700');
INSERT INTO `area` VALUES ('1900', '431127', '蓝山县', '431100');
INSERT INTO `area` VALUES ('1882', '431021', '桂阳县', '431000');
INSERT INTO `area` VALUES ('1245', '360122', '新建县', '360100');
INSERT INTO `area` VALUES ('1132', '341702', '贵池区', '341700');
INSERT INTO `area` VALUES ('1783', '422801', '恩施市', '422800');
INSERT INTO `area` VALUES ('1668', '411628', '鹿邑县', '411600');
INSERT INTO `area` VALUES ('1757', '421023', '监利县', '421000');
INSERT INTO `area` VALUES ('1009', '331024', '仙居县', '331000');
INSERT INTO `area` VALUES ('1229', '350902', '蕉城区', '350900');
INSERT INTO `area` VALUES ('1817', '430304', '岳塘区', '430300');
INSERT INTO `area` VALUES ('1068', '340801', '市辖区', '340800');
INSERT INTO `area` VALUES ('1454', '371302', '兰山区', '371300');
INSERT INTO `area` VALUES ('1338', '361122', '广丰县', '361100');
INSERT INTO `area` VALUES ('1527', '410224', '开封县', '410200');
INSERT INTO `area` VALUES ('1508', '410104', '管城回族区', '410100');
INSERT INTO `area` VALUES ('1444', '371083', '乳山市', '371000');
INSERT INTO `area` VALUES ('1014', '331121', '青田县', '331100');
INSERT INTO `area` VALUES ('1196', '350583', '南安市', '350500');
INSERT INTO `area` VALUES ('1651', '411521', '罗山县', '411500');
INSERT INTO `area` VALUES ('1201', '350623', '漳浦县', '350600');
INSERT INTO `area` VALUES ('1735', '420701', '市辖区', '420700');
INSERT INTO `area` VALUES ('1367', '370281', '胶州市', '370200');
INSERT INTO `area` VALUES ('1941', '440183', '增城市', '440100');
INSERT INTO `area` VALUES ('1703', '420302', '茅箭区', '420300');
INSERT INTO `area` VALUES ('1441', '371002', '环翠区', '371000');
INSERT INTO `area` VALUES ('1241', '360104', '青云谱区', '360100');
INSERT INTO `area` VALUES ('1514', '410182', '荥阳市', '410100');
INSERT INTO `area` VALUES ('1309', '360829', '安福县', '360800');
INSERT INTO `area` VALUES ('1628', '411322', '方城县', '411300');
INSERT INTO `area` VALUES ('1622', '411281', '义马市', '411200');
INSERT INTO `area` VALUES ('1304', '360824', '新干县', '360800');
INSERT INTO `area` VALUES ('1331', '361027', '金溪县', '361000');
INSERT INTO `area` VALUES ('1252', '360281', '乐平市', '360200');
INSERT INTO `area` VALUES ('1190', '350524', '安溪县', '350500');
INSERT INTO `area` VALUES ('1974', '440604', '禅城区', '440600');
INSERT INTO `area` VALUES ('1781', '421302', '曾都区', '421300');
INSERT INTO `area` VALUES ('1306', '360826', '泰和县', '360800');
INSERT INTO `area` VALUES ('1993', '440825', '徐闻县', '440800');
INSERT INTO `area` VALUES ('1957', '440305', '南山区', '440300');
INSERT INTO `area` VALUES ('1916', '431301', '市辖区', '431300');
INSERT INTO `area` VALUES ('1271', '360481', '瑞昌市', '360400');
INSERT INTO `area` VALUES ('1082', '341003', '黄山区', '341000');
INSERT INTO `area` VALUES ('1571', '410622', '淇　县', '410600');
INSERT INTO `area` VALUES ('1216', '350781', '邵武市', '350700');
INSERT INTO `area` VALUES ('1585', '410801', '市辖区', '410800');
INSERT INTO `area` VALUES ('1128', '341621', '涡阳县', '341600');
INSERT INTO `area` VALUES ('1786', '422823', '巴东县', '422800');
INSERT INTO `area` VALUES ('1206', '350628', '平和县', '350600');
INSERT INTO `area` VALUES ('1486', '371581', '临清市', '371500');
INSERT INTO `area` VALUES ('1662', '411622', '西华县', '411600');
INSERT INTO `area` VALUES ('1052', '340421', '凤台县', '340400');
INSERT INTO `area` VALUES ('1230', '350921', '霞浦县', '350900');
INSERT INTO `area` VALUES ('1958', '440306', '宝安区', '440300');
INSERT INTO `area` VALUES ('1507', '410103', '二七区', '410100');
INSERT INTO `area` VALUES ('1715', '420505', '猇亭区', '420500');
INSERT INTO `area` VALUES ('1519', '410202', '龙亭区', '410200');
INSERT INTO `area` VALUES ('1720', '420528', '长阳土家族自治县', '420500');
INSERT INTO `area` VALUES ('1967', '440511', '金平区', '440500');
INSERT INTO `area` VALUES ('1025', '340104', '蜀山区', '340100');
INSERT INTO `area` VALUES ('1422', '370811', '任城区', '370800');
INSERT INTO `area` VALUES ('1522', '410205', '南关区', '410200');
INSERT INTO `area` VALUES ('1660', '411602', '川汇区', '411600');
INSERT INTO `area` VALUES ('1569', '410611', '淇滨区', '410600');
INSERT INTO `area` VALUES ('1816', '430302', '雨湖区', '430300');
INSERT INTO `area` VALUES ('1807', '430203', '芦淞区', '430200');
INSERT INTO `area` VALUES ('1364', '370212', '崂山区', '370200');
INSERT INTO `area` VALUES ('1403', '370684', '蓬莱市', '370600');
INSERT INTO `area` VALUES ('1404', '370685', '招远市', '370600');
INSERT INTO `area` VALUES ('1182', '350430', '建宁县', '350400');
INSERT INTO `area` VALUES ('1087', '341024', '祁门县', '341000');
INSERT INTO `area` VALUES ('1431', '370882', '兖州市', '370800');
INSERT INTO `area` VALUES ('1756', '421022', '公安县', '421000');
INSERT INTO `area` VALUES ('1758', '421024', '江陵县', '421000');
INSERT INTO `area` VALUES ('1478', '371501', '市辖区', '371500');
INSERT INTO `area` VALUES ('1823', '430406', '雁峰区', '430400');
INSERT INTO `area` VALUES ('1577', '410721', '新乡县', '410700');
INSERT INTO `area` VALUES ('1922', '433101', '吉首市', '433100');
INSERT INTO `area` VALUES ('1678', '411727', '汝南县', '411700');
INSERT INTO `area` VALUES ('1871', '430822', '桑植县', '430800');
INSERT INTO `area` VALUES ('1384', '370404', '峄城区', '370400');
INSERT INTO `area` VALUES ('1865', '430726', '石门县', '430700');
INSERT INTO `area` VALUES ('1623', '411282', '灵宝市', '411200');
INSERT INTO `area` VALUES ('1361', '370203', '市北区', '370200');
INSERT INTO `area` VALUES ('1457', '371321', '沂南县', '371300');
INSERT INTO `area` VALUES ('1533', '410305', '涧西区', '410300');
INSERT INTO `area` VALUES ('1938', '440112', '黄埔区', '440100');
INSERT INTO `area` VALUES ('1373', '370302', '淄川区', '370300');
INSERT INTO `area` VALUES ('1037', '340223', '南陵县', '340200');
INSERT INTO `area` VALUES ('1599', '410922', '清丰县', '410900');
INSERT INTO `area` VALUES ('1952', '440281', '乐昌市', '440200');
INSERT INTO `area` VALUES ('1879', '431001', '市辖区', '431000');
INSERT INTO `area` VALUES ('1173', '350403', '三元区', '350400');
INSERT INTO `area` VALUES ('1209', '350701', '市辖区', '350700');
INSERT INTO `area` VALUES ('1459', '371323', '沂水县', '371300');
INSERT INTO `area` VALUES ('1810', '430221', '株洲县', '430200');
INSERT INTO `area` VALUES ('1285', '360725', '崇义县', '360700');
INSERT INTO `area` VALUES ('1200', '350622', '云霄县', '350600');
INSERT INTO `area` VALUES ('1902', '431129', '江华瑶族自治县', '431100');
INSERT INTO `area` VALUES ('1108', '341321', '砀山县', '341300');
INSERT INTO `area` VALUES ('1716', '420506', '夷陵区', '420500');
INSERT INTO `area` VALUES ('1394', '370601', '市辖区', '370600');
INSERT INTO `area` VALUES ('1847', '430601', '市辖区', '430600');
INSERT INTO `area` VALUES ('1501', '371725', '郓城县', '371700');
INSERT INTO `area` VALUES ('1110', '341323', '灵璧县', '341300');
INSERT INTO `area` VALUES ('1427', '370830', '汶上县', '370800');
INSERT INTO `area` VALUES ('1064', '340702', '铜官山区', '340700');
INSERT INTO `area` VALUES ('1398', '370613', '莱山区', '370600');
INSERT INTO `area` VALUES ('1762', '421101', '市辖区', '421100');
INSERT INTO `area` VALUES ('1631', '411325', '内乡县', '411300');
INSERT INTO `area` VALUES ('1991', '440811', '麻章区', '440800');
INSERT INTO `area` VALUES ('1665', '411625', '郸城县', '411600');
INSERT INTO `area` VALUES ('1755', '421003', '荆州区', '421000');
INSERT INTO `area` VALUES ('1551', '410422', '叶　县', '410400');
INSERT INTO `area` VALUES ('1913', '431229', '靖州苗族侗族自治县', '431200');
INSERT INTO `area` VALUES ('1908', '431224', '溆浦县', '431200');
INSERT INTO `area` VALUES ('1554', '410481', '舞钢市', '410400');
INSERT INTO `area` VALUES ('1605', '411002', '魏都区', '411000');
INSERT INTO `area` VALUES ('1300', '360803', '青原区', '360800');
INSERT INTO `area` VALUES ('1627', '411321', '南召县', '411300');
INSERT INTO `area` VALUES ('1904', '431202', '鹤城区', '431200');
INSERT INTO `area` VALUES ('1076', '340826', '宿松县', '340800');
INSERT INTO `area` VALUES ('1483', '371524', '东阿县', '371500');
INSERT INTO `area` VALUES ('1965', '440501', '市辖区', '440500');
INSERT INTO `area` VALUES ('1780', '421301', '市辖区', '421300');
INSERT INTO `area` VALUES ('1510', '410106', '上街区', '410100');
INSERT INTO `area` VALUES ('1008', '331023', '天台县', '331000');
INSERT INTO `area` VALUES ('1193', '350527', '金门县', '350500');
INSERT INTO `area` VALUES ('1891', '431101', '市辖区', '431100');
INSERT INTO `area` VALUES ('1582', '410728', '长垣县', '410700');
INSERT INTO `area` VALUES ('1314', '360921', '奉新县', '360900');
INSERT INTO `area` VALUES ('1023', '340102', '瑶海区', '340100');
INSERT INTO `area` VALUES ('1724', '420583', '枝江市', '420500');
INSERT INTO `area` VALUES ('1468', '371421', '陵　县', '371400');
INSERT INTO `area` VALUES ('1462', '371326', '平邑县', '371300');
INSERT INTO `area` VALUES ('1455', '371311', '罗庄区', '371300');
INSERT INTO `area` VALUES ('1851', '430621', '岳阳县', '430600');
INSERT INTO `area` VALUES ('1840', '430523', '邵阳县', '430500');
INSERT INTO `area` VALUES ('1529', '410301', '市辖区', '410300');
INSERT INTO `area` VALUES ('1310', '360830', '永新县', '360800');
INSERT INTO `area` VALUES ('1267', '360427', '星子县', '360400');
INSERT INTO `area` VALUES ('1680', '411729', '新蔡县', '411700');
INSERT INTO `area` VALUES ('1416', '370783', '寿光市', '370700');
INSERT INTO `area` VALUES ('1246', '360123', '安义县', '360100');
INSERT INTO `area` VALUES ('1729', '420624', '南漳县', '420600');
INSERT INTO `area` VALUES ('1621', '411224', '卢氏县', '411200');
INSERT INTO `area` VALUES ('1497', '371721', '曹　县', '371700');
INSERT INTO `area` VALUES ('1253', '360301', '市辖区', '360300');
INSERT INTO `area` VALUES ('1165', '350301', '市辖区', '350300');
INSERT INTO `area` VALUES ('1380', '370323', '沂源县', '370300');
INSERT INTO `area` VALUES ('1154', '350125', '永泰县', '350100');
INSERT INTO `area` VALUES ('1051', '340406', '潘集区', '340400');
INSERT INTO `area` VALUES ('1794', '429021', '神农架林区', '429000');
INSERT INTO `area` VALUES ('1739', '420801', '市辖区', '420800');
INSERT INTO `area` VALUES ('1286', '360726', '安远县', '360700');
INSERT INTO `area` VALUES ('1041', '340304', '禹会区', '340300');
INSERT INTO `area` VALUES ('1224', '350823', '上杭县', '350800');
INSERT INTO `area` VALUES ('1042', '340311', '淮上区', '340300');
INSERT INTO `area` VALUES ('1479', '371502', '东昌府区', '371500');
INSERT INTO `area` VALUES ('1453', '371301', '市辖区', '371300');
INSERT INTO `area` VALUES ('1411', '370705', '奎文区', '370700');
INSERT INTO `area` VALUES ('1864', '430725', '桃源县', '430700');
INSERT INTO `area` VALUES ('1058', '340601', '市辖区', '340600');
INSERT INTO `area` VALUES ('1855', '430681', '汨罗市', '430600');
INSERT INTO `area` VALUES ('1264', '360424', '修水县', '360400');
INSERT INTO `area` VALUES ('1031', '340202', '镜湖区', '340200');
INSERT INTO `area` VALUES ('1929', '433130', '龙山县', '433100');
INSERT INTO `area` VALUES ('1934', '440105', '海珠区', '440100');
INSERT INTO `area` VALUES ('1106', '341301', '市辖区', '341300');
INSERT INTO `area` VALUES ('1903', '431201', '市辖区', '431200');
INSERT INTO `area` VALUES ('1070', '340803', '大观区', '340800');
INSERT INTO `area` VALUES ('1528', '410225', '兰考县', '410200');
INSERT INTO `area` VALUES ('1181', '350429', '泰宁县', '350400');
INSERT INTO `area` VALUES ('1515', '410183', '新密市', '410100');
INSERT INTO `area` VALUES ('1834', '430501', '市辖区', '430500');
INSERT INTO `area` VALUES ('1611', '411101', '市辖区', '411100');
INSERT INTO `area` VALUES ('1371', '370285', '莱西市', '370200');
INSERT INTO `area` VALUES ('1712', '420502', '西陵区', '420500');
INSERT INTO `area` VALUES ('1402', '370683', '莱州市', '370600');
INSERT INTO `area` VALUES ('1763', '421102', '黄州区', '421100');
INSERT INTO `area` VALUES ('1480', '371521', '阳谷县', '371500');
INSERT INTO `area` VALUES ('1520', '410203', '顺河回族区', '410200');
INSERT INTO `area` VALUES ('1953', '440282', '南雄市', '440200');
INSERT INTO `area` VALUES ('1596', '410883', '孟州市', '410800');
INSERT INTO `area` VALUES ('1347', '361181', '德兴市', '361100');
INSERT INTO `area` VALUES ('1033', '340204', '新芜区', '340200');
INSERT INTO `area` VALUES ('1145', '350102', '鼓楼区', '350100');
INSERT INTO `area` VALUES ('1461', '371325', '费　县', '371300');
INSERT INTO `area` VALUES ('1297', '360782', '南康市', '360700');
INSERT INTO `area` VALUES ('1287', '360727', '龙南县', '360700');
INSERT INTO `area` VALUES ('1489', '371621', '惠民县', '371600');
INSERT INTO `area` VALUES ('1038', '340301', '市辖区', '340300');
INSERT INTO `area` VALUES ('1909', '431225', '会同县', '431200');
INSERT INTO `area` VALUES ('1697', '420203', '西塞山区', '420200');
INSERT INTO `area` VALUES ('1163', '350212', '同安区', '350200');
INSERT INTO `area` VALUES ('1115', '341422', '无为县', '341400');
INSERT INTO `area` VALUES ('1415', '370782', '诸城市', '370700');
INSERT INTO `area` VALUES ('1368', '370282', '即墨市', '370200');
INSERT INTO `area` VALUES ('1204', '350626', '东山县', '350600');
INSERT INTO `area` VALUES ('1159', '350203', '思明区', '350200');
INSERT INTO `area` VALUES ('1107', '341302', '墉桥区', '341300');
INSERT INTO `area` VALUES ('1388', '370501', '市辖区', '370500');
INSERT INTO `area` VALUES ('1170', '350322', '仙游县', '350300');
INSERT INTO `area` VALUES ('1352', '370105', '天桥区', '370100');
INSERT INTO `area` VALUES ('1191', '350525', '永春县', '350500');
INSERT INTO `area` VALUES ('1639', '411402', '梁园区', '411400');
INSERT INTO `area` VALUES ('1636', '411330', '桐柏县', '411300');
INSERT INTO `area` VALUES ('1784', '422802', '利川市', '422800');
INSERT INTO `area` VALUES ('1494', '371626', '邹平县', '371600');
INSERT INTO `area` VALUES ('1495', '371701', '市辖区', '371700');
INSERT INTO `area` VALUES ('1100', '341204', '颍泉区', '341200');
INSERT INTO `area` VALUES ('1330', '361026', '宜黄县', '361000');
INSERT INTO `area` VALUES ('1157', '350182', '长乐市', '350100');
INSERT INTO `area` VALUES ('1721', '420529', '五峰土家族自治县', '420500');
INSERT INTO `area` VALUES ('1923', '433122', '泸溪县', '433100');
INSERT INTO `area` VALUES ('1857', '430701', '市辖区', '430700');
INSERT INTO `area` VALUES ('1512', '410122', '中牟县', '410100');
INSERT INTO `area` VALUES ('1425', '370828', '金乡县', '370800');
INSERT INTO `area` VALUES ('1272', '360501', '市辖区', '360500');
INSERT INTO `area` VALUES ('1027', '340121', '长丰县', '340100');
INSERT INTO `area` VALUES ('1321', '360982', '樟树市', '360900');
INSERT INTO `area` VALUES ('1523', '410211', '郊　区', '410200');
INSERT INTO `area` VALUES ('1485', '371526', '高唐县', '371500');
INSERT INTO `area` VALUES ('1858', '430702', '武陵区', '430700');
INSERT INTO `area` VALUES ('1750', '420981', '应城市', '420900');
INSERT INTO `area` VALUES ('1920', '431381', '冷水江市', '431300');
INSERT INTO `area` VALUES ('1024', '340103', '庐阳区', '340100');
INSERT INTO `area` VALUES ('1994', '440881', '廉江市', '440800');
INSERT INTO `area` VALUES ('1705', '420321', '郧　县', '420300');
INSERT INTO `area` VALUES ('1077', '340827', '望江县', '340800');
INSERT INTO `area` VALUES ('1248', '360201', '市辖区', '360200');
INSERT INTO `area` VALUES ('1026', '340111', '包河区', '340100');
INSERT INTO `area` VALUES ('1372', '370301', '市辖区', '370300');
INSERT INTO `area` VALUES ('1726', '420602', '襄城区', '420600');
INSERT INTO `area` VALUES ('1442', '371081', '文登市', '371000');
INSERT INTO `area` VALUES ('1517', '410185', '登封市', '410100');
INSERT INTO `area` VALUES ('1317', '360924', '宜丰县', '360900');
INSERT INTO `area` VALUES ('1066', '340711', '郊　区', '340700');
INSERT INTO `area` VALUES ('1292', '360732', '兴国县', '360700');
INSERT INTO `area` VALUES ('1844', '430528', '新宁县', '430500');
INSERT INTO `area` VALUES ('1939', '440113', '番禺区', '440100');
INSERT INTO `area` VALUES ('1336', '361102', '信州区', '361100');
INSERT INTO `area` VALUES ('1984', '440783', '开平市', '440700');
INSERT INTO `area` VALUES ('1222', '350821', '长汀县', '350800');
INSERT INTO `area` VALUES ('1741', '420804', '掇刀区', '420800');
INSERT INTO `area` VALUES ('1742', '420821', '京山县', '420800');
INSERT INTO `area` VALUES ('1988', '440802', '赤坎区', '440800');
INSERT INTO `area` VALUES ('1211', '350721', '顺昌县', '350700');
INSERT INTO `area` VALUES ('1513', '410181', '巩义市', '410100');
INSERT INTO `area` VALUES ('1227', '350881', '漳平市', '350800');
INSERT INTO `area` VALUES ('1469', '371422', '宁津县', '371400');
INSERT INTO `area` VALUES ('1972', '440523', '南澳县', '440500');
INSERT INTO `area` VALUES ('1172', '350402', '梅列区', '350400');
INSERT INTO `area` VALUES ('1460', '371324', '苍山县', '371300');
INSERT INTO `area` VALUES ('1370', '370284', '胶南市', '370200');
INSERT INTO `area` VALUES ('1541', '410327', '宜阳县', '410300');
INSERT INTO `area` VALUES ('1323', '361001', '市辖区', '361000');
INSERT INTO `area` VALUES ('1949', '440229', '翁源县', '440200');
INSERT INTO `area` VALUES ('1155', '350128', '平潭县', '350100');
INSERT INTO `area` VALUES ('1950', '440232', '乳源瑶族自治县', '440200');
INSERT INTO `area` VALUES ('1213', '350723', '光泽县', '350700');
INSERT INTO `area` VALUES ('1669', '411681', '项城市', '411600');
INSERT INTO `area` VALUES ('1374', '370303', '张店区', '370300');
INSERT INTO `area` VALUES ('1085', '341022', '休宁县', '341000');
INSERT INTO `area` VALUES ('1711', '420501', '市辖区', '420500');
INSERT INTO `area` VALUES ('1830', '430424', '衡东县', '430400');
INSERT INTO `area` VALUES ('1017', '331124', '松阳县', '331100');
INSERT INTO `area` VALUES ('1798', '430104', '岳麓区', '430100');
INSERT INTO `area` VALUES ('1926', '433125', '保靖县', '433100');
INSERT INTO `area` VALUES ('1987', '440801', '市辖区', '440800');
INSERT INTO `area` VALUES ('1505', '410101', '市辖区', '410100');
INSERT INTO `area` VALUES ('1942', '440184', '从化市', '440100');
INSERT INTO `area` VALUES ('1773', '421201', '市辖区', '421200');
INSERT INTO `area` VALUES ('1498', '371722', '单　县', '371700');
INSERT INTO `area` VALUES ('1966', '440507', '龙湖区', '440500');
INSERT INTO `area` VALUES ('1150', '350121', '闽侯县', '350100');
INSERT INTO `area` VALUES ('1659', '411601', '市辖区', '411600');
INSERT INTO `area` VALUES ('1518', '410201', '市辖区', '410200');
INSERT INTO `area` VALUES ('1274', '360521', '分宜县', '360500');
INSERT INTO `area` VALUES ('1382', '370402', '市中区', '370400');
INSERT INTO `area` VALUES ('1607', '411024', '鄢陵县', '411000');
INSERT INTO `area` VALUES ('1876', '430922', '桃江县', '430900');
INSERT INTO `area` VALUES ('1369', '370283', '平度市', '370200');
INSERT INTO `area` VALUES ('1236', '350981', '福安市', '350900');
INSERT INTO `area` VALUES ('1240', '360103', '西湖区', '360100');
INSERT INTO `area` VALUES ('1504', '371728', '东明县', '371700');
INSERT INTO `area` VALUES ('1242', '360105', '湾里区', '360100');
INSERT INTO `area` VALUES ('1386', '370406', '山亭区', '370400');
INSERT INTO `area` VALUES ('1552', '410423', '鲁山县', '410400');
INSERT INTO `area` VALUES ('1277', '360622', '余江县', '360600');
INSERT INTO `area` VALUES ('1356', '370125', '济阳县', '370100');
INSERT INTO `area` VALUES ('1850', '430611', '君山区', '430600');
INSERT INTO `area` VALUES ('1195', '350582', '晋江市', '350500');
INSERT INTO `area` VALUES ('1188', '350505', '泉港区', '350500');
INSERT INTO `area` VALUES ('1975', '440605', '南海区', '440600');
INSERT INTO `area` VALUES ('1831', '430426', '祁东县', '430400');
INSERT INTO `area` VALUES ('1184', '350501', '市辖区', '350500');
INSERT INTO `area` VALUES ('1030', '340201', '市辖区', '340200');
INSERT INTO `area` VALUES ('1878', '430981', '沅江市', '430900');
INSERT INTO `area` VALUES ('1098', '341202', '颍州区', '341200');
INSERT INTO `area` VALUES ('1258', '360323', '芦溪县', '360300');
INSERT INTO `area` VALUES ('1069', '340802', '迎江区', '340800');
INSERT INTO `area` VALUES ('1751', '420982', '安陆市', '420900');
INSERT INTO `area` VALUES ('1500', '371724', '巨野县', '371700');
INSERT INTO `area` VALUES ('1754', '421002', '沙市区', '421000');
INSERT INTO `area` VALUES ('1053', '340501', '市辖区', '340500');
INSERT INTO `area` VALUES ('1702', '420301', '市辖区', '420300');
INSERT INTO `area` VALUES ('1279', '360701', '市辖区', '360700');
INSERT INTO `area` VALUES ('1153', '350124', '闽清县', '350100');
INSERT INTO `area` VALUES ('1761', '421087', '松滋市', '421000');
INSERT INTO `area` VALUES ('1849', '430603', '云溪区', '430600');
INSERT INTO `area` VALUES ('1732', '420682', '老河口市', '420600');
INSERT INTO `area` VALUES ('1350', '370103', '市中区', '370100');
INSERT INTO `area` VALUES ('1451', '371202', '莱城区', '371200');
INSERT INTO `area` VALUES ('1767', '421124', '英山县', '421100');
INSERT INTO `area` VALUES ('1203', '350625', '长泰县', '350600');
INSERT INTO `area` VALUES ('1604', '411001', '市辖区', '411000');
INSERT INTO `area` VALUES ('1863', '430724', '临澧县', '430700');
INSERT INTO `area` VALUES ('1112', '341401', '市辖区', '341400');
INSERT INTO `area` VALUES ('1164', '350213', '翔安区', '350200');
INSERT INTO `area` VALUES ('1973', '440601', '市辖区', '440600');
INSERT INTO `area` VALUES ('1078', '340828', '岳西县', '340800');
INSERT INTO `area` VALUES ('1050', '340405', '八公山区', '340400');
INSERT INTO `area` VALUES ('1268', '360428', '都昌县', '360400');
INSERT INTO `area` VALUES ('1869', '430811', '武陵源区', '430800');
INSERT INTO `area` VALUES ('1744', '420881', '钟祥市', '420800');
INSERT INTO `area` VALUES ('1283', '360723', '大余县', '360700');
INSERT INTO `area` VALUES ('1378', '370321', '桓台县', '370300');
INSERT INTO `area` VALUES ('1971', '440515', '澄海区', '440500');
INSERT INTO `area` VALUES ('1997', '440901', '市辖区', '440900');
INSERT INTO `area` VALUES ('1152', '350123', '罗源县', '350100');
INSERT INTO `area` VALUES ('1171', '350401', '市辖区', '350400');
INSERT INTO `area` VALUES ('1156', '350181', '福清市', '350100');
INSERT INTO `area` VALUES ('1111', '341324', '泗　县', '341300');
INSERT INTO `area` VALUES ('1689', '420112', '东西湖区', '420100');
INSERT INTO `area` VALUES ('1313', '360902', '袁州区', '360900');
INSERT INTO `area` VALUES ('1187', '350504', '洛江区', '350500');
INSERT INTO `area` VALUES ('1638', '411401', '市辖区', '411400');
INSERT INTO `area` VALUES ('1124', '341524', '金寨县', '341500');
INSERT INTO `area` VALUES ('1776', '421222', '通城县', '421200');
INSERT INTO `area` VALUES ('1305', '360825', '永丰县', '360800');
INSERT INTO `area` VALUES ('1408', '370702', '潍城区', '370700');
INSERT INTO `area` VALUES ('1986', '440785', '恩平市', '440700');
INSERT INTO `area` VALUES ('1944', '440203', '武江区', '440200');
INSERT INTO `area` VALUES ('1342', '361126', '弋阳县', '361100');
INSERT INTO `area` VALUES ('1433', '370901', '市辖区', '370900');
INSERT INTO `area` VALUES ('1856', '430682', '临湘市', '430600');
INSERT INTO `area` VALUES ('1572', '410701', '市辖区', '410700');
INSERT INTO `area` VALUES ('1580', '410726', '延津县', '410700');
INSERT INTO `area` VALUES ('1144', '350101', '市辖区', '350100');
INSERT INTO `area` VALUES ('1344', '361128', '鄱阳县', '361100');
INSERT INTO `area` VALUES ('1177', '350425', '大田县', '350400');
INSERT INTO `area` VALUES ('1812', '430224', '茶陵县', '430200');
INSERT INTO `area` VALUES ('1436', '370921', '宁阳县', '370900');
INSERT INTO `area` VALUES ('1564', '410527', '内黄县', '410500');
INSERT INTO `area` VALUES ('1674', '411723', '平舆县', '411700');
INSERT INTO `area` VALUES ('1655', '411525', '固始县', '411500');
INSERT INTO `area` VALUES ('1435', '370903', '岱岳区', '370900');
INSERT INTO `area` VALUES ('1109', '341322', '萧　县', '341300');
INSERT INTO `area` VALUES ('1219', '350784', '建阳市', '350700');
INSERT INTO `area` VALUES ('1740', '420802', '东宝区', '420800');
INSERT INTO `area` VALUES ('1212', '350722', '浦城县', '350700');
INSERT INTO `area` VALUES ('1714', '420504', '点军区', '420500');
INSERT INTO `area` VALUES ('1629', '411323', '西峡县', '411300');
INSERT INTO `area` VALUES ('1748', '420922', '大悟县', '420900');
INSERT INTO `area` VALUES ('1608', '411025', '襄城县', '411000');
INSERT INTO `area` VALUES ('1047', '340402', '大通区', '340400');
INSERT INTO `area` VALUES ('1438', '370982', '新泰市', '370900');
INSERT INTO `area` VALUES ('1759', '421081', '石首市', '421000');
INSERT INTO `area` VALUES ('1841', '430524', '隆回县', '430500');
INSERT INTO `area` VALUES ('1105', '341282', '界首市', '341200');
INSERT INTO `area` VALUES ('1005', '331004', '路桥区', '331000');
INSERT INTO `area` VALUES ('1540', '410326', '汝阳县', '410300');
INSERT INTO `area` VALUES ('1565', '410581', '林州市', '410500');
INSERT INTO `area` VALUES ('1654', '411524', '商城县', '411500');
INSERT INTO `area` VALUES ('1675', '411724', '正阳县', '411700');
INSERT INTO `area` VALUES ('1955', '440303', '罗湖区', '440300');
INSERT INTO `area` VALUES ('1412', '370724', '临朐县', '370700');
INSERT INTO `area` VALUES ('1293', '360733', '会昌县', '360700');
INSERT INTO `area` VALUES ('1122', '341522', '霍邱县', '341500');
INSERT INTO `area` VALUES ('1730', '420625', '谷城县', '420600');
INSERT INTO `area` VALUES ('1883', '431022', '宜章县', '431000');
INSERT INTO `area` VALUES ('1002', '331001', '市辖区', '331000');
INSERT INTO `area` VALUES ('1281', '360721', '赣　县', '360700');
INSERT INTO `area` VALUES ('1075', '340825', '太湖县', '340800');
INSERT INTO `area` VALUES ('1148', '350105', '马尾区', '350100');
INSERT INTO `area` VALUES ('1197', '350601', '市辖区', '350600');
INSERT INTO `area` VALUES ('1019', '331126', '庆元县', '331100');
INSERT INTO `area` VALUES ('1474', '371427', '夏津县', '371400');
INSERT INTO `area` VALUES ('1217', '350782', '武夷山市', '350700');
INSERT INTO `area` VALUES ('1379', '370322', '高青县', '370300');
INSERT INTO `area` VALUES ('1818', '430321', '湘潭县', '430300');
INSERT INTO `area` VALUES ('1440', '371001', '市辖区', '371000');
INSERT INTO `area` VALUES ('1667', '411627', '太康县', '411600');
INSERT INTO `area` VALUES ('1563', '410526', '滑　县', '410500');
INSERT INTO `area` VALUES ('1262', '360421', '九江县', '360400');
INSERT INTO `area` VALUES ('1466', '371401', '市辖区', '371400');
INSERT INTO `area` VALUES ('1530', '410302', '老城区', '410300');
INSERT INTO `area` VALUES ('1822', '430405', '珠晖区', '430400');
INSERT INTO `area` VALUES ('1319', '360926', '铜鼓县', '360900');
INSERT INTO `area` VALUES ('1265', '360425', '永修县', '360400');
INSERT INTO `area` VALUES ('1613', '411103', '郾城区', '411100');
INSERT INTO `area` VALUES ('1699', '420205', '铁山区', '420200');
INSERT INTO `area` VALUES ('1764', '421121', '团风县', '421100');
INSERT INTO `area` VALUES ('1575', '410704', '凤泉区', '410700');
INSERT INTO `area` VALUES ('1624', '411301', '市辖区', '411300');
INSERT INTO `area` VALUES ('1976', '440606', '顺德区', '440600');
INSERT INTO `area` VALUES ('1912', '431228', '芷江侗族自治县', '431200');
INSERT INTO `area` VALUES ('1538', '410324', '栾川县', '410300');
INSERT INTO `area` VALUES ('1073', '340823', '枞阳县', '340800');
INSERT INTO `area` VALUES ('1915', '431281', '洪江市', '431200');
INSERT INTO `area` VALUES ('1318', '360925', '靖安县', '360900');
INSERT INTO `area` VALUES ('1788', '422826', '咸丰县', '422800');
INSERT INTO `area` VALUES ('1945', '440204', '浈江区', '440200');
INSERT INTO `area` VALUES ('1560', '410506', '龙安区', '410500');
INSERT INTO `area` VALUES ('1117', '341424', '和　县', '341400');
INSERT INTO `area` VALUES ('1301', '360821', '吉安县', '360800');
INSERT INTO `area` VALUES ('1820', '430382', '韶山市', '430300');
INSERT INTO `area` VALUES ('1937', '440111', '白云区', '440100');
INSERT INTO `area` VALUES ('1774', '421202', '咸安区', '421200');
INSERT INTO `area` VALUES ('1490', '371622', '阳信县', '371600');
INSERT INTO `area` VALUES ('1096', '341182', '明光市', '341100');
INSERT INTO `area` VALUES ('1641', '411421', '民权县', '411400');
INSERT INTO `area` VALUES ('1223', '350822', '永定县', '350800');
INSERT INTO `area` VALUES ('1543', '410329', '伊川县', '410300');
INSERT INTO `area` VALUES ('1192', '350526', '德化县', '350500');
INSERT INTO `area` VALUES ('1273', '360502', '渝水区', '360500');
INSERT INTO `area` VALUES ('1535', '410307', '洛龙区', '410300');
INSERT INTO `area` VALUES ('1561', '410522', '安阳县', '410500');
INSERT INTO `area` VALUES ('1348', '370101', '市辖区', '370100');
INSERT INTO `area` VALUES ('1961', '440401', '市辖区', '440400');
INSERT INTO `area` VALUES ('1401', '370682', '莱阳市', '370600');
INSERT INTO `area` VALUES ('1584', '410782', '辉县市', '410700');
INSERT INTO `area` VALUES ('1525', '410222', '通许县', '410200');
INSERT INTO `area` VALUES ('1983', '440781', '台山市', '440700');
INSERT INTO `area` VALUES ('1664', '411624', '沈丘县', '411600');
INSERT INTO `area` VALUES ('1645', '411425', '虞城县', '411400');
INSERT INTO `area` VALUES ('1676', '411725', '确山县', '411700');
INSERT INTO `area` VALUES ('1143', '341881', '宁国市', '341800');
INSERT INTO `area` VALUES ('1618', '411202', '湖滨区', '411200');
INSERT INTO `area` VALUES ('1487', '371601', '市辖区', '371600');
INSERT INTO `area` VALUES ('1946', '440205', '曲江区', '440200');
INSERT INTO `area` VALUES ('1698', '420204', '下陆区', '420200');
INSERT INTO `area` VALUES ('1046', '340401', '市辖区', '340400');
INSERT INTO `area` VALUES ('1896', '431123', '双牌县', '431100');
INSERT INTO `area` VALUES ('1327', '361023', '南丰县', '361000');
INSERT INTO `area` VALUES ('1437', '370923', '东平县', '370900');
INSERT INTO `area` VALUES ('1907', '431223', '辰溪县', '431200');
INSERT INTO `area` VALUES ('1719', '420527', '秭归县', '420500');
INSERT INTO `area` VALUES ('1593', '410825', '温　县', '410800');
INSERT INTO `area` VALUES ('1848', '430602', '岳阳楼区', '430600');
INSERT INTO `area` VALUES ('1054', '340502', '金家庄区', '340500');
INSERT INTO `area` VALUES ('1694', '420117', '新洲区', '420100');
INSERT INTO `area` VALUES ('1633', '411327', '社旗县', '411300');
INSERT INTO `area` VALUES ('1481', '371522', '莘　县', '371500');
INSERT INTO `area` VALUES ('1174', '350421', '明溪县', '350400');
INSERT INTO `area` VALUES ('1566', '410601', '市辖区', '410600');
INSERT INTO `area` VALUES ('1648', '411501', '市辖区', '411500');
INSERT INTO `area` VALUES ('1914', '431230', '通道侗族自治县', '431200');
INSERT INTO `area` VALUES ('1576', '410711', '牧野区', '410700');
INSERT INTO `area` VALUES ('1137', '341802', '宣州区', '341800');
INSERT INTO `area` VALUES ('1238', '360101', '市辖区', '360100');
INSERT INTO `area` VALUES ('1591', '410822', '博爱县', '410800');
INSERT INTO `area` VALUES ('1845', '430529', '城步苗族自治县', '430500');
INSERT INTO `area` VALUES ('1606', '411023', '许昌县', '411000');
INSERT INTO `area` VALUES ('1889', '431028', '安仁县', '431000');
INSERT INTO `area` VALUES ('1158', '350201', '市辖区', '350200');
INSERT INTO `area` VALUES ('1146', '350103', '台江区', '350100');
INSERT INTO `area` VALUES ('1901', '431128', '新田县', '431100');
INSERT INTO `area` VALUES ('1603', '410928', '濮阳县', '410900');
INSERT INTO `area` VALUES ('1071', '340811', '郊　区', '340800');
INSERT INTO `area` VALUES ('1813', '430225', '炎陵县', '430200');
INSERT INTO `area` VALUES ('1432', '370883', '邹城市', '370800');
INSERT INTO `area` VALUES ('1059', '340602', '杜集区', '340600');
INSERT INTO `area` VALUES ('1288', '360728', '定南县', '360700');
INSERT INTO `area` VALUES ('1725', '420601', '市辖区', '420600');
INSERT INTO `area` VALUES ('1815', '430301', '市辖区', '430300');
INSERT INTO `area` VALUES ('1854', '430626', '平江县', '430600');
INSERT INTO `area` VALUES ('1118', '341501', '市辖区', '341500');
INSERT INTO `area` VALUES ('1785', '422822', '建始县', '422800');
INSERT INTO `area` VALUES ('1278', '360681', '贵溪市', '360600');
INSERT INTO `area` VALUES ('1752', '420984', '汉川市', '420900');
INSERT INTO `area` VALUES ('1649', '411502', '师河区', '411500');
INSERT INTO `area` VALUES ('1687', '420107', '青山区', '420100');
INSERT INTO `area` VALUES ('1198', '350602', '芗城区', '350600');
INSERT INTO `area` VALUES ('1544', '410381', '偃师市', '410300');
INSERT INTO `area` VALUES ('1567', '410602', '鹤山区', '410600');
INSERT INTO `area` VALUES ('1284', '360724', '上犹县', '360700');
INSERT INTO `area` VALUES ('1261', '360403', '浔阳区', '360400');
INSERT INTO `area` VALUES ('1129', '341622', '蒙城县', '341600');
INSERT INTO `area` VALUES ('1632', '411326', '淅川县', '411300');
INSERT INTO `area` VALUES ('1653', '411523', '新　县', '411500');
INSERT INTO `area` VALUES ('1557', '410502', '文峰区', '410500');
INSERT INTO `area` VALUES ('1228', '350901', '市辖区', '350900');
INSERT INTO `area` VALUES ('1039', '340302', '龙子湖区', '340300');
INSERT INTO `area` VALUES ('1237', '350982', '福鼎市', '350900');
INSERT INTO `area` VALUES ('1954', '440301', '市辖区', '440300');
INSERT INTO `area` VALUES ('1802', '430122', '望城县', '430100');
INSERT INTO `area` VALUES ('1255', '360313', '湘东区', '360300');
INSERT INTO `area` VALUES ('1537', '410323', '新安县', '410300');
INSERT INTO `area` VALUES ('1796', '430102', '芙蓉区', '430100');
INSERT INTO `area` VALUES ('1516', '410184', '新郑市', '410100');
INSERT INTO `area` VALUES ('1399', '370634', '长岛县', '370600');
INSERT INTO `area` VALUES ('1977', '440607', '三水区', '440600');
INSERT INTO `area` VALUES ('1113', '341402', '居巢区', '341400');
INSERT INTO `area` VALUES ('1084', '341021', '歙　县', '341000');
INSERT INTO `area` VALUES ('1315', '360922', '万载县', '360900');
INSERT INTO `area` VALUES ('1303', '360823', '峡江县', '360800');
INSERT INTO `area` VALUES ('1249', '360202', '昌江区', '360200');
INSERT INTO `area` VALUES ('1307', '360827', '遂川县', '360800');
INSERT INTO `area` VALUES ('1707', '420323', '竹山县', '420300');
INSERT INTO `area` VALUES ('1116', '341423', '含山县', '341400');
INSERT INTO `area` VALUES ('1295', '360735', '石城县', '360700');
INSERT INTO `area` VALUES ('1990', '440804', '坡头区', '440800');
INSERT INTO `area` VALUES ('1044', '340322', '五河县', '340300');
INSERT INTO `area` VALUES ('1086', '341023', '黟　县', '341000');
INSERT INTO `area` VALUES ('1083', '341004', '徽州区', '341000');
INSERT INTO `area` VALUES ('1447', '371103', '岚山区', '371100');
INSERT INTO `area` VALUES ('1727', '420606', '樊城区', '420600');
INSERT INTO `area` VALUES ('1568', '410603', '山城区', '410600');
INSERT INTO `area` VALUES ('1366', '370214', '城阳区', '370200');
INSERT INTO `area` VALUES ('1959', '440307', '龙岗区', '440300');
INSERT INTO `area` VALUES ('1127', '341602', '谯城区', '341600');
INSERT INTO `area` VALUES ('1995', '440882', '雷州市', '440800');
INSERT INTO `area` VALUES ('1089', '341102', '琅琊区', '341100');
INSERT INTO `area` VALUES ('1103', '341225', '阜南县', '341200');
INSERT INTO `area` VALUES ('1149', '350111', '晋安区', '350100');
INSERT INTO `area` VALUES ('1892', '431102', '芝山区', '431100');
INSERT INTO `area` VALUES ('1381', '370401', '市辖区', '370400');
INSERT INTO `area` VALUES ('1686', '420106', '武昌区', '420100');
INSERT INTO `area` VALUES ('1710', '420381', '丹江口市', '420300');
INSERT INTO `area` VALUES ('1011', '331082', '临海市', '331000');
INSERT INTO `area` VALUES ('1704', '420303', '张湾区', '420300');
INSERT INTO `area` VALUES ('1666', '411626', '淮阳县', '411600');
INSERT INTO `area` VALUES ('1790', '422828', '鹤峰县', '422800');
INSERT INTO `area` VALUES ('1910', '431226', '麻阳苗族自治县', '431200');
INSERT INTO `area` VALUES ('1992', '440823', '遂溪县', '440800');
INSERT INTO `area` VALUES ('1837', '430511', '北塔区', '430500');
INSERT INTO `area` VALUES ('1709', '420325', '房　县', '420300');
INSERT INTO `area` VALUES ('1104', '341226', '颍上县', '341200');
INSERT INTO `area` VALUES ('1123', '341523', '舒城县', '341500');
INSERT INTO `area` VALUES ('1496', '371702', '牡丹区', '371700');
INSERT INTO `area` VALUES ('1445', '371101', '市辖区', '371100');
INSERT INTO `area` VALUES ('1824', '430407', '石鼓区', '430400');
INSERT INTO `area` VALUES ('1263', '360423', '武宁县', '360400');
INSERT INTO `area` VALUES ('1614', '411104', '召陵区', '411100');
INSERT INTO `area` VALUES ('1789', '422827', '来凤县', '422800');
INSERT INTO `area` VALUES ('1049', '340404', '谢家集区', '340400');
INSERT INTO `area` VALUES ('1943', '440201', '市辖区', '440200');
INSERT INTO `area` VALUES ('1346', '361130', '婺源县', '361100');
INSERT INTO `area` VALUES ('1088', '341101', '市辖区', '341100');
INSERT INTO `area` VALUES ('1048', '340403', '田家庵区', '340400');
INSERT INTO `area` VALUES ('1199', '350603', '龙文区', '350600');
INSERT INTO `area` VALUES ('1476', '371481', '乐陵市', '371400');
INSERT INTO `area` VALUES ('1801', '430121', '长沙县', '430100');
INSERT INTO `area` VALUES ('1176', '350424', '宁化县', '350400');
INSERT INTO `area` VALUES ('1189', '350521', '惠安县', '350500');
INSERT INTO `area` VALUES ('1549', '410411', '湛河区', '410400');
INSERT INTO `area` VALUES ('1860', '430721', '安乡县', '430700');
INSERT INTO `area` VALUES ('1683', '420103', '江汉区', '420100');
INSERT INTO `area` VALUES ('1852', '430623', '华容县', '430600');
INSERT INTO `area` VALUES ('1419', '370786', '昌邑市', '370700');
INSERT INTO `area` VALUES ('1057', '340521', '当涂县', '340500');
INSERT INTO `area` VALUES ('1968', '440512', '濠江区', '440500');
INSERT INTO `area` VALUES ('1439', '370983', '肥城市', '370900');
INSERT INTO `area` VALUES ('1434', '370902', '泰山区', '370900');
INSERT INTO `area` VALUES ('1745', '420901', '市辖区', '420900');
INSERT INTO `area` VALUES ('1647', '411481', '永城市', '411400');
INSERT INTO `area` VALUES ('1147', '350104', '仓山区', '350100');
INSERT INTO `area` VALUES ('1681', '420101', '市辖区', '420100');
INSERT INTO `area` VALUES ('1020', '331127', '景宁畲族自治县', '331100');
INSERT INTO `area` VALUES ('1890', '431081', '资兴市', '431000');
INSERT INTO `area` VALUES ('1332', '361028', '资溪县', '361000');
INSERT INTO `area` VALUES ('1244', '360121', '南昌县', '360100');
INSERT INTO `area` VALUES ('1506', '410102', '中原区', '410100');
INSERT INTO `area` VALUES ('1717', '420525', '远安县', '420500');
INSERT INTO `area` VALUES ('1161', '350206', '湖里区', '350200');
INSERT INTO `area` VALUES ('1291', '360731', '于都县', '360700');
INSERT INTO `area` VALUES ('1493', '371625', '博兴县', '371600');
INSERT INTO `area` VALUES ('1734', '420684', '宜城市', '420600');
INSERT INTO `area` VALUES ('1620', '411222', '陕　县', '411200');
INSERT INTO `area` VALUES ('1491', '371623', '无棣县', '371600');
INSERT INTO `area` VALUES ('1345', '361129', '万年县', '361100');
INSERT INTO `area` VALUES ('1308', '360828', '万安县', '360800');
INSERT INTO `area` VALUES ('1407', '370701', '市辖区', '370700');
INSERT INTO `area` VALUES ('1947', '440222', '始兴县', '440200');
INSERT INTO `area` VALUES ('1207', '350629', '华安县', '350600');
INSERT INTO `area` VALUES ('1536', '410322', '孟津县', '410300');
INSERT INTO `area` VALUES ('1829', '430423', '衡山县', '430400');
INSERT INTO `area` VALUES ('1499', '371723', '成武县', '371700');
INSERT INTO `area` VALUES ('1894', '431121', '祁阳县', '431100');
INSERT INTO `area` VALUES ('1672', '411721', '西平县', '411700');
INSERT INTO `area` VALUES ('1779', '421281', '赤壁市', '421200');
INSERT INTO `area` VALUES ('1545', '410401', '市辖区', '410400');
INSERT INTO `area` VALUES ('1063', '340701', '市辖区', '340700');
INSERT INTO `area` VALUES ('1325', '361021', '南城县', '361000');
INSERT INTO `area` VALUES ('1746', '420902', '孝南区', '420900');
INSERT INTO `area` VALUES ('1302', '360822', '吉水县', '360800');
INSERT INTO `area` VALUES ('1828', '430422', '衡南县', '430400');
INSERT INTO `area` VALUES ('1215', '350725', '政和县', '350700');
INSERT INTO `area` VALUES ('1708', '420324', '竹溪县', '420300');
INSERT INTO `area` VALUES ('1835', '430502', '双清区', '430500');
INSERT INTO `area` VALUES ('1340', '361124', '铅山县', '361100');
INSERT INTO `area` VALUES ('1136', '341801', '市辖区', '341800');
INSERT INTO `area` VALUES ('1682', '420102', '江岸区', '420100');
INSERT INTO `area` VALUES ('1736', '420702', '梁子湖区', '420700');
INSERT INTO `area` VALUES ('1397', '370612', '牟平区', '370600');
INSERT INTO `area` VALUES ('1006', '331021', '玉环县', '331000');
INSERT INTO `area` VALUES ('1692', '420115', '江夏区', '420100');
INSERT INTO `area` VALUES ('1007', '331022', '三门县', '331000');
INSERT INTO `area` VALUES ('1119', '341502', '金安区', '341500');
INSERT INTO `area` VALUES ('1733', '420683', '枣阳市', '420600');
INSERT INTO `area` VALUES ('1787', '422825', '宣恩县', '422800');
INSERT INTO `area` VALUES ('1592', '410823', '武陟县', '410800');
INSERT INTO `area` VALUES ('1080', '341001', '市辖区', '341000');
INSERT INTO `area` VALUES ('1294', '360734', '寻乌县', '360700');
INSERT INTO `area` VALUES ('1718', '420526', '兴山县', '420500');
INSERT INTO `area` VALUES ('1168', '350304', '荔城区', '350300');
INSERT INTO `area` VALUES ('1833', '430482', '常宁市', '430400');
INSERT INTO `area` VALUES ('1690', '420113', '汉南区', '420100');
INSERT INTO `area` VALUES ('1738', '420704', '鄂城区', '420700');
INSERT INTO `area` VALUES ('1964', '440404', '金湾区', '440400');
INSERT INTO `area` VALUES ('1539', '410325', '嵩　县', '410300');
INSERT INTO `area` VALUES ('1312', '360901', '市辖区', '360900');
INSERT INTO `area` VALUES ('1753', '421001', '市辖区', '421000');
INSERT INTO `area` VALUES ('1377', '370306', '周村区', '370300');
INSERT INTO `area` VALUES ('1472', '371425', '齐河县', '371400');
INSERT INTO `area` VALUES ('1619', '411221', '渑池县', '411200');
INSERT INTO `area` VALUES ('1392', '370522', '利津县', '370500');
INSERT INTO `area` VALUES ('1102', '341222', '太和县', '341200');
INSERT INTO `area` VALUES ('1316', '360923', '上高县', '360900');
INSERT INTO `area` VALUES ('1836', '430503', '大祥区', '430500');
INSERT INTO `area` VALUES ('1588', '410804', '马村区', '410800');
INSERT INTO `area` VALUES ('1221', '350802', '新罗区', '350800');
INSERT INTO `area` VALUES ('1602', '410927', '台前县', '410900');
INSERT INTO `area` VALUES ('1256', '360321', '莲花县', '360300');
INSERT INTO `area` VALUES ('1220', '350801', '市辖区', '350800');
INSERT INTO `area` VALUES ('1825', '430408', '蒸湘区', '430400');
INSERT INTO `area` VALUES ('1226', '350825', '连城县', '350800');
INSERT INTO `area` VALUES ('1684', '420104', '乔口区', '420100');
INSERT INTO `area` VALUES ('1120', '341503', '裕安区', '341500');
INSERT INTO `area` VALUES ('1280', '360702', '章贡区', '360700');
INSERT INTO `area` VALUES ('1003', '331002', '椒江区', '331000');
INSERT INTO `area` VALUES ('1616', '411122', '临颍县', '411100');
INSERT INTO `area` VALUES ('1492', '371624', '沾化县', '371600');
INSERT INTO `area` VALUES ('1270', '360430', '彭泽县', '360400');
INSERT INTO `area` VALUES ('1180', '350428', '将乐县', '350400');
INSERT INTO `area` VALUES ('1743', '420822', '沙洋县', '420800');
INSERT INTO `area` VALUES ('2842', '610729', '留坝县', '610700');
INSERT INTO `area` VALUES ('2599', '530629', '威信县', '530600');
INSERT INTO `area` VALUES ('2201', '469003', '儋州市', '469000');
INSERT INTO `area` VALUES ('2186', '451402', '江洲区', '451400');
INSERT INTO `area` VALUES ('2044', '441781', '阳春市', '441700');
INSERT INTO `area` VALUES ('2047', '441821', '佛冈县', '441800');
INSERT INTO `area` VALUES ('2558', '530126', '石林彝族自治县', '530100');
INSERT INTO `area` VALUES ('2802', '610429', '旬邑县', '610400');
INSERT INTO `area` VALUES ('2238', '500227', '璧山县', '500100');
INSERT INTO `area` VALUES ('2829', '610630', '宜川县', '610600');
INSERT INTO `area` VALUES ('2467', '520181', '清镇市', '520100');
INSERT INTO `area` VALUES ('2754', '542623', '米林县', '542600');
INSERT INTO `area` VALUES ('2392', '511821', '名山县', '511800');
INSERT INTO `area` VALUES ('2266', '510114', '新都区', '510100');
INSERT INTO `area` VALUES ('2598', '530628', '彝良县', '530600');
INSERT INTO `area` VALUES ('2361', '511422', '彭山县', '511400');
INSERT INTO `area` VALUES ('2295', '510521', '泸　县', '510500');
INSERT INTO `area` VALUES ('2435', '513334', '理塘县', '513300');
INSERT INTO `area` VALUES ('2298', '510525', '古蔺县', '510500');
INSERT INTO `area` VALUES ('2848', '610823', '横山县', '610800');
INSERT INTO `area` VALUES ('2187', '451421', '扶绥县', '451400');
INSERT INTO `area` VALUES ('2246', '500235', '云阳县', '500100');
INSERT INTO `area` VALUES ('2220', '500103', '渝中区', '500100');
INSERT INTO `area` VALUES ('2357', '511381', '阆中市', '511300');
INSERT INTO `area` VALUES ('2455', '513436', '美姑县', '513400');
INSERT INTO `area` VALUES ('2287', '510403', '西　区', '510400');
INSERT INTO `area` VALUES ('2275', '510182', '彭州市', '510100');
INSERT INTO `area` VALUES ('2738', '542424', '聂荣县', '542400');
INSERT INTO `area` VALUES ('2653', '532624', '麻栗坡县', '532600');
INSERT INTO `area` VALUES ('2744', '542430', '尼玛县', '542400');
INSERT INTO `area` VALUES ('2321', '510822', '青川县', '510800');
INSERT INTO `area` VALUES ('2527', '522628', '锦屏县', '522600');
INSERT INTO `area` VALUES ('2786', '610327', '陇　县', '610300');
INSERT INTO `area` VALUES ('2130', '450701', '市辖区', '450700');
INSERT INTO `area` VALUES ('2763', '610111', '灞桥区', '610100');
INSERT INTO `area` VALUES ('2708', '542224', '桑日县', '542200');
INSERT INTO `area` VALUES ('2452', '513433', '冕宁县', '513400');
INSERT INTO `area` VALUES ('2242', '500231', '垫江县', '500100');
INSERT INTO `area` VALUES ('2358', '511401', '市辖区', '511400');
INSERT INTO `area` VALUES ('2447', '513428', '普格县', '513400');
INSERT INTO `area` VALUES ('2162', '451102', '八步区', '451100');
INSERT INTO `area` VALUES ('2485', '520381', '赤水市', '520300');
INSERT INTO `area` VALUES ('2269', '510122', '双流县', '510100');
INSERT INTO `area` VALUES ('2657', '532628', '富宁县', '532600');
INSERT INTO `area` VALUES ('2121', '450502', '海城区', '450500');
INSERT INTO `area` VALUES ('2846', '610821', '神木县', '610800');
INSERT INTO `area` VALUES ('2415', '513227', '小金县', '513200');
INSERT INTO `area` VALUES ('2247', '500236', '奉节县', '500100');
INSERT INTO `area` VALUES ('2856', '610831', '子洲县', '610800');
INSERT INTO `area` VALUES ('2333', '511024', '威远县', '511000');
INSERT INTO `area` VALUES ('2037', '441623', '连平县', '441600');
INSERT INTO `area` VALUES ('2258', '510101', '市辖区', '510100');
INSERT INTO `area` VALUES ('2363', '511424', '丹棱县', '511400');
INSERT INTO `area` VALUES ('2637', '532501', '个旧市', '532500');
INSERT INTO `area` VALUES ('2507', '522324', '晴隆县', '522300');
INSERT INTO `area` VALUES ('2832', '610701', '市辖区', '610700');
INSERT INTO `area` VALUES ('2740', '542426', '申扎县', '542400');
INSERT INTO `area` VALUES ('2470', '520221', '水城县', '520200');
INSERT INTO `area` VALUES ('2083', '450201', '市辖区', '450200');
INSERT INTO `area` VALUES ('2605', '530723', '华坪县', '530700');
INSERT INTO `area` VALUES ('2307', '510703', '涪城区', '510700');
INSERT INTO `area` VALUES ('2581', '530427', '新平彝族傣族自治县', '530400');
INSERT INTO `area` VALUES ('2434', '513333', '色达县', '513300');
INSERT INTO `area` VALUES ('2995', '632324', '河南蒙古族自治县', '632300');
INSERT INTO `area` VALUES ('2150', '451021', '田阳县', '451000');
INSERT INTO `area` VALUES ('2335', '511028', '隆昌县', '511000');
INSERT INTO `area` VALUES ('2033', '441601', '市辖区', '441600');
INSERT INTO `area` VALUES ('2211', '469033', '乐东黎族自治县', '469000');
INSERT INTO `area` VALUES ('2994', '632323', '泽库县', '632300');
INSERT INTO `area` VALUES ('2245', '500234', '开　县', '500100');
INSERT INTO `area` VALUES ('2789', '610330', '凤　县', '610300');
INSERT INTO `area` VALUES ('2550', '530103', '盘龙区', '530100');
INSERT INTO `area` VALUES ('2619', '530902', '临翔区', '530900');
INSERT INTO `area` VALUES ('2017', '441323', '惠东县', '441300');
INSERT INTO `area` VALUES ('2451', '513432', '喜德县', '513400');
INSERT INTO `area` VALUES ('2915', '620801', '市辖区', '620800');
INSERT INTO `area` VALUES ('2312', '510725', '梓潼县', '510700');
INSERT INTO `area` VALUES ('2344', '511129', '沐川县', '511100');
INSERT INTO `area` VALUES ('2952', '621223', '宕昌县', '621200');
INSERT INTO `area` VALUES ('2572', '530381', '宣威市', '530300');
INSERT INTO `area` VALUES ('2882', '620121', '永登县', '620100');
INSERT INTO `area` VALUES ('2399', '511901', '市辖区', '511900');
INSERT INTO `area` VALUES ('2216', '469038', '南沙群岛', '469000');
INSERT INTO `area` VALUES ('2144', '450922', '陆川县', '450900');
INSERT INTO `area` VALUES ('2325', '510903', '船山区', '510900');
INSERT INTO `area` VALUES ('2726', '542330', '仁布县', '542300');
INSERT INTO `area` VALUES ('2500', '522227', '德江县', '522200');
INSERT INTO `area` VALUES ('2728', '542332', '定结县', '542300');
INSERT INTO `area` VALUES ('2707', '542223', '贡嘎县', '542200');
INSERT INTO `area` VALUES ('2927', '620923', '肃北蒙古族自治县', '620900');
INSERT INTO `area` VALUES ('2126', '450602', '港口区', '450600');
INSERT INTO `area` VALUES ('2429', '513328', '甘孜县', '513300');
INSERT INTO `area` VALUES ('2009', '441225', '封开县', '441200');
INSERT INTO `area` VALUES ('2351', '511304', '嘉陵区', '511300');
INSERT INTO `area` VALUES ('2431', '513330', '德格县', '513300');
INSERT INTO `area` VALUES ('2720', '542324', '定日县', '542300');
INSERT INTO `area` VALUES ('2905', '620621', '民勤县', '620600');
INSERT INTO `area` VALUES ('2388', '511725', '渠　县', '511700');
INSERT INTO `area` VALUES ('2724', '542328', '谢通门县', '542300');
INSERT INTO `area` VALUES ('2566', '530322', '陆良县', '530300');
INSERT INTO `area` VALUES ('2340', '511113', '金口河区', '511100');
INSERT INTO `area` VALUES ('2666', '532926', '南涧彝族自治县', '532900');
INSERT INTO `area` VALUES ('2914', '620725', '山丹县', '620700');
INSERT INTO `area` VALUES ('2991', '632224', '刚察县', '632200');
INSERT INTO `area` VALUES ('2020', '441402', '梅江区', '441400');
INSERT INTO `area` VALUES ('2178', '451301', '市辖区', '451300');
INSERT INTO `area` VALUES ('2188', '451422', '宁明县', '451400');
INSERT INTO `area` VALUES ('2420', '513232', '若尔盖县', '513200');
INSERT INTO `area` VALUES ('2971', '623025', '玛曲县', '623000');
INSERT INTO `area` VALUES ('2249', '500238', '巫溪县', '500100');
INSERT INTO `area` VALUES ('2208', '469028', '临高县', '469000');
INSERT INTO `area` VALUES ('2285', '510401', '市辖区', '510400');
INSERT INTO `area` VALUES ('2649', '532532', '河口瑶族自治县', '532500');
INSERT INTO `area` VALUES ('2124', '450521', '合浦县', '450500');
INSERT INTO `area` VALUES ('2772', '610126', '高陵县', '610100');
INSERT INTO `area` VALUES ('2706', '542222', '扎囊县', '542200');
INSERT INTO `area` VALUES ('2088', '450221', '柳江县', '450200');
INSERT INTO `area` VALUES ('2815', '610528', '富平县', '610500');
INSERT INTO `area` VALUES ('2450', '513431', '昭觉县', '513400');
INSERT INTO `area` VALUES ('2816', '610581', '韩城市', '610500');
INSERT INTO `area` VALUES ('2075', '450108', '良庆区', '450100');
INSERT INTO `area` VALUES ('2222', '500105', '江北区', '500100');
INSERT INTO `area` VALUES ('2762', '610104', '莲湖区', '610100');
INSERT INTO `area` VALUES ('2154', '451025', '靖西县', '451000');
INSERT INTO `area` VALUES ('2685', '540101', '市辖区', '540100');
INSERT INTO `area` VALUES ('2219', '500102', '涪陵区', '500100');
INSERT INTO `area` VALUES ('2871', '611022', '丹凤县', '611000');
INSERT INTO `area` VALUES ('2495', '522222', '江口县', '522200');
INSERT INTO `area` VALUES ('2567', '530323', '师宗县', '530300');
INSERT INTO `area` VALUES ('2555', '530122', '晋宁县', '530100');
INSERT INTO `area` VALUES ('2268', '510121', '金堂县', '510100');
INSERT INTO `area` VALUES ('2184', '451381', '合山市', '451300');
INSERT INTO `area` VALUES ('2391', '511802', '雨城区', '511800');
INSERT INTO `area` VALUES ('2213', '469035', '保亭黎族苗族自治县', '469000');
INSERT INTO `area` VALUES ('2780', '610303', '金台区', '610300');
INSERT INTO `area` VALUES ('2939', '621027', '镇原县', '621000');
INSERT INTO `area` VALUES ('2232', '500115', '长寿区', '500100');
INSERT INTO `area` VALUES ('2824', '610625', '志丹县', '610600');
INSERT INTO `area` VALUES ('2436', '513335', '巴塘县', '513300');
INSERT INTO `area` VALUES ('2736', '542422', '嘉黎县', '542400');
INSERT INTO `area` VALUES ('2896', '620502', '秦城区', '620500');
INSERT INTO `area` VALUES ('2982', '632121', '平安县', '632100');
INSERT INTO `area` VALUES ('2059', '445202', '榕城区', '445200');
INSERT INTO `area` VALUES ('2693', '540127', '墨竹工卡县', '540100');
INSERT INTO `area` VALUES ('2417', '513229', '马尔康县', '513200');
INSERT INTO `area` VALUES ('2052', '441881', '英德市', '441800');
INSERT INTO `area` VALUES ('2902', '620525', '张家川回族自治县', '620500');
INSERT INTO `area` VALUES ('2304', '510682', '什邡市', '510600');
INSERT INTO `area` VALUES ('2172', '451225', '罗城仫佬族自治县', '451200');
INSERT INTO `area` VALUES ('2969', '623023', '舟曲县', '623000');
INSERT INTO `area` VALUES ('2155', '451026', '那坡县', '451000');
INSERT INTO `area` VALUES ('2681', '533325', '兰坪白族普米族自治县', '533300');
INSERT INTO `area` VALUES ('2283', '510321', '荣　县', '510300');
INSERT INTO `area` VALUES ('2359', '511402', '东坡区', '511400');
INSERT INTO `area` VALUES ('2043', '441723', '阳东县', '441700');
INSERT INTO `area` VALUES ('2620', '530921', '凤庆县', '530900');
INSERT INTO `area` VALUES ('2737', '542423', '比如县', '542400');
INSERT INTO `area` VALUES ('2205', '469025', '定安县', '469000');
INSERT INTO `area` VALUES ('2589', '530601', '市辖区', '530600');
INSERT INTO `area` VALUES ('2385', '511722', '宣汉县', '511700');
INSERT INTO `area` VALUES ('2389', '511781', '万源市', '511700');
INSERT INTO `area` VALUES ('2350', '511303', '高坪区', '511300');
INSERT INTO `area` VALUES ('2593', '530623', '盐津县', '530600');
INSERT INTO `area` VALUES ('2987', '632128', '循化撒拉族自治县', '632100');
INSERT INTO `area` VALUES ('2505', '522322', '兴仁县', '522300');
INSERT INTO `area` VALUES ('2368', '511522', '南溪县', '511500');
INSERT INTO `area` VALUES ('2859', '610921', '汉阴县', '610900');
INSERT INTO `area` VALUES ('2884', '620123', '榆中县', '620100');
INSERT INTO `area` VALUES ('2463', '520114', '小河区', '520100');
INSERT INTO `area` VALUES ('2705', '542221', '乃东县', '542200');
INSERT INTO `area` VALUES ('2393', '511822', '荥经县', '511800');
INSERT INTO `area` VALUES ('2868', '611001', '市辖区', '611000');
INSERT INTO `area` VALUES ('2679', '533323', '福贡县', '533300');
INSERT INTO `area` VALUES ('2152', '451023', '平果县', '451000');
INSERT INTO `area` VALUES ('2085', '450203', '鱼峰区', '450200');
INSERT INTO `area` VALUES ('2021', '441421', '梅　县', '441400');
INSERT INTO `area` VALUES ('2460', '520111', '花溪区', '520100');
INSERT INTO `area` VALUES ('2469', '520203', '六枝特区', '520200');
INSERT INTO `area` VALUES ('2326', '510904', '安居区', '510900');
INSERT INTO `area` VALUES ('2347', '511181', '峨眉山市', '511100');
INSERT INTO `area` VALUES ('2019', '441401', '市辖区', '441400');
INSERT INTO `area` VALUES ('2395', '511824', '石棉县', '511800');
INSERT INTO `area` VALUES ('2224', '500107', '九龙坡区', '500100');
INSERT INTO `area` VALUES ('2579', '530425', '易门县', '530400');
INSERT INTO `area` VALUES ('2722', '542326', '拉孜县', '542300');
INSERT INTO `area` VALUES ('2975', '630102', '城东区', '630100');
INSERT INTO `area` VALUES ('2711', '542227', '措美县', '542200');
INSERT INTO `area` VALUES ('2169', '451222', '天峨县', '451200');
INSERT INTO `area` VALUES ('2318', '510811', '元坝区', '510800');
INSERT INTO `area` VALUES ('2302', '510626', '罗江县', '510600');
INSERT INTO `area` VALUES ('2022', '441422', '大埔县', '441400');
INSERT INTO `area` VALUES ('2602', '530702', '古城区', '530700');
INSERT INTO `area` VALUES ('2376', '511601', '市辖区', '511600');
INSERT INTO `area` VALUES ('2482', '520328', '湄潭县', '520300');
INSERT INTO `area` VALUES ('2597', '530627', '镇雄县', '530600');
INSERT INTO `area` VALUES ('2767', '610115', '临潼区', '610100');
INSERT INTO `area` VALUES ('2544', '522729', '长顺县', '522700');
INSERT INTO `area` VALUES ('2559', '530127', '嵩明县', '530100');
INSERT INTO `area` VALUES ('2926', '620922', '安西县', '620900');
INSERT INTO `area` VALUES ('2135', '450801', '市辖区', '450800');
INSERT INTO `area` VALUES ('2082', '450127', '横　县', '450100');
INSERT INTO `area` VALUES ('2756', '542625', '波密县', '542600');
INSERT INTO `area` VALUES ('2342', '511124', '井研县', '511100');
INSERT INTO `area` VALUES ('2988', '632221', '门源回族自治县', '632200');
INSERT INTO `area` VALUES ('2716', '542233', '浪卡子县', '542200');
INSERT INTO `area` VALUES ('2439', '513338', '得荣县', '513300');
INSERT INTO `area` VALUES ('2961', '622923', '永靖县', '622900');
INSERT INTO `area` VALUES ('2209', '469030', '白沙黎族自治县', '469000');
INSERT INTO `area` VALUES ('2596', '530626', '绥江县', '530600');
INSERT INTO `area` VALUES ('2108', '450329', '资源县', '450300');
INSERT INTO `area` VALUES ('2207', '469027', '澄迈县', '469000');
INSERT INTO `area` VALUES ('2364', '511425', '青神县', '511400');
INSERT INTO `area` VALUES ('2281', '510304', '大安区', '510300');
INSERT INTO `area` VALUES ('2942', '621121', '通渭县', '621100');
INSERT INTO `area` VALUES ('2465', '520122', '息烽县', '520100');
INSERT INTO `area` VALUES ('2410', '513222', '理　县', '513200');
INSERT INTO `area` VALUES ('2810', '610523', '大荔县', '610500');
INSERT INTO `area` VALUES ('2228', '500111', '双桥区', '500100');
INSERT INTO `area` VALUES ('2528', '522629', '剑河县', '522600');
INSERT INTO `area` VALUES ('2425', '513324', '九龙县', '513300');
INSERT INTO `area` VALUES ('2464', '520121', '开阳县', '520100');
INSERT INTO `area` VALUES ('2098', '450305', '七星区', '450300');
INSERT INTO `area` VALUES ('2139', '450821', '平南县', '450800');
INSERT INTO `area` VALUES ('2937', '621025', '正宁县', '621000');
INSERT INTO `area` VALUES ('2084', '450202', '城中区', '450200');
INSERT INTO `area` VALUES ('2893', '620422', '会宁县', '620400');
INSERT INTO `area` VALUES ('2203', '469006', '万宁市', '469000');
INSERT INTO `area` VALUES ('2061', '445222', '揭西县', '445200');
INSERT INTO `area` VALUES ('2288', '510411', '仁和区', '510400');
INSERT INTO `area` VALUES ('2104', '450325', '兴安县', '450300');
INSERT INTO `area` VALUES ('2146', '450924', '兴业县', '450900');
INSERT INTO `area` VALUES ('2912', '620723', '临泽县', '620700');
INSERT INTO `area` VALUES ('2936', '621024', '合水县', '621000');
INSERT INTO `area` VALUES ('2404', '512001', '市辖区', '512000');
INSERT INTO `area` VALUES ('2749', '542525', '革吉县', '542500');
INSERT INTO `area` VALUES ('2132', '450703', '钦北区', '450700');
INSERT INTO `area` VALUES ('2564', '530302', '麒麟区', '530300');
INSERT INTO `area` VALUES ('2338', '511111', '沙湾区', '511100');
INSERT INTO `area` VALUES ('2827', '610628', '富　县', '610600');
INSERT INTO `area` VALUES ('2820', '610621', '延长县', '610600');
INSERT INTO `area` VALUES ('2120', '450501', '市辖区', '450500');
INSERT INTO `area` VALUES ('2606', '530724', '宁蒗彝族自治县', '530700');
INSERT INTO `area` VALUES ('2973', '623027', '夏河县', '623000');
INSERT INTO `area` VALUES ('2327', '510921', '蓬溪县', '510900');
INSERT INTO `area` VALUES ('2445', '513426', '会东县', '513400');
INSERT INTO `area` VALUES ('2974', '630101', '市辖区', '630100');
INSERT INTO `area` VALUES ('2648', '532531', '绿春县', '532500');
INSERT INTO `area` VALUES ('2284', '510322', '富顺县', '510300');
INSERT INTO `area` VALUES ('2956', '621227', '徽　县', '621200');
INSERT INTO `area` VALUES ('2334', '511025', '资中县', '511000');
INSERT INTO `area` VALUES ('2324', '510901', '市辖区', '510900');
INSERT INTO `area` VALUES ('2128', '450621', '上思县', '450600');
INSERT INTO `area` VALUES ('2411', '513223', '茂　县', '513200');
INSERT INTO `area` VALUES ('2661', '532901', '大理市', '532900');
INSERT INTO `area` VALUES ('2933', '621021', '庆城县', '621000');
INSERT INTO `area` VALUES ('2160', '451031', '隆林各族自治县', '451000');
INSERT INTO `area` VALUES ('2996', '632521', '共和县', '632500');
INSERT INTO `area` VALUES ('2193', '460101', '市辖区', '460100');
INSERT INTO `area` VALUES ('2759', '610101', '市辖区', '610100');
INSERT INTO `area` VALUES ('2513', '522422', '大方县', '522400');
INSERT INTO `area` VALUES ('2049', '441825', '连山壮族瑶族自治县', '441800');
INSERT INTO `area` VALUES ('2636', '532331', '禄丰县', '532300');
INSERT INTO `area` VALUES ('2910', '620721', '肃南裕固族自治县', '620700');
INSERT INTO `area` VALUES ('2248', '500237', '巫山县', '500100');
INSERT INTO `area` VALUES ('2156', '451027', '凌云县', '451000');
INSERT INTO `area` VALUES ('2784', '610324', '扶风县', '610300');
INSERT INTO `area` VALUES ('2966', '623001', '合作市', '623000');
INSERT INTO `area` VALUES ('2855', '610830', '清涧县', '610800');
INSERT INTO `area` VALUES ('2214', '469036', '琼中黎族苗族自治县', '469000');
INSERT INTO `area` VALUES ('2611', '530823', '景东彝族自治县', '530800');
INSERT INTO `area` VALUES ('2852', '610827', '米脂县', '610800');
INSERT INTO `area` VALUES ('2723', '542327', '昂仁县', '542300');
INSERT INTO `area` VALUES ('2301', '510623', '中江县', '510600');
INSERT INTO `area` VALUES ('2929', '620981', '玉门市', '620900');
INSERT INTO `area` VALUES ('2677', '533124', '陇川县', '533100');
INSERT INTO `area` VALUES ('2042', '441721', '阳西县', '441700');
INSERT INTO `area` VALUES ('2110', '450331', '荔蒲县', '450300');
INSERT INTO `area` VALUES ('2317', '510802', '市中区', '510800');
INSERT INTO `area` VALUES ('2796', '610423', '泾阳县', '610400');
INSERT INTO `area` VALUES ('2755', '542624', '墨脱县', '542600');
INSERT INTO `area` VALUES ('2931', '621001', '市辖区', '621000');
INSERT INTO `area` VALUES ('2473', '520302', '红花岗区', '520300');
INSERT INTO `area` VALUES ('2520', '522601', '凯里市', '522600');
INSERT INTO `area` VALUES ('2360', '511421', '仁寿县', '511400');
INSERT INTO `area` VALUES ('2119', '450481', '岑溪市', '450400');
INSERT INTO `area` VALUES ('2480', '520326', '务川仡佬族苗族自治县', '520300');
INSERT INTO `area` VALUES ('2352', '511321', '南部县', '511300');
INSERT INTO `area` VALUES ('2888', '620321', '永昌县', '620300');
INSERT INTO `area` VALUES ('2164', '451122', '钟山县', '451100');
INSERT INTO `area` VALUES ('2379', '511622', '武胜县', '511600');
INSERT INTO `area` VALUES ('2702', '542129', '芒康县', '542100');
INSERT INTO `area` VALUES ('2590', '530602', '昭阳区', '530600');
INSERT INTO `area` VALUES ('2491', '520423', '镇宁布依族苗族自治县', '520400');
INSERT INTO `area` VALUES ('2062', '445224', '惠来县', '445200');
INSERT INTO `area` VALUES ('2623', '530924', '镇康县', '530900');
INSERT INTO `area` VALUES ('2015', '441303', '惠阳区', '441300');
INSERT INTO `area` VALUES ('2131', '450702', '钦南区', '450700');
INSERT INTO `area` VALUES ('2920', '620824', '华亭县', '620800');
INSERT INTO `area` VALUES ('2212', '469034', '陵水黎族自治县', '469000');
INSERT INTO `area` VALUES ('2831', '610632', '黄陵县', '610600');
INSERT INTO `area` VALUES ('2173', '451226', '环江毛南族自治县', '451200');
INSERT INTO `area` VALUES ('2461', '520112', '乌当区', '520100');
INSERT INTO `area` VALUES ('2865', '610927', '镇坪县', '610900');
INSERT INTO `area` VALUES ('2618', '530901', '市辖区', '530900');
INSERT INTO `area` VALUES ('2277', '510184', '崇州市', '510100');
INSERT INTO `area` VALUES ('2234', '500223', '潼南县', '500100');
INSERT INTO `area` VALUES ('2403', '511923', '平昌县', '511900');
INSERT INTO `area` VALUES ('2386', '511723', '开江县', '511700');
INSERT INTO `area` VALUES ('2166', '451201', '市辖区', '451200');
INSERT INTO `area` VALUES ('2337', '511102', '市中区', '511100');
INSERT INTO `area` VALUES ('2428', '513327', '炉霍县', '513300');
INSERT INTO `area` VALUES ('2422', '513321', '康定县', '513300');
INSERT INTO `area` VALUES ('2309', '510722', '三台县', '510700');
INSERT INTO `area` VALUES ('2058', '445201', '市辖区', '445200');
INSERT INTO `area` VALUES ('2667', '532927', '巍山彝族回族自治县', '532900');
INSERT INTO `area` VALUES ('2486', '520382', '仁怀市', '520300');
INSERT INTO `area` VALUES ('2471', '520222', '盘　县', '520200');
INSERT INTO `area` VALUES ('2141', '450901', '市辖区', '450900');
INSERT INTO `area` VALUES ('2972', '623026', '碌曲县', '623000');
INSERT INTO `area` VALUES ('2957', '621228', '两当县', '621200');
INSERT INTO `area` VALUES ('2190', '451424', '大新县', '451400');
INSERT INTO `area` VALUES ('2065', '445302', '云城区', '445300');
INSERT INTO `area` VALUES ('2680', '533324', '贡山独龙族怒族自治县', '533300');
INSERT INTO `area` VALUES ('2967', '623021', '临潭县', '623000');
INSERT INTO `area` VALUES ('2289', '510421', '米易县', '510400');
INSERT INTO `area` VALUES ('2367', '511521', '宜宾县', '511500');
INSERT INTO `area` VALUES ('2215', '469037', '西沙群岛', '469000');
INSERT INTO `area` VALUES ('2921', '620825', '庄浪县', '620800');
INSERT INTO `area` VALUES ('2825', '610626', '吴旗县', '610600');
INSERT INTO `area` VALUES ('2778', '610301', '市辖区', '610300');
INSERT INTO `area` VALUES ('2328', '510922', '射洪县', '510900');
INSERT INTO `area` VALUES ('2170', '451223', '凤山县', '451200');
INSERT INTO `area` VALUES ('2797', '610424', '乾　县', '610400');
INSERT INTO `area` VALUES ('2114', '450404', '蝶山区', '450400');
INSERT INTO `area` VALUES ('2106', '450327', '灌阳县', '450300');
INSERT INTO `area` VALUES ('2769', '610122', '蓝田县', '610100');
INSERT INTO `area` VALUES ('2244', '500233', '忠　县', '500100');
INSERT INTO `area` VALUES ('2074', '450107', '西乡塘区', '450100');
INSERT INTO `area` VALUES ('2953', '621224', '康　县', '621200');
INSERT INTO `area` VALUES ('2853', '610828', '佳　县', '610800');
INSERT INTO `area` VALUES ('2941', '621102', '安定区', '621100');
INSERT INTO `area` VALUES ('2142', '450902', '玉州区', '450900');
INSERT INTO `area` VALUES ('2574', '530402', '红塔区', '530400');
INSERT INTO `area` VALUES ('2355', '511324', '仪陇县', '511300');
INSERT INTO `area` VALUES ('2757', '542626', '察隅县', '542600');
INSERT INTO `area` VALUES ('2901', '620524', '武山县', '620500');
INSERT INTO `area` VALUES ('2793', '610403', '杨凌区', '610400');
INSERT INTO `area` VALUES ('2604', '530722', '永胜县', '530700');
INSERT INTO `area` VALUES ('2143', '450921', '容　县', '450900');
INSERT INTO `area` VALUES ('2616', '530828', '澜沧拉祜族自治县', '530800');
INSERT INTO `area` VALUES ('2656', '532627', '广南县', '532600');
INSERT INTO `area` VALUES ('2695', '542122', '江达县', '542100');
INSERT INTO `area` VALUES ('2523', '522624', '三穗县', '522600');
INSERT INTO `area` VALUES ('2522', '522623', '施秉县', '522600');
INSERT INTO `area` VALUES ('2310', '510723', '盐亭县', '510700');
INSERT INTO `area` VALUES ('2286', '510402', '东　区', '510400');
INSERT INTO `area` VALUES ('2660', '532823', '勐腊县', '532800');
INSERT INTO `area` VALUES ('2006', '441203', '鼎湖区', '441200');
INSERT INTO `area` VALUES ('2622', '530923', '永德县', '530900');
INSERT INTO `area` VALUES ('2886', '620301', '市辖区', '620300');
INSERT INTO `area` VALUES ('2809', '610522', '潼关县', '610500');
INSERT INTO `area` VALUES ('2631', '532325', '姚安县', '532300');
INSERT INTO `area` VALUES ('2764', '610112', '未央区', '610100');
INSERT INTO `area` VALUES ('2346', '511133', '马边彝族自治县', '511100');
INSERT INTO `area` VALUES ('2696', '542123', '贡觉县', '542100');
INSERT INTO `area` VALUES ('2990', '632223', '海晏县', '632200');
INSERT INTO `area` VALUES ('2595', '530625', '永善县', '530600');
INSERT INTO `area` VALUES ('2798', '610425', '礼泉县', '610400');
INSERT INTO `area` VALUES ('2382', '511701', '市辖区', '511700');
INSERT INTO `area` VALUES ('2444', '513425', '会理县', '513400');
INSERT INTO `area` VALUES ('2907', '620623', '天祝藏族自治县', '620600');
INSERT INTO `area` VALUES ('2869', '611002', '商州区', '611000');
INSERT INTO `area` VALUES ('2274', '510181', '都江堰市', '510100');
INSERT INTO `area` VALUES ('2018', '441324', '龙门县', '441300');
INSERT INTO `area` VALUES ('2607', '530801', '市辖区', '530800');
INSERT INTO `area` VALUES ('2176', '451229', '大化瑶族自治县', '451200');
INSERT INTO `area` VALUES ('2456', '513437', '雷波县', '513400');
INSERT INTO `area` VALUES ('2748', '542524', '日土县', '542500');
INSERT INTO `area` VALUES ('2489', '520421', '平坝县', '520400');
INSERT INTO `area` VALUES ('2111', '450332', '恭城瑶族自治县', '450300');
INSERT INTO `area` VALUES ('2709', '542225', '琼结县', '542200');
INSERT INTO `area` VALUES ('2887', '620302', '金川区', '620300');
INSERT INTO `area` VALUES ('2381', '511681', '华莹市', '511600');
INSERT INTO `area` VALUES ('2704', '542133', '边坝县', '542100');
INSERT INTO `area` VALUES ('2267', '510115', '温江区', '510100');
INSERT INTO `area` VALUES ('2384', '511721', '达　县', '511700');
INSERT INTO `area` VALUES ('2556', '530124', '富民县', '530100');
INSERT INTO `area` VALUES ('2714', '542231', '隆子县', '542200');
INSERT INTO `area` VALUES ('2063', '445281', '普宁市', '445200');
INSERT INTO `area` VALUES ('2406', '512021', '安岳县', '512000');
INSERT INTO `area` VALUES ('2332', '511011', '东兴区', '511000');
INSERT INTO `area` VALUES ('2997', '632522', '同德县', '632500');
INSERT INTO `area` VALUES ('2712', '542228', '洛扎县', '542200');
INSERT INTO `area` VALUES ('2770', '610124', '周至县', '610100');
INSERT INTO `area` VALUES ('2430', '513329', '新龙县', '513300');
INSERT INTO `area` VALUES ('2932', '621002', '西峰区', '621000');
INSERT INTO `area` VALUES ('2719', '542323', '江孜县', '542300');
INSERT INTO `area` VALUES ('2872', '611023', '商南县', '611000');
INSERT INTO `area` VALUES ('2478', '520324', '正安县', '520300');
INSERT INTO `area` VALUES ('2161', '451101', '市辖区', '451100');
INSERT INTO `area` VALUES ('2828', '610629', '洛川县', '610600');
INSERT INTO `area` VALUES ('2092', '450225', '融水苗族自治县', '450200');
INSERT INTO `area` VALUES ('2204', '469007', '东方市', '469000');
INSERT INTO `area` VALUES ('2535', '522636', '丹寨县', '522600');
INSERT INTO `area` VALUES ('2179', '451302', '兴宾区', '451300');
INSERT INTO `area` VALUES ('2541', '522726', '独山县', '522700');
INSERT INTO `area` VALUES ('2800', '610427', '彬　县', '610400');
INSERT INTO `area` VALUES ('2345', '511132', '峨边彝族自治县', '511100');
INSERT INTO `area` VALUES ('2962', '622924', '广河县', '622900');
INSERT INTO `area` VALUES ('2906', '620622', '古浪县', '620600');
INSERT INTO `area` VALUES ('2498', '522225', '思南县', '522200');
INSERT INTO `area` VALUES ('2867', '610929', '白河县', '610900');
INSERT INTO `area` VALUES ('2472', '520301', '市辖区', '520300');
INSERT INTO `area` VALUES ('2200', '469002', '琼海市', '469000');
INSERT INTO `area` VALUES ('2970', '623024', '迭部县', '623000');
INSERT INTO `area` VALUES ('2734', '542338', '岗巴县', '542300');
INSERT INTO `area` VALUES ('2913', '620724', '高台县', '620700');
INSERT INTO `area` VALUES ('2183', '451324', '金秀瑶族自治县', '451300');
INSERT INTO `area` VALUES ('2412', '513224', '松潘县', '513200');
INSERT INTO `area` VALUES ('2691', '540125', '堆龙德庆县', '540100');
INSERT INTO `area` VALUES ('2880', '620105', '安宁区', '620100');
INSERT INTO `area` VALUES ('2153', '451024', '德保县', '451000');
INSERT INTO `area` VALUES ('2673', '533102', '瑞丽市', '533100');
INSERT INTO `area` VALUES ('2643', '532526', '弥勒县', '532500');
INSERT INTO `area` VALUES ('2231', '500114', '黔江区', '500100');
INSERT INTO `area` VALUES ('2959', '622921', '临夏县', '622900');
INSERT INTO `area` VALUES ('2652', '532623', '西畴县', '532600');
INSERT INTO `area` VALUES ('2221', '500104', '大渡口区', '500100');
INSERT INTO `area` VALUES ('2801', '610428', '长武县', '610400');
INSERT INTO `area` VALUES ('2538', '522722', '荔波县', '522700');
INSERT INTO `area` VALUES ('2362', '511423', '洪雅县', '511400');
INSERT INTO `area` VALUES ('2794', '610404', '渭城区', '610400');
INSERT INTO `area` VALUES ('2448', '513429', '布拖县', '513400');
INSERT INTO `area` VALUES ('2459', '520103', '云岩区', '520100');
INSERT INTO `area` VALUES ('2585', '530521', '施甸县', '530500');
INSERT INTO `area` VALUES ('2151', '451022', '田东县', '451000');
INSERT INTO `area` VALUES ('2168', '451221', '南丹县', '451200');
INSERT INTO `area` VALUES ('2127', '450603', '防城区', '450600');
INSERT INTO `area` VALUES ('2409', '513221', '汶川县', '513200');
INSERT INTO `area` VALUES ('2079', '450124', '马山县', '450100');
INSERT INTO `area` VALUES ('2115', '450405', '长洲区', '450400');
INSERT INTO `area` VALUES ('2878', '620103', '七里河区', '620100');
INSERT INTO `area` VALUES ('2515', '522424', '金沙县', '522400');
INSERT INTO `area` VALUES ('2493', '520425', '紫云苗族布依族自治县', '520400');
INSERT INTO `area` VALUES ('2371', '511525', '高　县', '511500');
INSERT INTO `area` VALUES ('2989', '632222', '祁连县', '632200');
INSERT INTO `area` VALUES ('2308', '510704', '游仙区', '510700');
INSERT INTO `area` VALUES ('2552', '530112', '西山区', '530100');
INSERT INTO `area` VALUES ('2694', '542121', '昌都县', '542100');
INSERT INTO `area` VALUES ('2837', '610724', '西乡县', '610700');
INSERT INTO `area` VALUES ('2443', '513424', '德昌县', '513400');
INSERT INTO `area` VALUES ('2069', '445381', '罗定市', '445300');
INSERT INTO `area` VALUES ('2315', '510781', '江油市', '510700');
INSERT INTO `area` VALUES ('2628', '532322', '双柏县', '532300');
INSERT INTO `area` VALUES ('2008', '441224', '怀集县', '441200');
INSERT INTO `area` VALUES ('2785', '610326', '眉　县', '610300');
INSERT INTO `area` VALUES ('2583', '530501', '市辖区', '530500');
INSERT INTO `area` VALUES ('2654', '532625', '马关县', '532600');
INSERT INTO `area` VALUES ('2413', '513225', '九寨沟县', '513200');
INSERT INTO `area` VALUES ('2532', '522633', '从江县', '522600');
INSERT INTO `area` VALUES ('2858', '610902', '汉滨区', '610900');
INSERT INTO `area` VALUES ('2548', '530101', '市辖区', '530100');
INSERT INTO `area` VALUES ('2518', '522427', '威宁彝族回族苗族自治县', '522400');
INSERT INTO `area` VALUES ('2253', '500243', '彭水苗族土家族自治县', '500100');
INSERT INTO `area` VALUES ('2296', '510522', '合江县', '510500');
INSERT INTO `area` VALUES ('2993', '632322', '尖扎县', '632300');
INSERT INTO `area` VALUES ('2817', '610582', '华阴市', '610500');
INSERT INTO `area` VALUES ('2330', '511001', '市辖区', '511000');
INSERT INTO `area` VALUES ('2536', '522701', '都匀市', '522700');
INSERT INTO `area` VALUES ('2035', '441621', '紫金县', '441600');
INSERT INTO `area` VALUES ('2533', '522634', '雷山县', '522600');
INSERT INTO `area` VALUES ('2481', '520327', '凤冈县', '520300');
INSERT INTO `area` VALUES ('2610', '530822', '墨江哈尼族自治县', '530800');
INSERT INTO `area` VALUES ('2909', '620702', '甘州区', '620700');
INSERT INTO `area` VALUES ('2671', '532931', '剑川县', '532900');
INSERT INTO `area` VALUES ('2838', '610725', '勉　县', '610700');
INSERT INTO `area` VALUES ('2276', '510183', '邛崃市', '510100');
INSERT INTO `area` VALUES ('2615', '530827', '孟连傣族拉祜族佤族自治县', '530800');
INSERT INTO `area` VALUES ('2904', '620602', '凉州区', '620600');
INSERT INTO `area` VALUES ('2908', '620701', '市辖区', '620700');
INSERT INTO `area` VALUES ('2999', '632524', '兴海县', '632500');
INSERT INTO `area` VALUES ('2625', '530926', '耿马傣族佤族自治县', '530900');
INSERT INTO `area` VALUES ('2196', '460107', '琼山区', '460100');
INSERT INTO `area` VALUES ('2294', '510504', '龙马潭区', '510500');
INSERT INTO `area` VALUES ('2223', '500106', '沙坪坝区', '500100');
INSERT INTO `area` VALUES ('2510', '522327', '册亨县', '522300');
INSERT INTO `area` VALUES ('2543', '522728', '罗甸县', '522700');
INSERT INTO `area` VALUES ('2091', '450224', '融安县', '450200');
INSERT INTO `area` VALUES ('2742', '542428', '班戈县', '542400');
INSERT INTO `area` VALUES ('2958', '622901', '临夏市', '622900');
INSERT INTO `area` VALUES ('2378', '511621', '岳池县', '511600');
INSERT INTO `area` VALUES ('2540', '522725', '瓮安县', '522700');
INSERT INTO `area` VALUES ('2125', '450601', '市辖区', '450600');
INSERT INTO `area` VALUES ('2582', '530428', '元江哈尼族彝族傣族自治县', '530400');
INSERT INTO `area` VALUES ('2630', '532324', '南华县', '532300');
INSERT INTO `area` VALUES ('2890', '620402', '白银区', '620400');
INSERT INTO `area` VALUES ('2064', '445301', '市辖区', '445300');
INSERT INTO `area` VALUES ('2387', '511724', '大竹县', '511700');
INSERT INTO `area` VALUES ('2418', '513230', '壤塘县', '513200');
INSERT INTO `area` VALUES ('2964', '622926', '东乡族自治县', '622900');
INSERT INTO `area` VALUES ('2965', '622927', '积石山保安族东乡族撒拉族自治县', '622900');
INSERT INTO `area` VALUES ('2265', '510113', '青白江区', '510100');
INSERT INTO `area` VALUES ('2847', '610822', '府谷县', '610800');
INSERT INTO `area` VALUES ('2674', '533103', '潞西市', '533100');
INSERT INTO `area` VALUES ('2621', '530922', '云　县', '530900');
INSERT INTO `area` VALUES ('2370', '511524', '长宁县', '511500');
INSERT INTO `area` VALUES ('2468', '520201', '钟山区', '520200');
INSERT INTO `area` VALUES ('2225', '500108', '南岸区', '500100');
INSERT INTO `area` VALUES ('2545', '522730', '龙里县', '522700');
INSERT INTO `area` VALUES ('2664', '532924', '宾川县', '532900');
INSERT INTO `area` VALUES ('2650', '532621', '文山县', '532600');
INSERT INTO `area` VALUES ('2678', '533321', '泸水县', '533300');
INSERT INTO `area` VALUES ('2504', '522301', '兴义市', '522300');
INSERT INTO `area` VALUES ('2841', '610728', '镇巴县', '610700');
INSERT INTO `area` VALUES ('2549', '530102', '五华区', '530100');
INSERT INTO `area` VALUES ('2105', '450326', '永福县', '450300');
INSERT INTO `area` VALUES ('2873', '611024', '山阳县', '611000');
INSERT INTO `area` VALUES ('2013', '441301', '市辖区', '441300');
INSERT INTO `area` VALUES ('2731', '542335', '吉隆县', '542300');
INSERT INTO `area` VALUES ('2442', '513423', '盐源县', '513400');
INSERT INTO `area` VALUES ('2565', '530321', '马龙县', '530300');
INSERT INTO `area` VALUES ('2592', '530622', '巧家县', '530600');
INSERT INTO `area` VALUES ('2578', '530424', '华宁县', '530400');
INSERT INTO `area` VALUES ('2134', '450722', '浦北县', '450700');
INSERT INTO `area` VALUES ('2979', '630121', '大通回族土族自治县', '630100');
INSERT INTO `area` VALUES ('2508', '522325', '贞丰县', '522300');
INSERT INTO `area` VALUES ('2014', '441302', '惠城区', '441300');
INSERT INTO `area` VALUES ('2329', '510923', '大英县', '510900');
INSERT INTO `area` VALUES ('2408', '512081', '简阳市', '512000');
INSERT INTO `area` VALUES ('2833', '610702', '汉台区', '610700');
INSERT INTO `area` VALUES ('2850', '610825', '定边县', '610800');
INSERT INTO `area` VALUES ('2733', '542337', '萨嘎县', '542300');
INSERT INTO `area` VALUES ('2466', '520123', '修文县', '520100');
INSERT INTO `area` VALUES ('2426', '513325', '雅江县', '513300');
INSERT INTO `area` VALUES ('2320', '510821', '旺苍县', '510800');
INSERT INTO `area` VALUES ('2343', '511126', '夹江县', '511100');
INSERT INTO `area` VALUES ('2895', '620501', '市辖区', '620500');
INSERT INTO `area` VALUES ('2788', '610329', '麟游县', '610300');
INSERT INTO `area` VALUES ('2571', '530328', '沾益县', '530300');
INSERT INTO `area` VALUES ('2727', '542331', '康马县', '542300');
INSERT INTO `area` VALUES ('2349', '511302', '顺庆区', '511300');
INSERT INTO `area` VALUES ('2521', '522622', '黄平县', '522600');
INSERT INTO `area` VALUES ('2760', '610102', '新城区', '610100');
INSERT INTO `area` VALUES ('2743', '542429', '巴青县', '542400');
INSERT INTO `area` VALUES ('2864', '610926', '平利县', '610900');
INSERT INTO `area` VALUES ('2027', '441481', '兴宁市', '441400');
INSERT INTO `area` VALUES ('2745', '542521', '普兰县', '542500');
INSERT INTO `area` VALUES ('2844', '610801', '市辖区', '610800');
INSERT INTO `area` VALUES ('2446', '513427', '宁南县', '513400');
INSERT INTO `area` VALUES ('2761', '610103', '碑林区', '610100');
INSERT INTO `area` VALUES ('2885', '620201', '市辖区', '620200');
INSERT INTO `area` VALUES ('2806', '610501', '市辖区', '610500');
INSERT INTO `area` VALUES ('2374', '511528', '兴文县', '511500');
INSERT INTO `area` VALUES ('2843', '610730', '佛坪县', '610700');
INSERT INTO `area` VALUES ('2774', '610202', '王益区', '610200');
INSERT INTO `area` VALUES ('2235', '500224', '铜梁县', '500100');
INSERT INTO `area` VALUES ('2292', '510502', '江阳区', '510500');
INSERT INTO `area` VALUES ('2419', '513231', '阿坝县', '513200');
INSERT INTO `area` VALUES ('2023', '441423', '丰顺县', '441400');
INSERT INTO `area` VALUES ('2542', '522727', '平塘县', '522700');
INSERT INTO `area` VALUES ('3000', '632525', '贵南县', '632500');
INSERT INTO `area` VALUES ('2938', '621026', '宁　县', '621000');
INSERT INTO `area` VALUES ('2260', '510105', '青羊区', '510100');
INSERT INTO `area` VALUES ('2502', '522229', '松桃苗族自治县', '522200');
INSERT INTO `area` VALUES ('2874', '611025', '镇安县', '611000');
INSERT INTO `area` VALUES ('2377', '511602', '广安区', '511600');
INSERT INTO `area` VALUES ('2646', '532529', '红河县', '532500');
INSERT INTO `area` VALUES ('2100', '450321', '阳朔县', '450300');
INSERT INTO `area` VALUES ('2055', '445102', '湘桥区', '445100');
INSERT INTO `area` VALUES ('2663', '532923', '祥云县', '532900');
INSERT INTO `area` VALUES ('2181', '451322', '象州县', '451300');
INSERT INTO `area` VALUES ('2725', '542329', '白朗县', '542300');
INSERT INTO `area` VALUES ('2721', '542325', '萨迦县', '542300');
INSERT INTO `area` VALUES ('2339', '511112', '五通桥区', '511100');
INSERT INTO `area` VALUES ('2039', '441625', '东源县', '441600');
INSERT INTO `area` VALUES ('2398', '511827', '宝兴县', '511800');
INSERT INTO `area` VALUES ('2499', '522226', '印江土家族苗族自治县', '522200');
INSERT INTO `area` VALUES ('2675', '533122', '梁河县', '533100');
INSERT INTO `area` VALUES ('2457', '520101', '市辖区', '520100');
INSERT INTO `area` VALUES ('2494', '522201', '铜仁市', '522200');
INSERT INTO `area` VALUES ('2241', '500230', '丰都县', '500100');
INSERT INTO `area` VALUES ('2031', '441523', '陆河县', '441500');
INSERT INTO `area` VALUES ('2676', '533123', '盈江县', '533100');
INSERT INTO `area` VALUES ('2073', '450105', '江南区', '450100');
INSERT INTO `area` VALUES ('2862', '610924', '紫阳县', '610900');
INSERT INTO `area` VALUES ('2686', '540102', '城关区', '540100');
INSERT INTO `area` VALUES ('2270', '510124', '郫　县', '510100');
INSERT INTO `area` VALUES ('2076', '450109', '邕宁区', '450100');
INSERT INTO `area` VALUES ('2453', '513434', '越西县', '513400');
INSERT INTO `area` VALUES ('2860', '610922', '石泉县', '610900');
INSERT INTO `area` VALUES ('2195', '460106', '龙华区', '460100');
INSERT INTO `area` VALUES ('2182', '451323', '武宣县', '451300');
INSERT INTO `area` VALUES ('2710', '542226', '曲松县', '542200');
INSERT INTO `area` VALUES ('2960', '622922', '康乐县', '622900');
INSERT INTO `area` VALUES ('2603', '530721', '玉龙纳西族自治县', '530700');
INSERT INTO `area` VALUES ('2072', '450103', '青秀区', '450100');
INSERT INTO `area` VALUES ('2030', '441521', '海丰县', '441500');
INSERT INTO `area` VALUES ('2752', '542621', '林芝县', '542600');
INSERT INTO `area` VALUES ('2323', '510824', '苍溪县', '510800');
INSERT INTO `area` VALUES ('2175', '451228', '都安瑶族自治县', '451200');
INSERT INTO `area` VALUES ('2372', '511526', '珙　县', '511500');
INSERT INTO `area` VALUES ('2948', '621201', '市辖区', '621200');
INSERT INTO `area` VALUES ('2239', '500228', '梁平县', '500100');
INSERT INTO `area` VALUES ('2421', '513233', '红原县', '513200');
INSERT INTO `area` VALUES ('2159', '451030', '西林县', '451000');
INSERT INTO `area` VALUES ('2739', '542425', '安多县', '542400');
INSERT INTO `area` VALUES ('2807', '610502', '临渭区', '610500');
INSERT INTO `area` VALUES ('2647', '532530', '金平苗族瑶族傣族自治县', '532500');
INSERT INTO `area` VALUES ('2303', '510681', '广汉市', '510600');
INSERT INTO `area` VALUES ('2509', '522326', '望谟县', '522300');
INSERT INTO `area` VALUES ('2835', '610722', '城固县', '610700');
INSERT INTO `area` VALUES ('2644', '532527', '泸西县', '532500');
INSERT INTO `area` VALUES ('2123', '450512', '铁山港区', '450500');
INSERT INTO `area` VALUES ('2639', '532522', '蒙自县', '532500');
INSERT INTO `area` VALUES ('2715', '542232', '错那县', '542200');
INSERT INTO `area` VALUES ('2423', '513322', '泸定县', '513300');
INSERT INTO `area` VALUES ('2165', '451123', '富川瑶族自治县', '451100');
INSERT INTO `area` VALUES ('2662', '532922', '漾濞彝族自治县', '532900');
INSERT INTO `area` VALUES ('2584', '530502', '隆阳区', '530500');
INSERT INTO `area` VALUES ('2563', '530301', '市辖区', '530300');
INSERT INTO `area` VALUES ('2163', '451121', '昭平县', '451100');
INSERT INTO `area` VALUES ('2034', '441602', '源城区', '441600');
INSERT INTO `area` VALUES ('2877', '620102', '城关区', '620100');
INSERT INTO `area` VALUES ('2396', '511825', '天全县', '511800');
INSERT INTO `area` VALUES ('2897', '620503', '北道区', '620500');
INSERT INTO `area` VALUES ('2580', '530426', '峨山彝族自治县', '530400');
INSERT INTO `area` VALUES ('2940', '621101', '市辖区', '621100');
INSERT INTO `area` VALUES ('2834', '610721', '南郑县', '610700');
INSERT INTO `area` VALUES ('2336', '511101', '市辖区', '511100');
INSERT INTO `area` VALUES ('2433', '513332', '石渠县', '513300');
INSERT INTO `area` VALUES ('2577', '530423', '通海县', '530400');
INSERT INTO `area` VALUES ('2799', '610426', '永寿县', '610400');
INSERT INTO `area` VALUES ('2570', '530326', '会泽县', '530300');
INSERT INTO `area` VALUES ('2366', '511502', '翠屏区', '511500');
INSERT INTO `area` VALUES ('2526', '522627', '天柱县', '522600');
INSERT INTO `area` VALUES ('2427', '513326', '道孚县', '513300');
INSERT INTO `area` VALUES ('2641', '532524', '建水县', '532500');
INSERT INTO `area` VALUES ('2202', '469005', '文昌市', '469000');
INSERT INTO `area` VALUES ('2976', '630103', '城中区', '630100');
INSERT INTO `area` VALUES ('2483', '520329', '余庆县', '520300');
INSERT INTO `area` VALUES ('2028', '441501', '市辖区', '441500');
INSERT INTO `area` VALUES ('2573', '530401', '市辖区', '530400');
INSERT INTO `area` VALUES ('2099', '450311', '雁山区', '450300');
INSERT INTO `area` VALUES ('2741', '542427', '索　县', '542400');
INSERT INTO `area` VALUES ('2101', '450322', '临桂县', '450300');
INSERT INTO `area` VALUES ('2889', '620401', '市辖区', '620400');
INSERT INTO `area` VALUES ('2804', '610431', '武功县', '610400');
INSERT INTO `area` VALUES ('2898', '620521', '清水县', '620500');
INSERT INTO `area` VALUES ('2612', '530824', '景谷傣族彝族自治县', '530800');
INSERT INTO `area` VALUES ('2041', '441702', '江城区', '441700');
INSERT INTO `area` VALUES ('2775', '610203', '印台区', '610200');
INSERT INTO `area` VALUES ('2795', '610422', '三原县', '610400');
INSERT INTO `area` VALUES ('2830', '610631', '黄龙县', '610600');
INSERT INTO `area` VALUES ('2627', '532301', '楚雄市', '532300');
INSERT INTO `area` VALUES ('2217', '469039', '中沙群岛的岛礁及其海域', '469000');
INSERT INTO `area` VALUES ('2614', '530826', '江城哈尼族彝族自治县', '530800');
INSERT INTO `area` VALUES ('2608', '530802', '翠云区', '530800');
INSERT INTO `area` VALUES ('2669', '532929', '云龙县', '532900');
INSERT INTO `area` VALUES ('2779', '610302', '渭滨区', '610300');
INSERT INTO `area` VALUES ('2397', '511826', '芦山县', '511800');
INSERT INTO `area` VALUES ('2230', '500113', '巴南区', '500100');
INSERT INTO `area` VALUES ('2383', '511702', '通川区', '511700');
INSERT INTO `area` VALUES ('2899', '620522', '秦安县', '620500');
INSERT INTO `area` VALUES ('2369', '511523', '江安县', '511500');
INSERT INTO `area` VALUES ('2870', '611021', '洛南县', '611000');
INSERT INTO `area` VALUES ('2917', '620821', '泾川县', '620800');
INSERT INTO `area` VALUES ('2751', '542527', '措勤县', '542500');
INSERT INTO `area` VALUES ('2894', '620423', '景泰县', '620400');
INSERT INTO `area` VALUES ('2950', '621221', '成　县', '621200');
INSERT INTO `area` VALUES ('2273', '510132', '新津县', '510100');
INSERT INTO `area` VALUES ('2978', '630105', '城北区', '630100');
INSERT INTO `area` VALUES ('2316', '510801', '市辖区', '510800');
INSERT INTO `area` VALUES ('2237', '500226', '荣昌县', '500100');
INSERT INTO `area` VALUES ('2354', '511323', '蓬安县', '511300');
INSERT INTO `area` VALUES ('2624', '530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
INSERT INTO `area` VALUES ('2375', '511529', '屏山县', '511500');
INSERT INTO `area` VALUES ('2145', '450923', '博白县', '450900');
INSERT INTO `area` VALUES ('2818', '610601', '市辖区', '610600');
INSERT INTO `area` VALUES ('2441', '513422', '木里藏族自治县', '513400');
INSERT INTO `area` VALUES ('2903', '620601', '市辖区', '620600');
INSERT INTO `area` VALUES ('2814', '610527', '白水县', '610500');
INSERT INTO `area` VALUES ('2102', '450323', '灵川县', '450300');
INSERT INTO `area` VALUES ('2922', '620826', '静宁县', '620800');
INSERT INTO `area` VALUES ('2701', '542128', '左贡县', '542100');
INSERT INTO `area` VALUES ('2199', '469001', '五指山市', '469000');
INSERT INTO `area` VALUES ('2474', '520303', '汇川区', '520300');
INSERT INTO `area` VALUES ('2157', '451028', '乐业县', '451000');
INSERT INTO `area` VALUES ('2821', '610622', '延川县', '610600');
INSERT INTO `area` VALUES ('2992', '632321', '同仁县', '632300');
INSERT INTO `area` VALUES ('2883', '620122', '皋兰县', '620100');
INSERT INTO `area` VALUES ('2587', '530523', '龙陵县', '530500');
INSERT INTO `area` VALUES ('2243', '500232', '武隆县', '500100');
INSERT INTO `area` VALUES ('2836', '610723', '洋　县', '610700');
INSERT INTO `area` VALUES ('2947', '621126', '岷　县', '621100');
INSERT INTO `area` VALUES ('2462', '520113', '白云区', '520100');
INSERT INTO `area` VALUES ('2026', '441427', '蕉岭县', '441400');
INSERT INTO `area` VALUES ('2718', '542322', '南木林县', '542300');
INSERT INTO `area` VALUES ('2968', '623022', '卓尼县', '623000');
INSERT INTO `area` VALUES ('2405', '512002', '雁江区', '512000');
INSERT INTO `area` VALUES ('2251', '500241', '秀山土家族苗族自治县', '500100');
INSERT INTO `area` VALUES ('2861', '610923', '宁陕县', '610900');
INSERT INTO `area` VALUES ('2048', '441823', '阳山县', '441800');
INSERT INTO `area` VALUES ('2781', '610304', '陈仓区', '610300');
INSERT INTO `area` VALUES ('2093', '450226', '三江侗族自治县', '450200');
INSERT INTO `area` VALUES ('2811', '610524', '合阳县', '610500');
INSERT INTO `area` VALUES ('2012', '441284', '四会市', '441200');
INSERT INTO `area` VALUES ('2525', '522626', '岑巩县', '522600');
INSERT INTO `area` VALUES ('2803', '610430', '淳化县', '610400');
INSERT INTO `area` VALUES ('2081', '450126', '宾阳县', '450100');
INSERT INTO `area` VALUES ('2688', '540122', '当雄县', '540100');
INSERT INTO `area` VALUES ('2561', '530129', '寻甸回族彝族自治县', '530100');
INSERT INTO `area` VALUES ('2600', '530630', '水富县', '530600');
INSERT INTO `area` VALUES ('2380', '511623', '邻水县', '511600');
INSERT INTO `area` VALUES ('2227', '500110', '万盛区', '500100');
INSERT INTO `area` VALUES ('2753', '542622', '工布江达县', '542600');
INSERT INTO `area` VALUES ('2007', '441223', '广宁县', '441200');
INSERT INTO `area` VALUES ('2700', '542127', '八宿县', '542100');
INSERT INTO `area` VALUES ('2851', '610826', '绥德县', '610800');
INSERT INTO `area` VALUES ('2192', '451481', '凭祥市', '451400');
INSERT INTO `area` VALUES ('2254', '500381', '江津市', '500100');
INSERT INTO `area` VALUES ('2066', '445321', '新兴县', '445300');
INSERT INTO `area` VALUES ('2129', '450681', '东兴市', '450600');
INSERT INTO `area` VALUES ('2863', '610925', '岚皋县', '610900');
INSERT INTO `area` VALUES ('2054', '445101', '市辖区', '445100');
INSERT INTO `area` VALUES ('2638', '532502', '开远市', '532500');
INSERT INTO `area` VALUES ('2823', '610624', '安塞县', '610600');
INSERT INTO `area` VALUES ('2218', '500101', '万州区', '500100');
INSERT INTO `area` VALUES ('2594', '530624', '大关县', '530600');
INSERT INTO `area` VALUES ('2233', '500222', '綦江县', '500100');
INSERT INTO `area` VALUES ('2692', '540126', '达孜县', '540100');
INSERT INTO `area` VALUES ('2845', '610802', '榆阳区', '610800');
INSERT INTO `area` VALUES ('2557', '530125', '宜良县', '530100');
INSERT INTO `area` VALUES ('2046', '441802', '清城区', '441800');
INSERT INTO `area` VALUES ('2935', '621023', '华池县', '621000');
INSERT INTO `area` VALUES ('2981', '630123', '湟源县', '630100');
INSERT INTO `area` VALUES ('2475', '520321', '遵义县', '520300');
INSERT INTO `area` VALUES ('2672', '532932', '鹤庆县', '532900');
INSERT INTO `area` VALUES ('2632', '532326', '大姚县', '532300');
INSERT INTO `area` VALUES ('2717', '542301', '日喀则市', '542300');
INSERT INTO `area` VALUES ('2519', '522428', '赫章县', '522400');
INSERT INTO `area` VALUES ('2259', '510104', '锦江区', '510100');
INSERT INTO `area` VALUES ('2167', '451202', '金城江区', '451200');
INSERT INTO `area` VALUES ('2070', '450101', '市辖区', '450100');
INSERT INTO `area` VALUES ('2501', '522228', '沿河土家族自治县', '522200');
INSERT INTO `area` VALUES ('2840', '610727', '略阳县', '610700');
INSERT INTO `area` VALUES ('2291', '510501', '市辖区', '510500');
INSERT INTO `area` VALUES ('2682', '533421', '香格里拉县', '533400');
INSERT INTO `area` VALUES ('2980', '630122', '湟中县', '630100');
INSERT INTO `area` VALUES ('2642', '532525', '石屏县', '532500');
INSERT INTO `area` VALUES ('2586', '530522', '腾冲县', '530500');
INSERT INTO `area` VALUES ('2659', '532822', '勐海县', '532800');
INSERT INTO `area` VALUES ('2524', '522625', '镇远县', '522600');
INSERT INTO `area` VALUES ('2783', '610323', '岐山县', '610300');
INSERT INTO `area` VALUES ('2005', '441202', '端州区', '441200');
INSERT INTO `area` VALUES ('2279', '510302', '自流井区', '510300');
INSERT INTO `area` VALUES ('2668', '532928', '永平县', '532900');
INSERT INTO `area` VALUES ('2613', '530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
INSERT INTO `area` VALUES ('2229', '500112', '渝北区', '500100');
INSERT INTO `area` VALUES ('2056', '445121', '潮安县', '445100');
INSERT INTO `area` VALUES ('2875', '611026', '柞水县', '611000');
INSERT INTO `area` VALUES ('2735', '542421', '那曲县', '542400');
INSERT INTO `area` VALUES ('2149', '451002', '右江区', '451000');
INSERT INTO `area` VALUES ('2900', '620523', '甘谷县', '620500');
INSERT INTO `area` VALUES ('2297', '510524', '叙永县', '510500');
INSERT INTO `area` VALUES ('2698', '542125', '丁青县', '542100');
INSERT INTO `area` VALUES ('2029', '441502', '城　区', '441500');
INSERT INTO `area` VALUES ('2414', '513226', '金川县', '513200');
INSERT INTO `area` VALUES ('2078', '450123', '隆安县', '450100');
INSERT INTO `area` VALUES ('2503', '522230', '万山特区', '522200');
INSERT INTO `area` VALUES ('2813', '610526', '蒲城县', '610500');
INSERT INTO `area` VALUES ('2854', '610829', '吴堡县', '610800');
INSERT INTO `area` VALUES ('2137', '450803', '港南区', '450800');
INSERT INTO `area` VALUES ('2096', '450303', '叠彩区', '450300');
INSERT INTO `area` VALUES ('2534', '522635', '麻江县', '522600');
INSERT INTO `area` VALUES ('2808', '610521', '华　县', '610500');
INSERT INTO `area` VALUES ('2747', '542523', '噶尔县', '542500');
INSERT INTO `area` VALUES ('2943', '621122', '陇西县', '621100');
INSERT INTO `area` VALUES ('2067', '445322', '郁南县', '445300');
INSERT INTO `area` VALUES ('2984', '632123', '乐都县', '632100');
INSERT INTO `area` VALUES ('2560', '530128', '禄劝彝族苗族自治县', '530100');
INSERT INTO `area` VALUES ('2609', '530821', '普洱哈尼族彝族自治县', '530800');
INSERT INTO `area` VALUES ('2458', '520102', '南明区', '520100');
INSERT INTO `area` VALUES ('2591', '530621', '鲁甸县', '530600');
INSERT INTO `area` VALUES ('2773', '610201', '市辖区', '610200');
INSERT INTO `area` VALUES ('2080', '450125', '上林县', '450100');
INSERT INTO `area` VALUES ('2057', '445122', '饶平县', '445100');
INSERT INTO `area` VALUES ('2506', '522323', '普安县', '522300');
INSERT INTO `area` VALUES ('2262', '510107', '武侯区', '510100');
INSERT INTO `area` VALUES ('2003', '440983', '信宜市', '440900');
INSERT INTO `area` VALUES ('2670', '532930', '洱源县', '532900');
INSERT INTO `area` VALUES ('2703', '542132', '洛隆县', '542100');
INSERT INTO `area` VALUES ('2925', '620921', '金塔县', '620900');
INSERT INTO `area` VALUES ('2918', '620822', '灵台县', '620800');
INSERT INTO `area` VALUES ('2341', '511123', '犍为县', '511100');
INSERT INTO `area` VALUES ('2402', '511922', '南江县', '511900');
INSERT INTO `area` VALUES ('2353', '511322', '营山县', '511300');
INSERT INTO `area` VALUES ('2924', '620902', '肃州区', '620900');
INSERT INTO `area` VALUES ('2322', '510823', '剑阁县', '510800');
INSERT INTO `area` VALUES ('2010', '441226', '德庆县', '441200');
INSERT INTO `area` VALUES ('2206', '469026', '屯昌县', '469000');
INSERT INTO `area` VALUES ('2077', '450122', '武鸣县', '450100');
INSERT INTO `area` VALUES ('2305', '510683', '绵竹市', '510600');
INSERT INTO `area` VALUES ('2437', '513336', '乡城县', '513300');
INSERT INTO `area` VALUES ('2792', '610402', '秦都区', '610400');
INSERT INTO `area` VALUES ('2094', '450301', '市辖区', '450300');
INSERT INTO `area` VALUES ('2107', '450328', '龙胜各族自治县', '450300');
INSERT INTO `area` VALUES ('2771', '610125', '户　县', '610100');
INSERT INTO `area` VALUES ('2805', '610481', '兴平市', '610400');
INSERT INTO `area` VALUES ('2651', '532622', '砚山县', '532600');
INSERT INTO `area` VALUES ('2300', '510603', '旌阳区', '510600');
INSERT INTO `area` VALUES ('2634', '532328', '元谋县', '532300');
INSERT INTO `area` VALUES ('2635', '532329', '武定县', '532300');
INSERT INTO `area` VALUES ('2053', '441882', '连州市', '441800');
INSERT INTO `area` VALUES ('2766', '610114', '阎良区', '610100');
INSERT INTO `area` VALUES ('2826', '610627', '甘泉县', '610600');
INSERT INTO `area` VALUES ('2122', '450503', '银海区', '450500');
INSERT INTO `area` VALUES ('2264', '510112', '龙泉驿区', '510100');
INSERT INTO `area` VALUES ('2812', '610525', '澄城县', '610500');
INSERT INTO `area` VALUES ('2252', '500242', '酉阳土家族苗族自治县', '500100');
INSERT INTO `area` VALUES ('2919', '620823', '崇信县', '620800');
INSERT INTO `area` VALUES ('2177', '451281', '宜州市', '451200');
INSERT INTO `area` VALUES ('2086', '450204', '柳南区', '450200');
INSERT INTO `area` VALUES ('2655', '532626', '丘北县', '532600');
INSERT INTO `area` VALUES ('2699', '542126', '察雅县', '542100');
INSERT INTO `area` VALUES ('2551', '530111', '官渡区', '530100');
INSERT INTO `area` VALUES ('2949', '621202', '武都区', '621200');
INSERT INTO `area` VALUES ('2822', '610623', '子长县', '610600');
INSERT INTO `area` VALUES ('2250', '500240', '石柱土家族自治县', '500100');
INSERT INTO `area` VALUES ('2118', '450423', '蒙山县', '450400');
INSERT INTO `area` VALUES ('2319', '510812', '朝天区', '510800');
INSERT INTO `area` VALUES ('2109', '450330', '平乐县', '450300');
INSERT INTO `area` VALUES ('2732', '542336', '聂拉木县', '542300');
INSERT INTO `area` VALUES ('2746', '542522', '札达县', '542500');
INSERT INTO `area` VALUES ('2194', '460105', '秀英区', '460100');
INSERT INTO `area` VALUES ('2539', '522723', '贵定县', '522700');
INSERT INTO `area` VALUES ('2449', '513430', '金阳县', '513400');
INSERT INTO `area` VALUES ('2977', '630104', '城西区', '630100');
INSERT INTO `area` VALUES ('2839', '610726', '宁强县', '610700');
INSERT INTO `area` VALUES ('2626', '530927', '沧源佤族自治县', '530900');
INSERT INTO `area` VALUES ('2776', '610204', '耀州区', '610200');
INSERT INTO `area` VALUES ('2476', '520322', '桐梓县', '520300');
INSERT INTO `area` VALUES ('2133', '450721', '灵山县', '450700');
INSERT INTO `area` VALUES ('2892', '620421', '靖远县', '620400');
INSERT INTO `area` VALUES ('2089', '450222', '柳城县', '450200');
INSERT INTO `area` VALUES ('2849', '610824', '靖边县', '610800');
INSERT INTO `area` VALUES ('2553', '530113', '东川区', '530100');
INSERT INTO `area` VALUES ('2963', '622925', '和政县', '622900');
INSERT INTO `area` VALUES ('2665', '532925', '弥渡县', '532900');
INSERT INTO `area` VALUES ('2306', '510701', '市辖区', '510700');
INSERT INTO `area` VALUES ('2916', '620802', '崆峒区', '620800');
INSERT INTO `area` VALUES ('2629', '532323', '牟定县', '532300');
INSERT INTO `area` VALUES ('2530', '522631', '黎平县', '522600');
INSERT INTO `area` VALUES ('2090', '450223', '鹿寨县', '450200');
INSERT INTO `area` VALUES ('2040', '441701', '市辖区', '441700');
INSERT INTO `area` VALUES ('2750', '542526', '改则县', '542500');
INSERT INTO `area` VALUES ('2272', '510131', '蒲江县', '510100');
INSERT INTO `area` VALUES ('2313', '510726', '北川羌族自治县', '510700');
INSERT INTO `area` VALUES ('2095', '450302', '秀峰区', '450300');
INSERT INTO `area` VALUES ('2240', '500229', '城口县', '500100');
INSERT INTO `area` VALUES ('2777', '610222', '宜君县', '610200');
INSERT INTO `area` VALUES ('2314', '510727', '平武县', '510700');
INSERT INTO `area` VALUES ('2036', '441622', '龙川县', '441600');
INSERT INTO `area` VALUES ('2401', '511921', '通江县', '511900');
INSERT INTO `area` VALUES ('2562', '530181', '安宁市', '530100');
INSERT INTO `area` VALUES ('2356', '511325', '西充县', '511300');
INSERT INTO `area` VALUES ('2045', '441801', '市辖区', '441800');
INSERT INTO `area` VALUES ('2416', '513228', '黑水县', '513200');
INSERT INTO `area` VALUES ('2278', '510301', '市辖区', '510300');
INSERT INTO `area` VALUES ('2640', '532523', '屏边苗族自治县', '532500');
INSERT INTO `area` VALUES ('2790', '610331', '太白县', '610300');
INSERT INTO `area` VALUES ('2687', '540121', '林周县', '540100');
INSERT INTO `area` VALUES ('2986', '632127', '化隆回族自治县', '632100');
INSERT INTO `area` VALUES ('2617', '530829', '西盟佤族自治县', '530800');
INSERT INTO `area` VALUES ('2016', '441322', '博罗县', '441300');
INSERT INTO `area` VALUES ('2490', '520422', '普定县', '520400');
INSERT INTO `area` VALUES ('2197', '460108', '美兰区', '460100');
INSERT INTO `area` VALUES ('2348', '511301', '市辖区', '511300');
INSERT INTO `area` VALUES ('2934', '621022', '环　县', '621000');
INSERT INTO `area` VALUES ('2002', '440982', '化州市', '440900');
INSERT INTO `area` VALUES ('2568', '530324', '罗平县', '530300');
INSERT INTO `area` VALUES ('2891', '620403', '平川区', '620400');
INSERT INTO `area` VALUES ('2050', '441826', '连南瑶族自治县', '441800');
INSERT INTO `area` VALUES ('2051', '441827', '清新县', '441800');
INSERT INTO `area` VALUES ('2293', '510503', '纳溪区', '510500');
INSERT INTO `area` VALUES ('2180', '451321', '忻城县', '451300');
INSERT INTO `area` VALUES ('2951', '621222', '文　县', '621200');
INSERT INTO `area` VALUES ('2946', '621125', '漳　县', '621100');
INSERT INTO `area` VALUES ('2944', '621123', '渭源县', '621100');
INSERT INTO `area` VALUES ('2407', '512022', '乐至县', '512000');
INSERT INTO `area` VALUES ('2189', '451423', '龙州县', '451400');
INSERT INTO `area` VALUES ('2683', '533422', '德钦县', '533400');
INSERT INTO `area` VALUES ('2496', '522223', '玉屏侗族自治县', '522200');
INSERT INTO `area` VALUES ('2517', '522426', '纳雍县', '522400');
INSERT INTO `area` VALUES ('2191', '451425', '天等县', '451400');
INSERT INTO `area` VALUES ('2575', '530421', '江川县', '530400');
INSERT INTO `area` VALUES ('2001', '440981', '高州市', '440900');
INSERT INTO `area` VALUES ('2440', '513401', '西昌市', '513400');
INSERT INTO `area` VALUES ('2730', '542334', '亚东县', '542300');
INSERT INTO `area` VALUES ('2280', '510303', '贡井区', '510300');
INSERT INTO `area` VALUES ('2087', '450205', '柳北区', '450200');
INSERT INTO `area` VALUES ('2658', '532801', '景洪市', '532800');
INSERT INTO `area` VALUES ('2930', '620982', '敦煌市', '620900');
INSERT INTO `area` VALUES ('2185', '451401', '市辖区', '451400');
INSERT INTO `area` VALUES ('2479', '520325', '道真仡佬族苗族自治县', '520300');
INSERT INTO `area` VALUES ('2290', '510422', '盐边县', '510400');
INSERT INTO `area` VALUES ('2255', '500382', '合川市', '500100');
INSERT INTO `area` VALUES ('2569', '530325', '富源县', '530300');
INSERT INTO `area` VALUES ('2174', '451227', '巴马瑶族自治县', '451200');
INSERT INTO `area` VALUES ('2881', '620111', '红古区', '620100');
INSERT INTO `area` VALUES ('2158', '451029', '田林县', '451000');
INSERT INTO `area` VALUES ('2955', '621226', '礼　县', '621200');
INSERT INTO `area` VALUES ('2782', '610322', '凤翔县', '610300');
INSERT INTO `area` VALUES ('2765', '610113', '雁塔区', '610100');
INSERT INTO `area` VALUES ('2390', '511801', '市辖区', '511800');
INSERT INTO `area` VALUES ('2438', '513337', '稻城县', '513300');
INSERT INTO `area` VALUES ('2713', '542229', '加查县', '542200');
INSERT INTO `area` VALUES ('2263', '510108', '成华区', '510100');
INSERT INTO `area` VALUES ('2488', '520402', '西秀区', '520400');
INSERT INTO `area` VALUES ('2531', '522632', '榕江县', '522600');
INSERT INTO `area` VALUES ('2071', '450102', '兴宁区', '450100');
INSERT INTO `area` VALUES ('2060', '445221', '揭东县', '445200');
INSERT INTO `area` VALUES ('2516', '522425', '织金县', '522400');
INSERT INTO `area` VALUES ('2112', '450401', '市辖区', '450400');
INSERT INTO `area` VALUES ('2454', '513435', '甘洛县', '513400');
INSERT INTO `area` VALUES ('2256', '500383', '永川市', '500100');
INSERT INTO `area` VALUES ('2546', '522731', '惠水县', '522700');
INSERT INTO `area` VALUES ('2136', '450802', '港北区', '450800');
INSERT INTO `area` VALUES ('2857', '610901', '市辖区', '610900');
INSERT INTO `area` VALUES ('2024', '441424', '五华县', '441400');
INSERT INTO `area` VALUES ('2945', '621124', '临洮县', '621100');
INSERT INTO `area` VALUES ('2514', '522423', '黔西县', '522400');
INSERT INTO `area` VALUES ('2138', '450804', '覃塘区', '450800');
INSERT INTO `area` VALUES ('2729', '542333', '仲巴县', '542300');
INSERT INTO `area` VALUES ('2198', '460201', '市辖区', '460200');
INSERT INTO `area` VALUES ('2768', '610116', '长安区', '610100');
INSERT INTO `area` VALUES ('2373', '511527', '筠连县', '511500');
INSERT INTO `area` VALUES ('2282', '510311', '沿滩区', '510300');
INSERT INTO `area` VALUES ('2117', '450422', '藤　县', '450400');
INSERT INTO `area` VALUES ('2791', '610401', '市辖区', '610400');
INSERT INTO `area` VALUES ('2210', '469031', '昌江黎族自治县', '469000');
INSERT INTO `area` VALUES ('2032', '441581', '陆丰市', '441500');
INSERT INTO `area` VALUES ('2866', '610928', '旬阳县', '610900');
INSERT INTO `area` VALUES ('2011', '441283', '高要市', '441200');
INSERT INTO `area` VALUES ('2257', '500384', '南川市', '500100');
INSERT INTO `area` VALUES ('2236', '500225', '大足县', '500100');
INSERT INTO `area` VALUES ('2690', '540124', '曲水县', '540100');
INSERT INTO `area` VALUES ('2492', '520424', '关岭布依族苗族自治县', '520400');
INSERT INTO `area` VALUES ('2068', '445323', '云安县', '445300');
INSERT INTO `area` VALUES ('2537', '522702', '福泉市', '522700');
INSERT INTO `area` VALUES ('2004', '441201', '市辖区', '441200');
INSERT INTO `area` VALUES ('2576', '530422', '澄江县', '530400');
INSERT INTO `area` VALUES ('2140', '450881', '桂平市', '450800');
INSERT INTO `area` VALUES ('2365', '511501', '市辖区', '511500');
INSERT INTO `area` VALUES ('2171', '451224', '东兰县', '451200');
INSERT INTO `area` VALUES ('2394', '511823', '汉源县', '511800');
INSERT INTO `area` VALUES ('2512', '522401', '毕节市', '522400');
INSERT INTO `area` VALUES ('2923', '620901', '市辖区', '620900');
INSERT INTO `area` VALUES ('2477', '520323', '绥阳县', '520300');
INSERT INTO `area` VALUES ('2038', '441624', '和平县', '441600');
INSERT INTO `area` VALUES ('2497', '522224', '石阡县', '522200');
INSERT INTO `area` VALUES ('2113', '450403', '万秀区', '450400');
INSERT INTO `area` VALUES ('2697', '542124', '类乌齐县', '542100');
INSERT INTO `area` VALUES ('2529', '522630', '台江县', '522600');
INSERT INTO `area` VALUES ('2103', '450324', '全州县', '450300');
INSERT INTO `area` VALUES ('2025', '441426', '平远县', '441400');
INSERT INTO `area` VALUES ('2432', '513331', '白玉县', '513300');
INSERT INTO `area` VALUES ('2299', '510601', '市辖区', '510600');
INSERT INTO `area` VALUES ('2116', '450421', '苍梧县', '450400');
INSERT INTO `area` VALUES ('2588', '530524', '昌宁县', '530500');
INSERT INTO `area` VALUES ('2487', '520401', '市辖区', '520400');
INSERT INTO `area` VALUES ('2271', '510129', '大邑县', '510100');
INSERT INTO `area` VALUES ('2424', '513323', '丹巴县', '513300');
INSERT INTO `area` VALUES ('2684', '533423', '维西傈僳族自治县', '533400');
INSERT INTO `area` VALUES ('2876', '620101', '市辖区', '620100');
INSERT INTO `area` VALUES ('2787', '610328', '千阳县', '610300');
INSERT INTO `area` VALUES ('2985', '632126', '互助土族自治县', '632100');
INSERT INTO `area` VALUES ('2554', '530121', '呈贡县', '530100');
INSERT INTO `area` VALUES ('2911', '620722', '民乐县', '620700');
INSERT INTO `area` VALUES ('2547', '522732', '三都水族自治县', '522700');
INSERT INTO `area` VALUES ('2261', '510106', '金牛区', '510100');
INSERT INTO `area` VALUES ('2331', '511002', '市中区', '511000');
INSERT INTO `area` VALUES ('2311', '510724', '安　县', '510700');
INSERT INTO `area` VALUES ('2819', '610602', '宝塔区', '610600');
INSERT INTO `area` VALUES ('2148', '451001', '市辖区', '451000');
INSERT INTO `area` VALUES ('2511', '522328', '安龙县', '522300');
INSERT INTO `area` VALUES ('2983', '632122', '民和回族土族自治县', '632100');
INSERT INTO `area` VALUES ('2689', '540123', '尼木县', '540100');
INSERT INTO `area` VALUES ('2601', '530701', '市辖区', '530700');
INSERT INTO `area` VALUES ('2879', '620104', '西固区', '620100');
INSERT INTO `area` VALUES ('2633', '532327', '永仁县', '532300');
INSERT INTO `area` VALUES ('2954', '621225', '西和县', '621200');
INSERT INTO `area` VALUES ('2097', '450304', '象山区', '450300');
INSERT INTO `area` VALUES ('2484', '520330', '习水县', '520300');
INSERT INTO `area` VALUES ('2147', '450981', '北流市', '450900');
INSERT INTO `area` VALUES ('2998', '632523', '贵德县', '632500');
INSERT INTO `area` VALUES ('2928', '620924', '阿克塞哈萨克族自治县', '620900');
INSERT INTO `area` VALUES ('2645', '532528', '元阳县', '532500');
INSERT INTO `area` VALUES ('2226', '500109', '北碚区', '500100');
INSERT INTO `area` VALUES ('2758', '542627', '朗　县', '542600');
INSERT INTO `area` VALUES ('2400', '511902', '巴州区', '511900');
INSERT INTO `area` VALUES ('3110', '653221', '和田县', '653200');
INSERT INTO `area` VALUES ('3054', '650202', '独山子区', '650200');
INSERT INTO `area` VALUES ('3013', '632801', '格尔木市', '632800');
INSERT INTO `area` VALUES ('3124', '654026', '昭苏县', '654000');
INSERT INTO `area` VALUES ('3099', '653122', '疏勒县', '653100');
INSERT INTO `area` VALUES ('3092', '652929', '柯坪县', '652900');
INSERT INTO `area` VALUES ('3022', '640121', '永宁县', '640100');
INSERT INTO `area` VALUES ('3045', '650102', '天山区', '650100');
INSERT INTO `area` VALUES ('3039', '640425', '彭阳县', '640400');
INSERT INTO `area` VALUES ('3063', '652223', '伊吾县', '652200');
INSERT INTO `area` VALUES ('3055', '650203', '克拉玛依区', '650200');
INSERT INTO `area` VALUES ('3027', '640205', '惠农区', '640200');
INSERT INTO `area` VALUES ('3009', '632723', '称多县', '632700');
INSERT INTO `area` VALUES ('3059', '652122', '鄯善县', '652100');
INSERT INTO `area` VALUES ('3018', '640101', '市辖区', '640100');
INSERT INTO `area` VALUES ('3012', '632726', '曲麻莱县', '632700');
INSERT INTO `area` VALUES ('3111', '653222', '墨玉县', '653200');
INSERT INTO `area` VALUES ('3004', '632624', '达日县', '632600');
INSERT INTO `area` VALUES ('3040', '640501', '市辖区', '640500');
INSERT INTO `area` VALUES ('3023', '640122', '贺兰县', '640100');
INSERT INTO `area` VALUES ('3086', '652923', '库车县', '652900');
INSERT INTO `area` VALUES ('3078', '652824', '若羌县', '652800');
INSERT INTO `area` VALUES ('3070', '652327', '吉木萨尔县', '652300');
INSERT INTO `area` VALUES ('3087', '652924', '沙雅县', '652900');
INSERT INTO `area` VALUES ('3141', '659001', '石河子市', '659000');
INSERT INTO `area` VALUES ('3031', '640323', '盐池县', '640300');
INSERT INTO `area` VALUES ('3005', '632625', '久治县', '632600');
INSERT INTO `area` VALUES ('3112', '653223', '皮山县', '653200');
INSERT INTO `area` VALUES ('3140', '654326', '吉木乃县', '654300');
INSERT INTO `area` VALUES ('3068', '652324', '玛纳斯县', '652300');
INSERT INTO `area` VALUES ('3126', '654028', '尼勒克县', '654000');
INSERT INTO `area` VALUES ('3096', '653024', '乌恰县', '653000');
INSERT INTO `area` VALUES ('3046', '650103', '沙依巴克区', '650100');
INSERT INTO `area` VALUES ('3043', '640522', '海原县', '640500');
INSERT INTO `area` VALUES ('3144', '659004', '五家渠市', '659000');
INSERT INTO `area` VALUES ('3067', '652323', '呼图壁县', '652300');
INSERT INTO `area` VALUES ('3042', '640521', '中宁县', '640500');
INSERT INTO `area` VALUES ('3051', '650108', '东山区', '650100');
INSERT INTO `area` VALUES ('3130', '654223', '沙湾县', '654200');
INSERT INTO `area` VALUES ('3036', '640422', '西吉县', '640400');
INSERT INTO `area` VALUES ('3142', '659002', '阿拉尔市', '659000');
INSERT INTO `area` VALUES ('3007', '632721', '玉树县', '632700');
INSERT INTO `area` VALUES ('3093', '653001', '阿图什市', '653000');
INSERT INTO `area` VALUES ('3128', '654202', '乌苏市', '654200');
INSERT INTO `area` VALUES ('3030', '640302', '利通区', '640300');
INSERT INTO `area` VALUES ('3103', '653126', '叶城县', '653100');
INSERT INTO `area` VALUES ('3088', '652925', '新和县', '652900');
INSERT INTO `area` VALUES ('3025', '640201', '市辖区', '640200');
INSERT INTO `area` VALUES ('3100', '653123', '英吉沙县', '653100');
INSERT INTO `area` VALUES ('3118', '654003', '奎屯市', '654000');
INSERT INTO `area` VALUES ('3108', '653131', '塔什库尔干塔吉克自治县', '653100');
INSERT INTO `area` VALUES ('3071', '652328', '木垒哈萨克自治县', '652300');
INSERT INTO `area` VALUES ('3065', '652302', '阜康市', '652300');
INSERT INTO `area` VALUES ('3020', '640105', '西夏区', '640100');
INSERT INTO `area` VALUES ('3011', '632725', '囊谦县', '632700');
INSERT INTO `area` VALUES ('3081', '652827', '和静县', '652800');
INSERT INTO `area` VALUES ('3033', '640381', '青铜峡市', '640300');
INSERT INTO `area` VALUES ('3058', '652101', '吐鲁番市', '652100');
INSERT INTO `area` VALUES ('3024', '640181', '灵武市', '640100');
INSERT INTO `area` VALUES ('3074', '652723', '温泉县', '652700');
INSERT INTO `area` VALUES ('3028', '640221', '平罗县', '640200');
INSERT INTO `area` VALUES ('3101', '653124', '泽普县', '653100');
INSERT INTO `area` VALUES ('3107', '653130', '巴楚县', '653100');
INSERT INTO `area` VALUES ('3106', '653129', '伽师县', '653100');
INSERT INTO `area` VALUES ('3094', '653022', '阿克陶县', '653000');
INSERT INTO `area` VALUES ('3098', '653121', '疏附县', '653100');
INSERT INTO `area` VALUES ('3133', '654226', '和布克赛尔蒙古自治县', '654200');
INSERT INTO `area` VALUES ('3049', '650106', '头屯河区', '650100');
INSERT INTO `area` VALUES ('3135', '654321', '布尔津县', '654300');
INSERT INTO `area` VALUES ('3139', '654325', '青河县', '654300');
INSERT INTO `area` VALUES ('3073', '652722', '精河县', '652700');
INSERT INTO `area` VALUES ('3016', '632822', '都兰县', '632800');
INSERT INTO `area` VALUES ('3090', '652927', '乌什县', '652900');
INSERT INTO `area` VALUES ('3084', '652901', '阿克苏市', '652900');
INSERT INTO `area` VALUES ('3091', '652928', '阿瓦提县', '652900');
INSERT INTO `area` VALUES ('3083', '652829', '博湖县', '652800');
INSERT INTO `area` VALUES ('3010', '632724', '治多县', '632700');
INSERT INTO `area` VALUES ('3029', '640301', '市辖区', '640300');
INSERT INTO `area` VALUES ('3019', '640104', '兴庆区', '640100');
INSERT INTO `area` VALUES ('3104', '653127', '麦盖提县', '653100');
INSERT INTO `area` VALUES ('3138', '654324', '哈巴河县', '654300');
INSERT INTO `area` VALUES ('3095', '653023', '阿合奇县', '653000');
INSERT INTO `area` VALUES ('3041', '640502', '沙坡头区', '640500');
INSERT INTO `area` VALUES ('3119', '654021', '伊宁县', '654000');
INSERT INTO `area` VALUES ('3097', '653101', '喀什市', '653100');
INSERT INTO `area` VALUES ('3085', '652922', '温宿县', '652900');
INSERT INTO `area` VALUES ('3035', '640402', '原州区', '640400');
INSERT INTO `area` VALUES ('3122', '654024', '巩留县', '654000');
INSERT INTO `area` VALUES ('3048', '650105', '水磨沟区', '650100');
INSERT INTO `area` VALUES ('3131', '654224', '托里县', '654200');
INSERT INTO `area` VALUES ('3134', '654301', '阿勒泰市', '654300');
INSERT INTO `area` VALUES ('3114', '653225', '策勒县', '653200');
INSERT INTO `area` VALUES ('3047', '650104', '新市区', '650100');
INSERT INTO `area` VALUES ('3069', '652325', '奇台县', '652300');
INSERT INTO `area` VALUES ('3072', '652701', '博乐市', '652700');
INSERT INTO `area` VALUES ('3123', '654025', '新源县', '654000');
INSERT INTO `area` VALUES ('3121', '654023', '霍城县', '654000');
INSERT INTO `area` VALUES ('3021', '640106', '金凤区', '640100');
INSERT INTO `area` VALUES ('3080', '652826', '焉耆回族自治县', '652800');
INSERT INTO `area` VALUES ('3082', '652828', '和硕县', '652800');
INSERT INTO `area` VALUES ('3105', '653128', '岳普湖县', '653100');
INSERT INTO `area` VALUES ('3117', '654002', '伊宁市', '654000');
INSERT INTO `area` VALUES ('3143', '659003', '图木舒克市', '659000');
INSERT INTO `area` VALUES ('3008', '632722', '杂多县', '632700');
INSERT INTO `area` VALUES ('3050', '650107', '达坂城区', '650100');
INSERT INTO `area` VALUES ('3136', '654322', '富蕴县', '654300');
INSERT INTO `area` VALUES ('3062', '652222', '巴里坤哈萨克自治县', '652200');
INSERT INTO `area` VALUES ('3120', '654022', '察布查尔锡伯自治县', '654000');
INSERT INTO `area` VALUES ('3001', '632621', '玛沁县', '632600');
INSERT INTO `area` VALUES ('3102', '653125', '莎车县', '653100');
INSERT INTO `area` VALUES ('3089', '652926', '拜城县', '652900');
INSERT INTO `area` VALUES ('3056', '650204', '白碱滩区', '650200');
INSERT INTO `area` VALUES ('3003', '632623', '甘德县', '632600');
INSERT INTO `area` VALUES ('3076', '652822', '轮台县', '652800');
INSERT INTO `area` VALUES ('3132', '654225', '裕民县', '654200');
INSERT INTO `area` VALUES ('3116', '653227', '民丰县', '653200');
INSERT INTO `area` VALUES ('3052', '650121', '乌鲁木齐县', '650100');
INSERT INTO `area` VALUES ('3060', '652123', '托克逊县', '652100');
INSERT INTO `area` VALUES ('3109', '653201', '和田市', '653200');
INSERT INTO `area` VALUES ('3129', '654221', '额敏县', '654200');
INSERT INTO `area` VALUES ('3037', '640423', '隆德县', '640400');
INSERT INTO `area` VALUES ('3066', '652303', '米泉市', '652300');
INSERT INTO `area` VALUES ('3006', '632626', '玛多县', '632600');
INSERT INTO `area` VALUES ('3075', '652801', '库尔勒市', '652800');
INSERT INTO `area` VALUES ('3032', '640324', '同心县', '640300');
INSERT INTO `area` VALUES ('3053', '650201', '市辖区', '650200');
INSERT INTO `area` VALUES ('3002', '632622', '班玛县', '632600');
INSERT INTO `area` VALUES ('3061', '652201', '哈密市', '652200');
INSERT INTO `area` VALUES ('3115', '653226', '于田县', '653200');
INSERT INTO `area` VALUES ('3014', '632802', '德令哈市', '632800');
INSERT INTO `area` VALUES ('3077', '652823', '尉犁县', '652800');
INSERT INTO `area` VALUES ('3015', '632821', '乌兰县', '632800');
INSERT INTO `area` VALUES ('3034', '640401', '市辖区', '640400');
INSERT INTO `area` VALUES ('3127', '654201', '塔城市', '654200');
INSERT INTO `area` VALUES ('3125', '654027', '特克斯县', '654000');
INSERT INTO `area` VALUES ('3113', '653224', '洛浦县', '653200');
INSERT INTO `area` VALUES ('3026', '640202', '大武口区', '640200');
INSERT INTO `area` VALUES ('3044', '650101', '市辖区', '650100');
INSERT INTO `area` VALUES ('3017', '632823', '天峻县', '632800');
INSERT INTO `area` VALUES ('3137', '654323', '福海县', '654300');
INSERT INTO `area` VALUES ('3038', '640424', '泾源县', '640400');
INSERT INTO `area` VALUES ('3064', '652301', '昌吉市', '652300');
INSERT INTO `area` VALUES ('3057', '650205', '乌尔禾区', '650200');
INSERT INTO `area` VALUES ('3079', '652825', '且末县', '652800');

-- ----------------------------
-- Table structure for `city`
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityid` int(11) NOT NULL,
  `city` varchar(20) NOT NULL,
  `fatherid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=346 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('24', '140900', '忻州市', '140000');
INSERT INTO `city` VALUES ('182', '421200', '咸宁市', '420000');
INSERT INTO `city` VALUES ('165', '411100', '漯河市', '410000');
INSERT INTO `city` VALUES ('36', '152200', '兴安盟', '150000');
INSERT INTO `city` VALUES ('111', '341200', '阜阳市', '340000');
INSERT INTO `city` VALUES ('201', '440200', '韶关市', '440000');
INSERT INTO `city` VALUES ('280', '532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `city` VALUES ('128', '360200', '景德镇市', '360000');
INSERT INTO `city` VALUES ('330', '640500', '中卫市', '640000');
INSERT INTO `city` VALUES ('335', '652300', '昌吉回族自治州', '650000');
INSERT INTO `city` VALUES ('136', '361000', '抚州市', '360000');
INSERT INTO `city` VALUES ('275', '530600', '昭通市', '530000');
INSERT INTO `city` VALUES ('307', '620400', '白银市', '620000');
INSERT INTO `city` VALUES ('114', '341500', '六安市', '340000');
INSERT INTO `city` VALUES ('277', '530800', '思茅市', '530000');
INSERT INTO `city` VALUES ('105', '340500', '马鞍山市', '340000');
INSERT INTO `city` VALUES ('233', '451300', '来宾市', '450000');
INSERT INTO `city` VALUES ('262', '520100', '贵阳市', '520000');
INSERT INTO `city` VALUES ('100', '331100', '丽水市', '330000');
INSERT INTO `city` VALUES ('14', '131000', '廊坊市', '130000');
INSERT INTO `city` VALUES ('340', '653100', '喀什地区', '650000');
INSERT INTO `city` VALUES ('192', '430700', '常德市', '430000');
INSERT INTO `city` VALUES ('270', '522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `city` VALUES ('123', '350600', '漳州市', '350000');
INSERT INTO `city` VALUES ('96', '330700', '金华市', '330000');
INSERT INTO `city` VALUES ('121', '350400', '三明市', '350000');
INSERT INTO `city` VALUES ('318', '630100', '西宁市', '630000');
INSERT INTO `city` VALUES ('241', '510100', '成都市', '510000');
INSERT INTO `city` VALUES ('312', '620900', '酒泉市', '620000');
INSERT INTO `city` VALUES ('279', '532300', '楚雄彝族自治州', '530000');
INSERT INTO `city` VALUES ('38', '152900', '阿拉善盟', '150000');
INSERT INTO `city` VALUES ('248', '510900', '遂宁市', '510000');
INSERT INTO `city` VALUES ('207', '440800', '湛江市', '440000');
INSERT INTO `city` VALUES ('157', '410300', '洛阳市', '410000');
INSERT INTO `city` VALUES ('1', '110100', '北京市', '110000');
INSERT INTO `city` VALUES ('110', '341100', '滁州市', '340000');
INSERT INTO `city` VALUES ('97', '330800', '衢州市', '330000');
INSERT INTO `city` VALUES ('23', '140800', '运城市', '140000');
INSERT INTO `city` VALUES ('155', '410100', '郑州市', '410000');
INSERT INTO `city` VALUES ('244', '510500', '泸州市', '510000');
INSERT INTO `city` VALUES ('175', '420500', '宜昌市', '420000');
INSERT INTO `city` VALUES ('222', '450200', '柳州市', '450000');
INSERT INTO `city` VALUES ('323', '632600', '果洛藏族自治州', '630000');
INSERT INTO `city` VALUES ('191', '430600', '岳阳市', '430000');
INSERT INTO `city` VALUES ('299', '610600', '延安市', '610000');
INSERT INTO `city` VALUES ('108', '340800', '安庆市', '340000');
INSERT INTO `city` VALUES ('8', '130400', '邯郸市', '130000');
INSERT INTO `city` VALUES ('214', '441700', '阳江市', '440000');
INSERT INTO `city` VALUES ('78', '320200', '无锡市', '320000');
INSERT INTO `city` VALUES ('37', '152500', '锡林郭勒盟', '150000');
INSERT INTO `city` VALUES ('310', '620700', '张掖市', '620000');
INSERT INTO `city` VALUES ('164', '411000', '许昌市', '410000');
INSERT INTO `city` VALUES ('309', '620600', '武威市', '620000');
INSERT INTO `city` VALUES ('122', '350500', '泉州市', '350000');
INSERT INTO `city` VALUES ('221', '450100', '南宁市', '450000');
INSERT INTO `city` VALUES ('273', '530400', '玉溪市', '530000');
INSERT INTO `city` VALUES ('193', '430800', '张家界市', '430000');
INSERT INTO `city` VALUES ('197', '431200', '怀化市', '430000');
INSERT INTO `city` VALUES ('171', '411700', '驻马店市', '410000');
INSERT INTO `city` VALUES ('204', '440500', '汕头市', '440000');
INSERT INTO `city` VALUES ('152', '371500', '聊城市', '370000');
INSERT INTO `city` VALUES ('256', '511800', '雅安市', '510000');
INSERT INTO `city` VALUES ('135', '360900', '宜春市', '360000');
INSERT INTO `city` VALUES ('150', '371300', '临沂市', '370000');
INSERT INTO `city` VALUES ('257', '511900', '巴中市', '510000');
INSERT INTO `city` VALUES ('58', '220600', '白山市', '220000');
INSERT INTO `city` VALUES ('302', '610900', '安康市', '610000');
INSERT INTO `city` VALUES ('143', '370600', '烟台市', '370000');
INSERT INTO `city` VALUES ('210', '441300', '惠州市', '440000');
INSERT INTO `city` VALUES ('344', '654300', '阿勒泰地区', '650000');
INSERT INTO `city` VALUES ('125', '350800', '龙岩市', '350000');
INSERT INTO `city` VALUES ('115', '341600', '亳州市', '340000');
INSERT INTO `city` VALUES ('183', '421300', '随州市', '420000');
INSERT INTO `city` VALUES ('242', '510300', '自贡市', '510000');
INSERT INTO `city` VALUES ('328', '640300', '吴忠市', '640000');
INSERT INTO `city` VALUES ('109', '341000', '黄山市', '340000');
INSERT INTO `city` VALUES ('212', '441500', '汕尾市', '440000');
INSERT INTO `city` VALUES ('139', '370200', '青岛市', '370000');
INSERT INTO `city` VALUES ('89', '321300', '宿迁市', '320000');
INSERT INTO `city` VALUES ('220', '445300', '云浮市', '440000');
INSERT INTO `city` VALUES ('90', '330100', '杭州市', '330000');
INSERT INTO `city` VALUES ('274', '530500', '保山市', '530000');
INSERT INTO `city` VALUES ('211', '441400', '梅州市', '440000');
INSERT INTO `city` VALUES ('315', '621200', '陇南市', '620000');
INSERT INTO `city` VALUES ('337', '652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `city` VALUES ('45', '210700', '锦州市', '210000');
INSERT INTO `city` VALUES ('83', '320700', '连云港市', '320000');
INSERT INTO `city` VALUES ('162', '410800', '焦作市', '410000');
INSERT INTO `city` VALUES ('295', '610200', '铜川市', '610000');
INSERT INTO `city` VALUES ('166', '411200', '三门峡市', '410000');
INSERT INTO `city` VALUES ('308', '620500', '天水市', '620000');
INSERT INTO `city` VALUES ('227', '450700', '钦州市', '450000');
INSERT INTO `city` VALUES ('342', '654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `city` VALUES ('228', '450800', '贵港市', '450000');
INSERT INTO `city` VALUES ('46', '210800', '营口市', '210000');
INSERT INTO `city` VALUES ('225', '450500', '北海市', '450000');
INSERT INTO `city` VALUES ('178', '420800', '荆门市', '420000');
INSERT INTO `city` VALUES ('331', '650100', '乌鲁木齐市', '650000');
INSERT INTO `city` VALUES ('238', '500100', '重庆市', '500000');
INSERT INTO `city` VALUES ('103', '340300', '蚌埠市', '340000');
INSERT INTO `city` VALUES ('159', '410500', '安阳市', '410000');
INSERT INTO `city` VALUES ('73', '231200', '绥化市', '230000');
INSERT INTO `city` VALUES ('86', '321000', '扬州市', '320000');
INSERT INTO `city` VALUES ('284', '533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `city` VALUES ('149', '371200', '莱芜市', '370000');
INSERT INTO `city` VALUES ('263', '520200', '六盘水市', '520000');
INSERT INTO `city` VALUES ('316', '622900', '临夏回族自治州', '620000');
INSERT INTO `city` VALUES ('133', '360700', '赣州市', '360000');
INSERT INTO `city` VALUES ('147', '371000', '威海市', '370000');
INSERT INTO `city` VALUES ('198', '431300', '娄底市', '430000');
INSERT INTO `city` VALUES ('74', '232700', '大兴安岭地区', '230000');
INSERT INTO `city` VALUES ('343', '654200', '塔城地区', '650000');
INSERT INTO `city` VALUES ('9', '130500', '邢台市', '130000');
INSERT INTO `city` VALUES ('55', '220300', '四平市', '220000');
INSERT INTO `city` VALUES ('294', '610100', '西安市', '610000');
INSERT INTO `city` VALUES ('6', '130200', '唐山市', '130000');
INSERT INTO `city` VALUES ('230', '451000', '百色市', '450000');
INSERT INTO `city` VALUES ('247', '510800', '广元市', '510000');
INSERT INTO `city` VALUES ('300', '610700', '汉中市', '610000');
INSERT INTO `city` VALUES ('84', '320800', '淮安市', '320000');
INSERT INTO `city` VALUES ('205', '440600', '佛山市', '440000');
INSERT INTO `city` VALUES ('95', '330600', '绍兴市', '330000');
INSERT INTO `city` VALUES ('306', '620300', '金昌市', '620000');
INSERT INTO `city` VALUES ('267', '522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `city` VALUES ('249', '511000', '内江市', '510000');
INSERT INTO `city` VALUES ('187', '430200', '株洲市', '430000');
INSERT INTO `city` VALUES ('301', '610800', '榆林市', '610000');
INSERT INTO `city` VALUES ('251', '511300', '南充市', '510000');
INSERT INTO `city` VALUES ('69', '230800', '佳木斯市', '230000');
INSERT INTO `city` VALUES ('80', '320400', '常州市', '320000');
INSERT INTO `city` VALUES ('246', '510700', '绵阳市', '510000');
INSERT INTO `city` VALUES ('206', '440700', '江门市', '440000');
INSERT INTO `city` VALUES ('345', '659000', '省直辖行政单位', '650000');
INSERT INTO `city` VALUES ('172', '420100', '武汉市', '420000');
INSERT INTO `city` VALUES ('138', '370100', '济南市', '370000');
INSERT INTO `city` VALUES ('234', '451400', '崇左市', '450000');
INSERT INTO `city` VALUES ('64', '230300', '鸡西市', '230000');
INSERT INTO `city` VALUES ('293', '542600', '林芝地区', '540000');
INSERT INTO `city` VALUES ('63', '230200', '齐齐哈尔市', '230000');
INSERT INTO `city` VALUES ('341', '653200', '和田地区', '650000');
INSERT INTO `city` VALUES ('154', '371700', '荷泽市', '370000');
INSERT INTO `city` VALUES ('21', '140600', '朔州市', '140000');
INSERT INTO `city` VALUES ('68', '230700', '伊春市', '230000');
INSERT INTO `city` VALUES ('163', '410900', '濮阳市', '410000');
INSERT INTO `city` VALUES ('82', '320600', '南通市', '320000');
INSERT INTO `city` VALUES ('101', '340100', '合肥市', '340000');
INSERT INTO `city` VALUES ('53', '220100', '长春市', '220000');
INSERT INTO `city` VALUES ('127', '360100', '南昌市', '360000');
INSERT INTO `city` VALUES ('219', '445200', '揭阳市', '440000');
INSERT INTO `city` VALUES ('332', '650200', '克拉玛依市', '650000');
INSERT INTO `city` VALUES ('129', '360300', '萍乡市', '360000');
INSERT INTO `city` VALUES ('62', '230100', '哈尔滨市', '230000');
INSERT INTO `city` VALUES ('15', '131100', '衡水市', '130000');
INSERT INTO `city` VALUES ('142', '370500', '东营市', '370000');
INSERT INTO `city` VALUES ('224', '450400', '梧州市', '450000');
INSERT INTO `city` VALUES ('317', '623000', '甘南藏族自治州', '620000');
INSERT INTO `city` VALUES ('176', '420600', '襄樊市', '420000');
INSERT INTO `city` VALUES ('276', '530700', '丽江市', '530000');
INSERT INTO `city` VALUES ('320', '632200', '海北藏族自治州', '630000');
INSERT INTO `city` VALUES ('338', '652900', '阿克苏地区', '650000');
INSERT INTO `city` VALUES ('85', '320900', '盐城市', '320000');
INSERT INTO `city` VALUES ('181', '421100', '黄冈市', '420000');
INSERT INTO `city` VALUES ('314', '621100', '定西市', '620000');
INSERT INTO `city` VALUES ('232', '451200', '河池市', '450000');
INSERT INTO `city` VALUES ('217', '442000', '中山市', '440000');
INSERT INTO `city` VALUES ('102', '340200', '芜湖市', '340000');
INSERT INTO `city` VALUES ('42', '210400', '抚顺市', '210000');
INSERT INTO `city` VALUES ('264', '520300', '遵义市', '520000');
INSERT INTO `city` VALUES ('119', '350200', '厦门市', '350000');
INSERT INTO `city` VALUES ('87', '321100', '镇江市', '320000');
INSERT INTO `city` VALUES ('329', '640400', '固原市', '640000');
INSERT INTO `city` VALUES ('94', '330500', '湖州市', '330000');
INSERT INTO `city` VALUES ('258', '512000', '资阳市', '510000');
INSERT INTO `city` VALUES ('16', '140100', '太原市', '140000');
INSERT INTO `city` VALUES ('324', '632700', '玉树藏族自治州', '630000');
INSERT INTO `city` VALUES ('177', '420700', '鄂州市', '420000');
INSERT INTO `city` VALUES ('326', '640100', '银川市', '640000');
INSERT INTO `city` VALUES ('39', '210100', '沈阳市', '210000');
INSERT INTO `city` VALUES ('184', '422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `city` VALUES ('61', '222400', '延边朝鲜族自治州', '220000');
INSERT INTO `city` VALUES ('161', '410700', '新乡市', '410000');
INSERT INTO `city` VALUES ('26', '141100', '吕梁市', '140000');
INSERT INTO `city` VALUES ('13', '130900', '沧州市', '130000');
INSERT INTO `city` VALUES ('229', '450900', '玉林市', '450000');
INSERT INTO `city` VALUES ('126', '350900', '宁德市', '350000');
INSERT INTO `city` VALUES ('231', '451100', '贺州市', '450000');
INSERT INTO `city` VALUES ('60', '220800', '白城市', '220000');
INSERT INTO `city` VALUES ('286', '533400', '迪庆藏族自治州', '530000');
INSERT INTO `city` VALUES ('44', '210600', '丹东市', '210000');
INSERT INTO `city` VALUES ('285', '533300', '怒江傈僳族自治州', '530000');
INSERT INTO `city` VALUES ('303', '611000', '商洛市', '610000');
INSERT INTO `city` VALUES ('17', '140200', '大同市', '140000');
INSERT INTO `city` VALUES ('271', '530100', '昆明市', '530000');
INSERT INTO `city` VALUES ('72', '231100', '黑河市', '230000');
INSERT INTO `city` VALUES ('116', '341700', '池州市', '340000');
INSERT INTO `city` VALUES ('311', '620800', '平凉市', '620000');
INSERT INTO `city` VALUES ('10', '130600', '保定市', '130000');
INSERT INTO `city` VALUES ('106', '340600', '淮北市', '340000');
INSERT INTO `city` VALUES ('12', '130800', '承德市', '130000');
INSERT INTO `city` VALUES ('169', '411500', '信阳市', '410000');
INSERT INTO `city` VALUES ('209', '441200', '肇庆市', '440000');
INSERT INTO `city` VALUES ('57', '220500', '通化市', '220000');
INSERT INTO `city` VALUES ('327', '640200', '石嘴山市', '640000');
INSERT INTO `city` VALUES ('27', '150100', '呼和浩特市', '150000');
INSERT INTO `city` VALUES ('333', '652100', '吐鲁番地区', '650000');
INSERT INTO `city` VALUES ('70', '230900', '七台河市', '230000');
INSERT INTO `city` VALUES ('99', '331000', '台州市', '330000');
INSERT INTO `city` VALUES ('268', '522400', '毕节地区', '520000');
INSERT INTO `city` VALUES ('34', '150800', '巴彦淖尔市', '150000');
INSERT INTO `city` VALUES ('20', '140500', '晋城市', '140000');
INSERT INTO `city` VALUES ('322', '632500', '海南藏族自治州', '630000');
INSERT INTO `city` VALUES ('120', '350300', '莆田市', '350000');
INSERT INTO `city` VALUES ('18', '140300', '阳泉市', '140000');
INSERT INTO `city` VALUES ('130', '360400', '九江市', '360000');
INSERT INTO `city` VALUES ('25', '141000', '临汾市', '140000');
INSERT INTO `city` VALUES ('81', '320500', '苏州市', '320000');
INSERT INTO `city` VALUES ('195', '431000', '郴州市', '430000');
INSERT INTO `city` VALUES ('93', '330400', '嘉兴市', '330000');
INSERT INTO `city` VALUES ('88', '321200', '泰州市', '320000');
INSERT INTO `city` VALUES ('131', '360500', '新余市', '360000');
INSERT INTO `city` VALUES ('104', '340400', '淮南市', '340000');
INSERT INTO `city` VALUES ('5', '130100', '石家庄市', '130000');
INSERT INTO `city` VALUES ('140', '370300', '淄博市', '370000');
INSERT INTO `city` VALUES ('170', '411600', '周口市', '410000');
INSERT INTO `city` VALUES ('255', '511700', '达州市', '510000');
INSERT INTO `city` VALUES ('297', '610400', '咸阳市', '610000');
INSERT INTO `city` VALUES ('292', '542500', '阿里地区', '540000');
INSERT INTO `city` VALUES ('259', '513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `city` VALUES ('11', '130700', '张家口市', '130000');
INSERT INTO `city` VALUES ('113', '341400', '巢湖市', '340000');
INSERT INTO `city` VALUES ('153', '371600', '滨州市', '370000');
INSERT INTO `city` VALUES ('202', '440300', '深圳市', '440000');
INSERT INTO `city` VALUES ('325', '632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `city` VALUES ('298', '610500', '渭南市', '610000');
INSERT INTO `city` VALUES ('261', '513400', '凉山彝族自治州', '510000');
INSERT INTO `city` VALUES ('180', '421000', '荆州市', '420000');
INSERT INTO `city` VALUES ('334', '652200', '哈密地区', '650000');
INSERT INTO `city` VALUES ('141', '370400', '枣庄市', '370000');
INSERT INTO `city` VALUES ('137', '361100', '上饶市', '360000');
INSERT INTO `city` VALUES ('28', '150200', '包头市', '150000');
INSERT INTO `city` VALUES ('289', '542200', '山南地区', '540000');
INSERT INTO `city` VALUES ('118', '350100', '福州市', '350000');
INSERT INTO `city` VALUES ('243', '510400', '攀枝花市', '510000');
INSERT INTO `city` VALUES ('304', '620100', '兰州市', '620000');
INSERT INTO `city` VALUES ('266', '522200', '铜仁地区', '520000');
INSERT INTO `city` VALUES ('71', '231000', '牡丹江市', '230000');
INSERT INTO `city` VALUES ('336', '652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `city` VALUES ('35', '150900', '乌兰察布市', '150000');
INSERT INTO `city` VALUES ('282', '532800', '西双版纳傣族自治州', '530000');
INSERT INTO `city` VALUES ('218', '445100', '潮州市', '440000');
INSERT INTO `city` VALUES ('92', '330300', '温州市', '330000');
INSERT INTO `city` VALUES ('50', '211200', '铁岭市', '210000');
INSERT INTO `city` VALUES ('291', '542400', '那曲地区', '540000');
INSERT INTO `city` VALUES ('112', '341300', '宿州市', '340000');
INSERT INTO `city` VALUES ('30', '150400', '赤峰市', '150000');
INSERT INTO `city` VALUES ('305', '620200', '嘉峪关市', '620000');
INSERT INTO `city` VALUES ('65', '230400', '鹤岗市', '230000');
INSERT INTO `city` VALUES ('194', '430900', '益阳市', '430000');
INSERT INTO `city` VALUES ('235', '460100', '海口市', '460000');
INSERT INTO `city` VALUES ('75', '310100', '上海市', '310000');
INSERT INTO `city` VALUES ('146', '370900', '泰安市', '370000');
INSERT INTO `city` VALUES ('49', '211100', '盘锦市', '210000');
INSERT INTO `city` VALUES ('188', '430300', '湘潭市', '430000');
INSERT INTO `city` VALUES ('290', '542300', '日喀则地区', '540000');
INSERT INTO `city` VALUES ('296', '610300', '宝鸡市', '610000');
INSERT INTO `city` VALUES ('216', '441900', '东莞市', '440000');
INSERT INTO `city` VALUES ('288', '542100', '昌都地区', '540000');
INSERT INTO `city` VALUES ('213', '441600', '河源市', '440000');
INSERT INTO `city` VALUES ('158', '410400', '平顶山市', '410000');
INSERT INTO `city` VALUES ('47', '210900', '阜新市', '210000');
INSERT INTO `city` VALUES ('278', '530900', '临沧市', '530000');
INSERT INTO `city` VALUES ('144', '370700', '潍坊市', '370000');
INSERT INTO `city` VALUES ('31', '150500', '通辽市', '150000');
INSERT INTO `city` VALUES ('237', '469000', '省直辖县级行政单位', '460000');
INSERT INTO `city` VALUES ('339', '653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `city` VALUES ('186', '430100', '长沙市', '430000');
INSERT INTO `city` VALUES ('236', '460200', '三亚市', '460000');
INSERT INTO `city` VALUES ('321', '632300', '黄南藏族自治州', '630000');
INSERT INTO `city` VALUES ('199', '433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `city` VALUES ('272', '530300', '曲靖市', '530000');
INSERT INTO `city` VALUES ('254', '511600', '广安市', '510000');
INSERT INTO `city` VALUES ('319', '632100', '海东地区', '630000');
INSERT INTO `city` VALUES ('22', '140700', '晋中市', '140000');
INSERT INTO `city` VALUES ('203', '440400', '珠海市', '440000');
INSERT INTO `city` VALUES ('287', '540100', '拉萨市', '540000');
INSERT INTO `city` VALUES ('185', '429000', '省直辖行政单位', '420000');
INSERT INTO `city` VALUES ('283', '532900', '大理白族自治州', '530000');
INSERT INTO `city` VALUES ('196', '431100', '永州市', '430000');
INSERT INTO `city` VALUES ('269', '522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `city` VALUES ('156', '410200', '开封市', '410000');
INSERT INTO `city` VALUES ('51', '211300', '朝阳市', '210000');
INSERT INTO `city` VALUES ('200', '440100', '广州市', '440000');
INSERT INTO `city` VALUES ('132', '360600', '鹰潭市', '360000');
INSERT INTO `city` VALUES ('98', '330900', '舟山市', '330000');
INSERT INTO `city` VALUES ('265', '520400', '安顺市', '520000');
INSERT INTO `city` VALUES ('3', '120100', '天津市', '120000');
INSERT INTO `city` VALUES ('252', '511400', '眉山市', '510000');
INSERT INTO `city` VALUES ('145', '370800', '济宁市', '370000');
INSERT INTO `city` VALUES ('7', '130300', '秦皇岛市', '130000');
INSERT INTO `city` VALUES ('40', '210200', '大连市', '210000');
INSERT INTO `city` VALUES ('179', '420900', '孝感市', '420000');
INSERT INTO `city` VALUES ('223', '450300', '桂林市', '450000');
INSERT INTO `city` VALUES ('151', '371400', '德州市', '370000');
INSERT INTO `city` VALUES ('59', '220700', '松原市', '220000');
INSERT INTO `city` VALUES ('148', '371100', '日照市', '370000');
INSERT INTO `city` VALUES ('167', '411300', '南阳市', '410000');
INSERT INTO `city` VALUES ('48', '211000', '辽阳市', '210000');
INSERT INTO `city` VALUES ('66', '230500', '双鸭山市', '230000');
INSERT INTO `city` VALUES ('245', '510600', '德阳市', '510000');
INSERT INTO `city` VALUES ('189', '430400', '衡阳市', '430000');
INSERT INTO `city` VALUES ('160', '410600', '鹤壁市', '410000');
INSERT INTO `city` VALUES ('173', '420200', '黄石市', '420000');
INSERT INTO `city` VALUES ('33', '150700', '呼伦贝尔市', '150000');
INSERT INTO `city` VALUES ('41', '210300', '鞍山市', '210000');
INSERT INTO `city` VALUES ('29', '150300', '乌海市', '150000');
INSERT INTO `city` VALUES ('56', '220400', '辽源市', '220000');
INSERT INTO `city` VALUES ('43', '210500', '本溪市', '210000');
INSERT INTO `city` VALUES ('91', '330200', '宁波市', '330000');
INSERT INTO `city` VALUES ('52', '211400', '葫芦岛市', '210000');
INSERT INTO `city` VALUES ('215', '441800', '清远市', '440000');
INSERT INTO `city` VALUES ('77', '320100', '南京市', '320000');
INSERT INTO `city` VALUES ('168', '411400', '商丘市', '410000');
INSERT INTO `city` VALUES ('174', '420300', '十堰市', '420000');
INSERT INTO `city` VALUES ('226', '450600', '防城港市', '450000');
INSERT INTO `city` VALUES ('134', '360800', '吉安市', '360000');
INSERT INTO `city` VALUES ('107', '340700', '铜陵市', '340000');
INSERT INTO `city` VALUES ('32', '150600', '鄂尔多斯市', '150000');
INSERT INTO `city` VALUES ('19', '140400', '长治市', '140000');
INSERT INTO `city` VALUES ('79', '320300', '徐州市', '320000');
INSERT INTO `city` VALUES ('281', '532600', '文山壮族苗族自治州', '530000');
INSERT INTO `city` VALUES ('124', '350700', '南平市', '350000');
INSERT INTO `city` VALUES ('190', '430500', '邵阳市', '430000');
INSERT INTO `city` VALUES ('253', '511500', '宜宾市', '510000');
INSERT INTO `city` VALUES ('250', '511100', '乐山市', '510000');
INSERT INTO `city` VALUES ('67', '230600', '大庆市', '230000');
INSERT INTO `city` VALUES ('313', '621000', '庆阳市', '620000');
INSERT INTO `city` VALUES ('208', '440900', '茂名市', '440000');
INSERT INTO `city` VALUES ('260', '513300', '甘孜藏族自治州', '510000');
INSERT INTO `city` VALUES ('117', '341800', '宣城市', '340000');
INSERT INTO `city` VALUES ('54', '220200', '吉林市', '220000');

-- ----------------------------
-- Table structure for `province`
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provinceid` int(11) NOT NULL,
  `province` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('24', '520000', '贵州省');
INSERT INTO `province` VALUES ('14', '360000', '江西省');
INSERT INTO `province` VALUES ('1', '110000', '北京市');
INSERT INTO `province` VALUES ('23', '510000', '四川省');
INSERT INTO `province` VALUES ('8', '230000', '黑龙江省');
INSERT INTO `province` VALUES ('2', '120000', '天津市');
INSERT INTO `province` VALUES ('9', '310000', '上海市');
INSERT INTO `province` VALUES ('6', '210000', '辽宁省');
INSERT INTO `province` VALUES ('21', '460000', '海南省');
INSERT INTO `province` VALUES ('15', '370000', '山东省');
INSERT INTO `province` VALUES ('16', '410000', '河南省');
INSERT INTO `province` VALUES ('26', '540000', '西藏自治区');
INSERT INTO `province` VALUES ('13', '350000', '福建省');
INSERT INTO `province` VALUES ('17', '420000', '湖北省');
INSERT INTO `province` VALUES ('10', '320000', '江苏省');
INSERT INTO `province` VALUES ('12', '340000', '安徽省');
INSERT INTO `province` VALUES ('27', '610000', '陕西省');
INSERT INTO `province` VALUES ('4', '140000', '山西省');
INSERT INTO `province` VALUES ('34', '820000', '澳门特别行政区');
INSERT INTO `province` VALUES ('20', '450000', '广西壮族自治区');
INSERT INTO `province` VALUES ('18', '430000', '湖南省');
INSERT INTO `province` VALUES ('25', '530000', '云南省');
INSERT INTO `province` VALUES ('5', '150000', '内蒙古自治区');
INSERT INTO `province` VALUES ('11', '330000', '浙江省');
INSERT INTO `province` VALUES ('28', '620000', '甘肃省');
INSERT INTO `province` VALUES ('30', '640000', '宁夏回族自治区');
INSERT INTO `province` VALUES ('31', '650000', '新疆维吾尔自治区');
INSERT INTO `province` VALUES ('22', '500000', '重庆市');
INSERT INTO `province` VALUES ('3', '130000', '河北省');
INSERT INTO `province` VALUES ('7', '220000', '吉林省');
INSERT INTO `province` VALUES ('33', '810000', '香港特别行政区');
INSERT INTO `province` VALUES ('29', '630000', '青海省');
INSERT INTO `province` VALUES ('32', '710000', '台湾省');
INSERT INTO `province` VALUES ('19', '440000', '广东省');

-- ----------------------------
-- Table structure for `ts_ad`
-- ----------------------------
DROP TABLE IF EXISTS `ts_ad`;
CREATE TABLE `ts_ad` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `place` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:中部 1:头部 2:左侧 3:右侧 4:底部',
  `content` text,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_closable` tinyint(1) NOT NULL DEFAULT '0',
  `ctime` int(11) DEFAULT NULL,
  `mtime` int(11) DEFAULT NULL,
  `display_order` smallint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_ad
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `ts_admin_log`;
CREATE TABLE `ts_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `uid` int(11) NOT NULL COMMENT '操作人UID',
  `type` tinyint(4) NOT NULL,
  `data` text NOT NULL,
  `ctime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_admin_log
-- ----------------------------
INSERT INTO `ts_admin_log` VALUES ('24', '1', '3', 'a:3:{i:0;s:22:\"全局 - 邮件配置 \";i:1;a:0:{}i:2;a:7:{s:14:\"email_sendtype\";s:4:\"smtp\";s:10:\"email_host\";s:0:\"\";s:9:\"email_ssl\";s:1:\"0\";s:10:\"email_port\";s:0:\"\";s:13:\"email_account\";s:0:\"\";s:14:\"email_password\";s:0:\"\";s:17:\"email_sender_name\";s:5:\"admin\";}}', '1318781441');
INSERT INTO `ts_admin_log` VALUES ('14', '1', '3', 'a:3:{i:0;s:22:\"用户 - 用户管理 \";i:1;a:10:{s:3:\"uid\";s:1:\"2\";s:5:\"email\";s:18:\"wanglu950@sohu.com\";s:8:\"password\";s:32:\"5996c4c3ceca2b93f9c0902547c245db\";s:5:\"uname\";s:8:\"wangfeng\";s:6:\"domain\";s:0:\"\";s:3:\"sex\";s:1:\"1\";s:9:\"is_active\";s:1:\"1\";s:6:\"scorea\";s:1:\"0\";s:10:\"experience\";s:1:\"7\";s:13:\"user_group_id\";s:1:\"0\";}i:2;a:10:{s:3:\"uid\";i:2;s:5:\"email\";s:18:\"wanglu950@sohu.com\";s:8:\"password\";s:32:\"5996c4c3ceca2b93f9c0902547c245db\";s:5:\"uname\";s:8:\"wangfeng\";s:6:\"domain\";s:0:\"\";s:3:\"sex\";s:1:\"1\";s:5:\"score\";s:3:\"206\";s:10:\"experience\";s:1:\"7\";s:9:\"is_active\";s:1:\"1\";s:13:\"user_group_id\";s:1:\"2\";}}', '1318773392');
INSERT INTO `ts_admin_log` VALUES ('1', '1', '3', 'a:3:{i:0;s:22:\"全局 - 站点配置 \";i:1;a:18:{s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:11:\"site_closed\";i:0;s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}s:19:\"site_user_domain_on\";s:1:\"1\";s:19:\"site_system_version\";s:12:\"ThinkSNS 2.3\";s:26:\"site_system_version_number\";s:5:\"16095\";s:8:\"__hash__\";s:32:\"f9d2155a200139766ad5aa2e4606504c\";s:10:\"site_theme\";s:8:\"classic2\";s:18:\"site_closed_reason\";s:0:\"\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";}i:2;a:15:{s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:7:\"classic\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}}', '1317950956');
INSERT INTO `ts_admin_log` VALUES ('23', '1', '3', 'a:3:{i:0;s:22:\"全局 - 公告配置 \";i:1;a:2:{s:7:\"is_open\";s:1:\"1\";s:7:\"content\";s:20:\"欢迎使用ThinkSNS\";}i:2;a:2:{s:7:\"is_open\";s:1:\"1\";s:7:\"content\";s:21:\"欢迎来到亲邻网\";}}', '1318781417');
INSERT INTO `ts_admin_log` VALUES ('8', '1', '3', 'a:3:{i:0;s:22:\"全局 - 站点配置 \";i:1;a:18:{s:19:\"site_system_version\";s:12:\"ThinkSNS 2.3\";s:26:\"site_system_version_number\";s:5:\"16095\";s:8:\"__hash__\";s:32:\"f9d2155a200139766ad5aa2e4606504c\";s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:8:\"classic2\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}i:2;a:15:{s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:5:\"weibo\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}}', '1317964872');
INSERT INTO `ts_admin_log` VALUES ('2', '1', '3', 'a:3:{i:0;s:22:\"全局 - 站点配置 \";i:1;a:18:{s:19:\"site_system_version\";s:12:\"ThinkSNS 2.3\";s:26:\"site_system_version_number\";s:5:\"16095\";s:8:\"__hash__\";s:32:\"f9d2155a200139766ad5aa2e4606504c\";s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:7:\"classic\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}i:2;a:15:{s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:5:\"weibo\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}}', '1317951012');
INSERT INTO `ts_admin_log` VALUES ('9', '1', '3', 'a:3:{i:0;s:22:\"全局 - 站点配置 \";i:1;a:18:{s:19:\"site_system_version\";s:12:\"ThinkSNS 2.3\";s:26:\"site_system_version_number\";s:5:\"16095\";s:8:\"__hash__\";s:32:\"f9d2155a200139766ad5aa2e4606504c\";s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:5:\"weibo\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}i:2;a:15:{s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:8:\"classic2\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}}', '1317971288');
INSERT INTO `ts_admin_log` VALUES ('6', '1', '3', 'a:3:{i:0;s:22:\"全局 - 站点配置 \";i:1;a:18:{s:19:\"site_system_version\";s:12:\"ThinkSNS 2.3\";s:26:\"site_system_version_number\";s:5:\"16095\";s:8:\"__hash__\";s:32:\"f9d2155a200139766ad5aa2e4606504c\";s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:8:\"classic2\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}i:2;a:15:{s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:5:\"weibo\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}}', '1317956888');
INSERT INTO `ts_admin_log` VALUES ('21', '1', '3', 'a:3:{i:0;s:22:\"全局 - 站点配置 \";i:1;a:18:{s:19:\"site_system_version\";s:12:\"ThinkSNS 2.3\";s:26:\"site_system_version_number\";s:5:\"16095\";s:8:\"__hash__\";s:32:\"f9d2155a200139766ad5aa2e4606504c\";s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:5:\"weibo\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}i:2;a:15:{s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:5:\"weibo\";s:11:\"site_verify\";s:0:\"\";}}', '1318781099');
INSERT INTO `ts_admin_log` VALUES ('15', '1', '3', 'a:3:{i:0;s:22:\"用户 - 用户管理 \";i:1;a:10:{s:3:\"uid\";s:1:\"1\";s:5:\"email\";s:15:\"admin@admin.com\";s:8:\"password\";s:32:\"5996c4c3ceca2b93f9c0902547c245db\";s:5:\"uname\";s:9:\"管理员\";s:6:\"domain\";s:0:\"\";s:3:\"sex\";s:1:\"0\";s:9:\"is_active\";s:1:\"1\";s:6:\"scorea\";s:1:\"0\";s:10:\"experience\";s:2:\"-1\";s:13:\"user_group_id\";s:1:\"1\";}i:2;a:10:{s:3:\"uid\";i:1;s:5:\"email\";s:15:\"admin@admin.com\";s:8:\"password\";s:32:\"5996c4c3ceca2b93f9c0902547c245db\";s:5:\"uname\";s:9:\"管理员\";s:6:\"domain\";s:0:\"\";s:3:\"sex\";s:1:\"0\";s:5:\"score\";s:2:\"-2\";s:10:\"experience\";s:2:\"-1\";s:9:\"is_active\";s:1:\"1\";s:13:\"user_group_id\";s:5:\"1,2,3\";}}', '1318773651');
INSERT INTO `ts_admin_log` VALUES ('16', '1', '3', 'a:3:{i:0;s:22:\"用户 - 用户管理 \";i:1;a:10:{s:3:\"uid\";s:1:\"2\";s:5:\"email\";s:18:\"wanglu950@sohu.com\";s:8:\"password\";s:32:\"5996c4c3ceca2b93f9c0902547c245db\";s:5:\"uname\";s:8:\"wangfeng\";s:6:\"domain\";s:0:\"\";s:3:\"sex\";s:1:\"1\";s:9:\"is_active\";s:1:\"1\";s:6:\"scorea\";s:1:\"0\";s:10:\"experience\";s:1:\"7\";s:13:\"user_group_id\";s:1:\"2\";}i:2;a:10:{s:3:\"uid\";i:2;s:5:\"email\";s:18:\"wanglu950@sohu.com\";s:8:\"password\";s:32:\"5996c4c3ceca2b93f9c0902547c245db\";s:5:\"uname\";s:8:\"wangfeng\";s:6:\"domain\";s:0:\"\";s:3:\"sex\";s:1:\"1\";s:5:\"score\";s:3:\"206\";s:10:\"experience\";s:1:\"7\";s:9:\"is_active\";s:1:\"1\";s:13:\"user_group_id\";s:5:\"2,3,1\";}}', '1318773698');
INSERT INTO `ts_admin_log` VALUES ('26', '1', '3', 'a:3:{i:0;s:22:\"全局 - 文章配置 \";i:1;a:0:{}i:2;a:7:{s:11:\"document_id\";i:2;s:5:\"title\";s:12:\"联系我们\";s:9:\"is_active\";i:1;s:12:\"is_on_footer\";i:1;s:7:\"content\";s:62:\"&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 联系我们&lt;/p&gt;\";s:14:\"last_editor_id\";i:1;s:5:\"mtime\";i:1318781590;}}', '1318781590');
INSERT INTO `ts_admin_log` VALUES ('13', '1', '3', 'a:3:{i:0;s:22:\"用户 - 用户管理 \";i:1;a:10:{s:3:\"uid\";s:1:\"2\";s:5:\"email\";s:18:\"wanglu950@sohu.com\";s:8:\"password\";s:32:\"5996c4c3ceca2b93f9c0902547c245db\";s:5:\"uname\";s:8:\"wangfeng\";s:6:\"domain\";s:0:\"\";s:3:\"sex\";s:1:\"1\";s:9:\"is_active\";s:1:\"1\";s:6:\"scorea\";s:1:\"0\";s:10:\"experience\";s:1:\"7\";s:13:\"user_group_id\";s:1:\"0\";}i:2;a:10:{s:3:\"uid\";i:2;s:5:\"email\";s:18:\"wanglu950@sohu.com\";s:8:\"password\";s:32:\"5996c4c3ceca2b93f9c0902547c245db\";s:5:\"uname\";s:8:\"wangfeng\";s:6:\"domain\";s:0:\"\";s:3:\"sex\";s:1:\"1\";s:5:\"score\";s:3:\"206\";s:10:\"experience\";s:1:\"7\";s:9:\"is_active\";s:1:\"1\";s:13:\"user_group_id\";s:0:\"\";}}', '1318769605');
INSERT INTO `ts_admin_log` VALUES ('17', '1', '1', 'a:2:{i:0;s:25:\"用户 - 用户组管理 \";i:1;a:2:{s:5:\"title\";s:12:\"普通会员\";s:4:\"icon\";s:0:\"\";}}', '1318773798');
INSERT INTO `ts_admin_log` VALUES ('10', '1', '3', 'a:3:{i:0;s:22:\"全局 - 站点配置 \";i:1;a:18:{s:19:\"site_system_version\";s:12:\"ThinkSNS 2.3\";s:26:\"site_system_version_number\";s:5:\"16095\";s:8:\"__hash__\";s:32:\"f9d2155a200139766ad5aa2e4606504c\";s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:8:\"classic2\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}i:2;a:15:{s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:5:\"weibo\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}}', '1318018149');
INSERT INTO `ts_admin_log` VALUES ('12', '1', '1', 'a:2:{i:0;s:25:\"用户 - 用户组管理 \";i:1;a:2:{s:5:\"title\";s:12:\"小区物业\";s:4:\"icon\";s:0:\"\";}}', '1318769458');
INSERT INTO `ts_admin_log` VALUES ('27', '1', '1', 'a:2:{i:0;s:22:\"全局 - 文章配置 \";i:1;a:8:{s:5:\"title\";s:12:\"网站合作\";s:9:\"is_active\";i:1;s:12:\"is_on_footer\";i:1;s:7:\"content\";s:31:\"&lt;p&gt;网站合作&lt;/p&gt;\";s:14:\"last_editor_id\";i:1;s:5:\"mtime\";i:1318781618;s:9:\"author_id\";i:1;s:5:\"ctime\";i:1318781618;}}', '1318781618');
INSERT INTO `ts_admin_log` VALUES ('4', '1', '3', 'a:3:{i:0;s:22:\"全局 - 站点配置 \";i:1;a:18:{s:19:\"site_system_version\";s:12:\"ThinkSNS 2.3\";s:26:\"site_system_version_number\";s:5:\"16095\";s:8:\"__hash__\";s:32:\"f9d2155a200139766ad5aa2e4606504c\";s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:7:\"classic\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}i:2;a:15:{s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:5:\"weibo\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}}', '1317953301');
INSERT INTO `ts_admin_log` VALUES ('20', '1', '2', 'a:2:{i:0;s:30:\"扩展 - 工具 - 地区管理\";i:1;a:1:{i:0;a:3:{s:7:\"area_id\";s:4:\"3235\";s:5:\"title\";s:4:\"ffff\";s:3:\"pid\";s:1:\"3\";}}}', '1318778472');
INSERT INTO `ts_admin_log` VALUES ('18', '1', '3', 'a:5:{s:5:\"title\";s:12:\"亲邻会员\";s:4:\"icon\";s:0:\"\";i:0;s:25:\"用户 - 用户组管理 \";i:1;a:1:{i:0;a:4:{s:13:\"user_group_id\";s:1:\"4\";s:5:\"title\";s:12:\"普通会员\";s:5:\"ctime\";s:10:\"1318773798\";s:4:\"icon\";s:0:\"\";}}i:2;a:3:{s:3:\"gid\";s:1:\"4\";s:5:\"title\";s:12:\"亲邻会员\";s:4:\"icon\";s:0:\"\";}}', '1318773949');
INSERT INTO `ts_admin_log` VALUES ('25', '1', '3', 'a:3:{i:0;s:22:\"全局 - 文章配置 \";i:1;a:0:{}i:2;a:7:{s:11:\"document_id\";i:1;s:5:\"title\";s:12:\"关于粘米\";s:9:\"is_active\";i:1;s:12:\"is_on_footer\";i:1;s:7:\"content\";s:31:\"&lt;p&gt;关于粘米&lt;/p&gt;\";s:14:\"last_editor_id\";i:1;s:5:\"mtime\";i:1318781571;}}', '1318781571');
INSERT INTO `ts_admin_log` VALUES ('5', '1', '3', 'a:3:{i:0;s:22:\"全局 - 站点配置 \";i:1;a:18:{s:19:\"site_system_version\";s:12:\"ThinkSNS 2.3\";s:26:\"site_system_version_number\";s:5:\"16095\";s:8:\"__hash__\";s:32:\"f9d2155a200139766ad5aa2e4606504c\";s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:5:\"weibo\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}i:2;a:15:{s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:8:\"classic2\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}}', '1317954877');
INSERT INTO `ts_admin_log` VALUES ('11', '1', '1', 'a:2:{i:0;s:25:\"用户 - 用户组管理 \";i:1;a:2:{s:5:\"title\";s:12:\"商家用户\";s:4:\"icon\";s:0:\"\";}}', '1318769427');
INSERT INTO `ts_admin_log` VALUES ('28', '1', '2', 'a:3:{i:0;s:22:\"全局 - 文章配置 \";i:1;a:0:{}i:2;a:1:{s:3:\"ids\";s:3:\"1,2\";}}', '1318781810');
INSERT INTO `ts_admin_log` VALUES ('30', '1', '1', 'a:2:{i:0;s:22:\"全局 - 文章配置 \";i:1;a:8:{s:5:\"title\";s:12:\"关于粘米\";s:9:\"is_active\";i:1;s:12:\"is_on_footer\";i:1;s:7:\"content\";s:31:\"&lt;p&gt;关于粘米&lt;/p&gt;\";s:14:\"last_editor_id\";i:1;s:5:\"mtime\";i:1318781836;s:9:\"author_id\";i:1;s:5:\"ctime\";i:1318781836;}}', '1318781836');
INSERT INTO `ts_admin_log` VALUES ('31', '1', '3', 'a:3:{i:0;s:22:\"全局 - 审核配置 \";i:1;a:0:{}i:2;a:3:{s:4:\"open\";s:1:\"0\";s:8:\"keywords\";s:0:\"\";s:7:\"replace\";s:0:\"\";}}', '1318781849');
INSERT INTO `ts_admin_log` VALUES ('22', '1', '3', 'a:3:{i:0;s:22:\"全局 - 站点配置 \";i:1;a:18:{s:19:\"site_system_version\";s:12:\"ThinkSNS 2.3\";s:26:\"site_system_version_number\";s:5:\"16095\";s:8:\"__hash__\";s:32:\"f9d2155a200139766ad5aa2e4606504c\";s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:5:\"weibo\";s:11:\"site_verify\";s:0:\"\";}i:2;a:13:{s:9:\"site_name\";s:9:\"亲邻网\";s:11:\"site_slogan\";s:24:\"网络社区交友平台\";s:20:\"site_header_keywords\";s:13:\"亲邻|粘米\";s:23:\"site_header_description\";s:13:\"亲邻|粘米\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:51:\"粘米网络科技有限公司 浙ICP备00000001号\";s:11:\"site_verify\";s:0:\"\";}}', '1318781328');
INSERT INTO `ts_admin_log` VALUES ('3', '1', '3', 'a:3:{i:0;s:22:\"全局 - 站点配置 \";i:1;a:18:{s:19:\"site_system_version\";s:12:\"ThinkSNS 2.3\";s:26:\"site_system_version_number\";s:5:\"16095\";s:8:\"__hash__\";s:32:\"f9d2155a200139766ad5aa2e4606504c\";s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:5:\"weibo\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}i:2;a:15:{s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:7:\"classic\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}}', '1317953186');
INSERT INTO `ts_admin_log` VALUES ('7', '1', '3', 'a:3:{i:0;s:22:\"全局 - 站点配置 \";i:1;a:18:{s:19:\"site_system_version\";s:12:\"ThinkSNS 2.3\";s:26:\"site_system_version_number\";s:5:\"16095\";s:8:\"__hash__\";s:32:\"f9d2155a200139766ad5aa2e4606504c\";s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:5:\"weibo\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}i:2;a:15:{s:9:\"site_name\";s:8:\"ThinkSNS\";s:11:\"site_slogan\";s:21:\"社会化动力平台\";s:20:\"site_header_keywords\";s:12:\"ThinkSNS|SNS\";s:23:\"site_header_description\";s:19:\"ThinkSNS|SNS|Sociax\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:19:\"site_user_domain_on\";s:1:\"1\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:57:\"智士软件（北京）有限公司 京ICP备04000001号\";s:10:\"site_theme\";s:8:\"classic2\";s:11:\"site_verify\";a:1:{i:0;s:8:\"register\";}}}', '1317964763');
INSERT INTO `ts_admin_log` VALUES ('33', '1', '3', 'a:3:{i:0;s:22:\"全局 - 站点配置 \";i:1;a:18:{s:19:\"site_system_version\";s:12:\"ThinkSNS 2.3\";s:26:\"site_system_version_number\";s:5:\"16095\";s:8:\"__hash__\";s:32:\"f9d2155a200139766ad5aa2e4606504c\";s:19:\"site_user_domain_on\";s:1:\"1\";s:10:\"site_theme\";s:5:\"weibo\";s:9:\"site_name\";s:9:\"亲邻网\";s:11:\"site_slogan\";s:24:\"网络社区交友平台\";s:20:\"site_header_keywords\";s:13:\"亲邻|粘米\";s:23:\"site_header_description\";s:13:\"亲邻|粘米\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:51:\"粘米网络科技有限公司 浙ICP备00000001号\";s:11:\"site_verify\";s:0:\"\";}i:2;a:13:{s:9:\"site_name\";s:9:\"亲邻网\";s:11:\"site_slogan\";s:15:\"城市轻社区\";s:20:\"site_header_keywords\";s:13:\"亲邻|粘米\";s:23:\"site_header_description\";s:13:\"亲邻|粘米\";s:11:\"site_closed\";i:0;s:18:\"site_closed_reason\";s:0:\"\";s:14:\"site_anonymous\";s:1:\"1\";s:21:\"site_anonymous_square\";s:1:\"0\";s:21:\"site_anonymous_search\";s:1:\"0\";s:17:\"site_user_visited\";s:1:\"1\";s:22:\"site_appalias_wordwrap\";s:1:\"1\";s:8:\"site_icp\";s:51:\"粘米网络科技有限公司 浙ICP备00000001号\";s:11:\"site_verify\";s:0:\"\";}}', '1318785312');
INSERT INTO `ts_admin_log` VALUES ('29', '1', '2', 'a:3:{i:0;s:22:\"全局 - 文章配置 \";i:1;a:0:{}i:2;a:1:{s:3:\"ids\";s:1:\"1\";}}', '1318781819');
INSERT INTO `ts_admin_log` VALUES ('32', '1', '1', 'a:2:{i:0;s:63:\"应用 - 应用配置 - 微博 - 名人堂 - 创建一级分组\";i:1;a:2:{s:5:\"title\";s:6:\"000000\";s:3:\"tid\";s:1:\"0\";}}', '1318783942');
INSERT INTO `ts_admin_log` VALUES ('19', '1', '1', 'a:2:{i:0;s:30:\"扩展 - 工具 - 地区管理\";i:1;a:2:{s:5:\"title\";s:4:\"ffff\";s:3:\"pid\";i:3;}}', '1318778436');

-- ----------------------------
-- Table structure for `ts_app`
-- ----------------------------
DROP TABLE IF EXISTS `ts_app`;
CREATE TABLE `ts_app` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `app_alias` varchar(255) NOT NULL,
  `description` text,
  `version` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0:关闭 1:默认 2:可选',
  `category` varchar(255) DEFAULT NULL,
  `release_date` varchar(255) DEFAULT NULL,
  `last_update_date` varchar(255) DEFAULT NULL,
  `host_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：本地应用 1：远程应用',
  `app_entry` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `large_icon_url` varchar(255) DEFAULT NULL,
  `admin_entry` varchar(255) DEFAULT NULL,
  `statistics_entry` varchar(255) DEFAULT NULL,
  `homepage_url` varchar(255) DEFAULT NULL,
  `sidebar_title` varchar(255) DEFAULT NULL,
  `sidebar_entry` varchar(255) DEFAULT NULL,
  `sidebar_icon_url` varchar(255) DEFAULT NULL,
  `sidebar_support_submenu` tinyint(1) NOT NULL DEFAULT '0',
  `sidebar_is_submenu_active` tinyint(1) NOT NULL DEFAULT '0',
  `author_name` varchar(255) DEFAULT NULL,
  `author_email` varchar(255) DEFAULT NULL,
  `author_homepage_url` varchar(255) DEFAULT NULL,
  `contributor_name` text,
  `display_order` smallint(5) NOT NULL DEFAULT '0',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_app
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_area`
-- ----------------------------
DROP TABLE IF EXISTS `ts_area`;
CREATE TABLE `ts_area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`area_id`),
  KEY `pid` (`pid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3235 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_area
-- ----------------------------
INSERT INTO `ts_area` VALUES ('24', '河东区', '22');
INSERT INTO `ts_area` VALUES ('939', '宿豫区', '937');
INSERT INTO `ts_area` VALUES ('590', '朝阳区', '587');
INSERT INTO `ts_area` VALUES ('638', '长岭县', '635');
INSERT INTO `ts_area` VALUES ('182', '丰宁满族自治县', '173');
INSERT INTO `ts_area` VALUES ('165', '蔚县', '155');
INSERT INTO `ts_area` VALUES ('36', '武清区', '22');
INSERT INTO `ts_area` VALUES ('879', '南通市', '823');
INSERT INTO `ts_area` VALUES ('399', '库伦旗', '394');
INSERT INTO `ts_area` VALUES ('578', '凌源市', '571');
INSERT INTO `ts_area` VALUES ('111', '桥西区', '109');
INSERT INTO `ts_area` VALUES ('412', '伊金霍洛旗', '403');
INSERT INTO `ts_area` VALUES ('648', '延吉市', '647');
INSERT INTO `ts_area` VALUES ('574', '朝阳县', '571');
INSERT INTO `ts_area` VALUES ('201', '河间市', '185');
INSERT INTO `ts_area` VALUES ('280', '应县', '276');
INSERT INTO `ts_area` VALUES ('128', '沙河市', '109');
INSERT INTO `ts_area` VALUES ('592', '绿园区', '587');
INSERT INTO `ts_area` VALUES ('520', '丹东市', '471');
INSERT INTO `ts_area` VALUES ('913', '东台市', '905');
INSERT INTO `ts_area` VALUES ('633', '长白朝鲜族自治县', '628');
INSERT INTO `ts_area` VALUES ('756', '汤原县', '749');
INSERT INTO `ts_area` VALUES ('760', '七台河市', '656');
INSERT INTO `ts_area` VALUES ('330', '古县', '324');
INSERT INTO `ts_area` VALUES ('700', '鸡东县', '693');
INSERT INTO `ts_area` VALUES ('546', '清河门区', '542');
INSERT INTO `ts_area` VALUES ('462', '太仆寺旗', '454');
INSERT INTO `ts_area` VALUES ('581', '龙港区', '579');
INSERT INTO `ts_area` VALUES ('895', '灌南县', '888');
INSERT INTO `ts_area` VALUES ('335', '大宁县', '324');
INSERT INTO `ts_area` VALUES ('136', '阜平县', '129');
INSERT INTO `ts_area` VALUES ('275', '高平市', '269');
INSERT INTO `ts_area` VALUES ('750', '向阳区', '749');
INSERT INTO `ts_area` VALUES ('307', '永济市', '295');
INSERT INTO `ts_area` VALUES ('714', '岭东区', '712');
INSERT INTO `ts_area` VALUES ('522', '振兴区', '520');
INSERT INTO `ts_area` VALUES ('114', '内丘县', '109');
INSERT INTO `ts_area` VALUES ('531', '黑山县', '527');
INSERT INTO `ts_area` VALUES ('277', '朔城区', '276');
INSERT INTO `ts_area` VALUES ('467', '阿拉善盟', '356');
INSERT INTO `ts_area` VALUES ('511', '新宾满族自治县', '505');
INSERT INTO `ts_area` VALUES ('105', '馆陶县', '89');
INSERT INTO `ts_area` VALUES ('619', '东辽县', '615');
INSERT INTO `ts_area` VALUES ('776', '黑河市', '656');
INSERT INTO `ts_area` VALUES ('233', '清徐县', '226');
INSERT INTO `ts_area` VALUES ('981', '乐清市', '970');
INSERT INTO `ts_area` VALUES ('262', '黎城县', '255');
INSERT INTO `ts_area` VALUES ('616', '龙山区', '615');
INSERT INTO `ts_area` VALUES ('100', '肥乡县', '89');
INSERT INTO `ts_area` VALUES ('821', '奉贤区', '803');
INSERT INTO `ts_area` VALUES ('351', '方山县', '342');
INSERT INTO `ts_area` VALUES ('14', '顺义区', '2');
INSERT INTO `ts_area` VALUES ('340', '侯马市', '324');
INSERT INTO `ts_area` VALUES ('834', '江宁区', '824');
INSERT INTO `ts_area` VALUES ('192', '盐山县', '185');
INSERT INTO `ts_area` VALUES ('270', '城区', '269');
INSERT INTO `ts_area` VALUES ('902', '洪泽县', '896');
INSERT INTO `ts_area` VALUES ('958', '宁波市', '943');
INSERT INTO `ts_area` VALUES ('880', '崇川区', '879');
INSERT INTO `ts_area` VALUES ('554', '弓长岭区', '550');
INSERT INTO `ts_area` VALUES ('123', '平乡县', '109');
INSERT INTO `ts_area` VALUES ('471', '辽宁', '0');
INSERT INTO `ts_area` VALUES ('921', '高邮市', '915');
INSERT INTO `ts_area` VALUES ('96', '成安县', '89');
INSERT INTO `ts_area` VALUES ('121', '新河县', '109');
INSERT INTO `ts_area` VALUES ('318', '五寨县', '309');
INSERT INTO `ts_area` VALUES ('241', '新荣区', '237');
INSERT INTO `ts_area` VALUES ('642', '洮北区', '641');
INSERT INTO `ts_area` VALUES ('624', '辉南县', '620');
INSERT INTO `ts_area` VALUES ('706', '南山区', '703');
INSERT INTO `ts_area` VALUES ('929', '句容市', '923');
INSERT INTO `ts_area` VALUES ('623', '通化县', '620');
INSERT INTO `ts_area` VALUES ('822', '崇明县', '803');
INSERT INTO `ts_area` VALUES ('312', '五台县', '309');
INSERT INTO `ts_area` VALUES ('279', '山阴县', '276');
INSERT INTO `ts_area` VALUES ('595', '九台市', '587');
INSERT INTO `ts_area` VALUES ('602', '丰满区', '598');
INSERT INTO `ts_area` VALUES ('441', '凉城县', '435');
INSERT INTO `ts_area` VALUES ('38', '宁河县', '22');
INSERT INTO `ts_area` VALUES ('662', '松北区', '657');
INSERT INTO `ts_area` VALUES ('566', '铁岭县', '563');
INSERT INTO `ts_area` VALUES ('831', '浦口区', '824');
INSERT INTO `ts_area` VALUES ('564', '银州区', '563');
INSERT INTO `ts_area` VALUES ('503', '岫岩满族自治县', '497');
INSERT INTO `ts_area` VALUES ('406', '达拉特旗', '403');
INSERT INTO `ts_area` VALUES ('814', '宝山区', '803');
INSERT INTO `ts_area` VALUES ('248', '大同县', '237');
INSERT INTO `ts_area` VALUES ('207', '香河县', '202');
INSERT INTO `ts_area` VALUES ('643', '镇赉县', '641');
INSERT INTO `ts_area` VALUES ('876', '昆山市', '867');
INSERT INTO `ts_area` VALUES ('905', '盐城市', '823');
INSERT INTO `ts_area` VALUES ('157', '桥西区', '155');
INSERT INTO `ts_area` VALUES ('841', '北塘区', '838');
INSERT INTO `ts_area` VALUES ('1', '北京', '0');
INSERT INTO `ts_area` VALUES ('954', '淳安县', '944');
INSERT INTO `ts_area` VALUES ('987', '海宁市', '982');
INSERT INTO `ts_area` VALUES ('962', '北仑区', '958');
INSERT INTO `ts_area` VALUES ('110', '桥东区', '109');
INSERT INTO `ts_area` VALUES ('97', '大名县', '89');
INSERT INTO `ts_area` VALUES ('618', '东丰县', '615');
INSERT INTO `ts_area` VALUES ('469', '阿拉善右旗', '467');
INSERT INTO `ts_area` VALUES ('347', '临县', '342');
INSERT INTO `ts_area` VALUES ('468', '阿拉善左旗', '467');
INSERT INTO `ts_area` VALUES ('484', '法库县', '472');
INSERT INTO `ts_area` VALUES ('23', '和平区', '22');
INSERT INTO `ts_area` VALUES ('696', '滴道区', '693');
INSERT INTO `ts_area` VALUES ('603', '永吉县', '598');
INSERT INTO `ts_area` VALUES ('604', '蛟河市', '598');
INSERT INTO `ts_area` VALUES ('713', '尖山区', '712');
INSERT INTO `ts_area` VALUES ('646', '大安市', '641');
INSERT INTO `ts_area` VALUES ('795', '加格达奇区', '794');
INSERT INTO `ts_area` VALUES ('155', '张家口市', '41');
INSERT INTO `ts_area` VALUES ('746', '上甘岭区', '731');
INSERT INTO `ts_area` VALUES ('755', '桦川县', '749');
INSERT INTO `ts_area` VALUES ('600', '龙潭区', '598');
INSERT INTO `ts_area` VALUES ('858', '邳州市', '847');
INSERT INTO `ts_area` VALUES ('634', '临江市', '628');
INSERT INTO `ts_area` VALUES ('524', '宽甸满族自治县', '520');
INSERT INTO `ts_area` VALUES ('244', '广灵县', '237');
INSERT INTO `ts_area` VALUES ('175', '双滦区', '173');
INSERT INTO `ts_area` VALUES ('222', '阜城县', '213');
INSERT INTO `ts_area` VALUES ('419', '陈巴尔虎旗', '413');
INSERT INTO `ts_area` VALUES ('431', '乌拉特前旗', '427');
INSERT INTO `ts_area` VALUES ('323', '原平市', '309');
INSERT INTO `ts_area` VALUES ('371', '石拐区', '367');
INSERT INTO `ts_area` VALUES ('757', '抚远县', '749');
INSERT INTO `ts_area` VALUES ('191', '海兴县', '185');
INSERT INTO `ts_area` VALUES ('606', '舒兰市', '598');
INSERT INTO `ts_area` VALUES ('370', '青山区', '367');
INSERT INTO `ts_area` VALUES ('514', '平山区', '513');
INSERT INTO `ts_area` VALUES ('299', '闻喜县', '295');
INSERT INTO `ts_area` VALUES ('108', '武安市', '89');
INSERT INTO `ts_area` VALUES ('443', '察哈尔右翼中旗', '435');
INSERT INTO `ts_area` VALUES ('346', '兴县', '342');
INSERT INTO `ts_area` VALUES ('8', '丰台区', '2');
INSERT INTO `ts_area` VALUES ('214', '桃城区', '213');
INSERT INTO `ts_area` VALUES ('498', '铁东区', '497');
INSERT INTO `ts_area` VALUES ('808', '静安区', '803');
INSERT INTO `ts_area` VALUES ('629', '八道江区', '628');
INSERT INTO `ts_area` VALUES ('824', '南京市', '823');
INSERT INTO `ts_area` VALUES ('622', '二道江区', '620');
INSERT INTO `ts_area` VALUES ('363', '托克托县', '357');
INSERT INTO `ts_area` VALUES ('589', '宽城区', '587');
INSERT INTO `ts_area` VALUES ('78', '唐海县', '66');
INSERT INTO `ts_area` VALUES ('767', '阳明区', '765');
INSERT INTO `ts_area` VALUES ('37', '宝坻区', '22');
INSERT INTO `ts_area` VALUES ('310', '忻府区', '309');
INSERT INTO `ts_area` VALUES ('758', '同江市', '749');
INSERT INTO `ts_area` VALUES ('815', '嘉定区', '803');
INSERT INTO `ts_area` VALUES ('769', '西安区', '765');
INSERT INTO `ts_area` VALUES ('465', '正蓝旗', '454');
INSERT INTO `ts_area` VALUES ('164', '尚义县', '155');
INSERT INTO `ts_area` VALUES ('855', '铜山县', '847');
INSERT INTO `ts_area` VALUES ('708', '东山区', '703');
INSERT INTO `ts_area` VALUES ('309', '忻州市', '225');
INSERT INTO `ts_area` VALUES ('122', '广宗县', '109');
INSERT INTO `ts_area` VALUES ('221', '景县', '213');
INSERT INTO `ts_area` VALUES ('969', '奉化市', '958');
INSERT INTO `ts_area` VALUES ('402', '霍林郭勒市', '394');
INSERT INTO `ts_area` VALUES ('273', '陵川县', '269');
INSERT INTO `ts_area` VALUES ('474', '沈河区', '472');
INSERT INTO `ts_area` VALUES ('193', '肃宁县', '185');
INSERT INTO `ts_area` VALUES ('726', '大同区', '721');
INSERT INTO `ts_area` VALUES ('197', '孟村回族自治县', '185');
INSERT INTO `ts_area` VALUES ('525', '东港市', '520');
INSERT INTO `ts_area` VALUES ('171', '赤城县', '155');
INSERT INTO `ts_area` VALUES ('639', '乾安县', '635');
INSERT INTO `ts_area` VALUES ('861', '钟楼区', '859');
INSERT INTO `ts_area` VALUES ('517', '南芬区', '513');
INSERT INTO `ts_area` VALUES ('505', '抚顺市', '471');
INSERT INTO `ts_area` VALUES ('362', '土默特左旗', '357');
INSERT INTO `ts_area` VALUES ('455', '二连浩特市', '454');
INSERT INTO `ts_area` VALUES ('854', '沛县', '847');
INSERT INTO `ts_area` VALUES ('842', '锡山区', '838');
INSERT INTO `ts_area` VALUES ('802', '上海', '0');
INSERT INTO `ts_area` VALUES ('204', '广阳区', '202');
INSERT INTO `ts_area` VALUES ('568', '昌图县', '563');
INSERT INTO `ts_area` VALUES ('152', '定州市', '129');
INSERT INTO `ts_area` VALUES ('256', '城区', '255');
INSERT INTO `ts_area` VALUES ('135', '涞水县', '129');
INSERT INTO `ts_area` VALUES ('150', '雄县', '129');
INSERT INTO `ts_area` VALUES ('257', '郊区', '255');
INSERT INTO `ts_area` VALUES ('527', '锦州市', '471');
INSERT INTO `ts_area` VALUES ('457', '阿巴嘎旗', '454');
INSERT INTO `ts_area` VALUES ('817', '金山区', '803');
INSERT INTO `ts_area` VALUES ('58', '平山县', '42');
INSERT INTO `ts_area` VALUES ('865', '溧阳市', '859');
INSERT INTO `ts_area` VALUES ('816', '浦东新区', '803');
INSERT INTO `ts_area` VALUES ('888', '连云港市', '823');
INSERT INTO `ts_area` VALUES ('302', '绛县', '295');
INSERT INTO `ts_area` VALUES ('743', '带岭区', '731');
INSERT INTO `ts_area` VALUES ('143', '望都县', '129');
INSERT INTO `ts_area` VALUES ('675', '五常市', '657');
INSERT INTO `ts_area` VALUES ('735', '西林区', '731');
INSERT INTO `ts_area` VALUES ('489', '沙河口区', '486');
INSERT INTO `ts_area` VALUES ('76', '迁西县', '66');
INSERT INTO `ts_area` VALUES ('885', '如皋市', '879');
INSERT INTO `ts_area` VALUES ('210', '大厂回族自治县', '202');
INSERT INTO `ts_area` VALUES ('725', '红岗区', '721');
INSERT INTO `ts_area` VALUES ('833', '雨花台区', '824');
INSERT INTO `ts_area` VALUES ('392', '宁城县', '381');
INSERT INTO `ts_area` VALUES ('591', '二道区', '587');
INSERT INTO `ts_area` VALUES ('344', '文水县', '342');
INSERT INTO `ts_area` VALUES ('125', '清河县', '109');
INSERT INTO `ts_area` VALUES ('644', '通榆县', '641');
INSERT INTO `ts_area` VALUES ('666', '依兰县', '657');
INSERT INTO `ts_area` VALUES ('115', '柏乡县', '109');
INSERT INTO `ts_area` VALUES ('461', '西乌珠穆沁旗', '454');
INSERT INTO `ts_area` VALUES ('730', '杜尔伯特蒙古族自治县', '721');
INSERT INTO `ts_area` VALUES ('789', '明水县', '783');
INSERT INTO `ts_area` VALUES ('890', '新浦区', '888');
INSERT INTO `ts_area` VALUES ('857', '新沂市', '847');
INSERT INTO `ts_area` VALUES ('183', '宽城满族自治县', '173');
INSERT INTO `ts_area` VALUES ('242', '阳高县', '237');
INSERT INTO `ts_area` VALUES ('561', '大洼县', '558');
INSERT INTO `ts_area` VALUES ('818', '松江区', '803');
INSERT INTO `ts_area` VALUES ('328', '襄汾县', '324');
INSERT INTO `ts_area` VALUES ('109', '邢台市', '41');
INSERT INTO `ts_area` VALUES ('652', '龙井市', '647');
INSERT INTO `ts_area` VALUES ('400', '奈曼旗', '394');
INSERT INTO `ts_area` VALUES ('212', '三河市', '202');
INSERT INTO `ts_area` VALUES ('733', '南岔区', '731');
INSERT INTO `ts_area` VALUES ('500', '立山区', '497');
INSERT INTO `ts_area` VALUES ('485', '新民市', '472');
INSERT INTO `ts_area` VALUES ('803', '上海市', '802');
INSERT INTO `ts_area` VALUES ('917', '邗江区', '915');
INSERT INTO `ts_area` VALUES ('389', '克什克腾旗', '381');
INSERT INTO `ts_area` VALUES ('478', '苏家屯区', '472');
INSERT INTO `ts_area` VALUES ('889', '连云区', '888');
INSERT INTO `ts_area` VALUES ('420', '新巴尔虎左旗', '413');
INSERT INTO `ts_area` VALUES ('977', '苍南县', '970');
INSERT INTO `ts_area` VALUES ('422', '满洲里市', '413');
INSERT INTO `ts_area` VALUES ('995', '安吉县', '990');
INSERT INTO `ts_area` VALUES ('349', '石楼县', '342');
INSERT INTO `ts_area` VALUES ('139', '唐县', '129');
INSERT INTO `ts_area` VALUES ('2', '北京市', '1');
INSERT INTO `ts_area` VALUES ('353', '交口县', '342');
INSERT INTO `ts_area` VALUES ('562', '盘山县', '558');
INSERT INTO `ts_area` VALUES ('395', '科尔沁区', '394');
INSERT INTO `ts_area` VALUES ('89', '邯郸市', '41');
INSERT INTO `ts_area` VALUES ('688', '富裕县', '676');
INSERT INTO `ts_area` VALUES ('358', '新城区', '357');
INSERT INTO `ts_area` VALUES ('220', '故城县', '213');
INSERT INTO `ts_area` VALUES ('90', '邯山区', '89');
INSERT INTO `ts_area` VALUES ('418', '鄂温克族自治旗', '413');
INSERT INTO `ts_area` VALUES ('959', '海曙区', '958');
INSERT INTO `ts_area` VALUES ('752', '东风区', '749');
INSERT INTO `ts_area` VALUES ('416', '莫力达瓦达斡尔族自治旗', '413');
INSERT INTO `ts_area` VALUES ('782', '五大连池市', '776');
INSERT INTO `ts_area` VALUES ('274', '泽州县', '269');
INSERT INTO `ts_area` VALUES ('410', '杭锦旗', '403');
INSERT INTO `ts_area` VALUES ('999', '新昌县', '996');
INSERT INTO `ts_area` VALUES ('386', '巴林左旗', '381');
INSERT INTO `ts_area` VALUES ('943', '浙江', '0');
INSERT INTO `ts_area` VALUES ('945', '上城区', '944');
INSERT INTO `ts_area` VALUES ('577', '北票市', '571');
INSERT INTO `ts_area` VALUES ('211', '霸州市', '202');
INSERT INTO `ts_area` VALUES ('859', '常州市', '823');
INSERT INTO `ts_area` VALUES ('486', '大连市', '471');
INSERT INTO `ts_area` VALUES ('315', '宁武县', '309');
INSERT INTO `ts_area` VALUES ('483', '康平县', '472');
INSERT INTO `ts_area` VALUES ('337', '永和县', '324');
INSERT INTO `ts_area` VALUES ('870', '金阊区', '867');
INSERT INTO `ts_area` VALUES ('426', '根河市', '413');
INSERT INTO `ts_area` VALUES ('710', '萝北县', '703');
INSERT INTO `ts_area` VALUES ('45', '桥西区', '42');
INSERT INTO `ts_area` VALUES ('83', '山海关区', '81');
INSERT INTO `ts_area` VALUES ('610', '铁东区', '608');
INSERT INTO `ts_area` VALUES ('162', '康保县', '155');
INSERT INTO `ts_area` VALUES ('295', '运城市', '225');
INSERT INTO `ts_area` VALUES ('166', '阳原县', '155');
INSERT INTO `ts_area` VALUES ('388', '林西县', '381');
INSERT INTO `ts_area` VALUES ('308', '河津市', '295');
INSERT INTO `ts_area` VALUES ('627', '集安市', '620');
INSERT INTO `ts_area` VALUES ('530', '太和区', '527');
INSERT INTO `ts_area` VALUES ('846', '宜兴市', '838');
INSERT INTO `ts_area` VALUES ('989', '桐乡市', '982');
INSERT INTO `ts_area` VALUES ('227', '小店区', '226');
INSERT INTO `ts_area` VALUES ('992', '南浔区', '990');
INSERT INTO `ts_area` VALUES ('342', '吕梁市', '225');
INSERT INTO `ts_area` VALUES ('911', '射阳县', '905');
INSERT INTO `ts_area` VALUES ('866', '金坛市', '859');
INSERT INTO `ts_area` VALUES ('228', '迎泽区', '226');
INSERT INTO `ts_area` VALUES ('453', '突泉县', '447');
INSERT INTO `ts_area` VALUES ('570', '开原市', '563');
INSERT INTO `ts_area` VALUES ('641', '白城市', '586');
INSERT INTO `ts_area` VALUES ('694', '鸡冠区', '693');
INSERT INTO `ts_area` VALUES ('586', '吉林', '0');
INSERT INTO `ts_area` VALUES ('863', '新北区', '859');
INSERT INTO `ts_area` VALUES ('579', '葫芦岛市', '471');
INSERT INTO `ts_area` VALUES ('46', '新华区', '42');
INSERT INTO `ts_area` VALUES ('607', '磐石市', '598');
INSERT INTO `ts_area` VALUES ('225', '山西', '0');
INSERT INTO `ts_area` VALUES ('178', '兴隆县', '173');
INSERT INTO `ts_area` VALUES ('878', '太仓市', '867');
INSERT INTO `ts_area` VALUES ('331', '安泽县', '324');
INSERT INTO `ts_area` VALUES ('238', '城区', '237');
INSERT INTO `ts_area` VALUES ('727', '肇州县', '721');
INSERT INTO `ts_area` VALUES ('936', '姜堰市', '930');
INSERT INTO `ts_area` VALUES ('663', '香坊区', '657');
INSERT INTO `ts_area` VALUES ('526', '凤城市', '520');
INSERT INTO `ts_area` VALUES ('558', '盘锦市', '471');
INSERT INTO `ts_area` VALUES ('103', '鸡泽县', '89');
INSERT INTO `ts_area` VALUES ('736', '翠峦区', '731');
INSERT INTO `ts_area` VALUES ('159', '下花园区', '155');
INSERT INTO `ts_area` VALUES ('73', '滦县', '66');
INSERT INTO `ts_area` VALUES ('707', '兴安区', '703');
INSERT INTO `ts_area` VALUES ('442', '察哈尔右翼前旗', '435');
INSERT INTO `ts_area` VALUES ('764', '勃利县', '760');
INSERT INTO `ts_area` VALUES ('951', '萧山区', '944');
INSERT INTO `ts_area` VALUES ('86', '昌黎县', '81');
INSERT INTO `ts_area` VALUES ('284', '榆次区', '283');
INSERT INTO `ts_area` VALUES ('765', '牡丹江市', '656');
INSERT INTO `ts_area` VALUES ('674', '尚志市', '657');
INSERT INTO `ts_area` VALUES ('451', '科尔沁右翼中旗', '447');
INSERT INTO `ts_area` VALUES ('397', '科尔沁左翼后旗', '394');
INSERT INTO `ts_area` VALUES ('830', '下关区', '824');
INSERT INTO `ts_area` VALUES ('717', '集贤县', '712');
INSERT INTO `ts_area` VALUES ('149', '博野县', '129');
INSERT INTO `ts_area` VALUES ('967', '余姚市', '958');
INSERT INTO `ts_area` VALUES ('976', '平阳县', '970');
INSERT INTO `ts_area` VALUES ('949', '西湖区', '944');
INSERT INTO `ts_area` VALUES ('263', '壶关县', '255');
INSERT INTO `ts_area` VALUES ('545', '太平区', '542');
INSERT INTO `ts_area` VALUES ('316', '静乐县', '309');
INSERT INTO `ts_area` VALUES ('133', '满城县', '129');
INSERT INTO `ts_area` VALUES ('147', '蠡县', '129');
INSERT INTO `ts_area` VALUES ('640', '扶余县', '635');
INSERT INTO `ts_area` VALUES ('840', '南长区', '838');
INSERT INTO `ts_area` VALUES ('957', '临安市', '944');
INSERT INTO `ts_area` VALUES ('508', '望花区', '505');
INSERT INTO `ts_area` VALUES ('198', '泊头市', '185');
INSERT INTO `ts_area` VALUES ('645', '洮南市', '641');
INSERT INTO `ts_area` VALUES ('612', '伊通满族自治县', '608');
INSERT INTO `ts_area` VALUES ('74', '滦南县', '66');
INSERT INTO `ts_area` VALUES ('605', '桦甸市', '598');
INSERT INTO `ts_area` VALUES ('354', '孝义市', '342');
INSERT INTO `ts_area` VALUES ('491', '旅顺口区', '486');
INSERT INTO `ts_area` VALUES ('343', '离石区', '342');
INSERT INTO `ts_area` VALUES ('682', '碾子山区', '676');
INSERT INTO `ts_area` VALUES ('761', '新兴区', '760');
INSERT INTO `ts_area` VALUES ('9', '石景山区', '2');
INSERT INTO `ts_area` VALUES ('772', '绥芬河市', '765');
INSERT INTO `ts_area` VALUES ('493', '长海县', '486');
INSERT INTO `ts_area` VALUES ('569', '调兵山市', '563');
INSERT INTO `ts_area` VALUES ('55', '深泽县', '42');
INSERT INTO `ts_area` VALUES ('294', '介休市', '283');
INSERT INTO `ts_area` VALUES ('982', '嘉兴市', '943');
INSERT INTO `ts_area` VALUES ('6', '宣武区', '2');
INSERT INTO `ts_area` VALUES ('762', '桃山区', '760');
INSERT INTO `ts_area` VALUES ('952', '余杭区', '944');
INSERT INTO `ts_area` VALUES ('998', '绍兴县', '996');
INSERT INTO `ts_area` VALUES ('230', '尖草坪区', '226');
INSERT INTO `ts_area` VALUES ('576', '喀喇沁左翼蒙古族自治县', '571');
INSERT INTO `ts_area` VALUES ('247', '左云县', '237');
INSERT INTO `ts_area` VALUES ('378', '海勃湾区', '377');
INSERT INTO `ts_area` VALUES ('300', '稷山县', '295');
INSERT INTO `ts_area` VALUES ('849', '云龙区', '847');
INSERT INTO `ts_area` VALUES ('84', '北戴河区', '81');
INSERT INTO `ts_area` VALUES ('367', '包头市', '356');
INSERT INTO `ts_area` VALUES ('723', '龙凤区', '721');
INSERT INTO `ts_area` VALUES ('240', '南郊区', '237');
INSERT INTO `ts_area` VALUES ('205', '固安县', '202');
INSERT INTO `ts_area` VALUES ('365', '清水河县', '357');
INSERT INTO `ts_area` VALUES ('95', '临漳县', '89');
INSERT INTO `ts_area` VALUES ('306', '芮城县', '295');
INSERT INTO `ts_area` VALUES ('966', '宁海县', '958');
INSERT INTO `ts_area` VALUES ('845', '江阴市', '838');
INSERT INTO `ts_area` VALUES ('900', '清浦区', '896');
INSERT INTO `ts_area` VALUES ('267', '沁源县', '255');
INSERT INTO `ts_area` VALUES ('249', '阳泉市', '225');
INSERT INTO `ts_area` VALUES ('930', '泰州市', '823');
INSERT INTO `ts_area` VALUES ('993', '德清县', '990');
INSERT INTO `ts_area` VALUES ('609', '铁西区', '608');
INSERT INTO `ts_area` VALUES ('518', '本溪满族自治县', '513');
INSERT INTO `ts_area` VALUES ('661', '平房区', '657');
INSERT INTO `ts_area` VALUES ('934', '靖江市', '930');
INSERT INTO `ts_area` VALUES ('187', '运河区', '185');
INSERT INTO `ts_area` VALUES ('534', '北镇市', '527');
INSERT INTO `ts_area` VALUES ('301', '新绛县', '295');
INSERT INTO `ts_area` VALUES ('499', '铁西区', '497');
INSERT INTO `ts_area` VALUES ('251', '矿区', '249');
INSERT INTO `ts_area` VALUES ('482', '辽中县', '472');
INSERT INTO `ts_area` VALUES ('805', '卢湾区', '803');
INSERT INTO `ts_area` VALUES ('69', '古冶区', '66');
INSERT INTO `ts_area` VALUES ('80', '迁安市', '66');
INSERT INTO `ts_area` VALUES ('695', '恒山区', '693');
INSERT INTO `ts_area` VALUES ('366', '武川县', '357');
INSERT INTO `ts_area` VALUES ('246', '浑源县', '237');
INSERT INTO `ts_area` VALUES ('206', '永清县', '202');
INSERT INTO `ts_area` VALUES ('542', '阜新市', '471');
INSERT INTO `ts_area` VALUES ('439', '商都县', '435');
INSERT INTO `ts_area` VALUES ('409', '鄂托克旗', '403');
INSERT INTO `ts_area` VALUES ('784', '北林区', '783');
INSERT INTO `ts_area` VALUES ('403', '鄂尔多斯市', '356');
INSERT INTO `ts_area` VALUES ('345', '交城县', '342');
INSERT INTO `ts_area` VALUES ('996', '绍兴市', '943');
INSERT INTO `ts_area` VALUES ('361', '赛罕区', '357');
INSERT INTO `ts_area` VALUES ('820', '南汇区', '803');
INSERT INTO `ts_area` VALUES ('779', '逊克县', '776');
INSERT INTO `ts_area` VALUES ('172', '崇礼县', '155');
INSERT INTO `ts_area` VALUES ('850', '九里区', '847');
INSERT INTO `ts_area` VALUES ('138', '定兴县', '129');
INSERT INTO `ts_area` VALUES ('783', '绥化市', '656');
INSERT INTO `ts_area` VALUES ('950', '滨江区', '944');
INSERT INTO `ts_area` VALUES ('234', '阳曲县', '226');
INSERT INTO `ts_area` VALUES ('380', '乌达区', '377');
INSERT INTO `ts_area` VALUES ('64', '新乐市', '42');
INSERT INTO `ts_area` VALUES ('567', '西丰县', '563');
INSERT INTO `ts_area` VALUES ('630', '  江源区', '628');
INSERT INTO `ts_area` VALUES ('381', '赤峰市', '356');
INSERT INTO `ts_area` VALUES ('893', '东海县', '888');
INSERT INTO `ts_area` VALUES ('965', '象山县', '958');
INSERT INTO `ts_area` VALUES ('293', '灵石县', '283');
INSERT INTO `ts_area` VALUES ('407', '准格尔旗', '403');
INSERT INTO `ts_area` VALUES ('488', '西岗区', '486');
INSERT INTO `ts_area` VALUES ('445', '四子王旗', '435');
INSERT INTO `ts_area` VALUES ('754', '桦南县', '749');
INSERT INTO `ts_area` VALUES ('516', '明山区', '513');
INSERT INTO `ts_area` VALUES ('884', '启东市', '879');
INSERT INTO `ts_area` VALUES ('377', '乌海市', '356');
INSERT INTO `ts_area` VALUES ('434', '杭锦后旗', '427');
INSERT INTO `ts_area` VALUES ('63', '晋州市', '42');
INSERT INTO `ts_area` VALUES ('341', '霍州市', '324');
INSERT INTO `ts_area` VALUES ('797', '新林区', '794');
INSERT INTO `ts_area` VALUES ('396', '科尔沁左翼中旗', '394');
INSERT INTO `ts_area` VALUES ('777', '爱辉区', '776');
INSERT INTO `ts_area` VALUES ('774', '宁安市', '765');
INSERT INTO `ts_area` VALUES ('154', '高碑店市', '129');
INSERT INTO `ts_area` VALUES ('21', '天津', '0');
INSERT INTO `ts_area` VALUES ('544', '新邱区', '542');
INSERT INTO `ts_area` VALUES ('724', '让胡路区', '721');
INSERT INTO `ts_area` VALUES ('460', '东乌珠穆沁旗', '454');
INSERT INTO `ts_area` VALUES ('588', '南关区', '587');
INSERT INTO `ts_area` VALUES ('872', '吴中区', '867');
INSERT INTO `ts_area` VALUES ('615', '辽源市', '586');
INSERT INTO `ts_area` VALUES ('68', '路北区', '66');
INSERT INTO `ts_area` VALUES ('408', '鄂托克前旗', '403');
INSERT INTO `ts_area` VALUES ('163', '沽源县', '155');
INSERT INTO `ts_area` VALUES ('82', '海港区', '81');
INSERT INTO `ts_area` VALUES ('101', '永年县', '89');
INSERT INTO `ts_area` VALUES ('719', '宝清县', '712');
INSERT INTO `ts_area` VALUES ('53', '灵寿县', '42');
INSERT INTO `ts_area` VALUES ('681', '富拉尔基区', '676');
INSERT INTO `ts_area` VALUES ('920', '仪征市', '915');
INSERT INTO `ts_area` VALUES ('127', '南宫市', '109');
INSERT INTO `ts_area` VALUES ('728', '肇源县', '721');
INSERT INTO `ts_area` VALUES ('979', '泰顺县', '970');
INSERT INTO `ts_area` VALUES ('868', '沧浪区', '867');
INSERT INTO `ts_area` VALUES ('974', '洞头县', '970');
INSERT INTO `ts_area` VALUES ('650', '敦化市', '647');
INSERT INTO `ts_area` VALUES ('219', '安平县', '213');
INSERT INTO `ts_area` VALUES ('332', '浮山县', '324');
INSERT INTO `ts_area` VALUES ('909', '滨海县', '905');
INSERT INTO `ts_area` VALUES ('129', '保定市', '41');
INSERT INTO `ts_area` VALUES ('62', '藁城市', '42');
INSERT INTO `ts_area` VALUES ('984', '秀洲区', '982');
INSERT INTO `ts_area` VALUES ('444', '察哈尔右翼后旗', '435');
INSERT INTO `ts_area` VALUES ('379', '海南区', '377');
INSERT INTO `ts_area` VALUES ('970', '温州市', '943');
INSERT INTO `ts_area` VALUES ('532', '义县', '527');
INSERT INTO `ts_area` VALUES ('679', '铁锋区', '676');
INSERT INTO `ts_area` VALUES ('697', '梨树区', '693');
INSERT INTO `ts_area` VALUES ('737', '新青区', '731');
INSERT INTO `ts_area` VALUES ('15', '昌平区', '2');
INSERT INTO `ts_area` VALUES ('142', '涞源县', '129');
INSERT INTO `ts_area` VALUES ('702', '密山市', '693');
INSERT INTO `ts_area` VALUES ('224', '深州市', '213');
INSERT INTO `ts_area` VALUES ('317', '神池县', '309');
INSERT INTO `ts_area` VALUES ('528', '古塔区', '527');
INSERT INTO `ts_area` VALUES ('176', '鹰手营子矿区', '173');
INSERT INTO `ts_area` VALUES ('466', '多伦县', '454');
INSERT INTO `ts_area` VALUES ('276', '朔州市', '225');
INSERT INTO `ts_area` VALUES ('320', '河曲县', '309');
INSERT INTO `ts_area` VALUES ('766', '东安区', '765');
INSERT INTO `ts_area` VALUES ('781', '北安市', '776');
INSERT INTO `ts_area` VALUES ('721', '大庆市', '656');
INSERT INTO `ts_area` VALUES ('338', '蒲县', '324');
INSERT INTO `ts_area` VALUES ('433', '乌拉特后旗', '427');
INSERT INTO `ts_area` VALUES ('85', '青龙满族自治县', '81');
INSERT INTO `ts_area` VALUES ('991', '吴兴区', '990');
INSERT INTO `ts_area` VALUES ('786', '兰西县', '783');
INSERT INTO `ts_area` VALUES ('877', '吴江市', '867');
INSERT INTO `ts_area` VALUES ('812', '杨浦区', '803');
INSERT INTO `ts_area` VALUES ('181', '隆化县', '173');
INSERT INTO `ts_area` VALUES ('458', '苏尼特左旗', '454');
INSERT INTO `ts_area` VALUES ('773', '海林市', '765');
INSERT INTO `ts_area` VALUES ('314', '繁峙县', '309');
INSERT INTO `ts_area` VALUES ('745', '红星区', '731');
INSERT INTO `ts_area` VALUES ('232', '晋源区', '226');
INSERT INTO `ts_area` VALUES ('217', '武强县', '213');
INSERT INTO `ts_area` VALUES ('102', '邱县', '89');
INSERT INTO `ts_area` VALUES ('492', '金州区', '486');
INSERT INTO `ts_area` VALUES ('42', '石家庄市', '41');
INSERT INTO `ts_area` VALUES ('712', '双鸭山市', '656');
INSERT INTO `ts_area` VALUES ('620', '通化市', '586');
INSERT INTO `ts_area` VALUES ('264', '长子县', '255');
INSERT INTO `ts_area` VALUES ('672', '延寿县', '657');
INSERT INTO `ts_area` VALUES ('626', '梅河口市', '620');
INSERT INTO `ts_area` VALUES ('119', '宁晋县', '109');
INSERT INTO `ts_area` VALUES ('385', '阿鲁科尔沁旗', '381');
INSERT INTO `ts_area` VALUES ('87', '抚宁县', '81');
INSERT INTO `ts_area` VALUES ('538', '鲅鱼圈区', '535');
INSERT INTO `ts_area` VALUES ('614', '双辽市', '608');
INSERT INTO `ts_area` VALUES ('938', '宿城区', '937');
INSERT INTO `ts_area` VALUES ('705', '工农区', '703');
INSERT INTO `ts_area` VALUES ('329', '洪洞县', '324');
INSERT INTO `ts_area` VALUES ('506', '新抚区', '505');
INSERT INTO `ts_area` VALUES ('430', '磴口县', '427');
INSERT INTO `ts_area` VALUES ('94', '邯郸县', '89');
INSERT INTO `ts_area` VALUES ('258', '长治县', '255');
INSERT INTO `ts_area` VALUES ('956', '富阳市', '944');
INSERT INTO `ts_area` VALUES ('898', '楚州区', '896');
INSERT INTO `ts_area` VALUES ('685', '依安县', '676');
INSERT INTO `ts_area` VALUES ('826', '白下区', '824');
INSERT INTO `ts_area` VALUES ('16', '大兴区', '2');
INSERT INTO `ts_area` VALUES ('799', '呼玛县', '794');
INSERT INTO `ts_area` VALUES ('848', '鼓楼区', '847');
INSERT INTO `ts_area` VALUES ('324', '临汾市', '225');
INSERT INTO `ts_area` VALUES ('177', '承德县', '173');
INSERT INTO `ts_area` VALUES ('571', '朝阳市', '471');
INSERT INTO `ts_area` VALUES ('326', '曲沃县', '324');
INSERT INTO `ts_area` VALUES ('919', '宝应县', '915');
INSERT INTO `ts_area` VALUES ('668', '宾县', '657');
INSERT INTO `ts_area` VALUES ('925', '润州区', '923');
INSERT INTO `ts_area` VALUES ('922', '江都市', '915');
INSERT INTO `ts_area` VALUES ('39', '静海县', '22');
INSERT INTO `ts_area` VALUES ('184', '围场满族蒙古族自治县', '173');
INSERT INTO `ts_area` VALUES ('61', '辛集市', '42');
INSERT INTO `ts_area` VALUES ('659', '南岗区', '657');
INSERT INTO `ts_area` VALUES ('835', '六合区', '824');
INSERT INTO `ts_area` VALUES ('926', '丹徒区', '923');
INSERT INTO `ts_area` VALUES ('540', '盖州市', '535');
INSERT INTO `ts_area` VALUES ('450', '科尔沁右翼前旗', '447');
INSERT INTO `ts_area` VALUES ('886', '通州市', '879');
INSERT INTO `ts_area` VALUES ('161', '张北县', '155');
INSERT INTO `ts_area` VALUES ('26', '南开区', '22');
INSERT INTO `ts_area` VALUES ('13', '通州区', '2');
INSERT INTO `ts_area` VALUES ('229', '杏花岭区', '226');
INSERT INTO `ts_area` VALUES ('552', '文圣区', '550');
INSERT INTO `ts_area` VALUES ('126', '临西县', '109');
INSERT INTO `ts_area` VALUES ('231', '万柏林区', '226');
INSERT INTO `ts_area` VALUES ('60', '赵县', '42');
INSERT INTO `ts_area` VALUES ('665', '阿城区                 ', '657');
INSERT INTO `ts_area` VALUES ('360', '玉泉区', '357');
INSERT INTO `ts_area` VALUES ('286', '左权县', '283');
INSERT INTO `ts_area` VALUES ('44', '桥东区', '42');
INSERT INTO `ts_area` VALUES ('686', '泰来县', '676');
INSERT INTO `ts_area` VALUES ('285', '榆社县', '283');
INSERT INTO `ts_area` VALUES ('303', '垣曲县', '295');
INSERT INTO `ts_area` VALUES ('393', '敖汉旗', '381');
INSERT INTO `ts_area` VALUES ('17', '怀柔区', '2');
INSERT INTO `ts_area` VALUES ('749', '佳木斯市', '656');
INSERT INTO `ts_area` VALUES ('908', '响水县', '905');
INSERT INTO `ts_area` VALUES ('703', '鹤岗市', '656');
INSERT INTO `ts_area` VALUES ('271', '沁水县', '269');
INSERT INTO `ts_area` VALUES ('722', '萨尔图区', '721');
INSERT INTO `ts_area` VALUES ('501', '千山区', '497');
INSERT INTO `ts_area` VALUES ('575', '建平县', '571');
INSERT INTO `ts_area` VALUES ('632', '靖宇县', '628');
INSERT INTO `ts_area` VALUES ('990', '湖州市', '943');
INSERT INTO `ts_area` VALUES ('359', '回民区', '357');
INSERT INTO `ts_area` VALUES ('72', '丰润区', '66');
INSERT INTO `ts_area` VALUES ('116', '隆尧县', '109');
INSERT INTO `ts_area` VALUES ('311', '定襄县', '309');
INSERT INTO `ts_area` VALUES ('892', '赣榆县', '888');
INSERT INTO `ts_area` VALUES ('832', '栖霞区', '824');
INSERT INTO `ts_area` VALUES ('387', '巴林右旗', '381');
INSERT INTO `ts_area` VALUES ('10', '海淀区', '2');
INSERT INTO `ts_area` VALUES ('904', '金湖县', '896');
INSERT INTO `ts_area` VALUES ('771', '林口县', '765');
INSERT INTO `ts_area` VALUES ('429', '五原县', '427');
INSERT INTO `ts_area` VALUES ('882', '海安县', '879');
INSERT INTO `ts_area` VALUES ('699', '麻山区', '693');
INSERT INTO `ts_area` VALUES ('740', '五营区', '731');
INSERT INTO `ts_area` VALUES ('813', '闵行区', '803');
INSERT INTO `ts_area` VALUES ('693', '鸡西市', '656');
INSERT INTO `ts_area` VALUES ('106', '魏县', '89');
INSERT INTO `ts_area` VALUES ('12', '房山区', '2');
INSERT INTO `ts_area` VALUES ('239', '矿区', '237');
INSERT INTO `ts_area` VALUES ('169', '怀来县', '155');
INSERT INTO `ts_area` VALUES ('553', '宏伟区', '550');
INSERT INTO `ts_area` VALUES ('811', '虹口区', '803');
INSERT INTO `ts_area` VALUES ('851', '贾汪区', '847');
INSERT INTO `ts_area` VALUES ('597', '德惠市', '587');
INSERT INTO `ts_area` VALUES ('680', '昂昂溪区', '676');
INSERT INTO `ts_area` VALUES ('209', '文安县', '202');
INSERT INTO `ts_area` VALUES ('912', '建湖县', '905');
INSERT INTO `ts_area` VALUES ('368', '东河区', '367');
INSERT INTO `ts_area` VALUES ('809', '普陀区', '803');
INSERT INTO `ts_area` VALUES ('57', '无极县', '42');
INSERT INTO `ts_area` VALUES ('327', '翼城县', '324');
INSERT INTO `ts_area` VALUES ('27', '河北区', '22');
INSERT INTO `ts_area` VALUES ('333', '吉县', '324');
INSERT INTO `ts_area` VALUES ('529', '凌河区', '527');
INSERT INTO `ts_area` VALUES ('836', '溧水县', '824');
INSERT INTO `ts_area` VALUES ('70', '开平区', '66');
INSERT INTO `ts_area` VALUES ('436', '集宁区', '435');
INSERT INTO `ts_area` VALUES ('99', '磁县', '89');
INSERT INTO `ts_area` VALUES ('4', '西城区', '2');
INSERT INTO `ts_area` VALUES ('744', '乌伊岭区', '731');
INSERT INTO `ts_area` VALUES ('897', '清河区', '896');
INSERT INTO `ts_area` VALUES ('521', '元宝区', '520');
INSERT INTO `ts_area` VALUES ('438', '化德县', '435');
INSERT INTO `ts_area` VALUES ('862', '戚墅堰区', '859');
INSERT INTO `ts_area` VALUES ('268', '潞城市', '255');
INSERT INTO `ts_area` VALUES ('34', '津南区', '22');
INSERT INTO `ts_area` VALUES ('20', '延庆县', '2');
INSERT INTO `ts_area` VALUES ('778', '嫩江县', '776');
INSERT INTO `ts_area` VALUES ('585', '兴城市', '579');
INSERT INTO `ts_area` VALUES ('322', '偏关县', '309');
INSERT INTO `ts_area` VALUES ('120', '巨鹿县', '109');
INSERT INTO `ts_area` VALUES ('587', '长春市', '586');
INSERT INTO `ts_area` VALUES ('18', '平谷区', '2');
INSERT INTO `ts_area` VALUES ('405', '  东胜区', '403');
INSERT INTO `ts_area` VALUES ('502', '台安县', '497');
INSERT INTO `ts_area` VALUES ('373', '九原区', '367');
INSERT INTO `ts_area` VALUES ('953', '桐庐县', '944');
INSERT INTO `ts_area` VALUES ('875', '张家港市', '867');
INSERT INTO `ts_area` VALUES ('944', '杭州市', '943');
INSERT INTO `ts_area` VALUES ('941', '泗阳县', '937');
INSERT INTO `ts_area` VALUES ('130', '新市区', '129');
INSERT INTO `ts_area` VALUES ('536', '站前区', '535');
INSERT INTO `ts_area` VALUES ('887', '海门市', '879');
INSERT INTO `ts_area` VALUES ('651', '珲春市', '647');
INSERT INTO `ts_area` VALUES ('961', '江北区', '958');
INSERT INTO `ts_area` VALUES ('916', '广陵区', '915');
INSERT INTO `ts_area` VALUES ('448', '乌兰浩特市', '447');
INSERT INTO `ts_area` VALUES ('25', '河西区', '22');
INSERT INTO `ts_area` VALUES ('519', '桓仁满族自治县', '513');
INSERT INTO `ts_area` VALUES ('910', '阜宁县', '905');
INSERT INTO `ts_area` VALUES ('81', '秦皇岛市', '41');
INSERT INTO `ts_area` VALUES ('195', '吴桥县', '185');
INSERT INTO `ts_area` VALUES ('798', '呼中区', '794');
INSERT INTO `ts_area` VALUES ('93', '峰峰矿区', '89');
INSERT INTO `ts_area` VALUES ('88', '卢龙县', '81');
INSERT INTO `ts_area` VALUES ('734', '友好区', '731');
INSERT INTO `ts_area` VALUES ('490', '甘井子区', '486');
INSERT INTO `ts_area` VALUES ('806', '徐汇区', '803');
INSERT INTO `ts_area` VALUES ('671', '通河县', '657');
INSERT INTO `ts_area` VALUES ('556', '辽阳县', '550');
INSERT INTO `ts_area` VALUES ('131', '北市区', '129');
INSERT INTO `ts_area` VALUES ('104', '广平县', '89');
INSERT INTO `ts_area` VALUES ('435', '乌兰察布市', '356');
INSERT INTO `ts_area` VALUES ('548', '阜新蒙古族自治县', '542');
INSERT INTO `ts_area` VALUES ('480', '沈北新区', '472');
INSERT INTO `ts_area` VALUES ('5', '崇文区', '2');
INSERT INTO `ts_area` VALUES ('440', '兴和县', '435');
INSERT INTO `ts_area` VALUES ('140', '高阳县', '129');
INSERT INTO `ts_area` VALUES ('899', '淮阴区', '896');
INSERT INTO `ts_area` VALUES ('475', '大东区', '472');
INSERT INTO `ts_area` VALUES ('741', '乌马河区', '731');
INSERT INTO `ts_area` VALUES ('170', '涿鹿县', '155');
INSERT INTO `ts_area` VALUES ('594', '农安县', '587');
INSERT INTO `ts_area` VALUES ('801', '漠河县', '794');
INSERT INTO `ts_area` VALUES ('255', '长治市', '225');
INSERT INTO `ts_area` VALUES ('873', '相城区', '867');
INSERT INTO `ts_area` VALUES ('711', '绥滨县', '703');
INSERT INTO `ts_area` VALUES ('297', '临猗县', '295');
INSERT INTO `ts_area` VALUES ('715', '四方台区', '712');
INSERT INTO `ts_area` VALUES ('541', '大石桥市', '535');
INSERT INTO `ts_area` VALUES ('292', '平遥县', '283');
INSERT INTO `ts_area` VALUES ('383', '元宝山区', '381');
INSERT INTO `ts_area` VALUES ('398', '开鲁县', '394');
INSERT INTO `ts_area` VALUES ('259', '襄垣县', '255');
INSERT INTO `ts_area` VALUES ('891', '海州区', '888');
INSERT INTO `ts_area` VALUES ('770', '东宁县', '765');
INSERT INTO `ts_area` VALUES ('391', '喀喇沁旗', '381');
INSERT INTO `ts_area` VALUES ('11', '门头沟区', '2');
INSERT INTO `ts_area` VALUES ('658', '道里区', '657');
INSERT INTO `ts_area` VALUES ('427', '巴彦淖尔市', '356');
INSERT INTO `ts_area` VALUES ('113', '临城县', '109');
INSERT INTO `ts_area` VALUES ('738', '美溪区', '731');
INSERT INTO `ts_area` VALUES ('793', '海伦市', '783');
INSERT INTO `ts_area` VALUES ('775', '穆棱市', '765');
INSERT INTO `ts_area` VALUES ('980', '瑞安市', '970');
INSERT INTO `ts_area` VALUES ('153', '安国市', '129');
INSERT INTO `ts_area` VALUES ('804', '黄浦区', '803');
INSERT INTO `ts_area` VALUES ('687', '甘南县', '676');
INSERT INTO `ts_area` VALUES ('202', '廊坊市', '41');
INSERT INTO `ts_area` VALUES ('463', '镶黄旗', '454');
INSERT INTO `ts_area` VALUES ('325', '尧都区', '324');
INSERT INTO `ts_area` VALUES ('677', '龙沙区', '676');
INSERT INTO `ts_area` VALUES ('298', '万荣县', '295');
INSERT INTO `ts_area` VALUES ('261', '平顺县', '255');
INSERT INTO `ts_area` VALUES ('787', '青冈县', '783');
INSERT INTO `ts_area` VALUES ('384', '松山区', '381');
INSERT INTO `ts_area` VALUES ('180', '滦平县', '173');
INSERT INTO `ts_area` VALUES ('669', '巴彦县', '657');
INSERT INTO `ts_area` VALUES ('654', '汪清县', '647');
INSERT INTO `ts_area` VALUES ('549', '彰武县', '542');
INSERT INTO `ts_area` VALUES ('334', '乡宁县', '324');
INSERT INTO `ts_area` VALUES ('844', '滨湖区', '838');
INSERT INTO `ts_area` VALUES ('788', '庆安县', '783');
INSERT INTO `ts_area` VALUES ('580', '连山区', '579');
INSERT INTO `ts_area` VALUES ('509', '顺城区', '505');
INSERT INTO `ts_area` VALUES ('550', '辽阳市', '471');
INSERT INTO `ts_area` VALUES ('690', '克东县', '676');
INSERT INTO `ts_area` VALUES ('948', '拱墅区', '944');
INSERT INTO `ts_area` VALUES ('864', '武进区', '859');
INSERT INTO `ts_area` VALUES ('914', '大丰市', '905');
INSERT INTO `ts_area` VALUES ('572', '双塔区', '571');
INSERT INTO `ts_area` VALUES ('141', '容城县', '129');
INSERT INTO `ts_area` VALUES ('611', '梨树县', '608');
INSERT INTO `ts_area` VALUES ('838', '无锡市', '823');
INSERT INTO `ts_area` VALUES ('557', '灯塔市', '550');
INSERT INTO `ts_area` VALUES ('449', '阿尔山市', '447');
INSERT INTO `ts_area` VALUES ('452', '扎赉特旗', '447');
INSERT INTO `ts_area` VALUES ('137', '徐水县', '129');
INSERT INTO `ts_area` VALUES ('852', '泉山区', '847');
INSERT INTO `ts_area` VALUES ('28', '红桥区', '22');
INSERT INTO `ts_area` VALUES ('963', '镇海区', '958');
INSERT INTO `ts_area` VALUES ('289', '寿阳县', '283');
INSERT INTO `ts_area` VALUES ('118', '南和县', '109');
INSERT INTO `ts_area` VALUES ('539', '老边区', '535');
INSERT INTO `ts_area` VALUES ('243', '天镇县', '237');
INSERT INTO `ts_area` VALUES ('785', '望奎县', '783');
INSERT INTO `ts_area` VALUES ('369', '昆都仑区', '367');
INSERT INTO `ts_area` VALUES ('647', '延边朝鲜族自治州', '586');
INSERT INTO `ts_area` VALUES ('867', '苏州市', '823');
INSERT INTO `ts_area` VALUES ('304', '夏县', '295');
INSERT INTO `ts_area` VALUES ('656', '黑龙江', '0');
INSERT INTO `ts_area` VALUES ('266', '沁县', '255');
INSERT INTO `ts_area` VALUES ('649', '图们市', '647');
INSERT INTO `ts_area` VALUES ('701', '虎林市', '693');
INSERT INTO `ts_area` VALUES ('906', '亭湖区', '905');
INSERT INTO `ts_area` VALUES ('71', '丰南区', '66');
INSERT INTO `ts_area` VALUES ('477', '铁西区', '472');
INSERT INTO `ts_area` VALUES ('881', '港闸区', '879');
INSERT INTO `ts_area` VALUES ('635', '松原市', '586');
INSERT INTO `ts_area` VALUES ('425', '额尔古纳市', '413');
INSERT INTO `ts_area` VALUES ('336', '隰县', '324');
INSERT INTO `ts_area` VALUES ('742', '汤旺河区', '731');
INSERT INTO `ts_area` VALUES ('35', '北辰区', '22');
INSERT INTO `ts_area` VALUES ('282', '怀仁县', '276');
INSERT INTO `ts_area` VALUES ('621', '东昌区', '620');
INSERT INTO `ts_area` VALUES ('684', '龙江县', '676');
INSERT INTO `ts_area` VALUES ('437', '卓资县', '435');
INSERT INTO `ts_area` VALUES ('376', '达尔罕茂明安联合旗', '367');
INSERT INTO `ts_area` VALUES ('218', '饶阳县', '213');
INSERT INTO `ts_area` VALUES ('856', '睢宁县', '847');
INSERT INTO `ts_area` VALUES ('924', '京口区', '923');
INSERT INTO `ts_area` VALUES ('92', '复兴区', '89');
INSERT INTO `ts_area` VALUES ('50', '正定县', '42');
INSERT INTO `ts_area` VALUES ('481', '于洪区', '472');
INSERT INTO `ts_area` VALUES ('547', '细河区', '542');
INSERT INTO `ts_area` VALUES ('413', '呼伦贝尔市', '356');
INSERT INTO `ts_area` VALUES ('819', '青浦区', '803');
INSERT INTO `ts_area` VALUES ('411', '乌审旗', '403');
INSERT INTO `ts_area` VALUES ('291', '祁县', '283');
INSERT INTO `ts_area` VALUES ('112', '邢台县', '109');
INSERT INTO `ts_area` VALUES ('30', '汉沽区', '22');
INSERT INTO `ts_area` VALUES ('305', '平陆县', '295');
INSERT INTO `ts_area` VALUES ('678', '建华区', '676');
INSERT INTO `ts_area` VALUES ('655', '安图县', '647');
INSERT INTO `ts_area` VALUES ('942', '泗洪县', '937');
INSERT INTO `ts_area` VALUES ('65', '鹿泉市', '42');
INSERT INTO `ts_area` VALUES ('194', '南皮县', '185');
INSERT INTO `ts_area` VALUES ('874', '常熟市', '867');
INSERT INTO `ts_area` VALUES ('971', '鹿城区', '970');
INSERT INTO `ts_area` VALUES ('235', '娄烦县', '226');
INSERT INTO `ts_area` VALUES ('364', '和林格尔县', '357');
INSERT INTO `ts_area` VALUES ('763', '茄子河区', '760');
INSERT INTO `ts_area` VALUES ('75', '乐亭县', '66');
INSERT INTO `ts_area` VALUES ('146', '曲阳县', '129');
INSERT INTO `ts_area` VALUES ('584', '建昌县', '579');
INSERT INTO `ts_area` VALUES ('49', '井陉县', '42');
INSERT INTO `ts_area` VALUES ('414', '海拉尔区', '413');
INSERT INTO `ts_area` VALUES ('188', '沧县', '185');
INSERT INTO `ts_area` VALUES ('290', '太谷县', '283');
INSERT INTO `ts_area` VALUES ('631', '抚松县', '628');
INSERT INTO `ts_area` VALUES ('608', '四平市', '586');
INSERT INTO `ts_area` VALUES ('975', '永嘉县', '970');
INSERT INTO `ts_area` VALUES ('296', '盐湖区', '295');
INSERT INTO `ts_area` VALUES ('883', '如东县', '879');
INSERT INTO `ts_area` VALUES ('827', '秦淮区', '824');
INSERT INTO `ts_area` VALUES ('593', '双阳区', '587');
INSERT INTO `ts_area` VALUES ('829', '鼓楼区', '824');
INSERT INTO `ts_area` VALUES ('216', '武邑县', '213');
INSERT INTO `ts_area` VALUES ('288', '昔阳县', '283');
INSERT INTO `ts_area` VALUES ('357', '呼和浩特市', '356');
INSERT INTO `ts_area` VALUES ('213', '衡水市', '41');
INSERT INTO `ts_area` VALUES ('158', '宣化区', '155');
INSERT INTO `ts_area` VALUES ('352', '中阳县', '342');
INSERT INTO `ts_area` VALUES ('47', '井陉矿区', '42');
INSERT INTO `ts_area` VALUES ('417', '鄂伦春自治旗', '413');
INSERT INTO `ts_area` VALUES ('512', '清原满族自治县', '505');
INSERT INTO `ts_area` VALUES ('278', '平鲁区', '276');
INSERT INTO `ts_area` VALUES ('915', '扬州市', '823');
INSERT INTO `ts_area` VALUES ('573', '龙城区', '571');
INSERT INTO `ts_area` VALUES ('144', '安新县', '129');
INSERT INTO `ts_area` VALUES ('31', '大港区', '22');
INSERT INTO `ts_area` VALUES ('237', '大同市', '225');
INSERT INTO `ts_area` VALUES ('339', '汾西县', '324');
INSERT INTO `ts_area` VALUES ('653', '和龙市', '647');
INSERT INTO `ts_area` VALUES ('718', '友谊县', '712');
INSERT INTO `ts_area` VALUES ('186', '新华区', '185');
INSERT INTO `ts_area` VALUES ('372', '白云矿区', '367');
INSERT INTO `ts_area` VALUES ('236', '古交市', '226');
INSERT INTO `ts_area` VALUES ('923', '镇江市', '823');
INSERT INTO `ts_area` VALUES ('321', '保德县', '309');
INSERT INTO `ts_area` VALUES ('759', '富锦市', '749');
INSERT INTO `ts_area` VALUES ('199', '任丘市', '185');
INSERT INTO `ts_area` VALUES ('375', '固阳县', '367');
INSERT INTO `ts_area` VALUES ('709', '兴山区', '703');
INSERT INTO `ts_area` VALUES ('537', '西市区', '535');
INSERT INTO `ts_area` VALUES ('968', '慈溪市', '958');
INSERT INTO `ts_area` VALUES ('768', '爱民区', '765');
INSERT INTO `ts_area` VALUES ('272', '阳城县', '269');
INSERT INTO `ts_area` VALUES ('447', '兴安盟', '356');
INSERT INTO `ts_area` VALUES ('555', '太子河区', '550');
INSERT INTO `ts_area` VALUES ('507', '东洲区', '505');
INSERT INTO `ts_area` VALUES ('254', '盂县', '249');
INSERT INTO `ts_area` VALUES ('988', '平湖市', '982');
INSERT INTO `ts_area` VALUES ('446', '丰镇市', '435');
INSERT INTO `ts_area` VALUES ('933', '兴化市', '930');
INSERT INTO `ts_area` VALUES ('972', '龙湾区', '970');
INSERT INTO `ts_area` VALUES ('319', '岢岚县', '309');
INSERT INTO `ts_area` VALUES ('22', '天津市', '21');
INSERT INTO `ts_area` VALUES ('355', '汾阳市', '342');
INSERT INTO `ts_area` VALUES ('747', '嘉荫县', '731');
INSERT INTO `ts_area` VALUES ('739', '金山屯区', '731');
INSERT INTO `ts_area` VALUES ('582', '南票区', '579');
INSERT INTO `ts_area` VALUES ('903', '盱眙县', '896');
INSERT INTO `ts_area` VALUES ('203', '安次区', '202');
INSERT INTO `ts_area` VALUES ('390', '翁牛特旗', '381');
INSERT INTO `ts_area` VALUES ('464', '正镶白旗', '454');
INSERT INTO `ts_area` VALUES ('287', '和顺县', '283');
INSERT INTO `ts_area` VALUES ('853', '丰县', '847');
INSERT INTO `ts_area` VALUES ('794', '大兴安岭地区', '656');
INSERT INTO `ts_area` VALUES ('601', '船营区', '598');
INSERT INTO `ts_area` VALUES ('596', '榆树市', '587');
INSERT INTO `ts_area` VALUES ('807', '长宁区', '803');
INSERT INTO `ts_area` VALUES ('185', '沧州市', '41');
INSERT INTO `ts_area` VALUES ('843', '惠山区', '838');
INSERT INTO `ts_area` VALUES ('657', '哈尔滨市', '656');
INSERT INTO `ts_area` VALUES ('283', '晋中市', '225');
INSERT INTO `ts_area` VALUES ('907', '盐都区', '905');
INSERT INTO `ts_area` VALUES ('523', '振安区', '520');
INSERT INTO `ts_area` VALUES ('997', '越城区', '996');
INSERT INTO `ts_area` VALUES ('837', '高淳县', '824');
INSERT INTO `ts_area` VALUES ('196', '献县', '185');
INSERT INTO `ts_area` VALUES ('269', '晋城市', '225');
INSERT INTO `ts_area` VALUES ('985', '嘉善县', '982');
INSERT INTO `ts_area` VALUES ('156', '桥东区', '155');
INSERT INTO `ts_area` VALUES ('927', '丹阳市', '923');
INSERT INTO `ts_area` VALUES ('692', '讷河市', '676');
INSERT INTO `ts_area` VALUES ('931', '海陵区', '930');
INSERT INTO `ts_area` VALUES ('51', '栾城县', '42');
INSERT INTO `ts_area` VALUES ('716', '宝山区', '712');
INSERT INTO `ts_area` VALUES ('599', '昌邑区', '598');
INSERT INTO `ts_area` VALUES ('955', '建德市', '944');
INSERT INTO `ts_area` VALUES ('454', '锡林郭勒盟', '356');
INSERT INTO `ts_area` VALUES ('200', '黄骅市', '185');
INSERT INTO `ts_area` VALUES ('456', '锡林浩特市', '454');
INSERT INTO `ts_area` VALUES ('348', '柳林县', '342');
INSERT INTO `ts_area` VALUES ('689', '克山县', '676');
INSERT INTO `ts_area` VALUES ('132', '南市区', '129');
INSERT INTO `ts_area` VALUES ('670', '木兰县', '657');
INSERT INTO `ts_area` VALUES ('729', '林甸县', '721');
INSERT INTO `ts_area` VALUES ('560', '兴隆台区', '558');
INSERT INTO `ts_area` VALUES ('664', '呼兰区', '657');
INSERT INTO `ts_area` VALUES ('98', '涉县', '89');
INSERT INTO `ts_area` VALUES ('404', '市辖区', '403');
INSERT INTO `ts_area` VALUES ('265', '武乡县', '255');
INSERT INTO `ts_area` VALUES ('3', '东城区', '2');
INSERT INTO `ts_area` VALUES ('252', '郊区', '249');
INSERT INTO `ts_area` VALUES ('932', '高港区', '930');
INSERT INTO `ts_area` VALUES ('145', '易县', '129');
INSERT INTO `ts_area` VALUES ('7', '朝阳区', '2');
INSERT INTO `ts_area` VALUES ('732', '伊春区', '731');
INSERT INTO `ts_area` VALUES ('510', '抚顺县', '505');
INSERT INTO `ts_area` VALUES ('565', '清河区', '563');
INSERT INTO `ts_area` VALUES ('780', '孙吴县', '776');
INSERT INTO `ts_area` VALUES ('350', '岚县', '342');
INSERT INTO `ts_area` VALUES ('946', '下城区', '944');
INSERT INTO `ts_area` VALUES ('676', '齐齐哈尔市', '656');
INSERT INTO `ts_area` VALUES ('40', '蓟县', '22');
INSERT INTO `ts_area` VALUES ('179', '平泉县', '173');
INSERT INTO `ts_area` VALUES ('847', '徐州市', '823');
INSERT INTO `ts_area` VALUES ('636', '宁江区', '635');
INSERT INTO `ts_area` VALUES ('223', '冀州市', '213');
INSERT INTO `ts_area` VALUES ('151', '涿州市', '129');
INSERT INTO `ts_area` VALUES ('667', '方正县', '657');
INSERT INTO `ts_area` VALUES ('59', '元氏县', '42');
INSERT INTO `ts_area` VALUES ('964', '鄞州区', '958');
INSERT INTO `ts_area` VALUES ('790', '绥棱县', '783');
INSERT INTO `ts_area` VALUES ('148', '顺平县', '129');
INSERT INTO `ts_area` VALUES ('167', '怀安县', '155');
INSERT INTO `ts_area` VALUES ('356', '内蒙古', '0');
INSERT INTO `ts_area` VALUES ('428', '临河区', '427');
INSERT INTO `ts_area` VALUES ('839', '崇安区', '838');
INSERT INTO `ts_area` VALUES ('704', '向阳区', '703');
INSERT INTO `ts_area` VALUES ('617', '西安区', '615');
INSERT INTO `ts_area` VALUES ('800', '塔河县', '794');
INSERT INTO `ts_area` VALUES ('394', '通辽市', '356');
INSERT INTO `ts_area` VALUES ('48', '裕华区', '42');
INSERT INTO `ts_area` VALUES ('494', '瓦房店市', '486');
INSERT INTO `ts_area` VALUES ('66', '唐山市', '41');
INSERT INTO `ts_area` VALUES ('973', '瓯海区', '970');
INSERT INTO `ts_area` VALUES ('424', '扎兰屯市', '413');
INSERT INTO `ts_area` VALUES ('535', '营口市', '471');
INSERT INTO `ts_area` VALUES ('986', '海盐县', '982');
INSERT INTO `ts_area` VALUES ('496', '庄河市', '486');
INSERT INTO `ts_area` VALUES ('792', '肇东市', '783');
INSERT INTO `ts_area` VALUES ('796', '松岭区', '794');
INSERT INTO `ts_area` VALUES ('245', '灵丘县', '237');
INSERT INTO `ts_area` VALUES ('825', '玄武区', '824');
INSERT INTO `ts_area` VALUES ('374', '土默特右旗', '367');
INSERT INTO `ts_area` VALUES ('189', '青县', '185');
INSERT INTO `ts_area` VALUES ('751', '前进区', '749');
INSERT INTO `ts_area` VALUES ('563', '铁岭市', '471');
INSERT INTO `ts_area` VALUES ('513', '本溪市', '471');
INSERT INTO `ts_area` VALUES ('983', '南湖区', '982');
INSERT INTO `ts_area` VALUES ('476', '皇姑区', '472');
INSERT INTO `ts_area` VALUES ('823', '江苏', '0');
INSERT INTO `ts_area` VALUES ('978', '文成县', '970');
INSERT INTO `ts_area` VALUES ('869', '平江区', '867');
INSERT INTO `ts_area` VALUES ('928', '扬中市', '923');
INSERT INTO `ts_area` VALUES ('660', '道外区', '657');
INSERT INTO `ts_area` VALUES ('432', '乌拉特中旗', '427');
INSERT INTO `ts_area` VALUES ('894', '灌云县', '888');
INSERT INTO `ts_area` VALUES ('160', '宣化县', '155');
INSERT INTO `ts_area` VALUES ('1000', '诸暨市', '996');
INSERT INTO `ts_area` VALUES ('637', '前郭尔罗斯蒙古族自治县', '635');
INSERT INTO `ts_area` VALUES ('940', '沭阳县', '937');
INSERT INTO `ts_area` VALUES ('173', '承德市', '41');
INSERT INTO `ts_area` VALUES ('720', '饶河县', '712');
INSERT INTO `ts_area` VALUES ('994', '长兴县', '990');
INSERT INTO `ts_area` VALUES ('960', '江东区', '958');
INSERT INTO `ts_area` VALUES ('625', '柳河县', '620');
INSERT INTO `ts_area` VALUES ('470', '额济纳旗', '467');
INSERT INTO `ts_area` VALUES ('628', '白山市', '586');
INSERT INTO `ts_area` VALUES ('613', '公主岭市', '608');
INSERT INTO `ts_area` VALUES ('33', '西青区', '22');
INSERT INTO `ts_area` VALUES ('41', '河北', '0');
INSERT INTO `ts_area` VALUES ('583', '绥中县', '579');
INSERT INTO `ts_area` VALUES ('473', '和平区', '472');
INSERT INTO `ts_area` VALUES ('918', '维扬区', '915');
INSERT INTO `ts_area` VALUES ('495', '普兰店市', '486');
INSERT INTO `ts_area` VALUES ('29', '塘沽区', '22');
INSERT INTO `ts_area` VALUES ('559', '双台子区', '558');
INSERT INTO `ts_area` VALUES ('56', '赞皇县', '42');
INSERT INTO `ts_area` VALUES ('543', '海州区', '542');
INSERT INTO `ts_area` VALUES ('415', '阿荣旗', '413');
INSERT INTO `ts_area` VALUES ('598', '吉林市', '586');
INSERT INTO `ts_area` VALUES ('698', '城子河区', '693');
INSERT INTO `ts_area` VALUES ('487', '中山区', '486');
INSERT INTO `ts_area` VALUES ('691', '拜泉县', '676');
INSERT INTO `ts_area` VALUES ('43', '长安区', '42');
INSERT INTO `ts_area` VALUES ('935', '泰兴市', '930');
INSERT INTO `ts_area` VALUES ('515', '溪湖区', '513');
INSERT INTO `ts_area` VALUES ('91', '丛台区', '89');
INSERT INTO `ts_area` VALUES ('52', '行唐县', '42');
INSERT INTO `ts_area` VALUES ('215', '枣强县', '213');
INSERT INTO `ts_area` VALUES ('810', '闸北区', '803');
INSERT INTO `ts_area` VALUES ('423', '牙克石市', '413');
INSERT INTO `ts_area` VALUES ('77', '玉田县', '66');
INSERT INTO `ts_area` VALUES ('168', '万全县', '155');
INSERT INTO `ts_area` VALUES ('533', '凌海市', '527');
INSERT INTO `ts_area` VALUES ('174', '双桥区', '173');
INSERT INTO `ts_area` VALUES ('421', '新巴尔虎右旗', '413');
INSERT INTO `ts_area` VALUES ('479', '东陵区', '472');
INSERT INTO `ts_area` VALUES ('226', '太原市', '225');
INSERT INTO `ts_area` VALUES ('896', '淮安市', '823');
INSERT INTO `ts_area` VALUES ('748', '铁力市', '731');
INSERT INTO `ts_area` VALUES ('828', '建邺区', '824');
INSERT INTO `ts_area` VALUES ('401', '扎鲁特旗', '394');
INSERT INTO `ts_area` VALUES ('134', '清苑县', '129');
INSERT INTO `ts_area` VALUES ('107', '曲周县', '89');
INSERT INTO `ts_area` VALUES ('947', '江干区', '944');
INSERT INTO `ts_area` VALUES ('791', '安达市', '783');
INSERT INTO `ts_area` VALUES ('901', '涟水县', '896');
INSERT INTO `ts_area` VALUES ('32', '东丽区', '22');
INSERT INTO `ts_area` VALUES ('504', '海城市', '497');
INSERT INTO `ts_area` VALUES ('673', '双城市', '657');
INSERT INTO `ts_area` VALUES ('19', '密云县', '2');
INSERT INTO `ts_area` VALUES ('79', '遵化市', '66');
INSERT INTO `ts_area` VALUES ('281', '右玉县', '276');
INSERT INTO `ts_area` VALUES ('753', '郊区', '749');
INSERT INTO `ts_area` VALUES ('472', '沈阳市', '471');
INSERT INTO `ts_area` VALUES ('871', '虎丘区', '867');
INSERT INTO `ts_area` VALUES ('860', '天宁区', '859');
INSERT INTO `ts_area` VALUES ('124', '威县', '109');
INSERT INTO `ts_area` VALUES ('190', '东光县', '185');
INSERT INTO `ts_area` VALUES ('253', '平定县', '249');
INSERT INTO `ts_area` VALUES ('250', '城区', '249');
INSERT INTO `ts_area` VALUES ('937', '宿迁市', '823');
INSERT INTO `ts_area` VALUES ('683', '梅里斯达斡尔族区', '676');
INSERT INTO `ts_area` VALUES ('551', '白塔区', '550');
INSERT INTO `ts_area` VALUES ('67', '路南区', '66');
INSERT INTO `ts_area` VALUES ('313', '代县', '309');
INSERT INTO `ts_area` VALUES ('208', '大城县', '202');
INSERT INTO `ts_area` VALUES ('260', '屯留县', '255');
INSERT INTO `ts_area` VALUES ('382', '红山区', '381');
INSERT INTO `ts_area` VALUES ('117', '任县', '109');
INSERT INTO `ts_area` VALUES ('497', '鞍山市', '471');
INSERT INTO `ts_area` VALUES ('731', '伊春市', '656');
INSERT INTO `ts_area` VALUES ('459', '苏尼特右旗', '454');
INSERT INTO `ts_area` VALUES ('54', '高邑县', '42');
INSERT INTO `ts_area` VALUES ('1981', '始兴县', '1977');
INSERT INTO `ts_area` VALUES ('1862', '衡东县', '1853');
INSERT INTO `ts_area` VALUES ('1928', '双牌县', '1923');
INSERT INTO `ts_area` VALUES ('1079', '花山区', '1077');
INSERT INTO `ts_area` VALUES ('1932', '蓝山县', '1923');
INSERT INTO `ts_area` VALUES ('1853', '衡阳市', '1826');
INSERT INTO `ts_area` VALUES ('1867', '双清区', '1866');
INSERT INTO `ts_area` VALUES ('1600', '新乡市', '1532');
INSERT INTO `ts_area` VALUES ('1768', '荆门市', '1709');
INSERT INTO `ts_area` VALUES ('1266', '西湖区', '1264');
INSERT INTO `ts_area` VALUES ('1979', '浈江区', '1977');
INSERT INTO `ts_area` VALUES ('1634', '许昌县', '1632');
INSERT INTO `ts_area` VALUES ('1873', '隆回县', '1866');
INSERT INTO `ts_area` VALUES ('1452', '金乡县', '1447');
INSERT INTO `ts_area` VALUES ('1963', '广东', '0');
INSERT INTO `ts_area` VALUES ('1887', '汨罗市', '1879');
INSERT INTO `ts_area` VALUES ('1769', '东宝区', '1768');
INSERT INTO `ts_area` VALUES ('1936', '鹤城区', '1935');
INSERT INTO `ts_area` VALUES ('1450', '微山县', '1447');
INSERT INTO `ts_area` VALUES ('1886', '平江县', '1879');
INSERT INTO `ts_area` VALUES ('1803', '咸安区', '1802');
INSERT INTO `ts_area` VALUES ('1814', '利川市', '1812');
INSERT INTO `ts_area` VALUES ('1924', '零陵区', '1923');
INSERT INTO `ts_area` VALUES ('1842', '株洲县', '1837');
INSERT INTO `ts_area` VALUES ('1235', '延平区', '1234');
INSERT INTO `ts_area` VALUES ('1010', '义乌市', '1003');
INSERT INTO `ts_area` VALUES ('1948', '娄底市', '1826');
INSERT INTO `ts_area` VALUES ('1329', '峡江县', '1324');
INSERT INTO `ts_area` VALUES ('1881', '云溪区', '1879');
INSERT INTO `ts_area` VALUES ('1282', '莲花县', '1279');
INSERT INTO `ts_area` VALUES ('1134', '灵璧县', '1130');
INSERT INTO `ts_area` VALUES ('1202', '大田县', '1196');
INSERT INTO `ts_area` VALUES ('1160', '宣城市', '1045');
INSERT INTO `ts_area` VALUES ('1509', '茌平县', '1505');
INSERT INTO `ts_area` VALUES ('1362', '信州区', '1361');
INSERT INTO `ts_area` VALUES ('1905', '资阳区', '1904');
INSERT INTO `ts_area` VALUES ('1670', '睢县', '1666');
INSERT INTO `ts_area` VALUES ('1208', '永安市', '1196');
INSERT INTO `ts_area` VALUES ('1610', '长垣县', '1600');
INSERT INTO `ts_area` VALUES ('1311', '崇义县', '1305');
INSERT INTO `ts_area` VALUES ('1326', '青原区', '1324');
INSERT INTO `ts_area` VALUES ('1214', '惠安县', '1209');
INSERT INTO `ts_area` VALUES ('1400', '淄川区', '1399');
INSERT INTO `ts_area` VALUES ('1343', '宜丰县', '1338');
INSERT INTO `ts_area` VALUES ('1218', '金门县', '1209');
INSERT INTO `ts_area` VALUES ('1383', '济阳县', '1375');
INSERT INTO `ts_area` VALUES ('1832', '雨花区', '1827');
INSERT INTO `ts_area` VALUES ('1589', '安阳县', '1584');
INSERT INTO `ts_area` VALUES ('1424', '牟平区', '1421');
INSERT INTO `ts_area` VALUES ('1482', '罗庄区', '1480');
INSERT INTO `ts_area` VALUES ('1918', '临武县', '1911');
INSERT INTO `ts_area` VALUES ('1677', '浉河区', '1676');
INSERT INTO `ts_area` VALUES ('1290', '修水县', '1285');
INSERT INTO `ts_area` VALUES ('1072', '田家庵区', '1070');
INSERT INTO `ts_area` VALUES ('1809', '随州市', '1709');
INSERT INTO `ts_area` VALUES ('1895', '临澧县', '1889');
INSERT INTO `ts_area` VALUES ('1423', '福山区', '1421');
INSERT INTO `ts_area` VALUES ('1630', '台前县', '1625');
INSERT INTO `ts_area` VALUES ('1376', '历下区', '1375');
INSERT INTO `ts_area` VALUES ('1874', '洞口县', '1866');
INSERT INTO `ts_area` VALUES ('1390', '黄岛区', '1386');
INSERT INTO `ts_area` VALUES ('1658', '镇平县', '1652');
INSERT INTO `ts_area` VALUES ('1956', '泸溪县', '1954');
INSERT INTO `ts_area` VALUES ('1609', '封丘县', '1600');
INSERT INTO `ts_area` VALUES ('1151', '谯城区', '1150');
INSERT INTO `ts_area` VALUES ('1597', '淇滨区', '1594');
INSERT INTO `ts_area` VALUES ('1601', '红旗区', '1600');
INSERT INTO `ts_area` VALUES ('1884', '华容县', '1879');
INSERT INTO `ts_area` VALUES ('1166', '旌德县', '1160');
INSERT INTO `ts_area` VALUES ('1320', '寻乌县', '1305');
INSERT INTO `ts_area` VALUES ('1996', '香洲区', '1995');
INSERT INTO `ts_area` VALUES ('1061', '南陵县', '1054');
INSERT INTO `ts_area` VALUES ('1951', '新化县', '1948');
INSERT INTO `ts_area` VALUES ('1194', '秀屿区', '1190');
INSERT INTO `ts_area` VALUES ('1421', '烟台市', '1374');
INSERT INTO `ts_area` VALUES ('1524', '曹县', '1522');
INSERT INTO `ts_area` VALUES ('1133', '萧县', '1130');
INSERT INTO `ts_area` VALUES ('1962', '龙山县', '1954');
INSERT INTO `ts_area` VALUES ('1092', '安庆市', '1045');
INSERT INTO `ts_area` VALUES ('1933', '新田县', '1923');
INSERT INTO `ts_area` VALUES ('1175', '闽侯县', '1169');
INSERT INTO `ts_area` VALUES ('1935', '怀化市', '1826');
INSERT INTO `ts_area` VALUES ('1656', '方城县', '1652');
INSERT INTO `ts_area` VALUES ('1911', '郴州市', '1826');
INSERT INTO `ts_area` VALUES ('1393', '城阳区', '1386');
INSERT INTO `ts_area` VALUES ('1178', '闽清县', '1169');
INSERT INTO `ts_area` VALUES ('1723', '新洲区', '1710');
INSERT INTO `ts_area` VALUES ('1713', '硚口区', '1710');
INSERT INTO `ts_area` VALUES ('1260', '柘荣县', '1253');
INSERT INTO `ts_area` VALUES ('1799', '黄梅县', '1791');
INSERT INTO `ts_area` VALUES ('1770', '掇刀区', '1768');
INSERT INTO `ts_area` VALUES ('1793', '团风县', '1791');
INSERT INTO `ts_area` VALUES ('1553', '通许县', '1546');
INSERT INTO `ts_area` VALUES ('1899', '张家界市', '1826');
INSERT INTO `ts_area` VALUES ('1234', '南平市', '1168');
INSERT INTO `ts_area` VALUES ('1065', '禹会区', '1062');
INSERT INTO `ts_area` VALUES ('1663', '新野县', '1652');
INSERT INTO `ts_area` VALUES ('1328', '吉水县', '1324');
INSERT INTO `ts_area` VALUES ('1579', '叶县', '1573');
INSERT INTO `ts_area` VALUES ('1135', '泗县', '1130');
INSERT INTO `ts_area` VALUES ('1351', '南城县', '1349');
INSERT INTO `ts_area` VALUES ('1550', '禹王台区', '1546');
INSERT INTO `ts_area` VALUES ('1471', '乳山市', '1467');
INSERT INTO `ts_area` VALUES ('1099', '太湖县', '1092');
INSERT INTO `ts_area` VALUES ('1210', '鲤城区', '1209');
INSERT INTO `ts_area` VALUES ('1791', '黄冈市', '1709');
INSERT INTO `ts_area` VALUES ('1463', '宁阳县', '1460');
INSERT INTO `ts_area` VALUES ('1917', '嘉禾县', '1911');
INSERT INTO `ts_area` VALUES ('1777', '大悟县', '1774');
INSERT INTO `ts_area` VALUES ('1141', '和县', '1136');
INSERT INTO `ts_area` VALUES ('1700', '西平县', '1698');
INSERT INTO `ts_area` VALUES ('1685', '淮滨县', '1676');
INSERT INTO `ts_area` VALUES ('1652', '南阳市', '1532');
INSERT INTO `ts_area` VALUES ('1970', '黄埔区', '1964');
INSERT INTO `ts_area` VALUES ('1893', '汉寿县', '1889');
INSERT INTO `ts_area` VALUES ('1363', '上饶县', '1361');
INSERT INTO `ts_area` VALUES ('1013', '衢州市', '943');
INSERT INTO `ts_area` VALUES ('1094', '大观区', '1092');
INSERT INTO `ts_area` VALUES ('1859', '衡阳县', '1853');
INSERT INTO `ts_area` VALUES ('1016', '常山县', '1013');
INSERT INTO `ts_area` VALUES ('1036', '莲都区', '1035');
INSERT INTO `ts_area` VALUES ('1012', '永康市', '1003');
INSERT INTO `ts_area` VALUES ('1324', '吉安市', '1263');
INSERT INTO `ts_area` VALUES ('1880', '岳阳楼区', '1879');
INSERT INTO `ts_area` VALUES ('1644', '临颍县', '1639');
INSERT INTO `ts_area` VALUES ('1872', '邵阳县', '1866');
INSERT INTO `ts_area` VALUES ('1470', '荣成市', '1467');
INSERT INTO `ts_area` VALUES ('1982', '仁化县', '1977');
INSERT INTO `ts_area` VALUES ('1395', '即墨市', '1386');
INSERT INTO `ts_area` VALUES ('1578', '宝丰县', '1573');
INSERT INTO `ts_area` VALUES ('1484', '沂南县', '1480');
INSERT INTO `ts_area` VALUES ('1906', '赫山区', '1904');
INSERT INTO `ts_area` VALUES ('1989', '罗湖区', '1988');
INSERT INTO `ts_area` VALUES ('1464', '东平县', '1460');
INSERT INTO `ts_area` VALUES ('1980', '曲江区', '1977');
INSERT INTO `ts_area` VALUES ('1547', '龙亭区', '1546');
INSERT INTO `ts_area` VALUES ('1701', '上蔡县', '1698');
INSERT INTO `ts_area` VALUES ('1414', '滕州市', '1408');
INSERT INTO `ts_area` VALUES ('1142', '六安市', '1045');
INSERT INTO `ts_area` VALUES ('1353', '南丰县', '1349');
INSERT INTO `ts_area` VALUES ('1804', '嘉鱼县', '1802');
INSERT INTO `ts_area` VALUES ('1897', '石门县', '1889');
INSERT INTO `ts_area` VALUES ('1322', '瑞金市', '1305');
INSERT INTO `ts_area` VALUES ('1456', '梁山县', '1447');
INSERT INTO `ts_area` VALUES ('1671', '宁陵县', '1666');
INSERT INTO `ts_area` VALUES ('1888', '临湘市', '1879');
INSERT INTO `ts_area` VALUES ('1257', '屏南县', '1253');
INSERT INTO `ts_area` VALUES ('1503', '乐陵市', '1493');
INSERT INTO `ts_area` VALUES ('1043', '景宁畲族自治县', '1035');
INSERT INTO `ts_area` VALUES ('1259', '周宁县', '1253');
INSERT INTO `ts_area` VALUES ('1426', '长岛县', '1421');
INSERT INTO `ts_area` VALUES ('1406', '高青县', '1399');
INSERT INTO `ts_area` VALUES ('1254', '蕉城区', '1253');
INSERT INTO `ts_area` VALUES ('1225', '云霄县', '1222');
INSERT INTO `ts_area` VALUES ('1811', '广水市', '1809');
INSERT INTO `ts_area` VALUES ('1806', '崇阳县', '1802');
INSERT INTO `ts_area` VALUES ('1821', '省直辖县级行政单位', '1709');
INSERT INTO `ts_area` VALUES ('1673', '虞城县', '1666');
INSERT INTO `ts_area` VALUES ('1359', '东乡县', '1349');
INSERT INTO `ts_area` VALUES ('1556', '兰考县', '1546');
INSERT INTO `ts_area` VALUES ('1546', '开封市', '1532');
INSERT INTO `ts_area` VALUES ('1389', '四方区', '1386');
INSERT INTO `ts_area` VALUES ('1233', '龙海市', '1222');
INSERT INTO `ts_area` VALUES ('1728', '铁山区', '1724');
INSERT INTO `ts_area` VALUES ('1570', '洛宁县', '1557');
INSERT INTO `ts_area` VALUES ('1022', '普陀区', '1020');
INSERT INTO `ts_area` VALUES ('1805', '通城县', '1802');
INSERT INTO `ts_area` VALUES ('1276', '珠山区', '1274');
INSERT INTO `ts_area` VALUES ('1534', '中原区', '1533');
INSERT INTO `ts_area` VALUES ('1358', '资溪县', '1349');
INSERT INTO `ts_area` VALUES ('1365', '玉山县', '1361');
INSERT INTO `ts_area` VALUES ('1782', '荆州市', '1709');
INSERT INTO `ts_area` VALUES ('1004', '婺城区', '1003');
INSERT INTO `ts_area` VALUES ('1298', '新余市', '1263');
INSERT INTO `ts_area` VALUES ('1354', '崇仁县', '1349');
INSERT INTO `ts_area` VALUES ('1475', '五莲县', '1472');
INSERT INTO `ts_area` VALUES ('1573', '平顶山市', '1532');
INSERT INTO `ts_area` VALUES ('1091', '铜陵县', '1087');
INSERT INTO `ts_area` VALUES ('1018', '龙游县', '1013');
INSERT INTO `ts_area` VALUES ('1586', '北关区', '1584');
INSERT INTO `ts_area` VALUES ('1688', '川汇区', '1687');
INSERT INTO `ts_area` VALUES ('1021', '定海区', '1020');
INSERT INTO `ts_area` VALUES ('1029', '玉环县', '1025');
INSERT INTO `ts_area` VALUES ('1612', '辉县市', '1600');
INSERT INTO `ts_area` VALUES ('1646', '湖滨区', '1645');
INSERT INTO `ts_area` VALUES ('1385', '章丘市', '1375');
INSERT INTO `ts_area` VALUES ('1074', '八公山区', '1070');
INSERT INTO `ts_area` VALUES ('1477', '莱芜市', '1374');
INSERT INTO `ts_area` VALUES ('1590', '汤阴县', '1584');
INSERT INTO `ts_area` VALUES ('1333', '遂川县', '1324');
INSERT INTO `ts_area` VALUES ('1183', '厦门市', '1168');
INSERT INTO `ts_area` VALUES ('1548', '顺河回族区', '1546');
INSERT INTO `ts_area` VALUES ('1526', '成武县', '1522');
INSERT INTO `ts_area` VALUES ('1334', '万安县', '1324');
INSERT INTO `ts_area` VALUES ('1826', '湖南', '0');
INSERT INTO `ts_area` VALUES ('1778', '云梦县', '1774');
INSERT INTO `ts_area` VALUES ('1766', '华容区', '1764');
INSERT INTO `ts_area` VALUES ('1299', '渝水区', '1298');
INSERT INTO `ts_area` VALUES ('1691', '商水县', '1687');
INSERT INTO `ts_area` VALUES ('1357', '金溪县', '1349');
INSERT INTO `ts_area` VALUES ('1121', '阜阳市', '1045');
INSERT INTO `ts_area` VALUES ('1595', '鹤山区', '1594');
INSERT INTO `ts_area` VALUES ('1420', '广饶县', '1415');
INSERT INTO `ts_area` VALUES ('1808', '赤壁市', '1802');
INSERT INTO `ts_area` VALUES ('1028', '路桥区', '1025');
INSERT INTO `ts_area` VALUES ('1232', '华安县', '1222');
INSERT INTO `ts_area` VALUES ('1410', '薛城区', '1408');
INSERT INTO `ts_area` VALUES ('1978', '武江区', '1977');
INSERT INTO `ts_area` VALUES ('1637', '禹州市', '1632');
INSERT INTO `ts_area` VALUES ('1391', '崂山区', '1386');
INSERT INTO `ts_area` VALUES ('1179', '永泰县', '1169');
INSERT INTO `ts_area` VALUES ('1574', '新华区', '1573');
INSERT INTO `ts_area` VALUES ('1055', '镜湖区', '1054');
INSERT INTO `ts_area` VALUES ('1375', '济南市', '1374');
INSERT INTO `ts_area` VALUES ('1339', '袁州区', '1338');
INSERT INTO `ts_area` VALUES ('1139', '无为县', '1136');
INSERT INTO `ts_area` VALUES ('1269', '青山湖区', '1264');
INSERT INTO `ts_area` VALUES ('1657', '西峡县', '1652');
INSERT INTO `ts_area` VALUES ('1625', '濮阳市', '1532');
INSERT INTO `ts_area` VALUES ('1795', '罗田县', '1791');
INSERT INTO `ts_area` VALUES ('1449', '任城区', '1447');
INSERT INTO `ts_area` VALUES ('1839', '芦淞区', '1837');
INSERT INTO `ts_area` VALUES ('1335', '安福县', '1324');
INSERT INTO `ts_area` VALUES ('1531', '东明县', '1522');
INSERT INTO `ts_area` VALUES ('1289', '武宁县', '1285');
INSERT INTO `ts_area` VALUES ('1465', '新泰市', '1460');
INSERT INTO `ts_area` VALUES ('1562', '吉利区', '1557');
INSERT INTO `ts_area` VALUES ('1731', '十堰市', '1709');
INSERT INTO `ts_area` VALUES ('2000', '龙湖区', '1999');
INSERT INTO `ts_area` VALUES ('1446', '昌邑市', '1434');
INSERT INTO `ts_area` VALUES ('1760', '保康县', '1754');
INSERT INTO `ts_area` VALUES ('1243', '建瓯市', '1234');
INSERT INTO `ts_area` VALUES ('1101', '望江县', '1092');
INSERT INTO `ts_area` VALUES ('1430', '蓬莱市', '1421');
INSERT INTO `ts_area` VALUES ('1140', '含山县', '1136');
INSERT INTO `ts_area` VALUES ('1126', '太和县', '1121');
INSERT INTO `ts_area` VALUES ('1747', '兴山县', '1740');
INSERT INTO `ts_area` VALUES ('1843', '攸县', '1837');
INSERT INTO `ts_area` VALUES ('1355', '乐安县', '1349');
INSERT INTO `ts_area` VALUES ('1870', '邵东县', '1866');
INSERT INTO `ts_area` VALUES ('1448', '市中区', '1447');
INSERT INTO `ts_area` VALUES ('1598', '浚县', '1594');
INSERT INTO `ts_area` VALUES ('1185', '海沧区', '1183');
INSERT INTO `ts_area` VALUES ('1771', '京山县', '1768');
INSERT INTO `ts_area` VALUES ('1418', '垦利县', '1415');
INSERT INTO `ts_area` VALUES ('1045', '安徽', '0');
INSERT INTO `ts_area` VALUES ('1405', '桓台县', '1399');
INSERT INTO `ts_area` VALUES ('1409', '市中区', '1408');
INSERT INTO `ts_area` VALUES ('1960', '古丈县', '1954');
INSERT INTO `ts_area` VALUES ('1097', '枞阳县', '1092');
INSERT INTO `ts_area` VALUES ('1502', '武城县', '1493');
INSERT INTO `ts_area` VALUES ('1429', '莱州市', '1421');
INSERT INTO `ts_area` VALUES ('1594', '鹤壁市', '1532');
INSERT INTO `ts_area` VALUES ('1417', '河口区', '1415');
INSERT INTO `ts_area` VALUES ('1167', '宁国市', '1160');
INSERT INTO `ts_area` VALUES ('1555', '开封县', '1546');
INSERT INTO `ts_area` VALUES ('1040', '松阳县', '1035');
INSERT INTO `ts_area` VALUES ('1875', '绥宁县', '1866');
INSERT INTO `ts_area` VALUES ('1186', '湖里区', '1183');
INSERT INTO `ts_area` VALUES ('1081', '当涂县', '1077');
INSERT INTO `ts_area` VALUES ('1695', '太康县', '1687');
INSERT INTO `ts_area` VALUES ('1067', '怀远县', '1062');
INSERT INTO `ts_area` VALUES ('1162', '郎溪县', '1160');
INSERT INTO `ts_area` VALUES ('1706', '汝南县', '1698');
INSERT INTO `ts_area` VALUES ('1467', '威海市', '1374');
INSERT INTO `ts_area` VALUES ('1443', '寿光市', '1434');
INSERT INTO `ts_area` VALUES ('1615', '中站区', '1613');
INSERT INTO `ts_area` VALUES ('1296', '彭泽县', '1285');
INSERT INTO `ts_area` VALUES ('1930', '江永县', '1923');
INSERT INTO `ts_area` VALUES ('1169', '福州市', '1168');
INSERT INTO `ts_area` VALUES ('1473', '东港区', '1472');
INSERT INTO `ts_area` VALUES ('1247', '长汀县', '1245');
INSERT INTO `ts_area` VALUES ('1511', '冠县', '1505');
INSERT INTO `ts_area` VALUES ('1919', '汝城县', '1911');
INSERT INTO `ts_area` VALUES ('1458', '兖州市', '1447');
INSERT INTO `ts_area` VALUES ('1898', '津市市', '1889');
INSERT INTO `ts_area` VALUES ('1095', '宜秀区', '1092');
INSERT INTO `ts_area` VALUES ('1626', '华龙区', '1625');
INSERT INTO `ts_area` VALUES ('1060', '繁昌县', '1054');
INSERT INTO `ts_area` VALUES ('1642', '召陵区', '1639');
INSERT INTO `ts_area` VALUES ('1337', '井冈山市', '1324');
INSERT INTO `ts_area` VALUES ('1838', '荷塘区', '1837');
INSERT INTO `ts_area` VALUES ('1558', '老城区', '1557');
INSERT INTO `ts_area` VALUES ('1861', '衡山县', '1853');
INSERT INTO `ts_area` VALUES ('1034', '临海市', '1025');
INSERT INTO `ts_area` VALUES ('1130', '宿州市', '1045');
INSERT INTO `ts_area` VALUES ('1349', '抚州市', '1263');
INSERT INTO `ts_area` VALUES ('1532', '河南', '0');
INSERT INTO `ts_area` VALUES ('1617', '山阳区', '1613');
INSERT INTO `ts_area` VALUES ('1749', '长阳土家族自治县', '1740');
INSERT INTO `ts_area` VALUES ('1131', '埇桥区', '1130');
INSERT INTO `ts_area` VALUES ('1275', '昌江区', '1274');
INSERT INTO `ts_area` VALUES ('1885', '湘阴县', '1879');
INSERT INTO `ts_area` VALUES ('1396', '平度市', '1386');
INSERT INTO `ts_area` VALUES ('1797', '浠水县', '1791');
INSERT INTO `ts_area` VALUES ('1696', '鹿邑县', '1687');
INSERT INTO `ts_area` VALUES ('1521', '邹平县', '1514');
INSERT INTO `ts_area` VALUES ('1583', '汝州市', '1573');
INSERT INTO `ts_area` VALUES ('1998', '金湾区', '1995');
INSERT INTO `ts_area` VALUES ('1650', '义马市', '1645');
INSERT INTO `ts_area` VALUES ('1542', '荥阳市', '1533');
INSERT INTO `ts_area` VALUES ('1062', '蚌埠市', '1045');
INSERT INTO `ts_area` VALUES ('1827', '长沙市', '1826');
INSERT INTO `ts_area` VALUES ('1559', '西工区', '1557');
INSERT INTO `ts_area` VALUES ('1360', '广昌县', '1349');
INSERT INTO `ts_area` VALUES ('1693', '郸城县', '1687');
INSERT INTO `ts_area` VALUES ('1737', '竹溪县', '1731');
INSERT INTO `ts_area` VALUES ('1387', '市南区', '1386');
INSERT INTO `ts_area` VALUES ('1056', '弋江区', '1054');
INSERT INTO `ts_area` VALUES ('1775', '孝南区', '1774');
INSERT INTO `ts_area` VALUES ('1661', '社旗县', '1652');
INSERT INTO `ts_area` VALUES ('1640', '源汇区', '1639');
INSERT INTO `ts_area` VALUES ('1114', '南谯区', '1112');
INSERT INTO `ts_area` VALUES ('1877', '城步苗族自治县', '1866');
INSERT INTO `ts_area` VALUES ('1251', '连城县', '1245');
INSERT INTO `ts_area` VALUES ('1138', '庐江县', '1136');
INSERT INTO `ts_area` VALUES ('1772', '沙洋县', '1768');
INSERT INTO `ts_area` VALUES ('1015', '衢江区', '1013');
INSERT INTO `ts_area` VALUES ('1231', '平和县', '1222');
INSERT INTO `ts_area` VALUES ('1921', '安仁县', '1911');
INSERT INTO `ts_area` VALUES ('1679', '罗山县', '1676');
INSERT INTO `ts_area` VALUES ('1125', '临泉县', '1121');
INSERT INTO `ts_area` VALUES ('1868', '大祥区', '1866');
INSERT INTO `ts_area` VALUES ('1428', '莱阳市', '1421');
INSERT INTO `ts_area` VALUES ('1635', '鄢陵县', '1632');
INSERT INTO `ts_area` VALUES ('1792', '黄州区', '1791');
INSERT INTO `ts_area` VALUES ('1999', '汕头市', '1963');
INSERT INTO `ts_area` VALUES ('1093', '迎江区', '1092');
INSERT INTO `ts_area` VALUES ('1239', '松溪县', '1234');
INSERT INTO `ts_area` VALUES ('1205', '将乐县', '1196');
INSERT INTO `ts_area` VALUES ('1643', '舞阳县', '1639');
INSERT INTO `ts_area` VALUES ('1032', '仙居县', '1025');
INSERT INTO `ts_area` VALUES ('1035', '丽水市', '943');
INSERT INTO `ts_area` VALUES ('1800', '麻城市', '1791');
INSERT INTO `ts_area` VALUES ('1819', '来凤县', '1812');
INSERT INTO `ts_area` VALUES ('1925', '冷水滩区', '1923');
INSERT INTO `ts_area` VALUES ('1587', '殷都区', '1584');
INSERT INTO `ts_area` VALUES ('1090', '郊区', '1087');
INSERT INTO `ts_area` VALUES ('1722', '黄陂区', '1710');
INSERT INTO `ts_area` VALUES ('1488', '费县', '1480');
INSERT INTO `ts_area` VALUES ('1250', '武平县', '1245');
INSERT INTO `ts_area` VALUES ('1341', '万载县', '1338');
INSERT INTO `ts_area` VALUES ('1931', '宁远县', '1923');
INSERT INTO `ts_area` VALUES ('1765', '梁子湖区', '1764');
INSERT INTO `ts_area` VALUES ('1969', '白云区', '1964');
INSERT INTO `ts_area` VALUES ('1927', '东安县', '1923');
INSERT INTO `ts_area` VALUES ('1846', '醴陵市', '1837');
INSERT INTO `ts_area` VALUES ('1985', '新丰县', '1977');
INSERT INTO `ts_area` VALUES ('1413', '山亭区', '1408');
INSERT INTO `ts_area` VALUES ('1866', '邵阳市', '1826');
INSERT INTO `ts_area` VALUES ('1940', '溆浦县', '1935');
INSERT INTO `ts_area` VALUES ('1001', '上虞市', '996');
INSERT INTO `ts_area` VALUES ('1581', '郏县', '1573');
INSERT INTO `ts_area` VALUES ('1900', '永定区', '1899');
INSERT INTO `ts_area` VALUES ('1882', '君山区', '1879');
INSERT INTO `ts_area` VALUES ('1245', '龙岩市', '1168');
INSERT INTO `ts_area` VALUES ('1132', '砀山县', '1130');
INSERT INTO `ts_area` VALUES ('1783', '沙市区', '1782');
INSERT INTO `ts_area` VALUES ('1668', '睢阳区', '1666');
INSERT INTO `ts_area` VALUES ('1757', '襄阳区', '1754');
INSERT INTO `ts_area` VALUES ('1009', '兰溪市', '1003');
INSERT INTO `ts_area` VALUES ('1229', '东山县', '1222');
INSERT INTO `ts_area` VALUES ('1817', '宣恩县', '1812');
INSERT INTO `ts_area` VALUES ('1068', '五河县', '1062');
INSERT INTO `ts_area` VALUES ('1454', '汶上县', '1447');
INSERT INTO `ts_area` VALUES ('1338', '宜春市', '1263');
INSERT INTO `ts_area` VALUES ('1527', '巨野县', '1522');
INSERT INTO `ts_area` VALUES ('1508', '莘县', '1505');
INSERT INTO `ts_area` VALUES ('1444', '安丘市', '1434');
INSERT INTO `ts_area` VALUES ('1014', '柯城区', '1013');
INSERT INTO `ts_area` VALUES ('1196', '三明市', '1168');
INSERT INTO `ts_area` VALUES ('1651', '灵宝市', '1645');
INSERT INTO `ts_area` VALUES ('1201', '宁化县', '1196');
INSERT INTO `ts_area` VALUES ('1735', '郧西县', '1731');
INSERT INTO `ts_area` VALUES ('1367', '横峰县', '1361');
INSERT INTO `ts_area` VALUES ('1941', '会同县', '1935');
INSERT INTO `ts_area` VALUES ('1703', '正阳县', '1698');
INSERT INTO `ts_area` VALUES ('1441', '青州市', '1434');
INSERT INTO `ts_area` VALUES ('1241', '邵武市', '1234');
INSERT INTO `ts_area` VALUES ('1514', '滨州市', '1374');
INSERT INTO `ts_area` VALUES ('1309', '大余县', '1305');
INSERT INTO `ts_area` VALUES ('1628', '南乐县', '1625');
INSERT INTO `ts_area` VALUES ('1622', '济源市', '1613');
INSERT INTO `ts_area` VALUES ('1304', '贵溪市', '1301');
INSERT INTO `ts_area` VALUES ('1331', '永丰县', '1324');
INSERT INTO `ts_area` VALUES ('1252', '漳平市', '1245');
INSERT INTO `ts_area` VALUES ('1190', '莆田市', '1168');
INSERT INTO `ts_area` VALUES ('1974', '萝岗区', '1964');
INSERT INTO `ts_area` VALUES ('1781', '汉川市', '1774');
INSERT INTO `ts_area` VALUES ('1306', '章贡区', '1305');
INSERT INTO `ts_area` VALUES ('1993', '龙岗区', '1988');
INSERT INTO `ts_area` VALUES ('1957', '凤凰县', '1954');
INSERT INTO `ts_area` VALUES ('1916', '永兴县', '1911');
INSERT INTO `ts_area` VALUES ('1271', '新建县', '1264');
INSERT INTO `ts_area` VALUES ('1082', '淮北市', '1045');
INSERT INTO `ts_area` VALUES ('1571', '伊川县', '1557');
INSERT INTO `ts_area` VALUES ('1216', '永春县', '1209');
INSERT INTO `ts_area` VALUES ('1585', '文峰区', '1584');
INSERT INTO `ts_area` VALUES ('1128', '颍上县', '1121');
INSERT INTO `ts_area` VALUES ('1786', '监利县', '1782');
INSERT INTO `ts_area` VALUES ('1206', '泰宁县', '1196');
INSERT INTO `ts_area` VALUES ('1486', '沂水县', '1480');
INSERT INTO `ts_area` VALUES ('1662', '唐河县', '1652');
INSERT INTO `ts_area` VALUES ('1052', '肥东县', '1046');
INSERT INTO `ts_area` VALUES ('1230', '南靖县', '1222');
INSERT INTO `ts_area` VALUES ('1958', '花垣县', '1954');
INSERT INTO `ts_area` VALUES ('1507', '阳谷县', '1505');
INSERT INTO `ts_area` VALUES ('1715', '武昌区', '1710');
INSERT INTO `ts_area` VALUES ('1519', '沾化县', '1514');
INSERT INTO `ts_area` VALUES ('1720', '蔡甸区', '1710');
INSERT INTO `ts_area` VALUES ('1967', '海珠区', '1964');
INSERT INTO `ts_area` VALUES ('1025', '台州市', '943');
INSERT INTO `ts_area` VALUES ('1422', '芝罘区', '1421');
INSERT INTO `ts_area` VALUES ('1522', '菏泽市', '1374');
INSERT INTO `ts_area` VALUES ('1660', '淅川县', '1652');
INSERT INTO `ts_area` VALUES ('1569', '宜阳县', '1557');
INSERT INTO `ts_area` VALUES ('1816', '巴东县', '1812');
INSERT INTO `ts_area` VALUES ('1807', '通山县', '1802');
INSERT INTO `ts_area` VALUES ('1364', '广丰县', '1361');
INSERT INTO `ts_area` VALUES ('1403', '临淄区', '1399');
INSERT INTO `ts_area` VALUES ('1404', '周村区', '1399');
INSERT INTO `ts_area` VALUES ('1182', '长乐市', '1169');
INSERT INTO `ts_area` VALUES ('1087', '铜陵市', '1045');
INSERT INTO `ts_area` VALUES ('1431', '招远市', '1421');
INSERT INTO `ts_area` VALUES ('1756', '樊城区', '1754');
INSERT INTO `ts_area` VALUES ('1758', '南漳县', '1754');
INSERT INTO `ts_area` VALUES ('1478', '莱城区', '1477');
INSERT INTO `ts_area` VALUES ('1823', '潜江市', '1821');
INSERT INTO `ts_area` VALUES ('1577', '湛河区', '1573');
INSERT INTO `ts_area` VALUES ('1922', '资兴市', '1911');
INSERT INTO `ts_area` VALUES ('1678', '平桥区', '1676');
INSERT INTO `ts_area` VALUES ('1871', '新邵县', '1866');
INSERT INTO `ts_area` VALUES ('1384', '商河县', '1375');
INSERT INTO `ts_area` VALUES ('1865', '常宁市', '1853');
INSERT INTO `ts_area` VALUES ('1623', '沁阳市', '1613');
INSERT INTO `ts_area` VALUES ('1361', '上饶市', '1263');
INSERT INTO `ts_area` VALUES ('1457', '曲阜市', '1447');
INSERT INTO `ts_area` VALUES ('1533', '郑州市', '1532');
INSERT INTO `ts_area` VALUES ('1938', '沅陵县', '1935');
INSERT INTO `ts_area` VALUES ('1373', '德兴市', '1361');
INSERT INTO `ts_area` VALUES ('1037', '青田县', '1035');
INSERT INTO `ts_area` VALUES ('1599', '淇县', '1594');
INSERT INTO `ts_area` VALUES ('1952', '冷水江市', '1948');
INSERT INTO `ts_area` VALUES ('1879', '岳阳市', '1826');
INSERT INTO `ts_area` VALUES ('1173', '马尾区', '1169');
INSERT INTO `ts_area` VALUES ('1209', '泉州市', '1168');
INSERT INTO `ts_area` VALUES ('1459', '邹城市', '1447');
INSERT INTO `ts_area` VALUES ('1810', '曾都区', '1809');
INSERT INTO `ts_area` VALUES ('1285', '九江市', '1263');
INSERT INTO `ts_area` VALUES ('1200', '清流县', '1196');
INSERT INTO `ts_area` VALUES ('1902', '慈利县', '1899');
INSERT INTO `ts_area` VALUES ('1108', '歙县', '1104');
INSERT INTO `ts_area` VALUES ('1716', '青山区', '1710');
INSERT INTO `ts_area` VALUES ('1394', '胶州市', '1386');
INSERT INTO `ts_area` VALUES ('1847', '湘潭市', '1826');
INSERT INTO `ts_area` VALUES ('1501', '夏津县', '1493');
INSERT INTO `ts_area` VALUES ('1110', '黟县', '1104');
INSERT INTO `ts_area` VALUES ('1427', '龙口市', '1421');
INSERT INTO `ts_area` VALUES ('1064', '蚌山区', '1062');
INSERT INTO `ts_area` VALUES ('1398', '莱西市', '1386');
INSERT INTO `ts_area` VALUES ('1762', '枣阳市', '1754');
INSERT INTO `ts_area` VALUES ('1631', '濮阳县', '1625');
INSERT INTO `ts_area` VALUES ('1991', '南山区', '1988');
INSERT INTO `ts_area` VALUES ('1665', '邓州市', '1652');
INSERT INTO `ts_area` VALUES ('1755', '襄城区', '1754');
INSERT INTO `ts_area` VALUES ('1551', '金明区', '1546');
INSERT INTO `ts_area` VALUES ('1913', '苏仙区', '1911');
INSERT INTO `ts_area` VALUES ('1908', '桃江县', '1904');
INSERT INTO `ts_area` VALUES ('1554', '尉氏县', '1546');
INSERT INTO `ts_area` VALUES ('1605', '新乡县', '1600');
INSERT INTO `ts_area` VALUES ('1300', '分宜县', '1298');
INSERT INTO `ts_area` VALUES ('1627', '清丰县', '1625');
INSERT INTO `ts_area` VALUES ('1904', '益阳市', '1826');
INSERT INTO `ts_area` VALUES ('1076', '凤台县', '1070');
INSERT INTO `ts_area` VALUES ('1483', '河东区', '1480');
INSERT INTO `ts_area` VALUES ('1965', '荔湾区', '1964');
INSERT INTO `ts_area` VALUES ('1780', '安陆市', '1774');
INSERT INTO `ts_area` VALUES ('1510', '东阿县', '1505');
INSERT INTO `ts_area` VALUES ('1008', '磐安县', '1003');
INSERT INTO `ts_area` VALUES ('1193', '荔城区', '1190');
INSERT INTO `ts_area` VALUES ('1891', '鼎城区', '1889');
INSERT INTO `ts_area` VALUES ('1582', '舞钢市', '1573');
INSERT INTO `ts_area` VALUES ('1314', '定南县', '1305');
INSERT INTO `ts_area` VALUES ('1023', '岱山县', '1020');
INSERT INTO `ts_area` VALUES ('1724', '黄石市', '1709');
INSERT INTO `ts_area` VALUES ('1468', '环翠区', '1467');
INSERT INTO `ts_area` VALUES ('1462', '岱岳区', '1460');
INSERT INTO `ts_area` VALUES ('1455', '泗水县', '1447');
INSERT INTO `ts_area` VALUES ('1851', '湘乡市', '1847');
INSERT INTO `ts_area` VALUES ('1840', '石峰区', '1837');
INSERT INTO `ts_area` VALUES ('1529', '鄄城县', '1522');
INSERT INTO `ts_area` VALUES ('1310', '上犹县', '1305');
INSERT INTO `ts_area` VALUES ('1267', '青云谱区', '1264');
INSERT INTO `ts_area` VALUES ('1680', '光山县', '1676');
INSERT INTO `ts_area` VALUES ('1416', '东营区', '1415');
INSERT INTO `ts_area` VALUES ('1246', '新罗区', '1245');
INSERT INTO `ts_area` VALUES ('1729', '阳新县', '1724');
INSERT INTO `ts_area` VALUES ('1621', '温县', '1613');
INSERT INTO `ts_area` VALUES ('1497', '庆云县', '1493');
INSERT INTO `ts_area` VALUES ('1253', '宁德市', '1168');
INSERT INTO `ts_area` VALUES ('1165', '绩溪县', '1160');
INSERT INTO `ts_area` VALUES ('1380', '历城区', '1375');
INSERT INTO `ts_area` VALUES ('1154', '利辛县', '1150');
INSERT INTO `ts_area` VALUES ('1051', '长丰县', '1046');
INSERT INTO `ts_area` VALUES ('1794', '红安县', '1791');
INSERT INTO `ts_area` VALUES ('1739', '丹江口市', '1731');
INSERT INTO `ts_area` VALUES ('1286', '庐山区', '1285');
INSERT INTO `ts_area` VALUES ('1041', '云和县', '1035');
INSERT INTO `ts_area` VALUES ('1224', '龙文区', '1222');
INSERT INTO `ts_area` VALUES ('1042', '庆元县', '1035');
INSERT INTO `ts_area` VALUES ('1479', '钢城区', '1477');
INSERT INTO `ts_area` VALUES ('1453', '嘉祥县', '1447');
INSERT INTO `ts_area` VALUES ('1411', '峄城区', '1408');
INSERT INTO `ts_area` VALUES ('1864', '耒阳市', '1853');
INSERT INTO `ts_area` VALUES ('1058', '三山区', '1054');
INSERT INTO `ts_area` VALUES ('1855', '雁峰区', '1853');
INSERT INTO `ts_area` VALUES ('1264', '南昌市', '1263');
INSERT INTO `ts_area` VALUES ('1031', '天台县', '1025');
INSERT INTO `ts_area` VALUES ('1929', '道县', '1923');
INSERT INTO `ts_area` VALUES ('1934', '江华瑶族自治县', '1923');
INSERT INTO `ts_area` VALUES ('1106', '黄山区', '1104');
INSERT INTO `ts_area` VALUES ('1903', '桑植县', '1899');
INSERT INTO `ts_area` VALUES ('1070', '淮南市', '1045');
INSERT INTO `ts_area` VALUES ('1528', '郓城县', '1522');
INSERT INTO `ts_area` VALUES ('1181', '福清市', '1169');
INSERT INTO `ts_area` VALUES ('1515', '滨城区', '1514');
INSERT INTO `ts_area` VALUES ('1834', '望城县', '1827');
INSERT INTO `ts_area` VALUES ('1611', '卫辉市', '1600');
INSERT INTO `ts_area` VALUES ('1371', '万年县', '1361');
INSERT INTO `ts_area` VALUES ('1712', '江汉区', '1710');
INSERT INTO `ts_area` VALUES ('1402', '博山区', '1399');
INSERT INTO `ts_area` VALUES ('1763', '宜城市', '1754');
INSERT INTO `ts_area` VALUES ('1480', '临沂市', '1374');
INSERT INTO `ts_area` VALUES ('1520', '博兴县', '1514');
INSERT INTO `ts_area` VALUES ('1953', '涟源市', '1948');
INSERT INTO `ts_area` VALUES ('1596', '山城区', '1594');
INSERT INTO `ts_area` VALUES ('1347', '樟树市', '1338');
INSERT INTO `ts_area` VALUES ('1033', '温岭市', '1025');
INSERT INTO `ts_area` VALUES ('1145', '寿县', '1142');
INSERT INTO `ts_area` VALUES ('1461', '泰山区', '1460');
INSERT INTO `ts_area` VALUES ('1297', '瑞昌市', '1285');
INSERT INTO `ts_area` VALUES ('1287', '浔阳区', '1285');
INSERT INTO `ts_area` VALUES ('1489', '平邑县', '1480');
INSERT INTO `ts_area` VALUES ('1038', '缙云县', '1035');
INSERT INTO `ts_area` VALUES ('1909', '安化县', '1904');
INSERT INTO `ts_area` VALUES ('1697', '项城市', '1687');
INSERT INTO `ts_area` VALUES ('1163', '广德县', '1160');
INSERT INTO `ts_area` VALUES ('1115', '来安县', '1112');
INSERT INTO `ts_area` VALUES ('1415', '东营市', '1374');
INSERT INTO `ts_area` VALUES ('1368', '弋阳县', '1361');
INSERT INTO `ts_area` VALUES ('1204', '沙县', '1196');
INSERT INTO `ts_area` VALUES ('1159', '青阳县', '1155');
INSERT INTO `ts_area` VALUES ('1107', '徽州区', '1104');
INSERT INTO `ts_area` VALUES ('1388', '市北区', '1386');
INSERT INTO `ts_area` VALUES ('1170', '鼓楼区', '1169');
INSERT INTO `ts_area` VALUES ('1352', '黎川县', '1349');
INSERT INTO `ts_area` VALUES ('1191', '城厢区', '1190');
INSERT INTO `ts_area` VALUES ('1639', '漯河市', '1532');
INSERT INTO `ts_area` VALUES ('1636', '襄城县', '1632');
INSERT INTO `ts_area` VALUES ('1784', '荆州区', '1782');
INSERT INTO `ts_area` VALUES ('1494', '德城区', '1493');
INSERT INTO `ts_area` VALUES ('1495', '陵县', '1493');
INSERT INTO `ts_area` VALUES ('1100', '宿松县', '1092');
INSERT INTO `ts_area` VALUES ('1330', '新干县', '1324');
INSERT INTO `ts_area` VALUES ('1157', '东至县', '1155');
INSERT INTO `ts_area` VALUES ('1721', '江夏区', '1710');
INSERT INTO `ts_area` VALUES ('1923', '永州市', '1826');
INSERT INTO `ts_area` VALUES ('1857', '蒸湘区', '1853');
INSERT INTO `ts_area` VALUES ('1512', '高唐县', '1505');
INSERT INTO `ts_area` VALUES ('1425', '莱山区', '1421');
INSERT INTO `ts_area` VALUES ('1272', '安义县', '1264');
INSERT INTO `ts_area` VALUES ('1027', '黄岩区', '1025');
INSERT INTO `ts_area` VALUES ('1321', '石城县', '1305');
INSERT INTO `ts_area` VALUES ('1523', '牡丹区', '1522');
INSERT INTO `ts_area` VALUES ('1485', '郯城县', '1480');
INSERT INTO `ts_area` VALUES ('1858', '南岳区', '1853');
INSERT INTO `ts_area` VALUES ('1750', '五峰土家族自治县', '1740');
INSERT INTO `ts_area` VALUES ('1920', '桂东县', '1911');
INSERT INTO `ts_area` VALUES ('1024', '嵊泗县', '1020');
INSERT INTO `ts_area` VALUES ('1994', '盐田区', '1988');
INSERT INTO `ts_area` VALUES ('1705', '泌阳县', '1698');
INSERT INTO `ts_area` VALUES ('1077', '马鞍山市', '1045');
INSERT INTO `ts_area` VALUES ('1248', '永定县', '1245');
INSERT INTO `ts_area` VALUES ('1026', '椒江区', '1025');
INSERT INTO `ts_area` VALUES ('1372', '婺源县', '1361');
INSERT INTO `ts_area` VALUES ('1726', '西塞山区', '1724');
INSERT INTO `ts_area` VALUES ('1442', '诸城市', '1434');
INSERT INTO `ts_area` VALUES ('1517', '阳信县', '1514');
INSERT INTO `ts_area` VALUES ('1317', '于都县', '1305');
INSERT INTO `ts_area` VALUES ('1066', '淮上区', '1062');
INSERT INTO `ts_area` VALUES ('1292', '德安县', '1285');
INSERT INTO `ts_area` VALUES ('1844', '茶陵县', '1837');
INSERT INTO `ts_area` VALUES ('1939', '辰溪县', '1935');
INSERT INTO `ts_area` VALUES ('1336', '永新县', '1324');
INSERT INTO `ts_area` VALUES ('1984', '乳源瑶族自治县', '1977');
INSERT INTO `ts_area` VALUES ('1222', '漳州市', '1168');
INSERT INTO `ts_area` VALUES ('1741', '西陵区', '1740');
INSERT INTO `ts_area` VALUES ('1742', '伍家岗区', '1740');
INSERT INTO `ts_area` VALUES ('1988', '深圳市', '1963');
INSERT INTO `ts_area` VALUES ('1211', '丰泽区', '1209');
INSERT INTO `ts_area` VALUES ('1513', '临清市', '1505');
INSERT INTO `ts_area` VALUES ('1227', '诏安县', '1222');
INSERT INTO `ts_area` VALUES ('1469', '文登市', '1467');
INSERT INTO `ts_area` VALUES ('1972', '花都区', '1964');
INSERT INTO `ts_area` VALUES ('1172', '仓山区', '1169');
INSERT INTO `ts_area` VALUES ('1460', '泰安市', '1374');
INSERT INTO `ts_area` VALUES ('1370', '鄱阳县', '1361');
INSERT INTO `ts_area` VALUES ('1541', '巩义市', '1533');
INSERT INTO `ts_area` VALUES ('1323', '南康市', '1305');
INSERT INTO `ts_area` VALUES ('1949', '娄星区', '1948');
INSERT INTO `ts_area` VALUES ('1155', '池州市', '1045');
INSERT INTO `ts_area` VALUES ('1950', '双峰县', '1948');
INSERT INTO `ts_area` VALUES ('1213', '泉港区', '1209');
INSERT INTO `ts_area` VALUES ('1669', '民权县', '1666');
INSERT INTO `ts_area` VALUES ('1374', '山东', '0');
INSERT INTO `ts_area` VALUES ('1085', '烈山区', '1082');
INSERT INTO `ts_area` VALUES ('1711', '江岸区', '1710');
INSERT INTO `ts_area` VALUES ('1830', '岳麓区', '1827');
INSERT INTO `ts_area` VALUES ('1017', '开化县', '1013');
INSERT INTO `ts_area` VALUES ('1798', '蕲春县', '1791');
INSERT INTO `ts_area` VALUES ('1926', '祁阳县', '1923');
INSERT INTO `ts_area` VALUES ('1987', '南雄市', '1977');
INSERT INTO `ts_area` VALUES ('1505', '聊城市', '1374');
INSERT INTO `ts_area` VALUES ('1942', '麻阳苗族自治县', '1935');
INSERT INTO `ts_area` VALUES ('1773', '钟祥市', '1768');
INSERT INTO `ts_area` VALUES ('1498', '临邑县', '1493');
INSERT INTO `ts_area` VALUES ('1966', '越秀区', '1964');
INSERT INTO `ts_area` VALUES ('1150', '亳州市', '1045');
INSERT INTO `ts_area` VALUES ('1659', '内乡县', '1652');
INSERT INTO `ts_area` VALUES ('1518', '无棣县', '1514');
INSERT INTO `ts_area` VALUES ('1274', '景德镇市', '1263');
INSERT INTO `ts_area` VALUES ('1382', '平阴县', '1375');
INSERT INTO `ts_area` VALUES ('1607', '原阳县', '1600');
INSERT INTO `ts_area` VALUES ('1876', '新宁县', '1866');
INSERT INTO `ts_area` VALUES ('1369', '余干县', '1361');
INSERT INTO `ts_area` VALUES ('1236', '顺昌县', '1234');
INSERT INTO `ts_area` VALUES ('1240', '政和县', '1234');
INSERT INTO `ts_area` VALUES ('1504', '禹城市', '1493');
INSERT INTO `ts_area` VALUES ('1242', '武夷山市', '1234');
INSERT INTO `ts_area` VALUES ('1386', '青岛市', '1374');
INSERT INTO `ts_area` VALUES ('1552', '杞县', '1546');
INSERT INTO `ts_area` VALUES ('1277', '浮梁县', '1274');
INSERT INTO `ts_area` VALUES ('1356', '宜黄县', '1349');
INSERT INTO `ts_area` VALUES ('1850', '湘潭县', '1847');
INSERT INTO `ts_area` VALUES ('1195', '仙游县', '1190');
INSERT INTO `ts_area` VALUES ('1188', '同安区', '1183');
INSERT INTO `ts_area` VALUES ('1975', '增城市', '1964');
INSERT INTO `ts_area` VALUES ('1831', '开福区', '1827');
INSERT INTO `ts_area` VALUES ('1184', '思明区', '1183');
INSERT INTO `ts_area` VALUES ('1030', '三门县', '1025');
INSERT INTO `ts_area` VALUES ('1878', '武冈市', '1866');
INSERT INTO `ts_area` VALUES ('1098', '潜山县', '1092');
INSERT INTO `ts_area` VALUES ('1258', '寿宁县', '1253');
INSERT INTO `ts_area` VALUES ('1069', '固镇县', '1062');
INSERT INTO `ts_area` VALUES ('1751', '宜都市', '1740');
INSERT INTO `ts_area` VALUES ('1500', '平原县', '1493');
INSERT INTO `ts_area` VALUES ('1754', '襄樊市', '1709');
INSERT INTO `ts_area` VALUES ('1053', '肥西县', '1046');
INSERT INTO `ts_area` VALUES ('1702', '平舆县', '1698');
INSERT INTO `ts_area` VALUES ('1279', '萍乡市', '1263');
INSERT INTO `ts_area` VALUES ('1153', '蒙城县', '1150');
INSERT INTO `ts_area` VALUES ('1761', '老河口市', '1754');
INSERT INTO `ts_area` VALUES ('1849', '岳塘区', '1847');
INSERT INTO `ts_area` VALUES ('1732', '茅箭区', '1731');
INSERT INTO `ts_area` VALUES ('1350', '临川区', '1349');
INSERT INTO `ts_area` VALUES ('1451', '鱼台县', '1447');
INSERT INTO `ts_area` VALUES ('1767', '鄂城区', '1764');
INSERT INTO `ts_area` VALUES ('1203', '尤溪县', '1196');
INSERT INTO `ts_area` VALUES ('1604', '牧野区', '1600');
INSERT INTO `ts_area` VALUES ('1863', '祁东县', '1853');
INSERT INTO `ts_area` VALUES ('1112', '滁州市', '1045');
INSERT INTO `ts_area` VALUES ('1164', '泾县', '1160');
INSERT INTO `ts_area` VALUES ('1973', '南沙区', '1964');
INSERT INTO `ts_area` VALUES ('1078', '金家庄区', '1077');
INSERT INTO `ts_area` VALUES ('1050', '包河区', '1046');
INSERT INTO `ts_area` VALUES ('1268', '湾里区', '1264');
INSERT INTO `ts_area` VALUES ('1869', '北塔区', '1866');
INSERT INTO `ts_area` VALUES ('1744', '猇亭区', '1740');
INSERT INTO `ts_area` VALUES ('1283', '上栗县', '1279');
INSERT INTO `ts_area` VALUES ('1378', '槐荫区', '1375');
INSERT INTO `ts_area` VALUES ('1971', '番禺区', '1964');
INSERT INTO `ts_area` VALUES ('1997', '斗门区', '1995');
INSERT INTO `ts_area` VALUES ('1152', '涡阳县', '1150');
INSERT INTO `ts_area` VALUES ('1171', '台江区', '1169');
INSERT INTO `ts_area` VALUES ('1156', '贵池区', '1155');
INSERT INTO `ts_area` VALUES ('1111', '祁门县', '1104');
INSERT INTO `ts_area` VALUES ('1689', '扶沟县', '1687');
INSERT INTO `ts_area` VALUES ('1313', '龙南县', '1305');
INSERT INTO `ts_area` VALUES ('1187', '集美区', '1183');
INSERT INTO `ts_area` VALUES ('1638', '长葛市', '1632');
INSERT INTO `ts_area` VALUES ('1124', '颍泉区', '1121');
INSERT INTO `ts_area` VALUES ('1776', '孝昌县', '1774');
INSERT INTO `ts_area` VALUES ('1305', '赣州市', '1263');
INSERT INTO `ts_area` VALUES ('1408', '枣庄市', '1374');
INSERT INTO `ts_area` VALUES ('1986', '乐昌市', '1977');
INSERT INTO `ts_area` VALUES ('1944', '芷江侗族自治县', '1935');
INSERT INTO `ts_area` VALUES ('1342', '上高县', '1338');
INSERT INTO `ts_area` VALUES ('1433', '海阳市', '1421');
INSERT INTO `ts_area` VALUES ('1856', '石鼓区', '1853');
INSERT INTO `ts_area` VALUES ('1572', '偃师市', '1557');
INSERT INTO `ts_area` VALUES ('1580', '鲁山县', '1573');
INSERT INTO `ts_area` VALUES ('1144', '裕安区', '1142');
INSERT INTO `ts_area` VALUES ('1344', '靖安县', '1338');
INSERT INTO `ts_area` VALUES ('1177', '罗源县', '1169');
INSERT INTO `ts_area` VALUES ('1812', '恩施土家族苗族自治州', '1709');
INSERT INTO `ts_area` VALUES ('1436', '寒亭区', '1434');
INSERT INTO `ts_area` VALUES ('1564', '孟津县', '1557');
INSERT INTO `ts_area` VALUES ('1674', '夏邑县', '1666');
INSERT INTO `ts_area` VALUES ('1655', '南召县', '1652');
INSERT INTO `ts_area` VALUES ('1435', '潍城区', '1434');
INSERT INTO `ts_area` VALUES ('1109', '休宁县', '1104');
INSERT INTO `ts_area` VALUES ('1219', '石狮市', '1209');
INSERT INTO `ts_area` VALUES ('1740', '宜昌市', '1709');
INSERT INTO `ts_area` VALUES ('1212', '洛江区', '1209');
INSERT INTO `ts_area` VALUES ('1714', '汉阳区', '1710');
INSERT INTO `ts_area` VALUES ('1629', '范县', '1625');
INSERT INTO `ts_area` VALUES ('1748', '秭归县', '1740');
INSERT INTO `ts_area` VALUES ('1608', '延津县', '1600');
INSERT INTO `ts_area` VALUES ('1047', '瑶海区', '1046');
INSERT INTO `ts_area` VALUES ('1438', '奎文区', '1434');
INSERT INTO `ts_area` VALUES ('1759', '谷城县', '1754');
INSERT INTO `ts_area` VALUES ('1841', '天元区', '1837');
INSERT INTO `ts_area` VALUES ('1105', '屯溪区', '1104');
INSERT INTO `ts_area` VALUES ('1005', '金东区', '1003');
INSERT INTO `ts_area` VALUES ('1540', '中牟县', '1533');
INSERT INTO `ts_area` VALUES ('1565', '新安县', '1557');
INSERT INTO `ts_area` VALUES ('1654', '卧龙区', '1652');
INSERT INTO `ts_area` VALUES ('1675', '永城市', '1666');
INSERT INTO `ts_area` VALUES ('1955', '吉首市', '1954');
INSERT INTO `ts_area` VALUES ('1412', '台儿庄区', '1408');
INSERT INTO `ts_area` VALUES ('1293', '星子县', '1285');
INSERT INTO `ts_area` VALUES ('1122', '颍州区', '1121');
INSERT INTO `ts_area` VALUES ('1730', '大冶市', '1724');
INSERT INTO `ts_area` VALUES ('1883', '岳阳县', '1879');
INSERT INTO `ts_area` VALUES ('1002', '嵊州市', '996');
INSERT INTO `ts_area` VALUES ('1281', '湘东区', '1279');
INSERT INTO `ts_area` VALUES ('1075', '潘集区', '1070');
INSERT INTO `ts_area` VALUES ('1148', '金寨县', '1142');
INSERT INTO `ts_area` VALUES ('1197', '梅列区', '1196');
INSERT INTO `ts_area` VALUES ('1019', '江山市', '1013');
INSERT INTO `ts_area` VALUES ('1474', '岚山区', '1472');
INSERT INTO `ts_area` VALUES ('1217', '德化县', '1209');
INSERT INTO `ts_area` VALUES ('1379', '天桥区', '1375');
INSERT INTO `ts_area` VALUES ('1818', '咸丰县', '1812');
INSERT INTO `ts_area` VALUES ('1440', '昌乐县', '1434');
INSERT INTO `ts_area` VALUES ('1667', '梁园区', '1666');
INSERT INTO `ts_area` VALUES ('1563', '洛龙区', '1557');
INSERT INTO `ts_area` VALUES ('1262', '福鼎市', '1253');
INSERT INTO `ts_area` VALUES ('1466', '肥城市', '1460');
INSERT INTO `ts_area` VALUES ('1530', '定陶县', '1522');
INSERT INTO `ts_area` VALUES ('1822', '仙桃市', '1821');
INSERT INTO `ts_area` VALUES ('1319', '会昌县', '1305');
INSERT INTO `ts_area` VALUES ('1265', '东湖区', '1264');
INSERT INTO `ts_area` VALUES ('1613', '焦作市', '1532');
INSERT INTO `ts_area` VALUES ('1699', '驿城区', '1698');
INSERT INTO `ts_area` VALUES ('1764', '鄂州市', '1709');
INSERT INTO `ts_area` VALUES ('1575', '卫东区', '1573');
INSERT INTO `ts_area` VALUES ('1624', '孟州市', '1613');
INSERT INTO `ts_area` VALUES ('1976', '从化市', '1964');
INSERT INTO `ts_area` VALUES ('1912', '北湖区', '1911');
INSERT INTO `ts_area` VALUES ('1538', '上街区', '1533');
INSERT INTO `ts_area` VALUES ('1073', '谢家集区', '1070');
INSERT INTO `ts_area` VALUES ('1915', '宜章县', '1911');
INSERT INTO `ts_area` VALUES ('1318', '兴国县', '1305');
INSERT INTO `ts_area` VALUES ('1788', '石首市', '1782');
INSERT INTO `ts_area` VALUES ('1945', '靖州苗族侗族自治县', '1935');
INSERT INTO `ts_area` VALUES ('1560', '瀍河回族区', '1557');
INSERT INTO `ts_area` VALUES ('1117', '定远县', '1112');
INSERT INTO `ts_area` VALUES ('1301', '鹰潭市', '1263');
INSERT INTO `ts_area` VALUES ('1820', '鹤峰县', '1812');
INSERT INTO `ts_area` VALUES ('1937', '中方县', '1935');
INSERT INTO `ts_area` VALUES ('1774', '孝感市', '1709');
INSERT INTO `ts_area` VALUES ('1490', '莒南县', '1480');
INSERT INTO `ts_area` VALUES ('1096', '怀宁县', '1092');
INSERT INTO `ts_area` VALUES ('1641', '郾城区', '1639');
INSERT INTO `ts_area` VALUES ('1223', '芗城区', '1222');
INSERT INTO `ts_area` VALUES ('1543', '新密市', '1533');
INSERT INTO `ts_area` VALUES ('1192', '涵江区', '1190');
INSERT INTO `ts_area` VALUES ('1273', '进贤县', '1264');
INSERT INTO `ts_area` VALUES ('1535', '二七区', '1533');
INSERT INTO `ts_area` VALUES ('1561', '涧西区', '1557');
INSERT INTO `ts_area` VALUES ('1348', '高安市', '1338');
INSERT INTO `ts_area` VALUES ('1961', '永顺县', '1954');
INSERT INTO `ts_area` VALUES ('1401', '张店区', '1399');
INSERT INTO `ts_area` VALUES ('1584', '安阳市', '1532');
INSERT INTO `ts_area` VALUES ('1525', '单县', '1522');
INSERT INTO `ts_area` VALUES ('1983', '翁源县', '1977');
INSERT INTO `ts_area` VALUES ('1664', '桐柏县', '1652');
INSERT INTO `ts_area` VALUES ('1645', '三门峡市', '1532');
INSERT INTO `ts_area` VALUES ('1676', '信阳市', '1532');
INSERT INTO `ts_area` VALUES ('1143', '金安区', '1142');
INSERT INTO `ts_area` VALUES ('1618', '修武县', '1613');
INSERT INTO `ts_area` VALUES ('1487', '苍山县', '1480');
INSERT INTO `ts_area` VALUES ('1946', '通道侗族自治县', '1935');
INSERT INTO `ts_area` VALUES ('1698', '驻马店市', '1532');
INSERT INTO `ts_area` VALUES ('1046', '合肥市', '1045');
INSERT INTO `ts_area` VALUES ('1896', '桃源县', '1889');
INSERT INTO `ts_area` VALUES ('1327', '吉安县', '1324');
INSERT INTO `ts_area` VALUES ('1437', '坊子区', '1434');
INSERT INTO `ts_area` VALUES ('1907', '南县', '1904');
INSERT INTO `ts_area` VALUES ('1719', '汉南区', '1710');
INSERT INTO `ts_area` VALUES ('1593', '林州市', '1584');
INSERT INTO `ts_area` VALUES ('1848', '雨湖区', '1847');
INSERT INTO `ts_area` VALUES ('1054', '芜湖市', '1045');
INSERT INTO `ts_area` VALUES ('1694', '淮阳县', '1687');
INSERT INTO `ts_area` VALUES ('1633', '魏都区', '1632');
INSERT INTO `ts_area` VALUES ('1481', '兰山区', '1480');
INSERT INTO `ts_area` VALUES ('1174', '晋安区', '1169');
INSERT INTO `ts_area` VALUES ('1566', '栾川县', '1557');
INSERT INTO `ts_area` VALUES ('1648', '陕县', '1645');
INSERT INTO `ts_area` VALUES ('1914', '桂阳县', '1911');
INSERT INTO `ts_area` VALUES ('1576', '石龙区', '1573');
INSERT INTO `ts_area` VALUES ('1137', '居巢区', '1136');
INSERT INTO `ts_area` VALUES ('1238', '光泽县', '1234');
INSERT INTO `ts_area` VALUES ('1591', '滑县', '1584');
INSERT INTO `ts_area` VALUES ('1845', '炎陵县', '1837');
INSERT INTO `ts_area` VALUES ('1606', '获嘉县', '1600');
INSERT INTO `ts_area` VALUES ('1889', '常德市', '1826');
INSERT INTO `ts_area` VALUES ('1158', '石台县', '1155');
INSERT INTO `ts_area` VALUES ('1146', '霍邱县', '1142');
INSERT INTO `ts_area` VALUES ('1901', '武陵源区', '1899');
INSERT INTO `ts_area` VALUES ('1603', '凤泉区', '1600');
INSERT INTO `ts_area` VALUES ('1071', '大通区', '1070');
INSERT INTO `ts_area` VALUES ('1813', '恩施市', '1812');
INSERT INTO `ts_area` VALUES ('1432', '栖霞市', '1421');
INSERT INTO `ts_area` VALUES ('1059', '芜湖县', '1054');
INSERT INTO `ts_area` VALUES ('1288', '九江县', '1285');
INSERT INTO `ts_area` VALUES ('1725', '黄石港区', '1724');
INSERT INTO `ts_area` VALUES ('1815', '建始县', '1812');
INSERT INTO `ts_area` VALUES ('1854', '珠晖区', '1853');
INSERT INTO `ts_area` VALUES ('1118', '凤阳县', '1112');
INSERT INTO `ts_area` VALUES ('1785', '公安县', '1782');
INSERT INTO `ts_area` VALUES ('1278', '乐平市', '1274');
INSERT INTO `ts_area` VALUES ('1752', '当阳市', '1740');
INSERT INTO `ts_area` VALUES ('1649', '卢氏县', '1645');
INSERT INTO `ts_area` VALUES ('1687', '周口市', '1532');
INSERT INTO `ts_area` VALUES ('1198', '三元区', '1196');
INSERT INTO `ts_area` VALUES ('1544', '新郑市', '1533');
INSERT INTO `ts_area` VALUES ('1567', '嵩县', '1557');
INSERT INTO `ts_area` VALUES ('1284', '芦溪县', '1279');
INSERT INTO `ts_area` VALUES ('1261', '福安市', '1253');
INSERT INTO `ts_area` VALUES ('1129', '界首市', '1121');
INSERT INTO `ts_area` VALUES ('1632', '许昌市', '1532');
INSERT INTO `ts_area` VALUES ('1653', '宛城区', '1652');
INSERT INTO `ts_area` VALUES ('1557', '洛阳市', '1532');
INSERT INTO `ts_area` VALUES ('1228', '长泰县', '1222');
INSERT INTO `ts_area` VALUES ('1039', '遂昌县', '1035');
INSERT INTO `ts_area` VALUES ('1237', '浦城县', '1234');
INSERT INTO `ts_area` VALUES ('1954', '湘西土家族苗族自治州', '1826');
INSERT INTO `ts_area` VALUES ('1802', '咸宁市', '1709');
INSERT INTO `ts_area` VALUES ('1255', '霞浦县', '1253');
INSERT INTO `ts_area` VALUES ('1537', '金水区', '1533');
INSERT INTO `ts_area` VALUES ('1796', '英山县', '1791');
INSERT INTO `ts_area` VALUES ('1516', '惠民县', '1514');
INSERT INTO `ts_area` VALUES ('1399', '淄博市', '1374');
INSERT INTO `ts_area` VALUES ('1977', '韶关市', '1963');
INSERT INTO `ts_area` VALUES ('1113', '琅琊区', '1112');
INSERT INTO `ts_area` VALUES ('1084', '相山区', '1082');
INSERT INTO `ts_area` VALUES ('1315', '全南县', '1305');
INSERT INTO `ts_area` VALUES ('1303', '余江县', '1301');
INSERT INTO `ts_area` VALUES ('1249', '上杭县', '1245');
INSERT INTO `ts_area` VALUES ('1307', '赣县', '1305');
INSERT INTO `ts_area` VALUES ('1707', '遂平县', '1698');
INSERT INTO `ts_area` VALUES ('1116', '全椒县', '1112');
INSERT INTO `ts_area` VALUES ('1295', '湖口县', '1285');
INSERT INTO `ts_area` VALUES ('1990', '福田区', '1988');
INSERT INTO `ts_area` VALUES ('1044', '龙泉市', '1035');
INSERT INTO `ts_area` VALUES ('1086', '濉溪县', '1082');
INSERT INTO `ts_area` VALUES ('1083', '杜集区', '1082');
INSERT INTO `ts_area` VALUES ('1447', '济宁市', '1374');
INSERT INTO `ts_area` VALUES ('1727', '下陆区', '1724');
INSERT INTO `ts_area` VALUES ('1568', '汝阳县', '1557');
INSERT INTO `ts_area` VALUES ('1366', '铅山县', '1361');
INSERT INTO `ts_area` VALUES ('1959', '保靖县', '1954');
INSERT INTO `ts_area` VALUES ('1127', '阜南县', '1121');
INSERT INTO `ts_area` VALUES ('1995', '珠海市', '1963');
INSERT INTO `ts_area` VALUES ('1089', '狮子山区', '1087');
INSERT INTO `ts_area` VALUES ('1103', '桐城市', '1092');
INSERT INTO `ts_area` VALUES ('1149', '霍山县', '1142');
INSERT INTO `ts_area` VALUES ('1892', '安乡县', '1889');
INSERT INTO `ts_area` VALUES ('1381', '长清区', '1375');
INSERT INTO `ts_area` VALUES ('1686', '息县', '1676');
INSERT INTO `ts_area` VALUES ('1710', '武汉市', '1709');
INSERT INTO `ts_area` VALUES ('1011', '东阳市', '1003');
INSERT INTO `ts_area` VALUES ('1704', '确山县', '1698');
INSERT INTO `ts_area` VALUES ('1666', '商丘市', '1532');
INSERT INTO `ts_area` VALUES ('1790', '松滋市', '1782');
INSERT INTO `ts_area` VALUES ('1910', '沅江市', '1904');
INSERT INTO `ts_area` VALUES ('1992', '宝安区', '1988');
INSERT INTO `ts_area` VALUES ('1837', '株洲市', '1826');
INSERT INTO `ts_area` VALUES ('1709', '湖北', '0');
INSERT INTO `ts_area` VALUES ('1104', '黄山市', '1045');
INSERT INTO `ts_area` VALUES ('1123', '颍东区', '1121');
INSERT INTO `ts_area` VALUES ('1496', '宁津县', '1493');
INSERT INTO `ts_area` VALUES ('1445', '高密市', '1434');
INSERT INTO `ts_area` VALUES ('1824', '天门市', '1821');
INSERT INTO `ts_area` VALUES ('1263', '江西', '0');
INSERT INTO `ts_area` VALUES ('1614', '解放区', '1613');
INSERT INTO `ts_area` VALUES ('1789', '洪湖市', '1782');
INSERT INTO `ts_area` VALUES ('1049', '蜀山区', '1046');
INSERT INTO `ts_area` VALUES ('1943', '新晃侗族自治县', '1935');
INSERT INTO `ts_area` VALUES ('1346', '丰城市', '1338');
INSERT INTO `ts_area` VALUES ('1088', '铜官山区', '1087');
INSERT INTO `ts_area` VALUES ('1048', '庐阳区', '1046');
INSERT INTO `ts_area` VALUES ('1199', '明溪县', '1196');
INSERT INTO `ts_area` VALUES ('1476', '莒县', '1472');
INSERT INTO `ts_area` VALUES ('1801', '武穴市', '1791');
INSERT INTO `ts_area` VALUES ('1176', '连江县', '1169');
INSERT INTO `ts_area` VALUES ('1189', '翔安区', '1183');
INSERT INTO `ts_area` VALUES ('1549', '鼓楼区', '1546');
INSERT INTO `ts_area` VALUES ('1860', '衡南县', '1853');
INSERT INTO `ts_area` VALUES ('1683', '固始县', '1676');
INSERT INTO `ts_area` VALUES ('1852', '韶山市', '1847');
INSERT INTO `ts_area` VALUES ('1419', '利津县', '1415');
INSERT INTO `ts_area` VALUES ('1057', '鸠江区', '1054');
INSERT INTO `ts_area` VALUES ('1968', '天河区', '1964');
INSERT INTO `ts_area` VALUES ('1439', '临朐县', '1434');
INSERT INTO `ts_area` VALUES ('1434', '潍坊市', '1374');
INSERT INTO `ts_area` VALUES ('1745', '夷陵区', '1740');
INSERT INTO `ts_area` VALUES ('1647', '渑池县', '1645');
INSERT INTO `ts_area` VALUES ('1147', '舒城县', '1142');
INSERT INTO `ts_area` VALUES ('1681', '新县', '1676');
INSERT INTO `ts_area` VALUES ('1020', '舟山市', '943');
INSERT INTO `ts_area` VALUES ('1890', '武陵区', '1889');
INSERT INTO `ts_area` VALUES ('1332', '泰和县', '1324');
INSERT INTO `ts_area` VALUES ('1244', '建阳市', '1234');
INSERT INTO `ts_area` VALUES ('1506', '东昌府区', '1505');
INSERT INTO `ts_area` VALUES ('1717', '洪山区', '1710');
INSERT INTO `ts_area` VALUES ('1161', '宣州区', '1160');
INSERT INTO `ts_area` VALUES ('1291', '永修县', '1285');
INSERT INTO `ts_area` VALUES ('1493', '德州市', '1374');
INSERT INTO `ts_area` VALUES ('1734', '郧县', '1731');
INSERT INTO `ts_area` VALUES ('1620', '武陟县', '1613');
INSERT INTO `ts_area` VALUES ('1491', '蒙阴县', '1480');
INSERT INTO `ts_area` VALUES ('1345', '铜鼓县', '1338');
INSERT INTO `ts_area` VALUES ('1308', '信丰县', '1305');
INSERT INTO `ts_area` VALUES ('1407', '沂源县', '1399');
INSERT INTO `ts_area` VALUES ('1947', '洪江市', '1935');
INSERT INTO `ts_area` VALUES ('1207', '建宁县', '1196');
INSERT INTO `ts_area` VALUES ('1536', '管城回族区', '1533');
INSERT INTO `ts_area` VALUES ('1829', '天心区', '1827');
INSERT INTO `ts_area` VALUES ('1499', '齐河县', '1493');
INSERT INTO `ts_area` VALUES ('1894', '澧县', '1889');
INSERT INTO `ts_area` VALUES ('1672', '柘城县', '1666');
INSERT INTO `ts_area` VALUES ('1779', '应城市', '1774');
INSERT INTO `ts_area` VALUES ('1545', '登封市', '1533');
INSERT INTO `ts_area` VALUES ('1063', '龙子湖区', '1062');
INSERT INTO `ts_area` VALUES ('1325', '吉州区', '1324');
INSERT INTO `ts_area` VALUES ('1746', '远安县', '1740');
INSERT INTO `ts_area` VALUES ('1302', '月湖区', '1301');
INSERT INTO `ts_area` VALUES ('1828', '芙蓉区', '1827');
INSERT INTO `ts_area` VALUES ('1215', '安溪县', '1209');
INSERT INTO `ts_area` VALUES ('1708', '新蔡县', '1698');
INSERT INTO `ts_area` VALUES ('1835', '宁乡县', '1827');
INSERT INTO `ts_area` VALUES ('1340', '奉新县', '1338');
INSERT INTO `ts_area` VALUES ('1136', '巢湖市', '1045');
INSERT INTO `ts_area` VALUES ('1682', '商城县', '1676');
INSERT INTO `ts_area` VALUES ('1736', '竹山县', '1731');
INSERT INTO `ts_area` VALUES ('1397', '胶南市', '1386');
INSERT INTO `ts_area` VALUES ('1006', '武义县', '1003');
INSERT INTO `ts_area` VALUES ('1692', '沈丘县', '1687');
INSERT INTO `ts_area` VALUES ('1007', '浦江县', '1003');
INSERT INTO `ts_area` VALUES ('1119', '天长市', '1112');
INSERT INTO `ts_area` VALUES ('1733', '张湾区', '1731');
INSERT INTO `ts_area` VALUES ('1787', '江陵县', '1782');
INSERT INTO `ts_area` VALUES ('1592', '内黄县', '1584');
INSERT INTO `ts_area` VALUES ('1080', '雨山区', '1077');
INSERT INTO `ts_area` VALUES ('1294', '都昌县', '1285');
INSERT INTO `ts_area` VALUES ('1718', '东西湖区', '1710');
INSERT INTO `ts_area` VALUES ('1168', '福建', '0');
INSERT INTO `ts_area` VALUES ('1833', '长沙县', '1827');
INSERT INTO `ts_area` VALUES ('1690', '西华县', '1687');
INSERT INTO `ts_area` VALUES ('1738', '房县', '1731');
INSERT INTO `ts_area` VALUES ('1964', '广州市', '1963');
INSERT INTO `ts_area` VALUES ('1539', '惠济区', '1533');
INSERT INTO `ts_area` VALUES ('1312', '安远县', '1305');
INSERT INTO `ts_area` VALUES ('1753', '枝江市', '1740');
INSERT INTO `ts_area` VALUES ('1377', '市中区', '1375');
INSERT INTO `ts_area` VALUES ('1472', '日照市', '1374');
INSERT INTO `ts_area` VALUES ('1619', '博爱县', '1613');
INSERT INTO `ts_area` VALUES ('1392', '李沧区', '1386');
INSERT INTO `ts_area` VALUES ('1102', '岳西县', '1092');
INSERT INTO `ts_area` VALUES ('1316', '宁都县', '1305');
INSERT INTO `ts_area` VALUES ('1836', '浏阳市', '1827');
INSERT INTO `ts_area` VALUES ('1588', '龙安区', '1584');
INSERT INTO `ts_area` VALUES ('1221', '南安市', '1209');
INSERT INTO `ts_area` VALUES ('1602', '卫滨区', '1600');
INSERT INTO `ts_area` VALUES ('1256', '古田县', '1253');
INSERT INTO `ts_area` VALUES ('1220', '晋江市', '1209');
INSERT INTO `ts_area` VALUES ('1825', '神农架林区', '1821');
INSERT INTO `ts_area` VALUES ('1226', '漳浦县', '1222');
INSERT INTO `ts_area` VALUES ('1684', '潢川县', '1676');
INSERT INTO `ts_area` VALUES ('1120', '明光市', '1112');
INSERT INTO `ts_area` VALUES ('1280', '安源区', '1279');
INSERT INTO `ts_area` VALUES ('1003', '金华市', '943');
INSERT INTO `ts_area` VALUES ('1616', '马村区', '1613');
INSERT INTO `ts_area` VALUES ('1492', '临沭县', '1480');
INSERT INTO `ts_area` VALUES ('1270', '南昌县', '1264');
INSERT INTO `ts_area` VALUES ('1180', '平潭县', '1169');
INSERT INTO `ts_area` VALUES ('1743', '点军区', '1740');
INSERT INTO `ts_area` VALUES ('2842', '铜川市', '2827');
INSERT INTO `ts_area` VALUES ('2599', '三都水族自治县', '2587');
INSERT INTO `ts_area` VALUES ('2201', '钟山县', '2198');
INSERT INTO `ts_area` VALUES ('2186', '右江区', '2185');
INSERT INTO `ts_area` VALUES ('2044', '德庆县', '2038');
INSERT INTO `ts_area` VALUES ('2047', '惠州市', '1963');
INSERT INTO `ts_area` VALUES ('2558', '望谟县', '2552');
INSERT INTO `ts_area` VALUES ('2802', '嘉黎县', '2800');
INSERT INTO `ts_area` VALUES ('2238', '五指山市', '2237');
INSERT INTO `ts_area` VALUES ('2829', '新城区', '2828');
INSERT INTO `ts_area` VALUES ('2467', '泸定县', '2465');
INSERT INTO `ts_area` VALUES ('2754', '达孜县', '2747');
INSERT INTO `ts_area` VALUES ('2392', '高坪区', '2390');
INSERT INTO `ts_area` VALUES ('2266', '南岸区', '2258');
INSERT INTO `ts_area` VALUES ('2598', '惠水县', '2587');
INSERT INTO `ts_area` VALUES ('2361', '朝天区', '2358');
INSERT INTO `ts_area` VALUES ('2295', '石柱土家族自治县', '2258');
INSERT INTO `ts_area` VALUES ('2435', '荥经县', '2432');
INSERT INTO `ts_area` VALUES ('2298', '彭水苗族土家族自治县', '2258');
INSERT INTO `ts_area` VALUES ('2848', '渭滨区', '2847');
INSERT INTO `ts_area` VALUES ('2187', '田阳县', '2185');
INSERT INTO `ts_area` VALUES ('2246', '澄迈县', '2237');
INSERT INTO `ts_area` VALUES ('2220', '金秀瑶族自治县', '2215');
INSERT INTO `ts_area` VALUES ('2357', '江油市', '2348');
INSERT INTO `ts_area` VALUES ('2455', '松潘县', '2451');
INSERT INTO `ts_area` VALUES ('2287', '垫江县', '2258');
INSERT INTO `ts_area` VALUES ('2275', '合川区', '2258');
INSERT INTO `ts_area` VALUES ('2738', '泸水县', '2737');
INSERT INTO `ts_area` VALUES ('2653', '水富县', '2642');
INSERT INTO `ts_area` VALUES ('2744', '德钦县', '2742');
INSERT INTO `ts_area` VALUES ('2321', '自流井区', '2320');
INSERT INTO `ts_area` VALUES ('2527', '务川仡佬族苗族自治县', '2519');
INSERT INTO `ts_area` VALUES ('2786', '萨迦县', '2781');
INSERT INTO `ts_area` VALUES ('2130', '三江侗族自治县', '2120');
INSERT INTO `ts_area` VALUES ('2763', '八宿县', '2756');
INSERT INTO `ts_area` VALUES ('2708', '西畴县', '2705');
INSERT INTO `ts_area` VALUES ('2452', '汶川县', '2451');
INSERT INTO `ts_area` VALUES ('2242', '万宁市', '2237');
INSERT INTO `ts_area` VALUES ('2358', '广元市', '2299');
INSERT INTO `ts_area` VALUES ('2447', '雁江区', '2446');
INSERT INTO `ts_area` VALUES ('2162', '防城港市', '2106');
INSERT INTO `ts_area` VALUES ('2485', '西昌市', '2484');
INSERT INTO `ts_area` VALUES ('2269', '双桥区', '2258');
INSERT INTO `ts_area` VALUES ('2657', '永胜县', '2654');
INSERT INTO `ts_area` VALUES ('2121', '城中区', '2120');
INSERT INTO `ts_area` VALUES ('2846', '宜君县', '2842');
INSERT INTO `ts_area` VALUES ('2415', '筠连县', '2407');
INSERT INTO `ts_area` VALUES ('2247', '临高县', '2237');
INSERT INTO `ts_area` VALUES ('2856', '千阳县', '2847');
INSERT INTO `ts_area` VALUES ('2333', '泸州市', '2299');
INSERT INTO `ts_area` VALUES ('2037', '信宜市', '2031');
INSERT INTO `ts_area` VALUES ('2258', '重庆市', '2257');
INSERT INTO `ts_area` VALUES ('2363', '青川县', '2358');
INSERT INTO `ts_area` VALUES ('2637', '隆阳区', '2636');
INSERT INTO `ts_area` VALUES ('2507', '乌当区', '2503');
INSERT INTO `ts_area` VALUES ('2832', '灞桥区', '2828');
INSERT INTO `ts_area` VALUES ('2740', '贡山独龙族怒族自治县', '2737');
INSERT INTO `ts_area` VALUES ('2470', '雅江县', '2465');
INSERT INTO `ts_area` VALUES ('2083', '连山壮族瑶族自治县', '2079');
INSERT INTO `ts_area` VALUES ('2605', '西山区', '2601');
INSERT INTO `ts_area` VALUES ('2307', '青白江区', '2300');
INSERT INTO `ts_area` VALUES ('2581', '黎平县', '2570');
INSERT INTO `ts_area` VALUES ('2434', '名山县', '2432');
INSERT INTO `ts_area` VALUES ('2995', '金塔县', '2993');
INSERT INTO `ts_area` VALUES ('2150', '万秀区', '2149');
INSERT INTO `ts_area` VALUES ('2335', '纳溪区', '2333');
INSERT INTO `ts_area` VALUES ('2033', '茂港区', '2031');
INSERT INTO `ts_area` VALUES ('2211', '巴马瑶族自治县', '2203');
INSERT INTO `ts_area` VALUES ('2994', '肃州区', '2993');
INSERT INTO `ts_area` VALUES ('2245', '屯昌县', '2237');
INSERT INTO `ts_area` VALUES ('2789', '谢通门县', '2781');
INSERT INTO `ts_area` VALUES ('2550', '松桃苗族自治县', '2541');
INSERT INTO `ts_area` VALUES ('2619', '陆良县', '2616');
INSERT INTO `ts_area` VALUES ('2017', '台山市', '2013');
INSERT INTO `ts_area` VALUES ('2451', '阿坝藏族羌族自治州', '2299');
INSERT INTO `ts_area` VALUES ('2915', '神木县', '2913');
INSERT INTO `ts_area` VALUES ('2312', '郫县', '2300');
INSERT INTO `ts_area` VALUES ('2344', '罗江县', '2341');
INSERT INTO `ts_area` VALUES ('2952', '永登县', '2946');
INSERT INTO `ts_area` VALUES ('2572', '黄平县', '2570');
INSERT INTO `ts_area` VALUES ('2882', '蒲城县', '2875');
INSERT INTO `ts_area` VALUES ('2399', '阆中市', '2390');
INSERT INTO `ts_area` VALUES ('2216', '兴宾区', '2215');
INSERT INTO `ts_area` VALUES ('2144', '龙胜各族自治县', '2131');
INSERT INTO `ts_area` VALUES ('2325', '荣县', '2320');
INSERT INTO `ts_area` VALUES ('2726', '永平县', '2718');
INSERT INTO `ts_area` VALUES ('2500', '美姑县', '2484');
INSERT INTO `ts_area` VALUES ('2728', '洱源县', '2718');
INSERT INTO `ts_area` VALUES ('2707', '砚山县', '2705');
INSERT INTO `ts_area` VALUES ('2927', '汉滨区', '2926');
INSERT INTO `ts_area` VALUES ('2126', '柳城县', '2120');
INSERT INTO `ts_area` VALUES ('2429', '大竹县', '2424');
INSERT INTO `ts_area` VALUES ('2009', '南海区', '2007');
INSERT INTO `ts_area` VALUES ('2351', '三台县', '2348');
INSERT INTO `ts_area` VALUES ('2431', '万源市', '2424');
INSERT INTO `ts_area` VALUES ('2720', '漾濞彝族自治县', '2718');
INSERT INTO `ts_area` VALUES ('2905', '洋县', '2901');
INSERT INTO `ts_area` VALUES ('2388', '马边彝族自治县', '2378');
INSERT INTO `ts_area` VALUES ('2724', '南涧彝族自治县', '2718');
INSERT INTO `ts_area` VALUES ('2566', '织金县', '2561');
INSERT INTO `ts_area` VALUES ('2340', '古蔺县', '2333');
INSERT INTO `ts_area` VALUES ('2666', '镇沅彝族哈尼族拉祜族自治县', '2660');
INSERT INTO `ts_area` VALUES ('2914', '榆阳区', '2913');
INSERT INTO `ts_area` VALUES ('2991', '庄浪县', '2985');
INSERT INTO `ts_area` VALUES ('2020', '恩平市', '2013');
INSERT INTO `ts_area` VALUES ('2178', '玉林市', '2106');
INSERT INTO `ts_area` VALUES ('2188', '田东县', '2185');
INSERT INTO `ts_area` VALUES ('2420', '岳池县', '2418');
INSERT INTO `ts_area` VALUES ('2971', '武山县', '2965');
INSERT INTO `ts_area` VALUES ('2249', '昌江黎族自治县', '2237');
INSERT INTO `ts_area` VALUES ('2208', '东兰县', '2203');
INSERT INTO `ts_area` VALUES ('2285', '城口县', '2258');
INSERT INTO `ts_area` VALUES ('2649', '绥江县', '2642');
INSERT INTO `ts_area` VALUES ('2124', '柳北区', '2120');
INSERT INTO `ts_area` VALUES ('2772', '桑日县', '2768');
INSERT INTO `ts_area` VALUES ('2706', '文山县', '2705');
INSERT INTO `ts_area` VALUES ('2088', '东莞市', '1963');
INSERT INTO `ts_area` VALUES ('2815', '日土县', '2811');
INSERT INTO `ts_area` VALUES ('2450', '简阳市', '2446');
INSERT INTO `ts_area` VALUES ('2816', '革吉县', '2811');
INSERT INTO `ts_area` VALUES ('2075', '江城区', '2074');
INSERT INTO `ts_area` VALUES ('2222', '崇左市', '2106');
INSERT INTO `ts_area` VALUES ('2762', '察雅县', '2756');
INSERT INTO `ts_area` VALUES ('2154', '藤县', '2149');
INSERT INTO `ts_area` VALUES ('2685', '姚安县', '2680');
INSERT INTO `ts_area` VALUES ('2219', '武宣县', '2215');
INSERT INTO `ts_area` VALUES ('2871', '旬邑县', '2860');
INSERT INTO `ts_area` VALUES ('2495', '昭觉县', '2484');
INSERT INTO `ts_area` VALUES ('2567', '纳雍县', '2561');
INSERT INTO `ts_area` VALUES ('2555', '普安县', '2552');
INSERT INTO `ts_area` VALUES ('2268', '万盛区', '2258');
INSERT INTO `ts_area` VALUES ('2184', '北流市', '2178');
INSERT INTO `ts_area` VALUES ('2391', '顺庆区', '2390');
INSERT INTO `ts_area` VALUES ('2213', '大化瑶族自治县', '2203');
INSERT INTO `ts_area` VALUES ('2780', '浪卡子县', '2768');
INSERT INTO `ts_area` VALUES ('2939', '洛南县', '2937');
INSERT INTO `ts_area` VALUES ('2232', '秀英区', '2231');
INSERT INTO `ts_area` VALUES ('2824', '波密县', '2819');
INSERT INTO `ts_area` VALUES ('2436', '汉源县', '2432');
INSERT INTO `ts_area` VALUES ('2736', '陇川县', '2731');
INSERT INTO `ts_area` VALUES ('2896', '富县', '2887');
INSERT INTO `ts_area` VALUES ('2982', '临泽县', '2978');
INSERT INTO `ts_area` VALUES ('2059', '平远县', '2053');
INSERT INTO `ts_area` VALUES ('2693', '开远市', '2691');
INSERT INTO `ts_area` VALUES ('2417', '屏山县', '2407');
INSERT INTO `ts_area` VALUES ('2052', '龙门县', '2047');
INSERT INTO `ts_area` VALUES ('2902', '汉台区', '2901');
INSERT INTO `ts_area` VALUES ('2304', '武侯区', '2300');
INSERT INTO `ts_area` VALUES ('2172', '贵港市', '2106');
INSERT INTO `ts_area` VALUES ('2969', '秦安县', '2965');
INSERT INTO `ts_area` VALUES ('2155', '蒙山县', '2149');
INSERT INTO `ts_area` VALUES ('2681', '楚雄市', '2680');
INSERT INTO `ts_area` VALUES ('2283', '璧山县', '2258');
INSERT INTO `ts_area` VALUES ('2359', '市中区', '2358');
INSERT INTO `ts_area` VALUES ('2043', '封开县', '2038');
INSERT INTO `ts_area` VALUES ('2620', '师宗县', '2616');
INSERT INTO `ts_area` VALUES ('2737', '怒江傈僳族自治州', '2600');
INSERT INTO `ts_area` VALUES ('2205', '南丹县', '2203');
INSERT INTO `ts_area` VALUES ('2589', '福泉市', '2587');
INSERT INTO `ts_area` VALUES ('2385', '夹江县', '2378');
INSERT INTO `ts_area` VALUES ('2389', '峨眉山市', '2378');
INSERT INTO `ts_area` VALUES ('2350', '游仙区', '2348');
INSERT INTO `ts_area` VALUES ('2593', '独山县', '2587');
INSERT INTO `ts_area` VALUES ('2987', '泾川县', '2985');
INSERT INTO `ts_area` VALUES ('2505', '云岩区', '2503');
INSERT INTO `ts_area` VALUES ('2368', '安居区', '2366');
INSERT INTO `ts_area` VALUES ('2859', '太白县', '2847');
INSERT INTO `ts_area` VALUES ('2884', '富平县', '2875');
INSERT INTO `ts_area` VALUES ('2463', '若尔盖县', '2451');
INSERT INTO `ts_area` VALUES ('2705', '文山壮族苗族自治州', '2600');
INSERT INTO `ts_area` VALUES ('2393', '嘉陵区', '2390');
INSERT INTO `ts_area` VALUES ('2868', '永寿县', '2860');
INSERT INTO `ts_area` VALUES ('2679', '沧源佤族自治县', '2671');
INSERT INTO `ts_area` VALUES ('2152', '长洲区', '2149');
INSERT INTO `ts_area` VALUES ('2085', '清新县', '2079');
INSERT INTO `ts_area` VALUES ('2021', '湛江市', '1963');
INSERT INTO `ts_area` VALUES ('2460', '马尔康县', '2451');
INSERT INTO `ts_area` VALUES ('2469', '九龙县', '2465');
INSERT INTO `ts_area` VALUES ('2326', '富顺县', '2320');
INSERT INTO `ts_area` VALUES ('2347', '绵竹市', '2341');
INSERT INTO `ts_area` VALUES ('2019', '鹤山市', '2013');
INSERT INTO `ts_area` VALUES ('2395', '营山县', '2390');
INSERT INTO `ts_area` VALUES ('2224', '扶绥县', '2222');
INSERT INTO `ts_area` VALUES ('2579', '剑河县', '2570');
INSERT INTO `ts_area` VALUES ('2722', '宾川县', '2718');
INSERT INTO `ts_area` VALUES ('2975', '民勤县', '2973');
INSERT INTO `ts_area` VALUES ('2711', '丘北县', '2705');
INSERT INTO `ts_area` VALUES ('2169', '钦北区', '2167');
INSERT INTO `ts_area` VALUES ('2318', '邛崃市', '2300');
INSERT INTO `ts_area` VALUES ('2302', '青羊区', '2300');
INSERT INTO `ts_area` VALUES ('2022', '赤坎区', '2021');
INSERT INTO `ts_area` VALUES ('2602', '五华区', '2601');
INSERT INTO `ts_area` VALUES ('2376', '资中县', '2372');
INSERT INTO `ts_area` VALUES ('2482', '稻城县', '2465');
INSERT INTO `ts_area` VALUES ('2597', '龙里县', '2587');
INSERT INTO `ts_area` VALUES ('2767', '边坝县', '2756');
INSERT INTO `ts_area` VALUES ('2544', '玉屏侗族自治县', '2541');
INSERT INTO `ts_area` VALUES ('2559', '册亨县', '2552');
INSERT INTO `ts_area` VALUES ('2926', '安康市', '2827');
INSERT INTO `ts_area` VALUES ('2135', '七星区', '2131');
INSERT INTO `ts_area` VALUES ('2082', '阳山县', '2079');
INSERT INTO `ts_area` VALUES ('2756', '昌都地区', '2746');
INSERT INTO `ts_area` VALUES ('2342', '旌阳区', '2341');
INSERT INTO `ts_area` VALUES ('2988', '灵台县', '2985');
INSERT INTO `ts_area` VALUES ('2716', '勐海县', '2714');
INSERT INTO `ts_area` VALUES ('2439', '芦山县', '2432');
INSERT INTO `ts_area` VALUES ('2961', '平川区', '2959');
INSERT INTO `ts_area` VALUES ('2209', '罗城仫佬族自治县', '2203');
INSERT INTO `ts_area` VALUES ('2596', '长顺县', '2587');
INSERT INTO `ts_area` VALUES ('2108', '兴宁区', '2107');
INSERT INTO `ts_area` VALUES ('2207', '凤山县', '2203');
INSERT INTO `ts_area` VALUES ('2364', '剑阁县', '2358');
INSERT INTO `ts_area` VALUES ('2281', '大足县', '2258');
INSERT INTO `ts_area` VALUES ('2942', '山阳县', '2937');
INSERT INTO `ts_area` VALUES ('2465', '甘孜藏族自治州', '2299');
INSERT INTO `ts_area` VALUES ('2410', '南溪县', '2407');
INSERT INTO `ts_area` VALUES ('2810', '尼玛县', '2800');
INSERT INTO `ts_area` VALUES ('2228', '天等县', '2222');
INSERT INTO `ts_area` VALUES ('2528', '凤冈县', '2519');
INSERT INTO `ts_area` VALUES ('2425', '通川区', '2424');
INSERT INTO `ts_area` VALUES ('2464', '红原县', '2451');
INSERT INTO `ts_area` VALUES ('2098', '惠来县', '2094');
INSERT INTO `ts_area` VALUES ('2139', '灵川县', '2131');
INSERT INTO `ts_area` VALUES ('2937', '商洛市', '2827');
INSERT INTO `ts_area` VALUES ('2084', '连南瑶族自治县', '2079');
INSERT INTO `ts_area` VALUES ('2893', '志丹县', '2887');
INSERT INTO `ts_area` VALUES ('2203', '河池市', '2106');
INSERT INTO `ts_area` VALUES ('2061', '兴宁市', '2053');
INSERT INTO `ts_area` VALUES ('2288', '武隆县', '2258');
INSERT INTO `ts_area` VALUES ('2104', '云安县', '2100');
INSERT INTO `ts_area` VALUES ('2146', '平乐县', '2131');
INSERT INTO `ts_area` VALUES ('2912', '佛坪县', '2901');
INSERT INTO `ts_area` VALUES ('2936', '白河县', '2926');
INSERT INTO `ts_area` VALUES ('2404', '洪雅县', '2400');
INSERT INTO `ts_area` VALUES ('2749', '林周县', '2747');
INSERT INTO `ts_area` VALUES ('2132', '秀峰区', '2131');
INSERT INTO `ts_area` VALUES ('2564', '黔西县', '2561');
INSERT INTO `ts_area` VALUES ('2338', '合江县', '2333');
INSERT INTO `ts_area` VALUES ('2827', '陕西', '0');
INSERT INTO `ts_area` VALUES ('2820', '林芝县', '2819');
INSERT INTO `ts_area` VALUES ('2120', '柳州市', '2106');
INSERT INTO `ts_area` VALUES ('2606', '东川区', '2601');
INSERT INTO `ts_area` VALUES ('2973', '武威市', '2945');
INSERT INTO `ts_area` VALUES ('2327', '攀枝花市', '2299');
INSERT INTO `ts_area` VALUES ('2445', '平昌县', '2441');
INSERT INTO `ts_area` VALUES ('2974', '凉州区', '2973');
INSERT INTO `ts_area` VALUES ('2648', '永善县', '2642');
INSERT INTO `ts_area` VALUES ('2284', '梁平县', '2258');
INSERT INTO `ts_area` VALUES ('2956', '金昌市', '2945');
INSERT INTO `ts_area` VALUES ('2334', '江阳区', '2333');
INSERT INTO `ts_area` VALUES ('2324', '沿滩区', '2320');
INSERT INTO `ts_area` VALUES ('2128', '融安县', '2120');
INSERT INTO `ts_area` VALUES ('2411', '江安县', '2407');
INSERT INTO `ts_area` VALUES ('2661', '思茅区', '2660');
INSERT INTO `ts_area` VALUES ('2933', '平利县', '2926');
INSERT INTO `ts_area` VALUES ('2160', '铁山港区', '2157');
INSERT INTO `ts_area` VALUES ('2996', '瓜州县', '2993');
INSERT INTO `ts_area` VALUES ('2193', '凌云县', '2185');
INSERT INTO `ts_area` VALUES ('2759', '贡觉县', '2756');
INSERT INTO `ts_area` VALUES ('2513', '清镇市', '2503');
INSERT INTO `ts_area` VALUES ('2049', '惠阳区', '2047');
INSERT INTO `ts_area` VALUES ('2636', '保山市', '2600');
INSERT INTO `ts_area` VALUES ('2910', '镇巴县', '2901');
INSERT INTO `ts_area` VALUES ('2248', '白沙黎族自治县', '2237');
INSERT INTO `ts_area` VALUES ('2156', '岑溪市', '2149');
INSERT INTO `ts_area` VALUES ('2784', '江孜县', '2781');
INSERT INTO `ts_area` VALUES ('2966', '秦州区', '2965');
INSERT INTO `ts_area` VALUES ('2855', '陇县', '2847');
INSERT INTO `ts_area` VALUES ('2214', '宜州市', '2203');
INSERT INTO `ts_area` VALUES ('2611', '石林彝族自治县', '2601');
INSERT INTO `ts_area` VALUES ('2852', '岐山县', '2847');
INSERT INTO `ts_area` VALUES ('2723', '弥渡县', '2718');
INSERT INTO `ts_area` VALUES ('2301', '锦江区', '2300');
INSERT INTO `ts_area` VALUES ('2929', '石泉县', '2926');
INSERT INTO `ts_area` VALUES ('2677', '双江拉祜族佤族布朗族傣族自治县', '2671');
INSERT INTO `ts_area` VALUES ('2042', '怀集县', '2038');
INSERT INTO `ts_area` VALUES ('2110', '江南区', '2107');
INSERT INTO `ts_area` VALUES ('2317', '彭州市', '2300');
INSERT INTO `ts_area` VALUES ('2796', '吉隆县', '2781');
INSERT INTO `ts_area` VALUES ('2755', '墨竹工卡县', '2747');
INSERT INTO `ts_area` VALUES ('2931', '紫阳县', '2926');
INSERT INTO `ts_area` VALUES ('2473', '甘孜县', '2465');
INSERT INTO `ts_area` VALUES ('2520', '红花岗区', '2519');
INSERT INTO `ts_area` VALUES ('2360', '元坝区', '2358');
INSERT INTO `ts_area` VALUES ('2119', '横县', '2107');
INSERT INTO `ts_area` VALUES ('2480', '巴塘县', '2465');
INSERT INTO `ts_area` VALUES ('2352', '盐亭县', '2348');
INSERT INTO `ts_area` VALUES ('2888', '宝塔区', '2887');
INSERT INTO `ts_area` VALUES ('2164', '防城区', '2162');
INSERT INTO `ts_area` VALUES ('2379', '市中区', '2378');
INSERT INTO `ts_area` VALUES ('2702', '金平苗族瑶族傣族自治县', '2691');
INSERT INTO `ts_area` VALUES ('2590', '荔波县', '2587');
INSERT INTO `ts_area` VALUES ('2491', '宁南县', '2484');
INSERT INTO `ts_area` VALUES ('2062', '汕尾市', '1963');
INSERT INTO `ts_area` VALUES ('2623', '会泽县', '2616');
INSERT INTO `ts_area` VALUES ('2015', '江海区', '2013');
INSERT INTO `ts_area` VALUES ('2131', '桂林市', '2106');
INSERT INTO `ts_area` VALUES ('2920', '绥德县', '2913');
INSERT INTO `ts_area` VALUES ('2212', '都安瑶族自治县', '2203');
INSERT INTO `ts_area` VALUES ('2831', '莲湖区', '2828');
INSERT INTO `ts_area` VALUES ('2173', '港北区', '2172');
INSERT INTO `ts_area` VALUES ('2461', '壤塘县', '2451');
INSERT INTO `ts_area` VALUES ('2865', '泾阳县', '2860');
INSERT INTO `ts_area` VALUES ('2618', '马龙县', '2616');
INSERT INTO `ts_area` VALUES ('2277', '南川区', '2258');
INSERT INTO `ts_area` VALUES ('2234', '琼山区', '2231');
INSERT INTO `ts_area` VALUES ('2403', '彭山县', '2400');
INSERT INTO `ts_area` VALUES ('2386', '沐川县', '2378');
INSERT INTO `ts_area` VALUES ('2166', '东兴市', '2162');
INSERT INTO `ts_area` VALUES ('2337', '泸县', '2333');
INSERT INTO `ts_area` VALUES ('2428', '开江县', '2424');
INSERT INTO `ts_area` VALUES ('2422', '邻水县', '2418');
INSERT INTO `ts_area` VALUES ('2309', '温江区', '2300');
INSERT INTO `ts_area` VALUES ('2058', '五华县', '2053');
INSERT INTO `ts_area` VALUES ('2667', '江城哈尼族彝族自治县', '2660');
INSERT INTO `ts_area` VALUES ('2486', '木里藏族自治县', '2484');
INSERT INTO `ts_area` VALUES ('2471', '道孚县', '2465');
INSERT INTO `ts_area` VALUES ('2141', '兴安县', '2131');
INSERT INTO `ts_area` VALUES ('2972', '张家川回族自治县', '2965');
INSERT INTO `ts_area` VALUES ('2957', '金川区', '2956');
INSERT INTO `ts_area` VALUES ('2190', '德保县', '2185');
INSERT INTO `ts_area` VALUES ('2065', '陆河县', '2062');
INSERT INTO `ts_area` VALUES ('2680', '楚雄彝族自治州', '2600');
INSERT INTO `ts_area` VALUES ('2967', '麦积区', '2965');
INSERT INTO `ts_area` VALUES ('2289', '忠县', '2258');
INSERT INTO `ts_area` VALUES ('2367', '船山区', '2366');
INSERT INTO `ts_area` VALUES ('2215', '来宾市', '2106');
INSERT INTO `ts_area` VALUES ('2921', '米脂县', '2913');
INSERT INTO `ts_area` VALUES ('2825', '察隅县', '2819');
INSERT INTO `ts_area` VALUES ('2778', '隆子县', '2768');
INSERT INTO `ts_area` VALUES ('2328', '东区', '2327');
INSERT INTO `ts_area` VALUES ('2170', '灵山县', '2167');
INSERT INTO `ts_area` VALUES ('2797', '聂拉木县', '2781');
INSERT INTO `ts_area` VALUES ('2114', '武鸣县', '2107');
INSERT INTO `ts_area` VALUES ('2106', '广西', '0');
INSERT INTO `ts_area` VALUES ('2769', '乃东县', '2768');
INSERT INTO `ts_area` VALUES ('2244', '定安县', '2237');
INSERT INTO `ts_area` VALUES ('2074', '阳江市', '1963');
INSERT INTO `ts_area` VALUES ('2953', '皋兰县', '2946');
INSERT INTO `ts_area` VALUES ('2853', '扶风县', '2847');
INSERT INTO `ts_area` VALUES ('2941', '商南县', '2937');
INSERT INTO `ts_area` VALUES ('2142', '永福县', '2131');
INSERT INTO `ts_area` VALUES ('2574', '三穗县', '2570');
INSERT INTO `ts_area` VALUES ('2355', '北川羌族自治县', '2348');
INSERT INTO `ts_area` VALUES ('2757', '昌都县', '2756');
INSERT INTO `ts_area` VALUES ('2901', '汉中市', '2827');
INSERT INTO `ts_area` VALUES ('2793', '定结县', '2781');
INSERT INTO `ts_area` VALUES ('2604', '官渡区', '2601');
INSERT INTO `ts_area` VALUES ('2143', '灌阳县', '2131');
INSERT INTO `ts_area` VALUES ('2616', '曲靖市', '2600');
INSERT INTO `ts_area` VALUES ('2656', '玉龙纳西族自治县', '2654');
INSERT INTO `ts_area` VALUES ('2695', '屏边苗族自治县', '2691');
INSERT INTO `ts_area` VALUES ('2523', '桐梓县', '2519');
INSERT INTO `ts_area` VALUES ('2522', '遵义县', '2519');
INSERT INTO `ts_area` VALUES ('2310', '金堂县', '2300');
INSERT INTO `ts_area` VALUES ('2286', '丰都县', '2258');
INSERT INTO `ts_area` VALUES ('2660', '普洱市', '2600');
INSERT INTO `ts_area` VALUES ('2006', '南澳县', '1999');
INSERT INTO `ts_area` VALUES ('2622', '富源县', '2616');
INSERT INTO `ts_area` VALUES ('2886', '华阴市', '2875');
INSERT INTO `ts_area` VALUES ('2809', '巴青县', '2800');
INSERT INTO `ts_area` VALUES ('2631', '华宁县', '2626');
INSERT INTO `ts_area` VALUES ('2764', '左贡县', '2756');
INSERT INTO `ts_area` VALUES ('2346', '什邡市', '2341');
INSERT INTO `ts_area` VALUES ('2696', '建水县', '2691');
INSERT INTO `ts_area` VALUES ('2990', '华亭县', '2985');
INSERT INTO `ts_area` VALUES ('2595', '罗甸县', '2587');
INSERT INTO `ts_area` VALUES ('2798', '萨嘎县', '2781');
INSERT INTO `ts_area` VALUES ('2382', '金口河区', '2378');
INSERT INTO `ts_area` VALUES ('2444', '南江县', '2441');
INSERT INTO `ts_area` VALUES ('2907', '勉县', '2901');
INSERT INTO `ts_area` VALUES ('2869', '彬县', '2860');
INSERT INTO `ts_area` VALUES ('2274', '江津区', '2258');
INSERT INTO `ts_area` VALUES ('2018', '开平市', '2013');
INSERT INTO `ts_area` VALUES ('2607', '呈贡县', '2601');
INSERT INTO `ts_area` VALUES ('2176', '平南县', '2172');
INSERT INTO `ts_area` VALUES ('2456', '九寨沟县', '2451');
INSERT INTO `ts_area` VALUES ('2748', '城关区', '2747');
INSERT INTO `ts_area` VALUES ('2489', '会理县', '2484');
INSERT INTO `ts_area` VALUES ('2111', '西乡塘区', '2107');
INSERT INTO `ts_area` VALUES ('2709', '麻栗坡县', '2705');
INSERT INTO `ts_area` VALUES ('2887', '延安市', '2827');
INSERT INTO `ts_area` VALUES ('2381', '五通桥区', '2378');
INSERT INTO `ts_area` VALUES ('2704', '河口瑶族自治县', '2691');
INSERT INTO `ts_area` VALUES ('2267', '北碚区', '2258');
INSERT INTO `ts_area` VALUES ('2384', '井研县', '2378');
INSERT INTO `ts_area` VALUES ('2556', '晴隆县', '2552');
INSERT INTO `ts_area` VALUES ('2714', '西双版纳傣族自治州', '2600');
INSERT INTO `ts_area` VALUES ('2063', '城区', '2062');
INSERT INTO `ts_area` VALUES ('2406', '青神县', '2400');
INSERT INTO `ts_area` VALUES ('2332', '盐边县', '2327');
INSERT INTO `ts_area` VALUES ('2997', '肃北蒙古族自治县', '2993');
INSERT INTO `ts_area` VALUES ('2712', '广南县', '2705');
INSERT INTO `ts_area` VALUES ('2770', '扎囊县', '2768');
INSERT INTO `ts_area` VALUES ('2430', '渠县', '2424');
INSERT INTO `ts_area` VALUES ('2932', '岚皋县', '2926');
INSERT INTO `ts_area` VALUES ('2719', '大理市', '2718');
INSERT INTO `ts_area` VALUES ('2872', '淳化县', '2860');
INSERT INTO `ts_area` VALUES ('2478', '色达县', '2465');
INSERT INTO `ts_area` VALUES ('2161', '合浦县', '2157');
INSERT INTO `ts_area` VALUES ('2828', '西安市', '2827');
INSERT INTO `ts_area` VALUES ('2092', '潮安县', '2090');
INSERT INTO `ts_area` VALUES ('2204', '金城江区', '2203');
INSERT INTO `ts_area` VALUES ('2535', '西秀区', '2534');
INSERT INTO `ts_area` VALUES ('2179', '玉州区', '2178');
INSERT INTO `ts_area` VALUES ('2541', '铜仁地区', '2502');
INSERT INTO `ts_area` VALUES ('2800', '那曲地区', '2746');
INSERT INTO `ts_area` VALUES ('2345', '广汉市', '2341');
INSERT INTO `ts_area` VALUES ('2962', '靖远县', '2959');
INSERT INTO `ts_area` VALUES ('2906', '西乡县', '2901');
INSERT INTO `ts_area` VALUES ('2498', '越西县', '2484');
INSERT INTO `ts_area` VALUES ('2867', '礼泉县', '2860');
INSERT INTO `ts_area` VALUES ('2472', '炉霍县', '2465');
INSERT INTO `ts_area` VALUES ('2200', '昭平县', '2198');
INSERT INTO `ts_area` VALUES ('2970', '甘谷县', '2965');
INSERT INTO `ts_area` VALUES ('2734', '梁河县', '2731');
INSERT INTO `ts_area` VALUES ('2913', '榆林市', '2827');
INSERT INTO `ts_area` VALUES ('2183', '兴业县', '2178');
INSERT INTO `ts_area` VALUES ('2412', '长宁县', '2407');
INSERT INTO `ts_area` VALUES ('2691', '红河哈尼族彝族自治州', '2600');
INSERT INTO `ts_area` VALUES ('2880', '合阳县', '2875');
INSERT INTO `ts_area` VALUES ('2153', '苍梧县', '2149');
INSERT INTO `ts_area` VALUES ('2673', '凤庆县', '2671');
INSERT INTO `ts_area` VALUES ('2643', '昭阳区', '2642');
INSERT INTO `ts_area` VALUES ('2231', '海口市', '2230');
INSERT INTO `ts_area` VALUES ('2959', '白银市', '2945');
INSERT INTO `ts_area` VALUES ('2652', '威信县', '2642');
INSERT INTO `ts_area` VALUES ('2221', '合山市', '2215');
INSERT INTO `ts_area` VALUES ('2801', '那曲县', '2800');
INSERT INTO `ts_area` VALUES ('2538', '镇宁布依族苗族自治县', '2534');
INSERT INTO `ts_area` VALUES ('2362', '旺苍县', '2358');
INSERT INTO `ts_area` VALUES ('2794', '仲巴县', '2781');
INSERT INTO `ts_area` VALUES ('2448', '安岳县', '2446');
INSERT INTO `ts_area` VALUES ('2459', '黑水县', '2451');
INSERT INTO `ts_area` VALUES ('2585', '麻江县', '2570');
INSERT INTO `ts_area` VALUES ('2151', '蝶山区', '2149');
INSERT INTO `ts_area` VALUES ('2168', '钦南区', '2167');
INSERT INTO `ts_area` VALUES ('2127', '鹿寨县', '2120');
INSERT INTO `ts_area` VALUES ('2409', '宜宾县', '2407');
INSERT INTO `ts_area` VALUES ('2079', '清远市', '1963');
INSERT INTO `ts_area` VALUES ('2115', '隆安县', '2107');
INSERT INTO `ts_area` VALUES ('2878', '潼关县', '2875');
INSERT INTO `ts_area` VALUES ('2515', '钟山区', '2514');
INSERT INTO `ts_area` VALUES ('2493', '布拖县', '2484');
INSERT INTO `ts_area` VALUES ('2371', '大英县', '2366');
INSERT INTO `ts_area` VALUES ('2989', '崇信县', '2985');
INSERT INTO `ts_area` VALUES ('2308', '新都区', '2300');
INSERT INTO `ts_area` VALUES ('2552', '黔西南布依族苗族自治州', '2502');
INSERT INTO `ts_area` VALUES ('2694', '蒙自县', '2691');
INSERT INTO `ts_area` VALUES ('2837', '长安区', '2828');
INSERT INTO `ts_area` VALUES ('2443', '通江县', '2441');
INSERT INTO `ts_area` VALUES ('2069', '紫金县', '2067');
INSERT INTO `ts_area` VALUES ('2315', '新津县', '2300');
INSERT INTO `ts_area` VALUES ('2628', '江川县', '2626');
INSERT INTO `ts_area` VALUES ('2008', '禅城区', '2007');
INSERT INTO `ts_area` VALUES ('2785', '定日县', '2781');
INSERT INTO `ts_area` VALUES ('2583', '从江县', '2570');
INSERT INTO `ts_area` VALUES ('2654', '丽江市', '2600');
INSERT INTO `ts_area` VALUES ('2413', '高县', '2407');
INSERT INTO `ts_area` VALUES ('2532', '赤水市', '2519');
INSERT INTO `ts_area` VALUES ('2858', '凤县', '2847');
INSERT INTO `ts_area` VALUES ('2548', '德江县', '2541');
INSERT INTO `ts_area` VALUES ('2518', '盘县', '2514');
INSERT INTO `ts_area` VALUES ('2253', '琼中黎族苗族自治县', '2237');
INSERT INTO `ts_area` VALUES ('2296', '秀山土家族苗族自治县', '2258');
INSERT INTO `ts_area` VALUES ('2993', '酒泉市', '2945');
INSERT INTO `ts_area` VALUES ('2817', '改则县', '2811');
INSERT INTO `ts_area` VALUES ('2330', '仁和区', '2327');
INSERT INTO `ts_area` VALUES ('2536', '平坝县', '2534');
INSERT INTO `ts_area` VALUES ('2035', '高州市', '2031');
INSERT INTO `ts_area` VALUES ('2533', '仁怀市', '2519');
INSERT INTO `ts_area` VALUES ('2481', '乡城县', '2465');
INSERT INTO `ts_area` VALUES ('2610', '宜良县', '2601');
INSERT INTO `ts_area` VALUES ('2909', '略阳县', '2901');
INSERT INTO `ts_area` VALUES ('2671', '临沧市', '2600');
INSERT INTO `ts_area` VALUES ('2838', '蓝田县', '2828');
INSERT INTO `ts_area` VALUES ('2276', '永川区', '2258');
INSERT INTO `ts_area` VALUES ('2615', '安宁市', '2601');
INSERT INTO `ts_area` VALUES ('2904', '城固县', '2901');
INSERT INTO `ts_area` VALUES ('2908', '宁强县', '2901');
INSERT INTO `ts_area` VALUES ('2999', '玉门市', '2993');
INSERT INTO `ts_area` VALUES ('2625', '宣威市', '2616');
INSERT INTO `ts_area` VALUES ('2196', '西林县', '2185');
INSERT INTO `ts_area` VALUES ('2294', '巫溪县', '2258');
INSERT INTO `ts_area` VALUES ('2223', '江洲区', '2222');
INSERT INTO `ts_area` VALUES ('2510', '开阳县', '2503');
INSERT INTO `ts_area` VALUES ('2543', '江口县', '2541');
INSERT INTO `ts_area` VALUES ('2091', '湘桥区', '2090');
INSERT INTO `ts_area` VALUES ('2742', '迪庆藏族自治州', '2600');
INSERT INTO `ts_area` VALUES ('2958', '永昌县', '2956');
INSERT INTO `ts_area` VALUES ('2378', '乐山市', '2299');
INSERT INTO `ts_area` VALUES ('2540', '紫云苗族布依族自治县', '2534');
INSERT INTO `ts_area` VALUES ('2125', '柳江县', '2120');
INSERT INTO `ts_area` VALUES ('2582', '榕江县', '2570');
INSERT INTO `ts_area` VALUES ('2630', '通海县', '2626');
INSERT INTO `ts_area` VALUES ('2890', '延川县', '2887');
INSERT INTO `ts_area` VALUES ('2064', '海丰县', '2062');
INSERT INTO `ts_area` VALUES ('2387', '峨边彝族自治县', '2378');
INSERT INTO `ts_area` VALUES ('2418', '广安市', '2299');
INSERT INTO `ts_area` VALUES ('2964', '景泰县', '2959');
INSERT INTO `ts_area` VALUES ('2965', '天水市', '2945');
INSERT INTO `ts_area` VALUES ('2265', '九龙坡区', '2258');
INSERT INTO `ts_area` VALUES ('2847', '宝鸡市', '2827');
INSERT INTO `ts_area` VALUES ('2674', '云县', '2671');
INSERT INTO `ts_area` VALUES ('2621', '罗平县', '2616');
INSERT INTO `ts_area` VALUES ('2370', '射洪县', '2366');
INSERT INTO `ts_area` VALUES ('2468', '丹巴县', '2465');
INSERT INTO `ts_area` VALUES ('2225', '宁明县', '2222');
INSERT INTO `ts_area` VALUES ('2545', '石阡县', '2541');
INSERT INTO `ts_area` VALUES ('2664', '景东彝族自治县', '2660');
INSERT INTO `ts_area` VALUES ('2650', '镇雄县', '2642');
INSERT INTO `ts_area` VALUES ('2678', '耿马傣族佤族自治县', '2671');
INSERT INTO `ts_area` VALUES ('2504', '南明区', '2503');
INSERT INTO `ts_area` VALUES ('2841', '高陵县', '2828');
INSERT INTO `ts_area` VALUES ('2549', '沿河土家族自治县', '2541');
INSERT INTO `ts_area` VALUES ('2105', '罗定市', '2100');
INSERT INTO `ts_area` VALUES ('2873', '武功县', '2860');
INSERT INTO `ts_area` VALUES ('2013', '江门市', '1963');
INSERT INTO `ts_area` VALUES ('2731', '德宏傣族景颇族自治州', '2600');
INSERT INTO `ts_area` VALUES ('2442', '巴州区', '2441');
INSERT INTO `ts_area` VALUES ('2565', '金沙县', '2561');
INSERT INTO `ts_area` VALUES ('2592', '瓮安县', '2587');
INSERT INTO `ts_area` VALUES ('2578', '锦屏县', '2570');
INSERT INTO `ts_area` VALUES ('2134', '象山区', '2131');
INSERT INTO `ts_area` VALUES ('2979', '甘州区', '2978');
INSERT INTO `ts_area` VALUES ('2508', '白云区', '2503');
INSERT INTO `ts_area` VALUES ('2014', '蓬江区', '2013');
INSERT INTO `ts_area` VALUES ('2329', '西区', '2327');
INSERT INTO `ts_area` VALUES ('2408', '翠屏区', '2407');
INSERT INTO `ts_area` VALUES ('2833', '未央区', '2828');
INSERT INTO `ts_area` VALUES ('2850', '陈仓区', '2847');
INSERT INTO `ts_area` VALUES ('2733', '潞西市', '2731');
INSERT INTO `ts_area` VALUES ('2466', '康定县', '2465');
INSERT INTO `ts_area` VALUES ('2426', '达县', '2424');
INSERT INTO `ts_area` VALUES ('2320', '自贡市', '2299');
INSERT INTO `ts_area` VALUES ('2343', '中江县', '2341');
INSERT INTO `ts_area` VALUES ('2895', '甘泉县', '2887');
INSERT INTO `ts_area` VALUES ('2788', '昂仁县', '2781');
INSERT INTO `ts_area` VALUES ('2571', '凯里市', '2570');
INSERT INTO `ts_area` VALUES ('2727', '云龙县', '2718');
INSERT INTO `ts_area` VALUES ('2349', '涪城区', '2348');
INSERT INTO `ts_area` VALUES ('2521', '汇川区', '2519');
INSERT INTO `ts_area` VALUES ('2760', '类乌齐县', '2756');
INSERT INTO `ts_area` VALUES ('2743', '香格里拉县', '2742');
INSERT INTO `ts_area` VALUES ('2864', '三原县', '2860');
INSERT INTO `ts_area` VALUES ('2027', '徐闻县', '2021');
INSERT INTO `ts_area` VALUES ('2745', '维西傈僳族自治县', '2742');
INSERT INTO `ts_area` VALUES ('2844', '印台区', '2842');
INSERT INTO `ts_area` VALUES ('2446', '资阳市', '2299');
INSERT INTO `ts_area` VALUES ('2761', '丁青县', '2756');
INSERT INTO `ts_area` VALUES ('2885', '韩城市', '2875');
INSERT INTO `ts_area` VALUES ('2806', '申扎县', '2800');
INSERT INTO `ts_area` VALUES ('2374', '东兴区', '2372');
INSERT INTO `ts_area` VALUES ('2843', '王益区', '2842');
INSERT INTO `ts_area` VALUES ('2774', '曲松县', '2768');
INSERT INTO `ts_area` VALUES ('2235', '美兰区', '2231');
INSERT INTO `ts_area` VALUES ('2292', '奉节县', '2258');
INSERT INTO `ts_area` VALUES ('2419', '广安区', '2418');
INSERT INTO `ts_area` VALUES ('2023', '霞山区', '2021');
INSERT INTO `ts_area` VALUES ('2542', '铜仁市', '2541');
INSERT INTO `ts_area` VALUES ('3000', '敦煌市', '2993');
INSERT INTO `ts_area` VALUES ('2938', '商州区', '2937');
INSERT INTO `ts_area` VALUES ('2260', '涪陵区', '2258');
INSERT INTO `ts_area` VALUES ('2502', '贵州', '0');
INSERT INTO `ts_area` VALUES ('2874', '兴平市', '2860');
INSERT INTO `ts_area` VALUES ('2377', '隆昌县', '2372');
INSERT INTO `ts_area` VALUES ('2646', '盐津县', '2642');
INSERT INTO `ts_area` VALUES ('2100', '云浮市', '1963');
INSERT INTO `ts_area` VALUES ('2055', '梅县', '2053');
INSERT INTO `ts_area` VALUES ('2663', '墨江哈尼族自治县', '2660');
INSERT INTO `ts_area` VALUES ('2181', '陆川县', '2178');
INSERT INTO `ts_area` VALUES ('2725', '巍山彝族回族自治县', '2718');
INSERT INTO `ts_area` VALUES ('2721', '祥云县', '2718');
INSERT INTO `ts_area` VALUES ('2339', '叙永县', '2333');
INSERT INTO `ts_area` VALUES ('2039', '端州区', '2038');
INSERT INTO `ts_area` VALUES ('2398', '西充县', '2390');
INSERT INTO `ts_area` VALUES ('2499', '甘洛县', '2484');
INSERT INTO `ts_area` VALUES ('2675', '永德县', '2671');
INSERT INTO `ts_area` VALUES ('2457', '金川县', '2451');
INSERT INTO `ts_area` VALUES ('2494', '金阳县', '2484');
INSERT INTO `ts_area` VALUES ('2241', '文昌市', '2237');
INSERT INTO `ts_area` VALUES ('2031', '茂名市', '1963');
INSERT INTO `ts_area` VALUES ('2676', '镇康县', '2671');
INSERT INTO `ts_area` VALUES ('2073', '东源县', '2067');
INSERT INTO `ts_area` VALUES ('2862', '杨凌区', '2860');
INSERT INTO `ts_area` VALUES ('2686', '大姚县', '2680');
INSERT INTO `ts_area` VALUES ('2270', '渝北区', '2258');
INSERT INTO `ts_area` VALUES ('2076', '阳西县', '2074');
INSERT INTO `ts_area` VALUES ('2453', '理县', '2451');
INSERT INTO `ts_area` VALUES ('2860', '咸阳市', '2827');
INSERT INTO `ts_area` VALUES ('2195', '田林县', '2185');
INSERT INTO `ts_area` VALUES ('2182', '博白县', '2178');
INSERT INTO `ts_area` VALUES ('2710', '马关县', '2705');
INSERT INTO `ts_area` VALUES ('2960', '白银区', '2959');
INSERT INTO `ts_area` VALUES ('2603', '盘龙区', '2601');
INSERT INTO `ts_area` VALUES ('2072', '和平县', '2067');
INSERT INTO `ts_area` VALUES ('2030', '吴川市', '2021');
INSERT INTO `ts_area` VALUES ('2752', '曲水县', '2747');
INSERT INTO `ts_area` VALUES ('2323', '大安区', '2320');
INSERT INTO `ts_area` VALUES ('2175', '覃塘区', '2172');
INSERT INTO `ts_area` VALUES ('2372', '内江市', '2299');
INSERT INTO `ts_area` VALUES ('2948', '七里河区', '2946');
INSERT INTO `ts_area` VALUES ('2239', '琼海市', '2237');
INSERT INTO `ts_area` VALUES ('2421', '武胜县', '2418');
INSERT INTO `ts_area` VALUES ('2159', '银海区', '2157');
INSERT INTO `ts_area` VALUES ('2739', '福贡县', '2737');
INSERT INTO `ts_area` VALUES ('2807', '索县', '2800');
INSERT INTO `ts_area` VALUES ('2647', '大关县', '2642');
INSERT INTO `ts_area` VALUES ('2303', '金牛区', '2300');
INSERT INTO `ts_area` VALUES ('2509', '小河区', '2503');
INSERT INTO `ts_area` VALUES ('2835', '阎良区', '2828');
INSERT INTO `ts_area` VALUES ('2644', '鲁甸县', '2642');
INSERT INTO `ts_area` VALUES ('2123', '柳南区', '2120');
INSERT INTO `ts_area` VALUES ('2639', '腾冲县', '2636');
INSERT INTO `ts_area` VALUES ('2715', '景洪市', '2714');
INSERT INTO `ts_area` VALUES ('2423', '华蓥市', '2418');
INSERT INTO `ts_area` VALUES ('2165', '上思县', '2162');
INSERT INTO `ts_area` VALUES ('2662', '宁洱哈尼族彝族自治县', '2660');
INSERT INTO `ts_area` VALUES ('2584', '雷山县', '2570');
INSERT INTO `ts_area` VALUES ('2563', '大方县', '2561');
INSERT INTO `ts_area` VALUES ('2163', '港口区', '2162');
INSERT INTO `ts_area` VALUES ('2034', '电白县', '2031');
INSERT INTO `ts_area` VALUES ('2877', '华县', '2875');
INSERT INTO `ts_area` VALUES ('2396', '蓬安县', '2390');
INSERT INTO `ts_area` VALUES ('2897', '洛川县', '2887');
INSERT INTO `ts_area` VALUES ('2580', '台江县', '2570');
INSERT INTO `ts_area` VALUES ('2940', '丹凤县', '2937');
INSERT INTO `ts_area` VALUES ('2834', '雁塔区', '2828');
INSERT INTO `ts_area` VALUES ('2336', '龙马潭区', '2333');
INSERT INTO `ts_area` VALUES ('2433', '雨城区', '2432');
INSERT INTO `ts_area` VALUES ('2577', '天柱县', '2570');
INSERT INTO `ts_area` VALUES ('2799', '岗巴县', '2781');
INSERT INTO `ts_area` VALUES ('2570', '黔东南苗族侗族自治州', '2502');
INSERT INTO `ts_area` VALUES ('2366', '遂宁市', '2299');
INSERT INTO `ts_area` VALUES ('2526', '道真仡佬族苗族自治县', '2519');
INSERT INTO `ts_area` VALUES ('2427', '宣汉县', '2424');
INSERT INTO `ts_area` VALUES ('2641', '昌宁县', '2636');
INSERT INTO `ts_area` VALUES ('2202', '富川瑶族自治县', '2198');
INSERT INTO `ts_area` VALUES ('2976', '古浪县', '2973');
INSERT INTO `ts_area` VALUES ('2483', '得荣县', '2465');
INSERT INTO `ts_area` VALUES ('2028', '廉江市', '2021');
INSERT INTO `ts_area` VALUES ('2573', '施秉县', '2570');
INSERT INTO `ts_area` VALUES ('2099', '普宁市', '2094');
INSERT INTO `ts_area` VALUES ('2741', '兰坪白族普米族自治县', '2737');
INSERT INTO `ts_area` VALUES ('2101', '云城区', '2100');
INSERT INTO `ts_area` VALUES ('2889', '延长县', '2887');
INSERT INTO `ts_area` VALUES ('2804', '聂荣县', '2800');
INSERT INTO `ts_area` VALUES ('2898', '宜川县', '2887');
INSERT INTO `ts_area` VALUES ('2612', '嵩明县', '2601');
INSERT INTO `ts_area` VALUES ('2041', '广宁县', '2038');
INSERT INTO `ts_area` VALUES ('2775', '措美县', '2768');
INSERT INTO `ts_area` VALUES ('2795', '亚东县', '2781');
INSERT INTO `ts_area` VALUES ('2830', '碑林区', '2828');
INSERT INTO `ts_area` VALUES ('2627', '红塔区', '2626');
INSERT INTO `ts_area` VALUES ('2217', '忻城县', '2215');
INSERT INTO `ts_area` VALUES ('2614', '寻甸回族彝族自治县', '2601');
INSERT INTO `ts_area` VALUES ('2608', '晋宁县', '2601');
INSERT INTO `ts_area` VALUES ('2669', '澜沧拉祜族自治县', '2660');
INSERT INTO `ts_area` VALUES ('2779', '错那县', '2768');
INSERT INTO `ts_area` VALUES ('2397', '仪陇县', '2390');
INSERT INTO `ts_area` VALUES ('2230', '海南', '0');
INSERT INTO `ts_area` VALUES ('2383', '犍为县', '2378');
INSERT INTO `ts_area` VALUES ('2899', '黄龙县', '2887');
INSERT INTO `ts_area` VALUES ('2369', '蓬溪县', '2366');
INSERT INTO `ts_area` VALUES ('2870', '长武县', '2860');
INSERT INTO `ts_area` VALUES ('2917', '横山县', '2913');
INSERT INTO `ts_area` VALUES ('2751', '尼木县', '2747');
INSERT INTO `ts_area` VALUES ('2894', '吴起县', '2887');
INSERT INTO `ts_area` VALUES ('2950', '安宁区', '2946');
INSERT INTO `ts_area` VALUES ('2273', '长寿区', '2258');
INSERT INTO `ts_area` VALUES ('2978', '张掖市', '2945');
INSERT INTO `ts_area` VALUES ('2316', '都江堰市', '2300');
INSERT INTO `ts_area` VALUES ('2237', '省直辖县级行政单位', '2230');
INSERT INTO `ts_area` VALUES ('2354', '梓潼县', '2348');
INSERT INTO `ts_area` VALUES ('2624', '沾益县', '2616');
INSERT INTO `ts_area` VALUES ('2375', '威远县', '2372');
INSERT INTO `ts_area` VALUES ('2145', '资源县', '2131');
INSERT INTO `ts_area` VALUES ('2818', '措勤县', '2811');
INSERT INTO `ts_area` VALUES ('2441', '巴中市', '2299');
INSERT INTO `ts_area` VALUES ('2903', '南郑县', '2901');
INSERT INTO `ts_area` VALUES ('2814', '噶尔县', '2811');
INSERT INTO `ts_area` VALUES ('2102', '新兴县', '2100');
INSERT INTO `ts_area` VALUES ('2922', '佳县', '2913');
INSERT INTO `ts_area` VALUES ('2701', '红河县', '2691');
INSERT INTO `ts_area` VALUES ('2199', '八步区', '2198');
INSERT INTO `ts_area` VALUES ('2474', '新龙县', '2465');
INSERT INTO `ts_area` VALUES ('2157', '北海市', '2106');
INSERT INTO `ts_area` VALUES ('2821', '工布江达县', '2819');
INSERT INTO `ts_area` VALUES ('2992', '静宁县', '2985');
INSERT INTO `ts_area` VALUES ('2883', '白水县', '2875');
INSERT INTO `ts_area` VALUES ('2587', '黔南布依族苗族自治州', '2502');
INSERT INTO `ts_area` VALUES ('2243', '东方市', '2237');
INSERT INTO `ts_area` VALUES ('2836', '临潼区', '2828');
INSERT INTO `ts_area` VALUES ('2947', '城关区', '2946');
INSERT INTO `ts_area` VALUES ('2462', '阿坝县', '2451');
INSERT INTO `ts_area` VALUES ('2026', '遂溪县', '2021');
INSERT INTO `ts_area` VALUES ('2718', '大理白族自治州', '2600');
INSERT INTO `ts_area` VALUES ('2968', '清水县', '2965');
INSERT INTO `ts_area` VALUES ('2405', '丹棱县', '2400');
INSERT INTO `ts_area` VALUES ('2251', '陵水黎族自治县', '2237');
INSERT INTO `ts_area` VALUES ('2861', '秦都区', '2860');
INSERT INTO `ts_area` VALUES ('2048', '惠城区', '2047');
INSERT INTO `ts_area` VALUES ('2781', '日喀则地区', '2746');
INSERT INTO `ts_area` VALUES ('2093', '饶平县', '2090');
INSERT INTO `ts_area` VALUES ('2811', '阿里地区', '2746');
INSERT INTO `ts_area` VALUES ('2012', '高明区', '2007');
INSERT INTO `ts_area` VALUES ('2525', '正安县', '2519');
INSERT INTO `ts_area` VALUES ('2803', '比如县', '2800');
INSERT INTO `ts_area` VALUES ('2081', '佛冈县', '2079');
INSERT INTO `ts_area` VALUES ('2688', '元谋县', '2680');
INSERT INTO `ts_area` VALUES ('2561', '毕节地区', '2502');
INSERT INTO `ts_area` VALUES ('2600', '云南', '0');
INSERT INTO `ts_area` VALUES ('2380', '沙湾区', '2378');
INSERT INTO `ts_area` VALUES ('2227', '大新县', '2222');
INSERT INTO `ts_area` VALUES ('2753', '堆龙德庆县', '2747');
INSERT INTO `ts_area` VALUES ('2007', '佛山市', '1963');
INSERT INTO `ts_area` VALUES ('2700', '元阳县', '2691');
INSERT INTO `ts_area` VALUES ('2851', '凤翔县', '2847');
INSERT INTO `ts_area` VALUES ('2192', '那坡县', '2185');
INSERT INTO `ts_area` VALUES ('2254', '西沙群岛', '2237');
INSERT INTO `ts_area` VALUES ('2066', '陆丰市', '2062');
INSERT INTO `ts_area` VALUES ('2129', '融水苗族自治县', '2120');
INSERT INTO `ts_area` VALUES ('2863', '渭城区', '2860');
INSERT INTO `ts_area` VALUES ('2054', '梅江区', '2053');
INSERT INTO `ts_area` VALUES ('2638', '施甸县', '2636');
INSERT INTO `ts_area` VALUES ('2823', '墨脱县', '2819');
INSERT INTO `ts_area` VALUES ('2218', '象州县', '2215');
INSERT INTO `ts_area` VALUES ('2594', '平塘县', '2587');
INSERT INTO `ts_area` VALUES ('2233', '龙华区', '2231');
INSERT INTO `ts_area` VALUES ('2692', '个旧市', '2691');
INSERT INTO `ts_area` VALUES ('2845', '耀州区', '2842');
INSERT INTO `ts_area` VALUES ('2557', '贞丰县', '2552');
INSERT INTO `ts_area` VALUES ('2046', '四会市', '2038');
INSERT INTO `ts_area` VALUES ('2935', '旬阳县', '2926');
INSERT INTO `ts_area` VALUES ('2981', '民乐县', '2978');
INSERT INTO `ts_area` VALUES ('2475', '德格县', '2465');
INSERT INTO `ts_area` VALUES ('2672', '临翔区', '2671');
INSERT INTO `ts_area` VALUES ('2632', '易门县', '2626');
INSERT INTO `ts_area` VALUES ('2717', '勐腊县', '2714');
INSERT INTO `ts_area` VALUES ('2519', '遵义市', '2502');
INSERT INTO `ts_area` VALUES ('2259', '万州区', '2258');
INSERT INTO `ts_area` VALUES ('2167', '钦州市', '2106');
INSERT INTO `ts_area` VALUES ('2070', '龙川县', '2067');
INSERT INTO `ts_area` VALUES ('2501', '雷波县', '2484');
INSERT INTO `ts_area` VALUES ('2840', '户县', '2828');
INSERT INTO `ts_area` VALUES ('2291', '云阳县', '2258');
INSERT INTO `ts_area` VALUES ('2682', '双柏县', '2680');
INSERT INTO `ts_area` VALUES ('2980', '肃南裕固族自治县', '2978');
INSERT INTO `ts_area` VALUES ('2642', '昭通市', '2600');
INSERT INTO `ts_area` VALUES ('2586', '丹寨县', '2570');
INSERT INTO `ts_area` VALUES ('2659', '宁蒗彝族自治县', '2654');
INSERT INTO `ts_area` VALUES ('2524', '绥阳县', '2519');
INSERT INTO `ts_area` VALUES ('2783', '南木林县', '2781');
INSERT INTO `ts_area` VALUES ('2005', '澄海区', '1999');
INSERT INTO `ts_area` VALUES ('2279', '潼南县', '2258');
INSERT INTO `ts_area` VALUES ('2668', '孟连傣族拉祜族佤族自治县', '2660');
INSERT INTO `ts_area` VALUES ('2613', '禄劝彝族苗族自治县', '2601');
INSERT INTO `ts_area` VALUES ('2229', '凭祥市', '2222');
INSERT INTO `ts_area` VALUES ('2056', '大埔县', '2053');
INSERT INTO `ts_area` VALUES ('2875', '渭南市', '2827');
INSERT INTO `ts_area` VALUES ('2735', '盈江县', '2731');
INSERT INTO `ts_area` VALUES ('2149', '梧州市', '2106');
INSERT INTO `ts_area` VALUES ('2900', '黄陵县', '2887');
INSERT INTO `ts_area` VALUES ('2297', '酉阳土家族苗族自治县', '2258');
INSERT INTO `ts_area` VALUES ('2698', '弥勒县', '2691');
INSERT INTO `ts_area` VALUES ('2029', '雷州市', '2021');
INSERT INTO `ts_area` VALUES ('2414', '珙县', '2407');
INSERT INTO `ts_area` VALUES ('2078', '阳春市', '2074');
INSERT INTO `ts_area` VALUES ('2503', '贵阳市', '2502');
INSERT INTO `ts_area` VALUES ('2813', '札达县', '2811');
INSERT INTO `ts_area` VALUES ('2854', '眉县', '2847');
INSERT INTO `ts_area` VALUES ('2137', '阳朔县', '2131');
INSERT INTO `ts_area` VALUES ('2096', '揭东县', '2094');
INSERT INTO `ts_area` VALUES ('2534', '安顺市', '2502');
INSERT INTO `ts_area` VALUES ('2808', '班戈县', '2800');
INSERT INTO `ts_area` VALUES ('2747', '拉萨市', '2746');
INSERT INTO `ts_area` VALUES ('2943', '镇安县', '2937');
INSERT INTO `ts_area` VALUES ('2067', '河源市', '1963');
INSERT INTO `ts_area` VALUES ('2984', '山丹县', '2978');
INSERT INTO `ts_area` VALUES ('2560', '安龙县', '2552');
INSERT INTO `ts_area` VALUES ('2609', '富民县', '2601');
INSERT INTO `ts_area` VALUES ('2458', '小金县', '2451');
INSERT INTO `ts_area` VALUES ('2591', '贵定县', '2587');
INSERT INTO `ts_area` VALUES ('2773', '琼结县', '2768');
INSERT INTO `ts_area` VALUES ('2080', '清城区', '2079');
INSERT INTO `ts_area` VALUES ('2057', '丰顺县', '2053');
INSERT INTO `ts_area` VALUES ('2506', '花溪区', '2503');
INSERT INTO `ts_area` VALUES ('2262', '大渡口区', '2258');
INSERT INTO `ts_area` VALUES ('2003', '潮阳区', '1999');
INSERT INTO `ts_area` VALUES ('2670', '西盟佤族自治县', '2660');
INSERT INTO `ts_area` VALUES ('2703', '绿春县', '2691');
INSERT INTO `ts_area` VALUES ('2925', '子洲县', '2913');
INSERT INTO `ts_area` VALUES ('2918', '靖边县', '2913');
INSERT INTO `ts_area` VALUES ('2341', '德阳市', '2299');
INSERT INTO `ts_area` VALUES ('2402', '仁寿县', '2400');
INSERT INTO `ts_area` VALUES ('2353', '安县', '2348');
INSERT INTO `ts_area` VALUES ('2924', '清涧县', '2913');
INSERT INTO `ts_area` VALUES ('2322', '贡井区', '2320');
INSERT INTO `ts_area` VALUES ('2010', '顺德区', '2007');
INSERT INTO `ts_area` VALUES ('2206', '天峨县', '2203');
INSERT INTO `ts_area` VALUES ('2077', '阳东县', '2074');
INSERT INTO `ts_area` VALUES ('2305', '成华区', '2300');
INSERT INTO `ts_area` VALUES ('2437', '石棉县', '2432');
INSERT INTO `ts_area` VALUES ('2792', '康马县', '2781');
INSERT INTO `ts_area` VALUES ('2094', '揭阳市', '1963');
INSERT INTO `ts_area` VALUES ('2107', '南宁市', '2106');
INSERT INTO `ts_area` VALUES ('2771', '贡嘎县', '2768');
INSERT INTO `ts_area` VALUES ('2805', '安多县', '2800');
INSERT INTO `ts_area` VALUES ('2651', '彝良县', '2642');
INSERT INTO `ts_area` VALUES ('2300', '成都市', '2299');
INSERT INTO `ts_area` VALUES ('2634', '新平彝族傣族自治县', '2626');
INSERT INTO `ts_area` VALUES ('2635', '元江哈尼族彝族傣族自治县', '2626');
INSERT INTO `ts_area` VALUES ('2053', '梅州市', '1963');
INSERT INTO `ts_area` VALUES ('2766', '洛隆县', '2756');
INSERT INTO `ts_area` VALUES ('2826', '朗县', '2819');
INSERT INTO `ts_area` VALUES ('2122', '鱼峰区', '2120');
INSERT INTO `ts_area` VALUES ('2264', '沙坪坝区', '2258');
INSERT INTO `ts_area` VALUES ('2812', '普兰县', '2811');
INSERT INTO `ts_area` VALUES ('2252', '保亭黎族苗族自治县', '2237');
INSERT INTO `ts_area` VALUES ('2919', '定边县', '2913');
INSERT INTO `ts_area` VALUES ('2177', '桂平市', '2172');
INSERT INTO `ts_area` VALUES ('2086', '英德市', '2079');
INSERT INTO `ts_area` VALUES ('2655', '古城区', '2654');
INSERT INTO `ts_area` VALUES ('2699', '泸西县', '2691');
INSERT INTO `ts_area` VALUES ('2551', '万山特区', '2541');
INSERT INTO `ts_area` VALUES ('2949', '西固区', '2946');
INSERT INTO `ts_area` VALUES ('2822', '米林县', '2819');
INSERT INTO `ts_area` VALUES ('2250', '乐东黎族自治县', '2237');
INSERT INTO `ts_area` VALUES ('2118', '宾阳县', '2107');
INSERT INTO `ts_area` VALUES ('2319', '崇州市', '2300');
INSERT INTO `ts_area` VALUES ('2109', '青秀区', '2107');
INSERT INTO `ts_area` VALUES ('2732', '瑞丽市', '2731');
INSERT INTO `ts_area` VALUES ('2746', '西藏', '0');
INSERT INTO `ts_area` VALUES ('2194', '乐业县', '2185');
INSERT INTO `ts_area` VALUES ('2539', '关岭布依族苗族自治县', '2534');
INSERT INTO `ts_area` VALUES ('2449', '乐至县', '2446');
INSERT INTO `ts_area` VALUES ('2977', '天祝藏族自治县', '2973');
INSERT INTO `ts_area` VALUES ('2839', '周至县', '2828');
INSERT INTO `ts_area` VALUES ('2626', '玉溪市', '2600');
INSERT INTO `ts_area` VALUES ('2776', '洛扎县', '2768');
INSERT INTO `ts_area` VALUES ('2476', '白玉县', '2465');
INSERT INTO `ts_area` VALUES ('2133', '叠彩区', '2131');
INSERT INTO `ts_area` VALUES ('2892', '安塞县', '2887');
INSERT INTO `ts_area` VALUES ('2089', '中山市', '1963');
INSERT INTO `ts_area` VALUES ('2849', '金台区', '2847');
INSERT INTO `ts_area` VALUES ('2553', '兴义市', '2552');
INSERT INTO `ts_area` VALUES ('2963', '会宁县', '2959');
INSERT INTO `ts_area` VALUES ('2665', '景谷傣族彝族自治县', '2660');
INSERT INTO `ts_area` VALUES ('2306', '龙泉驿区', '2300');
INSERT INTO `ts_area` VALUES ('2916', '府谷县', '2913');
INSERT INTO `ts_area` VALUES ('2629', '澄江县', '2626');
INSERT INTO `ts_area` VALUES ('2530', '余庆县', '2519');
INSERT INTO `ts_area` VALUES ('2090', '潮州市', '1963');
INSERT INTO `ts_area` VALUES ('2040', '鼎湖区', '2038');
INSERT INTO `ts_area` VALUES ('2750', '当雄县', '2747');
INSERT INTO `ts_area` VALUES ('2272', '黔江区', '2258');
INSERT INTO `ts_area` VALUES ('2313', '大邑县', '2300');
INSERT INTO `ts_area` VALUES ('2095', '榕城区', '2094');
INSERT INTO `ts_area` VALUES ('2240', '儋州市', '2237');
INSERT INTO `ts_area` VALUES ('2777', '加查县', '2768');
INSERT INTO `ts_area` VALUES ('2314', '蒲江县', '2300');
INSERT INTO `ts_area` VALUES ('2036', '化州市', '2031');
INSERT INTO `ts_area` VALUES ('2401', '东坡区', '2400');
INSERT INTO `ts_area` VALUES ('2562', '毕节市', '2561');
INSERT INTO `ts_area` VALUES ('2356', '平武县', '2348');
INSERT INTO `ts_area` VALUES ('2045', '高要市', '2038');
INSERT INTO `ts_area` VALUES ('2416', '兴文县', '2407');
INSERT INTO `ts_area` VALUES ('2278', '綦江县', '2258');
INSERT INTO `ts_area` VALUES ('2640', '龙陵县', '2636');
INSERT INTO `ts_area` VALUES ('2790', '白朗县', '2781');
INSERT INTO `ts_area` VALUES ('2687', '永仁县', '2680');
INSERT INTO `ts_area` VALUES ('2986', '崆峒区', '2985');
INSERT INTO `ts_area` VALUES ('2617', '麒麟区', '2616');
INSERT INTO `ts_area` VALUES ('2016', '新会区', '2013');
INSERT INTO `ts_area` VALUES ('2490', '会东县', '2484');
INSERT INTO `ts_area` VALUES ('2197', '隆林各族自治县', '2185');
INSERT INTO `ts_area` VALUES ('2348', '绵阳市', '2299');
INSERT INTO `ts_area` VALUES ('2934', '镇坪县', '2926');
INSERT INTO `ts_area` VALUES ('2002', '濠江区', '1999');
INSERT INTO `ts_area` VALUES ('2568', '威宁彝族回族苗族自治县', '2561');
INSERT INTO `ts_area` VALUES ('2891', '子长县', '2887');
INSERT INTO `ts_area` VALUES ('2050', '博罗县', '2047');
INSERT INTO `ts_area` VALUES ('2051', '惠东县', '2047');
INSERT INTO `ts_area` VALUES ('2293', '巫山县', '2258');
INSERT INTO `ts_area` VALUES ('2180', '容县', '2178');
INSERT INTO `ts_area` VALUES ('2951', '红古区', '2946');
INSERT INTO `ts_area` VALUES ('2946', '兰州市', '2945');
INSERT INTO `ts_area` VALUES ('2944', '柞水县', '2937');
INSERT INTO `ts_area` VALUES ('2407', '宜宾市', '2299');
INSERT INTO `ts_area` VALUES ('2189', '平果县', '2185');
INSERT INTO `ts_area` VALUES ('2683', '牟定县', '2680');
INSERT INTO `ts_area` VALUES ('2496', '喜德县', '2484');
INSERT INTO `ts_area` VALUES ('2517', '水城县', '2514');
INSERT INTO `ts_area` VALUES ('2191', '靖西县', '2185');
INSERT INTO `ts_area` VALUES ('2575', '镇远县', '2570');
INSERT INTO `ts_area` VALUES ('2001', '金平区', '1999');
INSERT INTO `ts_area` VALUES ('2440', '宝兴县', '2432');
INSERT INTO `ts_area` VALUES ('2730', '鹤庆县', '2718');
INSERT INTO `ts_area` VALUES ('2280', '铜梁县', '2258');
INSERT INTO `ts_area` VALUES ('2087', '连州市', '2079');
INSERT INTO `ts_area` VALUES ('2658', '华坪县', '2654');
INSERT INTO `ts_area` VALUES ('2930', '宁陕县', '2926');
INSERT INTO `ts_area` VALUES ('2185', '百色市', '2106');
INSERT INTO `ts_area` VALUES ('2479', '理塘县', '2465');
INSERT INTO `ts_area` VALUES ('2290', '开县', '2258');
INSERT INTO `ts_area` VALUES ('2255', '南沙群岛', '2237');
INSERT INTO `ts_area` VALUES ('2569', '赫章县', '2561');
INSERT INTO `ts_area` VALUES ('2174', '港南区', '2172');
INSERT INTO `ts_area` VALUES ('2881', '澄城县', '2875');
INSERT INTO `ts_area` VALUES ('2158', '海城区', '2157');
INSERT INTO `ts_area` VALUES ('2955', '嘉峪关市', '2945');
INSERT INTO `ts_area` VALUES ('2782', '日喀则市', '2781');
INSERT INTO `ts_area` VALUES ('2765', '芒康县', '2756');
INSERT INTO `ts_area` VALUES ('2390', '南充市', '2299');
INSERT INTO `ts_area` VALUES ('2438', '天全县', '2432');
INSERT INTO `ts_area` VALUES ('2713', '富宁县', '2705');
INSERT INTO `ts_area` VALUES ('2263', '江北区', '2258');
INSERT INTO `ts_area` VALUES ('2488', '德昌县', '2484');
INSERT INTO `ts_area` VALUES ('2531', '习水县', '2519');
INSERT INTO `ts_area` VALUES ('2071', '连平县', '2067');
INSERT INTO `ts_area` VALUES ('2060', '蕉岭县', '2053');
INSERT INTO `ts_area` VALUES ('2516', '六枝特区', '2514');
INSERT INTO `ts_area` VALUES ('2112', '良庆区', '2107');
INSERT INTO `ts_area` VALUES ('2454', '茂县', '2451');
INSERT INTO `ts_area` VALUES ('2256', '中沙群岛的岛礁及其海域', '2237');
INSERT INTO `ts_area` VALUES ('2546', '思南县', '2541');
INSERT INTO `ts_area` VALUES ('2136', '雁山区', '2131');
INSERT INTO `ts_area` VALUES ('2857', '麟游县', '2847');
INSERT INTO `ts_area` VALUES ('2024', '坡头区', '2021');
INSERT INTO `ts_area` VALUES ('2945', '甘肃', '0');
INSERT INTO `ts_area` VALUES ('2514', '六盘水市', '2502');
INSERT INTO `ts_area` VALUES ('2138', '临桂县', '2131');
INSERT INTO `ts_area` VALUES ('2729', '剑川县', '2718');
INSERT INTO `ts_area` VALUES ('2198', '贺州市', '2106');
INSERT INTO `ts_area` VALUES ('2768', '山南地区', '2746');
INSERT INTO `ts_area` VALUES ('2373', '市中区', '2372');
INSERT INTO `ts_area` VALUES ('2282', '荣昌县', '2258');
INSERT INTO `ts_area` VALUES ('2117', '上林县', '2107');
INSERT INTO `ts_area` VALUES ('2791', '仁布县', '2781');
INSERT INTO `ts_area` VALUES ('2210', '环江毛南族自治县', '2203');
INSERT INTO `ts_area` VALUES ('2032', '茂南区', '2031');
INSERT INTO `ts_area` VALUES ('2866', '乾县', '2860');
INSERT INTO `ts_area` VALUES ('2011', '三水区', '2007');
INSERT INTO `ts_area` VALUES ('2257', '重庆市', '0');
INSERT INTO `ts_area` VALUES ('2236', '三亚市', '2230');
INSERT INTO `ts_area` VALUES ('2690', '禄丰县', '2680');
INSERT INTO `ts_area` VALUES ('2492', '普格县', '2484');
INSERT INTO `ts_area` VALUES ('2068', '源城区', '2067');
INSERT INTO `ts_area` VALUES ('2537', '普定县', '2534');
INSERT INTO `ts_area` VALUES ('2004', '潮南区', '1999');
INSERT INTO `ts_area` VALUES ('2576', '岑巩县', '2570');
INSERT INTO `ts_area` VALUES ('2140', '全州县', '2131');
INSERT INTO `ts_area` VALUES ('2365', '苍溪县', '2358');
INSERT INTO `ts_area` VALUES ('2171', '浦北县', '2167');
INSERT INTO `ts_area` VALUES ('2394', '南部县', '2390');
INSERT INTO `ts_area` VALUES ('2512', '修文县', '2503');
INSERT INTO `ts_area` VALUES ('2923', '吴堡县', '2913');
INSERT INTO `ts_area` VALUES ('2477', '石渠县', '2465');
INSERT INTO `ts_area` VALUES ('2038', '肇庆市', '1963');
INSERT INTO `ts_area` VALUES ('2497', '冕宁县', '2484');
INSERT INTO `ts_area` VALUES ('2113', '邕宁区', '2107');
INSERT INTO `ts_area` VALUES ('2697', '石屏县', '2691');
INSERT INTO `ts_area` VALUES ('2529', '湄潭县', '2519');
INSERT INTO `ts_area` VALUES ('2103', '郁南县', '2100');
INSERT INTO `ts_area` VALUES ('2025', '麻章区', '2021');
INSERT INTO `ts_area` VALUES ('2432', '雅安市', '2299');
INSERT INTO `ts_area` VALUES ('2299', '四川', '0');
INSERT INTO `ts_area` VALUES ('2116', '马山县', '2107');
INSERT INTO `ts_area` VALUES ('2588', '都匀市', '2587');
INSERT INTO `ts_area` VALUES ('2487', '盐源县', '2484');
INSERT INTO `ts_area` VALUES ('2271', '巴南区', '2258');
INSERT INTO `ts_area` VALUES ('2424', '达州市', '2299');
INSERT INTO `ts_area` VALUES ('2684', '南华县', '2680');
INSERT INTO `ts_area` VALUES ('2876', '临渭区', '2875');
INSERT INTO `ts_area` VALUES ('2787', '拉孜县', '2781');
INSERT INTO `ts_area` VALUES ('2985', '平凉市', '2945');
INSERT INTO `ts_area` VALUES ('2554', '兴仁县', '2552');
INSERT INTO `ts_area` VALUES ('2911', '留坝县', '2901');
INSERT INTO `ts_area` VALUES ('2547', '印江土家族苗族自治县', '2541');
INSERT INTO `ts_area` VALUES ('2261', '渝中区', '2258');
INSERT INTO `ts_area` VALUES ('2331', '米易县', '2327');
INSERT INTO `ts_area` VALUES ('2311', '双流县', '2300');
INSERT INTO `ts_area` VALUES ('2819', '林芝地区', '2746');
INSERT INTO `ts_area` VALUES ('2148', '恭城瑶族自治县', '2131');
INSERT INTO `ts_area` VALUES ('2511', '息烽县', '2503');
INSERT INTO `ts_area` VALUES ('2983', '高台县', '2978');
INSERT INTO `ts_area` VALUES ('2689', '武定县', '2680');
INSERT INTO `ts_area` VALUES ('2601', '昆明市', '2600');
INSERT INTO `ts_area` VALUES ('2879', '大荔县', '2875');
INSERT INTO `ts_area` VALUES ('2633', '峨山彝族自治县', '2626');
INSERT INTO `ts_area` VALUES ('2954', '榆中县', '2946');
INSERT INTO `ts_area` VALUES ('2097', '揭西县', '2094');
INSERT INTO `ts_area` VALUES ('2484', '凉山彝族自治州', '2299');
INSERT INTO `ts_area` VALUES ('2147', '荔蒲县', '2131');
INSERT INTO `ts_area` VALUES ('2998', '阿克塞哈萨克族自治县', '2993');
INSERT INTO `ts_area` VALUES ('2928', '汉阴县', '2926');
INSERT INTO `ts_area` VALUES ('2645', '巧家县', '2642');
INSERT INTO `ts_area` VALUES ('2226', '龙州县', '2222');
INSERT INTO `ts_area` VALUES ('2758', '江达县', '2756');
INSERT INTO `ts_area` VALUES ('2400', '眉山市', '2299');
INSERT INTO `ts_area` VALUES ('3222', '和布克赛尔蒙古自治县', '3215');
INSERT INTO `ts_area` VALUES ('3110', '吴忠市', '3098');
INSERT INTO `ts_area` VALUES ('3054', '湟源县', '3047');
INSERT INTO `ts_area` VALUES ('3213', '特克斯县', '3204');
INSERT INTO `ts_area` VALUES ('3013', '陇西县', '3010');
INSERT INTO `ts_area` VALUES ('3124', '海原县', '3121');
INSERT INTO `ts_area` VALUES ('3099', '银川市', '3098');
INSERT INTO `ts_area` VALUES ('3169', '温宿县', '3167');
INSERT INTO `ts_area` VALUES ('3092', '海西蒙古族藏族自治州', '3046');
INSERT INTO `ts_area` VALUES ('3022', '宕昌县', '3018');
INSERT INTO `ts_area` VALUES ('3232', '阿拉尔市', '3223');
INSERT INTO `ts_area` VALUES ('3227', '福海县', '3223');
INSERT INTO `ts_area` VALUES ('3045', '夏河县', '3037');
INSERT INTO `ts_area` VALUES ('3039', '临潭县', '3037');
INSERT INTO `ts_area` VALUES ('3063', '门源回族自治县', '3062');
INSERT INTO `ts_area` VALUES ('3055', '海东地区', '3046');
INSERT INTO `ts_area` VALUES ('3167', '阿克苏地区', '3125');
INSERT INTO `ts_area` VALUES ('3152', '木垒哈萨克自治县', '3145');
INSERT INTO `ts_area` VALUES ('3027', '两当县', '3018');
INSERT INTO `ts_area` VALUES ('3009', '镇原县', '3001');
INSERT INTO `ts_area` VALUES ('3154', '博乐市', '3153');
INSERT INTO `ts_area` VALUES ('3059', '互助土族自治县', '3055');
INSERT INTO `ts_area` VALUES ('3018', '陇南市', '2945');
INSERT INTO `ts_area` VALUES ('3217', '乌苏市', '3215');
INSERT INTO `ts_area` VALUES ('3012', '通渭县', '3010');
INSERT INTO `ts_area` VALUES ('3220', '托里县', '3215');
INSERT INTO `ts_area` VALUES ('3111', '利通区', '3110');
INSERT INTO `ts_area` VALUES ('3004', '环县', '3001');
INSERT INTO `ts_area` VALUES ('3040', '卓尼县', '3037');
INSERT INTO `ts_area` VALUES ('3023', '康县', '3018');
INSERT INTO `ts_area` VALUES ('3086', '玉树县', '3085');
INSERT INTO `ts_area` VALUES ('3145', '昌吉回族自治州', '3125');
INSERT INTO `ts_area` VALUES ('3078', '果洛藏族自治州', '3046');
INSERT INTO `ts_area` VALUES ('3070', '泽库县', '3067');
INSERT INTO `ts_area` VALUES ('3087', '杂多县', '3085');
INSERT INTO `ts_area` VALUES ('3141', '吐鲁番市', '3140');
INSERT INTO `ts_area` VALUES ('3031', '康乐县', '3028');
INSERT INTO `ts_area` VALUES ('3005', '华池县', '3001');
INSERT INTO `ts_area` VALUES ('3112', '盐池县', '3110');
INSERT INTO `ts_area` VALUES ('3140', '吐鲁番地区', '3125');
INSERT INTO `ts_area` VALUES ('3189', '叶城县', '3182');
INSERT INTO `ts_area` VALUES ('3068', '同仁县', '3067');
INSERT INTO `ts_area` VALUES ('3126', '乌鲁木齐市', '3125');
INSERT INTO `ts_area` VALUES ('3153', '博尔塔拉蒙古自治州', '3125');
INSERT INTO `ts_area` VALUES ('3096', '都兰县', '3092');
INSERT INTO `ts_area` VALUES ('3046', '青海', '0');
INSERT INTO `ts_area` VALUES ('3185', '疏勒县', '3182');
INSERT INTO `ts_area` VALUES ('3043', '玛曲县', '3037');
INSERT INTO `ts_area` VALUES ('3203', '民丰县', '3195');
INSERT INTO `ts_area` VALUES ('3216', '塔城市', '3215');
INSERT INTO `ts_area` VALUES ('3144', '哈密地区', '3125');
INSERT INTO `ts_area` VALUES ('3067', '黄南藏族自治州', '3046');
INSERT INTO `ts_area` VALUES ('3042', '迭部县', '3037');
INSERT INTO `ts_area` VALUES ('3051', '城北区', '3047');
INSERT INTO `ts_area` VALUES ('3179', '阿克陶县', '3177');
INSERT INTO `ts_area` VALUES ('3130', '水磨沟区', '3126');
INSERT INTO `ts_area` VALUES ('3230', '吉木乃县', '3223');
INSERT INTO `ts_area` VALUES ('3036', '积石山保安族东乡族撒拉族自治县', '3028');
INSERT INTO `ts_area` VALUES ('3142', '鄯善县', '3140');
INSERT INTO `ts_area` VALUES ('3180', '阿合奇县', '3177');
INSERT INTO `ts_area` VALUES ('3007', '正宁县', '3001');
INSERT INTO `ts_area` VALUES ('3093', '格尔木市', '3092');
INSERT INTO `ts_area` VALUES ('3128', '沙依巴克区', '3126');
INSERT INTO `ts_area` VALUES ('3030', '临夏县', '3028');
INSERT INTO `ts_area` VALUES ('3103', '永宁县', '3099');
INSERT INTO `ts_area` VALUES ('3176', '柯坪县', '3167');
INSERT INTO `ts_area` VALUES ('3174', '乌什县', '3167');
INSERT INTO `ts_area` VALUES ('3088', '称多县', '3085');
INSERT INTO `ts_area` VALUES ('3146', '昌吉市', '3145');
INSERT INTO `ts_area` VALUES ('3182', '喀什地区', '3125');
INSERT INTO `ts_area` VALUES ('3025', '礼县', '3018');
INSERT INTO `ts_area` VALUES ('3192', '伽师县', '3182');
INSERT INTO `ts_area` VALUES ('3211', '新源县', '3204');
INSERT INTO `ts_area` VALUES ('3100', '兴庆区', '3099');
INSERT INTO `ts_area` VALUES ('3118', '隆德县', '3115');
INSERT INTO `ts_area` VALUES ('3108', '惠农区', '3106');
INSERT INTO `ts_area` VALUES ('3202', '于田县', '3195');
INSERT INTO `ts_area` VALUES ('3071', '河南蒙古族自治县', '3067');
INSERT INTO `ts_area` VALUES ('3065', '海晏县', '3062');
INSERT INTO `ts_area` VALUES ('3020', '成县', '3018');
INSERT INTO `ts_area` VALUES ('3229', '青河县', '3223');
INSERT INTO `ts_area` VALUES ('3011', '安定区', '3010');
INSERT INTO `ts_area` VALUES ('3081', '甘德县', '3078');
INSERT INTO `ts_area` VALUES ('3228', '哈巴河县', '3223');
INSERT INTO `ts_area` VALUES ('3033', '广河县', '3028');
INSERT INTO `ts_area` VALUES ('3058', '乐都县', '3055');
INSERT INTO `ts_area` VALUES ('3178', '阿图什市', '3177');
INSERT INTO `ts_area` VALUES ('3168', '阿克苏市', '3167');
INSERT INTO `ts_area` VALUES ('3024', '西和县', '3018');
INSERT INTO `ts_area` VALUES ('3074', '同德县', '3072');
INSERT INTO `ts_area` VALUES ('3028', '临夏回族自治州', '2945');
INSERT INTO `ts_area` VALUES ('3101', '西夏区', '3099');
INSERT INTO `ts_area` VALUES ('3191', '岳普湖县', '3182');
INSERT INTO `ts_area` VALUES ('3107', '大武口区', '3106');
INSERT INTO `ts_area` VALUES ('3106', '石嘴山市', '3098');
INSERT INTO `ts_area` VALUES ('3094', '德令哈市', '3092');
INSERT INTO `ts_area` VALUES ('3196', '和田市', '3195');
INSERT INTO `ts_area` VALUES ('3098', '宁夏', '0');
INSERT INTO `ts_area` VALUES ('3133', '米东区', '3126');
INSERT INTO `ts_area` VALUES ('3172', '新和县', '3167');
INSERT INTO `ts_area` VALUES ('3049', '城中区', '3047');
INSERT INTO `ts_area` VALUES ('3234', '五家渠', '3223');
INSERT INTO `ts_area` VALUES ('3135', '克拉玛依市', '3125');
INSERT INTO `ts_area` VALUES ('3139', '乌尔禾区', '3135');
INSERT INTO `ts_area` VALUES ('3207', '伊宁县', '3204');
INSERT INTO `ts_area` VALUES ('3201', '策勒县', '3195');
INSERT INTO `ts_area` VALUES ('3073', '共和县', '3072');
INSERT INTO `ts_area` VALUES ('3016', '漳县', '3010');
INSERT INTO `ts_area` VALUES ('3210', '巩留县', '3204');
INSERT INTO `ts_area` VALUES ('3090', '囊谦县', '3085');
INSERT INTO `ts_area` VALUES ('3177', '克孜勒苏柯尔克孜自治州', '3125');
INSERT INTO `ts_area` VALUES ('3148', '呼图壁县', '3145');
INSERT INTO `ts_area` VALUES ('3226', '富蕴县', '3223');
INSERT INTO `ts_area` VALUES ('3166', '博湖县', '3157');
INSERT INTO `ts_area` VALUES ('3186', '英吉沙县', '3182');
INSERT INTO `ts_area` VALUES ('3084', '玛多县', '3078');
INSERT INTO `ts_area` VALUES ('3091', '曲麻莱县', '3085');
INSERT INTO `ts_area` VALUES ('3083', '久治县', '3078');
INSERT INTO `ts_area` VALUES ('3010', '定西市', '2945');
INSERT INTO `ts_area` VALUES ('3029', '临夏市', '3028');
INSERT INTO `ts_area` VALUES ('3200', '洛浦县', '3195');
INSERT INTO `ts_area` VALUES ('3212', '昭苏县', '3204');
INSERT INTO `ts_area` VALUES ('3156', '温泉县', '3153');
INSERT INTO `ts_area` VALUES ('3019', '武都区', '3018');
INSERT INTO `ts_area` VALUES ('3104', '贺兰县', '3099');
INSERT INTO `ts_area` VALUES ('3138', '白碱滩区', '3135');
INSERT INTO `ts_area` VALUES ('3095', '乌兰县', '3092');
INSERT INTO `ts_area` VALUES ('3041', '舟曲县', '3037');
INSERT INTO `ts_area` VALUES ('3119', '泾源县', '3115');
INSERT INTO `ts_area` VALUES ('3097', '天峻县', '3092');
INSERT INTO `ts_area` VALUES ('3085', '玉树藏族自治州', '3046');
INSERT INTO `ts_area` VALUES ('3035', '东乡族自治县', '3028');
INSERT INTO `ts_area` VALUES ('3221', '裕民县', '3215');
INSERT INTO `ts_area` VALUES ('3122', '沙坡头区', '3121');
INSERT INTO `ts_area` VALUES ('3048', '城东区', '3047');
INSERT INTO `ts_area` VALUES ('3223', '阿勒泰地区', '3125');
INSERT INTO `ts_area` VALUES ('3205', '伊宁市', '3204');
INSERT INTO `ts_area` VALUES ('3131', '头屯河区', '3126');
INSERT INTO `ts_area` VALUES ('3209', '霍城县', '3204');
INSERT INTO `ts_area` VALUES ('3134', '乌鲁木齐县', '3126');
INSERT INTO `ts_area` VALUES ('3114', '青铜峡市', '3110');
INSERT INTO `ts_area` VALUES ('3160', '尉犁县', '3157');
INSERT INTO `ts_area` VALUES ('3170', '库车县', '3167');
INSERT INTO `ts_area` VALUES ('3047', '西宁市', '3046');
INSERT INTO `ts_area` VALUES ('3069', '尖扎县', '3067');
INSERT INTO `ts_area` VALUES ('3072', '海南藏族自治州', '3046');
INSERT INTO `ts_area` VALUES ('3150', '奇台县', '3145');
INSERT INTO `ts_area` VALUES ('3190', '麦盖提县', '3182');
INSERT INTO `ts_area` VALUES ('3194', '塔什库尔干塔吉克自治县', '3182');
INSERT INTO `ts_area` VALUES ('3164', '和静县', '3157');
INSERT INTO `ts_area` VALUES ('3162', '且末县', '3157');
INSERT INTO `ts_area` VALUES ('3123', '中宁县', '3121');
INSERT INTO `ts_area` VALUES ('3121', '中卫市', '3098');
INSERT INTO `ts_area` VALUES ('3021', '文县', '3018');
INSERT INTO `ts_area` VALUES ('3225', '布尔津县', '3223');
INSERT INTO `ts_area` VALUES ('3215', '塔城地区', '3125');
INSERT INTO `ts_area` VALUES ('3080', '班玛县', '3078');
INSERT INTO `ts_area` VALUES ('3082', '达日县', '3078');
INSERT INTO `ts_area` VALUES ('3105', '灵武市', '3099');
INSERT INTO `ts_area` VALUES ('3117', '西吉县', '3115');
INSERT INTO `ts_area` VALUES ('3151', '吉木萨尔县', '3145');
INSERT INTO `ts_area` VALUES ('3165', '和硕县', '3157');
INSERT INTO `ts_area` VALUES ('3187', '泽普县', '3182');
INSERT INTO `ts_area` VALUES ('3143', '托克逊县', '3140');
INSERT INTO `ts_area` VALUES ('3008', '宁县', '3001');
INSERT INTO `ts_area` VALUES ('3188', '莎车县', '3182');
INSERT INTO `ts_area` VALUES ('3050', '城西区', '3047');
INSERT INTO `ts_area` VALUES ('3231', '石河子市', '3223');
INSERT INTO `ts_area` VALUES ('3224', '阿勒泰市', '3223');
INSERT INTO `ts_area` VALUES ('3136', '独山子区', '3135');
INSERT INTO `ts_area` VALUES ('3193', '巴楚县', '3182');
INSERT INTO `ts_area` VALUES ('3062', '海北藏族自治州', '3046');
INSERT INTO `ts_area` VALUES ('3120', '彭阳县', '3115');
INSERT INTO `ts_area` VALUES ('3181', '乌恰县', '3177');
INSERT INTO `ts_area` VALUES ('3159', '轮台县', '3157');
INSERT INTO `ts_area` VALUES ('3001', '庆阳市', '2945');
INSERT INTO `ts_area` VALUES ('3102', '金凤区', '3099');
INSERT INTO `ts_area` VALUES ('3089', '治多县', '3085');
INSERT INTO `ts_area` VALUES ('3056', '平安县', '3055');
INSERT INTO `ts_area` VALUES ('3003', '庆城县', '3001');
INSERT INTO `ts_area` VALUES ('3149', '玛纳斯县', '3145');
INSERT INTO `ts_area` VALUES ('3195', '和田地区', '3125');
INSERT INTO `ts_area` VALUES ('3076', '兴海县', '3072');
INSERT INTO `ts_area` VALUES ('3155', '精河县', '3153');
INSERT INTO `ts_area` VALUES ('3132', '达坂城区', '3126');
INSERT INTO `ts_area` VALUES ('3116', '原州区', '3115');
INSERT INTO `ts_area` VALUES ('3183', '喀什市', '3182');
INSERT INTO `ts_area` VALUES ('3052', '大通回族土族自治县', '3047');
INSERT INTO `ts_area` VALUES ('3218', '额敏县', '3215');
INSERT INTO `ts_area` VALUES ('3163', '焉耆回族自治县', '3157');
INSERT INTO `ts_area` VALUES ('3219', '沙湾县', '3215');
INSERT INTO `ts_area` VALUES ('3060', '化隆回族自治县', '3055');
INSERT INTO `ts_area` VALUES ('3109', '平罗县', '3106');
INSERT INTO `ts_area` VALUES ('3129', '新市区', '3126');
INSERT INTO `ts_area` VALUES ('3037', '甘南藏族自治州', '2945');
INSERT INTO `ts_area` VALUES ('3184', '疏附县', '3182');
INSERT INTO `ts_area` VALUES ('3066', '刚察县', '3062');
INSERT INTO `ts_area` VALUES ('3006', '合水县', '3001');
INSERT INTO `ts_area` VALUES ('3197', '和田县', '3195');
INSERT INTO `ts_area` VALUES ('3075', '贵德县', '3072');
INSERT INTO `ts_area` VALUES ('3198', '墨玉县', '3195');
INSERT INTO `ts_area` VALUES ('3032', '永靖县', '3028');
INSERT INTO `ts_area` VALUES ('3053', '湟中县', '3047');
INSERT INTO `ts_area` VALUES ('3199', '皮山县', '3195');
INSERT INTO `ts_area` VALUES ('3175', '阿瓦提县', '3167');
INSERT INTO `ts_area` VALUES ('3214', '尼勒克县', '3204');
INSERT INTO `ts_area` VALUES ('3002', '西峰区', '3001');
INSERT INTO `ts_area` VALUES ('3061', '循化撒拉族自治县', '3055');
INSERT INTO `ts_area` VALUES ('3115', '固原市', '3098');
INSERT INTO `ts_area` VALUES ('3014', '渭源县', '3010');
INSERT INTO `ts_area` VALUES ('3171', '沙雅县', '3167');
INSERT INTO `ts_area` VALUES ('3161', '若羌县', '3157');
INSERT INTO `ts_area` VALUES ('3208', '察布查尔锡伯自治县', '3204');
INSERT INTO `ts_area` VALUES ('3077', '贵南县', '3072');
INSERT INTO `ts_area` VALUES ('3015', '临洮县', '3010');
INSERT INTO `ts_area` VALUES ('3034', '和政县', '3028');
INSERT INTO `ts_area` VALUES ('3233', '图木舒克市', '3223');
INSERT INTO `ts_area` VALUES ('3158', '库尔勒市', '3157');
INSERT INTO `ts_area` VALUES ('3127', '天山区', '3126');
INSERT INTO `ts_area` VALUES ('3147', '阜康市', '3145');
INSERT INTO `ts_area` VALUES ('3125', '新疆', '0');
INSERT INTO `ts_area` VALUES ('3113', '同心县', '3110');
INSERT INTO `ts_area` VALUES ('3204', '伊犁哈萨克自治州', '3125');
INSERT INTO `ts_area` VALUES ('3026', '徽县', '3018');
INSERT INTO `ts_area` VALUES ('3173', '拜城县', '3167');
INSERT INTO `ts_area` VALUES ('3044', '碌曲县', '3037');
INSERT INTO `ts_area` VALUES ('3157', '巴音郭楞蒙古自治州', '3125');
INSERT INTO `ts_area` VALUES ('3206', '奎屯市', '3204');
INSERT INTO `ts_area` VALUES ('3017', '岷县', '3010');
INSERT INTO `ts_area` VALUES ('3137', '克拉玛依区', '3135');
INSERT INTO `ts_area` VALUES ('3038', '合作市', '3037');
INSERT INTO `ts_area` VALUES ('3064', '祁连县', '3062');
INSERT INTO `ts_area` VALUES ('3057', '民和回族土族自治县', '3055');
INSERT INTO `ts_area` VALUES ('3079', '玛沁县', '3078');

-- ----------------------------
-- Table structure for `ts_attach`
-- ----------------------------
DROP TABLE IF EXISTS `ts_attach`;
CREATE TABLE `ts_attach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attach_type` varchar(50) NOT NULL DEFAULT 'attach',
  `userId` int(11) unsigned DEFAULT NULL,
  `uploadTime` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `extension` varchar(20) DEFAULT NULL,
  `hash` varchar(32) DEFAULT NULL,
  `private` tinyint(1) DEFAULT '0',
  `isDel` tinyint(1) DEFAULT '0',
  `savepath` varchar(255) DEFAULT NULL,
  `savename` varchar(255) DEFAULT NULL,
  `savedomain` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_attach
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_category`
-- ----------------------------
DROP TABLE IF EXISTS `ts_category`;
CREATE TABLE `ts_category` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cleft` int(11) NOT NULL,
  `cright` int(11) NOT NULL,
  `corder` int(5) NOT NULL DEFAULT '0',
  `namespace` varchar(255) NOT NULL DEFAULT 'default',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ts_comment`;
CREATE TABLE `ts_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` char(15) DEFAULT NULL,
  `appid` int(11) DEFAULT NULL,
  `appuid` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `comment` text,
  `cTime` int(12) DEFAULT NULL,
  `toId` int(11) NOT NULL DEFAULT '0',
  `status` int(1) DEFAULT '0',
  `quietly` tinyint(1) NOT NULL DEFAULT '0',
  `to_uid` int(11) NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`id`),
  KEY `type` (`type`) USING BTREE,
  KEY `appid` (`appid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_credit_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ts_credit_setting`;
CREATE TABLE `ts_credit_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'user',
  `info` text NOT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  `experience` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_credit_setting
-- ----------------------------
INSERT INTO `ts_credit_setting` VALUES ('37', 'invite_friend', '邀请好友', 'register', '{action}{sign}了{score}{typecn}', '10', '10');
INSERT INTO `ts_credit_setting` VALUES ('89', 'delete_weibo', '删除微薄', 'weibo', '{action}{sign}了{score}{typecn}', '-2', '-2');
INSERT INTO `ts_credit_setting` VALUES ('90', 'forward_weibo', '转发微薄', 'weibo', '{action}{sign}了{score}{typecn}', '1', '1');
INSERT INTO `ts_credit_setting` VALUES ('45', 'add_vote', '发起投票', 'vote', '{action}{sign}了{score}{typecn}', '20', '20');
INSERT INTO `ts_credit_setting` VALUES ('83', 'share_to_weibo', '分享到微薄', 'weibo', '{action}{sign}了{score}{typecn}', '3', '3');
INSERT INTO `ts_credit_setting` VALUES ('46', 'join_vote', '参与投票', 'vote', '{action}{sign}了{score}{typecn}', '1', '5');
INSERT INTO `ts_credit_setting` VALUES ('86', 'delete_photo', '删除图片', 'photo', '{action}{sign}了{score}{typecn}', '-2', '-2');
INSERT INTO `ts_credit_setting` VALUES ('84', 'delete_blog', '删除博客', 'blog', '{action}{sign}了{score}{typecn}', '-5', '-5');
INSERT INTO `ts_credit_setting` VALUES ('95', 'delete_medal', '丢失勋章', 'medal', '{action}{sign}了{score}{typecn}', '-5', '0');
INSERT INTO `ts_credit_setting` VALUES ('64', 'replied_weibo', '微博被回复', 'weibo', '{action}{sign}了{score}{typecn}', '1', '1');
INSERT INTO `ts_credit_setting` VALUES ('63', 'reply_weibo', '回复微博', 'weibo', '{action}{sign}了{score}{typecn}', '1', '1');
INSERT INTO `ts_credit_setting` VALUES ('82', 'add_photo', '上传图片', 'photo', '{action}{sign}了{score}{typecn}', '2', '2');
INSERT INTO `ts_credit_setting` VALUES ('85', 'delete_album', '删除相册', 'photo', '{action}{sign}了{score}{typecn}', '-10', '-10');
INSERT INTO `ts_credit_setting` VALUES ('42', 'space_visited', '空间被访问', 'user', '{action}{sign}了{score}{typecn}', '1', '1');
INSERT INTO `ts_credit_setting` VALUES ('87', 'delete_vote', '删除投票', 'vote', '{action}{sign}了{score}{typecn}', '-20', '-20');
INSERT INTO `ts_credit_setting` VALUES ('94', 'add_medal', '获得勋章', 'medal', '{action}{sign}了{score}{typecn}', '5', '5');
INSERT INTO `ts_credit_setting` VALUES ('39', 'add_weibo', '发布微薄', 'weibo', '{action}{sign}了{score}{typecn}', '1', '2');
INSERT INTO `ts_credit_setting` VALUES ('61', 'replied_comment', '评论被回复', 'comment', '{action}{sign}了{score}{typecn}', '2', '2');
INSERT INTO `ts_credit_setting` VALUES ('60', 'reply_comment', '回复别人的评论', 'comment', '{action}{sign}了{score}{typecn}', '1', '1');
INSERT INTO `ts_credit_setting` VALUES ('34', 'add_blog', '发表博客', 'blog', '{action}{sign}了{score}{typecn}', '5', '5');
INSERT INTO `ts_credit_setting` VALUES ('81', 'is_commented', '被别人评论', 'comment', '{action}{sign}了{score}{typecn}', '1', '2');
INSERT INTO `ts_credit_setting` VALUES ('93', 'delete_weibo_comment', '删除微博评论', 'weibo', '{action}{sign}了{score}{typecn}', '-1', '-1');
INSERT INTO `ts_credit_setting` VALUES ('88', 'delete_comment', '删除评论', 'comment', '{action}{sign}了{score}{typecn}', '-2', '-2');
INSERT INTO `ts_credit_setting` VALUES ('92', 'init_default', '注册积分', 'register', '{action}{sign}了{score}{typecn}', '200', '0');
INSERT INTO `ts_credit_setting` VALUES ('47', 'joined_vote', '投票被参与', 'vote', '{action}{sign}了{score}{typecn}', '1', '1');
INSERT INTO `ts_credit_setting` VALUES ('40', 'user_login', '用户登录', 'user', '{action}{sign}了{score}{typecn}', '0', '1');
INSERT INTO `ts_credit_setting` VALUES ('59', 'add_comment', '评论别人', 'comment', '{action}{sign}了{score}{typecn}', '1', '1');
INSERT INTO `ts_credit_setting` VALUES ('56', 'add_album', '创建相册', 'photo', '{action}{sign}了{score}{typecn}', '10', '10');
INSERT INTO `ts_credit_setting` VALUES ('91', 'forwarded_weibo', '微博被转发', 'weibo', '{action}{sign}了{score}{typecn}', '1', '1');

-- ----------------------------
-- Table structure for `ts_credit_type`
-- ----------------------------
DROP TABLE IF EXISTS `ts_credit_type`;
CREATE TABLE `ts_credit_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_credit_type
-- ----------------------------
INSERT INTO `ts_credit_type` VALUES ('1', 'score', '积分');
INSERT INTO `ts_credit_type` VALUES ('2', 'experience', '经验');

-- ----------------------------
-- Table structure for `ts_credit_user`
-- ----------------------------
DROP TABLE IF EXISTS `ts_credit_user`;
CREATE TABLE `ts_credit_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ts_credit_user
-- ----------------------------
INSERT INTO `ts_credit_user` VALUES ('1', '2', '206', '7');
INSERT INTO `ts_credit_user` VALUES ('8', '3', '1', '1');
INSERT INTO `ts_credit_user` VALUES ('2', '1', '26', '62');
INSERT INTO `ts_credit_user` VALUES ('9', '9', '201', '2');
INSERT INTO `ts_credit_user` VALUES ('6', '7', '210', '18');
INSERT INTO `ts_credit_user` VALUES ('13', '16', '201', '1');
INSERT INTO `ts_credit_user` VALUES ('10', '11', '200', '0');
INSERT INTO `ts_credit_user` VALUES ('12', '13', '202', '2');
INSERT INTO `ts_credit_user` VALUES ('4', '6', '205', '9');
INSERT INTO `ts_credit_user` VALUES ('5', '4', '3', '3');
INSERT INTO `ts_credit_user` VALUES ('11', '12', '161', '-39');
INSERT INTO `ts_credit_user` VALUES ('3', '5', '1002', '4');
INSERT INTO `ts_credit_user` VALUES ('7', '8', '199', '6');

-- ----------------------------
-- Table structure for `ts_denounce`
-- ----------------------------
DROP TABLE IF EXISTS `ts_denounce`;
CREATE TABLE `ts_denounce` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `from` varchar(255) NOT NULL COMMENT '目前存入各个应用的名称，比如blog,weibo，说明举报的是不同应用下的内容',
  `aid` int(11) NOT NULL COMMENT '记录内容表的主键ID',
  `state` tinyint(4) NOT NULL COMMENT '记录状态，0，默认，表示刚举报；1，表示已删除；2，表示已经通过可以正常显示；',
  `uid` int(11) NOT NULL COMMENT '记录举报人的UID',
  `fuid` int(11) NOT NULL COMMENT '记录被举报人UID',
  `reason` text NOT NULL COMMENT '举报理由',
  `content` varchar(255) NOT NULL,
  `ctime` int(11) NOT NULL COMMENT '记录举报的时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_denounce
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_document`
-- ----------------------------
DROP TABLE IF EXISTS `ts_document`;
CREATE TABLE `ts_document` (
  `document_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text,
  `author_id` int(11) DEFAULT NULL,
  `last_editor_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_on_footer` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否在页脚显示',
  `ctime` int(11) DEFAULT NULL,
  `mtime` int(11) DEFAULT NULL,
  `display_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`document_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_document
-- ----------------------------
INSERT INTO `ts_document` VALUES ('4', '关于粘米', '&lt;p&gt;关于粘米&lt;/p&gt;', '1', '1', '1', '1', '1318781836', '1318781836', '4');
INSERT INTO `ts_document` VALUES ('3', '网站合作', '&lt;p&gt;网站合作&lt;/p&gt;', '1', '1', '1', '1', '1318781618', '1318781618', '3');

-- ----------------------------
-- Table structure for `ts_expression`
-- ----------------------------
DROP TABLE IF EXISTS `ts_expression`;
CREATE TABLE `ts_expression` (
  `expression_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'miniblog',
  `emotion` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`expression_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_expression
-- ----------------------------
INSERT INTO `ts_expression` VALUES ('14', '害羞', 'miniblog', '[害羞]', 'shy.gif');
INSERT INTO `ts_expression` VALUES ('1', '拥抱', 'miniblog', '[拥抱]', 'hug.gif');
INSERT INTO `ts_expression` VALUES ('8', '憨笑', 'miniblog', '[憨笑]', 'biggrin.gif');
INSERT INTO `ts_expression` VALUES ('2', '示爱', 'miniblog', '[示爱]', 'kiss.gif');
INSERT INTO `ts_expression` VALUES ('9', '大哭', 'miniblog', '[大哭]', 'cry.gif');
INSERT INTO `ts_expression` VALUES ('6', '难过', 'miniblog', '[难过]', 'sad.gif');
INSERT INTO `ts_expression` VALUES ('15', '微笑', 'miniblog', '[微笑]', 'smile.gif');
INSERT INTO `ts_expression` VALUES ('16', '偷笑', 'miniblog', '[偷笑]', 'titter.gif');
INSERT INTO `ts_expression` VALUES ('13', '惊讶', 'miniblog', '[惊讶]', 'shocked.gif');
INSERT INTO `ts_expression` VALUES ('17', '调皮', 'miniblog', '[调皮]', 'tongue.gif');
INSERT INTO `ts_expression` VALUES ('10', '惊恐', 'miniblog', '[惊恐]', 'funk.gif');
INSERT INTO `ts_expression` VALUES ('12', '发怒', 'miniblog', '[发怒]', 'huffy.gif');
INSERT INTO `ts_expression` VALUES ('4', '可爱', 'miniblog', '[可爱]', 'loveliness.gif');
INSERT INTO `ts_expression` VALUES ('18', '胜利', 'miniblog', '[胜利]', 'victory.gif');
INSERT INTO `ts_expression` VALUES ('5', '折磨', 'miniblog', '[折磨]', 'mad.gif');
INSERT INTO `ts_expression` VALUES ('11', '握手', 'miniblog', '[握手]', 'handshake.gif');
INSERT INTO `ts_expression` VALUES ('3', '呲牙', 'miniblog', '[呲牙]', 'lol.gif');
INSERT INTO `ts_expression` VALUES ('7', '流汗', 'miniblog', '[流汗]', 'sweat.gif');

-- ----------------------------
-- Table structure for `ts_feed`
-- ----------------------------
DROP TABLE IF EXISTS `ts_feed`;
CREATE TABLE `ts_feed` (
  `feed_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `data` text NOT NULL,
  `ctime` int(11) NOT NULL,
  `type` varchar(120) NOT NULL,
  PRIMARY KEY (`feed_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_feed
-- ----------------------------
INSERT INTO `ts_feed` VALUES ('24', '16', 'a:3:{s:3:\"fid\";i:1;s:3:\"uid\";i:16;s:4:\"type\";s:12:\"weibo_follow\";}', '1320913083', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('14', '9', 'a:3:{s:3:\"fid\";i:1;s:3:\"uid\";i:9;s:4:\"type\";s:12:\"weibo_follow\";}', '1319610737', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('1', '1', 'a:3:{s:3:\"fid\";i:2;s:3:\"uid\";i:1;s:4:\"type\";s:12:\"weibo_follow\";}', '1316233000', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('23', '1', 'a:3:{s:3:\"fid\";i:16;s:3:\"uid\";i:1;s:4:\"type\";s:12:\"weibo_follow\";}', '1320913083', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('8', '1', 'a:3:{s:3:\"fid\";i:7;s:3:\"uid\";i:1;s:4:\"type\";s:12:\"weibo_follow\";}', '1319163255', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('2', '2', 'a:3:{s:3:\"fid\";i:1;s:3:\"uid\";i:2;s:4:\"type\";s:12:\"weibo_follow\";}', '1316233000', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('9', '7', 'a:3:{s:3:\"fid\";i:1;s:3:\"uid\";i:7;s:4:\"type\";s:12:\"weibo_follow\";}', '1319163255', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('6', '6', 'a:3:{s:3:\"fid\";i:1;s:3:\"uid\";i:6;s:4:\"type\";s:12:\"weibo_follow\";}', '1319073184', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('21', '13', 'a:3:{s:3:\"fid\";i:12;s:3:\"uid\";i:13;s:4:\"type\";s:12:\"weibo_follow\";}', '1320891473', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('15', '1', 'a:3:{s:3:\"fid\";i:11;s:3:\"uid\";i:1;s:4:\"type\";s:12:\"weibo_follow\";}', '1319612804', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('16', '11', 'a:3:{s:3:\"fid\";i:1;s:3:\"uid\";i:11;s:4:\"type\";s:12:\"weibo_follow\";}', '1319612804', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('13', '1', 'a:3:{s:3:\"fid\";i:9;s:3:\"uid\";i:1;s:4:\"type\";s:12:\"weibo_follow\";}', '1319610737', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('17', '1', 'a:3:{s:3:\"fid\";i:12;s:3:\"uid\";i:1;s:4:\"type\";s:12:\"weibo_follow\";}', '1320585535', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('10', '1', 'a:3:{s:3:\"fid\";i:8;s:3:\"uid\";i:1;s:4:\"type\";s:12:\"weibo_follow\";}', '1319337425', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('12', '1', 'a:3:{s:3:\"fid\";i:5;s:3:\"uid\";i:1;s:4:\"type\";s:12:\"weibo_follow\";}', '1319384443', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('4', '5', 'a:3:{s:3:\"fid\";i:1;s:3:\"uid\";i:5;s:4:\"type\";s:12:\"weibo_follow\";}', '1319015034', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('20', '13', 'a:3:{s:3:\"fid\";i:1;s:3:\"uid\";i:13;s:4:\"type\";s:12:\"weibo_follow\";}', '1320675506', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('18', '12', 'a:3:{s:3:\"fid\";i:1;s:3:\"uid\";i:12;s:4:\"type\";s:12:\"weibo_follow\";}', '1320585535', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('5', '1', 'a:3:{s:3:\"fid\";i:6;s:3:\"uid\";i:1;s:4:\"type\";s:12:\"weibo_follow\";}', '1319073184', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('11', '8', 'a:3:{s:3:\"fid\";i:1;s:3:\"uid\";i:8;s:4:\"type\";s:12:\"weibo_follow\";}', '1319337425', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('22', '13', 'a:3:{s:3:\"fid\";i:5;s:3:\"uid\";i:13;s:4:\"type\";s:12:\"weibo_follow\";}', '1320891486', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('3', '1', 'a:3:{s:3:\"fid\";i:5;s:3:\"uid\";i:1;s:4:\"type\";s:12:\"weibo_follow\";}', '1319015034', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('7', '6', 'a:3:{s:3:\"fid\";i:4;s:3:\"uid\";i:6;s:4:\"type\";s:12:\"weibo_follow\";}', '1319074524', 'weibo_follow');
INSERT INTO `ts_feed` VALUES ('19', '1', 'a:3:{s:3:\"fid\";i:13;s:3:\"uid\";i:1;s:4:\"type\";s:12:\"weibo_follow\";}', '1320675506', 'weibo_follow');

-- ----------------------------
-- Table structure for `ts_friend`
-- ----------------------------
DROP TABLE IF EXISTS `ts_friend`;
CREATE TABLE `ts_friend` (
  `friend_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `friend_uid` int(11) NOT NULL,
  `friend_uname` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `message` varchar(255) DEFAULT NULL,
  `ctime` int(11) NOT NULL,
  PRIMARY KEY (`friend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_friend
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_friend_group`
-- ----------------------------
DROP TABLE IF EXISTS `ts_friend_group`;
CREATE TABLE `ts_friend_group` (
  `friend_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`friend_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_friend_group
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_friend_group_link`
-- ----------------------------
DROP TABLE IF EXISTS `ts_friend_group_link`;
CREATE TABLE `ts_friend_group_link` (
  `uid` int(11) NOT NULL,
  `friend_uid` int(11) NOT NULL,
  `friend_uname` varchar(255) NOT NULL,
  `friend_group_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_friend_group_link
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_invitecode`
-- ----------------------------
DROP TABLE IF EXISTS `ts_invitecode`;
CREATE TABLE `ts_invitecode` (
  `invite_code_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `code` varchar(120) NOT NULL,
  `is_used` tinyint(1) NOT NULL,
  `type` char(40) NOT NULL,
  `is_received` tinyint(1) NOT NULL,
  PRIMARY KEY (`invite_code_id`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_invitecode
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_invite_record`
-- ----------------------------
DROP TABLE IF EXISTS `ts_invite_record`;
CREATE TABLE `ts_invite_record` (
  `invite_record_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `fid` int(11) unsigned NOT NULL,
  `ctime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`invite_record_id`),
  UNIQUE KEY `uid` (`uid`,`fid`) USING BTREE,
  KEY `ctime` (`ctime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ts_invite_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `ts_jobs`;
CREATE TABLE `ts_jobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `areaid` int(11) DEFAULT '0',
  `typeid` int(11) DEFAULT '0' COMMENT '2为招聘,1为求职',
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `hangye` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `wenhua` varchar(255) DEFAULT NULL,
  `gonglin` int(11) DEFAULT '0',
  `ctime` int(11) DEFAULT NULL,
  `gangwei` varchar(255) DEFAULT NULL,
  `hots` int(11) DEFAULT '0',
  PRIMARY KEY (`job_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_jobs
-- ----------------------------
INSERT INTO `ts_jobs` VALUES ('58', '0', '0', '0', null, null, null, null, null, null, '0', null, null, '0');
INSERT INTO `ts_jobs` VALUES ('55', '1', '0', '2', 'fwefwef', '<p>	wefewf</p>', '电力/水利', '男', '23', '高中', '323', '1319358547', null, '24');
INSERT INTO `ts_jobs` VALUES ('53', '1', '0', '1', 'fwefewf', '<p>	gyugii</p><p>	jhghgo</p><p>	jgi</p><p>	jkhojpok&#091;p&#091;p</p><p>	kjhoiiiiiiiiiiiiiiiiiiiiiiiiiyuiuyiu</p><p>	&nbsp;</p>', '电力/水利', '男', '28', '大专', '23', '1320927926', 'fewfewf', '71');
INSERT INTO `ts_jobs` VALUES ('57', '0', '0', '0', null, null, null, null, null, null, '0', null, null, '1');
INSERT INTO `ts_jobs` VALUES ('56', '0', '0', '0', null, null, null, null, null, null, '0', null, null, '0');

-- ----------------------------
-- Table structure for `ts_login`
-- ----------------------------
DROP TABLE IF EXISTS `ts_login`;
CREATE TABLE `ts_login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type_uid` varchar(255) NOT NULL DEFAULT '',
  `type` char(80) NOT NULL,
  `oauth_token` varchar(150) DEFAULT NULL,
  `oauth_token_secret` varchar(150) DEFAULT NULL,
  `is_sync` tinyint(1) NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_login
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_login_record`
-- ----------------------------
DROP TABLE IF EXISTS `ts_login_record`;
CREATE TABLE `ts_login_record` (
  `login_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`login_record_id`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_login_record
-- ----------------------------
INSERT INTO `ts_login_record` VALUES ('24', '4', '192.168.1.103', '- LAN', '1318775492');
INSERT INTO `ts_login_record` VALUES ('36', '4', '192.168.1.103', '- LAN', '1319013244');
INSERT INTO `ts_login_record` VALUES ('111', '12', '122.234.199.153', '- 浙江省 - 电信', '1321269178');
INSERT INTO `ts_login_record` VALUES ('114', '12', '122.234.199.153', '- 浙江省 - 电信', '1321272296');
INSERT INTO `ts_login_record` VALUES ('105', '12', '115.204.104.55', '- IANA', '1321250109');
INSERT INTO `ts_login_record` VALUES ('100', '12', '115.204.104.55', '- IANA', '1321237103');
INSERT INTO `ts_login_record` VALUES ('14', '1', '127.0.0.1', '- LAN', '1318489615');
INSERT INTO `ts_login_record` VALUES ('123', '13', '115.195.47.84', '- IANA', '1321324328');
INSERT INTO `ts_login_record` VALUES ('96', '12', '115.197.103.104', '- IANA', '1321011873');
INSERT INTO `ts_login_record` VALUES ('121', '12', '122.234.199.153', '- 浙江省 - 电信', '1321275677');
INSERT INTO `ts_login_record` VALUES ('38', '5', '192.168.1.103', '- LAN', '1319013600');
INSERT INTO `ts_login_record` VALUES ('1', '2', '115.192.131.63', '- IANA', '1316232996');
INSERT INTO `ts_login_record` VALUES ('110', '12', '115.204.104.55', '- IANA', '1321255597');
INSERT INTO `ts_login_record` VALUES ('97', '8', '115.205.141.47', '- IANA', '1321169943');
INSERT INTO `ts_login_record` VALUES ('23', '3', '192.168.1.103', '- LAN', '1318775412');
INSERT INTO `ts_login_record` VALUES ('108', '12', '115.204.104.55', '- IANA', '1321251651');
INSERT INTO `ts_login_record` VALUES ('8', '2', '115.192.133.82', '- IANA', '1317950412');
INSERT INTO `ts_login_record` VALUES ('78', '12', '115.195.71.11', '- IANA', '1320759128');
INSERT INTO `ts_login_record` VALUES ('37', '5', '192.168.1.103', '- LAN', '1319013462');
INSERT INTO `ts_login_record` VALUES ('122', '12', '115.194.220.171', '- IANA', '1321318544');
INSERT INTO `ts_login_record` VALUES ('58', '8', '125.122.192.210', '- 浙江省 - 电信', '1319696695');
INSERT INTO `ts_login_record` VALUES ('76', '12', '115.194.221.155', '- IANA', '1320725278');
INSERT INTO `ts_login_record` VALUES ('125', '13', '220.168.88.204', '- 湖南省长沙市 - 电信', '1321331771');
INSERT INTO `ts_login_record` VALUES ('115', '12', '122.234.199.153', '- 浙江省 - 电信', '1321272302');
INSERT INTO `ts_login_record` VALUES ('109', '12', '115.204.104.55', '- IANA', '1321253038');
INSERT INTO `ts_login_record` VALUES ('2', '2', '61.153.6.70', '- 浙江省杭州市 - 浙江日报报业集团', '1317190814');
INSERT INTO `ts_login_record` VALUES ('89', '15', '115.195.41.26', '- IANA', '1320909883');
INSERT INTO `ts_login_record` VALUES ('90', '13', '115.195.41.26', '- IANA', '1320910469');
INSERT INTO `ts_login_record` VALUES ('45', '7', '125.122.28.241', '- 浙江省 - 电信', '1319163096');
INSERT INTO `ts_login_record` VALUES ('83', '12', '115.194.216.80', '- IANA', '1320891670');
INSERT INTO `ts_login_record` VALUES ('46', '8', '60.176.182.180', '- 浙江省杭州市 - 电信', '1319337378');
INSERT INTO `ts_login_record` VALUES ('103', '12', '115.204.104.55', '- IANA', '1321249138');
INSERT INTO `ts_login_record` VALUES ('73', '1', '115.192.133.145', '- IANA', '1320716953');
INSERT INTO `ts_login_record` VALUES ('86', '8', '218.72.20.156', '- 浙江省杭州市 - 电信', '1320896443');
INSERT INTO `ts_login_record` VALUES ('74', '12', '115.194.221.155', '- IANA', '1320717016');
INSERT INTO `ts_login_record` VALUES ('9', '1', '115.192.133.82', '- IANA', '1317950685');
INSERT INTO `ts_login_record` VALUES ('55', '10', '60.176.181.247', '- 浙江省杭州市 - 电信', '1319611290');
INSERT INTO `ts_login_record` VALUES ('6', '2', '115.192.133.82', '- IANA', '1317949232');
INSERT INTO `ts_login_record` VALUES ('84', '12', '115.194.216.80', '- IANA', '1320893758');
INSERT INTO `ts_login_record` VALUES ('95', '12', '115.195.163.56', '- IANA', '1321002139');
INSERT INTO `ts_login_record` VALUES ('69', '12', '115.195.70.94', '- IANA', '1320673003');
INSERT INTO `ts_login_record` VALUES ('80', '13', '115.194.216.80', '- IANA', '1320889509');
INSERT INTO `ts_login_record` VALUES ('64', '2', '124.90.20.159', '- 浙江省杭州市 - 网通', '1320510078');
INSERT INTO `ts_login_record` VALUES ('63', '1', '124.90.20.159', '- 浙江省杭州市 - 网通', '1320508780');
INSERT INTO `ts_login_record` VALUES ('21', '1', '127.0.0.1', '- LAN', '1318773382');
INSERT INTO `ts_login_record` VALUES ('68', '12', '115.197.101.55', '- IANA', '1320586146');
INSERT INTO `ts_login_record` VALUES ('82', '12', '115.194.216.80', '- IANA', '1320889830');
INSERT INTO `ts_login_record` VALUES ('101', '12', '115.204.104.55', '- IANA', '1321240710');
INSERT INTO `ts_login_record` VALUES ('53', '1', '115.192.133.61', '- IANA', '1319609592');
INSERT INTO `ts_login_record` VALUES ('62', '8', '125.120.67.38', '- 浙江省杭州市 - 电信', '1320392570');
INSERT INTO `ts_login_record` VALUES ('15', '1', '127.0.0.1', '- LAN', '1318768813');
INSERT INTO `ts_login_record` VALUES ('85', '12', '115.194.216.80', '- IANA', '1320894571');
INSERT INTO `ts_login_record` VALUES ('102', '12', '115.204.104.55', '- IANA', '1321248976');
INSERT INTO `ts_login_record` VALUES ('42', '5', '192.168.1.103', '- LAN', '1319016594');
INSERT INTO `ts_login_record` VALUES ('119', '12', '122.234.199.153', '- 浙江省 - 电信', '1321272319');
INSERT INTO `ts_login_record` VALUES ('87', '8', '218.72.20.156', '- 浙江省杭州市 - 电信', '1320903053');
INSERT INTO `ts_login_record` VALUES ('94', '12', '115.195.163.56', '- IANA', '1320993042');
INSERT INTO `ts_login_record` VALUES ('16', '1', '127.0.0.1', '- LAN', '1318769182');
INSERT INTO `ts_login_record` VALUES ('39', '5', '192.168.1.103', '- LAN', '1319015438');
INSERT INTO `ts_login_record` VALUES ('61', '8', '125.122.192.14', '- 浙江省 - 电信', '1319879433');
INSERT INTO `ts_login_record` VALUES ('26', '1', '127.0.0.1', '- LAN', '1318778414');
INSERT INTO `ts_login_record` VALUES ('13', '1', '124.90.18.222', '- 浙江省杭州市 - 网通', '1318295374');
INSERT INTO `ts_login_record` VALUES ('126', '17', '115.195.47.84', '- IANA', '1321331918');
INSERT INTO `ts_login_record` VALUES ('60', '1', '60.176.179.173', '- 浙江省杭州市 - 电信', '1319862900');
INSERT INTO `ts_login_record` VALUES ('44', '6', '115.195.160.97', '- IANA', '1319073158');
INSERT INTO `ts_login_record` VALUES ('17', '1', '127.0.0.1', '- LAN', '1318769182');
INSERT INTO `ts_login_record` VALUES ('72', '13', '60.186.110.221', '- 浙江省杭州市 - 电信', '1320675492');
INSERT INTO `ts_login_record` VALUES ('116', '12', '122.234.199.153', '- 浙江省 - 电信', '1321272302');
INSERT INTO `ts_login_record` VALUES ('10', '1', '115.192.133.82', '- IANA', '1317950703');
INSERT INTO `ts_login_record` VALUES ('106', '12', '115.204.104.55', '- IANA', '1321250109');
INSERT INTO `ts_login_record` VALUES ('12', '1', '115.192.133.82', '- IANA', '1317950745');
INSERT INTO `ts_login_record` VALUES ('57', '8', '125.120.70.77', '- 浙江省杭州市 - 电信', '1319622436');
INSERT INTO `ts_login_record` VALUES ('27', '1', '192.168.1.105', '- LAN', '1318781932');
INSERT INTO `ts_login_record` VALUES ('70', '12', '115.195.70.94', '- IANA', '1320673086');
INSERT INTO `ts_login_record` VALUES ('99', '1', '115.192.128.7', '- IANA', '1321230328');
INSERT INTO `ts_login_record` VALUES ('4', '1', '61.153.6.70', '- 浙江省杭州市 - 浙江日报报业集团', '1317196654');
INSERT INTO `ts_login_record` VALUES ('34', '1', '127.0.0.1', '- LAN', '1318956822');
INSERT INTO `ts_login_record` VALUES ('20', '1', '127.0.0.1', '- LAN', '1318773382');
INSERT INTO `ts_login_record` VALUES ('120', '12', '122.234.199.153', '- 浙江省 - 电信', '1321275167');
INSERT INTO `ts_login_record` VALUES ('18', '1', '127.0.0.1', '- LAN', '1318769211');
INSERT INTO `ts_login_record` VALUES ('25', '1', '127.0.0.1', '- LAN', '1318778414');
INSERT INTO `ts_login_record` VALUES ('81', '14', '115.194.216.80', '- IANA', '1320889579');
INSERT INTO `ts_login_record` VALUES ('93', '8', '125.120.75.180', '- 浙江省杭州市 - 电信', '1320990994');
INSERT INTO `ts_login_record` VALUES ('88', '15', '115.195.41.26', '- IANA', '1320907611');
INSERT INTO `ts_login_record` VALUES ('104', '12', '115.204.104.55', '- IANA', '1321250109');
INSERT INTO `ts_login_record` VALUES ('5', '1', '61.153.6.70', '- 浙江省杭州市 - 浙江日报报业集团', '1317196654');
INSERT INTO `ts_login_record` VALUES ('11', '1', '115.192.133.82', '- IANA', '1317950703');
INSERT INTO `ts_login_record` VALUES ('113', '12', '122.234.199.153', '- 浙江省 - 电信', '1321272291');
INSERT INTO `ts_login_record` VALUES ('28', '1', '192.168.1.105', '- LAN', '1318781932');
INSERT INTO `ts_login_record` VALUES ('118', '12', '122.234.199.153', '- 浙江省 - 电信', '1321272311');
INSERT INTO `ts_login_record` VALUES ('71', '12', '115.195.70.94', '- IANA', '1320673221');
INSERT INTO `ts_login_record` VALUES ('35', '5', '192.168.1.103', '- LAN', '1319011371');
INSERT INTO `ts_login_record` VALUES ('92', '12', '115.195.163.56', '- IANA', '1320986819');
INSERT INTO `ts_login_record` VALUES ('50', '1', '115.192.133.61', '- IANA', '1319383622');
INSERT INTO `ts_login_record` VALUES ('112', '12', '122.234.199.153', '- 浙江省 - 电信', '1321269621');
INSERT INTO `ts_login_record` VALUES ('30', '1', '127.0.0.1', '- LAN', '1318782345');
INSERT INTO `ts_login_record` VALUES ('65', '1', '60.176.179.39', '- 浙江省杭州市 - 电信', '1320559933');
INSERT INTO `ts_login_record` VALUES ('75', '12', '115.194.221.155', '- IANA', '1320725010');
INSERT INTO `ts_login_record` VALUES ('49', '1', '115.192.133.61', '- IANA', '1319383621');
INSERT INTO `ts_login_record` VALUES ('47', '1', '115.192.133.61', '- IANA', '1319352740');
INSERT INTO `ts_login_record` VALUES ('31', '1', '192.168.1.105', '- LAN', '1318785289');
INSERT INTO `ts_login_record` VALUES ('22', '1', '192.168.1.105', '- LAN', '1318774292');
INSERT INTO `ts_login_record` VALUES ('51', '8', '125.120.69.22', '- 浙江省杭州市 - 电信', '1319435595');
INSERT INTO `ts_login_record` VALUES ('98', '12', '122.235.230.28', '- 浙江省 - 电信', '1321190215');
INSERT INTO `ts_login_record` VALUES ('3', '1', '61.153.6.70', '- 浙江省杭州市 - 浙江日报报业集团', '1317196580');
INSERT INTO `ts_login_record` VALUES ('7', '2', '115.192.133.82', '- IANA', '1317950361');
INSERT INTO `ts_login_record` VALUES ('40', '5', '192.168.1.103', '- LAN', '1319016426');
INSERT INTO `ts_login_record` VALUES ('59', '1', '115.192.134.0', '- IANA', '1319849827');
INSERT INTO `ts_login_record` VALUES ('48', '1', '115.192.133.61', '- IANA', '1319376104');
INSERT INTO `ts_login_record` VALUES ('66', '1', '60.176.179.39', '- 浙江省杭州市 - 电信', '1320560903');
INSERT INTO `ts_login_record` VALUES ('33', '1', '192.168.1.103', '- LAN', '1318866885');
INSERT INTO `ts_login_record` VALUES ('41', '1', '192.168.1.103', '- LAN', '1319016557');
INSERT INTO `ts_login_record` VALUES ('29', '1', '127.0.0.1', '- LAN', '1318782345');
INSERT INTO `ts_login_record` VALUES ('56', '11', '115.194.174.83', '- IANA', '1319612761');
INSERT INTO `ts_login_record` VALUES ('43', '5', '192.168.1.103', '- LAN', '1319016836');
INSERT INTO `ts_login_record` VALUES ('91', '16', '101.68.69.150', '- IANA', '1320912773');
INSERT INTO `ts_login_record` VALUES ('52', '8', '60.176.181.247', '- 浙江省杭州市 - 电信', '1319609566');
INSERT INTO `ts_login_record` VALUES ('77', '12', '115.195.71.11', '- IANA', '1320752742');
INSERT INTO `ts_login_record` VALUES ('107', '12', '115.204.104.55', '- IANA', '1321250109');
INSERT INTO `ts_login_record` VALUES ('32', '1', '192.168.1.105', '- LAN', '1318785290');
INSERT INTO `ts_login_record` VALUES ('19', '1', '127.0.0.1', '- LAN', '1318769212');
INSERT INTO `ts_login_record` VALUES ('79', '8', '125.120.67.108', '- 浙江省杭州市 - 电信', '1320823606');
INSERT INTO `ts_login_record` VALUES ('124', '12', '115.194.123.89', '- IANA', '1321330138');
INSERT INTO `ts_login_record` VALUES ('67', '12', '115.197.101.55', '- IANA', '1320585430');
INSERT INTO `ts_login_record` VALUES ('117', '12', '122.234.199.153', '- 浙江省 - 电信', '1321272303');
INSERT INTO `ts_login_record` VALUES ('54', '9', '60.176.181.247', '- 浙江省杭州市 - 电信', '1319610647');

-- ----------------------------
-- Table structure for `ts_medal`
-- ----------------------------
DROP TABLE IF EXISTS `ts_medal`;
CREATE TABLE `ts_medal` (
  `medal_id` int(11) NOT NULL AUTO_INCREMENT,
  `path_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `data` text,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `display_order` smallint(4) NOT NULL DEFAULT '0',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`medal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_medal
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_message`
-- ----------------------------
DROP TABLE IF EXISTS `ts_message`;
CREATE TABLE `ts_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `from_uid` int(11) NOT NULL,
  `to_uid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `source_message_id` int(255) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `is_lastest` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `ctime` int(11) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_message
-- ----------------------------
INSERT INTO `ts_message` VALUES ('1', '1', '5', 'fefewf', 'ewfewfewf', '1', '0', '1', '0', '1320509877');
INSERT INTO `ts_message` VALUES ('2', '1', '2', 'fefewf', 'ewfewfewf', '2', '1', '0', '0', '1320509877');
INSERT INTO `ts_message` VALUES ('6', '1', '2', '回复: fefewf', 'fdsfdsfsrerewrerr', '2', '1', '1', '0', '1320928062');
INSERT INTO `ts_message` VALUES ('4', '2', '1', '回复: fefewf', '333333', '2', '1', '1', '0', '1320510145');
INSERT INTO `ts_message` VALUES ('5', '1', '2', 'hkjh', 'k;lk;', '5', '0', '1', '0', '1320510472');
INSERT INTO `ts_message` VALUES ('3', '1', '2', '回复: fefewf', 'ewfewf', '2', '1', '0', '0', '1320509928');

-- ----------------------------
-- Table structure for `ts_myop_friendlog`
-- ----------------------------
DROP TABLE IF EXISTS `ts_myop_friendlog`;
CREATE TABLE `ts_myop_friendlog` (
  `uid` int(11) NOT NULL,
  `fuid` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `dateline` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_myop_friendlog
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_myop_myapp`
-- ----------------------------
DROP TABLE IF EXISTS `ts_myop_myapp`;
CREATE TABLE `ts_myop_myapp` (
  `appid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `appname` varchar(60) NOT NULL DEFAULT '',
  `narrow` tinyint(1) NOT NULL DEFAULT '0',
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `version` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `displaymethod` tinyint(1) NOT NULL DEFAULT '0',
  `displayorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`appid`),
  KEY `flag` (`flag`,`displayorder`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_myop_myapp
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_myop_myinvite`
-- ----------------------------
DROP TABLE IF EXISTS `ts_myop_myinvite`;
CREATE TABLE `ts_myop_myinvite` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(100) NOT NULL DEFAULT '',
  `appid` mediumint(8) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `fromuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `touid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `myml` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `hash` int(10) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`) USING BTREE,
  KEY `uid` (`touid`,`dateline`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_myop_myinvite
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_myop_userapp`
-- ----------------------------
DROP TABLE IF EXISTS `ts_myop_userapp`;
CREATE TABLE `ts_myop_userapp` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `appid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `appname` varchar(60) NOT NULL DEFAULT '',
  `privacy` tinyint(1) NOT NULL DEFAULT '0',
  `allowsidenav` tinyint(1) NOT NULL DEFAULT '0',
  `allowfeed` tinyint(1) NOT NULL DEFAULT '0',
  `allowprofilelink` tinyint(1) NOT NULL DEFAULT '0',
  `narrow` tinyint(1) NOT NULL DEFAULT '0',
  `menuorder` smallint(6) NOT NULL DEFAULT '0',
  `displayorder` smallint(6) NOT NULL DEFAULT '0',
  `ext` text,
  KEY `uid` (`uid`,`appid`) USING BTREE,
  KEY `menuorder` (`uid`,`menuorder`) USING BTREE,
  KEY `displayorder` (`uid`,`displayorder`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_myop_userapp
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_myop_userappfield`
-- ----------------------------
DROP TABLE IF EXISTS `ts_myop_userappfield`;
CREATE TABLE `ts_myop_userappfield` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `appid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `profilelink` text NOT NULL,
  `myml` text NOT NULL,
  KEY `uid` (`uid`,`appid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_myop_userappfield
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_myop_userlog`
-- ----------------------------
DROP TABLE IF EXISTS `ts_myop_userlog`;
CREATE TABLE `ts_myop_userlog` (
  `uid` int(11) NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_myop_userlog
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_node`
-- ----------------------------
DROP TABLE IF EXISTS `ts_node`;
CREATE TABLE `ts_node` (
  `node_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `app_alias` varchar(255) DEFAULT NULL,
  `mod_name` varchar(255) NOT NULL,
  `mod_alias` varchar(255) DEFAULT NULL,
  `act_name` varchar(255) NOT NULL,
  `act_alias` varchar(255) DEFAULT NULL,
  `parent_node_id` int(11) NOT NULL COMMENT '??action',
  `description` text,
  PRIMARY KEY (`node_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_node
-- ----------------------------
INSERT INTO `ts_node` VALUES ('1', 'admin', '管理后台', '*', '全部', '*', '全部', '0', '在“权限管理”中将本节点赋予某个用户组，它就能访问管理后台了');

-- ----------------------------
-- Table structure for `ts_notify`
-- ----------------------------
DROP TABLE IF EXISTS `ts_notify`;
CREATE TABLE `ts_notify` (
  `notify_id` int(11) NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL,
  `receive` int(11) NOT NULL,
  `type` char(80) NOT NULL,
  `data` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ctime` int(11) NOT NULL,
  PRIMARY KEY (`notify_id`),
  KEY `receive` (`receive`,`is_read`) USING BTREE,
  KEY `ctime` (`ctime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_notify
-- ----------------------------
INSERT INTO `ts_notify` VALUES ('24', '16', '1', 'weibo_follow', 's:0:\"\";', '1', '1320913083');
INSERT INTO `ts_notify` VALUES ('14', '9', '1', 'weibo_follow', 's:0:\"\";', '1', '1319610737');
INSERT INTO `ts_notify` VALUES ('1', '1', '2', 'weibo_follow', 's:0:\"\";', '1', '1316233000');
INSERT INTO `ts_notify` VALUES ('23', '1', '16', 'weibo_follow', 's:0:\"\";', '0', '1320913083');
INSERT INTO `ts_notify` VALUES ('8', '1', '7', 'weibo_follow', 's:0:\"\";', '0', '1319163255');
INSERT INTO `ts_notify` VALUES ('2', '2', '1', 'weibo_follow', 's:0:\"\";', '1', '1316233000');
INSERT INTO `ts_notify` VALUES ('9', '7', '1', 'weibo_follow', 's:0:\"\";', '1', '1319163255');
INSERT INTO `ts_notify` VALUES ('6', '6', '1', 'weibo_follow', 's:0:\"\";', '1', '1319073184');
INSERT INTO `ts_notify` VALUES ('21', '13', '12', 'weibo_follow', 's:0:\"\";', '0', '1320891473');
INSERT INTO `ts_notify` VALUES ('15', '1', '11', 'weibo_follow', 's:0:\"\";', '0', '1319612804');
INSERT INTO `ts_notify` VALUES ('16', '11', '1', 'weibo_follow', 's:0:\"\";', '1', '1319612804');
INSERT INTO `ts_notify` VALUES ('13', '1', '9', 'weibo_follow', 's:0:\"\";', '0', '1319610737');
INSERT INTO `ts_notify` VALUES ('17', '1', '12', 'weibo_follow', 's:0:\"\";', '0', '1320585535');
INSERT INTO `ts_notify` VALUES ('10', '1', '8', 'weibo_follow', 's:0:\"\";', '0', '1319337425');
INSERT INTO `ts_notify` VALUES ('12', '1', '5', 'weibo_follow', 's:0:\"\";', '0', '1319384443');
INSERT INTO `ts_notify` VALUES ('4', '5', '1', 'weibo_follow', 's:0:\"\";', '1', '1319015034');
INSERT INTO `ts_notify` VALUES ('20', '13', '1', 'weibo_follow', 's:0:\"\";', '1', '1320675506');
INSERT INTO `ts_notify` VALUES ('18', '12', '1', 'weibo_follow', 's:0:\"\";', '1', '1320585535');
INSERT INTO `ts_notify` VALUES ('5', '1', '6', 'weibo_follow', 's:0:\"\";', '0', '1319073184');
INSERT INTO `ts_notify` VALUES ('11', '8', '1', 'weibo_follow', 's:0:\"\";', '1', '1319337425');
INSERT INTO `ts_notify` VALUES ('22', '13', '5', 'weibo_follow', 's:0:\"\";', '0', '1320891486');
INSERT INTO `ts_notify` VALUES ('3', '1', '5', 'weibo_follow', 's:0:\"\";', '0', '1319015034');
INSERT INTO `ts_notify` VALUES ('7', '6', '4', 'weibo_follow', 's:0:\"\";', '0', '1319074524');
INSERT INTO `ts_notify` VALUES ('19', '1', '13', 'weibo_follow', 's:0:\"\";', '0', '1320675506');

-- ----------------------------
-- Table structure for `ts_space`
-- ----------------------------
DROP TABLE IF EXISTS `ts_space`;
CREATE TABLE `ts_space` (
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `hit` int(11) unsigned NOT NULL DEFAULT '0',
  `setting` text NOT NULL,
  `credit_score` int(11) unsigned NOT NULL DEFAULT '0',
  `credit_exp` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_space
-- ----------------------------
INSERT INTO `ts_space` VALUES ('8', '0', '', '0', '0');
INSERT INTO `ts_space` VALUES ('2', '0', '', '0', '0');
INSERT INTO `ts_space` VALUES ('9', '0', '', '0', '0');
INSERT INTO `ts_space` VALUES ('6', '0', '', '0', '0');
INSERT INTO `ts_space` VALUES ('16', '0', '', '0', '0');
INSERT INTO `ts_space` VALUES ('13', '0', '', '0', '0');
INSERT INTO `ts_space` VALUES ('12', '0', '', '0', '0');
INSERT INTO `ts_space` VALUES ('5', '0', '', '0', '0');
INSERT INTO `ts_space` VALUES ('11', '0', '', '0', '0');
INSERT INTO `ts_space` VALUES ('7', '0', '', '0', '0');

-- ----------------------------
-- Table structure for `ts_system_data`
-- ----------------------------
DROP TABLE IF EXISTS `ts_system_data`;
CREATE TABLE `ts_system_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `list` char(30) DEFAULT 'default',
  `key` char(50) DEFAULT 'default',
  `value` text,
  `mtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `list` (`list`,`key`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=242 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_system_data
-- ----------------------------
INSERT INTO `ts_system_data` VALUES ('36', '0', 'register', 'register_auto_friend', 'i:1;', '2011-09-17 12:15:57');
INSERT INTO `ts_system_data` VALUES ('233', '0', 'siteopt', 'site_closed', 'i:0;', '2011-10-17 01:15:12');
INSERT INTO `ts_system_data` VALUES ('14', '0', 'register', 'register_lastname_double', 's:3060:\"安陵,安平,安期,安阳,白马,百里,柏侯,鲍俎,北宫,北郭,北门,北山,北唐,奔水,逼阳,宾牟,薄奚薄野,曹牟,曹丘,常涛,长鱼,车非,成功,成阳,乘马,叱卢,丑门,樗里,穿封,淳子,答禄,达勃,达步,达奚,淡台,邓陵,第五,地连,地伦,东方,东里,东南,东宫,东门东乡,东丹,东郭,东陵,东关,东闾,东阳,东野,东莱,豆卢,斗于,都尉,独孤端木,段干,多子,尔朱,方雷丰将,封人,封父,夫蒙,夫馀,浮丘,傅余,干已,高车,高陵,高堂,高阳,高辛,皋落,哥舒,盖楼,庚桑,梗阳,宫孙,公羊,公良,公孙,公罔,公西,公冶,公敛,公梁,公输,公上,公山,公户,公玉,公仪,公仲公坚,公伯,公祖,公乘,公晰,公族,姑布,古口,古龙,古孙,谷梁,谷浑,瓜田,关龙,鲑阳,归海,函治,韩馀,罕井,浩生,浩星,纥骨,纥奚纥于,贺拨,贺兰,贺楼,赫连,黑齿,黑肱,侯冈,呼延,壶丘,呼衍,斛律,胡非,胡母,胡毋,皇甫,皇父,兀官吉白,即墨,季瓜,季连,季孙,茄众,蒋丘,金齿,晋楚,京城,泾阳,九百,九方,睢鸠,沮渠,巨母,勘阻,渴侯,渴单,可汗,空桐,空相,昆吾,老阳,乐羊,荔菲,栎阳,梁丘,梁由,梁馀,梁垣,陵阳伶舟,冷沦,令狐,刘王,柳下,龙丘,卢妃,卢蒲,鲁步,陆费,角里,闾丘,马矢,麦丘,茅夷,弥牟,密革,密茅,墨夷,墨台,万俊,昌顿,慕容,木门,木易,南宫,南郭,南门,南荣,欧侯,欧阳,逄门,盆成,彭祖,平陵,平宁,破丑,仆固,濮阳,漆雕,奇介,綦母,綦毋,綦连,祁连,乞伏,绮里,千代,千乘,勤宿,青阳,丘丽,丘陵,屈侯,屈突,屈男,屈卢,屈同,屈门,屈引,壤四,扰龙,容成,汝嫣,萨孤,三饭,三闾,三州,桑丘,商瞿,上官,尚方,少师,少施,少室,少叔,少正,社南社北,申屠,申徒,沈犹,胜屠,石作石牛,侍其,士季,士弱,士孙,士贞,叔孙,叔先,叔促,水丘,司城,司空,司寇,司鸿,司马,司徒,司士,似和,素和,夙沙,孙阳,索阳,索卢,沓卢,太史,太叔,太阳,澹台,唐山,堂溪,陶丘,同蹄,统奚,秃发,涂钦,吐火,吐贺,吐万,吐罗,吐门,吐难,吐缶,吐浑吐奚,吐和,屯浑,脱脱,拓拨,完颜,王孙,王官,王人,微生,尾勺,温孤,温稽,闻人,屋户,巫马,吾丘,无庸,无钩,五鹿,息夫,西陵,西乞,西钥,西乡,西门,西周,西郭,西方,西野,西宫,戏阳,瑕吕,霞露,夏侯,鲜虞,鲜于,鲜阳,咸丘,相里,解枇,谢丘,新垣,辛垣,信都,信平,修鱼,徐吾,宣于,轩辕,轩丘,阏氏,延陵,罔法,铅陵,羊角,耶律,叶阳,伊祁,伊耆,猗卢,义渠,邑由,因孙,银齿,尹文,雍门,游水,由吾,右师,宥连,於陵,虞丘,盂丘,宇文,尉迟,乐羊,乐正,运奄,运期,宰父,辗迟,湛卢,章仇,仉督,长孙,长儿,真鄂,正令,执头,中央,中长,中行,中野,中英,中梁,中垒,钟离,钟吾,终黎,终葵,仲孙,仲长,周阳,周氏,周生,朱阳,诸葛,主父,颛孙,颛顼,訾辱,淄丘,子言,子人,子服子家,子桑,子叔,子车,子阳,宗伯,宗正,宗政,尊卢,昨和,左人,左丘,左师,左行,刘文,额尔,达力,蔡斯,浩赏,斛斯,夹谷,揭阳,万俟,淳于,单于,徐离\";', '2010-07-29 16:43:04');
INSERT INTO `ts_system_data` VALUES ('241', '0', 'siteopt', 'site_verify', 's:0:\"\";', '2011-10-17 01:15:12');
INSERT INTO `ts_system_data` VALUES ('222', '0', 'email', 'email_port', 's:0:\"\";', '2011-10-17 00:10:41');
INSERT INTO `ts_system_data` VALUES ('8', '0', 'siteopt', '__hash__', 's:32:\"f9d2155a200139766ad5aa2e4606504c\";', '2010-11-29 17:40:14');
INSERT INTO `ts_system_data` VALUES ('221', '0', 'email', 'email_ssl', 's:1:\"0\";', '2011-10-17 00:10:41');
INSERT INTO `ts_system_data` VALUES ('220', '0', 'email', 'email_host', 's:0:\"\";', '2011-10-17 00:10:41');
INSERT INTO `ts_system_data` VALUES ('227', '0', 'audit', 'keywords', 's:0:\"\";', '2011-10-17 00:17:29');
INSERT INTO `ts_system_data` VALUES ('228', '0', 'audit', 'replace', 's:0:\"\";', '2011-10-17 00:17:29');
INSERT INTO `ts_system_data` VALUES ('225', '0', 'email', 'email_sender_name', 's:5:\"admin\";', '2011-10-17 00:10:41');
INSERT INTO `ts_system_data` VALUES ('238', '0', 'siteopt', 'site_user_visited', 's:1:\"1\";', '2011-10-17 01:15:12');
INSERT INTO `ts_system_data` VALUES ('198', '0', 'siteopt', 'site_user_domain_on', 's:1:\"1\";', '2011-10-17 00:04:59');
INSERT INTO `ts_system_data` VALUES ('9', '0', 'register', 'register_type', 's:4:\"open\";', '2010-12-06 12:08:56');
INSERT INTO `ts_system_data` VALUES ('6', '0', 'siteopt', 'site_system_version', 's:12:\"ThinkSNS 2.3\";', '2010-12-31 15:46:44');
INSERT INTO `ts_system_data` VALUES ('230', '0', 'siteopt', 'site_slogan', 's:15:\"城市轻社区\";', '2011-10-17 01:15:12');
INSERT INTO `ts_system_data` VALUES ('240', '0', 'siteopt', 'site_icp', 's:51:\"粘米网络科技有限公司 浙ICP备00000001号\";', '2011-10-17 01:15:12');
INSERT INTO `ts_system_data` VALUES ('187', '0', 'cnzz', 'cnzz_id', 's:8:\"80810198\";', '2011-10-16 22:12:11');
INSERT INTO `ts_system_data` VALUES ('234', '0', 'siteopt', 'site_closed_reason', 's:0:\"\";', '2011-10-17 01:15:12');
INSERT INTO `ts_system_data` VALUES ('219', '0', 'email', 'email_sendtype', 's:4:\"smtp\";', '2011-10-17 00:10:41');
INSERT INTO `ts_system_data` VALUES ('15', '0', 'register', '__hash__', 's:32:\"f81cb2f2175eaa0a59d1a48d2cd6dadb\";', '2010-12-06 12:08:56');
INSERT INTO `ts_system_data` VALUES ('224', '0', 'email', 'email_password', 's:0:\"\";', '2011-10-17 00:10:41');
INSERT INTO `ts_system_data` VALUES ('232', '0', 'siteopt', 'site_header_description', 's:13:\"亲邻|粘米\";', '2011-10-17 01:15:12');
INSERT INTO `ts_system_data` VALUES ('217', '0', 'announcement', 'is_open', 'i:1;', '2011-10-17 00:10:17');
INSERT INTO `ts_system_data` VALUES ('16', '0', 'register', 'register_lastname', 's:6643:\"艾,安,昂,敖,奥,巴,霸,白,柏,拜,班,包,保,葆,豹,鲍,暴,卑,贲,毕,闭,秘,边,鞭,彪,别,宾,邴,秉,薄,卜,布,部,才,蔡,仓,苍,操,曹,策,岑,柴,镡,昌,苌,常,昶,畅,唱,晁,巢,朝,车,陈,谌,成,承,晟,乘,程,池,迟,充,种,崇,丑,侴,初,储,楚,禇,揣,啜,春,椿,慈,次,从,丛,爨,崔,萃,寸,达,笪,大,代,戴,丹,但,啖,党,刀,德,邓,狄,翟,邸,底,弟,典,刁,丁,定,东,冬,董,豆,窦,都,堵,杜,度,端,段,敦,顿,多,朵,颚,恩,法,氾,樊,范,方,芳,防,房,费,丰,风,封,酆,冯,逢,凤,奉,俸,伏,扶,苻,服,符,福,付,傅,富,改,盖,干,甘,淦,冮,刚,皋,高,杲,郜,戈,革,合,格,盖,葛,庚,赓,耿,弓,公,宫,龚,巩,贡,勾,缑,苟,勾,辜,古,谷,固,顾,关,官,筦,管,观,贯,冠,光,广,归,妫,邽,炅,炔,贵,桂,滚,过,呙,郭,国,虢,果,哈,海,罕,撖,杭,郝,合,何,和,亻各,贺,赫,黑,亨,恒,衡,弘,闳,宏,鸿,侯,后,郈,厚,呼,轷,狐,胡,壶,虎,户,扈,花,华,滑,华,怀,槐,还,环,郇,桓,宦,皇,黄,回,惠,浑,火,霍,姬,嵇,稽,及,吉,汲,姞,戢,集,藉,籍,纪,计,季,暨,冀,加,家,嘉,郏,甲,贾,坚,菅,检,简,翦,蹇,见,监,江,将,姜,蒋,降,焦,矫,皎,敫,曒,教,接,揭,节,介,金,晋,烬,京,经,荆,井,景,敬,靖,静,酒,局,倶,琚,鞠,菊,巨,剧,隽,圈,角,开,凯,阚,康,亢,伉,柯,可,坑,孔,寇,库,蒯,郐,宽,匡,邝,旷,况,奎,隗,夔,腊,来,赖,兰,蓝,郎,劳,老,乐,雷,冷,离,黎,李,里,力,历,厉,立,励,利,郦,栗,连,廉,练,良,梁,聊,廖,列,林,临,吝,蔺,令,泠,凌,刘,留,柳,龙,隆,娄,楼,卢,庐,鲁,陆,逯,禄,路,闾,吕,律,栾,论,论,罗,洛,骆,雒,麻,马,买,麦,满,莽,毛,茆,茅,冒,枚,梅,门,蒙,孟,弥,祢,糜,米,芈,弭,宓,密,苗,缪,闵,敏,名,万,莫,墨,默,牟,母,木,沐,睦,慕,穆,那,纳,乃,佴,南,铙,倪,年,粘,念,乜,聂,宁,牛,钮,农,侬,区,欧,潘,盘,泮,庞,裴,彭,邳,皮,朴,品,平,繁,蒲,濮,浦,普,溥,柒,戚,漆,亓,齐,祁,歧,綦,乞,杞,启,千,钱,潜,强,乔,桥,谯,且,郄,钦,秦,琴,覃,勤,青,卿,清,庆,丘,邱,秋,仇,求,裘,曲,屈,麴,渠,璩,瞿,蘧,权,全,泉,阙,冉,饶,壬,任,戎,荣,容,茹,汝,阮,软,芮,瑞,洒,撒,萨,伞,桑,沙,山,闪,陕,单,善,商,赏,尚,少,召,邵,折,佘,厍,舍,申,莘,神,沈,生,绳,盛,师,施,石,时,史,士,世,是,奭,首,寿,殳,舒,疏,束,树,耍,帅,双,水,睡,顺,司,思,死,斯,四,佀,姒,松,宋,苏,宿,粟,眭,睢,隋,随,穗,孙,所,索,塔,台,邰,台,太,泰,谈,覃,谭,澹,檀,镡,汤,唐,棠,陶,腾,提,遆,题,帖,铁,通,仝,同,佟,彤,童,钭,徒,涂,屠,土,脱,完,宛,晚,万,汪,王,望,危,韦,维,蒍,隗,位,尉,温,文,闻,问,翁,瓮,邬,巫,毋,吾,吴,伍,仵,武,务,西,析,郗,息,奚,锡,习,席,袭,隰,舄,夏,先,鲜,咸,冼,洗,羡,线,相,香,襄,祥,向,相,项,肖,萧,孝,谢,渫,辛,忻,新,信,兴,星,刑,邢,行,幸,熊,修,须,顼,徐,许,旭,续,轩,禤,旋,薛,穴,雪,寻,郇,荀,押,牙,轧,鄢,燕,延,严,言,阎,颜,晏,扬,羊,阳,杨,仰,幺,要,尧,姚,铫,药,冶,业,叶,伊,衣,依,仪,宜,乙,蚁,扆,弋,义,亦,易,弈,益,裔,翼,阴,殷,银,尹,印,应,英,营,赢,灜,雍,勇,涌,幽,尤,由,游,於,欲,余,鱼,俞,馀,宇,禹,庾,玉,郁,遇,喻,裕,毓,渊,元,袁,原,圆,源,员,苑,院,乐,岳,悦,越,云,妘,郧,运,员,郓,恽,韵,载,昝,臧,迮,笮,曾,增,查,乍,翟,呰,祭,占,詹,瞻,展,战,湛,张,章,彰,仉,掌,招,召,兆,赵,肇,真,甄,镇,正,郑,政,支,执,直,植,志,郅,智,终,钟,衷,种,仲,周,朱,邾,诸,竹,竺,主,祝,专,庄,卓,禚,资,訾,子,紫,宗,邹,驺,俎,祖,左,韩,安陵,安平,安期,安阳,白马,百里,柏侯,鲍俎,北宫,北郭,北门,北山,北唐,奔水,逼阳,宾牟,薄奚薄野,曹牟,曹丘,常涛,长鱼,车非,成功,成阳,乘马,叱卢,丑门,樗里,穿封,淳子,答禄,达勃,达步,达奚,淡台,邓陵,第五,地连,地伦,东方,东里,东南,东宫,东门东乡,东丹,东郭,东陵,东关,东闾,东阳,东野,东莱,豆卢,斗于,都尉,独孤端木,段干,多子,尔朱,方雷丰将,封人,封父,夫蒙,夫馀,浮丘,傅余,干已,高车,高陵,高堂,高阳,高辛,皋落,哥舒,盖楼,庚桑,梗阳,宫孙,公羊,公良,公孙,公罔,公西,公冶,公敛,公梁,公输,公上,公山,公户,公玉,公仪,公仲公坚,公伯,公祖,公乘,公晰,公族,姑布,古口,古龙,古孙,谷梁,谷浑,瓜田,关龙,鲑阳,归海,函治,韩馀,罕井,浩生,浩星,纥骨,纥奚纥于,贺拨,贺兰,贺楼,赫连,黑齿,黑肱,侯冈,呼延,壶丘,呼衍,斛律,胡非,胡母,胡毋,皇甫,皇父,兀官吉白,即墨,季瓜,季连,季孙,茄众,蒋丘,金齿,晋楚,京城,泾阳,九百,九方,睢鸠,沮渠,巨母,勘阻,渴侯,渴单,可汗,空桐,空相,昆吾,老阳,乐羊,荔菲,栎阳,梁丘,梁由,梁馀,梁垣,陵阳伶舟,冷沦,令狐,刘王,柳下,龙丘,卢妃,卢蒲,鲁步,陆费,角里,闾丘,马矢,麦丘,茅夷,弥牟,密革,密茅,墨夷,墨台,万俊,昌顿,慕容,木门,木易,南宫,南郭,南门,南荣,欧侯,欧阳,逄门,盆成,彭祖,平陵,平宁,破丑,仆固,濮阳,漆雕,奇介,綦母,綦毋,綦连,祁连,乞伏,绮里,千代,千乘,勤宿,青阳,丘丽,丘陵,屈侯,屈突,屈男,屈卢,屈同,屈门,屈引,壤四,扰龙,容成,汝嫣,萨孤,三饭,三闾,三州,桑丘,商瞿,上官,尚方,少师,少施,少室,少叔,少正,社南社北,申屠,申徒,沈犹,胜屠,石作石牛,侍其,士季,士弱,士孙,士贞,叔孙,叔先,叔促,水丘,司城,司空,司寇,司鸿,司马,司徒,司士,似和,素和,夙沙,孙阳,索阳,索卢,沓卢,太史,太叔,太阳,澹台,唐山,堂溪,陶丘,同蹄,统奚,秃发,涂钦,吐火,吐贺,吐万,吐罗,吐门,吐难,吐缶,吐浑吐奚,吐和,屯浑,脱脱,拓拨,完颜,王孙,王官,王人,微生,尾勺,温孤,温稽,闻人,屋户,巫马,吾丘,无庸,无钩,五鹿,息夫,西陵,西乞,西钥,西乡,西门,西周,西郭,西方,西野,西宫,戏阳,瑕吕,霞露,夏侯,鲜虞,鲜于,鲜阳,咸丘,相里,解枇,谢丘,新垣,辛垣,信都,信平,修鱼,徐吾,宣于,轩辕,轩丘,阏氏,延陵,罔法,铅陵,羊角,耶律,叶阳,伊祁,伊耆,猗卢,义渠,邑由,因孙,银齿,尹文,雍门,游水,由吾,右师,宥连,於陵,虞丘,盂丘,宇文,尉迟,乐羊,乐正,运奄,运期,宰父,辗迟,湛卢,章仇,仉督,长孙,长儿,真鄂,正令,执头,中央,中长,中行,中野,中英,中梁,中垒,钟离,钟吾,终黎,终葵,仲孙,仲长,周阳,周氏,周生,朱阳,诸葛,主父,颛孙,颛顼,訾辱,淄丘,子言,子人,子服子家,子桑,子叔,子车,子阳,宗伯,宗正,宗政,尊卢,昨和,左人,左丘,左师,左行,刘文,额尔,达力,蔡斯,浩赏,斛斯,夹谷,揭阳,万俟,淳于,单于,徐离\";', '2010-11-25 17:33:01');
INSERT INTO `ts_system_data` VALUES ('13', '0', 'register', 'register_lastname_single', 's:3582:\"艾,安,昂,敖,奥,巴,霸,白,柏,拜,班,包,保,葆,豹,鲍,暴,卑,贲,毕,闭,秘,边,鞭,彪,别,宾,邴,秉,薄,卜,布,部,才,蔡,仓,苍,操,曹,策,岑,柴,镡,昌,苌,常,昶,畅,唱,晁,巢,朝,车,陈,谌,成,承,晟,乘,程,池,迟,充,种,崇,丑,侴,初,储,楚,禇,揣,啜,春,椿,慈,次,从,丛,爨,崔,萃,寸,达,笪,大,代,戴,丹,但,啖,党,刀,德,邓,狄,翟,邸,底,弟,典,刁,丁,定,东,冬,董,豆,窦,都,堵,杜,度,端,段,敦,顿,多,朵,颚,恩,法,氾,樊,范,方,芳,防,房,费,丰,风,封,酆,冯,逢,凤,奉,俸,伏,扶,苻,服,符,福,付,傅,富,改,盖,干,甘,淦,冮,刚,皋,高,杲,郜,戈,革,合,格,盖,葛,庚,赓,耿,弓,公,宫,龚,巩,贡,勾,缑,苟,勾,辜,古,谷,固,顾,关,官,筦,管,观,贯,冠,光,广,归,妫,邽,炅,炔,贵,桂,滚,过,呙,郭,国,虢,果,哈,海,罕,撖,杭,郝,合,何,和,亻各,贺,赫,黑,亨,恒,衡,弘,闳,宏,鸿,侯,后,郈,厚,呼,轷,狐,胡,壶,虎,户,扈,花,华,滑,华,怀,槐,还,环,郇,桓,宦,皇,黄,回,惠,浑,火,霍,姬,嵇,稽,及,吉,汲,姞,戢,集,藉,籍,纪,计,季,暨,冀,加,家,嘉,郏,甲,贾,坚,菅,检,简,翦,蹇,见,监,江,将,姜,蒋,降,焦,矫,皎,敫,曒,教,接,揭,节,介,金,晋,烬,京,经,荆,井,景,敬,靖,静,酒,局,倶,琚,鞠,菊,巨,剧,隽,圈,角,开,凯,阚,康,亢,伉,柯,可,坑,孔,寇,库,蒯,郐,宽,匡,邝,旷,况,奎,隗,夔,腊,来,赖,兰,蓝,郎,劳,老,乐,雷,冷,离,黎,李,里,力,历,厉,立,励,利,郦,栗,连,廉,练,良,梁,聊,廖,列,林,临,吝,蔺,令,泠,凌,刘,留,柳,龙,隆,娄,楼,卢,庐,鲁,陆,逯,禄,路,闾,吕,律,栾,论,论,罗,洛,骆,雒,麻,马,买,麦,满,莽,毛,茆,茅,冒,枚,梅,门,蒙,孟,弥,祢,糜,米,芈,弭,宓,密,苗,缪,闵,敏,名,万,莫,墨,默,牟,母,木,沐,睦,慕,穆,那,纳,乃,佴,南,铙,倪,年,粘,念,乜,聂,宁,牛,钮,农,侬,区,欧,潘,盘,泮,庞,裴,彭,邳,皮,朴,品,平,繁,蒲,濮,浦,普,溥,柒,戚,漆,亓,齐,祁,歧,綦,乞,杞,启,千,钱,潜,强,乔,桥,谯,且,郄,钦,秦,琴,覃,勤,青,卿,清,庆,丘,邱,秋,仇,求,裘,曲,屈,麴,渠,璩,瞿,蘧,权,全,泉,阙,冉,饶,壬,任,戎,荣,容,茹,汝,阮,软,芮,瑞,洒,撒,萨,伞,桑,沙,山,闪,陕,单,善,商,赏,尚,少,召,邵,折,佘,厍,舍,申,莘,神,沈,生,绳,盛,师,施,石,时,史,士,世,是,奭,首,寿,殳,舒,疏,束,树,耍,帅,双,水,睡,顺,司,思,死,斯,四,佀,姒,松,宋,苏,宿,粟,眭,睢,隋,随,穗,孙,所,索,塔,台,邰,台,太,泰,谈,覃,谭,澹,檀,镡,汤,唐,棠,陶,腾,提,遆,题,帖,铁,通,仝,同,佟,彤,童,钭,徒,涂,屠,土,脱,完,宛,晚,万,汪,王,望,危,韦,维,蒍,隗,位,尉,温,文,闻,问,翁,瓮,邬,巫,毋,吾,吴,伍,仵,武,务,西,析,郗,息,奚,锡,习,席,袭,隰,舄,夏,先,鲜,咸,冼,洗,羡,线,相,香,襄,祥,向,相,项,肖,萧,孝,谢,渫,辛,忻,新,信,兴,星,刑,邢,行,幸,熊,修,须,顼,徐,许,旭,续,轩,禤,旋,薛,穴,雪,寻,郇,荀,押,牙,轧,鄢,燕,延,严,言,阎,颜,晏,扬,羊,阳,杨,仰,幺,要,尧,姚,铫,药,冶,业,叶,伊,衣,依,仪,宜,乙,蚁,扆,弋,义,亦,易,弈,益,裔,翼,阴,殷,银,尹,印,应,英,营,赢,灜,雍,勇,涌,幽,尤,由,游,於,欲,余,鱼,俞,馀,宇,禹,庾,玉,郁,遇,喻,裕,毓,渊,元,袁,原,圆,源,员,苑,院,乐,岳,悦,越,云,妘,郧,运,员,郓,恽,韵,载,昝,臧,迮,笮,曾,增,查,乍,翟,呰,祭,占,詹,瞻,展,战,湛,张,章,彰,仉,掌,招,召,兆,赵,肇,真,甄,镇,正,郑,政,支,执,直,植,志,郅,智,终,钟,衷,种,仲,周,朱,邾,诸,竹,竺,主,祝,专,庄,卓,禚,资,訾,子,紫,宗,邹,驺,俎,祖,左,韩\";', '2010-07-29 16:43:04');
INSERT INTO `ts_system_data` VALUES ('229', '0', 'siteopt', 'site_name', 's:9:\"亲邻网\";', '2011-10-17 01:15:12');
INSERT INTO `ts_system_data` VALUES ('231', '0', 'siteopt', 'site_header_keywords', 's:13:\"亲邻|粘米\";', '2011-10-17 01:15:12');
INSERT INTO `ts_system_data` VALUES ('17', '0', 'inviteset', 'invite_set', 's:6:\"common\";', '2010-12-06 12:08:56');
INSERT INTO `ts_system_data` VALUES ('10', '0', 'register', 'register_email_activate', 's:1:\"0\";', '2010-12-06 12:08:56');
INSERT INTO `ts_system_data` VALUES ('12', '0', 'register', 'register_realname_check', 's:1:\"0\";', '2010-11-25 17:33:01');
INSERT INTO `ts_system_data` VALUES ('239', '0', 'siteopt', 'site_appalias_wordwrap', 's:1:\"1\";', '2011-10-17 01:15:12');
INSERT INTO `ts_system_data` VALUES ('20', '0', 'default', 'default', '15', '2010-11-19 11:57:11');
INSERT INTO `ts_system_data` VALUES ('202', '0', 'siteopt', 'site_theme', 's:5:\"weibo\";', '2011-10-17 00:04:59');
INSERT INTO `ts_system_data` VALUES ('218', '0', 'announcement', 'content', 's:21:\"欢迎来到亲邻网\";', '2011-10-17 00:10:17');
INSERT INTO `ts_system_data` VALUES ('30', '0', 'attach', 'attach_max_size', 'd:2;', '2010-11-29 17:41:15');
INSERT INTO `ts_system_data` VALUES ('235', '0', 'siteopt', 'site_anonymous', 's:1:\"1\";', '2011-10-17 01:15:12');
INSERT INTO `ts_system_data` VALUES ('188', '0', 'cnzz', 'cnzz_password', 's:10:\"2570618147\";', '2011-10-16 22:12:11');
INSERT INTO `ts_system_data` VALUES ('31', '0', 'attach', 'attach_allow_extension', 's:59:\"jpg,gif,png,jpeg,bmp,zip,rar,doc,xls,ppt,docx,xlsx,pptx,pdf\";', '2010-11-29 17:41:15');
INSERT INTO `ts_system_data` VALUES ('237', '0', 'siteopt', 'site_anonymous_search', 's:1:\"0\";', '2011-10-17 01:15:12');
INSERT INTO `ts_system_data` VALUES ('236', '0', 'siteopt', 'site_anonymous_square', 's:1:\"0\";', '2011-10-17 01:15:12');
INSERT INTO `ts_system_data` VALUES ('7', '0', 'siteopt', 'site_system_version_number', 's:5:\"16095\";', '2010-12-31 15:46:44');
INSERT INTO `ts_system_data` VALUES ('223', '0', 'email', 'email_account', 's:0:\"\";', '2011-10-17 00:10:41');
INSERT INTO `ts_system_data` VALUES ('29', '0', 'attach', 'attach_path_rule', 's:7:\"Y/md/H/\";', '2010-11-29 17:41:15');
INSERT INTO `ts_system_data` VALUES ('226', '0', 'audit', 'open', 's:1:\"0\";', '2011-10-17 00:17:29');
INSERT INTO `ts_system_data` VALUES ('32', '0', 'attach', '__hash__', 's:32:\"3d1ba92bca03cacb92bb32379f880356\";', '2010-11-29 17:41:15');
INSERT INTO `ts_system_data` VALUES ('19', '0', 'inviteset', '__hash__', 's:32:\"de6fa0dbb82ebd33d9d824d757332c1e\";', '2010-11-26 11:51:05');

-- ----------------------------
-- Table structure for `ts_tag`
-- ----------------------------
DROP TABLE IF EXISTS `ts_tag`;
CREATE TABLE `ts_tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(120) NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_template`
-- ----------------------------
DROP TABLE IF EXISTS `ts_template`;
CREATE TABLE `ts_template` (
  `tpl_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `title` text,
  `body` text,
  `lang` varchar(255) NOT NULL DEFAULT 'zh',
  `type` varchar(255) DEFAULT NULL,
  `type2` varchar(255) DEFAULT NULL,
  `is_cache` tinyint(1) NOT NULL DEFAULT '1',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`tpl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_template
-- ----------------------------
INSERT INTO `ts_template` VALUES ('1', 'invite_register', '邀请注册', '{actor_name}邀请您加入{site_name}', '亲爱的{email}您好，\r\n{actor}邀请您加入{site}', 'zh', 'invite', '', '1', '1282554257');

-- ----------------------------
-- Table structure for `ts_template_record`
-- ----------------------------
DROP TABLE IF EXISTS `ts_template_record`;
CREATE TABLE `ts_template_record` (
  `tpl_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `tpl_name` varchar(255) NOT NULL DEFAULT '',
  `tpl_alias` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `type2` varchar(255) DEFAULT NULL,
  `data` text,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`tpl_record_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_template_record
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_ucenter_user_link`
-- ----------------------------
DROP TABLE IF EXISTS `ts_ucenter_user_link`;
CREATE TABLE `ts_ucenter_user_link` (
  `uid` int(11) NOT NULL,
  `uc_uid` mediumint(8) NOT NULL,
  `uc_username` char(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ts_ucenter_user_link
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_user`
-- ----------------------------
DROP TABLE IF EXISTS `ts_user`;
CREATE TABLE `ts_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `area` mediumint(6) NOT NULL DEFAULT '0',
  `province` mediumint(6) NOT NULL DEFAULT '0',
  `city` mediumint(6) NOT NULL DEFAULT '0',
  `location` varchar(255) DEFAULT NULL,
  `admin_level` varchar(255) DEFAULT '0',
  `commend` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_init` tinyint(1) NOT NULL,
  `is_synchronizing` tinyint(1) NOT NULL DEFAULT '0',
  `ctime` int(11) DEFAULT NULL,
  `identity` tinyint(1) NOT NULL DEFAULT '1',
  `score` int(11) NOT NULL DEFAULT '0',
  `myop_menu_num` int(2) NOT NULL DEFAULT '10',
  `api_key` varchar(255) DEFAULT NULL,
  `domain` char(80) NOT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `brint` varchar(255) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `zhiye` varchar(255) DEFAULT NULL,
  `isdatu` tinyint(4) DEFAULT NULL,
  `bktz` varchar(255) DEFAULT NULL,
  `bktx` varchar(255) DEFAULT NULL,
  `xqname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`) USING BTREE,
  KEY `location` (`location`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_user
-- ----------------------------
INSERT INTO `ts_user` VALUES ('14', 'wen-lw@163.com', '168950da797dec49f831a3e4c6fe60fc', null, '0', '0', '0', '0', null, '0', null, '1', '0', '0', '1320889579', '1', '0', '10', null, '', null, null, null, null, null, null, null, null);
INSERT INTO `ts_user` VALUES ('1', 'admin@admin.com', '5996c4c3ceca2b93f9c0902547c245db', '管理员', '0', '0', '0', '0', null, '1', null, '1', '1', '0', '1316232957', '1', '0', '10', null, '', null, null, null, null, null, null, null, null);
INSERT INTO `ts_user` VALUES ('8', '123456@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '123456', '1', '945', '943', '944', '浙江 ', '0', null, '1', '1', '0', '1319337378', '1', '0', '10', null, '', '0', '', '', '设计师', '0', '4', '3', '');
INSERT INTO `ts_user` VALUES ('2', 'wanglu950@sohu.com', '5996c4c3ceca2b93f9c0902547c245db', 'wangfeng', '1', '0', '0', '0', null, '0', null, '1', '1', '0', '1316232996', '1', '0', '10', null, '', null, null, null, null, null, null, null, null);
INSERT INTO `ts_user` VALUES ('9', 'kimiloveaudi@foxmail.com', '1988828000', 'Kimi', '1', '948', '943', '944', '浙江 ', '0', null, '1', '1', '0', '1319610647', '1', '0', '10', null, '', '0', '', '', '设计师', '0', '4', '3', '大浒东苑');
INSERT INTO `ts_user` VALUES ('6', 'hongge@qq.com', '19ec02c41a619e8f6d959ddee96f2159', 'zjhongge', '1', '0', '0', '0', null, '0', null, '1', '1', '0', '1319073158', '1', '0', '10', null, '', null, null, null, null, null, null, null, null);
INSERT INTO `ts_user` VALUES ('15', 'yk0025@163.com', '23b431acfeb41e15d466d75de822307c', null, '0', '0', '0', '0', null, '0', null, '1', '0', '0', '1320907611', '1', '0', '10', null, '', null, null, null, null, null, null, null, null);
INSERT INTO `ts_user` VALUES ('16', 'hc279520@163.com', 'e10adc3949ba59abbe56e057f20f883e', '哈哈', '1', '949', '943', '944', '浙江  ', '0', null, '1', '1', '0', '1320912773', '1', '0', '10', null, '', '0', '', '', '设计师', '0', '4', '3', '');
INSERT INTO `ts_user` VALUES ('13', '13516701285@qq.com', '19ec02c41a619e8f6d959ddee96f2159', '洪哥', '1', '0', '0', '0', null, '0', null, '1', '1', '0', '1320675492', '1', '0', '10', null, '', '0', '', '', '设计师', '0', '4', '3', '输入你所在的小区名称');
INSERT INTO `ts_user` VALUES ('17', 'kaliry@126.com', '23b431acfeb41e15d466d75de822307c', null, '0', '0', '0', '0', null, '0', null, '1', '0', '0', '1321331917', '1', '0', '10', null, '', null, null, null, null, null, null, null, null);
INSERT INTO `ts_user` VALUES ('10', 'kimiloveaudi@sina.com', '62312a2836cfb9372c6fd65048615c02', null, '0', '0', '0', '0', null, '0', null, '1', '0', '0', '1319611290', '1', '0', '10', null, '', null, null, null, null, null, null, null, null);
INSERT INTO `ts_user` VALUES ('12', 'zhudongdong@qq.com', '8adde58f7041328b15597152f4a3baa8', '东东', '1', '0', '0', '0', null, '0', null, '1', '1', '0', '1320585430', '1', '0', '10', null, '', '0', '', '', '设计师', '0', '4', '3', '输入你所在的小区名称');
INSERT INTO `ts_user` VALUES ('4', 'fenglu951@163.com', '5996c4c3ceca2b93f9c0902547c245db', 'wangfeng2', '0', '0', '0', '0', null, '0', null, '1', '0', '0', '1318775492', '1', '0', '10', null, '', null, null, null, null, null, null, null, null);
INSERT INTO `ts_user` VALUES ('5', 'wanglu952@sohu.com', '5996c4c3ceca2b93f9c0902547c245db', 'wangfeng3', '1', '2948', '2945', '2946', '甘肃  ', '0', null, '1', '1', '0', '1319011371', '1', '0', '10', null, '', '2147483647', '2011-10-04', '是姓', '设计师', '0', '4', '3', '输入你所在的小区名称');
INSERT INTO `ts_user` VALUES ('11', 'bohainet@msn.com', '19ec02c41a619e8f6d959ddee96f2159', 'zjhongge1', '0', '985', '943', '982', '浙江 ', '0', null, '1', '1', '0', '1319612761', '1', '0', '10', null, '', '777777777', '2011-10-04', 'eeeeeeeeeeeeee', '设计师', '1', '4', '3', 'eeeeeeeeee');
INSERT INTO `ts_user` VALUES ('3', 'fenglu950@163.com', '5996c4c3ceca2b93f9c0902547c245db', 'wangfeng1', '0', '0', '0', '0', null, '0', null, '1', '0', '0', '1318775412', '1', '0', '10', null, '', null, null, null, null, null, null, null, null);
INSERT INTO `ts_user` VALUES ('7', '12345@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '谢俊海', '1', '0', '0', '0', null, '0', null, '1', '1', '0', '1319163096', '1', '0', '10', null, '', '0', '', '', '设计师', '0', '4', '3', '银都大厦');

-- ----------------------------
-- Table structure for `ts_user_app`
-- ----------------------------
DROP TABLE IF EXISTS `ts_user_app`;
CREATE TABLE `ts_user_app` (
  `user_app_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `display_order` int(5) NOT NULL DEFAULT '0',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_app_id`),
  KEY `display_order` (`display_order`) USING BTREE,
  KEY `app_id` (`app_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ts_user_app
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_user_blacklist`
-- ----------------------------
DROP TABLE IF EXISTS `ts_user_blacklist`;
CREATE TABLE `ts_user_blacklist` (
  `uid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `ctime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ts_user_blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_user_count`
-- ----------------------------
DROP TABLE IF EXISTS `ts_user_count`;
CREATE TABLE `ts_user_count` (
  `uid` int(11) NOT NULL,
  `atme` mediumint(6) NOT NULL,
  `comment` mediumint(6) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ts_user_count
-- ----------------------------
INSERT INTO `ts_user_count` VALUES ('2', '4', '1');

-- ----------------------------
-- Table structure for `ts_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `ts_user_group`;
CREATE TABLE `ts_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `ctime` int(11) DEFAULT NULL,
  `icon` varchar(120) NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_user_group
-- ----------------------------
INSERT INTO `ts_user_group` VALUES ('1', '管理员', '1291136345', 'v_05.gif');
INSERT INTO `ts_user_group` VALUES ('2', '商家用户', '1318769427', '');
INSERT INTO `ts_user_group` VALUES ('4', '亲邻会员', '1318773798', '');
INSERT INTO `ts_user_group` VALUES ('3', '小区物业', '1318769458', '');

-- ----------------------------
-- Table structure for `ts_user_group_link`
-- ----------------------------
DROP TABLE IF EXISTS `ts_user_group_link`;
CREATE TABLE `ts_user_group_link` (
  `user_gorup_link_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `user_group_title` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`user_gorup_link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_user_group_link
-- ----------------------------
INSERT INTO `ts_user_group_link` VALUES ('14', '4', null, '8');
INSERT INTO `ts_user_group_link` VALUES ('23', '4', null, '17');
INSERT INTO `ts_user_group_link` VALUES ('8', '3', '小区物业', '2');
INSERT INTO `ts_user_group_link` VALUES ('9', '4', '默认', '3');
INSERT INTO `ts_user_group_link` VALUES ('6', '1', '管理员', '2');
INSERT INTO `ts_user_group_link` VALUES ('21', '4', null, '15');
INSERT INTO `ts_user_group_link` VALUES ('15', '4', null, '9');
INSERT INTO `ts_user_group_link` VALUES ('16', '2', null, '10');
INSERT INTO `ts_user_group_link` VALUES ('13', '4', null, '7');
INSERT INTO `ts_user_group_link` VALUES ('17', '3', null, '11');
INSERT INTO `ts_user_group_link` VALUES ('10', '4', null, '4');
INSERT INTO `ts_user_group_link` VALUES ('12', '3', null, '6');
INSERT INTO `ts_user_group_link` VALUES ('4', '2', '商家用户', '1');
INSERT INTO `ts_user_group_link` VALUES ('20', '4', null, '14');
INSERT INTO `ts_user_group_link` VALUES ('18', '4', null, '12');
INSERT INTO `ts_user_group_link` VALUES ('5', '3', '小区物业', '1');
INSERT INTO `ts_user_group_link` VALUES ('11', '4', null, '5');
INSERT INTO `ts_user_group_link` VALUES ('22', '4', null, '16');
INSERT INTO `ts_user_group_link` VALUES ('3', '1', '管理员', '1');
INSERT INTO `ts_user_group_link` VALUES ('7', '2', '商家用户', '2');
INSERT INTO `ts_user_group_link` VALUES ('19', '4', null, '13');

-- ----------------------------
-- Table structure for `ts_user_group_popedom`
-- ----------------------------
DROP TABLE IF EXISTS `ts_user_group_popedom`;
CREATE TABLE `ts_user_group_popedom` (
  `user_group_popedom_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  PRIMARY KEY (`user_group_popedom_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ts_user_group_popedom
-- ----------------------------
INSERT INTO `ts_user_group_popedom` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for `ts_user_medal`
-- ----------------------------
DROP TABLE IF EXISTS `ts_user_medal`;
CREATE TABLE `ts_user_medal` (
  `user_medal_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `medal_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `data` text,
  PRIMARY KEY (`user_medal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_user_medal
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_user_online`
-- ----------------------------
DROP TABLE IF EXISTS `ts_user_online`;
CREATE TABLE `ts_user_online` (
  `uid` int(11) NOT NULL,
  `ctime` int(11) NOT NULL,
  UNIQUE KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ts_user_online
-- ----------------------------
INSERT INTO `ts_user_online` VALUES ('1', '1321258170');
INSERT INTO `ts_user_online` VALUES ('8', '1321180675');
INSERT INTO `ts_user_online` VALUES ('2', '1320565692');
INSERT INTO `ts_user_online` VALUES ('9', '1319611032');
INSERT INTO `ts_user_online` VALUES ('6', '1319075854');
INSERT INTO `ts_user_online` VALUES ('15', '1320909883');
INSERT INTO `ts_user_online` VALUES ('16', '1320912924');
INSERT INTO `ts_user_online` VALUES ('13', '1321331780');
INSERT INTO `ts_user_online` VALUES ('17', '1321332296');
INSERT INTO `ts_user_online` VALUES ('10', '1319611290');
INSERT INTO `ts_user_online` VALUES ('12', '1321333050');
INSERT INTO `ts_user_online` VALUES ('4', '1319013245');
INSERT INTO `ts_user_online` VALUES ('5', '1319060551');
INSERT INTO `ts_user_online` VALUES ('11', '1319621279');
INSERT INTO `ts_user_online` VALUES ('3', '1318775412');
INSERT INTO `ts_user_online` VALUES ('7', '1319170657');

-- ----------------------------
-- Table structure for `ts_user_privacy`
-- ----------------------------
DROP TABLE IF EXISTS `ts_user_privacy`;
CREATE TABLE `ts_user_privacy` (
  `uid` int(11) NOT NULL,
  `key` varchar(120) NOT NULL,
  `value` varchar(120) NOT NULL,
  UNIQUE KEY `key` (`key`) USING BTREE,
  UNIQUE KEY `key_2` (`key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_user_privacy
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_user_profile`
-- ----------------------------
DROP TABLE IF EXISTS `ts_user_profile`;
CREATE TABLE `ts_user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `module` varchar(150) NOT NULL,
  `data` longtext,
  `type` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_user_profile
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_user_set`
-- ----------------------------
DROP TABLE IF EXISTS `ts_user_set`;
CREATE TABLE `ts_user_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldkey` varchar(120) NOT NULL,
  `fieldname` varchar(120) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `module` varchar(60) NOT NULL,
  `showspace` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_user_set
-- ----------------------------
INSERT INTO `ts_user_set` VALUES ('14', 'qq', 'QQ', '1', 'contact', '0');
INSERT INTO `ts_user_set` VALUES ('8', 'favbook', '喜欢的书', '1', 'intro', '0');
INSERT INTO `ts_user_set` VALUES ('9', 'interest', '兴趣爱好', '1', 'intro', '0');
INSERT INTO `ts_user_set` VALUES ('6', 'motto', '座右铭', '1', 'intro', '0');
INSERT INTO `ts_user_set` VALUES ('15', 'msn', 'MSN', '1', 'contact', '0');
INSERT INTO `ts_user_set` VALUES ('16', 'blood', '血型', '1', 'intro', '0');
INSERT INTO `ts_user_set` VALUES ('13', 'mobile', '手机', '1', 'contact', '0');
INSERT INTO `ts_user_set` VALUES ('10', 'address', '地址', '1', 'contact', '0');
INSERT INTO `ts_user_set` VALUES ('12', 'telphone', '电话', '1', 'contact', '0');
INSERT INTO `ts_user_set` VALUES ('4', 'summary', '我的简介', '1', 'intro', '0');
INSERT INTO `ts_user_set` VALUES ('5', 'nearestwish', '最近心愿', '1', 'intro', '0');
INSERT INTO `ts_user_set` VALUES ('11', 'postcode', '邮编', '1', 'contact', '0');
INSERT INTO `ts_user_set` VALUES ('3', 'name', '名字', '1', 'intro', '1');
INSERT INTO `ts_user_set` VALUES ('7', 'idol', '偶像', '1', 'intro', '0');

-- ----------------------------
-- Table structure for `ts_user_tag`
-- ----------------------------
DROP TABLE IF EXISTS `ts_user_tag`;
CREATE TABLE `ts_user_tag` (
  `user_tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`user_tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ts_user_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_user_verified`
-- ----------------------------
DROP TABLE IF EXISTS `ts_user_verified`;
CREATE TABLE `ts_user_verified` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_user_verified
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_user_visited`
-- ----------------------------
DROP TABLE IF EXISTS `ts_user_visited`;
CREATE TABLE `ts_user_visited` (
  `visited_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `ctime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`visited_id`),
  UNIQUE KEY `uid_2` (`uid`,`fid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `fid` (`fid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ts_user_visited
-- ----------------------------
INSERT INTO `ts_user_visited` VALUES ('14', '12', '1', '1321332111');
INSERT INTO `ts_user_visited` VALUES ('1', '2', '1', '1316233084');
INSERT INTO `ts_user_visited` VALUES ('8', '1', '13', '1320928255');
INSERT INTO `ts_user_visited` VALUES ('2', '1', '2', '1317964816');
INSERT INTO `ts_user_visited` VALUES ('9', '13', '1', '1321331821');
INSERT INTO `ts_user_visited` VALUES ('6', '1', '7', '1320928234');
INSERT INTO `ts_user_visited` VALUES ('13', '1', '16', '1320928306');
INSERT INTO `ts_user_visited` VALUES ('10', '8', '1', '1321169964');
INSERT INTO `ts_user_visited` VALUES ('12', '1', '12', '1320927996');
INSERT INTO `ts_user_visited` VALUES ('4', '1', '4', '1320928087');
INSERT INTO `ts_user_visited` VALUES ('5', '1', '3', '1319384397');
INSERT INTO `ts_user_visited` VALUES ('11', '1', '6', '1320928229');
INSERT INTO `ts_user_visited` VALUES ('3', '6', '4', '1319074518');
INSERT INTO `ts_user_visited` VALUES ('7', '1', '8', '1321176831');

-- ----------------------------
-- Table structure for `ts_validation`
-- ----------------------------
DROP TABLE IF EXISTS `ts_validation`;
CREATE TABLE `ts_validation` (
  `validation_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `from_uid` int(11) NOT NULL DEFAULT '0',
  `to_user` varchar(255) NOT NULL DEFAULT '0',
  `data` text,
  `code` varchar(120) NOT NULL DEFAULT '0',
  `target_url` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`validation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_validation
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_weibo`
-- ----------------------------
DROP TABLE IF EXISTS `ts_weibo`;
CREATE TABLE `ts_weibo` (
  `weibo_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `content` text,
  `ctime` int(11) NOT NULL,
  `from` tinyint(1) NOT NULL DEFAULT '0',
  `comment` mediumint(8) NOT NULL DEFAULT '0',
  `transpond_id` int(11) NOT NULL DEFAULT '0',
  `transpond` mediumint(8) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT '0',
  `type_data` text,
  `from_data` text,
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `onlyshow` int(11) DEFAULT '0',
  `mytag` text,
  `topic` int(11) DEFAULT '0',
  `text_bz` text,
  PRIMARY KEY (`weibo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_weibo
-- ----------------------------
INSERT INTO `ts_weibo` VALUES ('111', '12', null, '1320893143', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',；；；,', '0', null);
INSERT INTO `ts_weibo` VALUES ('128', '12', null, '1320898051', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('136', '12', null, '1320899326', '0', '0', '0', '0', '1', 'a:1:{i:0;a:4:{s:8:\"thumburl\";s:51:\"miniblog/a1462a7f2605d59216a519cb918d97cb_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/a1462a7f2605d59216a519cb918d97cb_middle.jpg\";s:6:\"picurl\";s:45:\"miniblog/a1462a7f2605d59216a519cb918d97cb.jpg\";s:10:\"photo_text\";s:27:\"为这张照片添加描述\";}}', null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('114', '12', null, '1320894809', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',sad,sad,', '0', null);
INSERT INTO `ts_weibo` VALUES ('105', '12', null, '1320752786', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('100', '12', null, '1320726407', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',sad,asd,asd,dsa,', '0', null);
INSERT INTO `ts_weibo` VALUES ('14', '1', 'wefewfwef', '1318867462', '0', '0', '0', '0', '0', null, null, '1', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('123', '12', null, '1320895129', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('96', '12', null, '1320726243', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',sad,asd,', '0', null);
INSERT INTO `ts_weibo` VALUES ('121', '12', null, '1320895095', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('157', '12', null, '1321331883', '0', '0', '0', '0', '3', 'a:5:{s:8:\"flashvar\";s:58:\"http://player.youku.com/player.php/sid/XMzIwOTQ4Njk2/v.swf\";s:8:\"flashimg\";s:86:\"http://g2.ykimg.com/0100641F464EBA658147F505AE3358202EA316-45E6-8301-BCCF-9E53CE36BD2D\";s:4:\"host\";s:11:\"v.youku.com\";s:6:\"source\";s:47:\"http://v.youku.com/v_show/id_XMzIwOTQ4Njk2.html\";s:5:\"title\";s:22:\"青春感恩记  2011 \";}', null, '0', null, '0', ',阿斯达,捱三顶四,', '0', '<p>\r\n	阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大阿斯顿撒大</p>\r\n');
INSERT INTO `ts_weibo` VALUES ('1', '2', 'http://goo.gl/ENrSW   http://goo.gl/ENrSW ', '1316233050', '0', '1', '0', '0', '0', null, null, '0', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('110', '12', null, '1320893113', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('97', '12', null, '1320726264', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',sad,', '0', null);
INSERT INTO `ts_weibo` VALUES ('155', '12', null, '1321255673', '0', '0', '0', '0', '1', 'a:2:{i:0;a:4:{s:8:\"thumburl\";s:51:\"miniblog/61f198c29c3e9b772cfac84cab1206af_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/61f198c29c3e9b772cfac84cab1206af_middle.jpg\";s:6:\"picurl\";s:45:\"miniblog/61f198c29c3e9b772cfac84cab1206af.png\";s:10:\"photo_text\";s:27:\"为这张照片添加描述\";}i:1;a:4:{s:8:\"thumburl\";s:51:\"miniblog/61f198c29c3e9b772cfac84cab1206af_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/61f198c29c3e9b772cfac84cab1206af_middle.jpg\";s:6:\"picurl\";s:45:\"miniblog/61f198c29c3e9b772cfac84cab1206af.png\";s:10:\"photo_text\";s:27:\"为这张照片添加描述\";}}', null, '1', null, '0', ',阿斯达阿斯达阿斯达,阿斯达,阿斯达,阿斯达,', '0', null);
INSERT INTO `ts_weibo` VALUES ('108', '12', null, '1320891740', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',萨达,', '0', null);
INSERT INTO `ts_weibo` VALUES ('8', '1', '转发微博', '1318022963', '0', '0', '2', '0', '0', null, null, '1', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('78', '12', null, '1320725195', '0', '0', '0', '0', '0', null, null, '1', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('122', '12', null, '1320895108', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('152', '8', null, '1321170163', '0', '0', '0', '0', '1', 'a:4:{i:0;a:4:{s:8:\"thumburl\";s:51:\"miniblog/09031fe08dc0d70d281fcf79ab58a638_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/09031fe08dc0d70d281fcf79ab58a638_middle.jpg\";s:6:\"picurl\";s:45:\"miniblog/09031fe08dc0d70d281fcf79ab58a638.jpg\";s:10:\"photo_text\";s:6:\"啊啊\";}i:1;a:4:{s:8:\"thumburl\";s:51:\"miniblog/1ec95ce2d6e869b9d0ad414f574f8764_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/1ec95ce2d6e869b9d0ad414f574f8764_middle.jpg\";s:6:\"picurl\";s:45:\"miniblog/1ec95ce2d6e869b9d0ad414f574f8764.jpg\";s:10:\"photo_text\";s:15:\"吾问无为谓\";}i:2;a:4:{s:8:\"thumburl\";s:51:\"miniblog/d31e1923277b54853f5c62ab73b2ba8c_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/d31e1923277b54853f5c62ab73b2ba8c_middle.jpg\";s:6:\"picurl\";s:45:\"miniblog/d31e1923277b54853f5c62ab73b2ba8c.jpg\";s:10:\"photo_text\";s:15:\"日日日日日\";}i:3;a:4:{s:8:\"thumburl\";s:51:\"miniblog/6f14a32d3eb03b885f308b6c311d545b_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/6f14a32d3eb03b885f308b6c311d545b_middle.jpg\";s:6:\"picurl\";s:45:\"miniblog/6f14a32d3eb03b885f308b6c311d545b.jpg\";s:10:\"photo_text\";s:12:\"吞吞吐吐\";}}', null, '0', null, '0', ',啊,啊,呃,', '0', null);
INSERT INTO `ts_weibo` VALUES ('135', '12', null, '1320899282', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('150', '12', null, '1321011910', '0', '0', '0', '0', '0', null, null, '1', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('58', '7', null, '1319163725', '0', '0', '0', '0', '3', 'a:5:{s:8:\"flashvar\";s:58:\"http://player.youku.com/player.php/sid/XMjg4MjI2NzU2/v.swf\";s:8:\"flashimg\";s:86:\"http://g2.ykimg.com/0100641F464E2CFC7D1402051111D8B7826303-F1ED-6E05-AC52-92BA1EC65CA4\";s:4:\"host\";s:11:\"v.youku.com\";s:6:\"source\";s:47:\"http://v.youku.com/v_show/id_XMjg4MjI2NzU2.html\";s:5:\"title\";s:25:\"‪Studio Brussel Miyavi \";}', null, '0', null, '0', ',音乐,明星,吉他,', '0', '<p>\r\n	miyavi</p>\r\n');
INSERT INTO `ts_weibo` VALUES ('143', '12', null, '1320999710', '0', '0', '0', '0', '0', null, null, '1', null, '0', ',萨达,', '0', null);
INSERT INTO `ts_weibo` VALUES ('76', '12', null, '1320725143', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',sadww,', '0', null);
INSERT INTO `ts_weibo` VALUES ('125', '12', null, '1320895179', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('115', '12', null, '1320894832', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',sad,sad,', '0', null);
INSERT INTO `ts_weibo` VALUES ('109', '12', null, '1320892558', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',萨达,', '0', null);
INSERT INTO `ts_weibo` VALUES ('139', '1', null, '1320928170', '0', '0', '0', '0', '1', 'a:6:{i:0;a:4:{s:8:\"thumburl\";s:51:\"miniblog/58ac71cd9c6f1d0c1bf7ff47e387a2a6_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/58ac71cd9c6f1d0c1bf7ff47e387a2a6_middle.jpg\";s:6:\"picurl\";s:45:\"miniblog/58ac71cd9c6f1d0c1bf7ff47e387a2a6.jpg\";s:10:\"photo_text\";s:27:\"为这张照片添加描述\";}i:1;a:4:{s:8:\"thumburl\";s:51:\"miniblog/b58257ed2dc26ca5a78242bde6b96539_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/b58257ed2dc26ca5a78242bde6b96539_middle.jpg\";s:6:\"picurl\";s:45:\"miniblog/b58257ed2dc26ca5a78242bde6b96539.jpg\";s:10:\"photo_text\";s:27:\"为这张照片添加描述\";}i:2;a:4:{s:8:\"thumburl\";s:51:\"miniblog/b8378024e4924673784a88ccf5d9ecd2_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/b8378024e4924673784a88ccf5d9ecd2_middle.jpg\";s:6:\"picurl\";s:45:\"miniblog/b8378024e4924673784a88ccf5d9ecd2.jpg\";s:10:\"photo_text\";s:27:\"为这张照片添加描述\";}i:3;a:4:{s:8:\"thumburl\";s:51:\"miniblog/2b6111e66f8ac34f48d74d40657ee7c7_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/2b6111e66f8ac34f48d74d40657ee7c7_middle.jpg\";s:6:\"picurl\";s:45:\"miniblog/2b6111e66f8ac34f48d74d40657ee7c7.jpg\";s:10:\"photo_text\";s:27:\"为这张照片添加描述\";}i:4;a:4:{s:8:\"thumburl\";s:51:\"miniblog/ce114df0b4ebf0aef41513b0507f60dd_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/ce114df0b4ebf0aef41513b0507f60dd_middle.jpg\";s:6:\"picurl\";s:45:\"miniblog/ce114df0b4ebf0aef41513b0507f60dd.jpg\";s:10:\"photo_text\";s:27:\"为这张照片添加描述\";}i:5;a:4:{s:8:\"thumburl\";s:51:\"miniblog/b2ab24350bc452fc4699682f9bb99a4d_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/b2ab24350bc452fc4699682f9bb99a4d_middle.jpg\";s:6:\"picurl\";s:45:\"miniblog/b2ab24350bc452fc4699682f9bb99a4d.jpg\";s:10:\"photo_text\";s:7:\"sexgirl\";}}', null, '1', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('2', '1', 'wfwefewf', '1317954905', '0', '1', '0', '1', '0', null, null, '0', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('89', '12', null, '1320725409', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',asda,asd,ad,as,das,d,asdasd,', '0', null);
INSERT INTO `ts_weibo` VALUES ('90', '12', null, '1320725480', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',assad,', '0', null);
INSERT INTO `ts_weibo` VALUES ('83', '12', null, '1320725351', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',asda,asd,ad,as,das,d,', '0', null);
INSERT INTO `ts_weibo` VALUES ('103', '12', null, '1320726543', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('73', '13', null, '1320675531', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',问我,问我,', '0', null);
INSERT INTO `ts_weibo` VALUES ('86', '12', null, '1320725378', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',asda,asd,ad,as,das,d,asdasd,', '0', null);
INSERT INTO `ts_weibo` VALUES ('149', '12', null, '1321002177', '0', '0', '0', '0', '0', null, null, '1', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('133', '12', null, '1320899177', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('147', '12', null, '1321001879', '0', '0', '0', '0', '0', null, null, '1', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('74', '12', null, '1320725090', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',sadas,asdas,asdas,', '0', null);
INSERT INTO `ts_weibo` VALUES ('9', '1', '//@管理员:转发微博', '1318022972', '0', '0', '2', '0', '0', null, null, '1', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('55', '1', null, '1319077478', '0', '0', '0', '0', '3', 'a:5:{s:8:\"flashvar\";s:58:\"http://player.youku.com/player.php/sid/XMjkyMTI1MjM2/v.swf\";s:8:\"flashimg\";s:86:\"http://g4.ykimg.com/01270F1F464E3D6BBB69F000000000E44FAD74-91F5-DB0D-69D3-9280ABF63392\";s:4:\"host\";s:11:\"v.youku.com\";s:6:\"source\";s:47:\"http://v.youku.com/v_show/id_XMjkyMTI1MjM2.html\";s:5:\"title\";s:40:\"噬人鲨大战食人鳄  时长1:28:00 \";}', null, '1', null, '0', ',fewfewf,', '0', '');
INSERT INTO `ts_weibo` VALUES ('6', '1', '回复@管理员 : fwefewf //@管理员:转发微博', '1318022628', '0', '0', '1', '0', '0', null, null, '1', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('84', '12', null, '1320725358', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',asda,asd,ad,as,das,d,asdasd,', '0', null);
INSERT INTO `ts_weibo` VALUES ('95', '12', null, '1320726173', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('69', '8', null, '1319348947', '0', '0', '0', '0', '1', 'a:3:{s:8:\"thumburl\";s:51:\"miniblog/b918539af40f2ccd98633d7cc9721be1_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/b918539af40f2ccd98633d7cc9721be1_middle.jpg\";s:6:\"picurl\";s:46:\"miniblog/b918539af40f2ccd98633d7cc9721be1.jpeg\";}', null, '1', null, '0', '', '0', '为这张照片添加描述');
INSERT INTO `ts_weibo` VALUES ('80', '12', null, '1320725209', '0', '0', '0', '0', '0', null, null, '1', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('138', '12', null, '1320900801', '0', '0', '0', '0', '1', 'a:1:{i:0;a:4:{s:8:\"thumburl\";s:51:\"miniblog/03357b0fa4f69f956389fde489472306_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/03357b0fa4f69f956389fde489472306_middle.jpg\";s:6:\"picurl\";s:45:\"miniblog/03357b0fa4f69f956389fde489472306.jpg\";s:10:\"photo_text\";s:27:\"为这张照片添加描述\";}}', null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('64', '8', null, '1319337491', '0', '0', '0', '0', '4', 'a:1:{s:7:\"songurl\";s:10:\"1769129005\";}', null, '1', null, '0', '', '0', '');
INSERT INTO `ts_weibo` VALUES ('63', '7', null, '1319164286', '0', '0', '0', '0', '0', null, null, '0', '去', '0', '', '0', '<p>\r\n	去</p>\r\n');
INSERT INTO `ts_weibo` VALUES ('154', '8', null, '1321170459', '0', '0', '0', '0', '4', 'a:1:{s:7:\"songurl\";s:7:\"2077892\";}', null, '0', null, '0', '', '0', '');
INSERT INTO `ts_weibo` VALUES ('68', '8', null, '1319344289', '0', '0', '0', '0', '3', 'a:5:{s:8:\"flashvar\";s:58:\"http://player.youku.com/player.php/sid/XMzA4MjgwMTY4/v.swf\";s:8:\"flashimg\";s:86:\"http://g1.ykimg.com/0100641F464E5639B0C8220519464A532A8865-CEF2-936A-E639-E77C7CE4B6DB\";s:4:\"host\";s:11:\"v.youku.com\";s:6:\"source\";s:47:\"http://v.youku.com/v_show/id_XMzA4MjgwMTY4.html\";s:5:\"title\";s:45:\"直击魏晨韩国现场演唱破晓  视频 \";}', null, '1', null, '0', '', '0', '');
INSERT INTO `ts_weibo` VALUES ('82', '12', null, '1320725253', '0', '0', '0', '0', '0', null, null, '1', null, '0', ',asdsad,sadsa,sadsadsa,sadsadas,sadsadasdasd,sadasdassssssssss,asdsadsadas,sadasd,asdas,dsad,asdasd,asdas,dsadsadas,sa,das,das,das,das,sadasd,', '0', null);
INSERT INTO `ts_weibo` VALUES ('101', '12', null, '1320726429', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',asdsa,sad,', '0', null);
INSERT INTO `ts_weibo` VALUES ('53', '6', null, '1319073602', '0', '0', '0', '0', '0', null, null, '0', '许多分散度分公司等', '0', '', '1', null);
INSERT INTO `ts_weibo` VALUES ('127', '12', null, '1320895894', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('129', '12', null, '1320898353', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('62', '7', null, '1319164270', '0', '0', '0', '0', '0', null, null, '0', '啊', '0', ',啊,', '0', '<p>\r\n	啊</p>\r\n');
INSERT INTO `ts_weibo` VALUES ('15', '1', 'fwef', '1318867859', '0', '0', '0', '0', '0', null, null, '1', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('142', '12', null, '1320999701', '0', '0', '0', '0', '0', null, null, '1', null, '0', ',阿斯达,', '0', null);
INSERT INTO `ts_weibo` VALUES ('85', '12', null, '1320725371', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',asda,asd,ad,as,das,d,asdasd,', '0', null);
INSERT INTO `ts_weibo` VALUES ('102', '12', null, '1320726536', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',sad,sdf,sdf,', '0', null);
INSERT INTO `ts_weibo` VALUES ('119', '12', null, '1320894990', '0', '0', '0', '0', '0', null, null, '0', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('87', '12', null, '1320725382', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',asda,asd,ad,as,das,d,asdasd,', '0', null);
INSERT INTO `ts_weibo` VALUES ('94', '12', null, '1320726137', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('61', '7', null, '1319164248', '0', '0', '0', '0', '0', null, null, '0', '啊', '0', '', '1', '<p>\r\n	啊</p>\r\n');
INSERT INTO `ts_weibo` VALUES ('26', '1', '&lt;p&gt;   124&lt;/p&gt;', '1318899873', '0', '0', '0', '0', '0', null, null, '1', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('13', '1', '转发微博', '1318023091', '0', '1', '2', '0', '0', null, null, '0', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('126', '12', null, '1320895534', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',sad,', '0', '');
INSERT INTO `ts_weibo` VALUES ('60', '7', null, '1319164212', '0', '0', '0', '0', '0', null, null, '0', '', '0', '', '0', '<p>\r\n	好网</p>\r\n');
INSERT INTO `ts_weibo` VALUES ('44', '1', '你的微笑 -- F.I.R.飞儿乐团', '1319008878', '0', '0', '0', '0', '4', 'a:1:{s:7:\"songurl\";s:6:\"179946\";}', null, '0', null, '0', ',f,f,e,', '0', '<p>\r\n	fefef</p>\r\n');
INSERT INTO `ts_weibo` VALUES ('72', '13', null, '1320675520', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',问我,', '0', null);
INSERT INTO `ts_weibo` VALUES ('116', '12', null, '1320894841', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',sad,sad,', '0', null);
INSERT INTO `ts_weibo` VALUES ('10', '1', '//@管理员:转发微博', '1318022975', '0', '0', '2', '0', '0', null, null, '1', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('106', '12', null, '1320757446', '0', '0', '0', '0', '0', null, null, '1', null, '0', ',而我,', '0', null);
INSERT INTO `ts_weibo` VALUES ('12', '1', '//@管理员:转发微博', '1318023062', '0', '0', '2', '0', '0', null, null, '1', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('57', '7', null, '1319163576', '0', '0', '0', '0', '1', 'a:3:{s:8:\"thumburl\";s:51:\"miniblog/d31ee4e2648277ea9bd08ce3ada6b4bb_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/d31ee4e2648277ea9bd08ce3ada6b4bb_middle.jpg\";s:6:\"picurl\";s:46:\"miniblog/d31ee4e2648277ea9bd08ce3ada6b4bb.jpeg\";}', null, '0', null, '0', ',图片,明星,', '0', '为这张照片添加描述');
INSERT INTO `ts_weibo` VALUES ('27', '1', '&lt;p&gt;   wefewf&lt;/p&gt;', '1318899977', '0', '0', '0', '0', '0', null, null, '1', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('70', '9', null, '1319610866', '0', '0', '0', '0', '1', 'a:3:{s:8:\"thumburl\";s:51:\"miniblog/aaf2ab41a21f2b8c7c9bc9aec2e4fcb9_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/aaf2ab41a21f2b8c7c9bc9aec2e4fcb9_middle.jpg\";s:6:\"picurl\";s:46:\"miniblog/aaf2ab41a21f2b8c7c9bc9aec2e4fcb9.jpeg\";}', null, '0', null, '0', '', '0', '为这张照片添加描述');
INSERT INTO `ts_weibo` VALUES ('99', '12', null, '1320726322', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',asd,', '0', null);
INSERT INTO `ts_weibo` VALUES ('4', '1', '转发微博', '1317965635', '0', '2', '1', '0', '0', null, null, '1', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('120', '12', null, '1320895047', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('130', '12', null, '1320898386', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('81', '12', null, '1320725230', '0', '0', '0', '0', '0', null, null, '1', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('93', '12', null, '1320725811', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('88', '12', null, '1320725406', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',asda,asd,ad,as,das,d,asdasd,', '0', null);
INSERT INTO `ts_weibo` VALUES ('131', '12', null, '1320898556', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('104', '12', null, '1320752778', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',按时打算,', '0', null);
INSERT INTO `ts_weibo` VALUES ('5', '1', 'fewfwef //@管理员:转发微博', '1318022620', '0', '0', '1', '0', '0', null, null, '1', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('140', '12', null, '1320998751', '0', '0', '0', '0', '0', null, null, '1', null, '0', ',阿斯达,', '0', null);
INSERT INTO `ts_weibo` VALUES ('11', '1', '//@管理员:转发微博', '1318022977', '0', '0', '2', '0', '0', null, null, '1', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('113', '12', null, '1320894643', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',asd,sad,sdaas,asdsa,', '0', null);
INSERT INTO `ts_weibo` VALUES ('153', '8', null, '1321170287', '0', '0', '0', '0', '3', 'a:5:{s:8:\"flashvar\";s:40:\"http://www.tudou.com/v/ZfPNyhp0c8Y/v.swf\";s:8:\"flashimg\";s:37:\"http://i2.tdimg.com/051/283/661/p.jpg\";s:4:\"host\";s:13:\"www.tudou.com\";s:6:\"source\";s:47:\"http://www.tudou.com/programs/view/ZfPNyhp0c8Y/\";s:5:\"title\";s:62:\"【清晰360P】Three Days Grace - I Hate Everything About You\";}', null, '0', null, '0', ',啊,', '0', '<p>\r\n	吾问无为谓</p>\r\n');
INSERT INTO `ts_weibo` VALUES ('141', '12', null, '1320999140', '0', '0', '0', '0', '0', null, null, '1', '', '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('137', '12', null, '1320899386', '0', '0', '0', '0', '0', null, null, '1', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('28', '1', '&lt;p&gt;   wfewfef&lt;/p&gt;', '1318899993', '0', '0', '0', '0', '0', null, null, '1', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('118', '12', null, '1320894858', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('71', '8', null, '1319611253', '0', '1', '0', '0', '0', null, null, '1', 'a ', '0', ',a,', '0', '<p>\r\n	aaaaaa</p>\r\n');
INSERT INTO `ts_weibo` VALUES ('92', '12', null, '1320725780', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',11,', '0', null);
INSERT INTO `ts_weibo` VALUES ('50', '6', null, '1319073334', '0', '2', '0', '0', '4', 'a:1:{s:7:\"songurl\";s:10:\"1769378719\";}', null, '1', null, '0', '', '0', '<p>\r\n	对弹道导弹</p>\r\n');
INSERT INTO `ts_weibo` VALUES ('112', '12', null, '1320894637', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',asd,sad,sdaas,', '0', null);
INSERT INTO `ts_weibo` VALUES ('65', '8', null, '1319344280', '0', '0', '0', '0', '3', 'a:5:{s:8:\"flashvar\";s:58:\"http://player.youku.com/player.php/sid/XMzA4MjgwMTY4/v.swf\";s:8:\"flashimg\";s:86:\"http://g1.ykimg.com/0100641F464E5639B0C8220519464A532A8865-CEF2-936A-E639-E77C7CE4B6DB\";s:4:\"host\";s:11:\"v.youku.com\";s:6:\"source\";s:47:\"http://v.youku.com/v_show/id_XMzA4MjgwMTY4.html\";s:5:\"title\";s:45:\"直击魏晨韩国现场演唱破晓  视频 \";}', null, '1', null, '0', '', '0', '');
INSERT INTO `ts_weibo` VALUES ('75', '12', null, '1320725135', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',asdsa,asdsa,sadsa,', '0', null);
INSERT INTO `ts_weibo` VALUES ('146', '12', null, '1321001863', '0', '0', '0', '0', '0', null, null, '1', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('144', '12', null, '1320999718', '0', '0', '0', '0', '0', null, null, '1', null, '0', ',阿斯达,', '0', null);
INSERT INTO `ts_weibo` VALUES ('156', '12', null, '1321331780', '0', '0', '0', '0', '3', 'a:5:{s:8:\"flashvar\";s:58:\"http://player.youku.com/player.php/sid/XMzIwOTQ4Njk2/v.swf\";s:8:\"flashimg\";s:86:\"http://g2.ykimg.com/0100641F464EBA658147F505AE3358202EA316-45E6-8301-BCCF-9E53CE36BD2D\";s:4:\"host\";s:11:\"v.youku.com\";s:6:\"source\";s:47:\"http://v.youku.com/v_show/id_XMzIwOTQ4Njk2.html\";s:5:\"title\";s:22:\"青春感恩记  2011 \";}', null, '0', null, '0', '', '0', '');
INSERT INTO `ts_weibo` VALUES ('51', '6', null, '1319073560', '0', '0', '0', '0', '0', null, null, '0', 'http://211.155.227.148:6688', '0', '', '0', '<p>\r\n	<a href=\"http://211.155.227.148:6688\">http://211.155.227.148:6688</a></p>\r\n');
INSERT INTO `ts_weibo` VALUES ('132', '12', null, '1320898942', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('98', '12', null, '1320726279', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',sad,', '0', null);
INSERT INTO `ts_weibo` VALUES ('3', '1', '转发微博', '1317964813', '0', '0', '1', '0', '0', null, null, '1', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('145', '12', null, '1320999723', '0', '0', '0', '0', '0', null, null, '1', null, '0', ',阿斯达,', '0', null);
INSERT INTO `ts_weibo` VALUES ('7', '1', '转发微博', '1318022954', '0', '0', '2', '0', '0', null, null, '1', null, '0', null, '0', null);
INSERT INTO `ts_weibo` VALUES ('151', '8', null, '1321170089', '0', '0', '0', '0', '1', 'a:2:{i:0;a:4:{s:8:\"thumburl\";s:51:\"miniblog/5ef54399268b3bcd83391a0ec042c043_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/5ef54399268b3bcd83391a0ec042c043_middle.jpg\";s:6:\"picurl\";s:45:\"miniblog/5ef54399268b3bcd83391a0ec042c043.jpg\";s:10:\"photo_text\";s:27:\"为这张照片添加描述\";}i:1;a:4:{s:8:\"thumburl\";s:51:\"miniblog/47c3f8f711c127ed35cfaf6f3030ff07_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/47c3f8f711c127ed35cfaf6f3030ff07_middle.jpg\";s:6:\"picurl\";s:45:\"miniblog/47c3f8f711c127ed35cfaf6f3030ff07.jpg\";s:10:\"photo_text\";s:27:\"为这张照片添加描述\";}}', null, '0', null, '0', ',啊,', '0', null);
INSERT INTO `ts_weibo` VALUES ('59', '7', null, '1319164021', '0', '0', '0', '0', '4', 'a:1:{s:7:\"songurl\";s:10:\"1769129005\";}', null, '0', null, '0', ',音乐,摇滚,', '0', '<p>\r\n	three days grace</p>\r\n');
INSERT INTO `ts_weibo` VALUES ('148', '12', null, '1321001905', '0', '0', '0', '0', '0', null, null, '1', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('66', '8', null, '1319344284', '0', '0', '0', '0', '3', 'a:5:{s:8:\"flashvar\";s:58:\"http://player.youku.com/player.php/sid/XMzA4MjgwMTY4/v.swf\";s:8:\"flashimg\";s:86:\"http://g1.ykimg.com/0100641F464E5639B0C8220519464A532A8865-CEF2-936A-E639-E77C7CE4B6DB\";s:4:\"host\";s:11:\"v.youku.com\";s:6:\"source\";s:47:\"http://v.youku.com/v_show/id_XMzA4MjgwMTY4.html\";s:5:\"title\";s:45:\"直击魏晨韩国现场演唱破晓  视频 \";}', null, '1', null, '0', '', '0', '');
INSERT INTO `ts_weibo` VALUES ('29', '1', '&lt;p&gt;   wef&lt;/p&gt;', '1318900284', '0', '0', '0', '0', '0', null, null, '1', 'wefwe', '0', ',ewfewf,ewfewf,', '0', null);
INSERT INTO `ts_weibo` VALUES ('56', '7', null, '1319163395', '0', '0', '0', '0', '0', null, null, '0', '你好', '0', ',问候,你好,', '0', null);
INSERT INTO `ts_weibo` VALUES ('43', '1', '', '1318998885', '0', '0', '0', '0', '1', 'a:3:{s:8:\"thumburl\";s:51:\"miniblog/cfbc6e82036488e63995e56499ad5830_small.jpg\";s:14:\"thumbmiddleurl\";s:52:\"miniblog/cfbc6e82036488e63995e56499ad5830_middle.jpg\";s:6:\"picurl\";s:46:\"miniblog/cfbc6e82036488e63995e56499ad5830.jpeg\";}', null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('91', '12', null, '1320725555', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('52', '6', null, '1319073601', '0', '0', '0', '0', '0', null, null, '0', '许多分散度分公司等', '0', '', '1', null);
INSERT INTO `ts_weibo` VALUES ('77', '12', null, '1320725188', '0', '0', '0', '0', '0', null, null, '1', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('134', '12', null, '1320899225', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('107', '12', null, '1320891733', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('79', '12', null, '1320725204', '0', '0', '0', '0', '0', null, null, '1', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('124', '12', null, '1320895162', '0', '0', '0', '0', '0', null, null, '0', null, '0', '', '0', null);
INSERT INTO `ts_weibo` VALUES ('67', '8', null, '1319344286', '0', '0', '0', '0', '3', 'a:5:{s:8:\"flashvar\";s:58:\"http://player.youku.com/player.php/sid/XMzA4MjgwMTY4/v.swf\";s:8:\"flashimg\";s:86:\"http://g1.ykimg.com/0100641F464E5639B0C8220519464A532A8865-CEF2-936A-E639-E77C7CE4B6DB\";s:4:\"host\";s:11:\"v.youku.com\";s:6:\"source\";s:47:\"http://v.youku.com/v_show/id_XMzA4MjgwMTY4.html\";s:5:\"title\";s:45:\"直击魏晨韩国现场演唱破晓  视频 \";}', null, '1', null, '0', '', '0', '');
INSERT INTO `ts_weibo` VALUES ('117', '12', null, '1320894851', '0', '0', '0', '0', '0', null, null, '0', null, '0', ',sad,sad,', '0', null);
INSERT INTO `ts_weibo` VALUES ('54', '1', null, '1319077450', '0', '0', '0', '0', '4', 'a:1:{s:7:\"songurl\";s:10:\"1769307414\";}', null, '1', null, '0', ',wef,wfe,ef,', '0', '<p>\r\n	w</p>\r\n');

-- ----------------------------
-- Table structure for `ts_weibo_atme`
-- ----------------------------
DROP TABLE IF EXISTS `ts_weibo_atme`;
CREATE TABLE `ts_weibo_atme` (
  `uid` int(11) NOT NULL,
  `weibo_id` int(11) NOT NULL,
  UNIQUE KEY `uid` (`uid`,`weibo_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ts_weibo_atme
-- ----------------------------
INSERT INTO `ts_weibo_atme` VALUES ('1', '13');

-- ----------------------------
-- Table structure for `ts_weibo_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ts_weibo_comment`;
CREATE TABLE `ts_weibo_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `reply_comment_id` int(11) NOT NULL,
  `reply_uid` int(11) NOT NULL,
  `weibo_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `ctime` int(11) NOT NULL,
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_weibo_comment
-- ----------------------------
INSERT INTO `ts_weibo_comment` VALUES ('1', '1', '0', '2', '1', '转发微博', '1317964813', '0');
INSERT INTO `ts_weibo_comment` VALUES ('8', '6', '0', '6', '50', '回复@zjhongge : 地地地道道', '1319073363', '1');
INSERT INTO `ts_weibo_comment` VALUES ('2', '1', '0', '1', '4', 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', '1318022612', '1');
INSERT INTO `ts_weibo_comment` VALUES ('9', '8', '0', '8', '71', 'a', '1319611272', '1');
INSERT INTO `ts_weibo_comment` VALUES ('6', '1', '0', '1', '2', 'fewfefewf', '1318384897', '0');
INSERT INTO `ts_weibo_comment` VALUES ('4', '1', '0', '1', '4', '回复@管理员 : fwefewf', '1318022628', '1');
INSERT INTO `ts_weibo_comment` VALUES ('5', '1', '0', '1', '13', '[拥抱] ', '1318384866', '0');
INSERT INTO `ts_weibo_comment` VALUES ('3', '1', '0', '1', '4', 'fewfwef', '1318022620', '1');
INSERT INTO `ts_weibo_comment` VALUES ('7', '6', '0', '6', '50', '地地道道', '1319073354', '1');

-- ----------------------------
-- Table structure for `ts_weibo_favorite`
-- ----------------------------
DROP TABLE IF EXISTS `ts_weibo_favorite`;
CREATE TABLE `ts_weibo_favorite` (
  `uid` int(11) NOT NULL,
  `weibo_id` int(11) NOT NULL,
  PRIMARY KEY (`uid`,`weibo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ts_weibo_favorite
-- ----------------------------
INSERT INTO `ts_weibo_favorite` VALUES ('1', '1');
INSERT INTO `ts_weibo_favorite` VALUES ('1', '2');
INSERT INTO `ts_weibo_favorite` VALUES ('1', '52');
INSERT INTO `ts_weibo_favorite` VALUES ('7', '44');
INSERT INTO `ts_weibo_favorite` VALUES ('7', '59');

-- ----------------------------
-- Table structure for `ts_weibo_follow`
-- ----------------------------
DROP TABLE IF EXISTS `ts_weibo_follow`;
CREATE TABLE `ts_weibo_follow` (
  `follow_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`follow_id`),
  KEY `fid` (`fid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ts_weibo_follow
-- ----------------------------
INSERT INTO `ts_weibo_follow` VALUES ('14', '8', '1', '0');
INSERT INTO `ts_weibo_follow` VALUES ('1', '1', '2', '0');
INSERT INTO `ts_weibo_follow` VALUES ('23', '13', '1', '0');
INSERT INTO `ts_weibo_follow` VALUES ('8', '1', '6', '0');
INSERT INTO `ts_weibo_follow` VALUES ('2', '2', '1', '0');
INSERT INTO `ts_weibo_follow` VALUES ('9', '6', '1', '0');
INSERT INTO `ts_weibo_follow` VALUES ('15', '1', '5', '0');
INSERT INTO `ts_weibo_follow` VALUES ('16', '1', '9', '0');
INSERT INTO `ts_weibo_follow` VALUES ('26', '1', '16', '0');
INSERT INTO `ts_weibo_follow` VALUES ('13', '1', '8', '0');
INSERT INTO `ts_weibo_follow` VALUES ('17', '9', '1', '0');
INSERT INTO `ts_weibo_follow` VALUES ('10', '6', '4', '0');
INSERT INTO `ts_weibo_follow` VALUES ('12', '7', '1', '0');
INSERT INTO `ts_weibo_follow` VALUES ('27', '16', '1', '0');
INSERT INTO `ts_weibo_follow` VALUES ('4', '2', '2', '1');
INSERT INTO `ts_weibo_follow` VALUES ('20', '1', '12', '0');
INSERT INTO `ts_weibo_follow` VALUES ('18', '1', '11', '0');
INSERT INTO `ts_weibo_follow` VALUES ('25', '13', '5', '0');
INSERT INTO `ts_weibo_follow` VALUES ('11', '1', '7', '0');
INSERT INTO `ts_weibo_follow` VALUES ('22', '1', '13', '0');
INSERT INTO `ts_weibo_follow` VALUES ('7', '5', '1', '0');
INSERT INTO `ts_weibo_follow` VALUES ('19', '11', '1', '0');

-- ----------------------------
-- Table structure for `ts_weibo_follow_group`
-- ----------------------------
DROP TABLE IF EXISTS `ts_weibo_follow_group`;
CREATE TABLE `ts_weibo_follow_group` (
  `follow_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`follow_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_weibo_follow_group
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_weibo_follow_group_link`
-- ----------------------------
DROP TABLE IF EXISTS `ts_weibo_follow_group_link`;
CREATE TABLE `ts_weibo_follow_group_link` (
  `follow_group_link_id` int(11) NOT NULL AUTO_INCREMENT,
  `follow_group_id` int(11) NOT NULL,
  `follow_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`follow_group_link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ts_weibo_follow_group_link
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_weibo_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `ts_weibo_plugin`;
CREATE TABLE `ts_weibo_plugin` (
  `plugin_id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_name` varchar(120) NOT NULL,
  `icon_pic` varchar(120) NOT NULL,
  `plugin_path` varchar(255) NOT NULL,
  PRIMARY KEY (`plugin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_weibo_plugin
-- ----------------------------
INSERT INTO `ts_weibo_plugin` VALUES ('1', '图片', '', 'image');
INSERT INTO `ts_weibo_plugin` VALUES ('4', '音乐', '', 'music');
INSERT INTO `ts_weibo_plugin` VALUES ('3', '视频', '', 'video');

-- ----------------------------
-- Table structure for `ts_weibo_star`
-- ----------------------------
DROP TABLE IF EXISTS `ts_weibo_star`;
CREATE TABLE `ts_weibo_star` (
  `star_id` int(11) NOT NULL AUTO_INCREMENT,
  `star_group_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`star_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ts_weibo_star
-- ----------------------------

-- ----------------------------
-- Table structure for `ts_weibo_star_group`
-- ----------------------------
DROP TABLE IF EXISTS `ts_weibo_star_group`;
CREATE TABLE `ts_weibo_star_group` (
  `star_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `top_group_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `display_order` int(11) NOT NULL DEFAULT '0',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`star_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_weibo_star_group
-- ----------------------------
INSERT INTO `ts_weibo_star_group` VALUES ('1', '0', '000000', '0', '1318783942');

-- ----------------------------
-- Table structure for `ts_weibo_topic`
-- ----------------------------
DROP TABLE IF EXISTS `ts_weibo_topic`;
CREATE TABLE `ts_weibo_topic` (
  `topic_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `count` int(11) NOT NULL,
  `ctime` int(11) NOT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_weibo_topic
-- ----------------------------
INSERT INTO `ts_weibo_topic` VALUES ('1', 'f', '0', '1317190873');
INSERT INTO `ts_weibo_topic` VALUES ('2', 'w', '0', '1317190879');
INSERT INTO `ts_weibo_topic` VALUES ('3', 'adsf', '0', '1317190883');

-- ----------------------------
-- Table structure for `ts_weibo_topics`
-- ----------------------------
DROP TABLE IF EXISTS `ts_weibo_topics`;
CREATE TABLE `ts_weibo_topics` (
  `topics_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) unsigned NOT NULL,
  `domain` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `recommend` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ctime` int(11) DEFAULT NULL,
  `isdel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`topics_id`),
  UNIQUE KEY `page` (`domain`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ts_weibo_topics
-- ----------------------------

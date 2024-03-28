/*
 Navicat Premium Data Transfer

 Source Server         : BYSJ
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : manz_zzxcsm

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 28/03/2024 17:13:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_addressbook_zzxcsm
-- ----------------------------
DROP TABLE IF EXISTS `t_addressbook_zzxcsm`;
CREATE TABLE `t_addressbook_zzxcsm`  (
  `id_zzxcsm` int NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `user_id_zzxcsm` int NULL DEFAULT NULL COMMENT '用户id',
  `nick_zzxcsm` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `gender_zzxcsm` int NULL DEFAULT NULL COMMENT '性别',
  `phone_zzxcsm` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `city_zzxcsm` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `address_zzxcsm` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `note_zzxcsm` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `status_zzxcsm` int NULL DEFAULT NULL COMMENT '状态 0 非默认 1 默认',
  PRIMARY KEY (`id_zzxcsm`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_addressbook_zzxcsm
-- ----------------------------
INSERT INTO `t_addressbook_zzxcsm` VALUES (1, 1, '张三', 1, '15575077781', '长沙', '湖南工业职业技术学院图书馆', '学校', 1);
INSERT INTO `t_addressbook_zzxcsm` VALUES (2, 1, '李四', 1, '16577816856', '长沙', '湖南楚怡职业技术大学', '学校', 1);
INSERT INTO `t_addressbook_zzxcsm` VALUES (3, 1, '张三2', 1, '16577568456', '长沙', '湖南楚怡职业技术大学', '学校', 0);
INSERT INTO `t_addressbook_zzxcsm` VALUES (4, 1, '王五', 1, '13577869585', '北京', '北京航空航天大学', '学校', 1);

-- ----------------------------
-- Table structure for t_admin_zzxcsm
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_zzxcsm`;
CREATE TABLE `t_admin_zzxcsm`  (
  `id_zzxcsm` int NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `username_zzxcsm` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员账号',
  `password_zzxcsm` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id_zzxcsm`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_admin_zzxcsm
-- ----------------------------
INSERT INTO `t_admin_zzxcsm` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for t_car_zzxcsm
-- ----------------------------
DROP TABLE IF EXISTS `t_car_zzxcsm`;
CREATE TABLE `t_car_zzxcsm`  (
  `id_zzxcsm` int NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `user_id_zzxcsm` int NOT NULL COMMENT '用户id',
  `goods_id_zzxcsm` int NULL DEFAULT NULL COMMENT '商品id',
  `imgurl_zzxcsm` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `title_zzxcsm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `style_zzxcsm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品小分类',
  `topic_zzxcsm` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品参数',
  `price_zzxcsm` float NULL DEFAULT NULL COMMENT '商品价格',
  `num_zzxcsm` int NULL DEFAULT NULL COMMENT '商品数量',
  PRIMARY KEY (`id_zzxcsm`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_car_zzxcsm
-- ----------------------------
INSERT INTO `t_car_zzxcsm` VALUES (1, 11, 1, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg33.jpg,https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg34.jpg,https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg37.jpg', '纳西达', '服装', 'L XL XLL', 88, 2);
INSERT INTO `t_car_zzxcsm` VALUES (2, 12, 2, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg38.jpg,https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg38.jpg', '僵尸新娘', '服装', 'XL', 56, 1);

-- ----------------------------
-- Table structure for t_category_zzxcsm
-- ----------------------------
DROP TABLE IF EXISTS `t_category_zzxcsm`;
CREATE TABLE `t_category_zzxcsm`  (
  `id_zzxcsm` int NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `style_zzxcsm` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `type_zzxcsm` int NULL DEFAULT NULL COMMENT '分类对象{1:漫展, 2:周边,3:装备}',
  PRIMARY KEY (`id_zzxcsm`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_category_zzxcsm
-- ----------------------------
INSERT INTO `t_category_zzxcsm` VALUES (1, '二次元展', 1);
INSERT INTO `t_category_zzxcsm` VALUES (2, '原神展', 1);
INSERT INTO `t_category_zzxcsm` VALUES (3, '公益展', 1);
INSERT INTO `t_category_zzxcsm` VALUES (4, '友爱展', 1);
INSERT INTO `t_category_zzxcsm` VALUES (5, '其他展', 1);
INSERT INTO `t_category_zzxcsm` VALUES (6, '服装', 3);
INSERT INTO `t_category_zzxcsm` VALUES (7, '配饰', 3);
INSERT INTO `t_category_zzxcsm` VALUES (8, '武器道具', 3);
INSERT INTO `t_category_zzxcsm` VALUES (9, '妆容', 3);
INSERT INTO `t_category_zzxcsm` VALUES (10, '鞋子', 3);
INSERT INTO `t_category_zzxcsm` VALUES (11, '手办', 2);
INSERT INTO `t_category_zzxcsm` VALUES (12, '立牌', 2);
INSERT INTO `t_category_zzxcsm` VALUES (13, '卡贴', 2);
INSERT INTO `t_category_zzxcsm` VALUES (14, '模型', 2);
INSERT INTO `t_category_zzxcsm` VALUES (15, '书籍', 2);

-- ----------------------------
-- Table structure for t_collection_zzxcsm
-- ----------------------------
DROP TABLE IF EXISTS `t_collection_zzxcsm`;
CREATE TABLE `t_collection_zzxcsm`  (
  `id_zzxcsm` int NOT NULL AUTO_INCREMENT COMMENT '收藏id 自动生成',
  `user_id_zzxcsm` int NOT NULL COMMENT '用户id',
  `post_id_zzxcsm` int NOT NULL COMMENT '帖子id',
  `status_zzxcsm` int NULL DEFAULT NULL COMMENT '收藏状态',
  PRIMARY KEY (`id_zzxcsm`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表\r\n' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_collection_zzxcsm
-- ----------------------------
INSERT INTO `t_collection_zzxcsm` VALUES (1, 10, 1, 1);
INSERT INTO `t_collection_zzxcsm` VALUES (2, 11, 1, 1);
INSERT INTO `t_collection_zzxcsm` VALUES (3, 11, 2, 1);
INSERT INTO `t_collection_zzxcsm` VALUES (4, 13, 3, 1);

-- ----------------------------
-- Table structure for t_coser_zzxcsm
-- ----------------------------
DROP TABLE IF EXISTS `t_coser_zzxcsm`;
CREATE TABLE `t_coser_zzxcsm`  (
  `id_zzxcsm` int NOT NULL AUTO_INCREMENT COMMENT 'COSid',
  `ex_id_zzxcsm` int NULL DEFAULT NULL COMMENT '漫展id',
  `name_zzxcsm` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'COS名称',
  `imgurl_zzxcsm` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'COS图片',
  `content_zzxcsm` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'COS简介',
  PRIMARY KEY (`id_zzxcsm`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_coser_zzxcsm
-- ----------------------------
INSERT INTO `t_coser_zzxcsm` VALUES (1, 1, '奥黛丽', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/cb86fa59-e800-46a1-bf81-84ae577c9b35.gif', '美丽的小姐');
INSERT INTO `t_coser_zzxcsm` VALUES (2, 1, '佛尔修', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/b591c346-8138-4a99-8e63-515e6b80e98c.gif', '优秀的小说家也是优秀的嘉宾');
INSERT INTO `t_coser_zzxcsm` VALUES (3, 2, '迪奥', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/b0a243df-6891-4aa8-8867-f9fe9520d3b1.jpg', '专业的涂鸦及coser');
INSERT INTO `t_coser_zzxcsm` VALUES (4, 3, '菲儿', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/d0621155-2cc0-4924-8f5c-a023a75f2ea9.jpg', '这是非常棒的嘉宾');
INSERT INTO `t_coser_zzxcsm` VALUES (5, 4, '伦纳德', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/459fbb7b-4539-4af6-8970-5d0135b42267.gif', '是诗人也是嘉宾');
INSERT INTO `t_coser_zzxcsm` VALUES (6, 5, '李傲', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/d1c22fc4-05b8-4005-8d1e-f45f1c3dd41e.jpg', '这是非常厉害的嘉宾');
INSERT INTO `t_coser_zzxcsm` VALUES (7, 5, '张菲菲', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/f147fb30-54bb-4a0b-8de5-c4cd226961aa.jpg', '嘉宾来了');
INSERT INTO `t_coser_zzxcsm` VALUES (8, 6, '烧烤AB组合', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/147f6882-b439-47f7-8f2b-133b983919c4.jpg', '卖烧烤的也要参加涂鸦展');
INSERT INTO `t_coser_zzxcsm` VALUES (9, 7, '陈诗曼', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/11f728d7-1d9f-414f-af4a-3c823dc25d3b.jpg', '这是以为优秀的嘉宾');
INSERT INTO `t_coser_zzxcsm` VALUES (10, 8, '尼尔', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/a5d6ed63-a8db-46af-8a3d-83f70e03c01c.jpg', '很厉害的嘉宾');

-- ----------------------------
-- Table structure for t_ex_zzxcsm
-- ----------------------------
DROP TABLE IF EXISTS `t_ex_zzxcsm`;
CREATE TABLE `t_ex_zzxcsm`  (
  `id_zzxcsm` int NOT NULL AUTO_INCREMENT COMMENT '漫展id',
  `category_id_zzxcsm` int NOT NULL COMMENT '分类id',
  `title_zzxcsm` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '漫展名称',
  `stime_zzxcsm` date NOT NULL COMMENT '漫展开始时间',
  `etime_zzxcsm` date NOT NULL COMMENT '漫展结束时间',
  `city_zzxcsm` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '漫展举办城市',
  `address_zzxcsm` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `host_zzxcsm` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '漫展举办方',
  `price_zzxcsm` float NULL DEFAULT NULL COMMENT '漫展单价',
  `content_zzxcsm` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '漫展介绍',
  `detail_zzxcsm` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详情图片列表',
  `status_zzxcsm` int NULL DEFAULT 1 COMMENT '0 待发布 1 已发布 2 已结束',
  PRIMARY KEY (`id_zzxcsm`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ex_zzxcsm
-- ----------------------------
INSERT INTO `t_ex_zzxcsm` VALUES (1, 2, '原神展', '2024-01-10', '2024-01-12', '长沙', '湖南省长沙市开福区湖南国际会展中心', '原神举办方', 10, '<p>这个二次元涂鸦展是一个集结了许多优秀涂鸦艺术家作品的展览。</p>', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/325003a0-a60c-4111-a247-e9b20664a48d.jpg,https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/3f4e76e4-6182-489a-af35-29bcc143363d.png', 1);
INSERT INTO `t_ex_zzxcsm` VALUES (2, 5, '梦幻', '2024-01-18', '2024-01-25', '长沙', '湖南省长沙市长沙县长沙国际会展中心', '官方', 10, '<p><span style=\"color: #374151; font-family: Inter, -apple-system, BlinkMacSystemFont, \'PingFang SC\', \'Hiragino Sans GB\', \'noto sans\', \'Microsoft YaHei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">从经典的动漫人物到原创的二次元形象，每幅作品都展现了艺术家们的创意和技巧</span></p>', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/69c6e5fd-6cfe-4b74-b191-3b6fd8cfc845.jpg,https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/6b1bae37-1c1e-4e53-9698-48d587d3ba4d.jpg', 1);
INSERT INTO `t_ex_zzxcsm` VALUES (3, 5, '人物', '2024-01-10', '2024-01-13', '长沙', '湖南省长沙市岳麓区湖南工业职业技术学院图书馆', '官方', 25, '<p><span style=\"color: #374151; font-family: Inter, -apple-system, BlinkMacSystemFont, \'PingFang SC\', \'Hiragino Sans GB\', \'noto sans\', \'Microsoft YaHei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">观众可以在展览中欣赏到色彩斑斓、富有想象力的作品，感受到二次元文化的魅力</span></p>', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/953f3cfa-cef8-4ec3-84ed-dff1d176e517.jpg,https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/4f154056-0809-43fb-b776-7876e77344fb.jpg', 1);
INSERT INTO `t_ex_zzxcsm` VALUES (4, 3, '和善', '2024-01-02', '2024-01-08', '长沙', '湖南省长沙市岳麓区湖南工业职业技术学院(公交站)', '官方', 20, '<p><span style=\"color: #374151; font-family: Inter, -apple-system, BlinkMacSystemFont, \'PingFang SC\', \'Hiragino Sans GB\', \'noto sans\', \'Microsoft YaHei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">展览不仅有绘画作品，还可能包括涂鸦艺术衍生品的展示和销售，让观众能够带着自己喜爱的作品回家</span></p>', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/26d05896-4bc9-4990-afd7-889e85199214.png,https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/b25e72a5-3521-4bfc-8f08-9a29b673b29d.jpg', 1);
INSERT INTO `t_ex_zzxcsm` VALUES (5, 3, '爱心展', '2024-01-25', '2024-01-26', '长沙', '湖南省长沙市岳麓区湖南工业职业技术学院图书馆', '官方', 20, '<p><span style=\"color: #374151; font-family: Inter, -apple-system, BlinkMacSystemFont, \'PingFang SC\', \'Hiragino Sans GB\', \'noto sans\', \'Microsoft YaHei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">整个展览充满了活力和创意，是一个让人流连忘返的艺术盛宴。</span></p>', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/4555f000-25fb-4b29-b0de-5ee6e8b85b8d.jpg,https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/2ae27ed0-785f-4a24-8aae-535fc283c08b.jpg', 1);
INSERT INTO `t_ex_zzxcsm` VALUES (6, 5, '淄博展', '2024-02-04', '2024-02-05', '淄博', '山东省淄博市张店区淄博会展中心', '淄博', 20, '<p>要在漫展中脱颖而出，首先要选择与众不同的角色扮演，可以是冷门但有特色的角色，也可以是热门角色的别具匠心的演绎方式。其次要注重细节，包括服装制作、化妆技巧、道具搭配等，力求达到高度还原角色形象的效果。同时要积极参与各种活动，展现自己的才艺和特长，与其他爱好者交流互动，展现自己的独特魅力。</p>', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/870dc760-32e4-44dc-984d-1988ed812797.jpg,https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/e48a3adc-8e77-40ba-a066-7a36212380fb.jpg', 1);
INSERT INTO `t_ex_zzxcsm` VALUES (7, 5, '北京古物展览', '2024-01-17', '2024-01-20', '北京', '北京市朝阳区北京会展中心海关', '北京', 20, '<p>要在漫展中脱颖而出，首先要选择与众不同的角色扮演，可以是冷门但有特色的角色，也可以是热门角色的别具匠心的演绎方式。其次要注重细节，包括服装制作、化妆技巧、道具搭配等，力求达到高度还原角色形象的效果。同时要积极参与各种活动，展现自己的才艺和特长，与其他爱好者交流互动，展现自己的独特魅力。</p>', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/346d1c5c-3812-40ea-894c-0970d11e7aa6.jpg,https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/419c8fd8-d1e2-4a0b-a65a-d27c705cefba.jpg', 1);
INSERT INTO `t_ex_zzxcsm` VALUES (8, 1, '萤火虫', '2024-01-16', '2024-01-19', NULL, '上海市青浦区国家会展中心(上海)虹馆EH', '上海', 66, '<p><strong>萤火虫展览欢迎你的到来</strong></p>', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/55600213-9ff8-4971-91d2-76cdb76726e1.jpg,https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/df243107-f5fe-480c-9dd0-1a72202de1f3.jpg', 1);

-- ----------------------------
-- Table structure for t_goods_comment_zzxcsm
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_comment_zzxcsm`;
CREATE TABLE `t_goods_comment_zzxcsm`  (
  `id_zzxcsm` int NOT NULL AUTO_INCREMENT COMMENT '商品评论id',
  `content_zzxcsm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `user_id_zzxcsm` int NULL DEFAULT NULL COMMENT '评论人id',
  `create_time_zzxcsm` datetime NULL DEFAULT NULL COMMENT '评论时间',
  `goods_id_zzxcsm` int NULL DEFAULT NULL COMMENT '商品id',
  `thumb_num_zzxcsm` int NULL DEFAULT 0 COMMENT '点赞数',
  `reply_num_zzxcsm` int NULL DEFAULT 0 COMMENT '回复数',
  `parent_id_zzxcsm` int NULL DEFAULT NULL COMMENT '被回复人id',
  `is_delete_zzxcsm` int NULL DEFAULT 0 COMMENT '1 删除 0 不删除',
  `is_root_zzxcsm` int NULL DEFAULT NULL COMMENT '1 是 0 不是',
  PRIMARY KEY (`id_zzxcsm`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_goods_comment_zzxcsm
-- ----------------------------

-- ----------------------------
-- Table structure for t_goods_zzxcsm
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_zzxcsm`;
CREATE TABLE `t_goods_zzxcsm`  (
  `id_zzxcsm` int NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `category_id_zzxcsm` int NULL DEFAULT NULL COMMENT '分类id',
  `title_zzxcsm` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `price_zzxcsm` float NULL DEFAULT NULL COMMENT '商品单价',
  `imgurl_zzxcsm` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `topic_zzxcsm` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品参数',
  `status_zzxcsm` int NULL DEFAULT NULL COMMENT '是否上架 1 上架 0 下架',
  PRIMARY KEY (`id_zzxcsm`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_goods_zzxcsm
-- ----------------------------
INSERT INTO `t_goods_zzxcsm` VALUES (1, 6, '纳西达', 88, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg33.jpg,https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg34.jpg,https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg37.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (2, 6, '僵尸新娘', 56, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg38.jpg,https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg38.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (3, 6, '尼尔机械纪元2', 123, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg35.jpg,https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg42.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (4, 6, '凯尔', 66, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg41.jpg,https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg40.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (5, 7, '星之光项链', 19, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg27.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (6, 7, '紫色假发', 29, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg29.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (7, 8, '长枪', 88, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg16.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (8, 9, '草神同款妆容', 78, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg33.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (9, 11, '原神散兵', 78, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg9.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (10, 11, '纳西妲', 79, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg34.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (11, 11, '尼尔', 79, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg35.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (12, 11, '神里绫华', 100, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg7.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (13, 11, '凯尔', 88, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg31.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (14, 11, '秦风', 99, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg4.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (15, 11, '贤者', 78, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg18.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (16, 11, '火花', 78, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg19.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (17, 12, '火花', 78, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg19.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (18, 12, '贤者', 18, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg18.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (19, 12, '秦风', 18, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg4.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (20, 13, '秦风', 18, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg4.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (21, 13, '僵尸新娘', 18, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg38.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (22, 13, '紫薯', 2, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg29.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (23, 13, '名称', 2, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg36.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (24, 14, '海尔', 2, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg36.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (25, 14, '美少女', 56, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg11.jpg', 'http://dummyimage.com/400x400', 1);
INSERT INTO `t_goods_zzxcsm` VALUES (26, 11, '哈哈哈', 123, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/179cc0d6-4f50-46b6-894a-f4546bd58683.gif', NULL, 1);
INSERT INTO `t_goods_zzxcsm` VALUES (27, 11, '阿兹柯', 12, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/95c4d0e6-b45b-4f82-acb3-51134c00ce22.gif', NULL, 1);
INSERT INTO `t_goods_zzxcsm` VALUES (28, 12, '阿兹克', 5, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/logo/c78254cb-e300-4b70-8979-417523c46b8a.gif', NULL, 1);

-- ----------------------------
-- Table structure for t_order_zzxcsm
-- ----------------------------
DROP TABLE IF EXISTS `t_order_zzxcsm`;
CREATE TABLE `t_order_zzxcsm`  (
  `id_zzxcsm` int NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `create_time_zzxcsm` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `status_zzxcsm` int NULL DEFAULT NULL COMMENT '订单状态 0 全部订单 1 待支付 2 待发货 3 待收货 4 已完成 ',
  `user_id_zzxcsm` int NULL DEFAULT NULL COMMENT '用户id',
  `goods_id_zzxcsm` int NULL DEFAULT NULL COMMENT '商品id',
  `price_zzxcsm` int NULL DEFAULT NULL COMMENT '商品单价',
  `num_zzxcsm` int NULL DEFAULT NULL COMMENT '商品数量',
  `total_price_zzxcsm` int NULL DEFAULT NULL COMMENT '商品总价',
  `addressbook_id_zzxcsm` int NULL DEFAULT NULL COMMENT '地址id',
  PRIMARY KEY (`id_zzxcsm`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_order_zzxcsm
-- ----------------------------
INSERT INTO `t_order_zzxcsm` VALUES (1, '2024-01-11 10:18:08', 1, 11, 2, 56, 2, 112, 2);
INSERT INTO `t_order_zzxcsm` VALUES (2, '2024-01-11 10:19:21', 1, 11, 9, 78, 1, 78, 2);
INSERT INTO `t_order_zzxcsm` VALUES (3, '2024-01-11 10:19:37', 1, 11, 7, 88, 1, 88, 2);
INSERT INTO `t_order_zzxcsm` VALUES (4, '2024-01-11 10:19:55', 1, 11, 12, 100, 1, 100, 2);
INSERT INTO `t_order_zzxcsm` VALUES (5, '2024-01-11 10:20:00', 1, 12, 12, 100, 1, 100, 4);

-- ----------------------------
-- Table structure for t_post_comment_zzxcsm
-- ----------------------------
DROP TABLE IF EXISTS `t_post_comment_zzxcsm`;
CREATE TABLE `t_post_comment_zzxcsm`  (
  `id_zzxcsm` int NOT NULL AUTO_INCREMENT COMMENT '收藏id',
  `content_zzxcsm` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '帖子内容',
  `user_id_zzxcsm` int NULL DEFAULT NULL COMMENT '用户id',
  `create_time_zzxcsm` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `post_id_zzxcsm` int NULL DEFAULT NULL COMMENT '帖子id',
  `thumb_num_zzxcsm` int NULL DEFAULT 0 COMMENT '点赞 数',
  `reply_num_zzxcsm` int NULL DEFAULT 0 COMMENT '回复数',
  `parent_id_zzxcsm` int NULL DEFAULT NULL COMMENT '父亲id',
  `is_delete_zzxcsm` int NULL DEFAULT 0 COMMENT '删除',
  `is_root_zzxcsm` int NULL DEFAULT NULL COMMENT 'root',
  PRIMARY KEY (`id_zzxcsm`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_post_comment_zzxcsm
-- ----------------------------
INSERT INTO `t_post_comment_zzxcsm` VALUES (1, '在变得平凡这方面我颇有心得', 10, '2024-01-10 21:29:46', 1, 0, 0, 1, 0, 1);
INSERT INTO `t_post_comment_zzxcsm` VALUES (2, '对于这一点，我也有自己的看法', 11, '2024-01-10 21:30:17', 1, 0, 0, 1, 0, 1);
INSERT INTO `t_post_comment_zzxcsm` VALUES (3, '非常支持博主，博主太强了，orz', 12, '2024-01-10 21:30:42', 1, 0, 0, 1, 0, 1);
INSERT INTO `t_post_comment_zzxcsm` VALUES (4, '非常支持博主，博主太强了，orz', 12, '2024-01-10 21:30:49', 2, 0, 0, 2, 0, 1);
INSERT INTO `t_post_comment_zzxcsm` VALUES (5, '我又来水评论啦', 11, '2024-01-10 21:31:09', 2, 0, 0, 2, 0, 1);
INSERT INTO `t_post_comment_zzxcsm` VALUES (6, '我对于这点也十分赞同', 13, '2024-01-10 21:31:31', 2, 0, 0, 2, 0, 1);

-- ----------------------------
-- Table structure for t_post_zzxcsm
-- ----------------------------
DROP TABLE IF EXISTS `t_post_zzxcsm`;
CREATE TABLE `t_post_zzxcsm`  (
  `id_zzxcsm` int NOT NULL AUTO_INCREMENT COMMENT '帖子id',
  `user_id_zzxcsm` int NOT NULL COMMENT '用户id',
  `create_time_zzxcsm` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `title_zzxcsm` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '帖子标题',
  `imgurl_zzxcsm` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '帖子图片',
  `content_zzxcsm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '帖子内容',
  `thumb_num_zzxcsm` int NULL DEFAULT 0 COMMENT '点赞数',
  `collection_num_zzxcsm` int NULL DEFAULT 0 COMMENT '收藏数',
  `status_zzxcsm` int NULL DEFAULT 1 COMMENT '状态 0 待审核  1 封禁 2 正常 3 已驳回',
  `refuse_reason_zzxcsm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驳回原因',
  PRIMARY KEY (`id_zzxcsm`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_post_zzxcsm
-- ----------------------------
INSERT INTO `t_post_zzxcsm` VALUES (1, 11, '2024-01-10 19:47:36', '怎样才能变得平凡?', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg10.jpg', '要变得平凡，可以尝试放下虚荣心，不追求过高的名利地位，踏实做好手头的工作，平凡中尽职尽责，尊重他人，不张扬自己。同时，要学会接受自己的平凡，不断提升自己的内在修养和素质，做一个真诚、善良、有爱心的人。', 4, 0, 3, '不符合社区规范');
INSERT INTO `t_post_zzxcsm` VALUES (2, 11, '2024-01-10 20:26:45', '怎样才能成为优秀的cosplayer?', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg10.jpg', '要成为优秀的cosplayer，首先要热爱角色扮演，深入了解所要扮演的角色，尽可能还原角色的外貌和性格。其次，要注重细节，包括服装、化妆、道具等方面的精雕细琢。同时，要不断提升演技和表演技巧，塑造出更加生动的角色形象。最重要的是，要尊重原作，尊重其他coser，保持对角色和作品的热爱与敬畏。', 3, 0, 2, NULL);
INSERT INTO `t_post_zzxcsm` VALUES (3, 12, '2024-01-10 21:00:20', '如何在漫展中脱颖而出？', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg12.jpg', '要在漫展中脱颖而出，首先要选择与众不同的角色扮演，可以是冷门但有特色的角色，也可以是热门角色的别具匠心的演绎方式。其次要注重细节，包括服装制作、化妆技巧、道具搭配等，力求达到高度还原角色形象的效果。同时要积极参与各种活动，展现自己的才艺和特长，与其他爱好者交流互动，展现自己的独特魅力。', 2, 0, 2, NULL);
INSERT INTO `t_post_zzxcsm` VALUES (4, 13, '2024-01-10 21:03:44', '成为一名优秀的二次元展览策划人', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg15.jpg', '要成为一名优秀的二次元展览策划人，需要对二次元文化有深刻的理解和热爱。首先要深入了解展览的主题，精心策划展览内容，包括精选展品、布置场地、设计互动环节等，力求为观众营造沉浸式的体验。同时要与艺术家、制作人等合作，挖掘优秀的二次元IP，为展览注入新鲜的元素。在展览期间，要关注观众反馈，不断改进和创新，为二次元文化的传播和发展贡献自己的力量。', 0, 0, 0, NULL);
INSERT INTO `t_post_zzxcsm` VALUES (5, 12, '2024-01-10 21:06:08', '如何在漫展上成为一名备受瞩目的展商？', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg10.jpg', '要在漫展上成为备受瞩目的展商，首先要选择独特而吸引人的商品或展品，可以考虑推出限量版商品、与热门IP合作的周边产品等。其次要注重展台的设计和布置，营造出吸引人的氛围，吸引观众驻足品味。同时要加强与粉丝的互动，可以举办签售会、抽奖活动等，增加展台的人气和曝光度。最重要的是要保持热情和耐心，倾听观众的意见和建议，不断改进和创新，为观众带来更好的体验。', 0, 0, 0, NULL);
INSERT INTO `t_post_zzxcsm` VALUES (6, 13, '2024-01-11 09:41:19', '如何在二次元涂鸦展上吸引更多观众？', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg2.png', '要在二次元涂鸦展上吸引更多观众，首先要选择独特而具有吸引力的涂鸦作品或周边商品，可以考虑推出与知名二次元IP合作的限量版涂鸦艺术品等。其次要注重展台的设计和布置，营造出充满二次元氛围的环境，吸引观众驻足品味。同时要加强与粉丝的互动，可以举办涂鸦创作现场、Cosplay表演等活动，增加展台的人气和曝光度。最重要的是要保持热情和耐心，倾听观众的意见和建议，不断改进和创新，为观众带来更好的体验。', 0, 0, 2, NULL);
INSERT INTO `t_post_zzxcsm` VALUES (7, 14, '2024-01-11 09:45:09', '在二次元活动中如何吸引更多粉丝的方法？', 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fimg9.jpg', '要在二次元活动中吸引更多粉丝，首先要选择独特而吸引人的二次元产品或展品，可以考虑推出限量版周边、与热门动漫IP合作的商品等。其次要注重展台的设计和布置，营造出二次元氛围，吸引粉丝驻足品味。同时要加强与粉丝的互动，可以举办见面会、Cosplay比赛等，增加展台的人气和曝光度。最重要的是要保持热情和耐心，倾听粉丝的意见和建议，不断改进和创新，为粉丝带来更好的体验。', 0, 0, 2, NULL);

-- ----------------------------
-- Table structure for t_thumb_zzxcsm
-- ----------------------------
DROP TABLE IF EXISTS `t_thumb_zzxcsm`;
CREATE TABLE `t_thumb_zzxcsm`  (
  `id_zzxcsm` int NOT NULL AUTO_INCREMENT COMMENT '点赞id',
  `user_id_zzxcsm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `post_id_zzxcsm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '帖子id',
  `status_zzxcsm` int NULL DEFAULT NULL COMMENT '是否点赞 0 不点赞 1 点赞',
  PRIMARY KEY (`id_zzxcsm`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_thumb_zzxcsm
-- ----------------------------
INSERT INTO `t_thumb_zzxcsm` VALUES (1, '11', '1', 1);
INSERT INTO `t_thumb_zzxcsm` VALUES (2, '13', '1', 1);
INSERT INTO `t_thumb_zzxcsm` VALUES (3, '14', '1', 1);
INSERT INTO `t_thumb_zzxcsm` VALUES (4, '11', '3', 1);
INSERT INTO `t_thumb_zzxcsm` VALUES (5, '13', '2', 1);
INSERT INTO `t_thumb_zzxcsm` VALUES (6, '12', '2', 1);

-- ----------------------------
-- Table structure for t_user_zzxcsm
-- ----------------------------
DROP TABLE IF EXISTS `t_user_zzxcsm`;
CREATE TABLE `t_user_zzxcsm`  (
  `id_zzxcsm` int NOT NULL AUTO_INCREMENT COMMENT '用户标识',
  `nick_zzxcsm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `username_zzxcsm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password_zzxcsm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `gender_zzxcsm` int NULL DEFAULT NULL COMMENT '性别 0 女 1 男',
  `avatar_zzxcsm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `sign_zzxcsm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个性签名',
  `status_zzxcsm` int NOT NULL DEFAULT 1 COMMENT '状态 1 正常 0 封禁',
  PRIMARY KEY (`id_zzxcsm`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user_zzxcsm
-- ----------------------------
INSERT INTO `t_user_zzxcsm` VALUES (10, '张三', 'zhangsan', 'e10adc3949ba59abbe56e057f20f883e', 1, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fv2-3f23e3beec62a3a57e22befe2469fb9f_720w.jpg', '我姓张,弓长张.', 0);
INSERT INTO `t_user_zzxcsm` VALUES (11, '李四', 'lisi', 'e10adc3949ba59abbe56e057f20f883e', 1, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fv2-6ff4b3d847a509c0a21320f216af7581_720w.jpg', '李四李四,签名不次', 1);
INSERT INTO `t_user_zzxcsm` VALUES (12, '王五', 'wangwu', 'e10adc3949ba59abbe56e057f20f883e', 1, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fv2-4b41c8b30b03a786fbbb53bb43fdea85_720w.jpg', '王五王五,头像是虎', 1);
INSERT INTO `t_user_zzxcsm` VALUES (13, '赵六', 'zhaoliu', 'e10adc3949ba59abbe56e057f20f883e', 0, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fv2-82b466980884d7061d7eb8973d2892db_720w.jpg', '赵六的签名就是6!', 1);
INSERT INTO `t_user_zzxcsm` VALUES (14, '陈七', 'chenqi', 'e10adc3949ba59abbe56e057f20f883e', 0, 'https://manz-1318365467.cos.ap-shanghai.myqcloud.com/manz_zzxcsm%2Fv2-1fd7f5463e17e2cc615ba093a1f20548_720w.jpg', '陈七陈七,天下第一', 1);

SET FOREIGN_KEY_CHECKS = 1;

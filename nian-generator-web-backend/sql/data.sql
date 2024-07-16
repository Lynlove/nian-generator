-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: nian_generator
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- 创建库
create database if not exists nian_generator;

-- 切换库
use nian_generator;

--
-- Table structure for table `generator`
--

DROP TABLE IF EXISTS `generator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generator` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `basePackage` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '基础包',
  `version` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '版本',
  `author` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '作者',
  `tags` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标签列表（json 数组）',
  `picture` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片',
  `fileConfig` text COLLATE utf8mb4_unicode_ci COMMENT '文件配置（json 字符串）',
  `modelConfig` text COLLATE utf8mb4_unicode_ci COMMENT '模型配置（json 字符串）',
  `distPath` text COLLATE utf8mb4_unicode_ci COMMENT '代码生成器产物路径',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态',
  `userId` bigint(20) NOT NULL COMMENT '创建用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`),
  KEY `idx_userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=1812393694787059714 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='代码生成器';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generator`
--

LOCK TABLES `generator` WRITE;
/*!40000 ALTER TABLE `generator` DISABLE KEYS */;
INSERT INTO `generator` (`id`, `name`, `description`, `basePackage`, `version`, `author`, `tags`, `picture`, `fileConfig`, `modelConfig`, `distPath`, `status`, `userId`, `createTime`, `updateTime`, `isDelete`) VALUES (1,'ACM 模板项目','ACM 模板项目生成器','com.dexcode','1.0','管理员豹警官','[\"Java\"]','https://pic.yupi.icu/1/_r0_c1851-bf115939332e.jpg','{}','{}',NULL,0,1,'2024-07-09 16:22:29','2024-07-09 16:22:29',0),(2,'Spring Boot 初始化模板','Spring Boot 初始化模板项目生成器','com.dexcode','1.0','管理员豹警官','[\"Java\"]','https://pic.yupi.icu/1/_r0_c0726-7e30f8db802a.jpg','{}','{}',NULL,0,1,'2024-07-09 16:22:29','2024-07-09 16:22:29',0),(3,'鱼皮外卖','鱼皮外卖项目生成器','com.dexcode','1.0','管理员豹警官','[\"Java\", \"前端\"]','https://pic.yupi.icu/1/_r1_c0cf7-f8e4bd865b4b.jpg','{}','{}',NULL,0,1,'2024-07-09 16:22:29','2024-07-09 16:22:29',0),(4,'鱼皮用户中心','鱼皮用户中心项目生成器','com.dexcode','1.0','管理员豹警官','[\"Java\", \"前端\"]','https://pic.yupi.icu/1/_r1_c1c15-79cdecf24aed.jpg','{}','{}',NULL,0,1,'2024-07-09 16:22:29','2024-07-09 16:22:29',0),(5,'鱼皮API开放平台','鱼皮API开放平台项目生成器','com.dexcode','1.0','管理员豹警官','[\"Java\", \"前端\"]','https://pic.yupi.icu/1/_r1_c0709-8e80689ac1da.jpg','{}','{}',NULL,0,1,'2024-07-09 16:22:29','2024-07-09 16:22:29',0),(18,'acm-template-pro-generator','ACM 示例模板生成器','com.yupi','1.0','yupi','[\"Java\"]','https://lyn-1306837533.cos.ap-shanghai.myqcloud.com/generator_picture/1/4PO13b02-bb.jpg','{\r\n    \"files\": [\r\n      {\r\n        \"groupKey\": \"git\",\r\n        \"groupName\": \"开源\",\r\n        \"type\": \"group\",\r\n        \"condition\": \"needGit\",\r\n        \"files\": [\r\n          {\r\n            \"inputPath\": \".gitignore\",\r\n            \"outputPath\": \".gitignore\",\r\n            \"type\": \"file\",\r\n            \"generateType\": \"static\"\r\n          },\r\n          {\r\n            \"inputPath\": \"README.md\",\r\n            \"outputPath\": \"README.md\",\r\n            \"type\": \"file\",\r\n            \"generateType\": \"static\"\r\n          }\r\n        ]\r\n      },\r\n      {\r\n        \"inputPath\": \"src/com/yupi/acm/MainTemplate.java.ftl\",\r\n        \"outputPath\": \"src/com/yupi/acm/MainTemplate.java\",\r\n        \"type\": \"file\",\r\n        \"generateType\": \"dynamic\"\r\n      }\r\n    ]\r\n  }','{\"models\":[{\"fieldName\":\"needGit\",\"type\":\"boolean\",\"description\":\"是否生成 .gitignore 文件\",\"defaultValue\":true},{\"fieldName\":\"loop\",\"type\":\"boolean\",\"description\":\"是否生成循环\",\"defaultValue\":false,\"abbr\":\"l\"},{\"type\":\"MainTemplate\",\"description\":\"用于生成核心模板文件\",\"groupKey\":\"mainTemplate\",\"groupName\":\"核心模板\",\"models\":[{\"fieldName\":\"author\",\"type\":\"String\",\"description\":\"作者注释\",\"defaultValue\":\"yupi\",\"abbr\":\"a\"},{\"fieldName\":\"outputText\",\"type\":\"String\",\"description\":\"输出信息\",\"defaultValue\":\"sum = \",\"abbr\":\"o\"}],\"condition\":\"loop\"}]}','/generator_dist/1738875515482562562/kLbG2yGh-acm-template-pro-generator.zip',0,1,'2024-01-06 23:00:17','2024-07-12 19:50:20',0),(1810639246284865537,'test','test','test','1','test','[\"test\",\"1\"]','https://lyn-1306837533.cos.ap-shanghai.myqcloud.com/generator_picture/1/4PO13b02-bb.jpg','{}','{}',NULL,0,1,'2024-07-09 19:36:51','2024-07-12 19:49:38',0),(1810911728921321474,'tt2','tt2','tt2','tt2','tt2','[\"tt\",\"aa\",\"2\"]','https://lyn-1306837533.cos.ap-shanghai.myqcloud.com/generator_picture/1/4PO13b02-bb.jpg','{\n\"inputRootPath\": \".source/acm-template-pro\",\n    \"outputRootPath\": \"generated\",\n    \"sourceRootPath\": \"D:/code/ideaProject/PlanetProject/nian-generator/nian-generator-maker/.temp/1/springboot-init\",\n    \"type\": \"dir\",\n        \"files\": [\n            {\n                \"type\": \"group\",\n                \"condition\": \"needPost\",\n                \"groupKey\": \"post\",\n                \"groupName\": \"帖子文件组\",\n                \"files\": [\n                    {\n                        \"inputPath\": \"src/main/java/com/yupi/springbootinit/model/entity/Post.java.ftl\",\n                        \"outputPath\": \"src/main/java/com/yupi/springbootinit/model/entity/Post.java\",\n                        \"type\": \"file\",\n                        \"generateType\": \"dynamic\"\n                    },\n                    {\n                        \"inputPath\": \"src/main/java/com/yupi/springbootinit/model/dto/post/PostAddRequest.java.ftl\",\n                        \"outputPath\": \"src/main/java/com/yupi/springbootinit/model/dto/post/PostAddRequest.java\",\n                        \"type\": \"file\",\n                        \"generateType\": \"dynamic\"\n                    },\n               ]\n            },\n            {\n                \"inputPath\": \"src/main/java/com/yupi/springbootinit/common/ErrorCode.java.ftl\",\n                \"outputPath\": \"src/main/java/com/yupi/springbootinit/common/ErrorCode.java\",\n                \"type\": \"file\",\n                \"generateType\": \"dynamic\"\n            },\n            {\n                \"inputPath\": \".gitignore\",\n                \"outputPath\": \".gitignore\",\n                \"type\": \"file\",\n                \"generateType\": \"static\"\n            },\n         ]\n    }','{\n          \"models\": [\n              {\n                  \"type\": \"MysqlConfig\",\n                  \"description\": \"用于生成MySQL数据库配置\",\n                  \"groupKey\": \"mysqlConfig\",\n                  \"groupName\": \"MySQL数据库配置\",\n                  \"models\": [\n                      {\n                          \"fieldName\": \"password\",\n                          \"type\": \"String\",\n                          \"description\": \"密码\",\n                          \"defaultValue\": \"123456\"\n                      },\n                      {\n                          \"fieldName\": \"url\",\n                          \"type\": \"String\",\n                          \"description\": \"地址\",\n                          \"defaultValue\": \"jdbc:mysql://localhost:3306/my_db\"\n                      },\n                      {\n                          \"fieldName\": \"username\",\n                          \"type\": \"String\",\n                          \"description\": \"用户名\",\n                          \"defaultValue\": \"root\"\n                      }\n                  ]\n              },\n              {\n                  \"fieldName\": \"needDocs\",\n                  \"type\": \"boolean\",\n                  \"description\": \"是否开启接口文档功能\",\n                  \"defaultValue\": true\n              },\n              {\n                  \"fieldName\": \"needPost\",\n                  \"type\": \"boolean\",\n                  \"description\": \"是否开启帖子功能\",\n                  \"defaultValue\": true\n              },\n              ]\n      }','/generator_dist/1/73AT5CtE-springboot-init-generator-dist.zip',0,1,'2024-07-10 13:39:35','2024-07-10 18:27:51',0),(1810915433255034881,'springboot模板','aa','aa','aa','aa','[\"aa\"]','https://lyn-1306837533.cos.ap-shanghai.myqcloud.com/generator_picture/1/dghp4gDc-th.jpg','{\"files\":[{\"type\":\"group\",\"condition\":\"needPost\",\"groupKey\":\"post\",\"groupName\":\"帖子文件组\",\"files\":[{\"inputPath\":\"src/main/java/com/yupi/springbootinit/model/entity/Post.java.ftl\",\"outputPath\":\"src/main/java/com/yupi/springbootinit/model/entity/Post.java\",\"type\":\"file\",\"generateType\":\"dynamic\"},{\"inputPath\":\"src/main/java/com/yupi/springbootinit/model/dto/post/PostAddRequest.java.ftl\",\"outputPath\":\"src/main/java/com/yupi/springbootinit/model/dto/post/PostAddRequest.java\",\"type\":\"file\",\"generateType\":\"dynamic\"}]},{\"inputPath\":\"src/main/java/com/yupi/springbootinit/common/ErrorCode.java.ftl\",\"outputPath\":\"src/main/java/com/yupi/springbootinit/common/ErrorCode.java\",\"type\":\"file\",\"generateType\":\"dynamic\"},{\"inputPath\":\".gitignore\",\"outputPath\":\".gitignore\",\"type\":\"file\",\"generateType\":\"static\"}]}','{\"models\":[{\"type\":\"MysqlConfig\",\"description\":\"用于生成MySQL数据库配置\",\"groupKey\":\"mysqlConfig\",\"groupName\":\"MySQL数据库配置\",\"models\":[{\"fieldName\":\"password\",\"type\":\"String\",\"description\":\"密码\",\"defaultValue\":\"123456\"},{\"fieldName\":\"url\",\"type\":\"String\",\"description\":\"地址\",\"defaultValue\":\"jdbc:mysql://localhost:3306/my_db\"},{\"fieldName\":\"username\",\"type\":\"String\",\"description\":\"用户名\",\"defaultValue\":\"root\"}]},{\"fieldName\":\"needDocs\",\"type\":\"boolean\",\"description\":\"是否开启接口文档功能\",\"defaultValue\":true},{\"fieldName\":\"needPost\",\"type\":\"boolean\",\"description\":\"是否开启帖子功能\",\"defaultValue\":true}]}','/generator_dist/1/P5TFf907-springboot-init-generator-dist.zip',0,1,'2024-07-10 13:54:19','2024-07-14 15:57:43',0),(1811961949965004801,'acmpro','sda','com.yupi','1.0','sdad','[\"java\"]','https://lyn-1306837533.cos.ap-shanghai.myqcloud.com/generator_picture/1/s2P3ofa5-th.jpg','{\"files\":[{\"inputPath\":\"README.md\",\"outputPath\":\"README.md\",\"type\":\"file\",\"generateType\":\"static\"},{\"inputPath\":\".gitignore\",\"outputPath\":\".gitignore\",\"type\":\"file\",\"generateType\":\"static\",\"condition\":\"needGit\"},{\"inputPath\":\"src/com/yupi/acm/MainTemplate.java.ftl\",\"outputPath\":\"src/com/yupi/acm/MainTemplate.java\",\"type\":\"file\",\"generateType\":\"dynamic\"}]}','{\"models\":[{\"fieldName\":\"needGit\",\"type\":\"boolean\",\"description\":\"是否生成 .gitignore 文件\",\"defaultValue\":true},{\"fieldName\":\"loop\",\"type\":\"boolean\",\"description\":\"是否生成循环\",\"defaultValue\":false,\"abbr\":\"l\"},{\"type\":\"MainTemplate\",\"description\":\"用于生成核心模板文件\",\"groupKey\":\"mainTemplate\",\"groupName\":\"核心模板\",\"models\":[{\"fieldName\":\"author\",\"type\":\"String\",\"description\":\"作者注释\",\"defaultValue\":\"yupi\",\"abbr\":\"a\"},{\"fieldName\":\"outputText\",\"type\":\"String\",\"description\":\"输出信息\",\"defaultValue\":\"sum = \",\"abbr\":\"o\"}],\"condition\":\"loop\"}]}','/generator_dist/1/9mSwf3sp-acmpro.zip',0,1,'2024-07-13 11:12:48','2024-07-15 12:20:05',0),(1812393694787059713,'acm-template-pro-generator','通过在线制作完成的ACM 示例模板生成器','com.yupi','1.0','lalala','[\"java\",\"算法\"]','https://pic.yupi.icu/1/_r1_c0709-8e80689ac1da.jpg','{\"files\":[{\"inputPath\":\"src/com/yupi/acm/MainTemplate.java.ftl\",\"outputPath\":\"src/com/yupi/acm/MainTemplate.java\",\"type\":\"file\",\"generateType\":\"dynamic\"},{\"inputPath\":\".gitignore\",\"outputPath\":\".gitignore\",\"type\":\"file\",\"generateType\":\"static\",\"condition\":\"needGit\"},{\"inputPath\":\"README.md\",\"outputPath\":\"README.md\",\"type\":\"file\",\"generateType\":\"static\"}]}','{\"models\":[{\"fieldName\":\"needGit\",\"type\":\"boolean\",\"description\":\"是否生成 .gitignore文件\",\"defaultValue\":true,\"abbr\":\"ng\"},{\"fieldName\":\"loop\",\"type\":\"boolean\",\"description\":\"是否生成循环\",\"defaultValue\":false,\"abbr\":\"l\"},{\"type\":\"MainTemplate\",\"groupKey\":\"mainTemplate\",\"groupName\":\"核心模板\",\"models\":[{\"fieldName\":\"author\",\"type\":\"String\",\"description\":\"作者注释\",\"defaultValue\":\"lyn\",\"abbr\":\"a\"},{\"fieldName\":\"outputText\",\"type\":\"String\",\"description\":\"输出信息\",\"defaultValue\":\"sum\",\"abbr\":\"o\"}],\"condition\":\"loop\"}]}','/generator_dist/1/HPNNkbAc-acm-template-pro-generator.zip',0,1,'2024-07-14 15:48:24','2024-07-14 15:58:08',0);
/*!40000 ALTER TABLE `generator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userAccount` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号',
  `userPassword` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `userName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户昵称',
  `userAvatar` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户头像',
  `userProfile` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户简介',
  `userRole` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user' COMMENT '用户角色：user/admin/ban',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`),
  KEY `idx_userAccount` (`userAccount`)
) ENGINE=InnoDB AUTO_INCREMENT=1810632565446459394 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `userAccount`, `userPassword`, `userName`, `userAvatar`, `userProfile`, `userRole`, `createTime`, `updateTime`, `isDelete`) VALUES (1,'claw','b0dd3697a192885d7c055db46155b26a','管理员豹警官','https://gw.alipayobjects.com/zos/rmsportal/BiazfanxmamNRoxxVxka.png','豹警官：勇敢维护动物城和平，夏奇羊粉丝，甜甜圈的忠实爱好者。','admin','2024-07-09 16:22:29','2024-07-09 18:37:20',0),(2,'claw2','b0dd3697a192885d7c055db46155b26a','档案室豹警官','https://gw.alipayobjects.com/zos/rmsportal/BiazfanxmamNRoxxVxka.png','豹警官：勇敢维护动物城和平，夏奇羊粉丝，甜甜圈的忠实爱好者。','user','2024-07-09 16:22:29','2024-07-09 16:49:53',0),(1810632565446459393,'yupi','b0dd3697a192885d7c055db46155b26a',NULL,NULL,NULL,'user','2024-07-09 19:10:18','2024-07-09 19:10:18',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-16 11:35:56

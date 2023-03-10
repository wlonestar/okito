/*
 Navicat Premium Data Transfer

 Source Server         : postgresql_local
 Source Server Type    : PostgreSQL
 Source Server Version : 150001 (150001)
 Source Host           : localhost:5432
 Source Catalog        : okito
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 150001 (150001)
 File Encoding         : 65001

 Date: 26/02/2023 16:30:19
*/


-- ----------------------------
-- Sequence structure for activity_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."activity_id_seq";
CREATE SEQUENCE "public"."activity_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for category_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."category_id_seq";
CREATE SEQUENCE "public"."category_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for collection_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."collection_id_seq";
CREATE SEQUENCE "public"."collection_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for column_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."column_id_seq";
CREATE SEQUENCE "public"."column_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pin_comment_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pin_comment_id_seq";
CREATE SEQUENCE "public"."pin_comment_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pin_comment_like_comment_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pin_comment_like_comment_id_seq";
CREATE SEQUENCE "public"."pin_comment_like_comment_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pin_comment_like_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pin_comment_like_user_id_seq";
CREATE SEQUENCE "public"."pin_comment_like_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pin_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pin_id_seq";
CREATE SEQUENCE "public"."pin_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pin_like_pin_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pin_like_pin_id_seq";
CREATE SEQUENCE "public"."pin_like_pin_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pin_like_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pin_like_user_id_seq";
CREATE SEQUENCE "public"."pin_like_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for post_collection_collect_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_collection_collect_id_seq";
CREATE SEQUENCE "public"."post_collection_collect_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for post_collection_post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_collection_post_id_seq";
CREATE SEQUENCE "public"."post_collection_post_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for post_column_column_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_column_column_id_seq";
CREATE SEQUENCE "public"."post_column_column_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for post_column_post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_column_post_id_seq";
CREATE SEQUENCE "public"."post_column_post_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for post_comment_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_comment_id_seq";
CREATE SEQUENCE "public"."post_comment_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for post_comment_like_comment_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_comment_like_comment_id_seq";
CREATE SEQUENCE "public"."post_comment_like_comment_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for post_comment_like_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_comment_like_user_id_seq";
CREATE SEQUENCE "public"."post_comment_like_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_id_seq";
CREATE SEQUENCE "public"."post_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for post_like_post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_like_post_id_seq";
CREATE SEQUENCE "public"."post_like_post_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for post_like_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_like_user_id_seq";
CREATE SEQUENCE "public"."post_like_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for post_tag_post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_tag_post_id_seq";
CREATE SEQUENCE "public"."post_tag_post_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for post_tag_tag_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_tag_tag_id_seq";
CREATE SEQUENCE "public"."post_tag_tag_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."role_id_seq";
CREATE SEQUENCE "public"."role_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sys_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_user_id_seq";
CREATE SEQUENCE "public"."sys_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tag_follow_follower_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tag_follow_follower_id_seq";
CREATE SEQUENCE "public"."tag_follow_follower_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tag_follow_tag_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tag_follow_tag_id_seq";
CREATE SEQUENCE "public"."tag_follow_tag_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tag_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tag_id_seq";
CREATE SEQUENCE "public"."tag_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for user_collection_collect_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."user_collection_collect_id_seq";
CREATE SEQUENCE "public"."user_collection_collect_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for user_collection_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."user_collection_user_id_seq";
CREATE SEQUENCE "public"."user_collection_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for user_column_column_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."user_column_column_id_seq";
CREATE SEQUENCE "public"."user_column_column_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for user_column_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."user_column_user_id_seq";
CREATE SEQUENCE "public"."user_column_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for user_follow_followed_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."user_follow_followed_id_seq";
CREATE SEQUENCE "public"."user_follow_followed_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for user_follow_follower_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."user_follow_follower_id_seq";
CREATE SEQUENCE "public"."user_follow_follower_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS "public"."activity";
CREATE TABLE "public"."activity" (
  "id" int8 NOT NULL DEFAULT nextval('activity_id_seq'::regclass),
  "user_id" int8 NOT NULL,
  "action_type" int2 NOT NULL,
  "action_sub_type" int2 NOT NULL,
  "target_id" int8 NOT NULL,
  "exec_time" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO "public"."activity" VALUES (1, 4, 1, 1, 17, '2023-02-23 01:04:11.194+08');
INSERT INTO "public"."activity" VALUES (2, 4, 3, 2, 20, '2023-02-23 10:09:26.685564+08');
INSERT INTO "public"."activity" VALUES (3, 4, 1, 2, 20, '2023-02-23 10:22:31.779266+08');
INSERT INTO "public"."activity" VALUES (4, 4, 1, 2, 18, '2023-02-23 10:22:32.823156+08');
INSERT INTO "public"."activity" VALUES (5, 4, 1, 1, 16, '2023-02-23 10:24:14.592519+08');
INSERT INTO "public"."activity" VALUES (6, 4, 1, 1, 20, '2023-02-23 10:38:03.671809+08');
INSERT INTO "public"."activity" VALUES (7, 4, 1, 1, 19, '2023-02-23 10:38:24.997041+08');
INSERT INTO "public"."activity" VALUES (8, 4, 1, 1, 20, '2023-02-23 10:38:33.989236+08');
INSERT INTO "public"."activity" VALUES (11, 4, 1, 1, 15, '2023-02-23 11:03:04.983114+08');
INSERT INTO "public"."activity" VALUES (12, 4, 3, 2, 21, '2023-02-23 13:57:35.861114+08');
INSERT INTO "public"."activity" VALUES (13, 4, 1, 2, 3, '2023-02-23 13:58:37.138332+08');
INSERT INTO "public"."activity" VALUES (14, 4, 1, 2, 13, '2023-02-23 15:01:01.439484+08');
INSERT INTO "public"."activity" VALUES (15, 4, 2, 2, 3, '2023-02-23 18:07:39.653671+08');
INSERT INTO "public"."activity" VALUES (16, 1, 2, 3, 3, '2023-02-23 19:56:01.549168+08');
INSERT INTO "public"."activity" VALUES (17, 4, 2, 3, 1, '2023-02-23 20:38:19.489923+08');
INSERT INTO "public"."activity" VALUES (18, 4, 2, 2, 4, '2023-02-23 20:53:24.18446+08');
INSERT INTO "public"."activity" VALUES (19, 4, 2, 3, 4, '2023-02-23 20:54:34.825726+08');
INSERT INTO "public"."activity" VALUES (20, 4, 2, 3, 2, '2023-02-23 20:54:35.358948+08');
INSERT INTO "public"."activity" VALUES (21, 1, 2, 1, 2, '2023-02-23 22:06:32.911612+08');
INSERT INTO "public"."activity" VALUES (22, 1, 2, 1, 3, '2023-02-23 22:06:54.586104+08');
INSERT INTO "public"."activity" VALUES (23, 1, 2, 1, 4, '2023-02-23 22:07:06.353026+08');
INSERT INTO "public"."activity" VALUES (24, 2, 2, 1, 1, '2023-02-23 22:07:12.1303+08');
INSERT INTO "public"."activity" VALUES (25, 2, 2, 1, 4, '2023-02-23 22:07:22.397202+08');
INSERT INTO "public"."activity" VALUES (26, 3, 2, 1, 4, '2023-02-23 22:07:36.220414+08');
INSERT INTO "public"."activity" VALUES (27, 4, 2, 1, 1, '2023-02-23 22:07:41.561159+08');
INSERT INTO "public"."activity" VALUES (28, 4, 2, 1, 2, '2023-02-23 22:45:27.776031+08');
INSERT INTO "public"."activity" VALUES (29, 1, 2, 4, 4, '2023-02-24 09:45:09.76145+08');
INSERT INTO "public"."activity" VALUES (30, 4, 2, 4, 4, '2023-02-24 09:45:25.981122+08');
INSERT INTO "public"."activity" VALUES (31, 4, 2, 4, 2, '2023-02-24 09:45:28.231832+08');
INSERT INTO "public"."activity" VALUES (32, 4, 2, 4, 3, '2023-02-24 09:50:27.35782+08');
INSERT INTO "public"."activity" VALUES (33, 4, 1, 1, 18, '2023-02-24 11:12:33.187513+08');
INSERT INTO "public"."activity" VALUES (34, 4, 3, 2, 22, '2023-02-24 14:22:00.711454+08');
INSERT INTO "public"."activity" VALUES (35, 4, 2, 1, 4, '2023-02-24 16:51:38.825868+08');
INSERT INTO "public"."activity" VALUES (36, 4, 1, 2, 2, '2023-02-24 19:09:02.073042+08');
INSERT INTO "public"."activity" VALUES (37, 4, 1, 2, 7, '2023-02-24 19:09:03.761702+08');
INSERT INTO "public"."activity" VALUES (38, 4, 2, 1, 3, '2023-02-24 20:37:14.669852+08');
INSERT INTO "public"."activity" VALUES (39, 4, 1, 2, 22, '2023-02-25 10:01:02.857997+08');
INSERT INTO "public"."activity" VALUES (40, 2, 1, 1, 17, '2023-02-25 10:03:56.453093+08');
INSERT INTO "public"."activity" VALUES (41, 2, 2, 2, 1, '2023-02-25 10:03:58.514309+08');
INSERT INTO "public"."activity" VALUES (42, 2, 2, 2, 2, '2023-02-25 10:03:59.660924+08');
INSERT INTO "public"."activity" VALUES (43, 4, 2, 2, 8, '2023-02-25 10:52:56.451025+08');
INSERT INTO "public"."activity" VALUES (44, 10, 1, 1, 20, '2023-02-25 13:05:20.624271+08');
INSERT INTO "public"."activity" VALUES (45, 10, 3, 2, 23, '2023-02-25 13:06:22.821431+08');
INSERT INTO "public"."activity" VALUES (46, 10, 1, 2, 23, '2023-02-25 13:06:27.284833+08');
INSERT INTO "public"."activity" VALUES (47, 10, 1, 2, 20, '2023-02-25 13:06:29.41078+08');
INSERT INTO "public"."activity" VALUES (48, 10, 1, 2, 19, '2023-02-25 13:06:30.057498+08');
INSERT INTO "public"."activity" VALUES (49, 10, 1, 2, 18, '2023-02-25 13:06:30.801958+08');
INSERT INTO "public"."activity" VALUES (50, 1, 1, 2, 8, '2023-02-26 12:32:41.412776+08');
INSERT INTO "public"."activity" VALUES (51, 2, 1, 1, 20, '2023-02-26 13:22:33.326805+08');
INSERT INTO "public"."activity" VALUES (52, 2, 1, 1, 19, '2023-02-26 13:22:34.089345+08');
INSERT INTO "public"."activity" VALUES (53, 1, 1, 1, 20, '2023-02-26 13:22:36.612725+08');
INSERT INTO "public"."activity" VALUES (54, 1, 1, 1, 16, '2023-02-26 13:22:38.442049+08');
INSERT INTO "public"."activity" VALUES (55, 1, 1, 1, 19, '2023-02-26 15:02:15.523608+08');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS "public"."category";
CREATE TABLE "public"."category" (
  "id" int8 NOT NULL DEFAULT nextval('category_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "cover" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO "public"."category" VALUES (24, '7ujh7u', 'b6yuh7ujh', '7b6yuhg7yh');
INSERT INTO "public"."category" VALUES (25, 'wegfve5 vb', 'ergverv wer', ' vgergregerergergeg');
INSERT INTO "public"."category" VALUES (21, 'wergfewrg', 'wefwegfvwe', 'wefwegfwegfter1');
INSERT INTO "public"."category" VALUES (27, 'swdefsedf', 'sdfsdf', 'sdfsdfs');
INSERT INTO "public"."category" VALUES (28, 'fcsdfsd', 'sdfsdf', 'sdfsdfsd');
INSERT INTO "public"."category" VALUES (29, 'dfcdsf', 'dsfsdf', 'sdfsdfs');
INSERT INTO "public"."category" VALUES (22, 'wefwegfv', 'ewfwef', 'wefwefwwef');
INSERT INTO "public"."category" VALUES (1, 'Choi Hui Mei', 'chmazFmN6p', 'Flexible settings enable youcomputer or virtual machine and does not require any software installation on the servers being monitored. Anyone who has ever made anything of importance was disciplined.');
INSERT INTO "public"."category" VALUES (23, 'fcwefgvv', 'sdfgvvsdgv', 'sdgsdgsdgsd');
INSERT INTO "public"."category" VALUES (3, 'Shi Lu', 'AEApQC176C', 'It is used whis for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information.');
INSERT INTO "public"."category" VALUES (20, 'sdjhbfiedrljgvn', 'ewr,jknhb ejkc', 'sregvfilhjb4icu');
INSERT INTO "public"."category" VALUES (7, 'Lok Kwok Ming', 'okY3pC8UC2', 'The Synchronize to Database function will give you a full picture of all database differences. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure ancts or projects, and then select the corresponding buttons on the Information Pane. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. If it scares you, it might be a good thing to try.');
INSERT INTO "public"."category" VALUES (4, 'Ruth Dunn', 'b38TrhMAxT', 'Genius isbut allows  fingers.');
INSERT INTO "public"."category" VALUES (6, 'Fukuda Ryota', 'NX48dv2Pwf', 'hat you get by achieving your goals is not as important as what you become by achieving your goals. Difficult circumstances serve as a textbook of life for people. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Difficult circumstances serve as a textbook of life for people. A query is used to extract data from the database in a readable format according to the user''s request. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. A man???s best friends are his ten fingers. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Anyone who has ever made anything of importance was disciplined. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. A man is not old until regrets take the place of dreams. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Navicat easy way.');
INSERT INTO "public"."category" VALUES (8, 'Sato Momoka', 'KxPn76JTur', 'It can also maou wudiences. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. A man is not old until regrets take the place of dreams. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. The reason why a great man is great is that he resolves to be a great man. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. A comfort zone is a beautiful place, but nothing ever grows there. Success consists of going from failure to failure without loss of enthusiasm. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. I may not have gone where I intended to go, but I think I have ended up where I needed to be. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Remember that failure is an event, not a person. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Difficult circumstances serve as a textbook of life for people. There is no way to happiness. Happiness is the way. Anyone who has ever made anything of importance was disciplined. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Genius is an infinite capacity for taking pains. A man???s best friends are his ten fingers. All journeys have secret destinations of which the traveler is unaware. Navicat 15 has added support for the system-wide dark mode. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Remember that failure is an event, not a person. Anyone who has never made a mistake has never tried anything new. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. A man???s best friends are his ten fingers. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Success consists of going from failure to failure without loss of enthusiasm. The Synchronize to Database function will give you a full picture of all database differences. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. If it scares you, it might be a good thing to try. Success consists of going from failure to failure without loss of enthusiasm. Navicat 15 has added support for the system-wide dark mode. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Anyone who has ever made anything of importance was disciplined. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. A comfort zone is a beautiful place, but nothing ever grows there. If opportunity doesn???t knock, build a door. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. What you get by achieving your goals is not as important as what you become by achieving your goals.');
INSERT INTO "public"."category" VALUES (9, 'Heung On Kay', 'zprEIZMDpZ', 'Anyone who has evauseated under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Champions keep playing until they get it right. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Flexible settings enable you to set up a custom key for comparison and synchronization. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Optimism is the one quality more associated with success and happiness than any other. If opportunity doesn???t knock, build a door. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. If it scares you, it might be a good thing to try. To connect to a database or schema, simply double-click it in the pane. Optimism is the one quality more associated with success and happiness than any other. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. A man???s best friends are his ten fingers. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. It wasn???t raining when Noah built the ark. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. The past has no power over the present moment. Difficult circumstances serve as a textbook of life for people. You cannot save people, you can just love them. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Anyone who has never made a mistake has never tried anything new. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane.');
INSERT INTO "public"."category" VALUES (5, 'Siu Ka Fai', 'arh2i1DfoX', 'Export Wizoes n we spenbase login information in the General tab. What you get by achieving your goals is not as important as what you become by achieving your goals. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Flexible settings enable you to set up a custom key for comparison and synchronization. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. The Synchronize to Database function will give you a full picture of all database differences. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. I destroy my enemies when I make them my friends. Navicat 15 has added support for the system-wide dark mode. Navicat 15 has added support for the system-wide dark mode. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. There is no way to happiness. Happiness is the way. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. There is no way to happiness. Happiness is the way. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. If you wait, all that happens is you get older. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Flexible settings enable you to set up a custom key for comparison and synchronization. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. A query is used to extract data from the database in a readable format according to the user''s request. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution.');
INSERT INTO "public"."category" VALUES (2, 'Robert Hall', 'DxEg32sBP9', 'Import Wizard alhe projd on any local computer or virtual machine and does not require any software installation on the servers being monitored. If it scares you, it might be a good thing to try. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. To connect to a database or schema, simply double-click it in the pane. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. I destroy my enemies when I make them my friends. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Navicat 15 has added support for the system-wide dark mode. If it scares you, it might be a good thing to try. Success consists of going from failure to failure without loss of enthusiasm. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. If the plan doesn???t work, change the plan, but never the goal. Difficult circumstances serve as a textbook of life for people. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. I may not have gone where I intended to go, but I think I have ended up where I needed to be.');
INSERT INTO "public"."category" VALUES (31, '6y565u', '56567', '5675676');
INSERT INTO "public"."category" VALUES (33, 'ewrwre', 'fwdefrw', 'cwewr');

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS "public"."collection";
CREATE TABLE "public"."collection" (
  "id" int8 NOT NULL DEFAULT nextval('collection_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "cover" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamptz(6) NOT NULL,
  "update_time" timestamptz(6) NOT NULL,
  "author_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO "public"."collection" VALUES (1, 'Xiao Shihan', 'G3J9IHGdLn', 'The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. The first step is as good as half over. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. The Synchronize to Database function will give you a full picture of all database differences. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. A query is used to extract data from the database in a readable format according to the user''s request. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Optimism is the one quality more associated with success and happiness than any other. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. I may not have gone where I intended to go, but I think I have ended up where I needed to be. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. It wasn???t raining when Noah built the ark. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. The Synchronize to Database function will give you a full picture of all database differences. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. If opportunity doesn???t knock, build a door. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Difficult circumstances serve as a textbook of life for people. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. The reason why a great man is great is that he resolves to be a great man. You cannot save people, you can just love them. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. There is no way to happiness. Happiness is the way. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server.', '2010-12-06 03:35:13.905023+08', '2020-10-21 01:25:47.905023+08', 1);
INSERT INTO "public"."collection" VALUES (2, 'Hou Ziyi', 'lYhcU1pqH1', 'In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. How we spend our days is, of course, how we spend our lives. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. You must be the change you wish to see in the world. You must be the change you wish to see in the world. The past has no power over the present moment. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Genius is an infinite capacity for taking pains. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. I will greet this day with love in my heart. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. What you get by achieving your goals is not as important as what you become by achieving your goals. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source.', '2001-07-16 02:10:20.905023+08', '2006-12-11 13:20:11.905023+08', 1);
INSERT INTO "public"."collection" VALUES (3, 'Matsuda Rin', 'sbJQf0mNVd', 'If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. I destroy my enemies when I make them my friends. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Success consists of going from failure to failure without loss of enthusiasm. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. The reason why a great man is great is that he resolves to be a great man. The first step is as good as half over. It wasn???t raining when Noah built the ark. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Optimism is the one quality more associated with success and happiness than any other. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Flexible settings enable you to set up a custom key for comparison and synchronization. In the middle of winter I at last discovered that there was in me an invincible summer. Genius is an infinite capacity for taking pains. Creativity is intelligence having fun. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. All journeys have secret destinations of which the traveler is unaware. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Remember that failure is an event, not a person. The On Startup feature allows you to control what tabs appear when you launch Navicat. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. In the middle of winter I at last discovered that there was in me an invincible summer. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. You must be the change you wish to see in the world. If opportunity doesn???t knock, build a door. If it scares you, it might be a good thing to try. The On Startup feature allows you to control what tabs appear when you launch Navicat. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Navicat 15 has added support for the system-wide dark mode. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. It wasn???t raining when Noah built the ark. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. You will succeed because most people are lazy. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. A man is not old until regrets take the place of dreams. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Difficult circumstances serve as a textbook of life for people. Genius is an infinite capacity for taking pains. I will greet this day with love in my heart. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. What you get by achieving your goals is not as important as what you become by achieving your goals. Difficult circumstances serve as a textbook of life for people. You must be the change you wish to see in the world. The first step is as good as half over. Genius is an infinite capacity for taking pains. Typically, it is employed as an encrypted version of Telnet. You cannot save people, you can just love them. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Typically, it is employed as an encrypted version of Telnet. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Optimism is the one quality more associated with success and happiness than any other. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. How we spend our days is, of course, how we spend our lives. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. The first step is as good as half over. A man???s best friends are his ten fingers. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. A man???s best friends are his ten fingers. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy.', '2005-11-30 10:10:43.905023+08', '2004-11-04 05:47:23.905023+08', 1);
INSERT INTO "public"."collection" VALUES (4, 'Sakai Daisuke', 'V644bA53YI', 'In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. If you wait, all that happens is you get older. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Typically, it is employed as an encrypted version of Telnet. Genius is an infinite capacity for taking pains. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. It wasn???t raining when Noah built the ark. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. If the plan doesn???t work, change the plan, but never the goal. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. There is no way to happiness. Happiness is the way. The reason why a great man is great is that he resolves to be a great man. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server.', '2015-11-25 07:14:40.905023+08', '2020-10-11 15:42:18.905023+08', 1);
INSERT INTO "public"."collection" VALUES (5, 'Victoria Ortiz', 'xWUo9JD7nn', 'You will succeed because most people are lazy. Typically, it is employed as an encrypted version of Telnet. If you wait, all that happens is you get older. If you wait, all that happens is you get older. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Genius is an infinite capacity for taking pains. I will greet this day with love in my heart. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Genius is an infinite capacity for taking pains. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. If it scares you, it might be a good thing to try. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. The reason why a great man is great is that he resolves to be a great man. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. All journeys have secret destinations of which the traveler is unaware. If the plan doesn???t work, change the plan, but never the goal. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. All journeys have secret destinations of which the traveler is unaware. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. All journeys have secret destinations of which the traveler is unaware. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. You must be the change you wish to see in the world. The On Startup feature allows you to control what tabs appear when you launch Navicat. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. Sometimes you win, sometimes you learn. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. All journeys have secret destinations of which the traveler is unaware. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Typically, it is employed as an encrypted version of Telnet. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. If it scares you, it might be a good thing to try. If it scares you, it might be a good thing to try. The past has no power over the present moment. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Success consists of going from failure to failure without loss of enthusiasm. A man is not old until regrets take the place of dreams. Genius is an infinite capacity for taking pains. Difficult circumstances serve as a textbook of life for people. A comfort zone is a beautiful place, but nothing ever grows there. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. The On Startup feature allows you to control what tabs appear when you launch Navicat. The reason why a great man is great is that he resolves to be a great man. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. The past has no power over the present moment. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Anyone who has ever made anything of importance was disciplined. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. If the plan doesn???t work, change the plan, but never the goal. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. All journeys have secret destinations of which the traveler is unaware. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. There is no way to happiness. Happiness is the way.', '2009-08-23 18:39:47.905023+08', '2009-07-24 09:46:02.905023+08', 2);
INSERT INTO "public"."collection" VALUES (6, 'Shi Xiaoming', 'VHAP6xZ9xb', 'There is no way to happiness. Happiness is the way. If opportunity doesn???t knock, build a door. Optimism is the one quality more associated with success and happiness than any other. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. All journeys have secret destinations of which the traveler is unaware. I will greet this day with love in my heart. A man is not old until regrets take the place of dreams. I may not have gone where I intended to go, but I think I have ended up where I needed to be. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. The past has no power over the present moment. A query is used to extract data from the database in a readable format according to the user''s request. The Synchronize to Database function will give you a full picture of all database differences. The On Startup feature allows you to control what tabs appear when you launch Navicat. Creativity is intelligence having fun. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Flexible settings enable you to set up a custom key for comparison and synchronization. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. You cannot save people, you can just love them. If it scares you, it might be a good thing to try. There is no way to happiness. Happiness is the way. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Flexible settings enable you to set up a custom key for comparison and synchronization. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Genius is an infinite capacity for taking pains. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. If it scares you, it might be a good thing to try. A comfort zone is a beautiful place, but nothing ever grows there. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server.', '2016-04-26 12:52:26.905023+08', '2009-03-04 02:17:13.905023+08', 3);
INSERT INTO "public"."collection" VALUES (8, 'Xiang Yunxi', 'olQaGlrfjs', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve. Success consists of going from failure to failure without loss of enthusiasm. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. The On Startup feature allows you to control what tabs appear when you launch Navicat. I may not have gone where I intended to go, but I think I have ended up where I needed to be. To connect to a database or schema, simply double-click it in the pane. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. If you wait, all that happens is you get older. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. There is no way to happiness. Happiness is the way. A comfort zone is a beautiful place, but nothing ever grows there. You cannot save people, you can just love them. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Actually it is just in an idea when feel oneself can achieve and cannot achieve. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. If it scares you, it might be a good thing to try. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Remember that failure is an event, not a person. To connect to a database or schema, simply double-click it in the pane. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. The first step is as good as half over. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. If opportunity doesn???t knock, build a door. If it scares you, it might be a good thing to try. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible.', '2010-02-08 15:59:34.905023+08', '2022-03-02 11:40:30.905023+08', 3);
INSERT INTO "public"."collection" VALUES (9, 'Fu Shihan', 'kUHYxODgie', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. You must be the change you wish to see in the world. I destroy my enemies when I make them my friends. Flexible settings enable you to set up a custom key for comparison and synchronization. Remember that failure is an event, not a person. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Remember that failure is an event, not a person. Difficult circumstances serve as a textbook of life for people. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Anyone who has never made a mistake has never tried anything new. Creativity is intelligence having fun. To connect to a database or schema, simply double-click it in the pane. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. A comfort zone is a beautiful place, but nothing ever grows there. I may not have gone where I intended to go, but I think I have ended up where I needed to be. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. The On Startup feature allows you to control what tabs appear when you launch Navicat. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. I destroy my enemies when I make them my friends. What you get by achieving your goals is not as important as what you become by achieving your goals. The On Startup feature allows you to control what tabs appear when you launch Navicat. I may not have gone where I intended to go, but I think I have ended up where I needed to be. Actually it is just in an idea when feel oneself can achieve and cannot achieve. A comfort zone is a beautiful place, but nothing ever grows there. Success consists of going from failure to failure without loss of enthusiasm. There is no way to happiness. Happiness is the way. If the plan doesn???t work, change the plan, but never the goal. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. If you wait, all that happens is you get older. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. If the plan doesn???t work, change the plan, but never the goal. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Anyone who has never made a mistake has never tried anything new. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. A man???s best friends are his ten fingers. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Champions keep playing until they get it right. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. All journeys have secret destinations of which the traveler is unaware. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. You cannot save people, you can just love them. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. If it scares you, it might be a good thing to try. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. A query is used to extract data from the database in a readable format according to the user''s request. The past has no power over the present moment. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud.', '2021-02-23 05:48:47.905023+08', '2018-03-21 15:18:00.905023+08', 3);
INSERT INTO "public"."collection" VALUES (10, 'test', 'xxx', 'xxxxxcx', '2023-01-06 07:46:03.905023+08', '2023-01-05 20:46:03.905023+08', 3);
INSERT INTO "public"."collection" VALUES (7, 'Miu Wai San', 'zJyAaSuq58', 'Success consists of going from failure to failure without loss of enthusiasm. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. All journeys have secret destinations of which the traveler is unaware. If the plan doesn???t work, change the plan, but never the goal. You must be the change you wish to see in the world. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. I will greet this day with love in my heart. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Typically, it is employed as an encrypted version of Telnet. The Synchronize to Database function will give you a full picture of all database differences. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. I will greet this day with love in my heart. All journeys have secret destinations of which the traveler is unaware. The first step is as good as half over. Champions keep playing until they get it right. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. If opportunity doesn???t knock, build a door. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. The first step is as good as half over. I may not have gone where I intended to go, but I think I have ended up where I needed to be. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. The past has no power over the present moment. You cannot save people, you can just love them. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. What you get by achieving your goals is not as important as what you become by achieving your goals. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. The reason why a great man is great is that he resolves to be a great man. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. It wasn???t raining when Noah built the ark. A man is not old until regrets take the place of dreams. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. The past has no power over the present moment. Anyone who has never made a mistake has never tried anything new. The Synchronize to Database function will give you a full picture of all database differences. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. If you wait, all that happens is you get older. Genius is an infinite capacity for taking pains. You will succeed because most people are lazy. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Creativity is intelligence having fun. You must be the change you wish to see in the world. Genius is an infinite capacity for taking pains. If you wait, all that happens is you get older. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Typically, it is employed as an encrypted version of Telnet. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. The first step is as good as half over. In the middle of winter I at last discovered that there was in me an invincible summer. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. If you wait, all that happens is you get older. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. You cannot save people, you can just love them. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. The past has no power over the present moment. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. Remember that failure is an event, not a person. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. The reason why a great man is great is that he resolves to be a great man. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. The first step is as good as half over. Typically, it is employed as an encrypted version of Telnet. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. I may not have gone where I intended to go, but I think I have ended up where I needed to be. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. The On Startup feature allows you to control what tabs appear when you launch Navicat. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy.', '2001-10-01 15:07:01.905023+08', '2002-07-03 18:56:09.905023+08', 2);
INSERT INTO "public"."collection" VALUES (12, 'hahaha', 'test test', 'ha ha ha ha ha ha ha', '2023-01-19 11:54:43.67+08', '2023-01-19 11:54:43.67+08', 2);
INSERT INTO "public"."collection" VALUES (13, 'hahaha', 'test test', 'ha ha ha ha ha ha ha', '2023-01-19 11:54:43.672+08', '2023-01-19 11:54:43.672+08', 2);
INSERT INTO "public"."collection" VALUES (15, '?????????', 'test test', 'ha ha ha ha ha ha ha', '2023-01-19 11:55:15.528+08', '2023-01-19 11:55:15.528+08', 4);
INSERT INTO "public"."collection" VALUES (16, 'hahaha', 'test test', 'ha ha ha ha ha ha ha', '2023-01-19 11:55:55.803+08', '2023-01-19 11:55:55.803+08', 4);
INSERT INTO "public"."collection" VALUES (18, 'hahaha', 'test test', 'ha ha ha ha ha ha ha', '2023-01-19 11:56:50.78+08', '2023-01-19 11:56:50.78+08', 4);
INSERT INTO "public"."collection" VALUES (19, 'hahaha', 'test test', 'ha ha ha ha ha ha ha', '2023-01-19 11:56:50.786+08', '2023-01-19 11:56:50.786+08', 4);
INSERT INTO "public"."collection" VALUES (20, 'hahaha', 'test test', 'ha ha ha ha ha ha ha', '2023-01-19 11:56:50.889+08', '2023-01-19 11:56:50.889+08', 4);
INSERT INTO "public"."collection" VALUES (14, 'sfdguhk', 'test test', 'ha ha ha ha ha ha ha', '2023-01-19 11:55:15.521+08', '2023-01-19 11:55:15.521+08', 4);
INSERT INTO "public"."collection" VALUES (17, '4????????????', 'test test', 'ha ha ha ha ha ha ha', '2023-01-19 11:55:55.812+08', '2023-01-19 11:55:55.812+08', 4);

-- ----------------------------
-- Table structure for p_column
-- ----------------------------
DROP TABLE IF EXISTS "public"."p_column";
CREATE TABLE "public"."p_column" (
  "id" int8 NOT NULL DEFAULT nextval('column_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "cover" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamptz(6) NOT NULL,
  "update_time" timestamptz(6) NOT NULL,
  "author_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of p_column
-- ----------------------------
INSERT INTO "public"."p_column" VALUES (6, 'Chung Kwok Yin', 'ZXhiZC95qa', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Anyone who has ever made anything of importance was disciplined. Optimism is the one quality more associated with success and happiness than any other. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. If opportunity doesn???t knock, build a door. Anyone who has ever made anything of importance was disciplined. If the plan doesn???t work, change the plan, but never the goal. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. You will succeed because most people are lazy. You cannot save people, you can just love them. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Remember that failure is an event, not a person. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. All journeys have secret destinations of which the traveler is unaware. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. The reason why a great man is great is that he resolves to be a great man. In the middle of winter I at last discovered that there was in me an invincible summer. In the middle of winter I at last discovered that there was in me an invincible summer. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Navicat 15 has added support for the system-wide dark mode. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. You will succeed because most people are lazy. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. The Synchronize to Database function will give you a full picture of all database differences. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. A comfort zone is a beautiful place, but nothing ever grows there. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. If you wait, all that happens is you get older. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Typically, it is employed as an encrypted version of Telnet. You will succeed because most people are lazy. Success consists of going from failure to failure without loss of enthusiasm. What you get by achieving your goals is not as important as what you become by achieving your goals. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. You must be the change you wish to see in the world. Sometimes you win, sometimes you learn. Sometimes you win, sometimes you learn. If opportunity doesn???t knock, build a door. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. How we spend our days is, of course, how we spend our lives. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration.', '2004-04-26 07:17:31.905023+08', '2005-05-27 00:26:34.905023+08', 2);
INSERT INTO "public"."p_column" VALUES (7, 'Charles Henderson', '1wGNAYtXky', 'Anyone who has ever made anything of importance was disciplined. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Creativity is intelligence having fun. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. In the middle of winter I at last discovered that there was in me an invincible summer. In the middle of winter I at last discovered that there was in me an invincible summer. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. A man???s best friends are his ten fingers. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Typically, it is employed as an encrypted version of Telnet. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Typically, it is employed as an encrypted version of Telnet. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. The past has no power over the present moment. Optimism is the one quality more associated with success and happiness than any other. All journeys have secret destinations of which the traveler is unaware. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Remember that failure is an event, not a person. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. To connect to a database or schema, simply double-click it in the pane. It wasn???t raining when Noah built the ark. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Typically, it is employed as an encrypted version of Telnet. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Typically, it is employed as an encrypted version of Telnet. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. Difficult circumstances serve as a textbook of life for people. The On Startup feature allows you to control what tabs appear when you launch Navicat. A man is not old until regrets take the place of dreams. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. The Synchronize to Database function will give you a full picture of all database differences. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Champions keep playing until they get it right. Flexible settings enable you to set up a custom key for comparison and synchronization. There is no way to happiness. Happiness is the way.', '2001-08-30 11:37:30.905023+08', '2015-01-31 07:58:58.905023+08', 2);
INSERT INTO "public"."p_column" VALUES (8, 'Carrie Roberts', 'UqENDlq0tv', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. You must be the change you wish to see in the world. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Champions keep playing until they get it right. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. The reason why a great man is great is that he resolves to be a great man. You must be the change you wish to see in the world. A man is not old until regrets take the place of dreams. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Typically, it is employed as an encrypted version of Telnet. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Sometimes you win, sometimes you learn. If opportunity doesn???t knock, build a door. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Remember that failure is an event, not a person. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. You must be the change you wish to see in the world. A query is used to extract data from the database in a readable format according to the user''s request. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. You cannot save people, you can just love them. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. The reason why a great man is great is that he resolves to be a great man. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. The past has no power over the present moment. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. A comfort zone is a beautiful place, but nothing ever grows there. Difficult circumstances serve as a textbook of life for people. It wasn???t raining when Noah built the ark. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network.', '2010-01-20 08:00:22.905023+08', '2017-12-08 20:10:38.905023+08', 3);
INSERT INTO "public"."p_column" VALUES (9, 'Tang Jialun', 'sho04RP8JC', 'In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. In the middle of winter I at last discovered that there was in me an invincible summer. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. A comfort zone is a beautiful place, but nothing ever grows there. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. You will succeed because most people are lazy. What you get by achieving your goals is not as important as what you become by achieving your goals. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. A comfort zone is a beautiful place, but nothing ever grows there. A man???s best friends are his ten fingers. A man is not old until regrets take the place of dreams. There is no way to happiness. Happiness is the way. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. If opportunity doesn???t knock, build a door. The past has no power over the present moment. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. I will greet this day with love in my heart. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. The Synchronize to Database function will give you a full picture of all database differences. Genius is an infinite capacity for taking pains. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. What you get by achieving your goals is not as important as what you become by achieving your goals. Remember that failure is an event, not a person. A man???s best friends are his ten fingers. You must be the change you wish to see in the world. Remember that failure is an event, not a person.', '2014-05-12 10:22:50.905023+08', '2005-08-10 07:50:47.905023+08', 3);
INSERT INTO "public"."p_column" VALUES (3, 'Huang Shihan', 'UuU2h3On2p', 'The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. I may not have gone where I intended to go, but I think I have ended up where I needed to be. How we spend our days is, of course, how we spend our lives. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Champions keep playing until they get it right. The On Startup feature allows you to control what tabs appear when you launch Navicat. The past has no power over the present moment. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. If the plan doesn???t work, change the plan, but never the goal. You must be the change you wish to see in the world. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. A query is used to extract data from the database in a readable format according to the user''s request. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. The On Startup feature allows you to control what tabs appear when you launch Navicat. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. A query is used to extract data from the database in a readable format according to the user''s request. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Navicat 15 has added support for the system-wide dark mode. Creativity is intelligence having fun. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Genius is an infinite capacity for taking pains. The past has no power over the present moment. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. You must be the change you wish to see in the world. You will succeed because most people are lazy. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Typically, it is employed as an encrypted version of Telnet. Success consists of going from failure to failure without loss of enthusiasm. Typically, it is employed as an encrypted version of Telnet. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. The reason why a great man is great is that he resolves to be a great man. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network.', '2000-09-03 20:51:00.905023+08', '2011-03-26 09:15:55.905023+08', 1);
INSERT INTO "public"."p_column" VALUES (4, 'Sakamoto Ayato', '5ZPKHzvD7n', 'Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. It wasn???t raining when Noah built the ark. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Genius is an infinite capacity for taking pains. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Creativity is intelligence having fun. Champions keep playing until they get it right. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Creativity is intelligence having fun. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. There is no way to happiness. Happiness is the way. All journeys have secret destinations of which the traveler is unaware. Genius is an infinite capacity for taking pains. I destroy my enemies when I make them my friends. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. To connect to a database or schema, simply double-click it in the pane. If opportunity doesn???t knock, build a door. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Creativity is intelligence having fun. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat 15 has added support for the system-wide dark mode. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. All journeys have secret destinations of which the traveler is unaware. Remember that failure is an event, not a person. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Genius is an infinite capacity for taking pains. It wasn???t raining when Noah built the ark. Genius is an infinite capacity for taking pains. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Remember that failure is an event, not a person. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. You will succeed because most people are lazy. Typically, it is employed as an encrypted version of Telnet. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. You will succeed because most people are lazy. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Anyone who has never made a mistake has never tried anything new. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. Optimism is the one quality more associated with success and happiness than any other. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Flexible settings enable you to set up a custom key for comparison and synchronization. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. It wasn???t raining when Noah built the ark. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. I will greet this day with love in my heart. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. If opportunity doesn???t knock, build a door. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. I destroy my enemies when I make them my friends. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Typically, it is employed as an encrypted version of Telnet. There is no way to happiness. Happiness is the way. Anyone who has ever made anything of importance was disciplined. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Difficult circumstances serve as a textbook of life for people. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. You must be the change you wish to see in the world. You cannot save people, you can just love them. Actually it is just in an idea when feel oneself can achieve and cannot achieve. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections.', '2017-06-27 19:53:30.905023+08', '2004-11-09 06:08:27.905023+08', 1);
INSERT INTO "public"."p_column" VALUES (10, 'Zhao Shihan', 'f32QAxU79Q', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server.', '2010-03-02 20:55:17.905023+08', '2001-12-15 14:01:25.905023+08', 4);
INSERT INTO "public"."p_column" VALUES (5, 'Cui Xiuying', 'kyBnquL86K', 'Success consists of going from failure to failure without loss of enthusiasm. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. A query is used to extract data from the database in a readable format according to the user''s request. Genius is an infinite capacity for taking pains. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Flexible settings enable you to set up a custom key for comparison and synchronization. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. If opportunity doesn???t knock, build a door. If you wait, all that happens is you get older. The reason why a great man is great is that he resolves to be a great man. Remember that failure is an event, not a person. I may not have gone where I intended to go, but I think I have ended up where I needed to be. If you wait, all that happens is you get older. Anyone who has never made a mistake has never tried anything new. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. The On Startup feature allows you to control what tabs appear when you launch Navicat. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature.', '2022-02-02 23:08:29.905023+08', '2015-04-18 23:50:57.905023+08', 1);
INSERT INTO "public"."p_column" VALUES (2, 'Han Tin Lok', 'T2I3N9qsR8', 'Flexible settings enable you to set up a custom key for comparison and synchronization. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. There is no way to happiness. Happiness is the way. Typically, it is employed as an encrypted version of Telnet. Anyone who has never made a mistake has never tried anything new. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Remember that failure is an event, not a person. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Flexible settings enable you to set up a custom key for comparison and synchronization. All journeys have secret destinations of which the traveler is unaware. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. If opportunity doesn???t knock, build a door. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Creativity is intelligence having fun. A man???s best friends are his ten fingers. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. The On Startup feature allows you to control what tabs appear when you launch Navicat. Champions keep playing until they get it right. I destroy my enemies when I make them my friends. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Navicat 15 has added support for the system-wide dark mode. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. A comfort zone is a beautiful place, but nothing ever grows there. Flexible settings enable you to set up a custom key for comparison and synchronization. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. A man???s best friends are his ten fingers. The past has no power over the present moment. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. The Synchronize to Database function will give you a full picture of all database differences. Navicat 15 has added support for the system-wide dark mode.', '2008-09-27 11:40:40.905023+08', '2011-12-19 00:21:48.905023+08', 4);
INSERT INTO "public"."p_column" VALUES (1, 'Chan Sze Yu', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-11-17_17-13-59.png', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', '2020-02-29 12:47:10.905023+08', '2013-03-27 17:58:16.905023+08', 4);

-- ----------------------------
-- Table structure for pin
-- ----------------------------
DROP TABLE IF EXISTS "public"."pin";
CREATE TABLE "public"."pin" (
  "id" int8 NOT NULL DEFAULT nextval('pin_id_seq'::regclass),
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamptz(6) NOT NULL,
  "update_time" timestamptz(6) NOT NULL,
  "author_id" int8 NOT NULL,
  "view_num" int8 NOT NULL
)
;

-- ----------------------------
-- Records of pin
-- ----------------------------
INSERT INTO "public"."pin" VALUES (16, '????????????v??????????????????1', '2023-02-22 12:27:48.91+08', '2023-02-22 12:27:48.91+08', 4, 1);
INSERT INTO "public"."pin" VALUES (7, '?????????????????????????????????1', '2013-04-30 01:24:03.905023+08', '2023-01-30 08:06:17.598+08', 3, 335);
INSERT INTO "public"."pin" VALUES (12, 'fgertgerertert', '2023-01-30 08:06:36.525+08', '2023-01-30 08:06:36.525+08', 2, 0);
INSERT INTO "public"."pin" VALUES (22, 'wedfwe', '2023-02-24 06:22:00.7+08', '2023-02-24 06:22:00.7+08', 4, 409);
INSERT INTO "public"."pin" VALUES (10, 'dfg ertger rtgdf drtyhhert erg ertery ert erthyetre er', '2008-01-16 00:37:51.905023+08', '2023-01-30 08:06:20.328+08', 2, 0);
INSERT INTO "public"."pin" VALUES (3, 'werfu8oghbretilvh bxcvl ujbn ktj.jnoui4nedrsfopiu  roit;hjy;ortdf nlrth rteyhb ', '2014-10-06 13:55:52.905023+08', '2023-01-30 08:06:14.793+08', 3, 328);
INSERT INTO "public"."pin" VALUES (5, '?????????????????????  ?????????????????????11??? ', '2010-08-25 15:49:50.905023+08', '2023-01-30 08:06:15.891+08', 3, 0);
INSERT INTO "public"."pin" VALUES (9, '2345rdfhrtue5n  45y tgghfg ert45 45ngh ', '2010-08-31 02:33:18.905023+08', '2023-01-30 08:06:19.263+08', 2, 121);
INSERT INTO "public"."pin" VALUES (18, 'wrfwert', '2023-02-23 01:24:37.543+08', '2023-02-23 01:24:37.543+08', 4, 329);
INSERT INTO "public"."pin" VALUES (1, '4tfge m34t53 gterlk 3t3 4ghe rtg drtbv', '2006-11-12 17:02:42.905023+08', '2023-01-30 08:06:21.495+08', 4, 1);
INSERT INTO "public"."pin" VALUES (20, '???????????????v??????v???', '2023-02-23 02:09:26.504+08', '2023-02-23 02:09:26.504+08', 4, 543);
INSERT INTO "public"."pin" VALUES (11, 'sdfcsdrfgsd', '2023-01-30 08:04:44.434+08', '2023-01-30 08:06:22.293+08', 3, 15);
INSERT INTO "public"."pin" VALUES (23, '???????????????', '2023-02-25 05:06:22.808+08', '2023-02-25 05:06:22.808+08', 10, 1);
INSERT INTO "public"."pin" VALUES (8, 'er y rtyj yrb j83545trt o56j45 63 4py mv23op5j3 ', '2018-03-10 05:00:59.905023+08', '2023-01-30 08:06:18.497+08', 1, 34);
INSERT INTO "public"."pin" VALUES (17, '????????????', '2023-02-22 12:28:56.815+08', '2023-02-22 12:28:56.815+08', 4, 0);
INSERT INTO "public"."pin" VALUES (2, '4 tgb 45yh rh ryhrt yhth rrt?????????fig v??????????????????????????????????????????', '2003-08-13 04:00:31.905023+08', '2023-01-30 08:06:13.384+08', 3, 330);
INSERT INTO "public"."pin" VALUES (6, 'dfui ghvetrn; rt0i tgjert ineoi;r eoritjg 0e er jrti9 jrtbfgs n ier hhojgfoi jerte ht', '2021-03-31 00:04:27.905023+08', '2023-01-30 08:06:16.594+08', 1, 2);
INSERT INTO "public"."pin" VALUES (13, '????????????', '2023-02-21 13:51:15.256+08', '2023-02-21 13:51:15.256+08', 4, 353);
INSERT INTO "public"."pin" VALUES (21, '??????u???????????????', '2023-02-23 05:57:35.848+08', '2023-02-23 05:57:35.848+08', 4, 212);
INSERT INTO "public"."pin" VALUES (19, '??????v????????????', '2023-02-23 01:27:02.692+08', '2023-02-23 01:27:02.692+08', 4, 1);

-- ----------------------------
-- Table structure for pin_comment
-- ----------------------------
DROP TABLE IF EXISTS "public"."pin_comment";
CREATE TABLE "public"."pin_comment" (
  "id" int8 NOT NULL DEFAULT nextval('pin_comment_id_seq'::regclass),
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "upload_time" timestamptz(6) NOT NULL,
  "author_id" int8 NOT NULL,
  "pin_id" int8 NOT NULL,
  "parent_id" int8
)
;

-- ----------------------------
-- Records of pin_comment
-- ----------------------------
INSERT INTO "public"."pin_comment" VALUES (1, 'regredgre', '2023-01-05 23:04:14.905023+08', 1, 6, NULL);
INSERT INTO "public"."pin_comment" VALUES (2, '??????????????????????????????????????????', '2023-01-05 23:03:37.511229+08', 3, 2, NULL);
INSERT INTO "public"."pin_comment" VALUES (3, '?????????????????????????????????????????????????????????', '2023-01-05 23:03:37.55015+08', 4, 7, NULL);
INSERT INTO "public"."pin_comment" VALUES (4, '?????????????????????????????????????????????????????????', '2023-01-05 23:03:37.553704+08', 3, 10, NULL);
INSERT INTO "public"."pin_comment" VALUES (5, '????????????????????????????????????', '2023-01-05 23:03:37.55493+08', 3, 8, NULL);
INSERT INTO "public"."pin_comment" VALUES (6, '?????????????????????????????????????????????????????????????????????', '2023-01-05 23:03:37.557245+08', 3, 2, NULL);
INSERT INTO "public"."pin_comment" VALUES (7, '????????????????????????????????????????????????????????????????????????', '2023-01-05 23:03:37.559301+08', 4, 7, NULL);
INSERT INTO "public"."pin_comment" VALUES (8, '??????????????????????????????????????????????????????????????????????????????????????????', '2023-01-05 23:03:37.562818+08', 4, 9, NULL);
INSERT INTO "public"."pin_comment" VALUES (9, '???????????????????????????????????????????????????????????????????????????', '2023-01-05 23:03:37.564691+08', 1, 10, NULL);
INSERT INTO "public"."pin_comment" VALUES (10, '??????????????????????????????????????????????????????????????????', '2023-01-05 23:03:37.567826+08', 4, 6, NULL);
INSERT INTO "public"."pin_comment" VALUES (11, '???????????????????????????????????????', '2023-01-05 23:03:37.570379+08', 1, 8, NULL);
INSERT INTO "public"."pin_comment" VALUES (12, '????????????????????????????????????', '2023-01-05 23:03:37.573028+08', 3, 8, 5);
INSERT INTO "public"."pin_comment" VALUES (19, '?????????????????????????????????????????????????????????????????????', '2023-01-05 23:03:37.590808+08', 3, 10, 4);
INSERT INTO "public"."pin_comment" VALUES (14, '??????????????????????????????????????????', '2023-01-05 23:03:37.579535+08', 2, 1, NULL);
INSERT INTO "public"."pin_comment" VALUES (18, '???????????????????????????????????????', '2023-01-05 23:03:37.588701+08', 4, 2, 2);
INSERT INTO "public"."pin_comment" VALUES (15, '???????????????????????????', '2023-01-05 23:03:37.582184+08', 2, 3, NULL);
INSERT INTO "public"."pin_comment" VALUES (21, '?????????????????????????????????????????????', '2023-01-05 23:03:37.595612+08', 2, 3, 15);
INSERT INTO "public"."pin_comment" VALUES (16, '??????????????????????????????????????????????????????????????????????????????', '2023-01-05 23:03:37.583691+08', 4, 5, NULL);
INSERT INTO "public"."pin_comment" VALUES (23, '??????????????????????????????????????????????????????????????????????????????', '2023-01-05 23:03:37.600611+08', 2, 6, 1);
INSERT INTO "public"."pin_comment" VALUES (17, '??????????????????????????????????????????', '2023-01-05 23:03:37.586697+08', 1, 7, 3);
INSERT INTO "public"."pin_comment" VALUES (22, '???????????????????????????????????????????????????', '2023-01-05 23:03:37.597611+08', 1, 7, 17);
INSERT INTO "public"."pin_comment" VALUES (24, '?????????????????????????????????????????????????????????', '2023-01-05 23:03:37.602612+08', 2, 8, 11);
INSERT INTO "public"."pin_comment" VALUES (20, '??????????????????????????????????????????', '2023-01-05 23:03:37.593603+08', 3, 9, 8);
INSERT INTO "public"."pin_comment" VALUES (13, '?????????????????????????????????', '2023-01-05 23:03:37.576281+08', 4, 10, 19);
INSERT INTO "public"."pin_comment" VALUES (27, '????????????????????????????????????????????????????????????', '2023-01-05 23:03:37.612785+08', 2, 2, 2);
INSERT INTO "public"."pin_comment" VALUES (30, '???????????????????????????????????????????????????????????????????????????', '2023-01-05 23:03:37.622177+08', 2, 2, 2);
INSERT INTO "public"."pin_comment" VALUES (25, '???????????????????????????????????????????????????????????????????????????????????????', '2023-01-05 23:03:37.605519+08', 1, 6, 10);
INSERT INTO "public"."pin_comment" VALUES (29, '?????????????????????????????????????????????????????????????????????', '2023-01-05 23:03:37.618843+08', 3, 8, 24);
INSERT INTO "public"."pin_comment" VALUES (28, '?????????????????????????????????????????????', '2023-01-05 23:03:37.615802+08', 2, 10, 13);
INSERT INTO "public"."pin_comment" VALUES (31, 'nweggerugel wef we', '2023-02-22 15:10:37.99+08', 4, 7, 7);
INSERT INTO "public"."pin_comment" VALUES (32, 'ewtwtrwet5', '2023-02-22 15:11:14.785+08', 4, 7, NULL);
INSERT INTO "public"."pin_comment" VALUES (26, '??????????????????????????????????????????', '2023-01-05 23:03:37.609749+08', 4, 3, 21);
INSERT INTO "public"."pin_comment" VALUES (33, '???????????????????????????', '2023-02-22 20:28:10.215+08', 4, 16, NULL);
INSERT INTO "public"."pin_comment" VALUES (34, '??????Igbo', '2023-02-22 20:28:25.079+08', 4, 16, 33);
INSERT INTO "public"."pin_comment" VALUES (35, '??????', '2023-02-23 16:50:53.391+08', 4, 13, NULL);
INSERT INTO "public"."pin_comment" VALUES (36, '??????', '2023-02-23 16:51:00.255+08', 4, 13, NULL);
INSERT INTO "public"."pin_comment" VALUES (37, 'erofgn;ero', '2023-02-23 20:07:42.54+08', 4, 6, 25);
INSERT INTO "public"."pin_comment" VALUES (38, 'lifyhgbfkgbwverg brltiv bkutg3rewc htnluitv4 hnkuretwyhgbdurtsikbg hvctverwvylrtuv hewkiu vtby7rhteg bk5r87dnuyfi', '2023-02-24 11:12:48.42+08', 4, 9, 20);
INSERT INTO "public"."pin_comment" VALUES (39, 'wewewewewew', '2023-02-24 14:22:12.385+08', 4, 11, NULL);
INSERT INTO "public"."pin_comment" VALUES (40, 'esgfsdgs', '2023-02-25 10:06:24.019+08', 4, 7, NULL);

-- ----------------------------
-- Table structure for pin_comment_like
-- ----------------------------
DROP TABLE IF EXISTS "public"."pin_comment_like";
CREATE TABLE "public"."pin_comment_like" (
  "comment_id" int8 NOT NULL DEFAULT nextval('pin_comment_like_comment_id_seq'::regclass),
  "user_id" int8 NOT NULL DEFAULT nextval('pin_comment_like_user_id_seq'::regclass),
  "type" int2
)
;
COMMENT ON COLUMN "public"."pin_comment_like"."type" IS '0 -> none
1 -> like
2 -> dislike';

-- ----------------------------
-- Records of pin_comment_like
-- ----------------------------
INSERT INTO "public"."pin_comment_like" VALUES (5, 2, 0);
INSERT INTO "public"."pin_comment_like" VALUES (18, 4, 0);
INSERT INTO "public"."pin_comment_like" VALUES (16, 4, 1);
INSERT INTO "public"."pin_comment_like" VALUES (11, 1, 0);
INSERT INTO "public"."pin_comment_like" VALUES (3, 1, 1);
INSERT INTO "public"."pin_comment_like" VALUES (22, 3, 1);
INSERT INTO "public"."pin_comment_like" VALUES (5, 3, 0);
INSERT INTO "public"."pin_comment_like" VALUES (2, 2, 1);
INSERT INTO "public"."pin_comment_like" VALUES (26, 3, 1);
INSERT INTO "public"."pin_comment_like" VALUES (25, 3, 0);
INSERT INTO "public"."pin_comment_like" VALUES (10, 2, 1);
INSERT INTO "public"."pin_comment_like" VALUES (18, 1, 1);
INSERT INTO "public"."pin_comment_like" VALUES (28, 3, 0);
INSERT INTO "public"."pin_comment_like" VALUES (10, 4, 0);
INSERT INTO "public"."pin_comment_like" VALUES (8, 4, 1);
INSERT INTO "public"."pin_comment_like" VALUES (3, 4, 1);
INSERT INTO "public"."pin_comment_like" VALUES (17, 4, 1);
INSERT INTO "public"."pin_comment_like" VALUES (20, 4, 1);
INSERT INTO "public"."pin_comment_like" VALUES (1, 4, 1);
INSERT INTO "public"."pin_comment_like" VALUES (23, 4, 1);
INSERT INTO "public"."pin_comment_like" VALUES (22, 4, 0);
INSERT INTO "public"."pin_comment_like" VALUES (32, 4, 1);

-- ----------------------------
-- Table structure for pin_like
-- ----------------------------
DROP TABLE IF EXISTS "public"."pin_like";
CREATE TABLE "public"."pin_like" (
  "pin_id" int8 NOT NULL DEFAULT nextval('pin_like_pin_id_seq'::regclass),
  "user_id" int8 NOT NULL DEFAULT nextval('pin_like_user_id_seq'::regclass),
  "type" int2
)
;
COMMENT ON COLUMN "public"."pin_like"."type" IS '0 -> none
1 -> like
2 -> dislike';

-- ----------------------------
-- Records of pin_like
-- ----------------------------
INSERT INTO "public"."pin_like" VALUES (5, 2, 0);
INSERT INTO "public"."pin_like" VALUES (9, 3, 0);
INSERT INTO "public"."pin_like" VALUES (9, 2, 0);
INSERT INTO "public"."pin_like" VALUES (1, 3, 1);
INSERT INTO "public"."pin_like" VALUES (2, 2, 1);
INSERT INTO "public"."pin_like" VALUES (6, 1, 1);
INSERT INTO "public"."pin_like" VALUES (2, 1, 0);
INSERT INTO "public"."pin_like" VALUES (12, 4, 1);
INSERT INTO "public"."pin_like" VALUES (9, 4, 1);
INSERT INTO "public"."pin_like" VALUES (6, 4, 1);
INSERT INTO "public"."pin_like" VALUES (11, 4, 1);
INSERT INTO "public"."pin_like" VALUES (16, 4, 1);
INSERT INTO "public"."pin_like" VALUES (18, 4, 1);
INSERT INTO "public"."pin_like" VALUES (8, 4, 0);
INSERT INTO "public"."pin_like" VALUES (20, 4, 1);
INSERT INTO "public"."pin_like" VALUES (3, 4, 1);
INSERT INTO "public"."pin_like" VALUES (13, 4, 1);
INSERT INTO "public"."pin_like" VALUES (2, 4, 1);
INSERT INTO "public"."pin_like" VALUES (7, 4, 1);
INSERT INTO "public"."pin_like" VALUES (22, 4, 1);
INSERT INTO "public"."pin_like" VALUES (23, 10, 1);
INSERT INTO "public"."pin_like" VALUES (20, 10, 1);
INSERT INTO "public"."pin_like" VALUES (19, 10, 1);
INSERT INTO "public"."pin_like" VALUES (18, 10, 1);
INSERT INTO "public"."pin_like" VALUES (8, 1, 1);

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS "public"."post";
CREATE TABLE "public"."post" (
  "id" int8 NOT NULL DEFAULT nextval('post_id_seq'::regclass),
  "title" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "summary" varchar(1000) COLLATE "pg_catalog"."default" NOT NULL,
  "cover" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamptz(6) NOT NULL,
  "update_time" timestamptz(6) NOT NULL,
  "cate_id" int8 NOT NULL,
  "author_id" int8 NOT NULL,
  "draft" bool NOT NULL,
  "view_num" int8 NOT NULL
)
;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO "public"."post" VALUES (5, 'Prof.', 'cwJVqKkvdj', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/320858ac51504dbe83ee5ac50d4d5813.jpg', 'You cannot save people, you can just love them. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Creativity is intelligence having fun. I may not have gone where I intended to go, but I think I have ended up where I needed to be. A query is used to extract data from the database in a readable format according to the user''s request. The past has no power over the present moment. What you get by achieving your goals is not as important as what you become by achieving your goals. Difficult circumstances serve as a textbook of life for people. You cannot save people, you can just love them. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. You will succeed because most people are lazy. You will succeed because most people are lazy. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Anyone who has ever made anything of importance was disciplined. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. A comfort zone is a beautiful place, but nothing ever grows there. It wasn???t raining when Noah built the ark. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Difficult circumstances serve as a textbook of life for people. You will succeed because most people are lazy. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. The past has no power over the present moment. In the middle of winter I at last discovered that there was in me an invincible summer. You cannot save people, you can just love them. A query is used to extract data from the database in a readable format according to the user''s request. A comfort zone is a beautiful place, but nothing ever grows there. How we spend our days is, of course, how we spend our lives. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. The On Startup feature allows you to control what tabs appear when you launch Navicat. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Flexible settings enable you to set up a custom key for comparison and synchronization. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. You cannot save people, you can just love them. A man???s best friends are his ten fingers. Creativity is intelligence having fun. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. The past has no power over the present moment. A man is not old until regrets take the place of dreams. Typically, it is employed as an encrypted version of Telnet. Genius is an infinite capacity for taking pains. I will greet this day with love in my heart. The Synchronize to Database function will give you a full picture of all database differences.', '2009-06-24 07:09:10.905023+08', '2020-09-28 16:39:04.905023+08', 3, 1, 't', 0);
INSERT INTO "public"."post" VALUES (11, 'Mr.', 'aTiDNFdYYC', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'The reason why a great man is great is that he resolves to be a great man. What you get by achieving your goals is not as important as what you become by achieving your goals. The Synchronize to Database function will give you a full picture of all database differences. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. In the middle of winter I at last discovered that there was in me an invincible summer. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Flexible settings enable you to set up a custom key for comparison and synchronization. The past has no power over the present moment. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Champions keep playing until they get it right. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Anyone who has never made a mistake has never tried anything new. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. The reason why a great man is great is that he resolves to be a great man. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. A query is used to extract data from the database in a readable format according to the user''s request. The On Startup feature allows you to control what tabs appear when you launch Navicat. I may not have gone where I intended to go, but I think I have ended up where I needed to be. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Anyone who has never made a mistake has never tried anything new. Actually it is just in an idea when feel oneself can achieve and cannot achieve. A comfort zone is a beautiful place, but nothing ever grows there. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Anyone who has ever made anything of importance was disciplined. A comfort zone is a beautiful place, but nothing ever grows there. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. A comfort zone is a beautiful place, but nothing ever grows there. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. You will succeed because most people are lazy. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. It wasn???t raining when Noah built the ark. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. If it scares you, it might be a good thing to try. Champions keep playing until they get it right. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Genius is an infinite capacity for taking pains. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. There is no way to happiness. Happiness is the way. Navicat 15 has added support for the system-wide dark mode. It wasn???t raining when Noah built the ark. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. Optimism is the one quality more associated with success and happiness than any other. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Typically, it is employed as an encrypted version of Telnet. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution.', '2015-11-11 17:35:13.905023+08', '2012-11-04 09:20:59.905023+08', 3, 2, 't', 1);
INSERT INTO "public"."post" VALUES (6, 'Mr.', 'qW3MeMEkIp', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/320858ac51504dbe83ee5ac50d4d5813.jpg', 'A man???s best friends are his ten fingers. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Genius is an infinite capacity for taking pains. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. I destroy my enemies when I make them my friends. How we spend our days is, of course, how we spend our lives. I destroy my enemies when I make them my friends. It wasn???t raining when Noah built the ark. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Optimism is the one quality more associated with success and happiness than any other. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. To connect to a database or schema, simply double-click it in the pane. Typically, it is employed as an encrypted version of Telnet. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. The first step is as good as half over. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. You cannot save people, you can just love them. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Anyone who has ever made anything of importance was disciplined. Flexible settings enable you to set up a custom key for comparison and synchronization. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. A query is used to extract data from the database in a readable format according to the user''s request. It wasn???t raining when Noah built the ark. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Genius is an infinite capacity for taking pains. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Difficult circumstances serve as a textbook of life for people. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. What you get by achieving your goals is not as important as what you become by achieving your goals. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. The first step is as good as half over. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy.', '2013-11-09 05:15:37.905023+08', '2022-01-01 18:38:05.905023+08', 6, 2, 't', 6);
INSERT INTO "public"."post" VALUES (4, 'Ms.', 'R0seydLwsJ', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'It wasn???t raining when Noah built the ark. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Champions keep playing until they get it right. Sometimes you win, sometimes you learn. Remember that failure is an event, not a person. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Anyone who has ever made anything of importance was disciplined. To connect to a database or schema, simply double-click it in the pane. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. Anyone who has never made a mistake has never tried anything new. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. A man???s best friends are his ten fingers. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Genius is an infinite capacity for taking pains. All journeys have secret destinations of which the traveler is unaware. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Success consists of going from failure to failure without loss of enthusiasm. The On Startup feature allows you to control what tabs appear when you launch Navicat. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. The past has no power over the present moment. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools.', '2002-08-05 19:48:37.905023+08', '2017-09-27 10:31:23.905023+08', 8, 2, 't', 0);
INSERT INTO "public"."post" VALUES (3, 'Prof.', 'ht4N43FZCO', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Typically, it is employed as an encrypted version of Telnet. Difficult circumstances serve as a textbook of life for people. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored.', '2018-11-08 06:34:35+08', '2000-09-07 17:54:29.905023+08', 4, 1, 't', 0);
INSERT INTO "public"."post" VALUES (10, 'Mr.', 'Xc14bo5cA1', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. I will greet this day with love in my heart. Creativity is intelligence having fun. Remember that failure is an event, not a person. I will greet this day with love in my heart. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. A man???s best friends are his ten fingers. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. A man???s best friends are his ten fingers. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Navicat 15 has added support for the system-wide dark mode. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Anyone who has ever made anything of importance was disciplined. There is no way to happiness. Happiness is the way. Anyone who has never made a mistake has never tried anything new. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. How we spend our days is, of course, how we spend our lives. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. Genius is an infinite capacity for taking pains. All journeys have secret destinations of which the traveler is unaware. Navicat 15 has added support for the system-wide dark mode. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Actually it is just in an idea when feel oneself can achieve and cannot achieve. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. A man???s best friends are his ten fingers. The On Startup feature allows you to control what tabs appear when you launch Navicat. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily.', '2004-07-10 17:24:45.905023+08', '2019-09-22 20:06:47.905023+08', 3, 1, 'f', 3);
INSERT INTO "public"."post" VALUES (7, 'URP????????????????????????', 'URP?????????????????????????????????????????????????????????', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/letter.jpg', '

????????????????????? hack ?????????????????????????????????????????????????????????????????????GitHub?????????????????????

[URP??????????????????????????????](https://github.com/wlonestar/HHU_URP_auto_login)

## ?????????

???????????? [http://jwxs.hhu.edu.cn/](http://jwxs.hhu.edu.cn/) ????????????????????????????????? [http://jwxs.hhu.edu.cn/login](http://jwxs.hhu.edu.cn/login) 

>????????????????????????????????????????????????????????????????????????????????????????????????????????????UI??????2000???????????????

?????????????????????????????????????????????.

> ??????????????????????????????????????????????????????????????????Completely Automated Public Turing test to tell Computers and Humans Apart?????????CAPTCHA??????????????????????????????????????????????????????????????????????????????????????????

### ?????????????????????

???????????????????????????????????????????????????????????????????????????????????? 

`http://jwxs.hhu.edu.cn/img/captcha.jpg`

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_19-37-31.png)

??????????????????????????????????????????????????????

```python
import requests

prefix = ''http://jwxs.hhu.edu.cn/''
captcha_url = prefix + ''img/captcha.jpg''
src = ''captcha.jpg''

response = requests.get(captcha_url)
file = open(src, ''wb'')
file.write(response.content)
file.close()
```

????????????????????????

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/captcha.jpg)

????????????????????????????????????

### ?????????????????????

??????????????????????????????????????? `tesseract` ??????OCR????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????python???

[ddddocr](https://github.com/sml2h3/ddddocr#%E5%B8%A6%E5%B8%A6%E5%BC%9F%E5%BC%9Focr%E9%80%9A%E7%94%A8%E9%AA%8C%E8%AF%81%E7%A0%81%E8%AF%86%E5%88%ABsdk%E5%85%8D%E8%B4%B9%E5%BC%80%E6%BA%90%E7%89%88) - ????????????OCR?????????????????????SDK???????????????

????????????????????????????????????????????????????????????????????????????????????????????????

```python
import ddddocr
import requests

prefix = ''http://jwxs.hhu.edu.cn/''
captcha_url = prefix + ''img/captcha.jpg''
src = ''captcha.jpg''

response = requests.get(captcha_url)
file = open(src, ''wb'')
file.write(response.content)
file.close()

ocr = ddddocr.DdddOcr(show_ad=False)
with open(src, ''rb'') as f:
    img_bytes = f.read()
res = ocr.classification(img_bytes)
print(''captcha:'', res)
```

```
>>> captcha: c65a
```

????????????

?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????

### ??????????????????

????????????????????????????????????????????????????????????

1. ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????

2. ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_19-57-17.png)

?????????????????????????????????????????????????????????????????????

```python
import ddddocr
import requests
from PIL import Image

prefix = ''http://jwxs.hhu.edu.cn/''
captcha_url = prefix + ''img/captcha.jpg''
src = ''captcha.jpg''
dst = ''captcha_p.png''


def process_data(src, dst):
    img = Image.open(src)
    w, h = img.size
    for x in range(w):
        for y in range(h):
            r, g, b = img.getpixel((x, y))
            low = 50
            up = 256
            if r == 0 and g == 0 and b == 0:
                img.putpixel((x, y), (255, 255, 255))
            if r in range(low) and g in range(low) and b in range(low):
                img.putpixel((x, y), (255, 255, 255))
            if r in range(low, up) and g in range(low, up) and b in range(low, up):
                img.putpixel((x, y), (255, 255, 255))
    img.save(dst)


if __name__ == "__main__":
    response = requests.get(captcha_url)
    file = open(src, ''wb'')
    file.write(response.content)
    file.close()

    process_data(src, dst)

    ocr = ddddocr.DdddOcr(show_ad=False)
    with open(dst, ''rb'') as f:
        img_bytes = f.read()
    res = ocr.classification(img_bytes)
    print(''captcha:'', res)
```

???????????????????????????????????????

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/242c.jpg)

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/captcha_p.png)

?????????????????????????????????????????????????????????????????????rgb????????????0??????????????????????????????????????????????????????????????? 0-50 ?????? 50-256 ??????????????????????????????????????????

??????????????????????????????????????????????????????????????????????????????????????????

## ????????????

????????????????????????????????????????????????????????????????????????????????????????????????

`POST http://jwxs.hhu.edu.cn/j_spring_security_check`

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_20-08-04.png)

?????????????????????????????????????????????????????????????????????????????????????????????

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_20-07-47.png)

> ????????????????????????????????????????????????????????????????????????????????????????????????

???????????????????????????????????????????????????????????? `Request` ???????????????????????????

```python
import requests
from bs4 import BeautifulSoup

USERNAME = ''xxxxxxxxxx''
PASSWORD = ''xxxxxxxxxx''

Host = ''jwxs.hhu.edu.cn''
prefix = ''http://jwxs.hhu.edu.cn/''
UserAgent = ''Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 '' \
            ''Safari/537.36 ''

login_url = prefix + ''login''
captcha_url = prefix + ''img/captcha.jpg''
post_url = prefix + ''j_spring_security_check''
index_url = prefix + ''index.jsp''


class Request(object):
    def __init__(self, username, password):
        self.username = username
        self.password = password
        self.session = requests.Session()
        self.headers = {
            ''Host'': Host,
            ''User-Agent'': UserAgent,
            ''Referer'': login_url,
        }
        self.cookies = self.session.cookies

    def captcha(self):
        src = ''captcha.jpg''
        dst = ''captcha_p.png''
        response = self.session.get(captcha_url)
        file = open(src, ''wb'')
        file.write(response.content)
        file.close()
        res = captcha_code(src, dst)
        return res

    def login(self):
        post_data = {
            ''j_username'': self.username,
            ''j_password'': self.password,
            ''j_captcha'': self.captcha(),
        }
    
        self.session.post(post_url, post_data, headers=self.headers)
        response = self.session.get(index_url, headers=self.headers, cookies=self.session.cookies)
        soup = BeautifulSoup(response.text, ''lxml'')
        name = soup.find(''title'').string
        if name == ''URP????????????????????????'':
            print(''login success'')
            print(''JSESSIONID:'', self.session.cookies.get(''JSESSIONID''))


if __name__ == "__main__":
    request = Request(USERNAME, PASSWORD)
    request.login()
```

??????????????????????????????????????????????????? `login success`

???????????????????????????????????????????????????

?????????HTML?????????????????????????????????

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_20-18-59.png)

???????????? `j_username`??????????????? `j_password`?????????????????? `j_captcha`????????????????????????

????????????????????? `hex_md5` ????????????????????????

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_20-19-36.png)

??????????????????????????????????????????????????????????????????????????????

?????????????????????????????????????????????????????? md5 ????????????????????????????????????????????? [md5.js](http://jwxs.hhu.edu.cn/js/md5/md5.js) ?????????

?????????????????????????????? js ??????????????? python ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? `convert js to python`???????????? [Js2Py](https://github.com/PiotrDabkowski/Js2Py) ??????python??????????????????

```python
import js2py
# from md5 import *

if __name__ == "__main__":
    js2py.translate_file(''md5.js'', ''md5.py'')
    # data = md5.hex_md5(''12ibnsdkq1ed'')
    # print(data)
```

????????????????????????????????????????????????????????????????????????

??????????????????????????????????????????????????????

```python
from md5 import *

...
...

def login(self):
    post_data = {
        ''j_username'': self.username,
        ''j_password'': md5.hex_md5(self.password),
        ''j_captcha'': self.captcha(),
    }
   
    self.session.post(post_url, post_data, headers=self.headers)
    response = self.session.get(index_url, headers=self.headers, cookies=self.session.cookies)
    soup = BeautifulSoup(response.text, ''lxml'')
    name = soup.find(''title'').string
    if name == ''URP????????????????????????'':
        print(''login success'')
        print(''JSESSIONID:'', self.session.cookies.get(''JSESSIONID''))
```

?????????????????????????????????

```
captcha: xxxx
login success
JSESSIONID: abcMTh7Thb9p4ef4DZ2my
```

## ?????????????????????

???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????

???????????????[????????????????????????](http://jwxs.hhu.edu.cn/student/teachingResources/freeClassroom/index)

?????????????????????????????????????????????????????? `http://jwxs.hhu.edu.cn/student/teachingResources/freeClassroom/today` ??????????????? POST ???????????????????????? `Content_type` ??? `application/x-www-form-urlencoded`???????????????????????????????????????

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_20-44-09.png)

??????????????????????????????????????????????????????????????????????????????

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_20-44-28.png)

????????????????????????????????????????????? `queryCodeTeaBuildingList` ?????????????????????????????????

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_20-48-12.png)

???????????????????????????????????? `2_11`

??????????????????????????????????????????????????? `http://jwxs.hhu.edu.cn/student/teachingResources/freeClassroom/today` ???????????????????????????

???????????????????????????????????????????????????????????? [application/x-www-form-urlencoded](https://developer.mozilla.org/zh-CN/docs/Web/HTTP/Methods/POST)

> application/x-www-form-urlencoded: ????????????????????? ''&'' ???????????? - ?????????????????? ''='' ??????????????????????????????????????????????????? percent-encoding: ????????????????????????????????????????????????????????? (????????? multipart/form-data ??????).

???????????????????????????????????????????????????????????????????????????????????? [JSP](https://zh.wikipedia.org/wiki/JSP)

> JSP?????????Jakarta Server Pages????????????JavaServer Pages?????????Sun Microsystems??????????????????????????????????????????????????????JSP?????????????????????????????????????????????????????????????????????????????????????????????????????????HTML???XML????????????????????????Web????????????????????????????????????JSP?????????Java???????????????????????????????????????HTTP???????????????????????????????????????????????????Java??????????????????????????????????????????

?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????

???????????????????????????????????????????????????????????????????????????

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_20-59-06.png)

???????????????????????????????????????????????????????????????????????????????????????????????????????????????

???????????????????????? [search](http://jwxs.hhu.edu.cn/student/teachingResources/freeClassroomQuery/search) 

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_21-01-14.png)

???????????????????????????????????? `Content-Type`?????????????????????JSON????????????????????????????????????????????????????????????????????????????????????

??????????????????????????????????????? JSP????????????????????????????????????????????????

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_21-01-35.png)

???????????????????????????????????????????????????????????????????????????????????????????????????

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_21-08-56.png)


- weeks                 - ??????
- jslxdm                - ????????????
- codeCampusListNumber  - ????????????
- teaNum                - ???????????????
- wSection              - ??????/??????
- pageNum               - ??????
- pageSize              - ????????????

??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????


```python
...
...

def search_free_classroom(self, query_param):
        headers = {
            ''Host'': Host,
            ''User-Agent'': UserAgent,
            ''Referer'': query_refer_url,
            ''X-Requested-With'': ''XMLHttpRequest'',
            ''Content-Type'': ''application/x-www-form-urlencoded; charset=UTF-8'',
        }
        response = self.session.post(query_url, data=query_param, headers=headers, cookies=self.session.cookies)
        data = response.json()[0][''records'']
        logging.debug(''free classrooms:'', ''(week'', query_param[''weeks''], '')'', ''(section'', query_param[''wSection''], '')'')
        sets = []
        for i in range(len(data)):
            val = data[i][''classroomName'']
            sets.append(val)
        logging.debug(sets)
        return sets


if __name__ == "__main__":
    request = Request(USERNAME, PASSWORD)
    request.login()
    param = {
        ''weeks'': 3,
        ''jslxdm'': 1,
        ''codeCampusListNumber'': 1,
        ''teaNum'': 14,
        ''wSection'': 4/4,
        ''pageNum'': 1,
        ''pageSize'': 10,
    }
    request.search_free_classroom(param)
```

?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????App?????????????????????????????????

?????????







', '2013-02-28 20:47:12.905023+08', '2015-05-05 16:25:10.905023+08', 9, 2, 't', 59);
INSERT INTO "public"."post" VALUES (14, 'Prof.', 'ifksiMZR6J', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/320858ac51504dbe83ee5ac50d4d5813.jpg', 'I will greet this day with love in my heart. All journeys have secret destinations of which the traveler is unaware. Sometimes you win, sometimes you learn. Flexible settings enable you to set up a custom key for comparison and synchronization. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. A man???s best friends are his ten fingers. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Anyone who has ever made anything of importance was disciplined. A query is used to extract data from the database in a readable format according to the user''s request. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. A man is not old until regrets take the place of dreams. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. The reason why a great man is great is that he resolves to be a great man. Success consists of going from failure to failure without loss of enthusiasm. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Remember that failure is an event, not a person. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. I will greet this day with love in my heart. Actually it is just in an idea when feel oneself can achieve and cannot achieve. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Remember that failure is an event, not a person. What you get by achieving your goals is not as important as what you become by achieving your goals. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Sometimes you win, sometimes you learn. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. Remember that failure is an event, not a person. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. How we spend our days is, of course, how we spend our lives.', '2015-08-27 19:35:43.905023+08', '2003-10-20 20:28:26.905023+08', 1, 4, 't', 1);
INSERT INTO "public"."post" VALUES (13, 'Prof.', 'Dnn0VL8ZnD', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/320858ac51504dbe83ee5ac50d4d5813.jpg', 'To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. A query is used to extract data from the database in a readable format according to the user''s request. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. If it scares you, it might be a good thing to try. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Anyone who has never made a mistake has never tried anything new. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Remember that failure is an event, not a person. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. I will greet this day with love in my heart. A man is not old until regrets take the place of dreams. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. You must be the change you wish to see in the world. The reason why a great man is great is that he resolves to be a great man. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. I may not have gone where I intended to go, but I think I have ended up where I needed to be. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. The past has no power over the present moment. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. The On Startup feature allows you to control what tabs appear when you launch Navicat. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. You must be the change you wish to see in the world. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. The reason why a great man is great is that he resolves to be a great man. There is no way to happiness. Happiness is the way. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. A query is used to extract data from the database in a readable format according to the user''s request. You cannot save people, you can just love them. Flexible settings enable you to set up a custom key for comparison and synchronization. Anyone who has ever made anything of importance was disciplined. The Synchronize to Database function will give you a full picture of all database differences. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. The On Startup feature allows you to control what tabs appear when you launch Navicat. I may not have gone where I intended to go, but I think I have ended up where I needed to be.', '2002-05-11 11:57:04.905023+08', '2020-04-12 03:18:38.905023+08', 6, 3, 'f', 2);
INSERT INTO "public"."post" VALUES (8, 'Mr.', 'Bj9hE4VOcq', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'You cannot save people, you can just love them. Anyone who has ever made anything of importance was disciplined. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. If it scares you, it might be a good thing to try. The On Startup feature allows you to control what tabs appear when you launch Navicat. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Flexible settings enable you to set up a custom key for comparison and synchronization. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. If the plan doesn???t work, change the plan, but never the goal. Typically, it is employed as an encrypted version of Telnet. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. If you wait, all that happens is you get older. A query is used to extract data from the database in a readable format according to the user''s request. If it scares you, it might be a good thing to try. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. It wasn???t raining when Noah built the ark. Difficult circumstances serve as a textbook of life for people. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. What you get by achieving your goals is not as important as what you become by achieving your goals. Difficult circumstances serve as a textbook of life for people. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Genius is an infinite capacity for taking pains. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Actually it is just in an idea when feel oneself can achieve and cannot achieve. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. What you get by achieving your goals is not as important as what you become by achieving your goals. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Genius is an infinite capacity for taking pains. Creativity is intelligence having fun. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Optimism is the one quality more associated with success and happiness than any other. If it scares you, it might be a good thing to try. If opportunity doesn???t knock, build a door. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. It wasn???t raining when Noah built the ark. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Anyone who has never made a mistake has never tried anything new. If the plan doesn???t work, change the plan, but never the goal. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Flexible settings enable you to set up a custom key for comparison and synchronization. All journeys have secret destinations of which the traveler is unaware. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. The Synchronize to Database function will give you a full picture of all database differences. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. To connect to a database or schema, simply double-click it in the pane. Creativity is intelligence having fun. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane.', '2010-05-13 18:56:38.905023+08', '2002-03-20 20:05:47.905023+08', 4, 4, 't', 18);
INSERT INTO "public"."post" VALUES (20, 'Mr.', 'X53gNyvaWF', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/320858ac51504dbe83ee5ac50d4d5813.jpg', 'Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. How we spend our days is, of course, how we spend our lives. I may not have gone where I intended to go, but I think I have ended up where I needed to be. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Anyone who has ever made anything of importance was disciplined. All journeys have secret destinations of which the traveler is unaware. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Creativity is intelligence having fun. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. You cannot save people, you can just love them. To connect to a database or schema, simply double-click it in the pane. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Creativity is intelligence having fun. I will greet this day with love in my heart. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Anyone who has ever made anything of importance was disciplined. The On Startup feature allows you to control what tabs appear when you launch Navicat. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. If opportunity doesn???t knock, build a door. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. The Synchronize to Database function will give you a full picture of all database differences. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. If the plan doesn???t work, change the plan, but never the goal. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Sometimes you win, sometimes you learn. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. The first step is as good as half over. Creativity is intelligence having fun. I may not have gone where I intended to go, but I think I have ended up where I needed to be. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Flexible settings enable you to set up a custom key for comparison and synchronization. I may not have gone where I intended to go, but I think I have ended up where I needed to be. What you get by achieving your goals is not as important as what you become by achieving your goals. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. I destroy my enemies when I make them my friends. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. It wasn???t raining when Noah built the ark. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. The first step is as good as half over. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. You cannot save people, you can just love them. I destroy my enemies when I make them my friends. The Synchronize to Database function will give you a full picture of all database differences. Success consists of going from failure to failure without loss of enthusiasm. It wasn???t raining when Noah built the ark. Remember that failure is an event, not a person. Typically, it is employed as an encrypted version of Telnet. I may not have gone where I intended to go, but I think I have ended up where I needed to be. A query is used to extract data from the database in a readable format according to the user''s request. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. You cannot save people, you can just love them. There is no way to happiness. Happiness is the way. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. The reason why a great man is great is that he resolves to be a great man. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. A query is used to extract data from the database in a readable format according to the user''s request. To connect to a database or schema, simply double-click it in the pane. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. I will greet this day with love in my heart. The first step is as good as half over. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Champions keep playing until they get it right. A comfort zone is a beautiful place, but nothing ever grows there. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. I will greet this day with love in my heart. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. You will succeed because most people are lazy. You cannot save people, you can just love them. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure.', '2005-05-07 11:08:23.905023+08', '2005-06-13 00:58:46.905023+08', 2, 1, 'f', 606);
INSERT INTO "public"."post" VALUES (15, 'Ms.', 'OzVl3wV2IB', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. If you wait, all that happens is you get older. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Typically, it is employed as an encrypted version of Telnet. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. The On Startup feature allows you to control what tabs appear when you launch Navicat. Typically, it is employed as an encrypted version of Telnet. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Remember that failure is an event, not a person. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Optimism is the one quality more associated with success and happiness than any other. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. What you get by achieving your goals is not as important as what you become by achieving your goals. If you wait, all that happens is you get older. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network.', '2020-04-03 07:44:42.905023+08', '2019-07-03 13:58:10.905023+08', 8, 2, 't', 268);
INSERT INTO "public"."post" VALUES (12, 'Miss.', 'q4f2rFxRlf', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'A man is not old until regrets take the place of dreams. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. All journeys have secret destinations of which the traveler is unaware. Actually it is just in an idea when feel oneself can achieve and cannot achieve. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Genius is an infinite capacity for taking pains. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. How we spend our days is, of course, how we spend our lives. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Creativity is intelligence having fun. Typically, it is employed as an encrypted version of Telnet. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Anyone who has ever made anything of importance was disciplined. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Typically, it is employed as an encrypted version of Telnet. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. A man is not old until regrets take the place of dreams. It wasn???t raining when Noah built the ark. If you wait, all that happens is you get older. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily.', '2013-10-20 07:03:03.905023+08', '2007-08-15 12:00:56.905023+08', 2, 1, 'f', 0);
INSERT INTO "public"."post" VALUES (9, 'Mrs.', 'KJS9o7z5uU', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Optimism is the one quality more associated with success and happiness than any other. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. The On Startup feature allows you to control what tabs appear when you launch Navicat. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Flexible settings enable you to set up a custom key for comparison and synchronization. Flexible settings enable you to set up a custom key for comparison and synchronization. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. It wasn???t raining when Noah built the ark. If the plan doesn???t work, change the plan, but never the goal. The Synchronize to Database function will give you a full picture of all database differences. Remember that failure is an event, not a person. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. A man is not old until regrets take the place of dreams. The Synchronize to Database function will give you a full picture of all database differences. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution.', '2000-12-20 16:17:54.905023+08', '2000-12-03 14:35:50.905023+08', 9, 3, 't', 0);
INSERT INTO "public"."post" VALUES (2, 'Mr.', 'E1kpMn9iAP', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/320858ac51504dbe83ee5ac50d4d5813.jpg', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. The On Startup feature allows you to control what tabs appear when you launch Navicat. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. If the plan doesn???t work, change the plan, but never the goal. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. The reason why a great man is great is that he resolves to be a great man. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. The On Startup feature allows you to control what tabs appear when you launch Navicat. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Genius is an infinite capacity for taking pains. Difficult circumstances serve as a textbook of life for people. The On Startup feature allows you to control what tabs appear when you launch Navicat. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. If the plan doesn???t work, change the plan, but never the goal. Remember that failure is an event, not a person. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. The first step is as good as half over. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. There is no way to happiness. Happiness is the way. You will succeed because most people are lazy. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. You will succeed because most people are lazy. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server.', '2016-10-24 14:29:41.905023+08', '2010-03-30 03:31:18.905023+08', 8, 1, 't', 34);
INSERT INTO "public"."post" VALUES (1, 'Git???????????????????????????', 'Git???????????????????????????', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/320858ac51504dbe83ee5ac50d4d5813.jpg', '

## 0x01

???????????????????????????Git?????????????????????????????????????????????????????????????????????

????????????????????????????????????????????????????????????????????????????????????

1. ??????????????? `master` ??????????????? `release` ???????????????????????????????????????

2. ????????????????????? `dev` ??????????????????????????????????????????????????????????????????

eg. Web ?????????????????????????????????????????? `dev-server`, `dev-app`, `dev-web`

3. ????????????????????????????????? `dev` ??????

4. ???????????? `merge` ????????????

5. ???????????????????????? `.gitignore` ???????????????????????????????????????????????????????????????????????????

?????????

????????????

## 0x02

?????????????????????????????????????????????????????????????????????????????????????????? [Okito](https://github.com/wlonestar/okito)????????????????????????????????????

???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????

??????????????????????????????????????????????????????????????????

???????????????

-- ??? --
', '2016-04-25 02:55:13.905023+08', '2009-03-21 19:11:11.905023+08', 2, 3, 't', 12);
INSERT INTO "public"."post" VALUES (18, 'Prof.', 'XV1XONeS9B', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Champions keep playing until they get it right. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Creativity is intelligence having fun. The On Startup feature allows you to control what tabs appear when you launch Navicat. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. The reason why a great man is great is that he resolves to be a great man. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. You cannot save people, you can just love them. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. In the middle of winter I at last discovered that there was in me an invincible summer. What you get by achieving your goals is not as important as what you become by achieving your goals. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections.', '2008-01-06 18:33:14.905023+08', '2015-12-20 06:11:20.905023+08', 7, 3, 't', 267);
INSERT INTO "public"."post" VALUES (19, 'Mr.', 'hCSsvhw0KS', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/320858ac51504dbe83ee5ac50d4d5813.jpg', 'It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. I may not have gone where I intended to go, but I think I have ended up where I needed to be. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. Optimism is the one quality more associated with success and happiness than any other. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. All journeys have secret destinations of which the traveler is unaware. Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', '2009-07-30 16:33:58.905023+08', '2004-12-27 22:17:26.905023+08', 4, 3, 't', 418);
INSERT INTO "public"."post" VALUES (17, 'Mr.', 'InMxj62WnR', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. What you get by achieving your goals is not as important as what you become by achieving your goals. If the plan doesn???t work, change the plan, but never the goal. Difficult circumstances serve as a textbook of life for people. You must be the change you wish to see in the world. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. A comfort zone is a beautiful place, but nothing ever grows there. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. If it scares you, it might be a good thing to try. In the middle of winter I at last discovered that there was in me an invincible summer. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. In the middle of winter I at last discovered that there was in me an invincible summer. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. It wasn???t raining when Noah built the ark. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. I destroy my enemies when I make them my friends. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP.', '2009-08-22 22:11:51.905023+08', '2022-07-12 10:45:31.905023+08', 7, 4, 't', 268);
INSERT INTO "public"."post" VALUES (16, 'Miss.', 'lTaFRipd9y', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/320858ac51504dbe83ee5ac50d4d5813.jpg', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. There is no way to happiness. Happiness is the way. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated.', '2002-02-18 01:53:29.905023+08', '2021-02-15 10:04:40.905023+08', 6, 1, 't', 338);

-- ----------------------------
-- Table structure for post_collection
-- ----------------------------
DROP TABLE IF EXISTS "public"."post_collection";
CREATE TABLE "public"."post_collection" (
  "post_id" int8 NOT NULL DEFAULT nextval('post_collection_post_id_seq'::regclass),
  "collect_id" int8 NOT NULL DEFAULT nextval('post_collection_collect_id_seq'::regclass)
)
;

-- ----------------------------
-- Records of post_collection
-- ----------------------------
INSERT INTO "public"."post_collection" VALUES (1, 1);

-- ----------------------------
-- Table structure for post_column
-- ----------------------------
DROP TABLE IF EXISTS "public"."post_column";
CREATE TABLE "public"."post_column" (
  "post_id" int8 NOT NULL DEFAULT nextval('post_column_post_id_seq'::regclass),
  "column_id" int8 NOT NULL DEFAULT nextval('post_column_column_id_seq'::regclass)
)
;

-- ----------------------------
-- Records of post_column
-- ----------------------------
INSERT INTO "public"."post_column" VALUES (1, 1);
INSERT INTO "public"."post_column" VALUES (2, 1);

-- ----------------------------
-- Table structure for post_comment
-- ----------------------------
DROP TABLE IF EXISTS "public"."post_comment";
CREATE TABLE "public"."post_comment" (
  "id" int8 NOT NULL DEFAULT nextval('post_comment_id_seq'::regclass),
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "upload_time" timestamptz(6) NOT NULL,
  "author_id" int8 NOT NULL,
  "post_id" int8 NOT NULL,
  "parent_id" int8
)
;

-- ----------------------------
-- Records of post_comment
-- ----------------------------
INSERT INTO "public"."post_comment" VALUES (13, '???????????????????????????????????????????????????????????????', '2023-01-06 13:40:35.561851+08', 2, 14, 1);
INSERT INTO "public"."post_comment" VALUES (14, '????????????????????????????????????', '2023-01-06 13:40:35.565286+08', 2, 5, 3);
INSERT INTO "public"."post_comment" VALUES (1, '?????????????????????????????????', '2023-01-06 13:40:35.458871+08', 2, 14, NULL);
INSERT INTO "public"."post_comment" VALUES (2, '???????????????????????????????????????', '2023-01-06 13:40:35.514815+08', 2, 3, NULL);
INSERT INTO "public"."post_comment" VALUES (12, '??????????????????????????????????????????????????????????????????', '2023-01-06 13:40:35.559361+08', 2, 1, NULL);
INSERT INTO "public"."post_comment" VALUES (9, '?????????????????????????????????', '2023-01-06 13:40:35.550228+08', 2, 2, 5);
INSERT INTO "public"."post_comment" VALUES (6, '?????????????????????????????????', '2023-01-06 13:40:35.527955+08', 3, 4, NULL);
INSERT INTO "public"."post_comment" VALUES (7, '????????????????????????????????????????????????????????????', '2023-01-06 13:40:35.533436+08', 3, 6, NULL);
INSERT INTO "public"."post_comment" VALUES (15, '??????????????????????????????????????????????????????????????????', '2023-01-06 13:40:35.568709+08', 1, 6, 8);
INSERT INTO "public"."post_comment" VALUES (8, '????????????????????????????????????????????????????????????', '2023-01-06 13:40:35.546229+08', 2, 6, NULL);
INSERT INTO "public"."post_comment" VALUES (11, '???????????????????????????', '2023-01-06 13:40:35.556805+08', 3, 7, NULL);
INSERT INTO "public"."post_comment" VALUES (4, '???????????????????????????', '2023-01-06 13:40:35.521736+08', 4, 9, NULL);
INSERT INTO "public"."post_comment" VALUES (10, '???????????????????????????????????????', '2023-01-06 13:40:35.553859+08', 3, 10, NULL);
INSERT INTO "public"."post_comment" VALUES (5, '??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????', '2023-01-06 13:40:35.524947+08', 3, 2, NULL);
INSERT INTO "public"."post_comment" VALUES (16, 'zdfcsdgfv begsrfdhgy45tr vb 34tr wedfg 3Zrettgt??????????????????????????????v???', '2023-02-05 15:15:52+08', 1, 2, 9);
INSERT INTO "public"."post_comment" VALUES (3, '???????????????????????????????????????????????????????????????', '2023-01-06 13:40:35.518729+08', 1, 14, 1);
INSERT INTO "public"."post_comment" VALUES (17, '????????????v?????????v????????????????????????v????????????verge', '2023-02-05 20:42:14+08', 1, 2, NULL);
INSERT INTO "public"."post_comment" VALUES (18, '???v???????????????????????????????????????????????????', '2023-02-05 20:45:56+08', 1, 2, 5);
INSERT INTO "public"."post_comment" VALUES (19, '??????????????????????????????????????????????????1', '2023-02-09 14:37:19.518+08', 1, 2, NULL);
INSERT INTO "public"."post_comment" VALUES (20, '???????????????', '2023-02-09 14:37:48.71+08', 1, 2, 5);
INSERT INTO "public"."post_comment" VALUES (21, '???????????????', '2023-02-09 14:38:18.728+08', 1, 2, 9);
INSERT INTO "public"."post_comment" VALUES (22, 'sdfwefwv we f wert we', '2023-02-09 14:52:48.132+08', 2, 10, 10);
INSERT INTO "public"."post_comment" VALUES (23, 'wdsw  gd e ', '2023-02-09 14:52:58.717+08', 2, 10, NULL);
INSERT INTO "public"."post_comment" VALUES (24, 'hw;oerf herfchsd;fbjjohqweeli;jbefdnscjivsldbtr', '2023-02-22 02:01:16.843+08', 4, 13, NULL);
INSERT INTO "public"."post_comment" VALUES (25, 'wegljknlvhleiwrtulnghboi wi terio hwerjero;ity', '2023-02-22 02:01:46.867+08', 4, 13, NULL);
INSERT INTO "public"."post_comment" VALUES (26, 'e;toiuge5; oy', '2023-02-23 10:13:02.659+08', 4, 2, 9);
INSERT INTO "public"."post_comment" VALUES (27, 'werweqwrqwr', '2023-02-24 06:23:20.86+08', 4, 20, NULL);
INSERT INTO "public"."post_comment" VALUES (28, 'AB UH DFCWE HLGURIC WEAYGLIUVB5 NFRTHUYHRKKGVERFDSIUKLGB VHBJHKWelq hcrliuedbrsgkueywargv btuerht;dsiobgyffbdrjkelsffh trltiut', '2023-02-24 06:41:54.195+08', 4, 7, NULL);
INSERT INTO "public"."post_comment" VALUES (29, 'werg ''pibo jtrwngb o;nj''to56j', '2023-02-24 06:42:19.972+08', 4, 7, 11);
INSERT INTO "public"."post_comment" VALUES (30, 'fwefw', '2023-02-24 12:25:42.064+08', 4, 19, NULL);
INSERT INTO "public"."post_comment" VALUES (31, 'w4rwerw', '2023-02-24 12:25:48.296+08', 4, 19, 30);
INSERT INTO "public"."post_comment" VALUES (32, 'rtwerwer', '2023-02-24 12:26:51.385+08', 4, 19, NULL);
INSERT INTO "public"."post_comment" VALUES (33, '???????????????????????????', '2023-02-25 05:05:40.448+08', 10, 20, NULL);
INSERT INTO "public"."post_comment" VALUES (34, 'ersdgvredst 46e', '2023-02-26 06:33:34.626+08', 1, 16, NULL);

-- ----------------------------
-- Table structure for post_comment_like
-- ----------------------------
DROP TABLE IF EXISTS "public"."post_comment_like";
CREATE TABLE "public"."post_comment_like" (
  "comment_id" int8 NOT NULL DEFAULT nextval('post_comment_like_comment_id_seq'::regclass),
  "user_id" int8 NOT NULL DEFAULT nextval('post_comment_like_user_id_seq'::regclass),
  "type" int2
)
;
COMMENT ON COLUMN "public"."post_comment_like"."type" IS '0 -> none
1 -> like
2 -> dislike';

-- ----------------------------
-- Records of post_comment_like
-- ----------------------------
INSERT INTO "public"."post_comment_like" VALUES (2, 2, 1);
INSERT INTO "public"."post_comment_like" VALUES (8, 4, 1);
INSERT INTO "public"."post_comment_like" VALUES (10, 3, 1);
INSERT INTO "public"."post_comment_like" VALUES (2, 1, 0);
INSERT INTO "public"."post_comment_like" VALUES (6, 2, 0);
INSERT INTO "public"."post_comment_like" VALUES (7, 2, 1);
INSERT INTO "public"."post_comment_like" VALUES (10, 1, 1);
INSERT INTO "public"."post_comment_like" VALUES (5, 4, 0);
INSERT INTO "public"."post_comment_like" VALUES (9, 2, 0);
INSERT INTO "public"."post_comment_like" VALUES (14, 3, 0);
INSERT INTO "public"."post_comment_like" VALUES (10, 2, 0);
INSERT INTO "public"."post_comment_like" VALUES (13, 1, 0);
INSERT INTO "public"."post_comment_like" VALUES (3, 4, 0);
INSERT INTO "public"."post_comment_like" VALUES (7, 1, 1);
INSERT INTO "public"."post_comment_like" VALUES (14, 4, 1);
INSERT INTO "public"."post_comment_like" VALUES (20, 4, 2);
INSERT INTO "public"."post_comment_like" VALUES (16, 4, 1);
INSERT INTO "public"."post_comment_like" VALUES (18, 4, 1);
INSERT INTO "public"."post_comment_like" VALUES (9, 4, 1);
INSERT INTO "public"."post_comment_like" VALUES (28, 4, 2);
INSERT INTO "public"."post_comment_like" VALUES (11, 4, 1);

-- ----------------------------
-- Table structure for post_like
-- ----------------------------
DROP TABLE IF EXISTS "public"."post_like";
CREATE TABLE "public"."post_like" (
  "post_id" int8 NOT NULL DEFAULT nextval('post_like_post_id_seq'::regclass),
  "user_id" int8 NOT NULL DEFAULT nextval('post_like_user_id_seq'::regclass),
  "type" int2
)
;
COMMENT ON COLUMN "public"."post_like"."type" IS '0 -> none
1 -> like
2 -> dislike';

-- ----------------------------
-- Records of post_like
-- ----------------------------
INSERT INTO "public"."post_like" VALUES (6, 2, 1);
INSERT INTO "public"."post_like" VALUES (7, 4, 1);
INSERT INTO "public"."post_like" VALUES (8, 3, 1);
INSERT INTO "public"."post_like" VALUES (14, 4, 1);
INSERT INTO "public"."post_like" VALUES (7, 2, 0);
INSERT INTO "public"."post_like" VALUES (9, 1, 0);
INSERT INTO "public"."post_like" VALUES (1, 3, 0);
INSERT INTO "public"."post_like" VALUES (12, 3, 1);
INSERT INTO "public"."post_like" VALUES (12, 2, 0);
INSERT INTO "public"."post_like" VALUES (5, 4, 0);
INSERT INTO "public"."post_like" VALUES (10, 2, 0);
INSERT INTO "public"."post_like" VALUES (14, 2, 1);
INSERT INTO "public"."post_like" VALUES (6, 1, 1);
INSERT INTO "public"."post_like" VALUES (7, 1, 0);
INSERT INTO "public"."post_like" VALUES (5, 1, 1);
INSERT INTO "public"."post_like" VALUES (13, 1, 1);
INSERT INTO "public"."post_like" VALUES (10, 1, 0);
INSERT INTO "public"."post_like" VALUES (15, 1, 1);
INSERT INTO "public"."post_like" VALUES (14, 1, 1);
INSERT INTO "public"."post_like" VALUES (19, 1, 1);
INSERT INTO "public"."post_like" VALUES (2, 4, 1);
INSERT INTO "public"."post_like" VALUES (6, 4, 0);
INSERT INTO "public"."post_like" VALUES (20, 4, 1);
INSERT INTO "public"."post_like" VALUES (17, 4, 0);
INSERT INTO "public"."post_like" VALUES (19, 4, 1);
INSERT INTO "public"."post_like" VALUES (18, 4, 1);
INSERT INTO "public"."post_like" VALUES (15, 4, 1);
INSERT INTO "public"."post_like" VALUES (16, 4, 1);
INSERT INTO "public"."post_like" VALUES (17, 2, 1);
INSERT INTO "public"."post_like" VALUES (20, 10, 1);
INSERT INTO "public"."post_like" VALUES (20, 2, 1);
INSERT INTO "public"."post_like" VALUES (19, 2, 1);
INSERT INTO "public"."post_like" VALUES (20, 1, 1);
INSERT INTO "public"."post_like" VALUES (16, 1, 1);

-- ----------------------------
-- Table structure for post_tag
-- ----------------------------
DROP TABLE IF EXISTS "public"."post_tag";
CREATE TABLE "public"."post_tag" (
  "post_id" int8 NOT NULL DEFAULT nextval('post_tag_post_id_seq'::regclass),
  "tag_id" int8 NOT NULL DEFAULT nextval('post_tag_tag_id_seq'::regclass)
)
;

-- ----------------------------
-- Records of post_tag
-- ----------------------------
INSERT INTO "public"."post_tag" VALUES (1, 1);
INSERT INTO "public"."post_tag" VALUES (1, 2);
INSERT INTO "public"."post_tag" VALUES (1, 3);
INSERT INTO "public"."post_tag" VALUES (3, 2);
INSERT INTO "public"."post_tag" VALUES (3, 3);
INSERT INTO "public"."post_tag" VALUES (3, 4);
INSERT INTO "public"."post_tag" VALUES (4, 3);
INSERT INTO "public"."post_tag" VALUES (4, 1);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS "public"."role";
CREATE TABLE "public"."role" (
  "id" int8 NOT NULL DEFAULT nextval('role_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO "public"."role" VALUES (1, 'admin');
INSERT INTO "public"."role" VALUES (2, 'member');
INSERT INTO "public"."role" VALUES (3, 'guest');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user";
CREATE TABLE "public"."sys_user" (
  "id" int8 NOT NULL DEFAULT nextval('sys_user_id_seq'::regclass),
  "username" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "avatar" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "bio" varchar(255) COLLATE "pg_catalog"."default",
  "homepage" varchar(255) COLLATE "pg_catalog"."default",
  "intro" varchar(255) COLLATE "pg_catalog"."default",
  "join_time" timestamptz(6) NOT NULL,
  "role_id" int8 NOT NULL,
  "token" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO "public"."sys_user" VALUES (6, '????????????', '123', 'hhh@163.com', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/f0ee8a3c7c9638a54940382568c9dpng.png', NULL, NULL, NULL, '2023-02-07 20:33:55.584622+08', 2, NULL);
INSERT INTO "public"."sys_user" VALUES (7, '??????iTouch', 'aaa', 'www', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/f0ee8a3c7c9638a54940382568c9dpng.png', NULL, NULL, NULL, '2023-02-07 20:33:55.584622+08', 2, NULL);
INSERT INTO "public"."sys_user" VALUES (8, 'wsbb', '222', 'jklsdfb', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/f0ee8a3c7c9638a54940382568c9dpng.png', NULL, NULL, NULL, '2023-02-07 20:33:55.584622+08', 2, NULL);
INSERT INTO "public"."sys_user" VALUES (9, '???i??????????????????', '111', 'werfwe@okito.com', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/f0ee8a3c7c9638a54940382568c9dpng.png', NULL, NULL, NULL, '2023-02-07 20:33:55.584622+08', 2, '7caaf775-8fe5-4931-a86e-3859f78a8c84');
INSERT INTO "public"."sys_user" VALUES (21, '2123', '21312', '123@12.cc', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/f0ee8a3c7c9638a54940382568c9dpng.png', NULL, NULL, NULL, '2023-02-26 12:12:14.158651+08', 2, NULL);
INSERT INTO "public"."sys_user" VALUES (3, '??????u?????????', 'yyy', 'bbb@163.com', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/cddfd2bf-1f79-45dc-b650-2840300735d8.jpg', '???????????????????????????', 'https://mui.com', NULL, '2023-01-04 20:32:14.905023+08', 2, 'a82cd754-a2c2-4b18-bf83-48b2b0301183');
INSERT INTO "public"."sys_user" VALUES (10, '?????????????????????', '123', 'test@test.com', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/f0ee8a3c7c9638a54940382568c9dpng.png', NULL, NULL, NULL, '2023-02-25 13:04:46.884187+08', 2, 'de3f194d-6490-480c-9d65-25f2c7281417');
INSERT INTO "public"."sys_user" VALUES (1, 'wjl', '123', 'wjl@163.com', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/483850ff-576b-4941-9595-cde286070364.jpg', '?????????', NULL, NULL, '2023-01-04 20:31:36.905023+08', 1, '0876659c-2003-4e72-8151-c797dd9452bd');
INSERT INTO "public"."sys_user" VALUES (2, '????????????v???', 'xxx', 'aaa@163.com', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/e590db1f-9d83-4af3-b49c-b0c9b9ffd9bc.jpg', NULL, NULL, NULL, '2023-01-04 20:31:54.905023+08', 2, 'a2fa604a-7a90-4474-b083-f0613a5160a1');
INSERT INTO "public"."sys_user" VALUES (4, 'CCC', 'zzz', 'ccc@163.com', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/b924ce27-b536-4ec0-9b3c-0f86f7779beb.jpg', '?????????', NULL, NULL, '2023-01-04 20:32:28.905023+08', 2, 'e2971bcf-f803-48a4-8e41-4b3e03b64613');
INSERT INTO "public"."sys_user" VALUES (19, '1211', '1212', '123@12.co', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/f0ee8a3c7c9638a54940382568c9dpng.png', NULL, NULL, NULL, '2023-02-26 12:12:14.158651+08', 2, NULL);
INSERT INTO "public"."sys_user" VALUES (20, '121212', '12121', '123@12.com', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/f0ee8a3c7c9638a54940382568c9dpng.png', NULL, NULL, NULL, '2023-02-26 12:12:14.158651+08', 2, NULL);

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS "public"."tag";
CREATE TABLE "public"."tag" (
  "id" int8 NOT NULL DEFAULT nextval('tag_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "cover" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO "public"."tag" VALUES (1, 'Mike Hughes', '4j9bjGUGc4', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. A man is not old until regrets take the place of dreams. Navicat 15 has added support for the system-wide dark mode. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Typically, it is employed as an encrypted version of Telnet. Anyone who has never made a mistake has never tried anything new. If the plan doesn???t work, change the plan, but never the goal. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Optimism is the one quality more associated with success and happiness than any other. Remember that failure is an event, not a person. The On Startup feature allows you to control what tabs appear when you launch Navicat. Actually it is just in an idea when feel oneself can achieve and cannot achieve. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. The Synchronize to Database function will give you a full picture of all database differences. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. A man is not old until regrets take the place of dreams. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Flexible settings enable you to set up a custom key for comparison and synchronization. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. The reason why a great man is great is that he resolves to be a great man. Navicat 15 has added support for the system-wide dark mode. A man???s best friends are his ten fingers. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. A man???s best friends are his ten fingers. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Anyone who has never made a mistake has never tried anything new. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Remember that failure is an event, not a person. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. A man is not old until regrets take the place of dreams. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Sometimes you win, sometimes you learn. You cannot save people, you can just love them. A man???s best friends are his ten fingers. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. You will succeed because most people are lazy. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. What you get by achieving your goals is not as important as what you become by achieving your goals. Sometimes you win, sometimes you learn. Optimism is the one quality more associated with success and happiness than any other. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. The Synchronize to Database function will give you a full picture of all database differences. A comfort zone is a beautiful place, but nothing ever grows there. The reason why a great man is great is that he resolves to be a great man. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. If it scares you, it might be a good thing to try. A query is used to extract data from the database in a readable format according to the user''s request. A man???s best friends are his ten fingers. Creativity is intelligence having fun. Optimism is the one quality more associated with success and happiness than any other. If opportunity doesn???t knock, build a door. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. The past has no power over the present moment. The past has no power over the present moment. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. If it scares you, it might be a good thing to try. Genius is an infinite capacity for taking pains. A man is not old until regrets take the place of dreams. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. A man???s best friends are his ten fingers. A query is used to extract data from the database in a readable format according to the user''s request. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Typically, it is employed as an encrypted version of Telnet. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. In the middle of winter I at last discovered that there was in me an invincible summer. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Genius is an infinite capacity for taking pains. You cannot save people, you can just love them. The reason why a great man is great is that he resolves to be a great man. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat 15 has added support for the system-wide dark mode. All journeys have secret destinations of which the traveler is unaware. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. Actually it is just in an idea when feel oneself can achieve and cannot achieve.');
INSERT INTO "public"."tag" VALUES (2, 'Mo Shihan', '7SCpgzuH2B', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you. If you wait, all that happens is you get older. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Optimism is the one quality more associated with success and happiness than any other. The Synchronize to Database function will give you a full picture of all database differences. Optimism is the one quality more associated with success and happiness than any other. The On Startup feature allows you to control what tabs appear when you launch Navicat. If it scares you, it might be a good thing to try. You must be the change you wish to see in the world. To connect to a database or schema, simply double-click it in the pane. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. How we spend our days is, of course, how we spend our lives. If the plan doesn???t work, change the plan, but never the goal. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. A man is not old until regrets take the place of dreams. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Optimism is the one quality more associated with success and happiness than any other. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. The On Startup feature allows you to control what tabs appear when you launch Navicat. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Difficult circumstances serve as a textbook of life for people. Difficult circumstances serve as a textbook of life for people. A man is not old until regrets take the place of dreams. The Synchronize to Database function will give you a full picture of all database differences. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. The On Startup feature allows you to control what tabs appear when you launch Navicat. Difficult circumstances serve as a textbook of life for people. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. In the middle of winter I at last discovered that there was in me an invincible summer. Optimism is the one quality more associated with success and happiness than any other. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Success consists of going from failure to failure without loss of enthusiasm. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Anyone who has ever made anything of importance was disciplined. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window.');
INSERT INTO "public"."tag" VALUES (4, 'Zou Zitao', 'p6Q0l7e2Rn', 'The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Genius is an infinite capacity for taking pains. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. I destroy my enemies when I make them my friends. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. It wasn???t raining when Noah built the ark. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. Flexible settings enable you to set up a custom key for comparison and synchronization. The first step is as good as half over. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. A query is used to extract data from the database in a readable format according to the user''s request. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Success consists of going from failure to failure without loss of enthusiasm. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. If you wait, all that happens is you get older. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. In the middle of winter I at last discovered that there was in me an invincible summer. Actually it is just in an idea when feel oneself can achieve and cannot achieve. The reason why a great man is great is that he resolves to be a great man. You will succeed because most people are lazy. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. If the plan doesn???t work, change the plan, but never the goal. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. A man???s best friends are his ten fingers. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. A man is not old until regrets take the place of dreams. A query is used to extract data from the database in a readable format according to the user''s request. The first step is as good as half over. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. I destroy my enemies when I make them my friends. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab.');
INSERT INTO "public"."tag" VALUES (5, 'Tony Boyd', 'rwD8ld48S5', 'The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Genius is an infinite capacity for taking pains. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. In the middle of winter I at last discovered that there was in me an invincible summer. You cannot save people, you can just love them. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. If it scares you, it might be a good thing to try. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. It wasn???t raining when Noah built the ark. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Difficult circumstances serve as a textbook of life for people. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. You must be the change you wish to see in the world.');
INSERT INTO "public"."tag" VALUES (6, 'Gu Jiehong', 'GMWyEY8TeW', 'Anyone who has ever made anything of importance was disciplined. What you get by achieving your goals is not as important as what you become by achieving your goals. If opportunity doesn???t knock, build a door. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. The Synchronize to Database function will give you a full picture of all database differences. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. The past has no power over the present moment. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. How we spend our days is, of course, how we spend our lives. A man is not old until regrets take the place of dreams. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. The Synchronize to Database function will give you a full picture of all database differences. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. You will succeed because most people are lazy. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. A man???s best friends are his ten fingers. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. The reason why a great man is great is that he resolves to be a great man. Success consists of going from failure to failure without loss of enthusiasm. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. If it scares you, it might be a good thing to try. You must be the change you wish to see in the world. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Creativity is intelligence having fun. Anyone who has ever made anything of importance was disciplined. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Remember that failure is an event, not a person. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. You cannot save people, you can just love them. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. All journeys have secret destinations of which the traveler is unaware. A comfort zone is a beautiful place, but nothing ever grows there. I will greet this day with love in my heart. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. It wasn???t raining when Noah built the ark. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. A man???s best friends are his ten fingers. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Optimism is the one quality more associated with success and happiness than any other. Difficult circumstances serve as a textbook of life for people. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. In the middle of winter I at last discovered that there was in me an invincible summer. Champions keep playing until they get it right. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Typically, it is employed as an encrypted version of Telnet. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Success consists of going from failure to failure without loss of enthusiasm. A comfort zone is a beautiful place, but nothing ever grows there. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences.');
INSERT INTO "public"."tag" VALUES (7, 'Wada Aoi', 'C5lxmOJ6p9', 'Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Navicat 15 has added support for the system-wide dark mode. In the middle of winter I at last discovered that there was in me an invincible summer. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. You cannot save people, you can just love them. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. In the middle of winter I at last discovered that there was in me an invincible summer. If it scares you, it might be a good thing to try. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. I destroy my enemies when I make them my friends. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. The past has no power over the present moment. The first step is as good as half over. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Creativity is intelligence having fun. A query is used to extract data from the database in a readable format according to the user''s request. If the plan doesn???t work, change the plan, but never the goal. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Anyone who has never made a mistake has never tried anything new. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. I will greet this day with love in my heart. I will greet this day with love in my heart. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Champions keep playing until they get it right. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. If it scares you, it might be a good thing to try. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. If you wait, all that happens is you get older. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Anyone who has never made a mistake has never tried anything new. Champions keep playing until they get it right. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. There is no way to happiness. Happiness is the way. I will greet this day with love in my heart. Difficult circumstances serve as a textbook of life for people. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Actually it is just in an idea when feel oneself can achieve and cannot achieve. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. How we spend our days is, of course, how we spend our lives. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. I may not have gone where I intended to go, but I think I have ended up where I needed to be. A query is used to extract data from the database in a readable format according to the user''s request. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. The first step is as good as half over. Anyone who has never made a mistake has never tried anything new. There is no way to happiness. Happiness is the way. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Creativity is intelligence having fun. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. If you wait, all that happens is you get older. If the plan doesn???t work, change the plan, but never the goal. Actually it is just in an idea when feel oneself can achieve and cannot achieve. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. What you get by achieving your goals is not as important as what you become by achieving your goals. If opportunity doesn???t knock, build a door. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. The On Startup feature allows you to control what tabs appear when you launch Navicat. Remember that failure is an event, not a person. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. A query is used to extract data from the database in a readable format according to the user''s request. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. A query is used to extract data from the database in a readable format according to the user''s request. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Anyone who has never made a mistake has never tried anything new. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more.');
INSERT INTO "public"."tag" VALUES (8, 'Ying On Kay', 'ToKgACubKa', 'Navicat 15 has added support for the system-wide dark mode. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. The Synchronize to Database function will give you a full picture of all database differences. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.');
INSERT INTO "public"."tag" VALUES (9, 'Kong Wai Man', 'u3uCSTjxVH', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. To connect to a database or schema, simply double-click it in the pane. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. How we spend our days is, of course, how we spend our lives. To connect to a database or schema, simply double-click it in the pane. All journeys have secret destinations of which the traveler is unaware. Sometimes you win, sometimes you learn. Flexible settings enable you to set up a custom key for comparison and synchronization. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. A man is not old until regrets take the place of dreams. The On Startup feature allows you to control what tabs appear when you launch Navicat. There is no way to happiness. Happiness is the way. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Optimism is the one quality more associated with success and happiness than any other. A comfort zone is a beautiful place, but nothing ever grows there. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Difficult circumstances serve as a textbook of life for people. You must be the change you wish to see in the world. Champions keep playing until they get it right. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. The Synchronize to Database function will give you a full picture of all database differences. You cannot save people, you can just love them. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. The Synchronize to Database function will give you a full picture of all database differences. Genius is an infinite capacity for taking pains. If it scares you, it might be a good thing to try. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. A query is used to extract data from the database in a readable format according to the user''s request. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. You will succeed because most people are lazy. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. Success consists of going from failure to failure without loss of enthusiasm. In the middle of winter I at last discovered that there was in me an invincible summer. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. It wasn???t raining when Noah built the ark. What you get by achieving your goals is not as important as what you become by achieving your goals. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. In the middle of winter I at last discovered that there was in me an invincible summer. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. If it scares you, it might be a good thing to try. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. The first step is as good as half over. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. The reason why a great man is great is that he resolves to be a great man. Sometimes you win, sometimes you learn. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Difficult circumstances serve as a textbook of life for people. If you wait, all that happens is you get older. Flexible settings enable you to set up a custom key for comparison and synchronization. Difficult circumstances serve as a textbook of life for people. You cannot save people, you can just love them. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Navicat 15 has added support for the system-wide dark mode. Instead of wondering when your next vacation is, maybe you should set up a life you don???t need to escape from. If the plan doesn???t work, change the plan, but never the goal. I will greet this day with love in my heart. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Anyone who has never made a mistake has never tried anything new. I may not have gone where I intended to go, but I think I have ended up where I needed to be. If opportunity doesn???t knock, build a door. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. A man is not old until regrets take the place of dreams. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Champions keep playing until they get it right. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. I may not have gone where I intended to go, but I think I have ended up where I needed to be. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. If the plan doesn???t work, change the plan, but never the goal. A man is not old until regrets take the place of dreams. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Navicat 15 has added support for the system-wide dark mode. Success consists of going from failure to failure without loss of enthusiasm. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats.');
INSERT INTO "public"."tag" VALUES (10, 'Ono Ryota', 'qdHlPQZn99', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. The past has no power over the present moment. It wasn???t raining when Noah built the ark. If it scares you, it might be a good thing to try. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Anyone who has never made a mistake has never tried anything new. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Flexible settings enable you to set up a custom key for comparison and synchronization. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. A comfort zone is a beautiful place, but nothing ever grows there. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. A man is not old until regrets take the place of dreams. Success consists of going from failure to failure without loss of enthusiasm. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. There is no way to happiness. Happiness is the way. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. If it scares you, it might be a good thing to try. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.');
INSERT INTO "public"."tag" VALUES (3, 'Matsumoto Ren', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/okito.svg', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. If it scares you, it might be a good thing to try. Success consists of going from failure to failure without loss of enthusiasm. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.');

-- ----------------------------
-- Table structure for tag_follow
-- ----------------------------
DROP TABLE IF EXISTS "public"."tag_follow";
CREATE TABLE "public"."tag_follow" (
  "tag_id" int8 NOT NULL DEFAULT nextval('tag_follow_tag_id_seq'::regclass),
  "user_id" int8 NOT NULL DEFAULT nextval('tag_follow_follower_id_seq'::regclass),
  "follow" bool NOT NULL
)
;

-- ----------------------------
-- Records of tag_follow
-- ----------------------------
INSERT INTO "public"."tag_follow" VALUES (1, 1, 't');
INSERT INTO "public"."tag_follow" VALUES (1, 2, 't');
INSERT INTO "public"."tag_follow" VALUES (1, 3, 't');
INSERT INTO "public"."tag_follow" VALUES (2, 1, 't');
INSERT INTO "public"."tag_follow" VALUES (4, 3, 'f');
INSERT INTO "public"."tag_follow" VALUES (4, 4, 't');
INSERT INTO "public"."tag_follow" VALUES (2, 4, 't');
INSERT INTO "public"."tag_follow" VALUES (3, 4, 'f');

-- ----------------------------
-- Table structure for user_collection_follow
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_collection_follow";
CREATE TABLE "public"."user_collection_follow" (
  "user_id" int8 NOT NULL DEFAULT nextval('user_collection_user_id_seq'::regclass),
  "collect_id" int8 NOT NULL DEFAULT nextval('user_collection_collect_id_seq'::regclass),
  "follow" bool NOT NULL
)
;
COMMENT ON COLUMN "public"."user_collection_follow"."follow" IS 't->follow
f-unfollow';

-- ----------------------------
-- Records of user_collection_follow
-- ----------------------------
INSERT INTO "public"."user_collection_follow" VALUES (1, 1, 't');
INSERT INTO "public"."user_collection_follow" VALUES (1, 2, 'f');
INSERT INTO "public"."user_collection_follow" VALUES (1, 3, 't');
INSERT INTO "public"."user_collection_follow" VALUES (4, 4, 't');
INSERT INTO "public"."user_collection_follow" VALUES (4, 2, 'f');
INSERT INTO "public"."user_collection_follow" VALUES (4, 1, 't');

-- ----------------------------
-- Table structure for user_column_follow
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_column_follow";
CREATE TABLE "public"."user_column_follow" (
  "user_id" int8 NOT NULL DEFAULT nextval('user_column_user_id_seq'::regclass),
  "column_id" int8 NOT NULL DEFAULT nextval('user_column_column_id_seq'::regclass),
  "follow" bool NOT NULL
)
;
COMMENT ON COLUMN "public"."user_column_follow"."follow" IS 't->follow
f->unfollow';

-- ----------------------------
-- Records of user_column_follow
-- ----------------------------
INSERT INTO "public"."user_column_follow" VALUES (2, 4, 't');
INSERT INTO "public"."user_column_follow" VALUES (2, 3, 't');
INSERT INTO "public"."user_column_follow" VALUES (2, 5, 'f');
INSERT INTO "public"."user_column_follow" VALUES (4, 10, 'f');
INSERT INTO "public"."user_column_follow" VALUES (4, 5, 'f');
INSERT INTO "public"."user_column_follow" VALUES (4, 1, 'f');
INSERT INTO "public"."user_column_follow" VALUES (4, 4, 't');
INSERT INTO "public"."user_column_follow" VALUES (4, 3, 'f');
INSERT INTO "public"."user_column_follow" VALUES (2, 1, 't');
INSERT INTO "public"."user_column_follow" VALUES (2, 2, 't');
INSERT INTO "public"."user_column_follow" VALUES (4, 8, 't');

-- ----------------------------
-- Table structure for user_follow
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_follow";
CREATE TABLE "public"."user_follow" (
  "follower_id" int8 NOT NULL DEFAULT nextval('user_follow_follower_id_seq'::regclass),
  "followed_id" int8 NOT NULL DEFAULT nextval('user_follow_followed_id_seq'::regclass),
  "follow" bool NOT NULL
)
;
COMMENT ON TABLE "public"."user_follow" IS 'follower -> followed
a -> b
a ????????? b';

-- ----------------------------
-- Records of user_follow
-- ----------------------------
INSERT INTO "public"."user_follow" VALUES (1, 2, 't');
INSERT INTO "public"."user_follow" VALUES (1, 4, 't');
INSERT INTO "public"."user_follow" VALUES (2, 1, 't');
INSERT INTO "public"."user_follow" VALUES (2, 3, 'f');
INSERT INTO "public"."user_follow" VALUES (2, 4, 't');
INSERT INTO "public"."user_follow" VALUES (3, 4, 't');
INSERT INTO "public"."user_follow" VALUES (4, 1, 't');
INSERT INTO "public"."user_follow" VALUES (4, 4, 'f');
INSERT INTO "public"."user_follow" VALUES (4, 3, 't');
INSERT INTO "public"."user_follow" VALUES (4, 2, 'f');
INSERT INTO "public"."user_follow" VALUES (1, 3, 't');

-- ----------------------------
-- Function structure for add_activity_pin
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_activity_pin"();
CREATE OR REPLACE FUNCTION "public"."add_activity_pin"()
  RETURNS "pg_catalog"."trigger" AS $BODY$ begin 
	insert into activity 
	values(nextval('activity_id_seq'), new.author_id, 3, 2, new.id, current_timestamp);
	return null;
end; $BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_activity_pin_like
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_activity_pin_like"();
CREATE OR REPLACE FUNCTION "public"."add_activity_pin_like"()
  RETURNS "pg_catalog"."trigger" AS $BODY$ begin 
	insert into activity 
	select nextval('activity_id_seq'), new.user_id, 1, 2, new.pin_id, current_timestamp
	where not exists (
		select null from activity
		where (user_id, action_type, action_sub_type, target_id) = (new.user_id, 1, 2, new.pin_id)
	);
	return null;
end; $BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_activity_post
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_activity_post"();
CREATE OR REPLACE FUNCTION "public"."add_activity_post"()
  RETURNS "pg_catalog"."trigger" AS $BODY$ begin 
	insert into activity 
	values(nextval('activity_id_seq'), new.author_id, 3, 1, new.id, current_timestamp);
	return null;
end; $BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_activity_post_like
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_activity_post_like"();
CREATE OR REPLACE FUNCTION "public"."add_activity_post_like"()
  RETURNS "pg_catalog"."trigger" AS $BODY$ begin 
	insert into activity
	select nextval('activity_id_seq'), new.user_id, 1, 1, new.post_id, current_timestamp
	where not exists (
		select null from activity
		where (user_id, action_type, action_sub_type, target_id) = (new.user_id, 1, 1, new.post_id)
	);
	return null;
end; $BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_activity_tag_follow
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_activity_tag_follow"();
CREATE OR REPLACE FUNCTION "public"."add_activity_tag_follow"()
  RETURNS "pg_catalog"."trigger" AS $BODY$ begin 
	insert into activity 
	select nextval('activity_id_seq'), new.user_id, 2, 4, new.tag_id, current_timestamp
	where not exists (
		select null from activity
		where (user_id, action_type, action_sub_type, target_id) = (new.user_id, 2, 4, new.tag_id)
	);
	return null;
end; $BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_activity_user_collection_follow
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_activity_user_collection_follow"();
CREATE OR REPLACE FUNCTION "public"."add_activity_user_collection_follow"()
  RETURNS "pg_catalog"."trigger" AS $BODY$ begin 
	insert into activity 
	select nextval('activity_id_seq'), new.user_id, 2, 3, new.collect_id, current_timestamp
	where not exists (
		select null from activity
		where (user_id, action_type, action_sub_type, target_id) = (new.user_id, 2, 3, new.collect_id)
	);
	return null;
end; $BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_activity_user_column_follow
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_activity_user_column_follow"();
CREATE OR REPLACE FUNCTION "public"."add_activity_user_column_follow"()
  RETURNS "pg_catalog"."trigger" AS $BODY$ begin 
	insert into activity 
	select nextval('activity_id_seq'), new.user_id, 2, 2, new.column_id, current_timestamp
	where not exists (
		select null from activity
		where (user_id, action_type, action_sub_type, target_id) = (new.user_id, 2, 2, new.column_id)
	);
	return null;
end; $BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_activity_user_follow
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_activity_user_follow"();
CREATE OR REPLACE FUNCTION "public"."add_activity_user_follow"()
  RETURNS "pg_catalog"."trigger" AS $BODY$ begin 
	insert into activity 
	select nextval('activity_id_seq'), new.follower_id, 2, 1, new.followed_id, current_timestamp
	where not exists (
		select null from activity
		where (user_id, action_type, action_sub_type, target_id) = (new.follower_id, 2, 1, new.followed_id)
	);
	return null;
end; $BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- View structure for pin_comment_view
-- ----------------------------
DROP VIEW IF EXISTS "public"."pin_comment_view";
CREATE VIEW "public"."pin_comment_view" AS  SELECT p.id,
    p.content,
    p.upload_time,
    p.author_id,
    p.pin_id,
    p.parent_id,
        CASE
            WHEN l.like_num IS NULL THEN 0::bigint
            ELSE l.like_num
        END AS like_num
   FROM pin_comment p
     LEFT JOIN ( SELECT pin_comment_like.comment_id,
            count(*) AS like_num
           FROM pin_comment_like
          WHERE pin_comment_like.type = 1
          GROUP BY pin_comment_like.comment_id) l ON p.id = l.comment_id;

-- ----------------------------
-- View structure for post_comment_view
-- ----------------------------
DROP VIEW IF EXISTS "public"."post_comment_view";
CREATE VIEW "public"."post_comment_view" AS  SELECT p.id,
    p.content,
    p.upload_time,
    p.author_id,
    p.post_id,
    p.parent_id,
        CASE
            WHEN l.like_num IS NULL THEN 0::bigint
            ELSE l.like_num
        END AS like_num
   FROM post_comment p
     LEFT JOIN ( SELECT post_comment_like.comment_id,
            count(*) AS like_num
           FROM post_comment_like
          WHERE post_comment_like.type = 1
          GROUP BY post_comment_like.comment_id) l ON p.id = l.comment_id;

-- ----------------------------
-- View structure for tag_view
-- ----------------------------
DROP VIEW IF EXISTS "public"."tag_view";
CREATE VIEW "public"."tag_view" AS  SELECT t.id,
    t.name,
    t.description,
    t.cover,
        CASE
            WHEN follow.follow_num IS NULL THEN 0::bigint
            ELSE follow.follow_num
        END AS follow_num,
        CASE
            WHEN pt.post_num IS NULL THEN 0::bigint
            ELSE pt.post_num
        END AS post_num
   FROM tag t
     LEFT JOIN ( SELECT tag_follow.tag_id AS tag_a,
            count(*) AS follow_num
           FROM tag_follow
          GROUP BY tag_follow.tag_id) follow ON t.id = follow.tag_a
     LEFT JOIN ( SELECT post_tag.tag_id AS tag_b,
            count(*) AS post_num
           FROM post_tag
          GROUP BY post_tag.tag_id) pt ON t.id = pt.tag_b;

-- ----------------------------
-- View structure for post_view
-- ----------------------------
DROP VIEW IF EXISTS "public"."post_view";
CREATE VIEW "public"."post_view" AS  SELECT p.id,
    p.title,
    p.summary,
    p.cover,
    p.content,
    p.create_time,
    p.update_time,
    p.draft,
    p.cate_id,
    p.author_id,
    p.view_num,
        CASE
            WHEN l.like_num IS NULL THEN 0::bigint
            ELSE l.like_num
        END AS like_num
   FROM post p
     LEFT JOIN ( SELECT post_like.post_id,
            count(*) AS like_num
           FROM post_like
          WHERE post_like.type = 1
          GROUP BY post_like.post_id) l ON p.id = l.post_id;

-- ----------------------------
-- View structure for pin_view
-- ----------------------------
DROP VIEW IF EXISTS "public"."pin_view";
CREATE VIEW "public"."pin_view" AS  SELECT p.id,
    p.content,
    p.create_time,
    p.update_time,
    p.author_id,
    p.view_num,
        CASE
            WHEN l.like_num IS NULL THEN 0::bigint
            ELSE l.like_num
        END AS like_num
   FROM pin p
     LEFT JOIN ( SELECT pin_like.pin_id,
            count(*) AS like_num
           FROM pin_like
          WHERE pin_like.type = 1
          GROUP BY pin_like.pin_id) l ON p.id = l.pin_id;

-- ----------------------------
-- View structure for user_view
-- ----------------------------
DROP VIEW IF EXISTS "public"."user_view";
CREATE VIEW "public"."user_view" AS  SELECT u.id,
    u.username,
    u.password,
    u.email,
    u.token,
    u.avatar,
    u.bio,
    u.homepage,
    u.intro,
    u.join_time,
        CASE
            WHEN follower.follower_num IS NULL THEN 0::bigint
            ELSE follower.follower_num
        END AS follower_num,
        CASE
            WHEN followed.followed_num IS NULL THEN 0::bigint
            ELSE followed.followed_num
        END AS followed_num,
        CASE
            WHEN p1.post_view_num IS NULL THEN 0::numeric
            ELSE p1.post_view_num
        END AS post_view_num,
        CASE
            WHEN p2.post_like_num IS NULL THEN 0::numeric
            ELSE p2.post_like_num
        END AS post_like_num
   FROM sys_user u
     LEFT JOIN ( SELECT user_follow.follower_id,
            count(*) AS followed_num
           FROM user_follow
          WHERE user_follow.follow = true
          GROUP BY user_follow.follower_id) followed ON u.id = followed.follower_id
     LEFT JOIN ( SELECT user_follow.followed_id,
            count(*) AS follower_num
           FROM user_follow
          WHERE user_follow.follow = true
          GROUP BY user_follow.followed_id) follower ON u.id = follower.followed_id
     LEFT JOIN ( SELECT post_view.author_id,
            sum(post_view.view_num) AS post_view_num
           FROM post_view
          GROUP BY post_view.author_id) p1 ON u.id = p1.author_id
     LEFT JOIN ( SELECT post_view.author_id,
            sum(post_view.like_num) AS post_like_num
           FROM post_view
          GROUP BY post_view.author_id) p2 ON u.id = p2.author_id;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."activity_id_seq"
OWNED BY "public"."activity"."id";
SELECT setval('"public"."activity_id_seq"', 55, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."category_id_seq"
OWNED BY "public"."category"."id";
SELECT setval('"public"."category_id_seq"', 33, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."collection_id_seq"
OWNED BY "public"."collection"."id";
SELECT setval('"public"."collection_id_seq"', 670, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."column_id_seq"
OWNED BY "public"."p_column"."id";
SELECT setval('"public"."column_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."pin_comment_id_seq"
OWNED BY "public"."pin_comment"."id";
SELECT setval('"public"."pin_comment_id_seq"', 40, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."pin_comment_like_comment_id_seq"
OWNED BY "public"."pin_comment_like"."comment_id";
SELECT setval('"public"."pin_comment_like_comment_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."pin_comment_like_user_id_seq"
OWNED BY "public"."pin_comment_like"."user_id";
SELECT setval('"public"."pin_comment_like_user_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."pin_id_seq"
OWNED BY "public"."pin"."id";
SELECT setval('"public"."pin_id_seq"', 23, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."pin_like_pin_id_seq"
OWNED BY "public"."pin_like"."pin_id";
SELECT setval('"public"."pin_like_pin_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."pin_like_user_id_seq"
OWNED BY "public"."pin_like"."user_id";
SELECT setval('"public"."pin_like_user_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."post_collection_collect_id_seq"
OWNED BY "public"."post_collection"."collect_id";
SELECT setval('"public"."post_collection_collect_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."post_collection_post_id_seq"
OWNED BY "public"."post_collection"."post_id";
SELECT setval('"public"."post_collection_post_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."post_column_column_id_seq"
OWNED BY "public"."post_column"."column_id";
SELECT setval('"public"."post_column_column_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."post_column_post_id_seq"
OWNED BY "public"."post_column"."post_id";
SELECT setval('"public"."post_column_post_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."post_comment_id_seq"
OWNED BY "public"."post_comment"."id";
SELECT setval('"public"."post_comment_id_seq"', 34, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."post_comment_like_comment_id_seq"
OWNED BY "public"."post_comment_like"."comment_id";
SELECT setval('"public"."post_comment_like_comment_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."post_comment_like_user_id_seq"
OWNED BY "public"."post_comment_like"."user_id";
SELECT setval('"public"."post_comment_like_user_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."post_id_seq"
OWNED BY "public"."post"."id";
SELECT setval('"public"."post_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."post_like_post_id_seq"
OWNED BY "public"."post_like"."post_id";
SELECT setval('"public"."post_like_post_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."post_like_user_id_seq"
OWNED BY "public"."post_like"."user_id";
SELECT setval('"public"."post_like_user_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."post_tag_post_id_seq"
OWNED BY "public"."post_tag"."post_id";
SELECT setval('"public"."post_tag_post_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."post_tag_tag_id_seq"
OWNED BY "public"."post_tag"."tag_id";
SELECT setval('"public"."post_tag_tag_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."role_id_seq"
OWNED BY "public"."role"."id";
SELECT setval('"public"."role_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_user_id_seq"
OWNED BY "public"."sys_user"."id";
SELECT setval('"public"."sys_user_id_seq"', 21, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."tag_follow_follower_id_seq"
OWNED BY "public"."tag_follow"."user_id";
SELECT setval('"public"."tag_follow_follower_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."tag_follow_tag_id_seq"
OWNED BY "public"."tag_follow"."tag_id";
SELECT setval('"public"."tag_follow_tag_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."tag_id_seq"
OWNED BY "public"."tag"."id";
SELECT setval('"public"."tag_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."user_collection_collect_id_seq"
OWNED BY "public"."user_collection_follow"."collect_id";
SELECT setval('"public"."user_collection_collect_id_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."user_collection_user_id_seq"
OWNED BY "public"."user_collection_follow"."user_id";
SELECT setval('"public"."user_collection_user_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."user_column_column_id_seq"
OWNED BY "public"."user_column_follow"."column_id";
SELECT setval('"public"."user_column_column_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."user_column_user_id_seq"
OWNED BY "public"."user_column_follow"."user_id";
SELECT setval('"public"."user_column_user_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."user_follow_followed_id_seq"
OWNED BY "public"."user_follow"."followed_id";
SELECT setval('"public"."user_follow_followed_id_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."user_follow_follower_id_seq"
OWNED BY "public"."user_follow"."follower_id";
SELECT setval('"public"."user_follow_follower_id_seq"', 1, false);

-- ----------------------------
-- Primary Key structure for table activity
-- ----------------------------
ALTER TABLE "public"."activity" ADD CONSTRAINT "activity_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table category
-- ----------------------------
ALTER TABLE "public"."category" ADD CONSTRAINT "category_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table collection
-- ----------------------------
ALTER TABLE "public"."collection" ADD CONSTRAINT "collection_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table p_column
-- ----------------------------
ALTER TABLE "public"."p_column" ADD CONSTRAINT "column_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Triggers structure for table pin
-- ----------------------------
CREATE TRIGGER "activity_after_insert_pin" AFTER INSERT ON "public"."pin"
FOR EACH ROW
EXECUTE PROCEDURE "public"."add_activity_pin"();

-- ----------------------------
-- Primary Key structure for table pin
-- ----------------------------
ALTER TABLE "public"."pin" ADD CONSTRAINT "pin_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pin_comment
-- ----------------------------
ALTER TABLE "public"."pin_comment" ADD CONSTRAINT "pin_comment_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pin_comment_like
-- ----------------------------
ALTER TABLE "public"."pin_comment_like" ADD CONSTRAINT "pin_comment_like_pkey" PRIMARY KEY ("comment_id", "user_id");

-- ----------------------------
-- Triggers structure for table pin_like
-- ----------------------------
CREATE TRIGGER "activity_after_insert_or_update_pin_like" AFTER INSERT OR UPDATE ON "public"."pin_like"
FOR EACH ROW
WHEN ((new.type = 1))
EXECUTE PROCEDURE "public"."add_activity_pin_like"();

-- ----------------------------
-- Primary Key structure for table pin_like
-- ----------------------------
ALTER TABLE "public"."pin_like" ADD CONSTRAINT "pin_like_pkey" PRIMARY KEY ("pin_id", "user_id");

-- ----------------------------
-- Triggers structure for table post
-- ----------------------------
CREATE TRIGGER "activity_after_insert_post" AFTER INSERT ON "public"."post"
FOR EACH ROW
EXECUTE PROCEDURE "public"."add_activity_post"();

-- ----------------------------
-- Primary Key structure for table post
-- ----------------------------
ALTER TABLE "public"."post" ADD CONSTRAINT "post_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table post_collection
-- ----------------------------
ALTER TABLE "public"."post_collection" ADD CONSTRAINT "post_collection_pkey" PRIMARY KEY ("post_id", "collect_id");

-- ----------------------------
-- Primary Key structure for table post_column
-- ----------------------------
ALTER TABLE "public"."post_column" ADD CONSTRAINT "post_column_pkey" PRIMARY KEY ("post_id", "column_id");

-- ----------------------------
-- Primary Key structure for table post_comment
-- ----------------------------
ALTER TABLE "public"."post_comment" ADD CONSTRAINT "post_comment_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table post_comment_like
-- ----------------------------
ALTER TABLE "public"."post_comment_like" ADD CONSTRAINT "post_comment_like_pkey" PRIMARY KEY ("comment_id", "user_id");

-- ----------------------------
-- Triggers structure for table post_like
-- ----------------------------
CREATE TRIGGER "activity_after_insert_or_update_post_like" AFTER INSERT OR UPDATE ON "public"."post_like"
FOR EACH ROW
WHEN ((new.type = 1))
EXECUTE PROCEDURE "public"."add_activity_post_like"();

-- ----------------------------
-- Primary Key structure for table post_like
-- ----------------------------
ALTER TABLE "public"."post_like" ADD CONSTRAINT "post_like_pkey" PRIMARY KEY ("post_id", "user_id");

-- ----------------------------
-- Primary Key structure for table post_tag
-- ----------------------------
ALTER TABLE "public"."post_tag" ADD CONSTRAINT "post_tag_pkey" PRIMARY KEY ("post_id", "tag_id");

-- ----------------------------
-- Primary Key structure for table role
-- ----------------------------
ALTER TABLE "public"."role" ADD CONSTRAINT "role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "public"."sys_user" ADD CONSTRAINT "sys_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tag
-- ----------------------------
ALTER TABLE "public"."tag" ADD CONSTRAINT "tag_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Triggers structure for table tag_follow
-- ----------------------------
CREATE TRIGGER "activity_after_insert_or_update_tag_follow" AFTER INSERT OR UPDATE ON "public"."tag_follow"
FOR EACH ROW
WHEN ((new.follow = true))
EXECUTE PROCEDURE "public"."add_activity_tag_follow"();

-- ----------------------------
-- Primary Key structure for table tag_follow
-- ----------------------------
ALTER TABLE "public"."tag_follow" ADD CONSTRAINT "tag_follow_pkey" PRIMARY KEY ("tag_id", "user_id");

-- ----------------------------
-- Triggers structure for table user_collection_follow
-- ----------------------------
CREATE TRIGGER "activity_after_insert_or_update_user_collection_follow" AFTER INSERT OR UPDATE ON "public"."user_collection_follow"
FOR EACH ROW
WHEN ((new.follow = true))
EXECUTE PROCEDURE "public"."add_activity_user_collection_follow"();

-- ----------------------------
-- Primary Key structure for table user_collection_follow
-- ----------------------------
ALTER TABLE "public"."user_collection_follow" ADD CONSTRAINT "user_collection_pkey" PRIMARY KEY ("user_id", "collect_id");

-- ----------------------------
-- Triggers structure for table user_column_follow
-- ----------------------------
CREATE TRIGGER "activity_after_insert_or_update_user_column_follow" AFTER INSERT OR UPDATE ON "public"."user_column_follow"
FOR EACH ROW
WHEN ((new.follow = true))
EXECUTE PROCEDURE "public"."add_activity_user_column_follow"();

-- ----------------------------
-- Primary Key structure for table user_column_follow
-- ----------------------------
ALTER TABLE "public"."user_column_follow" ADD CONSTRAINT "user_column_pkey" PRIMARY KEY ("user_id", "column_id");

-- ----------------------------
-- Triggers structure for table user_follow
-- ----------------------------
CREATE TRIGGER "activity_after_insert_or_update_user_follow" AFTER INSERT OR UPDATE ON "public"."user_follow"
FOR EACH ROW
WHEN ((new.follow = true))
EXECUTE PROCEDURE "public"."add_activity_user_follow"();

-- ----------------------------
-- Primary Key structure for table user_follow
-- ----------------------------
ALTER TABLE "public"."user_follow" ADD CONSTRAINT "user_follow_pkey" PRIMARY KEY ("follower_id", "followed_id");

-- ----------------------------
-- Foreign Keys structure for table activity
-- ----------------------------
ALTER TABLE "public"."activity" ADD CONSTRAINT "activity_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table collection
-- ----------------------------
ALTER TABLE "public"."collection" ADD CONSTRAINT "collection_author_id_fkey" FOREIGN KEY ("author_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table p_column
-- ----------------------------
ALTER TABLE "public"."p_column" ADD CONSTRAINT "column_author_id_fkey" FOREIGN KEY ("author_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table pin
-- ----------------------------
ALTER TABLE "public"."pin" ADD CONSTRAINT "fk_pin_sys_user_1" FOREIGN KEY ("author_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table pin_comment
-- ----------------------------
ALTER TABLE "public"."pin_comment" ADD CONSTRAINT "fk_pin_comment_pin_1" FOREIGN KEY ("pin_id") REFERENCES "public"."pin" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."pin_comment" ADD CONSTRAINT "fk_pin_comment_pin_comment_1" FOREIGN KEY ("parent_id") REFERENCES "public"."pin_comment" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."pin_comment" ADD CONSTRAINT "fk_pin_comment_sys_user_1" FOREIGN KEY ("author_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table pin_comment_like
-- ----------------------------
ALTER TABLE "public"."pin_comment_like" ADD CONSTRAINT "fk_pin_comment_like_pin_comment_1" FOREIGN KEY ("comment_id") REFERENCES "public"."pin_comment" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."pin_comment_like" ADD CONSTRAINT "fk_pin_comment_like_sys_user_1" FOREIGN KEY ("user_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table pin_like
-- ----------------------------
ALTER TABLE "public"."pin_like" ADD CONSTRAINT "fk_pin_like_pin_1" FOREIGN KEY ("pin_id") REFERENCES "public"."pin" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."pin_like" ADD CONSTRAINT "fk_pin_like_sys_user_1" FOREIGN KEY ("user_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table post
-- ----------------------------
ALTER TABLE "public"."post" ADD CONSTRAINT "fk_post_category_1" FOREIGN KEY ("cate_id") REFERENCES "public"."category" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."post" ADD CONSTRAINT "fk_post_sys_user_1" FOREIGN KEY ("author_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table post_collection
-- ----------------------------
ALTER TABLE "public"."post_collection" ADD CONSTRAINT "fk_post_collection_collection_1" FOREIGN KEY ("collect_id") REFERENCES "public"."collection" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."post_collection" ADD CONSTRAINT "fk_post_collection_post_1" FOREIGN KEY ("post_id") REFERENCES "public"."post" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table post_column
-- ----------------------------
ALTER TABLE "public"."post_column" ADD CONSTRAINT "fk_post_column_column_1" FOREIGN KEY ("column_id") REFERENCES "public"."p_column" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."post_column" ADD CONSTRAINT "fk_post_column_post_1" FOREIGN KEY ("post_id") REFERENCES "public"."post" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table post_comment
-- ----------------------------
ALTER TABLE "public"."post_comment" ADD CONSTRAINT "fk_post_comment_post_1" FOREIGN KEY ("post_id") REFERENCES "public"."post" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."post_comment" ADD CONSTRAINT "fk_post_comment_post_comment_1" FOREIGN KEY ("parent_id") REFERENCES "public"."post_comment" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."post_comment" ADD CONSTRAINT "fk_post_comment_sys_user_1" FOREIGN KEY ("author_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table post_comment_like
-- ----------------------------
ALTER TABLE "public"."post_comment_like" ADD CONSTRAINT "fk_post_comment_like_post_comment_1" FOREIGN KEY ("comment_id") REFERENCES "public"."post_comment" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."post_comment_like" ADD CONSTRAINT "fk_post_comment_like_sys_user_1" FOREIGN KEY ("user_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table post_like
-- ----------------------------
ALTER TABLE "public"."post_like" ADD CONSTRAINT "fk_post_like_post_1" FOREIGN KEY ("post_id") REFERENCES "public"."post" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."post_like" ADD CONSTRAINT "fk_post_like_sys_user_1" FOREIGN KEY ("user_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table post_tag
-- ----------------------------
ALTER TABLE "public"."post_tag" ADD CONSTRAINT "fk_post_tag_post_1" FOREIGN KEY ("post_id") REFERENCES "public"."post" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."post_tag" ADD CONSTRAINT "fk_post_tag_tag_1" FOREIGN KEY ("tag_id") REFERENCES "public"."tag" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table sys_user
-- ----------------------------
ALTER TABLE "public"."sys_user" ADD CONSTRAINT "fk_sys_user_role_1" FOREIGN KEY ("role_id") REFERENCES "public"."role" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table tag_follow
-- ----------------------------
ALTER TABLE "public"."tag_follow" ADD CONSTRAINT "fk_tag_follow_sys_user_1" FOREIGN KEY ("user_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."tag_follow" ADD CONSTRAINT "fk_tag_follow_tag_1" FOREIGN KEY ("tag_id") REFERENCES "public"."tag" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table user_collection_follow
-- ----------------------------
ALTER TABLE "public"."user_collection_follow" ADD CONSTRAINT "fk_user_collection_collection_1" FOREIGN KEY ("collect_id") REFERENCES "public"."collection" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."user_collection_follow" ADD CONSTRAINT "fk_user_collection_sys_user_1" FOREIGN KEY ("user_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table user_column_follow
-- ----------------------------
ALTER TABLE "public"."user_column_follow" ADD CONSTRAINT "fk_user_column_column_1" FOREIGN KEY ("column_id") REFERENCES "public"."p_column" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."user_column_follow" ADD CONSTRAINT "fk_user_column_sys_user_1" FOREIGN KEY ("user_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table user_follow
-- ----------------------------
ALTER TABLE "public"."user_follow" ADD CONSTRAINT "fk_user_follow_sys_user_1" FOREIGN KEY ("follower_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."user_follow" ADD CONSTRAINT "fk_user_follow_sys_user_2" FOREIGN KEY ("followed_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

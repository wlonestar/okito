/*
 Navicat Premium Data Transfer

 Source Server         : postgresql-wsl
 Source Server Type    : PostgreSQL
 Source Server Version : 140006 (140006)
 Source Host           : localhost:5432
 Source Catalog        : okito
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140006 (140006)
 File Encoding         : 65001

 Date: 28/02/2023 21:58:04
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
INSERT INTO "public"."category" VALUES (6, 'Fukuda Ryota', 'NX48dv2Pwf', 'hat you get by achieving your goals is not as important as what you become by achieving your goals. Difficult circumstances serve as a textbook of life for people. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Difficult circumstances serve as a textbook of life for people. A query is used to extract data from the database in a readable format according to the user''s request. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. A man’s best friends are his ten fingers. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Anyone who has ever made anything of importance was disciplined. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. A man is not old until regrets take the place of dreams. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Navicat easy way.');
INSERT INTO "public"."category" VALUES (8, 'Sato Momoka', 'KxPn76JTur', 'It can also maou wudiences. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. A man is not old until regrets take the place of dreams. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. The reason why a great man is great is that he resolves to be a great man. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. A comfort zone is a beautiful place, but nothing ever grows there. Success consists of going from failure to failure without loss of enthusiasm. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. I may not have gone where I intended to go, but I think I have ended up where I needed to be. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Remember that failure is an event, not a person. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Difficult circumstances serve as a textbook of life for people. There is no way to happiness. Happiness is the way. Anyone who has ever made anything of importance was disciplined. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Genius is an infinite capacity for taking pains. A man’s best friends are his ten fingers. All journeys have secret destinations of which the traveler is unaware. Navicat 15 has added support for the system-wide dark mode. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Remember that failure is an event, not a person. Anyone who has never made a mistake has never tried anything new. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. A man’s best friends are his ten fingers. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Success consists of going from failure to failure without loss of enthusiasm. The Synchronize to Database function will give you a full picture of all database differences. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. If it scares you, it might be a good thing to try. Success consists of going from failure to failure without loss of enthusiasm. Navicat 15 has added support for the system-wide dark mode. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Anyone who has ever made anything of importance was disciplined. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. A comfort zone is a beautiful place, but nothing ever grows there. If opportunity doesn’t knock, build a door. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. What you get by achieving your goals is not as important as what you become by achieving your goals.');
INSERT INTO "public"."category" VALUES (9, 'Heung On Kay', 'zprEIZMDpZ', 'Anyone who has evauseated under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Champions keep playing until they get it right. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Flexible settings enable you to set up a custom key for comparison and synchronization. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Optimism is the one quality more associated with success and happiness than any other. If opportunity doesn’t knock, build a door. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. If it scares you, it might be a good thing to try. To connect to a database or schema, simply double-click it in the pane. Optimism is the one quality more associated with success and happiness than any other. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. A man’s best friends are his ten fingers. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. It wasn’t raining when Noah built the ark. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. The past has no power over the present moment. Difficult circumstances serve as a textbook of life for people. You cannot save people, you can just love them. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Anyone who has never made a mistake has never tried anything new. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane.');
INSERT INTO "public"."category" VALUES (5, 'Siu Ka Fai', 'arh2i1DfoX', 'Export Wizoes n we spenbase login information in the General tab. What you get by achieving your goals is not as important as what you become by achieving your goals. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Flexible settings enable you to set up a custom key for comparison and synchronization. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. The Synchronize to Database function will give you a full picture of all database differences. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. I destroy my enemies when I make them my friends. Navicat 15 has added support for the system-wide dark mode. Navicat 15 has added support for the system-wide dark mode. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. There is no way to happiness. Happiness is the way. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. There is no way to happiness. Happiness is the way. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. If you wait, all that happens is you get older. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Flexible settings enable you to set up a custom key for comparison and synchronization. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. A query is used to extract data from the database in a readable format according to the user''s request. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution.');
INSERT INTO "public"."category" VALUES (2, 'Robert Hall', 'DxEg32sBP9', 'Import Wizard alhe projd on any local computer or virtual machine and does not require any software installation on the servers being monitored. If it scares you, it might be a good thing to try. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. To connect to a database or schema, simply double-click it in the pane. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. I destroy my enemies when I make them my friends. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Navicat 15 has added support for the system-wide dark mode. If it scares you, it might be a good thing to try. Success consists of going from failure to failure without loss of enthusiasm. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. If the plan doesn’t work, change the plan, but never the goal. Difficult circumstances serve as a textbook of life for people. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. I may not have gone where I intended to go, but I think I have ended up where I needed to be.');
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
INSERT INTO "public"."collection" VALUES (1, 'Xiao Shihan', 'G3J9IHGdLn', 'The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. The first step is as good as half over. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. The Synchronize to Database function will give you a full picture of all database differences. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. A query is used to extract data from the database in a readable format according to the user''s request. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Optimism is the one quality more associated with success and happiness than any other. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. I may not have gone where I intended to go, but I think I have ended up where I needed to be. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. It wasn’t raining when Noah built the ark. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. The Synchronize to Database function will give you a full picture of all database differences. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. If opportunity doesn’t knock, build a door. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Difficult circumstances serve as a textbook of life for people. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. The reason why a great man is great is that he resolves to be a great man. You cannot save people, you can just love them. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. There is no way to happiness. Happiness is the way. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server.', '2010-12-06 03:35:13.905023+08', '2020-10-21 01:25:47.905023+08', 1);
INSERT INTO "public"."collection" VALUES (2, 'Hou Ziyi', 'lYhcU1pqH1', 'In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. How we spend our days is, of course, how we spend our lives. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. You must be the change you wish to see in the world. You must be the change you wish to see in the world. The past has no power over the present moment. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Genius is an infinite capacity for taking pains. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. I will greet this day with love in my heart. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. What you get by achieving your goals is not as important as what you become by achieving your goals. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source.', '2001-07-16 02:10:20.905023+08', '2006-12-11 13:20:11.905023+08', 1);
INSERT INTO "public"."collection" VALUES (3, 'Matsuda Rin', 'sbJQf0mNVd', 'If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. I destroy my enemies when I make them my friends. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Success consists of going from failure to failure without loss of enthusiasm. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. The reason why a great man is great is that he resolves to be a great man. The first step is as good as half over. It wasn’t raining when Noah built the ark. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Optimism is the one quality more associated with success and happiness than any other. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Flexible settings enable you to set up a custom key for comparison and synchronization. In the middle of winter I at last discovered that there was in me an invincible summer. Genius is an infinite capacity for taking pains. Creativity is intelligence having fun. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. All journeys have secret destinations of which the traveler is unaware. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Remember that failure is an event, not a person. The On Startup feature allows you to control what tabs appear when you launch Navicat. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. In the middle of winter I at last discovered that there was in me an invincible summer. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. You must be the change you wish to see in the world. If opportunity doesn’t knock, build a door. If it scares you, it might be a good thing to try. The On Startup feature allows you to control what tabs appear when you launch Navicat. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Navicat 15 has added support for the system-wide dark mode. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. It wasn’t raining when Noah built the ark. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. You will succeed because most people are lazy. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. A man is not old until regrets take the place of dreams. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Difficult circumstances serve as a textbook of life for people. Genius is an infinite capacity for taking pains. I will greet this day with love in my heart. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. What you get by achieving your goals is not as important as what you become by achieving your goals. Difficult circumstances serve as a textbook of life for people. You must be the change you wish to see in the world. The first step is as good as half over. Genius is an infinite capacity for taking pains. Typically, it is employed as an encrypted version of Telnet. You cannot save people, you can just love them. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Typically, it is employed as an encrypted version of Telnet. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Optimism is the one quality more associated with success and happiness than any other. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. How we spend our days is, of course, how we spend our lives. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. The first step is as good as half over. A man’s best friends are his ten fingers. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. A man’s best friends are his ten fingers. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy.', '2005-11-30 10:10:43.905023+08', '2004-11-04 05:47:23.905023+08', 1);
INSERT INTO "public"."collection" VALUES (4, 'Sakai Daisuke', 'V644bA53YI', 'In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. If you wait, all that happens is you get older. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Typically, it is employed as an encrypted version of Telnet. Genius is an infinite capacity for taking pains. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. It wasn’t raining when Noah built the ark. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. If the plan doesn’t work, change the plan, but never the goal. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. There is no way to happiness. Happiness is the way. The reason why a great man is great is that he resolves to be a great man. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server.', '2015-11-25 07:14:40.905023+08', '2020-10-11 15:42:18.905023+08', 1);
INSERT INTO "public"."collection" VALUES (5, 'Victoria Ortiz', 'xWUo9JD7nn', 'You will succeed because most people are lazy. Typically, it is employed as an encrypted version of Telnet. If you wait, all that happens is you get older. If you wait, all that happens is you get older. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Genius is an infinite capacity for taking pains. I will greet this day with love in my heart. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Genius is an infinite capacity for taking pains. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. If it scares you, it might be a good thing to try. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. The reason why a great man is great is that he resolves to be a great man. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. All journeys have secret destinations of which the traveler is unaware. If the plan doesn’t work, change the plan, but never the goal. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. All journeys have secret destinations of which the traveler is unaware. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. All journeys have secret destinations of which the traveler is unaware. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. You must be the change you wish to see in the world. The On Startup feature allows you to control what tabs appear when you launch Navicat. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. Sometimes you win, sometimes you learn. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. All journeys have secret destinations of which the traveler is unaware. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Typically, it is employed as an encrypted version of Telnet. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. If it scares you, it might be a good thing to try. If it scares you, it might be a good thing to try. The past has no power over the present moment. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Success consists of going from failure to failure without loss of enthusiasm. A man is not old until regrets take the place of dreams. Genius is an infinite capacity for taking pains. Difficult circumstances serve as a textbook of life for people. A comfort zone is a beautiful place, but nothing ever grows there. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. The On Startup feature allows you to control what tabs appear when you launch Navicat. The reason why a great man is great is that he resolves to be a great man. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. The past has no power over the present moment. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Anyone who has ever made anything of importance was disciplined. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. If the plan doesn’t work, change the plan, but never the goal. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. All journeys have secret destinations of which the traveler is unaware. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. There is no way to happiness. Happiness is the way.', '2009-08-23 18:39:47.905023+08', '2009-07-24 09:46:02.905023+08', 2);
INSERT INTO "public"."collection" VALUES (6, 'Shi Xiaoming', 'VHAP6xZ9xb', 'There is no way to happiness. Happiness is the way. If opportunity doesn’t knock, build a door. Optimism is the one quality more associated with success and happiness than any other. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. All journeys have secret destinations of which the traveler is unaware. I will greet this day with love in my heart. A man is not old until regrets take the place of dreams. I may not have gone where I intended to go, but I think I have ended up where I needed to be. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. The past has no power over the present moment. A query is used to extract data from the database in a readable format according to the user''s request. The Synchronize to Database function will give you a full picture of all database differences. The On Startup feature allows you to control what tabs appear when you launch Navicat. Creativity is intelligence having fun. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Flexible settings enable you to set up a custom key for comparison and synchronization. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. You cannot save people, you can just love them. If it scares you, it might be a good thing to try. There is no way to happiness. Happiness is the way. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Flexible settings enable you to set up a custom key for comparison and synchronization. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Genius is an infinite capacity for taking pains. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. If it scares you, it might be a good thing to try. A comfort zone is a beautiful place, but nothing ever grows there. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server.', '2016-04-26 12:52:26.905023+08', '2009-03-04 02:17:13.905023+08', 3);
INSERT INTO "public"."collection" VALUES (8, 'Xiang Yunxi', 'olQaGlrfjs', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve. Success consists of going from failure to failure without loss of enthusiasm. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. The On Startup feature allows you to control what tabs appear when you launch Navicat. I may not have gone where I intended to go, but I think I have ended up where I needed to be. To connect to a database or schema, simply double-click it in the pane. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. If you wait, all that happens is you get older. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. There is no way to happiness. Happiness is the way. A comfort zone is a beautiful place, but nothing ever grows there. You cannot save people, you can just love them. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Actually it is just in an idea when feel oneself can achieve and cannot achieve. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. If it scares you, it might be a good thing to try. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Remember that failure is an event, not a person. To connect to a database or schema, simply double-click it in the pane. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. The first step is as good as half over. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. If opportunity doesn’t knock, build a door. If it scares you, it might be a good thing to try. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible.', '2010-02-08 15:59:34.905023+08', '2022-03-02 11:40:30.905023+08', 3);
INSERT INTO "public"."collection" VALUES (9, 'Fu Shihan', 'kUHYxODgie', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. You must be the change you wish to see in the world. I destroy my enemies when I make them my friends. Flexible settings enable you to set up a custom key for comparison and synchronization. Remember that failure is an event, not a person. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Remember that failure is an event, not a person. Difficult circumstances serve as a textbook of life for people. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Anyone who has never made a mistake has never tried anything new. Creativity is intelligence having fun. To connect to a database or schema, simply double-click it in the pane. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. A comfort zone is a beautiful place, but nothing ever grows there. I may not have gone where I intended to go, but I think I have ended up where I needed to be. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. The On Startup feature allows you to control what tabs appear when you launch Navicat. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. I destroy my enemies when I make them my friends. What you get by achieving your goals is not as important as what you become by achieving your goals. The On Startup feature allows you to control what tabs appear when you launch Navicat. I may not have gone where I intended to go, but I think I have ended up where I needed to be. Actually it is just in an idea when feel oneself can achieve and cannot achieve. A comfort zone is a beautiful place, but nothing ever grows there. Success consists of going from failure to failure without loss of enthusiasm. There is no way to happiness. Happiness is the way. If the plan doesn’t work, change the plan, but never the goal. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. If you wait, all that happens is you get older. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. If the plan doesn’t work, change the plan, but never the goal. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Anyone who has never made a mistake has never tried anything new. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. A man’s best friends are his ten fingers. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Champions keep playing until they get it right. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. All journeys have secret destinations of which the traveler is unaware. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. You cannot save people, you can just love them. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. If it scares you, it might be a good thing to try. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. A query is used to extract data from the database in a readable format according to the user''s request. The past has no power over the present moment. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud.', '2021-02-23 05:48:47.905023+08', '2018-03-21 15:18:00.905023+08', 3);
INSERT INTO "public"."collection" VALUES (10, 'test', 'xxx', 'xxxxxcx', '2023-01-06 07:46:03.905023+08', '2023-01-05 20:46:03.905023+08', 3);
INSERT INTO "public"."collection" VALUES (7, 'Miu Wai San', 'zJyAaSuq58', 'Success consists of going from failure to failure without loss of enthusiasm. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. All journeys have secret destinations of which the traveler is unaware. If the plan doesn’t work, change the plan, but never the goal. You must be the change you wish to see in the world. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. I will greet this day with love in my heart. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Typically, it is employed as an encrypted version of Telnet. The Synchronize to Database function will give you a full picture of all database differences. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. I will greet this day with love in my heart. All journeys have secret destinations of which the traveler is unaware. The first step is as good as half over. Champions keep playing until they get it right. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. If opportunity doesn’t knock, build a door. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. The first step is as good as half over. I may not have gone where I intended to go, but I think I have ended up where I needed to be. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. The past has no power over the present moment. You cannot save people, you can just love them. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. What you get by achieving your goals is not as important as what you become by achieving your goals. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. The reason why a great man is great is that he resolves to be a great man. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. It wasn’t raining when Noah built the ark. A man is not old until regrets take the place of dreams. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. The past has no power over the present moment. Anyone who has never made a mistake has never tried anything new. The Synchronize to Database function will give you a full picture of all database differences. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. If you wait, all that happens is you get older. Genius is an infinite capacity for taking pains. You will succeed because most people are lazy. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Creativity is intelligence having fun. You must be the change you wish to see in the world. Genius is an infinite capacity for taking pains. If you wait, all that happens is you get older. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Typically, it is employed as an encrypted version of Telnet. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. The first step is as good as half over. In the middle of winter I at last discovered that there was in me an invincible summer. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. If you wait, all that happens is you get older. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. You cannot save people, you can just love them. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. The past has no power over the present moment. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. Remember that failure is an event, not a person. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. The reason why a great man is great is that he resolves to be a great man. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. The first step is as good as half over. Typically, it is employed as an encrypted version of Telnet. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. I may not have gone where I intended to go, but I think I have ended up where I needed to be. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. The On Startup feature allows you to control what tabs appear when you launch Navicat. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy.', '2001-10-01 15:07:01.905023+08', '2002-07-03 18:56:09.905023+08', 2);
INSERT INTO "public"."collection" VALUES (12, 'hahaha', 'test test', 'ha ha ha ha ha ha ha', '2023-01-19 11:54:43.67+08', '2023-01-19 11:54:43.67+08', 2);
INSERT INTO "public"."collection" VALUES (13, 'hahaha', 'test test', 'ha ha ha ha ha ha ha', '2023-01-19 11:54:43.672+08', '2023-01-19 11:54:43.672+08', 2);
INSERT INTO "public"."collection" VALUES (15, '而汇报', 'test test', 'ha ha ha ha ha ha ha', '2023-01-19 11:55:15.528+08', '2023-01-19 11:55:15.528+08', 4);
INSERT INTO "public"."collection" VALUES (16, 'hahaha', 'test test', 'ha ha ha ha ha ha ha', '2023-01-19 11:55:55.803+08', '2023-01-19 11:55:55.803+08', 4);
INSERT INTO "public"."collection" VALUES (18, 'hahaha', 'test test', 'ha ha ha ha ha ha ha', '2023-01-19 11:56:50.78+08', '2023-01-19 11:56:50.78+08', 4);
INSERT INTO "public"."collection" VALUES (19, 'hahaha', 'test test', 'ha ha ha ha ha ha ha', '2023-01-19 11:56:50.786+08', '2023-01-19 11:56:50.786+08', 4);
INSERT INTO "public"."collection" VALUES (20, 'hahaha', 'test test', 'ha ha ha ha ha ha ha', '2023-01-19 11:56:50.889+08', '2023-01-19 11:56:50.889+08', 4);
INSERT INTO "public"."collection" VALUES (14, 'sfdguhk', 'test test', 'ha ha ha ha ha ha ha', '2023-01-19 11:55:15.521+08', '2023-01-19 11:55:15.521+08', 4);
INSERT INTO "public"."collection" VALUES (17, '4瑞哦贴吧', 'test test', 'ha ha ha ha ha ha ha', '2023-01-19 11:55:55.812+08', '2023-01-19 11:55:55.812+08', 4);

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
INSERT INTO "public"."p_column" VALUES (6, 'Chung Kwok Yin', 'ZXhiZC95qa', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Anyone who has ever made anything of importance was disciplined. Optimism is the one quality more associated with success and happiness than any other. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. If opportunity doesn’t knock, build a door. Anyone who has ever made anything of importance was disciplined. If the plan doesn’t work, change the plan, but never the goal. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. You will succeed because most people are lazy. You cannot save people, you can just love them. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Remember that failure is an event, not a person. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. All journeys have secret destinations of which the traveler is unaware. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. The reason why a great man is great is that he resolves to be a great man. In the middle of winter I at last discovered that there was in me an invincible summer. In the middle of winter I at last discovered that there was in me an invincible summer. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Navicat 15 has added support for the system-wide dark mode. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. You will succeed because most people are lazy. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. The Synchronize to Database function will give you a full picture of all database differences. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. A comfort zone is a beautiful place, but nothing ever grows there. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. If you wait, all that happens is you get older. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Typically, it is employed as an encrypted version of Telnet. You will succeed because most people are lazy. Success consists of going from failure to failure without loss of enthusiasm. What you get by achieving your goals is not as important as what you become by achieving your goals. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. You must be the change you wish to see in the world. Sometimes you win, sometimes you learn. Sometimes you win, sometimes you learn. If opportunity doesn’t knock, build a door. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. How we spend our days is, of course, how we spend our lives. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration.', '2004-04-26 07:17:31.905023+08', '2005-05-27 00:26:34.905023+08', 2);
INSERT INTO "public"."p_column" VALUES (7, 'Charles Henderson', '1wGNAYtXky', 'Anyone who has ever made anything of importance was disciplined. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Creativity is intelligence having fun. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. In the middle of winter I at last discovered that there was in me an invincible summer. In the middle of winter I at last discovered that there was in me an invincible summer. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. A man’s best friends are his ten fingers. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Typically, it is employed as an encrypted version of Telnet. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Typically, it is employed as an encrypted version of Telnet. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. The past has no power over the present moment. Optimism is the one quality more associated with success and happiness than any other. All journeys have secret destinations of which the traveler is unaware. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Remember that failure is an event, not a person. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. To connect to a database or schema, simply double-click it in the pane. It wasn’t raining when Noah built the ark. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Typically, it is employed as an encrypted version of Telnet. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Typically, it is employed as an encrypted version of Telnet. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. Difficult circumstances serve as a textbook of life for people. The On Startup feature allows you to control what tabs appear when you launch Navicat. A man is not old until regrets take the place of dreams. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. The Synchronize to Database function will give you a full picture of all database differences. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Champions keep playing until they get it right. Flexible settings enable you to set up a custom key for comparison and synchronization. There is no way to happiness. Happiness is the way.', '2001-08-30 11:37:30.905023+08', '2015-01-31 07:58:58.905023+08', 2);
INSERT INTO "public"."p_column" VALUES (8, 'Carrie Roberts', 'UqENDlq0tv', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. You must be the change you wish to see in the world. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Champions keep playing until they get it right. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. The reason why a great man is great is that he resolves to be a great man. You must be the change you wish to see in the world. A man is not old until regrets take the place of dreams. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Typically, it is employed as an encrypted version of Telnet. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Sometimes you win, sometimes you learn. If opportunity doesn’t knock, build a door. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Remember that failure is an event, not a person. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. You must be the change you wish to see in the world. A query is used to extract data from the database in a readable format according to the user''s request. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. You cannot save people, you can just love them. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. The reason why a great man is great is that he resolves to be a great man. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. The past has no power over the present moment. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. A comfort zone is a beautiful place, but nothing ever grows there. Difficult circumstances serve as a textbook of life for people. It wasn’t raining when Noah built the ark. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network.', '2010-01-20 08:00:22.905023+08', '2017-12-08 20:10:38.905023+08', 3);
INSERT INTO "public"."p_column" VALUES (9, 'Tang Jialun', 'sho04RP8JC', 'In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. In the middle of winter I at last discovered that there was in me an invincible summer. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. A comfort zone is a beautiful place, but nothing ever grows there. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. You will succeed because most people are lazy. What you get by achieving your goals is not as important as what you become by achieving your goals. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. A comfort zone is a beautiful place, but nothing ever grows there. A man’s best friends are his ten fingers. A man is not old until regrets take the place of dreams. There is no way to happiness. Happiness is the way. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. If opportunity doesn’t knock, build a door. The past has no power over the present moment. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. I will greet this day with love in my heart. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. The Synchronize to Database function will give you a full picture of all database differences. Genius is an infinite capacity for taking pains. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. What you get by achieving your goals is not as important as what you become by achieving your goals. Remember that failure is an event, not a person. A man’s best friends are his ten fingers. You must be the change you wish to see in the world. Remember that failure is an event, not a person.', '2014-05-12 10:22:50.905023+08', '2005-08-10 07:50:47.905023+08', 3);
INSERT INTO "public"."p_column" VALUES (3, 'Huang Shihan', 'UuU2h3On2p', 'The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. I may not have gone where I intended to go, but I think I have ended up where I needed to be. How we spend our days is, of course, how we spend our lives. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Champions keep playing until they get it right. The On Startup feature allows you to control what tabs appear when you launch Navicat. The past has no power over the present moment. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. If the plan doesn’t work, change the plan, but never the goal. You must be the change you wish to see in the world. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. A query is used to extract data from the database in a readable format according to the user''s request. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. The On Startup feature allows you to control what tabs appear when you launch Navicat. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. A query is used to extract data from the database in a readable format according to the user''s request. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Navicat 15 has added support for the system-wide dark mode. Creativity is intelligence having fun. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Genius is an infinite capacity for taking pains. The past has no power over the present moment. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. You must be the change you wish to see in the world. You will succeed because most people are lazy. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Typically, it is employed as an encrypted version of Telnet. Success consists of going from failure to failure without loss of enthusiasm. Typically, it is employed as an encrypted version of Telnet. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. The reason why a great man is great is that he resolves to be a great man. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network.', '2000-09-03 20:51:00.905023+08', '2011-03-26 09:15:55.905023+08', 1);
INSERT INTO "public"."p_column" VALUES (4, 'Sakamoto Ayato', '5ZPKHzvD7n', 'Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. It wasn’t raining when Noah built the ark. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Genius is an infinite capacity for taking pains. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Creativity is intelligence having fun. Champions keep playing until they get it right. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Creativity is intelligence having fun. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. There is no way to happiness. Happiness is the way. All journeys have secret destinations of which the traveler is unaware. Genius is an infinite capacity for taking pains. I destroy my enemies when I make them my friends. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. To connect to a database or schema, simply double-click it in the pane. If opportunity doesn’t knock, build a door. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Creativity is intelligence having fun. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat 15 has added support for the system-wide dark mode. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. All journeys have secret destinations of which the traveler is unaware. Remember that failure is an event, not a person. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Genius is an infinite capacity for taking pains. It wasn’t raining when Noah built the ark. Genius is an infinite capacity for taking pains. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Remember that failure is an event, not a person. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. You will succeed because most people are lazy. Typically, it is employed as an encrypted version of Telnet. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. You will succeed because most people are lazy. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Anyone who has never made a mistake has never tried anything new. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. Optimism is the one quality more associated with success and happiness than any other. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Flexible settings enable you to set up a custom key for comparison and synchronization. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. It wasn’t raining when Noah built the ark. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. I will greet this day with love in my heart. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. If opportunity doesn’t knock, build a door. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. I destroy my enemies when I make them my friends. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Typically, it is employed as an encrypted version of Telnet. There is no way to happiness. Happiness is the way. Anyone who has ever made anything of importance was disciplined. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Difficult circumstances serve as a textbook of life for people. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. You must be the change you wish to see in the world. You cannot save people, you can just love them. Actually it is just in an idea when feel oneself can achieve and cannot achieve. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections.', '2017-06-27 19:53:30.905023+08', '2004-11-09 06:08:27.905023+08', 1);
INSERT INTO "public"."p_column" VALUES (10, 'Zhao Shihan', 'f32QAxU79Q', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server.', '2010-03-02 20:55:17.905023+08', '2001-12-15 14:01:25.905023+08', 4);
INSERT INTO "public"."p_column" VALUES (5, 'Cui Xiuying', 'kyBnquL86K', 'Success consists of going from failure to failure without loss of enthusiasm. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. A query is used to extract data from the database in a readable format according to the user''s request. Genius is an infinite capacity for taking pains. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Flexible settings enable you to set up a custom key for comparison and synchronization. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. If opportunity doesn’t knock, build a door. If you wait, all that happens is you get older. The reason why a great man is great is that he resolves to be a great man. Remember that failure is an event, not a person. I may not have gone where I intended to go, but I think I have ended up where I needed to be. If you wait, all that happens is you get older. Anyone who has never made a mistake has never tried anything new. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. The On Startup feature allows you to control what tabs appear when you launch Navicat. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature.', '2022-02-02 23:08:29.905023+08', '2015-04-18 23:50:57.905023+08', 1);
INSERT INTO "public"."p_column" VALUES (2, 'Han Tin Lok', 'T2I3N9qsR8', 'Flexible settings enable you to set up a custom key for comparison and synchronization. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. There is no way to happiness. Happiness is the way. Typically, it is employed as an encrypted version of Telnet. Anyone who has never made a mistake has never tried anything new. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Remember that failure is an event, not a person. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Flexible settings enable you to set up a custom key for comparison and synchronization. All journeys have secret destinations of which the traveler is unaware. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. If opportunity doesn’t knock, build a door. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Creativity is intelligence having fun. A man’s best friends are his ten fingers. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. The On Startup feature allows you to control what tabs appear when you launch Navicat. Champions keep playing until they get it right. I destroy my enemies when I make them my friends. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Navicat 15 has added support for the system-wide dark mode. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. A comfort zone is a beautiful place, but nothing ever grows there. Flexible settings enable you to set up a custom key for comparison and synchronization. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. A man’s best friends are his ten fingers. The past has no power over the present moment. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. The Synchronize to Database function will give you a full picture of all database differences. Navicat 15 has added support for the system-wide dark mode.', '2008-09-27 11:40:40.905023+08', '2011-12-19 00:21:48.905023+08', 4);
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
  "view_num" int8 NOT NULL,
  "fts" tsvector
)
;

-- ----------------------------
-- Records of pin
-- ----------------------------
INSERT INTO "public"."pin" VALUES (16, '为股份和v不能猎人分类1', '2023-02-22 12:27:48.91+08', '2023-02-22 12:27:48.91+08', 4, 1, '''v'':4A ''不能'':5A ''分类'':7A ''猎人'':6A ''股份'':2A');
INSERT INTO "public"."pin" VALUES (7, '大润发根据二能让他莫哦1', '2013-04-30 01:24:03.905023+08', '2023-01-30 08:06:17.598+08', 3, 335, '''二能'':3A ''大润发'':1A ''莫'':6A');
INSERT INTO "public"."pin" VALUES (12, 'fgertgerertert', '2023-01-30 08:06:36.525+08', '2023-01-30 08:06:36.525+08', 2, 0, '''fgertgerertert'':1A');
INSERT INTO "public"."pin" VALUES (21, '为覅u荷兰人功夫', '2023-02-28 05:57:35+08', '2023-02-23 05:57:35.848+08', 4, 212, '''u'':3A ''功夫'':5A ''荷兰人'':4A ''覅'':2A');
INSERT INTO "public"."pin" VALUES (10, 'dfg ertger rtgdf drtyhhert erg ertery ert erthyetre er', '2008-01-16 00:37:51.905023+08', '2023-01-30 08:06:20.328+08', 2, 0, ''' '':2A,4A,6A,8A,10A,12A,14A,16A ''dfg'':1A ''drtyhhert'':7A ''er'':17A ''erg'':9A ''ert'':13A ''ertery'':11A ''ertger'':3A ''erthyetre'':15A ''rtgdf'':5A');
INSERT INTO "public"."pin" VALUES (3, 'werfu8oghbretilvh bxcvl ujbn ktj.jnoui4nedrsfopiu  roit;hjy;ortdf nlrth rteyhb ', '2014-10-06 13:55:52.905023+08', '2023-01-30 08:06:14.793+08', 3, 328, ''' '':2A,4A,6A,10A,11A,17A,19A,21A ''bxcvl'':3A ''hjy'':14A ''jnoui4nedrsfopiu'':9A ''ktj'':7A ''nlrth'':18A ''ortdf'':16A ''roit'':12A ''rteyhb'':20A ''ujbn'':5A ''werfu8oghbretilvh'':1A');
INSERT INTO "public"."pin" VALUES (5, '还怪别人他瑞特  肉体和媒体哟没11人 ', '2010-08-25 15:49:50.905023+08', '2023-01-30 08:06:15.891+08', 3, 0, ''' '':4A,5A,13A ''11'':11A ''他瑞特'':3A ''媒体'':8A ''没'':10A ''肉体'':6A ''还怪'':1A');
INSERT INTO "public"."pin" VALUES (9, '2345rdfhrtue5n  45y tgghfg ert45 45ngh ', '2010-08-31 02:33:18.905023+08', '2023-01-30 08:06:19.263+08', 2, 121, ''' '':3A,4A,7A,9A,11A,14A ''2345'':1A ''45'':5A,12A ''ert45'':10A ''ngh'':13A ''rdfhrtue5n'':2A ''tgghfg'':8A ''y'':6A');
INSERT INTO "public"."pin" VALUES (18, 'wrfwert', '2023-02-23 01:24:37.543+08', '2023-02-23 01:24:37.543+08', 4, 329, '''wrfwert'':1A');
INSERT INTO "public"."pin" VALUES (1, '4tfge m34t53 gterlk 3t3 4ghe rtg drtbv', '2006-11-12 17:02:42.905023+08', '2023-01-30 08:06:21.495+08', 4, 1, ''' '':3A,5A,7A,10A,13A,15A ''drtbv'':16A ''ghe'':12A ''gterlk'':6A ''m34t53'':4A ''rtg'':14A ''t3'':9A ''tfge'':2A');
INSERT INTO "public"."pin" VALUES (20, '口语他非常v酷狗v不', '2023-02-23 02:09:26.504+08', '2023-02-23 02:09:26.504+08', 4, 543, '''v'':4A,6A ''口语'':1A ''酷狗'':5A ''非常'':3A');
INSERT INTO "public"."pin" VALUES (11, 'sdfcsdrfgsd', '2023-01-30 08:04:44.434+08', '2023-01-30 08:06:22.293+08', 3, 15, '''sdfcsdrfgsd'':1A');
INSERT INTO "public"."pin" VALUES (17, '我陪你吧', '2023-02-22 12:28:56.815+08', '2023-02-22 12:28:56.815+08', 4, 0, '''陪'':2A');
INSERT INTO "public"."pin" VALUES (2, '4 tgb 45yh rh ryhrt yhth rrt请问肉fig v内容不能放过就离开一会就让他', '2003-08-13 04:00:31.905023+08', '2023-01-30 08:06:13.384+08', 3, 330, ''' '':2A,4A,7A,9A,11A,13A,18A ''45'':5A ''fig'':17A ''rh'':8A ''rrt'':14A ''ryhrt'':10A ''tgb'':3A ''v'':19A ''yh'':6A ''yhth'':12A ''一会'':25A ''不能'':21A ''内容'':20A ''就让'':26A ''放过'':22A ''离开'':24A ''肉'':16A ''请问'':15A');
INSERT INTO "public"."pin" VALUES (6, 'dfui ghvetrn; rt0i tgjert ineoi;r eoritjg 0e er jrti9 jrtbfgs n ier hhojgfoi jerte ht', '2021-03-31 00:04:27.905023+08', '2023-01-30 08:06:16.594+08', 1, 2, ''' '':2A,5A,7A,9A,13A,15A,18A,20A,22A,24A,26A,28A,30A,32A ''dfui'':1A ''e'':17A ''eoritjg'':14A ''er'':19A ''ghvetrn'':3A ''hhojgfoi'':29A ''ht'':33A ''ier'':27A ''ineoi'':10A ''jerte'':31A ''jrtbfgs'':23A ''jrti9'':21A ''n'':25A ''r'':12A ''rt0i'':6A ''tgjert'':8A');
INSERT INTO "public"."pin" VALUES (13, '我是傻逼', '2023-02-21 13:51:15.256+08', '2023-02-21 13:51:15.256+08', 4, 353, '''傻'':3A ''逼'':4A');
INSERT INTO "public"."pin" VALUES (19, '给我v吧第三方', '2023-02-23 01:27:02.692+08', '2023-02-23 01:27:02.692+08', 4, 1, '''v'':3A ''第三方'':5A');
INSERT INTO "public"."pin" VALUES (8, 'er y rtyj yrb j83545trt o56j45 63 4py mv23op5j3 ', '2018-03-10 05:00:59.905023+08', '2023-01-30 08:06:18.497+08', 1, 38, ''' '':2A,4A,6A,8A,10A,12A,14A,17A,19A ''63'':13A ''er'':1A ''j83545trt'':9A ''mv23op5j3'':18A ''o56j45'':11A ''py'':16A ''rtyj'':5A ''y'':3A ''yrb'':7A');
INSERT INTO "public"."pin" VALUES (23, '请多指教！', '2023-02-27 05:06:22+08', '2023-02-25 05:06:22.808+08', 10, 1, '''指教'':3A ''请'':1A');
INSERT INTO "public"."pin" VALUES (22, 'wedfwe', '2023-02-26 06:22:00+08', '2023-02-24 06:22:00.7+08', 4, 409, '''wedfwe'':1A');

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
INSERT INTO "public"."pin_comment" VALUES (2, '有个导弹艇正好贩卖摘编统称。', '2023-01-05 23:03:37.511229+08', 3, 2, NULL);
INSERT INTO "public"."pin_comment" VALUES (3, '豚鼠不但拂拭黄铜合欢，落叶榨油机块茎。', '2023-01-05 23:03:37.55015+08', 4, 7, NULL);
INSERT INTO "public"."pin_comment" VALUES (4, '所有情形成年着眼红晕啦？朝霞无从石蜡。', '2023-01-05 23:03:37.553704+08', 3, 10, NULL);
INSERT INTO "public"."pin_comment" VALUES (5, '这个交谊依次坑人病理学。', '2023-01-05 23:03:37.55493+08', 3, 8, NULL);
INSERT INTO "public"."pin_comment" VALUES (6, '有些唯心论至少感应半决赛，不论影院蜷缩老字号。', '2023-01-05 23:03:37.557245+08', 3, 2, NULL);
INSERT INTO "public"."pin_comment" VALUES (7, '有些作坊夜间看病小道消息沿岸啊？判断力自白清音。', '2023-01-05 23:03:37.559301+08', 4, 7, NULL);
INSERT INTO "public"."pin_comment" VALUES (8, '那个第二次世界大战碰巧舞弄柳林光谱仪么？那么月亮选定界外球。', '2023-01-05 23:03:37.562818+08', 4, 9, NULL);
INSERT INTO "public"."pin_comment" VALUES (9, '那些薄雾奋勇叛变熟路剧作呀？无怪初生之犊笔录拐棍。', '2023-01-05 23:03:37.564691+08', 1, 10, NULL);
INSERT INTO "public"."pin_comment" VALUES (10, '有个楼板当庭通告走狗吗？再则子公司困倦诱饵。', '2023-01-05 23:03:37.567826+08', 4, 6, NULL);
INSERT INTO "public"."pin_comment" VALUES (11, '这个重音不力抽泣款项茶水。', '2023-01-05 23:03:37.570379+08', 1, 8, NULL);
INSERT INTO "public"."pin_comment" VALUES (12, '其它村民捎带造就胚胎学。', '2023-01-05 23:03:37.573028+08', 3, 8, 5);
INSERT INTO "public"."pin_comment" VALUES (19, '皮子近来翻盖信号弹木兰花吗？其它履带采制干戈。', '2023-01-05 23:03:37.590808+08', 3, 10, 4);
INSERT INTO "public"."pin_comment" VALUES (14, '其它统计员其次坦白青睐饭店。', '2023-01-05 23:03:37.579535+08', 2, 1, NULL);
INSERT INTO "public"."pin_comment" VALUES (18, '其它楼面娓娓诱骗蝴蝶粤菜。', '2023-01-05 23:03:37.588701+08', 4, 2, 2);
INSERT INTO "public"."pin_comment" VALUES (15, '尘雾趁热寄生筷子。', '2023-01-05 23:03:37.582184+08', 2, 3, NULL);
INSERT INTO "public"."pin_comment" VALUES (21, '顶灯趁机八仙过海赤小豆复制品。', '2023-01-05 23:03:37.595612+08', 2, 3, 15);
INSERT INTO "public"."pin_comment" VALUES (16, '这个井底之蛙陈年省略罪魁收容所么？不然生油浮夸中部。', '2023-01-05 23:03:37.583691+08', 4, 5, NULL);
INSERT INTO "public"."pin_comment" VALUES (23, '电路图不曾打滚街景咖啡厅吧？因此地下室异想天开民运。', '2023-01-05 23:03:37.600611+08', 2, 6, 1);
INSERT INTO "public"."pin_comment" VALUES (17, '有些顶芽刚巧昂首阔步五倍子。', '2023-01-05 23:03:37.586697+08', 1, 7, 3);
INSERT INTO "public"."pin_comment" VALUES (22, '这个法西斯主义稍微偷天换日农业国。', '2023-01-05 23:03:37.597611+08', 1, 7, 17);
INSERT INTO "public"."pin_comment" VALUES (24, '附中自古糟蹋终了皓齿了？中点宣称青睐。', '2023-01-05 23:03:37.602612+08', 2, 8, 11);
INSERT INTO "public"."pin_comment" VALUES (20, '所有产值后来出走咖喱天然气。', '2023-01-05 23:03:37.593603+08', 3, 9, 8);
INSERT INTO "public"."pin_comment" VALUES (13, '眼皮一起标识谗言色子。', '2023-01-05 23:03:37.576281+08', 4, 10, 19);
INSERT INTO "public"."pin_comment" VALUES (27, '有些弟妹何止踩水地层，万一挽歌心领懒鬼。', '2023-01-05 23:03:37.612785+08', 2, 2, 2);
INSERT INTO "public"."pin_comment" VALUES (30, '那个越剧正点心悦诚服大众山货呀？那个中非延误绞车。', '2023-01-05 23:03:37.622177+08', 2, 2, 2);
INSERT INTO "public"."pin_comment" VALUES (25, '这些军警凑巧按图索骥西藏自治区，与其这些考卷蠢蠢欲动客人。', '2023-01-05 23:03:37.605519+08', 1, 6, 10);
INSERT INTO "public"."pin_comment" VALUES (29, '楼梯一度晕船污水基本功呀？至此积极性腼腆密度。', '2023-01-05 23:03:37.618843+08', 3, 8, 24);
INSERT INTO "public"."pin_comment" VALUES (28, '明斯克逐一报时分子生物学尘寰。', '2023-01-05 23:03:37.615802+08', 2, 10, 13);
INSERT INTO "public"."pin_comment" VALUES (31, 'nweggerugel wef we', '2023-02-22 15:10:37.99+08', 4, 7, 7);
INSERT INTO "public"."pin_comment" VALUES (32, 'ewtwtrwet5', '2023-02-22 15:11:14.785+08', 4, 7, NULL);
INSERT INTO "public"."pin_comment" VALUES (26, '那些阳离子尽然闹鬼草鱼书报。', '2023-01-05 23:03:37.609749+08', 4, 3, 21);
INSERT INTO "public"."pin_comment" VALUES (33, '光谱未公布普呢认为', '2023-02-22 20:28:10.215+08', 4, 16, NULL);
INSERT INTO "public"."pin_comment" VALUES (34, '问题Igbo', '2023-02-22 20:28:25.079+08', 4, 16, 33);
INSERT INTO "public"."pin_comment" VALUES (35, '确实', '2023-02-23 16:50:53.391+08', 4, 13, NULL);
INSERT INTO "public"."pin_comment" VALUES (36, '确实', '2023-02-23 16:51:00.255+08', 4, 13, NULL);
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
  "view_num" int8 NOT NULL,
  "fts" tsvector
)
;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO "public"."post" VALUES (5, 'Prof.', 'cwJVqKkvdj', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/320858ac51504dbe83ee5ac50d4d5813.jpg', 'You cannot save people, you can just love them. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Creativity is intelligence having fun. I may not have gone where I intended to go, but I think I have ended up where I needed to be. A query is used to extract data from the database in a readable format according to the user''s request. The past has no power over the present moment. What you get by achieving your goals is not as important as what you become by achieving your goals. Difficult circumstances serve as a textbook of life for people. You cannot save people, you can just love them. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. You will succeed because most people are lazy. You will succeed because most people are lazy. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Anyone who has ever made anything of importance was disciplined. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. A comfort zone is a beautiful place, but nothing ever grows there. It wasn’t raining when Noah built the ark. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Difficult circumstances serve as a textbook of life for people. You will succeed because most people are lazy. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. The past has no power over the present moment. In the middle of winter I at last discovered that there was in me an invincible summer. You cannot save people, you can just love them. A query is used to extract data from the database in a readable format according to the user''s request. A comfort zone is a beautiful place, but nothing ever grows there. How we spend our days is, of course, how we spend our lives. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. The On Startup feature allows you to control what tabs appear when you launch Navicat. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Flexible settings enable you to set up a custom key for comparison and synchronization. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. You cannot save people, you can just love them. A man’s best friends are his ten fingers. Creativity is intelligence having fun. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. The past has no power over the present moment. A man is not old until regrets take the place of dreams. Typically, it is employed as an encrypted version of Telnet. Genius is an infinite capacity for taking pains. I will greet this day with love in my heart. The Synchronize to Database function will give you a full picture of all database differences.', '2009-06-24 07:09:10.905023+08', '2020-09-28 16:39:04.905023+08', 3, 1, 't', 0, ''' '':2A,4A,6A,9A,11A,13A,15A,17A,20A,22A,24A,26A,28A,30A,32A,34A,38A,41A,43A,45A,47A,49A,51A,53A,55A,57A,59A,61A,64A,66A,68A,70A,72A,75A,77A,79A,81A,83A,85A,87A,89A,91A,93A,96A,98A,100A,102A,104A,106A,108A,110A,112A,114A,116A,118A,121A,123A,125A,127A,129A,131A,133A,135A,137A,139A,141A,143A,145A,147A,149A,151A,153A,155A,159A,162A,164A,166A,168A,170A,172A,174A,176A,178A,181A,183A,185A,187A,189A,191A,193A,195A,197A,199A,201A,203A,205A,207A,209A,211A,213A,215A,217A,220A,222A,224A,226A,228A,230A,232A,234A,236A,238A,241A,243A,245A,247A,250A,252A,254A,256A,258A,261A,263A,265A,267A,269A,271A,273A,275A,277A,279A,281A,283A,285A,287A,289A,292A,294A,296A,298A,300A,303A,305A,307A,309A,311A,313A,315A,317A,320A,322A,324A,326A,328A,330A,332A,334A,337A,339A,341A,343A,346A,348A,350A,352A,354A,356A,359A,361A,363A,365A,367A,369A,371A,373A,375A,377A,379A,381A,383A,386A,388A,390A,392A,394A,396A,398A,400A,402A,406A,408A,411A,414A,417A,419A,421A,424A,426A,428A,430A,432A,434A,436A,438A,440A,442A,444A,446A,448A,450A,452A,454A,456A,458A,460A,462A,464A,466A,468A,470A,473A,475A,477A,479A,481A,483A,485A,487A,489A,491A,494A,496A,498A,500A,502A,504A,506A,508A,510A,513A,516A,518A,520A,522A,524A,526A,528A,530A,533A,535A,537A,539A,542A,544A,546A ''80'':1150A ''access'':1207A,1344A ''achieving'':190A,214A ''advanced'':299A ''alerts'':1388A ''allow'':615A ''allowing'':704A,823A ''allows'':391A,624A,635A,1172A,1405A ''amazon'':763A,768A ''analysis'':1398A ''analytical'':665A ''appear'':1184A ''ark'':596A ''audiences'':62A ''aurora'':770A ''authentication'':1539A ''authorizes'':1485A ''azure'':786A ''beautiful'':564A,1057A ''best'':1459A ''build'':33A ''built'':592A ''buttons'':374A ''capacity'':1677A ''change'':378A ''circumstances'':223A,854A ''click'':1561A ''cloud'':497A,503A,757A,775A,780A,900A,921A,1197A,1290A ''collections'':405A ''comfort'':556A,1049A ''communications'':681A,800A ''comparison'':1315A ''compatible'':753A ''conceptual'':39A ''connect'':1203A ''connecting'':1114A ''connection'':1233A,1493A ''connections'':290A,511A,619A,630A,927A ''consists'':268A ''control'':1178A,1559A ''course'':1088A ''create'':1411A ''creativity'':65A,1472A ''csv'':409A ''custom'':1309A ''cwjvqkkvdj'':1737C ''data'':23A,48A,134A,399A,643A,1018A,1261A ''database'':140A,293A,649A,1024A,1255A,1713A,1733A ''databases'':759A,1211A ''day'':1694A ''days'':1081A ''dbf'':418A ''detailed'':663A ''diagram'':368A,372A ''differences'':1735A ''different'':543A,549A,1505A ''difficult'':221A,852A ''direct'':617A,1342A ''disciplined'':492A ''discovered'':967A ''divided'':915A ''dreams'':1644A ''e'':1264A,1512A ''edit'':1415A ''editor'':1403A,1556A,1575A,1596A ''employed'':1654A ''enable'':1297A ''enables'':27A ''encrypted'':1660A ''ended'':107A ''er'':366A,370A ''establishing'':626A ''execute'':1426A ''external'':1554A,1573A,1594A ''extract'':132A,1016A ''family'':538A ''feature'':902A,1170A ''file'':1586A ''files'':519A,1243A ''fingers'':1469A ''flexible'':1293A ''format'':148A,1032A ''friends'':1461A ''fun'':73A,1480A ''function'':1715A ''g'':1266A ''genius'':1669A ''goals'':194A,218A ''gone'':84A ''google'':778A ''greet'':1690A ''group'':525A,1250A ''grows'':575A,1068A ''gssapi'':1537A ''having'':71A,1478A ''heart'':1704A ''high'':35A ''historical'':1396A ''http'':628A,1102A,1133A,1365A ''import'':387A,397A ''importance'':488A ''important'':202A ''include'':737A ''including'':684A,803A ''infinite'':1675A ''information'':527A,730A,849A ''installation'':461A ''installed'':433A ''intelligence'':69A,1476A ''intended'':90A ''internet'':1326A ''invincible'':981A ''isp'':1333A ''isps'':609A ''key'':1311A ''launch'':1190A ''lazy'':318A,335A,887A ''life'':235A,866A ''linux'':1521A ''list'':355A,357A ''listen'':710A,829A ''lives'':1099A ''local'':439A ''logged'':892A ''logical'':42A ''love'':16A,257A,1001A,1448A,1698A ''machine'':447A ''machines'':545A ''macos'':1518A ''main'':264A ''make'':1491A ''man'':1455A,1624A ''mariadb'':742A ''means'':1220A ''members'':540A ''method'':1110A ''metrics'':1392A ''microsoft'':784A ''middle'':955A ''model'':517A,1241A ''modeler'':25A ''models'':50A ''moment'':179A,948A,1619A ''monitor'':427A,1376A ''monitored'':471A,733A ''mysql'':739A ''navicat'':21A,425A,495A,531A,536A,633A,898A,919A,1192A,1195A,1288A,1374A,1483A ''navigation'':907A ''needed'':115A ''noah'':590A ''object'':382A ''objects'':295A,342A ''old'':1630A ''open'':1544A,1569A ''oracle'':773A ''pains'':1683A ''pam'':1533A ''pane'':909A ''panes'':278A ''password'':690A,809A ''passwords'':724A,843A,1257A ''path'':1588A ''people'':7A,239A,248A,314A,331A,870A,883A,992A,1439A ''physical'':46A ''picture'':1727A ''place'':566A,1059A,1640A ''plain'':699A,818A ''platforms'':551A,1507A ''port'':1145A,1148A ''power'':171A,940A,1611A ''preferences'':1600A ''prepare'':1422A ''present'':177A,946A,1617A ''process'':667A ''prof'':1736B ''protocol'':1130A,1357A ''provide'':1340A ''provider'':1330A ''provides'':499A ''quality'':37A ''queries'':514A,1238A,1430A ''query'':124A,1008A,1548A ''raining'':586A ''rds'':765A ''readable'':146A,1030A ''regrets'':1634A ''remote'':1497A ''repository'':1382A ''request'':160A,1044A ''require'':455A ''requires'':1378A ''running'':1501A ''s'':158A,1042A,1457A ''schema'':655A ''sections'':929A ''secure'':1353A ''select'':1567A ''selected'':1428A ''serve'':225A,856A ''server'':748A,1120A,1159A,1350A ''servers'':467A,735A,1499A ''service'':505A,1328A ''session'':676A,718A,795A,837A ''set'':1303A,1582A ''settings'':1235A,1295A ''software'':459A ''solution'':1371A ''spend'':1077A,1095A ''sql'':746A,1401A,1417A ''ssh'':1360A ''startup'':1168A ''steal'':722A,841A ''store'':1229A,1386A ''stored'':1284A ''succeed'':308A,325A,877A ''summer'':983A ''supports'':1531A ''synchronization'':1319A ''synchronize'':1709A ''synchronizing'':509A ''t'':584A ''tab'':344A ''tables'':403A,1269A ''tabs'':1182A ''taking'':1681A ''telnet'':674A,793A,1666A ''text'':701A,820A,1419A ''textbook'':231A,862A ''think'':101A ''toolbars'':274A ''tools'':301A ''transfer'':641A ''transmitted'':695A,814A ''tunneling'':1104A,1355A ''txt'':412A ''typically'':1647A ''unix'':1525A ''use'':351A ''used'':128A,603A,1012A ''user'':156A,1040A ''username'':686A,805A ''uses'':1124A ''using'':1550A ''variety'':58A ''version'':1662A ''view'':384A ''views'':1272A ''virtual'':445A,523A,1248A ''wasn'':582A ''web'':1157A ''wide'':56A ''window'':266A ''windows'':1515A ''winter'':959A ''wizard'':389A ''work'':286A ''xml'':415A ''zone'':558A,1051A');
INSERT INTO "public"."post" VALUES (11, 'Mr.', 'aTiDNFdYYC', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'The reason why a great man is great is that he resolves to be a great man. What you get by achieving your goals is not as important as what you become by achieving your goals. The Synchronize to Database function will give you a full picture of all database differences. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. In the middle of winter I at last discovered that there was in me an invincible summer. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Flexible settings enable you to set up a custom key for comparison and synchronization. The past has no power over the present moment. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Champions keep playing until they get it right. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Anyone who has never made a mistake has never tried anything new. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. The reason why a great man is great is that he resolves to be a great man. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. A query is used to extract data from the database in a readable format according to the user''s request. The On Startup feature allows you to control what tabs appear when you launch Navicat. I may not have gone where I intended to go, but I think I have ended up where I needed to be. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Anyone who has never made a mistake has never tried anything new. Actually it is just in an idea when feel oneself can achieve and cannot achieve. A comfort zone is a beautiful place, but nothing ever grows there. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Anyone who has ever made anything of importance was disciplined. A comfort zone is a beautiful place, but nothing ever grows there. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. A comfort zone is a beautiful place, but nothing ever grows there. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. You will succeed because most people are lazy. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. It wasn’t raining when Noah built the ark. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. If it scares you, it might be a good thing to try. Champions keep playing until they get it right. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Genius is an infinite capacity for taking pains. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. There is no way to happiness. Happiness is the way. Navicat 15 has added support for the system-wide dark mode. It wasn’t raining when Noah built the ark. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. Optimism is the one quality more associated with success and happiness than any other. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Typically, it is employed as an encrypted version of Telnet. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution.', '2015-11-11 17:35:13.905023+08', '2012-11-04 09:20:59.905023+08', 3, 2, 't', 1, ''' '':2A,4A,6A,8A,10A,12A,14A,16A,18A,20A,22A,24A,26A,28A,30A,32A,35A,37A,39A,41A,43A,45A,47A,49A,51A,53A,55A,57A,59A,61A,63A,65A,67A,69A,71A,74A,76A,78A,80A,82A,84A,86A,88A,90A,92A,94A,96A,98A,100A,102A,105A,107A,109A,111A,113A,115A,117A,120A,122A,125A,127A,129A,132A,136A,138A,140A,142A,144A,146A,148A,150A,152A,154A,156A,158A,160A,162A,165A,167A,169A,171A,173A,175A,177A,179A,181A,183A,186A,188A,190A,192A,194A,196A,198A,200A,202A,204A,206A,208A,210A,212A,214A,216A,218A,221A,223A,225A,227A,229A,231A,233A,235A,237A,239A,241A,243A,245A,248A,250A,252A,254A,256A,258A,260A,262A,266A,269A,271A,273A,275A,277A,279A,281A,283A,285A,287A,289A,292A,294A,296A,298A,300A,302A,304A,306A,308A,310A,312A,314A,316A,318A,321A,323A,325A,327A,329A,331A,333A,335A,337A,340A,342A,344A,346A,349A,351A,354A,356A,358A,360A,363A,365A,367A,369A,374A,376A,378A,380A,384A,386A,388A,390A,392A,394A,396A,398A,400A,403A,405A,407A,409A,411A,413A,415A,417A,419A,421A,423A,425A,427A,429A,431A,434A,436A,438A,440A,442A,444A,446A,448A,451A,453A,455A,457A,459A,461A,463A,465A,468A,470A,472A,475A,477A,479A,481A,483A,485A,487A,489A,491A,494A,496A,498A,500A,502A,504A,506A,508A,511A,513A,515A,517A,519A,521A,523A,525A,527A,529A,531A,533A,535A,538A,540A,542A,544A ''15'':2034A ''access'':2385A ''accounts'':1519A,1864A,2113A,2334A ''achieve'':426A,432A,1167A,1173A ''achieving'':44A,68A ''acquire'':128A,561A ''activities'':2139A,2190A ''actually'':404A,1145A ''added'':2038A ''administration'':1577A,1623A ''agentless'':1929A ''aggregate'':482A ''alerts'':236A,526A,1018A,1997A ''allowing'':375A,1581A,1754A ''allows'':935A ''amazon'':1310A,1315A ''analysis'':246A,536A,1028A,2007A ''appear'':947A ''ark'':1717A,2071A ''associated'':2278A ''atidnfdyyc'':2413C ''audiences'':290A,749A,1460A ''aurora'':1317A ''authenticated'':826A ''authentication'':1079A ''azure'':1333A ''beautiful'':1186A,1264A,1403A ''build'':261A,720A,1431A ''builder'':473A,478A,484A ''building'':488A ''built'':1713A,2067A ''buttons'':1554A ''caches'':118A,551A ''capacity'':1974A ''champions'':495A,1897A ''choose'':157A,590A ''clear'':108A,541A ''click'':135A,568A,1659A ''cloud'':1041A,1062A,1304A,1322A,1327A,1486A,1517A,1793A,1814A,1831A,1862A,2080A,2111A,2301A,2332A ''collaboration'':1523A,1868A,2117A,2338A ''comfort'':1178A,1256A,1395A ''commands'':680A ''communications'':352A,1087A,1731A ''comparison'':315A ''compatible'':1300A ''conceptual'':267A,726A,1437A ''connect'':1587A ''connection'':139A,572A,839A,1346A,2249A,2261A ''connections'':1068A,1534A,1573A,1820A,2255A ''control'':133A,566A,941A,1657A ''corresponding'':1552A ''custom'':309A ''dark'':2050A ''data'':251A,276A,710A,735A,898A,1421A,1446A ''database'':81A,101A,871A,904A,1378A,1575A,1621A,1633A,2148A,2199A ''databases'':1306A,1616A ''ddl'':2144A,2195A ''dependencies'':2155A,2206A ''detailed'':2130A,2181A ''differences'':103A ''different'':1496A,1841A,2090A,2311A ''direct'':2383A ''directly'':466A ''disciplined'':1251A ''discovered'':203A ''divided'':1056A,1808A ''easy'':1637A ''editing'':458A ''editor'':454A,1654A,1673A,1694A ''effective'':1959A ''employed'':2348A ''enable'':297A ''enables'':255A,714A,1425A ''encrypted'':1085A,2354A ''ended'':989A ''establish'':833A,1340A,2245A ''execute'':678A ''external'':1652A,1671A,1692A ''extract'':896A ''eyes'':1208A ''feature'':184A,617A,933A,1043A,1795A ''features'':1949A ''feel'':420A,1161A ''file'':1684A ''files'':695A ''flexible'':293A ''flush'':121A,153A,161A,554A,586A,594A ''format'':912A ''forwarding'':1104A ''function'':83A ''general'':881A,1388A ''genius'':1966A ''goals'':48A,72A ''gone'':966A ''good'':1888A ''google'':1325A ''great'':9A,15A,31A,760A,766A,782A ''grows'':1197A,1275A,1414A ''happiness'':2020A,2023A,2286A ''high'':263A,722A,1433A ''hijacking'':801A ''historical'':244A,534A,1026A,2005A ''hosts'':1093A ''http'':864A,1371A,2406A ''idea'':416A,1157A ''importance'':1247A ''important'':56A ''include'':1284A ''including'':355A,1734A ''infinite'':1972A ''information'':401A,875A,1382A,1560A,1780A,2122A,2134A,2173A,2185A ''insecure'':1115A ''inspire'':1228A ''intended'':972A ''internal'':116A,549A ''internet'':2367A ''invincible'':217A ''isp'':2374A ''key'':311A ''kinds'':1629A ''known'':1096A ''launch'':953A ''lazy'':1477A ''listen'':381A,1760A ''local'':843A,1350A ''located'':1492A,1837A,2086A,2307A ''locks'':130A,563A ''log'':661A ''logged'':1033A,1785A ''logical'':270A,729A,1440A ''login'':873A,1380A ''machine'':701A ''make'':1953A ''making'':1619A ''malicious'':808A ''man'':11A,33A,762A,784A ''mariadb'':1289A,1608A ''matter'':853A,1360A ''membership'':2158A,2209A ''metrics'':240A,530A,1022A,2001A ''microsoft'':1331A ''middle'':191A ''mistake'':632A,1132A ''mode'':2052A ''modeler'':253A,712A,1423A ''models'':278A,737A,1448A ''moment'':338A ''mongodb'':1614A ''monitor'':224A,514A,1006A,1916A,1985A ''monitored'':1280A ''monitoring'':1935A,1957A ''multi'':1571A ''multiple'':1627A ''mysql'':1286A,1591A ''navicat'':222A,249A,435A,512A,708A,955A,1004A,1039A,1060A,1419A,1484A,1515A,1565A,1791A,1812A,1829A,1860A,1914A,1983A,2032A,2078A,2109A,2236A,2299A,2330A ''navigation'':145A,578A,1048A,1800A ''needed'':997A ''network'':675A,1117A ''new'':642A,837A,1142A,1344A ''noah'':1711A,2065A ''object'':2132A,2153A,2183A,2204A ''objects'':1488A,1537A,1833A,2082A,2150A,2201A,2303A ''oneself'':422A,1163A ''open'':1210A,1642A,1667A ''optimism'':2266A ''option'':163A,596A ''oracle'':1320A,1594A ''packed'':1943A ''pains'':1980A ''pane'':147A,580A,1050A,1562A,1802A,2124A,2175A ''password'':361A,1740A ''passwords'':395A,1774A ''path'':1686A ''people'':1473A ''physical'':274A,733A,1444A ''picture'':95A ''place'':1188A,1266A,1405A ''plain'':370A,1749A ''playing'':499A,1901A ''port'':1102A ''possible'':1963A ''postgresql'':1597A ''power'':330A ''powerful'':439A,1947A ''preferences'':1698A ''present'':336A ''preview'':2168A,2219A ''privilege'':176A,609A ''program'':657A ''project'':1509A,1854A,2103A,2137A,2188A,2324A ''projects'':1498A,1541A,1843A,2092A,2313A ''protocol'':2398A ''provide'':2381A ''provider'':2371A ''provides'':437A,1075A ''quality'':265A,724A,1435A,2274A ''queries'':449A,490A ''query'':452A,462A,471A,888A,1646A ''raining'':1707A,2061A ''rds'':1312A ''readable'':910A ''reason'':3A,754A ''reload'':112A,174A,545A,607A ''remote'':686A,845A,1352A,1931A ''repository'':230A,520A,1012A,1991A ''request'':924A ''requires'':226A,516A,1008A,1987A ''resolves'':23A,774A ''right'':509A,1911A ''roles'':2164A,2215A ''s'':922A ''safe'':1922A ''scares'':1875A ''sections'':1070A,1822A ''secure'':645A,1083A,2394A ''select'':151A,584A,1530A,1548A,1665A ''server'':688A,847A,1295A,1354A,1605A,1933A,2232A,2391A ''servers'':1282A ''service'':2369A ''session'':347A,389A,799A,818A,1726A,1768A ''sessions'':789A ''set'':303A,867A,1374A,1680A ''settings'':295A ''share'':1505A,1850A,2099A,2320A ''shell'':647A ''shows'':2126A,2177A ''simple'':1925A ''solution'':2412A ''sql'':1293A,1603A ''sqlite'':1600A ''ssh'':650A,860A,1100A,1367A,2401A ''ssl'':857A,1364A ''start'':2224A ''startup'':931A ''steal'':393A,1772A ''store'':234A,524A,1016A,1995A ''strong'':1077A ''succeed'':1467A ''success'':2282A ''successfully'':831A,1338A ''summer'':219A ''support'':2040A ''susceptible'':795A ''synchronization'':319A ''synchronize'':77A ''t'':1705A,2059A ''tab'':883A,1390A ''tables'':123A,556A ''tabs'':945A ''takes'':812A ''taking'':1978A ''telnet'':345A,1724A,2360A ''text'':372A,464A,1751A ''thing'':1890A ''think'':983A ''tool'':1579A,1937A ''tools'':441A ''transmitted'':366A,1745A ''tried'':638A,1138A ''try'':1894A ''tunneling'':1107A,2396A ''typically'':2341A ''use'':180A,613A ''used'':892A ''user'':810A,920A ''username'':357A,1736A ''users'':2162A,2213A ''using'':1648A,2257A ''variety'':286A,745A,1456A ''various'':114A,547A ''version'':2356A ''visually'':492A ''wasn'':1703A,2057A ''watching'':1215A ''way'':2016A,2029A ''wide'':284A,743A,1454A,2048A ''window'':2263A ''winter'':195A ''working'':445A,2226A ''zone'':1180A,1258A,1397A');
INSERT INTO "public"."post" VALUES (6, 'Mr.', 'qW3MeMEkIp', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/320858ac51504dbe83ee5ac50d4d5813.jpg', 'A man’s best friends are his ten fingers. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Genius is an infinite capacity for taking pains. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. I destroy my enemies when I make them my friends. How we spend our days is, of course, how we spend our lives. I destroy my enemies when I make them my friends. It wasn’t raining when Noah built the ark. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Optimism is the one quality more associated with success and happiness than any other. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. To connect to a database or schema, simply double-click it in the pane. Typically, it is employed as an encrypted version of Telnet. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. The first step is as good as half over. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. You cannot save people, you can just love them. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Anyone who has ever made anything of importance was disciplined. Flexible settings enable you to set up a custom key for comparison and synchronization. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. A query is used to extract data from the database in a readable format according to the user''s request. It wasn’t raining when Noah built the ark. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Genius is an infinite capacity for taking pains. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Difficult circumstances serve as a textbook of life for people. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. What you get by achieving your goals is not as important as what you become by achieving your goals. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. The first step is as good as half over. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy.', '2013-11-09 05:15:37.905023+08', '2022-01-01 18:38:05.905023+08', 6, 2, 't', 6, ''' '':2A,6A,8A,10A,12A,14A,16A,19A,21A,23A,25A,27A,29A,31A,33A,36A,40A,42A,44A,46A,48A,50A,52A,55A,57A,59A,61A,63A,65A,67A,69A,71A,73A,75A,77A,80A,82A,84A,86A,88A,90A,92A,94A,98A,101A,103A,105A,107A,109A,111A,113A,115A,117A,119A,121A,124A,126A,128A,130A,132A,134A,136A,138A,141A,143A,145A,147A,149A,151A,153A,155A,157A,159A,162A,164A,167A,169A,172A,174A,176A,178A,180A,182A,184A,186A,188A,190A,192A,194A,196A,198A,200A,203A,205A,207A,209A,211A,213A,215A,217A,219A,221A,223A,225A,228A,230A,232A,234A,236A,238A,240A,242A,244A,246A,249A,251A,253A,255A,257A,259A,262A,264A,267A,269A,271A,273A,275A,278A,280A,282A,284A,286A,288A,290A,292A,294A,296A,299A,301A,305A,307A,309A,311A,313A,315A,318A,320A,322A,324A,326A,328A,330A,332A,334A,337A,340A,343A,345A,347A,349A,351A,353A,355A,358A,360A,362A,364A,366A,368A,370A,372A,374A,376A,378A,380A,382A,384A,387A,389A,391A,393A,395A,397A,399A,402A,404A,407A,409A,411A,414A,418A,420A,422A,424A,426A,428A,430A,432A,434A,436A,438A,440A,442A,444A,447A,449A,451A,453A,455A,457A,459A,461A,463A,465A,468A,470A,472A,474A,476A,478A,480A,483A,485A,489A,491A,493A,495A,498A,501A,503A,505A,507A,509A,511A,513A,515A,517A,520A,522A,524A,526A,528A,531A,533A,536A,538A,540A,542A,544A,546A,548A,551A,553A,555A,557A ''access'':583A,776A ''accounts'':1142A ''achieve'':1382A,1388A ''achieving'':1789A,1813A ''acquire'':410A ''activities'':1328A ''actually'':1360A ''administration'':990A,1036A,1895A,1941A ''aggregate'':862A ''alibaba'':168A,695A ''allowing'':994A,1442A,1899A ''allows'':323A,770A,942A ''amazon'':158A,163A,685A,690A ''ark'':316A,1256A ''associated'':371A ''audiences'':122A ''authentication'':1498A ''available'':354A,973A ''best'':7A ''build'':93A,1179A,1289A ''builder'':853A,858A,864A ''building'':868A ''built'':312A,1252A ''caches'':400A ''capacity'':133A,1399A ''checked'':1751A ''choose'':439A ''circumstances'':1473A ''clear'':390A ''click'':39A,417A,488A ''cloud'':150A,170A,573A,666A,677A,697A,1109A,1140A,1541A,1547A ''collaboration'':1146A ''collections'':338A,957A ''commands'':910A ''communications'':1419A,1506A ''comparing'':1600A ''comparison'':1096A ''compromising'':790A ''conceptual'':99A,1185A,1295A ''connect'':471A,579A,1000A,1905A ''connection'':421A,609A,1682A,1847A,1859A ''connections'':986A,1555A,1853A,1891A ''control'':37A,415A ''cost'':1163A,1273A ''course'':265A ''custom'':1090A ''data'':83A,108A,331A,637A,950A,1151A,1194A,1211A,1261A,1304A,1602A ''database'':224A,477A,631A,751A,988A,1034A,1046A,1167A,1217A,1277A,1337A,1714A,1764A,1893A,1939A,1951A ''databases'':152A,587A,679A,1029A,1934A ''days'':258A ''ddl'':1333A ''deleted'':1632A ''dependencies'':1344A ''design'':1169A,1279A ''destroy'':231A,281A ''detailed'':1319A ''developers'':191A,718A ''different'':1119A,1587A,1593A ''difficult'':1471A ''directly'':846A ''disciplined'':1071A ''displayed'':1772A ''double'':486A ''e'':640A ''easy'':206A,733A,1050A,1955A ''editing'':838A ''editor'':34A,53A,74A,834A ''effective'':1165A,1275A ''employed'':506A ''enable'':1078A ''enables'':87A ''encrypted'':512A,1504A ''enemies'':235A,285A ''establish'':1676A,1843A ''execute'':908A ''export'':319A,329A,938A,948A ''external'':32A,51A,72A ''extract'':1209A ''eyes'':527A,1647A ''family'':1582A ''feature'':466A ''features'':173A,700A ''feel'':1376A ''file'':64A ''files'':619A,925A,1563A ''fingers'':17A ''flexible'':1074A ''flush'':403A,435A,443A ''format'':1225A ''formats'':356A,975A ''forwarding'':1523A ''friends'':9A,247A,297A ''g'':642A ''general'':1724A ''genius'':125A,1391A ''goals'':1793A,1817A ''good'':562A,1874A ''group'':626A,1569A ''half'':566A,1878A ''happiness'':379A ''helps'':1175A,1285A ''high'':95A,1181A,1291A ''hosts'':1512A ''http'':1707A ''idea'':1372A ''importance'':1067A ''important'':1801A ''including'':1422A ''infinite'':131A,1397A ''information'':1311A,1323A,1468A,1571A,1718A ''insecure'':1534A ''inserted'':1625A ''inspire'':547A,1667A ''internal'':398A ''key'':1092A ''kinds'':1042A,1947A ''known'':1515A ''learn'':210A,737A ''life'':1485A ''listen'':1448A ''lives'':276A ''local'':1686A ''located'':1115A ''locks'':412A ''log'':891A ''logical'':102A,1188A,1298A ''login'':1716A ''love'':810A ''machine'':931A ''machines'':1589A ''make'':241A,291A ''making'':1032A,1937A ''man'':3A ''manage'':148A,675A ''mariadb'':1021A,1926A ''matter'':1696A ''means'':596A ''members'':1584A ''membership'':1347A ''model'':617A,1561A ''modeler'':85A,1153A,1263A ''models'':110A,1196A,1306A ''mongodb'':1027A,1932A ''multi'':984A,1889A ''multiple'':1040A,1945A ''mysql'':1004A,1909A ''navicat'':81A,177A,571A,664A,704A,815A,978A,1107A,1138A,1149A,1259A,1539A,1575A,1580A,1834A,1883A ''navigation'':427A,1743A ''needs'':201A,728A ''network'':905A,1536A ''new'':220A,747A,1680A ''noah'':310A,1250A ''number'':1613A ''object'':1321A,1342A ''objects'':1111A,1339A,1735A,1766A ''oneself'':1378A ''open'':22A,47A,529A,1649A ''optimism'':359A ''option'':445A,1747A ''oracle'':1007A,1912A ''pains'':139A,1405A ''pane'':429A,496A,1313A,1745A,1778A ''password'':1428A ''passwords'':633A,1462A ''path'':66A ''people'':801A,1489A ''physical'':106A,1192A,1302A ''plain'':1437A ''platforms'':1595A ''port'':1521A ''postgresql'':1010A,1915A ''powerful'':819A,1159A,1269A ''preferences'':78A,1757A ''prevent'':762A ''preview'':1357A ''privilege'':458A ''professional'':189A,716A ''program'':887A ''project'':1132A,1326A ''projects'':1121A ''provide'':187A,714A ''provides'':817A,1494A,1543A ''quality'':97A,367A,1183A,1293A ''queries'':614A,829A,870A,1558A ''query'':26A,346A,832A,842A,851A,965A,1201A ''qw3memekip'':1956C ''raining'':306A,1246A ''rds'':165A,692A ''readable'':1223A ''records'':1617A ''redshift'':160A,687A ''reload'':394A,456A ''remote'':780A,916A,1688A ''request'':1237A ''results'':348A,967A ''roles'':1353A ''s'':5A,784A,1235A ''schema'':481A,1739A ''secure'':875A,1502A ''security'':792A ''select'':45A,433A ''serve'':1475A ''server'':226A,753A,782A,918A,1018A,1690A,1830A,1923A ''serves'':758A ''service'':1549A ''session'':1414A,1456A ''set'':60A,1084A,1710A ''settings'':611A,1076A ''share'':1128A ''shell'':786A,877A ''shows'':1315A,1609A ''simply'':484A ''sophisticated'':181A,708A ''specific'':199A,726A ''spend'':254A,272A ''sql'':1016A,1921A ''sqlite'':1013A,1918A ''ssh'':756A,880A,1519A,1703A ''ssl'':1700A ''start'':1822A ''steal'':1460A ''step'':556A,1868A ''store'':605A ''stored'':660A ''strong'':1496A ''success'':375A ''successfully'':1674A ''synchronization'':1100A ''synchronizing'':1553A ''t'':304A,1244A ''tab'':1726A ''tables'':335A,405A,645A,954A ''taking'':137A,1403A ''target'':1638A ''telnet'':518A,1412A ''text'':844A,1439A ''textbook'':1481A ''tool'':992A,1171A,1281A,1897A ''tools'':821A ''transmitted'':1433A ''tunneling'':1526A ''typically'':499A ''updated'':1628A ''use'':462A ''used'':1205A ''user'':1233A ''username'':1424A ''users'':214A,741A,1351A ''using'':28A,1855A ''variety'':118A ''various'':396A ''version'':514A ''views'':341A,648A,960A ''virtual'':624A,1567A ''visually'':872A ''vulnerabilities'':766A ''wasn'':302A,1242A ''watching'':534A,1654A ''wide'':116A ''window'':1607A,1759A,1861A ''wizard'':321A,940A ''working'':825A,1824A');
INSERT INTO "public"."post" VALUES (4, 'Ms.', 'R0seydLwsJ', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'It wasn’t raining when Noah built the ark. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Champions keep playing until they get it right. Sometimes you win, sometimes you learn. Remember that failure is an event, not a person. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Anyone who has ever made anything of importance was disciplined. To connect to a database or schema, simply double-click it in the pane. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. Anyone who has never made a mistake has never tried anything new. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. A man’s best friends are his ten fingers. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Genius is an infinite capacity for taking pains. All journeys have secret destinations of which the traveler is unaware. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Success consists of going from failure to failure without loss of enthusiasm. The On Startup feature allows you to control what tabs appear when you launch Navicat. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. The past has no power over the present moment. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools.', '2002-08-05 19:48:37.905023+08', '2017-09-27 10:31:23.905023+08', 8, 2, 't', 0, ''' '':2A,6A,8A,10A,12A,14A,16A,19A,21A,23A,25A,27A,29A,31A,33A,35A,38A,41A,43A,45A,47A,49A,51A,53A,55A,58A,60A,62A,64A,67A,69A,71A,73A,75A,78A,80A,82A,87A,89A,91A,93A,95A,97A,99A,101A,103A,105A,108A,110A,112A,114A,117A,119A,122A,124A,126A,128A,131A,133A,135A,137A,142A,144A,146A,148A,152A,154A,156A,158A,160A,162A,164A,166A,168A,171A,173A,175A,177A,179A,181A,183A,185A,188A,190A,192A,195A,197A,199A,202A,204A,206A,208A,210A,212A,215A,217A,219A,222A,224A,226A,228A,230A,233A,235A,237A,239A,241A,243A,245A,247A,249A,251A,253A,255A,257A,259A,261A,263A,266A,268A,270A,272A,274A,276A,278A,280A,282A,284A,287A,289A,291A,293A,295A,297A,299A,302A,304A,308A,310A,312A,314A,317A,319A,321A,325A,327A,329A,331A,333A,335A,337A,339A,341A,343A,345A,347A,350A,352A,354A,356A,358A,360A,363A,365A,367A,369A,371A,373A,375A,377A,380A,382A,384A,386A,388A,390A,392A,394A,396A,398A,400A,402A,405A,407A,409A,411A,413A,415A,417A,420A,422A,425A,427A,429A,432A,436A,438A,440A,442A,444A,446A,448A,450A,452A,454A,456A,458A,460A,462A,465A,467A,469A,471A,473A,475A,477A,479A,481A,483A,486A,488A,490A,492A,494A,496A,498A,501A,503A,505A,507A,509A,511A,513A,515A,517A,519A,521A,523A,525A,528A,530A,532A,535A,537A,539A,541A,543A,545A,547A,549A,551A,553A,555A,558A,560A ''80'':938A ''ability'':638A,698A ''acquire'':428A ''action'':594A ''advanced'':1107A ''allowing'':143A ''allows'':586A,985A ''appear'':997A ''ark'':17A ''best'':795A ''built'':13A ''caches'':418A ''capacity'':858A ''champions'':172A ''choose'':457A ''clear'':408A ''click'':307A,435A ''cloud'':22A,28A,497A,518A,818A,839A ''commands'':353A ''communications'':120A ''comparing'':531A,1010A ''connect'':290A ''connecting'':902A ''connection'':231A,439A,772A,784A ''connections'':36A,524A,778A,845A,1098A ''consists'':954A,1076A ''contains'':676A,736A ''control'':433A,991A ''data'':533A,642A,702A,1012A ''database'':262A,296A,600A,1101A ''databases'':648A,708A ''date'':666A,726A ''deleted'':563A,1042A ''destinations'':875A ''different'':68A,74A,646A,706A ''disciplined'':285A ''divided'':512A,833A ''documents'':100A ''double'':305A ''download'':260A ''easily'':622A ''employs'':578A ''enthusiasm'':974A ''establish'':768A ''event'':213A ''execute'':351A ''failure'':207A,962A,966A ''family'':63A ''feature'':484A,499A,820A,983A ''files'':44A,368A ''fingers'':805A ''flush'':421A,453A,461A ''friends'':797A ''genius'':850A ''going'':958A ''group'':50A ''http'':890A,921A ''importance'':281A ''including'':123A ''infinite'':856A ''information'':52A,169A,682A,742A ''inserted'':556A,1035A ''install'':252A ''internal'':416A ''internet'':106A ''journeys'':869A ''kept'':660A,720A ''launch'':1003A ''layer'':83A ''learn'':200A ''library'':256A ''listen'':149A ''locks'':430A ''log'':334A ''logged'':489A,810A ''loss'':970A ''machine'':374A ''machines'':70A ''main'':1072A ''man'':791A ''members'':65A ''menus'':616A ''method'':898A ''mistake'':393A ''model'':42A ''moment'':1067A ''navicat'':20A,56A,61A,495A,516A,632A,692A,759A,816A,837A,1005A ''navigation'':445A,504A,574A,825A ''network'':348A ''new'':403A ''noah'':11A ''number'':544A,1023A ''objects'':606A,1103A ''openssl'':254A ''option'':463A ''pains'':864A ''pane'':315A,447A,506A,576A,827A ''panes'':1086A ''password'':129A ''passwords'':163A ''person'':220A ''plain'':138A ''platforms'':76A ''playing'':176A ''pop'':612A ''port'':933A,936A ''power'':1059A ''present'':1065A ''private'':98A ''privilege'':476A ''program'':330A ''protocol'':92A,918A ''provides'':24A,634A,694A ''queries'':39A ''quickly'':618A ''r0seydlwsj'':1110C ''raining'':7A ''records'':548A,1027A ''reload'':412A,474A ''remember'':203A ''remote'':359A ''repository'':674A,734A ''right'':186A ''s'':793A ''schema'':300A ''schemas'':654A,714A ''secret'':873A ''sections'':526A,847A ''secure'':79A,229A,318A ''select'':451A ''server'':361A,755A,908A,947A ''service'':30A ''session'':115A,157A ''shell'':320A ''shows'':540A,1019A ''simply'':303A ''sockets'':81A ''source'':264A ''ssh'':323A ''ssl'':85A ''start'':747A ''startup'':981A ''steal'':161A ''structure'':582A ''success'':952A ''synchronizing'':34A ''t'':5A ''tables'':423A ''tabs'':995A ''taking'':862A ''target'':569A,1048A ''telnet'':113A ''text'':140A ''thing'':238A ''toolbars'':1082A ''tools'':1109A ''transmitted'':134A ''transmitting'':96A ''traveler'':883A ''tree'':580A ''tried'':399A ''tunneling'':892A ''unaware'':887A ''updated'':559A,1038A ''use'':480A ''username'':125A ''uses'':912A ''using'':780A ''various'':414A ''virtual'':48A ''wasn'':3A ''web'':945A ''win'':193A ''window'':538A,786A,1017A,1074A ''words'':629A,689A ''work'':1094A ''working'':749A');
INSERT INTO "public"."post" VALUES (10, 'Mr.', 'Xc14bo5cA1', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. I will greet this day with love in my heart. Creativity is intelligence having fun. Remember that failure is an event, not a person. I will greet this day with love in my heart. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. A man’s best friends are his ten fingers. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. A man’s best friends are his ten fingers. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Navicat 15 has added support for the system-wide dark mode. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Anyone who has ever made anything of importance was disciplined. There is no way to happiness. Happiness is the way. Anyone who has never made a mistake has never tried anything new. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. How we spend our days is, of course, how we spend our lives. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. Genius is an infinite capacity for taking pains. All journeys have secret destinations of which the traveler is unaware. Navicat 15 has added support for the system-wide dark mode. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Actually it is just in an idea when feel oneself can achieve and cannot achieve. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. A man’s best friends are his ten fingers. The On Startup feature allows you to control what tabs appear when you launch Navicat. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily.', '2004-07-10 17:24:45.905023+08', '2019-09-22 20:06:47.905023+08', 3, 1, 'f', 3, ''' '':2A,4A,6A,8A,10A,12A,14A,16A,18A,20A,22A,24A,26A,28A,31A,33A,35A,37A,39A,41A,43A,45A,47A,50A,53A,55A,57A,59A,61A,63A,65A,67A,70A,72A,74A,76A,79A,81A,83A,85A,87A,90A,92A,94A,96A,98A,100A,102A,104A,106A,108A,111A,113A,115A,117A,119A,122A,124A,126A,128A,130A,132A,135A,137A,139A,142A,144A,146A,148A,150A,152A,154A,156A,158A,160A,163A,165A,167A,169A,171A,173A,175A,177A,181A,183A,185A,187A,189A,191A,194A,196A,198A,201A,203A,205A,207A,209A,211A,213A,215A,217A,220A,222A,224A,226A,228A,230A,232A,234A,236A,238A,240A,242A,244A,246A,248A,250A,252A,254A,256A,258A,260A,262A,264A,266A,269A,271A,273A,275A,277A,280A,282A,285A,287A,289A,291A,293A,295A,297A,300A,302A,304A,306A,308A,310A,312A,314A,316A,318A,320A,322A,324A,326A,328A,330A,332A,334A,336A,338A,340A,344A,346A,348A,350A,353A,355A,359A,361A,363A,365A,367A,369A,372A,374A,376A,378A,380A,382A,384A,387A,389A,391A,393A,395A,397A,400A,402A,407A,409A,412A,414A,417A,419A,421A,423A,425A,427A,429A,431A,434A,436A,438A,440A,442A,444A,446A,448A,451A,453A,455A,458A,460A,462A,464A,466A,468A,470A,472A,474A,477A,479A,481A,483A,487A,489A,491A,493A,495A,497A,499A,501A,503A,506A,509A,512A,515A,517A,520A,522A,526A,528A,531A,533A,535A,537A,539A,541A,543A,545A,547A,549A,552A,554A,556A,558A ''15'':724A,1956A ''80'':666A ''access'':811A,1032A,1517A,1684A,2126A ''accounts'':784A ''achieve'':23A,29A,1309A,1315A,2081A,2087A ''acquire'':1736A ''action'':323A,2360A ''activities'':912A,2027A,2216A ''actually'':1A,1287A,2059A ''added'':728A,1960A ''administration'':490A,536A ''advanced'':383A ''aggregate'':465A ''allow'':1067A ''allowing'':494A,1382A ''allows'':315A,805A,1026A,1076A,1132A,1459A,1634A,2174A,2352A ''amazon'':1198A,1203A ''appear'':2186A ''audiences'':1452A ''aurora'':1205A ''authentication'':1911A ''authorizes'':1857A ''available'':1163A,1490A ''azure'':1221A ''best'':360A,605A,2153A ''build'':1423A ''builder'':456A,461A,467A ''building'':471A ''buttons'':1619A ''caches'':1726A ''capabilities'':398A ''capacity'':1922A ''choose'':1765A ''clear'':1716A ''click'':1743A ''cloud'':34A,40A,690A,711A,751A,782A,1192A,1210A,1215A ''code'':394A,403A ''collaboration'':788A ''collections'':1147A,1474A ''collects'':2250A ''commands'':865A,1259A ''communications'':1359A ''comparing'':1087A ''compatible'':1188A ''compelling'':392A ''completion'':405A ''compromising'':825A,1046A ''conceptual'':1429A ''connect'':500A ''connecting'':630A ''connection'':174A,1574A,1586A,1747A,1865A ''connections'':48A,486A,717A,1071A,1082A,1580A,1599A ''control'':1741A,2180A ''corresponding'':1617A ''course'':1841A ''cpu'':2260A ''create'':1640A,2120A ''creativity'':112A ''dark'':740A,1972A ''data'':1089A,1140A,1413A,1438A,1467A ''database'':206A,329A,488A,534A,546A,921A,2036A,2225A,2366A ''databases'':529A,1194A ''day'':99A,151A ''days'':1834A ''ddl'':917A,2032A,2221A ''deleted'':1119A ''dependencies'':928A,2043A,2232A ''designed'':2096A ''destinations'':1939A ''detailed'':903A,2018A,2207A ''different'':80A,86A,761A,1877A ''direct'':1069A,1515A,1682A ''directly'':449A ''disciplined'':962A ''divided'':705A ''documents'':1339A ''don'':586A ''e'':1884A ''easily'':351A,2118A,2388A ''easy'':550A,2142A ''edit'':1644A ''editing'':396A,441A ''editor'':437A,1632A ''employs'':307A,2344A ''enables'':1417A ''escape'':594A ''establish'':168A,1570A ''establishing'':1078A ''event'':133A ''execute'':863A,1257A,1655A ''export'':1128A,1138A,1455A,1465A ''eyes'':276A,1801A,1983A ''failure'':127A ''family'':75A ''feature'':692A,1792A,2172A ''features'':385A ''feel'':17A,1303A,2075A ''files'':56A,880A,1274A ''fingers'':370A,615A,2163A ''flush'':1729A,1761A,1769A ''formats'':1165A,1492A ''formatting'':410A ''friends'':362A,607A,2155A ''fun'':120A ''general'':216A ''genius'':1914A ''google'':1213A ''graphical'':2098A ''greet'':95A,147A ''group'':62A ''gssapi'':1909A ''gui'':2104A ''happiness'':975A,978A ''having'':118A ''heart'':109A,161A ''high'':1425A ''http'':199A,618A,649A,1080A,1538A,1705A ''idea'':13A,1299A,2071A ''importance'':958A ''include'':1172A ''including'':1362A ''infinite'':1920A ''information'':64A,210A,895A,907A,1408A,1625A,2010A,2022A,2132A,2199A,2211A ''inserted'':1112A ''inspire'':296A,1821A,2003A ''installation'':257A,2325A ''installed'':229A,2297A ''intelligence'':116A ''interface'':2102A ''internal'':1724A ''internet'':1345A,1499A,1666A ''isp'':1506A,1673A ''isps'':1061A ''journeys'':1933A ''kinds'':542A ''launch'':2192A ''layer'':1322A ''lets'':2110A ''life'':582A ''linux'':1893A ''listen'':1388A ''lives'':1852A ''load'':2262A ''local'':178A,235A,2303A ''located'':757A ''locks'':1738A ''log'':846A,1240A ''logged'':682A ''logical'':1432A ''login'':208A ''love'':103A,155A ''machine'':243A,886A,1280A,2311A ''machines'':82A ''macos'':1890A ''make'':1863A ''making'':532A ''man'':356A,601A,2149A ''mariadb'':521A,1177A ''matter'':188A ''members'':77A ''membership'':931A,2046A,2235A ''menus'':345A,2382A ''method'':626A ''metrics'':2254A ''microsoft'':1219A ''mistake'':999A ''mode'':742A,1974A ''model'':54A ''modeler'':1415A ''models'':1440A ''mongodb'':527A ''monitor'':223A,2291A ''monitored'':267A,1168A,2335A ''multi'':484A ''multiple'':540A ''mysql'':504A,1174A ''navicat'':32A,68A,73A,221A,373A,418A,478A,688A,709A,722A,749A,780A,1411A,1561A,1855A,1954A,2108A,2194A,2289A ''navigation'':303A,697A,1753A,2340A ''network'':860A,1254A ''new'':172A,1009A ''number'':1100A ''object'':905A,926A,2020A,2041A,2209A,2230A ''objects'':335A,753A,923A,1602A,2038A,2227A,2372A ''oneself'':19A,1305A,2077A ''open'':278A,1803A,1985A ''option'':1771A ''oracle'':507A,1208A ''organize'':2123A ''pains'':1928A ''pam'':1905A ''pane'':305A,699A,897A,1627A,1755A,2012A,2201A,2342A ''password'':1368A ''passwords'':1402A ''person'':140A ''physical'':1436A ''plain'':1377A ''platforms'':88A,1879A ''pop'':341A,2378A ''port'':661A,664A ''postgresql'':510A ''powerful'':422A ''prepare'':1651A ''prevent'':797A,1018A ''preview'':941A,2056A,2245A ''private'':1337A ''privilege'':1784A ''process'':2252A ''program'':842A,1236A ''project'':774A,910A,2025A,2214A ''projects'':763A,1606A ''protocol'':646A,1331A,1530A,1697A ''provide'':1513A,1680A ''provider'':1503A,1670A ''provides'':36A,375A,420A ''quality'':1427A ''queries'':51A,432A,473A,1659A ''query'':435A,445A,454A,1155A,1482A ''quickly'':347A,2114A,2384A ''ram'':2265A ''range'':381A ''rds'':1200A ''records'':1104A ''reload'':1720A,1782A ''remember'':123A ''remote'':180A,815A,871A,1036A,1265A,1869A ''require'':251A,2319A ''resources'':2280A ''results'':1157A,1484A ''roles'':937A,2052A,2241A ''running'':1873A ''s'':358A,603A,819A,1040A,2151A ''secret'':1937A ''sections'':719A ''secure'':830A,1224A,1318A,1526A,1693A,2138A ''security'':827A,1048A ''select'':1595A,1613A,1759A ''selected'':1657A ''server'':182A,518A,636A,675A,817A,873A,1038A,1183A,1267A,1523A,1557A,1690A ''servers'':263A,1170A,1871A,2331A ''serves'':793A,1014A ''service'':42A,1501A,1668A ''session'':1354A,1396A ''set'':202A,576A ''share'':770A,2130A ''shell'':821A,832A,1042A,1226A ''shows'':899A,1096A,2014A,2203A ''smart'':401A ''snmp'':2286A ''sockets'':1320A ''software'':255A,2323A ''solution'':1544A,1711A ''spend'':1830A,1848A ''sql'':408A,516A,1181A,1630A,1646A ''sqlite'':513A ''ssh'':195A,791A,835A,1012A,1229A,1533A,1700A,2284A ''ssl'':192A,1324A ''start'':1549A ''startup'':2170A ''steal'':1400A ''structure'':311A,2348A ''successfully'':166A ''support'':730A,1962A ''supports'':1903A ''synchronizing'':46A ''t'':588A ''tab'':218A ''tables'':1144A,1471A,1731A ''tabs'':2184A ''taking'':1926A ''target'':1125A ''telnet'':1352A ''text'':447A,1379A,1648A ''tool'':492A ''tools'':424A ''transmitted'':1373A ''transmitting'':1335A ''traveler'':1947A ''tree'':309A,2346A ''tried'':1005A ''tunneling'':620A,1528A,1695A ''unaware'':1951A ''unix'':1897A ''updated'':1115A ''usage'':2267A ''use'':1788A ''used'':1055A ''user'':2100A ''username'':1364A ''users'':935A,2050A,2239A ''uses'':640A ''using'':1582A ''vacation'':565A ''variety'':1448A,2274A ''various'':1722A ''views'':1150A,1477A ''virtual'':60A,241A,2309A ''visually'':475A ''vulnerabilities'':801A,1022A ''watching'':283A,1808A,1990A ''way'':971A,984A,2144A ''web'':673A ''wide'':379A,738A,1446A,1970A ''window'':1094A,1588A ''windows'':1887A ''wizard'':1130A,1457A ''wondering'':557A ''working'':428A,1551A ''xc14bo5ca1'':2389C');
INSERT INTO "public"."post" VALUES (2, 'Mr.', 'E1kpMn9iAP', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/320858ac51504dbe83ee5ac50d4d5813.jpg', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. The On Startup feature allows you to control what tabs appear when you launch Navicat. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. If the plan doesn’t work, change the plan, but never the goal. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. The reason why a great man is great is that he resolves to be a great man. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. The On Startup feature allows you to control what tabs appear when you launch Navicat. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Genius is an infinite capacity for taking pains. Difficult circumstances serve as a textbook of life for people. The On Startup feature allows you to control what tabs appear when you launch Navicat. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. If the plan doesn’t work, change the plan, but never the goal. Remember that failure is an event, not a person. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. The first step is as good as half over. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. There is no way to happiness. Happiness is the way. You will succeed because most people are lazy. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. You will succeed because most people are lazy. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server.', '2023-02-27 14:29:41+08', '2010-03-30 03:31:18.905023+08', 8, 1, 't', 34, ''' '':2A,4A,6A,8A,10A,12A,15A,17A,20A,22A,24A,27A,31A,33A,35A,37A,39A,41A,43A,45A,47A,49A,51A,53A,55A,57A,60A,62A,64A,66A,68A,70A,72A,74A,76A,78A,81A,83A,85A,89A,91A,93A,95A,97A,99A,101A,103A,105A,107A,109A,111A,114A,116A,118A,120A,122A,124A,127A,129A,131A,133A,135A,137A,139A,141A,144A,146A,148A,150A,152A,154A,156A,159A,161A,163A,165A,167A,169A,171A,173A,175A,177A,179A,181A,183A,186A,188A,190A,192A,194A,196A,198A,200A,202A,204A,206A,208A,210A,212A,214A,216A,219A,221A,223A,225A,227A,229A,231A,233A,235A,238A,240A,242A,244A,246A,248A,250A,252A,254A,256A,258A,260A,262A,264A,266A,269A,271A,273A,275A,277A,279A,283A,285A,287A,289A,291A,293A,295A,297A,300A,302A,304A,306A,310A,312A,314A,316A,318A,321A,323A,325A,327A,330A,332A,334A,336A,339A,341A,343A,345A,347A,349A,351A,353A,356A,358A,361A,363A,366A,368A,370A,372A,374A,377A,379A,381A,383A,385A,387A,389A,392A,394A,397A,399A,401A,404A,408A,410A,412A,414A,416A,418A,420A,422A,424A,426A,428A,430A,432A,434A,437A,439A,441A,443A,445A,447A,449A,451A,453A,455A,458A,460A,462A,464A,468A,471A,473A,475A,478A,480A,482A,484A,487A,489A,491A,493A,495A,497A,499A,501A,504A,506A,509A,511A,513A,515A,517A,520A,522A,525A,527A,529A,533A,535A,538A,540A,542A,544A,546A,548A,550A,552A,555A,557A,559A ''80'':633A ''access'':292A,1356A ''accounts'':817A ''acquire'':23A,400A ''activities'':507A,1651A ''agentless'':662A ''aggregate'':1101A ''alerts'':925A ''alibaba'':1761A ''allows'':247A,888A,984A ''amazon'':352A,357A,854A,859A,1751A,1756A ''analysis'':935A ''appear'':259A,900A,996A ''aurora'':359A,861A ''authenticated'':1629A ''authentication'':1013A,1322A ''authorizes'':1268A ''azure'':375A,877A ''builder'':1092A,1097A,1103A ''building'':1107A ''caches'':13A,390A ''capacity'':946A ''change'':472A,1186A ''checked'':209A,1705A ''choose'':52A,429A ''circumstances'':957A ''clear'':3A,380A ''click'':30A,407A,1531A ''cloud'':155A,176A,346A,364A,369A,784A,815A,848A,866A,871A,1116A,1122A,1346A,1439A,1743A,1763A ''collaboration'':821A ''commands'':117A ''communications'':1021A ''compatible'':342A,844A ''connect'':1352A ''connecting'':597A ''connection'':34A,411A,761A,773A,1249A,1261A,1276A,1382A ''connections'':182A,767A,1130A,1255A ''control'':28A,253A,405A,894A,990A,1529A ''data'':1410A ''database'':222A,516A,1404A,1660A,1718A,1817A ''databases'':348A,850A,1360A,1745A ''ddl'':512A,1656A ''dependencies'':523A,1667A ''detailed'':498A,1642A ''developers'':1784A ''different'':794A,1162A,1168A,1288A ''difficult'':955A ''direct'':290A ''directly'':1085A ''displayed'':230A,1726A ''divided'':170A ''doesn'':465A,1179A ''don'':572A ''e'':1295A,1413A ''e1kpmn9iap'':1820C ''easy'':1799A ''editing'':1077A ''editor'':1073A,1526A,1545A,1566A ''effective'':692A ''encrypted'':1019A ''escape'':580A ''establish'':757A,1245A ''event'':1212A ''execute'':115A ''external'':1524A,1543A,1564A ''eyes'':1448A ''failure'':1206A ''family'':1157A ''feature'':79A,157A,245A,456A,886A,982A ''features'':682A,1766A ''file'':1556A ''files'':132A,1138A,1392A ''flush'':16A,48A,56A,393A,425A,433A ''forwarding'':1038A ''g'':1415A ''genius'':938A ''goal'':485A,1199A ''good'':1335A ''google'':367A,869A ''great'':707A,713A,729A ''group'':1144A,1399A ''gssapi'':1320A ''half'':1339A ''happiness'':1483A,1486A ''hijacking'':1604A ''historical'':933A ''hosts'':1027A ''http'':313A,585A,616A ''include'':326A,828A ''infinite'':944A ''information'':490A,502A,1146A,1634A,1646A ''insecure'':1049A ''inspire'':1468A ''internal'':11A,388A ''internet'':274A ''isp'':281A ''known'':1030A ''launch'':265A,906A,1002A ''lazy'':1509A,1587A ''learn'':1803A ''life'':568A,969A ''linux'':1304A ''located'':790A ''locks'':25A,402A ''log'':98A ''logged'':147A ''machine'':138A ''machines'':1164A ''macos'':1301A ''make'':686A,1274A ''malicious'':1611A ''man'':709A,731A ''manage'':1741A ''mariadb'':331A,833A ''means'':1369A ''members'':1159A ''membership'':526A,1670A ''method'':593A ''metrics'':929A ''microsoft'':373A,875A ''model'':1136A,1390A ''monitor'':649A,913A ''monitored'':322A,824A ''monitoring'':668A,690A ''mysql'':328A,830A ''navicat'':153A,174A,267A,647A,748A,782A,813A,908A,911A,1004A,1054A,1114A,1150A,1155A,1236A,1266A,1344A,1437A,1770A ''navigation'':40A,162A,201A,417A,1697A ''needs'':1794A ''network'':112A,1051A ''new'':1813A ''object'':500A,521A,1644A,1665A ''objects'':193A,224A,518A,786A,1662A,1689A,1720A ''open'':1450A,1514A,1539A ''option'':58A,205A,435A,1701A ''oracle'':362A,864A ''packed'':676A ''pains'':952A ''pam'':1316A ''pane'':42A,164A,203A,236A,419A,492A,1636A,1699A,1732A ''passwords'':1406A ''path'':1558A ''people'':973A,1505A,1583A ''person'':1219A ''plan'':463A,476A,1177A,1190A ''platforms'':1170A,1290A ''port'':628A,631A,1036A ''possible'':696A ''powerful'':680A,1058A ''preferences'':215A,1570A,1711A ''preview'':536A,1680A ''privilege'':71A,448A ''professional'':1782A ''program'':94A ''project'':505A,807A,1649A ''projects'':796A ''protocol'':305A,613A ''provide'':288A,1780A ''provider'':278A ''provides'':1009A,1056A,1118A ''queries'':1068A,1109A,1133A,1387A ''query'':1071A,1081A,1090A,1518A ''rds'':354A,856A,1758A ''reason'':701A ''redshift'':1753A ''reload'':7A,69A,384A,446A ''remember'':1202A ''remote'':123A,664A,1280A ''repository'':919A ''requires'':915A ''resolves'':721A ''roles'':532A,1676A ''running'':1284A ''safe'':655A ''schema'':197A,1693A ''sections'':184A ''secure'':82A,301A,1017A ''select'':46A,423A,1537A ''serve'':959A ''server'':125A,298A,337A,603A,642A,666A,744A,839A,1232A,1819A ''servers'':324A,826A,1282A ''service'':276A,1124A ''session'':1602A,1621A ''sessions'':1592A ''set'':562A,1552A ''settings'':1384A ''share'':803A ''shell'':84A ''shows'':494A,1638A ''simple'':658A ''solution'':319A ''sophisticated'':1774A ''specific'':1792A ''sql'':335A,837A ''ssh'':87A,308A,1034A ''start'':736A,1224A ''startup'':243A,884A,980A ''step'':1329A ''store'':923A,1378A ''stored'':1433A ''strong'':1011A ''succeed'':1499A,1577A ''supports'':1314A ''susceptible'':1598A ''synchronizing'':1128A ''t'':467A,574A,1181A ''tables'':18A,395A,1418A ''tabs'':257A,898A,994A ''takes'':1615A ''taking'':950A ''text'':1083A ''textbook'':965A ''tool'':670A ''tools'':1060A ''tunneling'':303A,587A,1041A ''unix'':1308A ''use'':75A,452A ''user'':1613A ''users'':530A,1674A,1807A ''uses'':607A ''using'':769A,1257A,1520A ''vacation'':551A ''various'':9A,386A ''views'':1421A ''virtual'':1142A,1397A ''visually'':1111A ''watching'':1455A ''way'':1479A,1492A ''web'':640A ''window'':217A,775A,1263A,1713A ''windows'':1298A ''wondering'':543A ''work'':469A,1183A ''working'':738A,1064A,1226A');
INSERT INTO "public"."post" VALUES (7, 'URP教务系统自动登录', 'URP教务系统自动登录脚本编写过程及心得体会', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/letter.jpg', '

这篇博客是我对 hack 进学校教务系统的一个过程总结，详细代码已经放在GitHub上，需要的自取

[URP教务系统自动登录脚本](https://github.com/wlonestar/HHU_URP_auto_login)

## 验证码

打开网站 [http://jwxs.hhu.edu.cn/](http://jwxs.hhu.edu.cn/) 直接重定向到了登录页面 [http://jwxs.hhu.edu.cn/login](http://jwxs.hhu.edu.cn/login) 

>个人觉得这个教务系统界面还是比较好看的，因为大一刚来的时候是旧版的教务，UI还是2000年的风格。

我们面临的第一个问题就是验证码.

> 全自动区分计算机和人类的公开图灵测试（英语：Completely Automated Public Turing test to tell Computers and Humans Apart，简称CAPTCHA），又称验证码，是一种区分用户是机器或人类的公共全自动程序。

### 获取验证码图片

打开浏览器的开发者工具，刷新页面，可以发现验证码的路径为 

`http://jwxs.hhu.edu.cn/img/captcha.jpg`

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_19-37-31.png)

我们先写一小段代码把这张图片下载下来

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

比如下面这张图片

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/captcha.jpg)

接下来就是进行文字识别了

### 识别验证码内容

这里我查阅资料发现需要使用 `tesseract` 这个OCR引擎，安装半天终于安装好了之后发现识别结果基本不太准，我又找到了一个名字很特殊的python库

[ddddocr](https://github.com/sml2h3/ddddocr#%E5%B8%A6%E5%B8%A6%E5%BC%9F%E5%BC%9Focr%E9%80%9A%E7%94%A8%E9%AA%8C%E8%AF%81%E7%A0%81%E8%AF%86%E5%88%ABsdk%E5%85%8D%E8%B4%B9%E5%BC%80%E6%BA%90%E7%89%88) - 带带弟弟OCR通用验证码识别SDK免费开源版

我抱着玩一玩的心态安装了，并且尝试着识别了几张图片，发现效果还行

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

就它了！

在我尝试了很多张图片后，我发现由于图片中的干扰线，识别成功率其实不是很高，于是我就继续查阅资料，试图图片进行降噪处理。

### 图片降噪处理

在经历了多次失败之后，我总结了一下原因：

1. 网上的解决方案并不一定适合所有种类的验证码，比如说有的验证码只是背景有噪点，或者有很多细线，而我们这个是一条和内容差不多的黑线，按照网上的一些方法降噪很可能连着内容本身也去掉了

2. 仔细观察验证码，可以发现都是画面主题是红色，加上黑粗线，那我们只需要将图片中的黑色或者接近黑色的像素块改成白色不就行了？

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_19-57-17.png)

又是一轮新的尝试，最终发现下面这样处理效果最好

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

图片处理前后差别还是很大的

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/242c.jpg)

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/captcha_p.png)

原理其实很简单，遍历所有像素点，如果该像素点的rgb分量都是0，就是黑色，改成白色，如果三个分量的值都在 0-50 或者 50-256 之间，也将这个像素改成白色。

这些终于是解决了验证码的问题，接下来才是正题：自动登录进教务

## 自动登录

如果我们什么都不输入，直接点击登录按钮时，我们会发现多了一个请求

`POST http://jwxs.hhu.edu.cn/j_spring_security_check`

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_20-08-04.png)

检查表单元素就可以发现是登录时提交给系统的信息，包括三个字段。

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_20-07-47.png)

> 这时我还没注意到没输密码时提交的密码其实不为空，这个点坑了我很久

是时候稍微整理一下代码了，我们来先写一个 `Request` 类，定义登录的方法

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
        if name == ''URP综合教务系统首页'':
            print(''login success'')
            print(''JSESSIONID:'', self.session.cookies.get(''JSESSIONID''))


if __name__ == "__main__":
    request = Request(USERNAME, PASSWORD)
    request.login()
```

我们来运行，奇怪，命令行并没有打印 `login success`

检查一下验证码识别结果？并没有问题

看一下HTML里的表单？都是对应上的

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_20-18-59.png)

学号对应 `j_username`，密码对应 `j_password`，验证码对应 `j_captcha`，不应该有问题啊

欸，不对，这个 `hex_md5` 是什么东西！！！

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_20-19-36.png)

于是我终于发现了不填密码提交表单中密码也是有内容的。

原来是在提交表单之前对密码字段进行了 md5 加密，寻找源文件发现了一个名为 [md5.js](http://jwxs.hhu.edu.cn/js/md5/md5.js) 的文件

我在想，要不我把这个 js 脚本改写成 python 脚本？写了几行后放弃了，虽然二者都是动态语言，但是很多地方还是有点差异的，于是直接搜索 `convert js to python`，发现了 [Js2Py](https://github.com/PiotrDabkowski/Js2Py) 这个python库，相当方便

```python
import js2py
# from md5 import *

if __name__ == "__main__":
    js2py.translate_file(''md5.js'', ''md5.py'')
    # data = md5.hex_md5(''12ibnsdkq1ed'')
    # print(data)
```

第二次运行时取消所有注释，就可以看到测试结果了。

这时给我们的代码加上这个加密函数即可

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
    if name == ''URP综合教务系统首页'':
        print(''login success'')
        print(''JSESSIONID:'', self.session.cookies.get(''JSESSIONID''))
```

这时可以顺利进入系统了

```
captcha: xxxx
login success
JSESSIONID: abcMTh7Thb9p4ef4DZ2my
```

## 爬取需要的数据

这不是线下上课了嘛，上完课想找个空教室自习成了个不是那么容易的事，除了自己找还可以上教务查询，但是每次登录教务还要输验证码，登录状态还会很快失效，就把这件事变成了简单但很重复的事情。如果我都能自动登录教务了，那空闲教室信息岂不是有手就能爬？说干就干！

首先定位到[空闲教室查询主页](http://jwxs.hhu.edu.cn/student/teachingResources/freeClassroom/index)

随便点击一个教学楼，可以发现浏览器向 `http://jwxs.hhu.edu.cn/student/teachingResources/freeClassroom/today` 发送了一个 POST 请求，请求头里的 `Content_type` 是 `application/x-www-form-urlencoded`，这个得划下来，等会儿要靠

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_20-44-09.png)

查看表单会发现，有两个信息，应该是教学楼编号和校区号

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_20-44-28.png)

我们往下看可以看到还多出来一个 `queryCodeTeaBuildingList` ，点击进去发现确实如此

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_20-48-12.png)

江宁校区的勤学楼的编号是 `2_11`

如果我们试图直接获取当前页面也就是 `http://jwxs.hhu.edu.cn/student/teachingResources/freeClassroom/today` 的内容会发生什么？

答案当然是得不到我们想要的结果，原因在于 [application/x-www-form-urlencoded](https://developer.mozilla.org/zh-CN/docs/Web/HTTP/Methods/POST)

> application/x-www-form-urlencoded: 数据被编码成以 ''&'' 分隔的键 - 值对，同时以 ''='' 分隔键和值。非字母或数字的字符会被 percent-encoding: 这也就是为什么这种类型不支持二进制数据 (应使用 multipart/form-data 代替).

查看网页源代码会发现，这里使用了动态渲染技术，简单说就是 [JSP](https://zh.wikipedia.org/wiki/JSP)

> JSP（全称Jakarta Server Pages，曾称为JavaServer Pages）是由Sun Microsystems公司主导创建的一种动态网页技术标准。JSP部署于网络服务器上，可以响应客户端发送的请求，并根据请求内容动态地生成HTML、XML或其他格式文档的Web网页，然后返回给请求者。JSP技术以Java语言作为脚本语言，为用户的HTTP请求提供服务，并能与服务器上的其它Java程序共同处理复杂的业务需求。

怎么说呢，现在基本不用这种技术了，现在可以说是前后端分离的时代，但是教务这种比较有年头的系统不可避免还在用这些技术，而且教务这种管理系统的复杂度是相当高的，想改动也很不容易。

那我们怎么办呢，其实还有办法，我们注意看自定义选项

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_20-59-06.png)

我们有很多选择来进行查询，而查询结果在下面的二位表格里，不妨直接点一下搜索

可以看到多出来的 [search](http://jwxs.hhu.edu.cn/student/teachingResources/freeClassroomQuery/search) 

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_21-01-14.png)

注意看请求头和效应头里的 `Content-Type`，服务器返回了JSON格式的数据，如果做过前后端分离的项目对这个是不是很熟悉？

我猜测现在的教务系统不全是 JSP，也有这种部分前后端分离的接口。

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_21-01-35.png)

对与前后端的数据应该很好解析，在贴代码之前我们先来分析一下表单元素

![](https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/Snipaste_2022-09-13_21-08-56.png)


- weeks                 - 周数
- jslxdm                - 教室类型
- codeCampusListNumber  - 校区编号
- teaNum                - 教学楼编号
- wSection              - 星期/节次
- pageNum               - 页数
- pageSize              - 每页数量

知道了每个字段的含义，再加上查询得到的教学楼编号等等，即可查询到某天某节某个教学楼的空闲教室情况，这里直接贴出代码。


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

基本想法完成了，但是，比较困扰我的一点是，查询到的数据该以什么样的方式存储起来，这一点可能还需要我好好想想，或许会写个接口来传输数据，然后写个App方便查询？还不太确定。

以上。







', '2013-02-28 20:47:12.905023+08', '2015-05-05 16:25:10.905023+08', 9, 2, 't', 59, '''
'':2A,4A,33A,35A,64A,66A,72A,74A,146A,148A,179A,181A,191A,193A,251A,253A,262A,264A,282A,284A,305A,307A,347A,349A,360A,362A,368A,373A,375A,395A,414A,425A,427A,441A,456A,466A,473A,478A,480A,486A,488A,517A,519A,527A,529A,538A,540A,582A,584A,717A,719A,743A,745A,751A,756A,761A,763A,783A,802A,813A,815A,829A,844A,854A,861A,863A,879A,897A,914A,928A,940A,945A,947A,952A,962A,967A,969A,974A,976A,1016A,1018A,1027A,1029A,1044A,1046A,1099A,1101A,1141A,1143A,1183A,1185A,1201A,1203A,1209A,1214A,1219A,1228A,1230A,1250A,1269A,1280A,1293A,1295A,1297A,1311A,1327A,1343A,1360A,1381A,1416A,1435A,1454A,1495A,1535A,1582A,1622A,1678A,1718A,1730A,1732A,1734A,1755A,1773A,1792A,1806A,1817A,1819A,1834A,1836A,1856A,1878A,1899A,1917A,1933A,1938A,1940A,1949A,1951A,1981A,1983A,2014A,2016A,2070A,2072A,2092A,2094A,2101A,2103A,2125A,2127A,2152A,2154A,2194A,2196A,2217A,2219A,2259A,2261A,2287A,2289A,2315A,2317A,2323A,2328A,2337A,2339A,2348A,2357A,2359A,2374A,2394A,2439A,2459A,2461A,2476A,2495A,2516A,2533A,2535A,2537A,2546A,2569A,2586A,2603A,2624A,2641A,2662A,2685A,2708A,2719A,2740A,2742A,2755A,2774A,2795A,2819A,2842A,2860A,2875A,2898A,2911A,2913A,2926A,2943A,2968A,2993A,3020A,3031A,3037A,3069A,3109A,3134A,3158A,3183A,3205A,3240A,3242A,3244A,3265A,3282A,3293A,3298A,3300A,3318A,3320A,3330A,3332A,3346A,3348A,3388A,3390A,3424A,3426A,3447A,3449A,3489A,3491A,3511A,3513A,3567A,3569A,3653A,3655A,3661A,3666A,3677A,3679A,3700A,3725A,3748A,3760A,3765A,3767A,3783A,3785A '''':1A,3A,32A,34A,63A,65A,71A,73A,145A,147A,178A,180A,190A,192A,250A,252A,261A,263A,281A,283A,304A,306A,346A,348A,359A,361A,367A,372A,374A,394A,413A,424A,426A,440A,455A,465A,472A,477A,479A,485A,487A,516A,518A,526A,528A,537A,539A,581A,583A,716A,718A,742A,744A,750A,755A,760A,762A,782A,801A,812A,814A,828A,843A,853A,860A,862A,878A,896A,913A,927A,939A,944A,946A,951A,961A,966A,968A,973A,975A,1015A,1017A,1026A,1028A,1043A,1045A,1098A,1100A,1140A,1142A,1182A,1184A,1200A,1202A,1208A,1213A,1218A,1227A,1229A,1249A,1268A,1279A,1292A,1294A,1296A,1310A,1326A,1342A,1359A,1380A,1415A,1434A,1453A,1494A,1534A,1581A,1621A,1677A,1717A,1729A,1731A,1733A,1754A,1772A,1791A,1805A,1816A,1818A,1833A,1835A,1855A,1877A,1898A,1916A,1932A,1937A,1939A,1948A,1950A,1980A,1982A,2013A,2015A,2069A,2071A,2091A,2093A,2100A,2102A,2124A,2126A,2151A,2153A,2193A,2195A,2216A,2218A,2258A,2260A,2286A,2288A,2314A,2316A,2322A,2327A,2336A,2338A,2347A,2356A,2358A,2373A,2393A,2438A,2458A,2460A,2475A,2494A,2515A,2532A,2534A,2536A,2545A,2568A,2585A,2602A,2623A,2640A,2661A,2684A,2707A,2718A,2739A,2741A,2754A,2773A,2794A,2818A,2841A,2859A,2874A,2897A,2910A,2912A,2925A,2942A,2967A,2992A,3019A,3030A,3036A,3068A,3108A,3133A,3157A,3182A,3204A,3239A,3241A,3243A,3264A,3281A,3292A,3297A,3299A,3317A,3319A,3329A,3331A,3345A,3347A,3387A,3389A,3423A,3425A,3446A,3448A,3488A,3490A,3510A,3512A,3566A,3568A,3652A,3654A,3660A,3665A,3676A,3678A,3699A,3724A,3747A,3759A,3764A,3766A,3782A,3784A '' '':10A,12A,69A,77A,106A,113A,144A,195A,209A,211A,213A,215A,217A,219A,221A,223A,225A,227A,257A,280A,370A,377A,379A,399A,401A,403A,405A,416A,418A,429A,431A,443A,445A,450A,533A,548A,552A,703A,705A,753A,758A,765A,767A,787A,789A,791A,793A,804A,806A,817A,819A,831A,833A,838A,865A,867A,881A,886A,891A,893A,898A,899A,900A,901A,905A,907A,916A,918A,936A,956A,959A,1022A,1048A,1103A,1211A,1216A,1221A,1223A,1225A,1232A,1234A,1254A,1256A,1258A,1260A,1271A,1273A,1282A,1284A,1299A,1306A,1312A,1313A,1314A,1315A,1317A,1319A,1328A,1329A,1330A,1331A,1334A,1336A,1338A,1344A,1345A,1346A,1347A,1349A,1351A,1353A,1361A,1362A,1363A,1364A,1365A,1366A,1367A,1368A,1370A,1372A,1374A,1382A,1383A,1384A,1385A,1386A,1387A,1388A,1389A,1390A,1391A,1392A,1393A,1396A,1399A,1401A,1403A,1411A,1417A,1418A,1419A,1420A,1421A,1422A,1423A,1424A,1425A,1426A,1427A,1428A,1430A,1432A,1436A,1437A,1438A,1439A,1440A,1441A,1442A,1443A,1444A,1445A,1446A,1447A,1449A,1451A,1455A,1456A,1457A,1458A,1459A,1460A,1461A,1462A,1463A,1464A,1465A,1466A,1468A,1470A,1473A,1475A,1477A,1479A,1482A,1484A,1486A,1488A,1491A,1496A,1497A,1498A,1499A,1500A,1501A,1502A,1503A,1504A,1505A,1506A,1507A,1508A,1509A,1510A,1511A,1519A,1523A,1527A,1530A,1536A,1537A,1538A,1539A,1540A,1541A,1542A,1543A,1544A,1545A,1546A,1547A,1549A,1551A,1553A,1558A,1560A,1562A,1564A,1569A,1571A,1573A,1575A,1583A,1584A,1585A,1586A,1587A,1588A,1589A,1590A,1591A,1592A,1593A,1594A,1595A,1596A,1597A,1598A,1606A,1610A,1614A,1617A,1623A,1624A ''01'':5082A,5187A ''04.'':2190A ''06.'':4980A ''07'':2253A ''08'':2188A,5253A ''09'':335A,1171A,2182A,2247A,3376A,3477A,4388A,4450A,4516A,4972A,5076A,5181A,5247A ''09.'':4396A ''1.'':1047A ''10'':6091A ''10.0'':2409A ''105.0.0.0'':2433A ''11'':4543A ''12'':3743A ''12.'':4524A ''13'':337A,1173A,2184A,2249A,3378A,3479A,4390A,4452A,4518A,4974A,5078A,5183A,5249A ''1305118058.'':318A,499A,1154A,1962A,1994A,2165A,2230A,3359A,3460A,4371A,4433A,4499A,4955A,5059A,5164A,5230A ''14'':6038A ''14.'':5084A ''17.'':1179A ''18'':3382A ''19'':339A,1175A,3483A ''2.'':1102A ''20'':2186A,2251A,3380A,3481A,4392A,4454A,4520A,4976A ''2000'':173A ''2022'':333A,1169A,2180A,2245A,3374A,3475A,4386A,4448A,4514A,4970A,5074A,5179A,5245A ''21'':5080A,5185A,5251A ''242'':1975A ''255'':1525A,1528A,1531A,1612A,1615A,1618A,1708A,1711A,1714A ''256'':1452A,2058A ''28.'':4458A ''31.'':343A ''35.'':5189A ''36.'':3485A ''37'':341A ''44'':4394A,4456A ''47.'':2255A ''48'':4522A ''5.0'':2402A ''50'':1433A,2052A,2056A ''537.36'':2420A,2455A ''56.'':5255A ''57'':1177A ''59'':4978A ''59.'':3384A ''80'':630A,689A ''81'':652A,658A ''85'':674A ''86'':664A ''88'':668A,701A ''89'':699A ''90'':695A ''94'':637A ''a0'':656A ''a6'':606A,612A ''a8'':639A ''aa'':643A ''abcmth7thb9p4ef4dz2my'':4146A ''absdk'':670A ''ad'':874A,1851A ''af'':650A,662A ''agent'':2678A,5548A ''ap'':321A,502A,1157A,1965A,1997A,2168A,2233A,3362A,3463A,4374A,4436A,4502A,4958A,5062A,5167A,5233A ''apart'':228A ''app'':6169A ''append'':5875A ''applewebkit'':2418A ''application'':4339A,4604A,4645A,5628A ''auto'':59A ''automated'':210A ''b'':1400A,1487A,1572A,1665A ''b4'':681A ''b8'':604A,610A ''b9'':683A ''ba'':693A ''bc'':616A,623A,687A ''beautifulsoup'':2335A,3122A,4007A ''bs4'':2331A ''bytes'':904A,925A,1889A,1914A ''c'':646A,1976A ''c65a'':960A ''captcha'':231A,300A,396A,409A,420A,436A,512A,784A,797A,808A,824A,932A,957A,1251A,1264A,1275A,1286A,1768A,1925A,2007A,2477A,2490A,2749A,2769A,2788A,2814A,2888A,3009A,3015A,3415A,3911A,3917A,4132A ''charset'':5639A ''check'':2149A,2513A ''chrome'':2431A ''class'':2538A ''classification'':921A,1910A ''classroom'':5485A,6112A ''classroomname'':5856A ''classrooms'':5746A ''close'':469A,857A,1813A,2871A ''cn'':89A,103A,125A,140A,296A,391A,779A,1246A,2141A,2371A,2390A,3553A,4272A,4307A,4570A,4627A,5034A ''code'':2890A ''codecampuslistnumber'':5316A,6017A ''com'':51A,327A,508A,595A,1163A,1971A,2003A,2174A,2239A,3368A,3469A,3639A,4380A,4442A,4508A,4964A,5068A,5173A,5239A ''completely'':208A ''computers'':222A ''content'':463A,851A,1803A,2857A,4331A,5101A,5621A ''convert'':3617A ''cookies'':2730A,2738A,3100A,3106A,3230A,3989A,3995A,4099A,5694A,5700A ''cos'':319A,500A,1155A,1963A,1995A,2166A,2231A,3360A,3461A,4372A,4434A,4500A,4956A,5060A,5165A,5231A ''d'':677A ''data'':1302A,1826A,2937A,3059A,3732A,3757A,3844A,3952A,4717A,5682A,5712A,5828A,5850A ''ddddocr'':586A,599A,754A,868A,870A,1212A,1845A,1847A ''debug'':5741A,5891A ''def'':1298A,2551A,2747A,2918A,3829A,5479A ''developer'':4619A ''docs'':4629A ''dst'':1281A,1307A,1727A,1831A,1865A,2783A,2895A ''e5'':602A,608A,614A,621A,666A,672A,685A ''e6'':691A ''e7'':635A,654A,697A ''e8'':648A,660A,679A ''e9'':628A,641A ''edu'':87A,101A,123A,138A,294A,389A,777A,1244A,2139A,2369A,2388A,3551A,4270A,4305A,4568A,5032A ''encoding'':4695A ''f'':619A,894A,908A,1875A,1893A ''false'':876A,1853A ''file'':442A,457A,467A,830A,845A,855A,1778A,1797A,1811A,2828A,2851A,2869A,3709A ''focr'':626A ''form'':4345A,4610A,4651A,4715A,5634A ''free'':5483A,5744A,6110A ''freeclassroom'':4278A,4313A,4576A ''freeclassroomquery'':5040A ''g'':1397A,1478A,1561A,1651A ''gecko'':2428A ''getpixel'':1406A ''github'':26A,49A,593A,3637A ''h'':1335A,1377A ''hack'':11A ''headers'':2635A,3062A,3066A,3093A,3097A,3955A,3959A,3982A,3986A,5505A,5689A,5691A ''hex'':3435A,3738A,3889A ''hhu'':55A,85A,99A,121A,136A,292A,387A,775A,1242A,2137A,2367A,2386A,3549A,4268A,4303A,4566A,5030A ''hongkong'':323A,504A,1159A,1967A,1999A,2170A,2235A,3364A,3465A,4376A,4438A,4504A,4960A,5064A,5169A,5235A ''host'':2360A,2655A,2659A,5525A,5529A ''html'':3335A,4817A ''http'':79A,93A,115A,130A,286A,381A,769A,1236A,2131A,2380A,3543A,4262A,4297A,4560A,4633A,4844A,5024A ''https'':45A,312A,493A,589A,1148A,1956A,1988A,2159A,2224A,3353A,3454A,3633A,4365A,4427A,4493A,4615A,4747A,4949A,5053A,5158A,5224A ''humans'':226A ''ibnsdkq1ed'':3744A ''image'':1226A,1320A ''img'':298A,329A,407A,510A,795A,902A,923A,1165A,1262A,1316A,1339A,1404A,1512A,1599A,1695A,1723A,1887A,1912A,1973A,2005A,2176A,2241A,2488A,3370A,3471A,4382A,4444A,4510A,4966A,5070A,5175A,5241A ''import'':369A,752A,757A,1210A,1215A,1224A,2324A,2333A,3662A,3673A,3810A ''index'':2517A,2528A,3088A,3977A,4280A ''init'':2555A ''j'':2143A,2507A,2957A,2982A,3007A,3395A,3404A,3413A,3860A,3881A,3909A ''jakarta'':4770A ''java'':4836A,4856A ''javaserver'':4778A ''jpg'':302A,411A,422A,514A,799A,810A,1266A,1277A,1978A,2492A,2771A ''js'':3540A,3555A,3561A,3580A,3619A,3714A ''js2py'':3630A,3643A,3664A,3705A ''jsessionid'':3221A,3235A,4090A,4104A,4143A ''jslxdm'':5291A,6000A ''json'':5108A,5718A ''jsp'':2530A,4744A,4759A,4767A,4796A,4833A,5138A ''jwxs'':83A,97A,119A,134A,290A,385A,773A,1240A,2135A,2365A,2384A,3547A,4266A,4301A,4564A,5028A ''khtml'':2423A ''len'':5826A ''logging'':5739A,5889A ''login'':61A,127A,142A,2462A,2473A,2703A,2920A,3199A,3289A,3313A,3831A,4072A,4138A,5958A ''low'':1429A,1556A,1567A,1578A,1643A,1657A,1671A ''lxml'':3130A,4015A ''main'':1749A,3259A,3694A,5928A ''md5'':3437A,3526A,3538A,3557A,3559A,3671A,3712A,3719A,3736A,3740A,3808A,3887A,3891A ''methods'':4635A ''microsystems'':4786A ''mozilla'':2400A,4621A ''multipart'':4713A ''mypic'':316A,497A,1152A,1960A,1992A,2163A,2228A,3357A,3458A,4369A,4431A,4497A,4953A,5057A,5162A,5228A ''myqcloud'':325A,506A,1161A,1969A,2001A,2172A,2237A,3366A,3467A,4378A,4440A,4506A,4962A,5066A,5171A,5237A ''nt'':2407A ''object'':2542A ''ocr'':554A,708A,864A,919A,1841A,1908A ''open'':446A,834A,882A,1322A,1782A,1863A,2832A ''org'':4623A,4755A ''p'':1288A,2009A,2790A ''pagenum'':5376A,6070A ''pages'':4774A,4780A ''pagesize'':5399A,6087A ''param'':5492A,5686A,5759A,5780A,5967A,6114A ''password'':2349A,2565A,2597A,2601A,2984A,2990A,3279A,3406A,3883A,3895A,5948A ''percent'':4693A ''pil'':1222A ''piotrdabkowski'':3641A ''png'':344A,1180A,1290A,2011A,2191A,2256A,2792A,3385A,3486A,4397A,4459A,4525A,4981A,5085A,5190A,5256A ''post'':2129A,2496A,2935A,3050A,3052A,3057A,3842A,3943A,3945A,3950A,4322A,4637A,5675A ''prefix'':376A,402A,764A,790A,1231A,1257A,2375A,2468A,2483A,2502A,2523A ''print'':929A,1922A,3196A,3218A,3755A,4069A,4087A ''process'':1300A,1824A ''public'':212A ''putpixel'':1514A,1601A,1697A ''py'':3721A ''python'':366A,579A,749A,1207A,2321A,3586A,3623A,3647A,3659A,3803A,5464A ''query'':5490A,5573A,5677A,5684A,5757A,5778A ''querycodeteabuildinglist'':4476A ''r'':1394A,1469A,1550A,1637A ''range'':1354A,1375A,1554A,1565A,1576A,1641A,1655A,1669A,5824A ''rb'':888A,1869A ''read'':910A,1895A ''records'':5726A ''refer'':5575A ''referer'':2699A,5569A ''request'':2305A,2540A,3270A,3274A,3287A,5939A,5943A,5956A,6106A ''requested'':5596A ''requests'':371A,432A,759A,820A,1217A,1764A,2326A,2618A ''res'':915A,937A,1904A,1930A,2884A,2909A ''response'':428A,461A,816A,849A,1760A,1801A,2804A,2855A,3078A,3124A,3967A,4009A,5667A,5716A ''return'':2907A,5905A ''rgb'':2030A ''safari'':2453A ''sdk'':712A ''search'':5021A,5042A,5481A,6108A ''section'':5774A ''security'':2147A,2511A ''self'':2559A,2578A,2595A,2612A,2633A,2728A,2734A,2751A,2808A,2922A,2963A,2988A,3013A,3046A,3064A,3082A,3095A,3102A,3226A,3833A,3866A,3893A,3915A,3939A,3957A,3971A,3984A,3991A,4095A,5487A,5671A,5696A ''server'':4772A ''session'':2614A,2620A,2736A,2810A,3048A,3084A,3104A,3228A,3941A,3973A,3993A,4097A,5673A,5698A ''sets'':5802A,5873A,5893A,5907A ''size'':1341A ''sml2h3'':597A ''snipaste'':331A,1167A,2178A,2243A,3372A,3473A,4384A,4446A,4512A,4968A,5072A,5177A,5243A ''soup'':3118A,3147A,4003A,4028A ''spring'':2145A,2509A ''src'':415A,448A,803A,836A,884A,1270A,1304A,1324A,1784A,1828A,2764A,2834A,2892A ''string'':3156A,4037A ''student'':4274A,4309A,4572A,5036A ''success'':3201A,3315A,4074A,4140A ''sun'':4784A ''teachingresources'':4276A,4311A,4574A,5038A ''teanum'':5327A,6034A ''tell'':220A ''tesseract'':550A ''test'':216A ''text'':3126A,4011A ''title'':3152A,4033A ''today'':4315A,4578A ''translate'':3707A ''turing'':214A ''type'':4333A,5103A,5623A ''ui'':171A ''url'':398A,438A,786A,826A,1253A,1770A,2464A,2479A,2498A,2519A,2705A,2816A,3054A,3090A,3947A,3979A,5577A,5679A ''urlencoded'':4347A,4612A,4653A,5636A ''urp'':37A,57A,3175A,4052A,6177B,6182C ''user'':2676A,5546A ''useragent'':2395A,2682A,5552A ''username'':2340A,2562A,2580A,2584A,2959A,2965A,3276A,3397A,3862A,3868A,5945A ''utf'':5641A ''val'':5846A,5877A ''w'':1332A,1356A ''wb'':452A,840A,1788A,2838A ''web'':4631A,4825A ''week'':5753A ''weeks'':5266A,5762A,5983A ''wiki'':4757A ''wikipedia'':4753A ''win64'':2412A ''windows'':2405A ''wlonestar'':53A ''write'':459A,847A,1799A,2853A ''wsection'':5352A,5783A,6051A ''www'':4343A,4608A,4649A,5632A ''x'':1350A,1409A,1517A,1604A,1700A,4341A,4606A,4647A,5594A,5630A ''x64'':2415A ''xml'':4819A ''xmlhttprequest'':5603A ''xxxx'':4135A ''xxxxxxxxxx'':2345A,2354A ''y'':1371A,1412A,1520A,1607A,1703A ''zh'':4625A,4751A ''一下'':1040A,2294A,3334A,5008A,5213A ''一个'':18A,574A,2122A,2302A,3534A,4288A,4320A,4473A ''一小'':352A ''一条'':1077A ''一点'':6136A,6152A ''一种'':238A,4791A ''一轮'':1188A ''三个'':2043A,2213A ''上课'':4170A ''下来'':358A,4352A ''下面'':482A,1195A,4999A ''不为'':2277A ''不全是'':5136A ''不可避免'':4898A ''不太准'':568A ''不用'':4875A ''业务'':4862A ''东西'':3442A ''两个'':4409A ''个人'':150A ''中'':990A,1126A,3502A ''主导'':4788A ''主页'':4259A ''主题'':1112A ''久'':2285A ''之前'':3519A,5209A ''之后'':563A,1035A ''之间'':2060A ''事'':4189A,4217A ''事情'':4225A ''二位'':5001A ''二者'':3598A ''二进制'':4706A ''人类'':200A,244A ''仔细观察'':1104A ''代替'':4719A ''代码'':23A,354A,2295A,3790A,5208A,5453A ''会'':2118A,4405A,4583A,4690A,4729A,6161A ''传输数据'':6165A ''使用'':547A,4711A,4733A ''信息'':2210A,4239A,4410A ''值'':2046A,4671A ''做过'':5114A ''像素'':1133A,2065A ''像素点'':2024A,2028A ''元素'':2199A,5215A ''先'':2300A ''先写'':351A ''先来'':5211A ''免费'':713A ''全称'':4769A ''全自动'':196A,247A ''公共'':246A ''公司'':4787A ''公开'':202A ''共同'':4858A ''其实'':997A,2018A,2276A,4932A ''内容'':536A,1079A,1093A,3507A,4582A,4813A ''写'':2301A,3590A ''写个'':6162A,6168A ''几张'':736A ''几行'':3592A ''函数'':3794A ''分析'':5212A ''分离'':4886A,5117A,5146A ''分量'':2031A,2044A ''分隔'':4665A,4681A ''创建'':4789A ''刷新'':271A ''办法'':4934A ''加上'':1116A,3791A,5430A ''加密'':3528A,3793A ''动态'':3601A,4735A,4792A,4814A ''勤学'':4534A ''包括'':2212A ''区分'':197A,239A ''半天'':558A ''博客'':6A ''即可'':3795A,5438A ''原因'':1041A,4600A ''原来'':3514A ''原理'':2017A ''去掉'':1096A ''又称'':234A ''发现'':275A,545A,564A,739A,987A,1108A,1194A,2119A,2202A,3495A,3532A,3626A,4292A,4406A,4482A,4730A ''发生'':4584A ''发送'':4318A,4806A ''取消'':3771A ''变成'':4218A ''可能'':1091A,6153A ''号'':4418A ''名为'':3535A ''名字'':575A ''含义'':5427A ''周数'':5286A ''命令行'':3307A ''响应'':4804A ''噪点'':1066A ''困扰'':6133A ''图灵'':203A ''图片'':260A,484A,737A,983A,989A,1010A,1023A,1125A,1941A ''图片下载'':357A ''地方'':3606A ''块'':1134A ''基本'':567A,4874A,6125A ''填'':3498A ''处理'':1013A,1025A,1197A,1942A,4859A ''复杂'':4860A ''复杂度'':4910A ''多次'':1033A ''大一刚'':162A ''太'':6175A ''失效'':4212A ''失败'':1034A ''头'':5094A ''头里'':4327A,5097A ''奇怪'':3305A ''好好'':6157A ''好看'':158A ''字段'':2214A,3522A,5425A ''字母'':4685A ''字符'':4689A ''存储'':6148A ''学号'':3391A ''学校'':14A ''它了'':971A ''安装'':557A,560A,728A ''完成'':6127A ''完课'':4175A ''定义'':2310A ''定位'':4253A ''客户端'':4805A ''容易'':4187A,4921A ''密码'':2271A,2275A,3400A,3499A,3503A,3521A ''对应'':3342A,3392A,3401A,3410A ''寻找'':3530A ''尝试'':732A,979A,1191A ''就行了'':1138A ''岂'':4240A ''工具'':269A ''差不多'':1080A ''差别'':1944A ''差异'':3609A ''已经'':24A ''带带'':706A ''干扰'':992A ''年'':174A ''年头'':4895A ''并不一定'':1052A ''库'':580A,3648A ''应'':4710A ''应该'':3419A,4412A,5201A ''开发者'':268A ''开源'':714A ''引擎'':555A ''弟弟'':707A ''张'':982A ''当前'':4554A ''往下'':4466A ''很多'':981A,1070A,3605A,4989A ''很大'':1946A ''很快'':4211A ''得不到'':4594A ''得划'':4351A ''得到'':5432A ''心得体会'':6191C ''心态'':727A ''总结'':20A,1038A ''情况'':5448A ''想'':3572A,4176A,4916A ''想想'':6158A ''想法'':6126A ''想要'':4596A ''成'':3584A,4182A ''成以'':4659A ''成功率'':996A ''或许'':6160A ''打印'':3310A ''打开'':75A,265A ''找'':4177A,4193A ''找到'':572A ''技术'':4737A,4834A,4877A,4903A ''技术标准'':4794A ''抱'':721A ''按钮'':2114A ''接下来'':520A,2082A ''接口'':5148A,6163A ''接近'':1130A ''提交'':2206A,2273A,3500A,3517A ''提供'':4846A ''搜索'':3614A,5009A ''支持'':4705A ''改写'':3583A ''改动'':4917A ''改成'':1135A,2039A,2066A ''放在'':25A ''放弃'':3594A ''效应'':5096A ''效果'':740A,1198A ''教务'':15A,38A,153A,169A,2090A,3177A,4054A,4197A,4203A,4233A,4891A,4906A,5134A,6178B,6183C ''教学楼'':4289A,4414A,5346A,5434A,5444A ''教室'':4180A,4238A,4257A,5310A,5447A ''数字'':4687A ''数据'':4162A,4656A,4707A,5111A,5200A,6142A ''数量'':5417A ''整理'':2293A ''文件'':3565A ''文字'':523A ''文档'':4823A ''新'':1189A ''方便'':3651A,6170A ''方式'':6147A ''方法'':1088A,2313A ''旧版'':167A ''时'':2115A,2205A,2272A,3770A ''时代'':4888A ''星期'':5369A ''是不是'':5122A ''最好'':1199A ''最终'':1193A ''有手'':4242A ''有点'':3608A ''服务'':4847A ''服务器'':4800A,4852A ''服务器返回'':5106A ''机器'':242A ''某天'':5441A ''某节'':5442A ''查看'':4403A,4726A ''查询'':4198A,4258A,4993A,4996A,5431A,5439A,6139A,6171A ''查阅'':543A,1006A ''校区'':4417A,4532A,5321A ''格式'':4822A,5109A ''检查'':2197A ''检查一下'':3321A ''楼'':4535A ''欸'':3427A ''正题'':2085A ''段'':353A ''每个'':5424A ''每次'':4201A ''每页'':5416A ''比如说'':1059A ''比较'':157A,4893A,6132A ''江宁'':4531A ''没'':2267A ''没有'':3309A,3327A ''没输'':2270A ''注意'':2268A,4937A,5091A ''注释'':3773A ''测试'':204A,3778A ''浏览器'':266A,4293A ''渲染'':4736A ''源代码'':4728A ''源文件'':3531A ''点'':5007A ''点击'':2112A,4287A,4480A ''点坑'':2281A ''熟悉'':5124A ''爬取'':4159A ''版'':715A ''特殊'':577A ''状态'':4209A ''猜测'':5131A ''玩'':723A,725A ''现在'':4873A,4880A,5132A ''生成'':4816A ''用户'':240A,4842A ''画面'':1111A ''界面'':155A ''登录'':41A,111A,2088A,2099A,2113A,2204A,2311A,4202A,4208A,4232A,6181B,6186C ''白色'':1136A,2040A,2067A ''直接'':107A,2111A,3613A,4552A,5006A,5451A ''相当'':3650A,4912A ''看到'':3777A,4469A,5015A ''知道'':5422A ''确定'':6176A ''确实'':4483A ''种类'':1055A ''称为'':4777A ''程序'':248A,4857A ''稍微'':2292A ''空'':2278A,4179A ''空闲'':4237A,4256A,5446A ''端'':4885A,5116A,5145A ''端的'':5199A ''第一个'':185A ''第二次'':3768A ''等会儿'':4354A ''答案'':4591A ''简单'':2020A,4220A,4739A ''简称'':230A ''管理系统'':4908A ''类'':2308A ''类型'':4703A,5311A ''粗线'':1118A ''系统'':16A,39A,154A,2208A,3178A,4055A,4121A,4897A,5135A,6179B,6184C ''红色'':1114A ''线'':993A ''线下'':4169A ''细线'':1071A ''终于'':559A,2074A,3494A ''经历'':1031A ''继续'':1005A ''综合'':3176A,4053A ''编写'':6188C ''编号'':4415A,4537A,5322A,5347A,5435A ''编码'':4658A ''网上'':1049A,1085A ''网站'':76A ''网络'':4799A ''网页'':4727A,4793A,4826A ''背景'':1064A ''能爬'':4244A ''脚本'':42A,3582A,3588A,6187C ''脚本语言'':4839A ''自习'':4181A ''自动'':40A,2087A,2098A,4231A,6180B,6185C ''自取'':31A ''自定义'':4939A ''节次'':5371A ''英语'':206A ''获取'':258A,4553A ''表单'':2198A,3338A,3501A,3518A,4404A,5214A ''表格'':5002A ''觉得'':151A ''解决'':2076A ''解决方案'':1051A ''解析'':5204A ''计算机'':198A ''识别'':524A,534A,565A,711A,734A,995A,3323A ''试图'':1009A,4551A ''详细'':22A ''语言'':3602A,4837A ''说'':4740A,4870A,4882A ''说干就干'':4246A ''请求'':2123A,4324A,4326A,4808A,4812A,4845A,5093A ''请求者'':4831A ''贴'':5207A ''贴出'':5452A ''资料'':544A,1007A ''起来'':6149A ''路径'':278A ''输'':4205A ''输入'':2109A ''过程'':19A,6189C ''运行'':3303A,3769A ''返回'':4829A ''还会'':4210A ''还行'':741A ''这件'':4216A ''这张'':356A,483A ''这种'':4702A,4876A,4892A,4907A,5142A ''这篇'':5A ''进'':13A,2089A ''进入'':4120A ''进去'':4481A ''进行'':522A,1011A,3523A,4992A ''连着'':1092A ''适合'':1053A ''选择'':4990A ''选项'':4940A ''通用'':709A ''遍历'':2022A ''部分'':5143A ''部署'':4797A ''里'':3336A,5003A ''重复'':4223A ''重定向'':108A ''键'':4667A ''键和值'':4682A ''问题'':186A,2080A,3328A,3421A ''降噪'':1012A,1024A,1089A ''随便'':4286A ''需求'':4863A ''需要'':29A,546A,1123A,4160A,6155A ''非'':4684A ''面临'':183A ''页数'':5394A ''页面'':112A,272A,4555A ''项目'':5119A ''顺利'':4119A ''风格'':176A ''首页'':3179A,4056A ''验证码'':70A,188A,235A,259A,276A,535A,710A,1057A,1062A,1105A,2078A,3322A,3409A,4206A ''高'':1000A,4913A ''黑'':1117A ''黑线'':1082A ''黑色'':1128A,1131A,2037A');
INSERT INTO "public"."post" VALUES (14, 'Prof.', 'ifksiMZR6J', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/320858ac51504dbe83ee5ac50d4d5813.jpg', 'I will greet this day with love in my heart. All journeys have secret destinations of which the traveler is unaware. Sometimes you win, sometimes you learn. Flexible settings enable you to set up a custom key for comparison and synchronization. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. A man’s best friends are his ten fingers. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Anyone who has ever made anything of importance was disciplined. A query is used to extract data from the database in a readable format according to the user''s request. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. A man is not old until regrets take the place of dreams. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. The reason why a great man is great is that he resolves to be a great man. Success consists of going from failure to failure without loss of enthusiasm. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Remember that failure is an event, not a person. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. I will greet this day with love in my heart. Actually it is just in an idea when feel oneself can achieve and cannot achieve. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Remember that failure is an event, not a person. What you get by achieving your goals is not as important as what you become by achieving your goals. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Sometimes you win, sometimes you learn. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. Remember that failure is an event, not a person. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. How we spend our days is, of course, how we spend our lives.', '2015-08-27 19:35:43.905023+08', '2003-10-20 20:28:26.905023+08', 1, 4, 't', 1, ''' '':2A,4A,6A,8A,10A,12A,14A,16A,18A,21A,23A,25A,27A,29A,31A,33A,35A,37A,39A,41A,44A,46A,48A,51A,53A,55A,58A,60A,62A,64A,66A,68A,70A,72A,74A,76A,78A,80A,82A,84A,87A,89A,91A,93A,95A,97A,99A,101A,105A,107A,109A,111A,113A,115A,117A,119A,123A,126A,128A,130A,132A,134A,137A,139A,143A,145A,147A,149A,151A,153A,156A,158A,160A,162A,164A,166A,168A,170A,172A,174A,176A,178A,180A,182A,184A,186A,193A,195A,197A,199A,201A,204A,207A,209A,211A,213A,215A,218A,220A,222A,224A,226A,228A,230A,232A,235A,237A,239A,241A,243A,245A,247A,249A,251A,255A,257A,259A,261A,264A,266A,268A,270A,272A,274A,276A,278A,280A,282A,284A,286A,288A,290A,292A,295A,297A,299A,301A,303A,305A,307A,309A,311A,313A,316A,318A,320A,322A,324A,326A,328A,330A,332A,334A,336A,338A,340A,342A,344A,346A,348A,350A,354A,357A,359A,361A,363A,365A,367A,369A,371A,375A,377A,379A,381A,383A,385A,387A,389A,393A,396A,398A,400A,402A,404A,407A,409A,411A,413A,416A,418A,420A,422A,425A,427A,429A,431A,433A,435A,437A,439A,442A,444A,447A,449A,452A,454A,456A,458A,460A,463A,465A,467A,469A,471A,473A,475A,477A,479A,481A,483A,485A,488A,490A,492A,494A,496A,498A,500A,502A,504A,506A,508A,510A,512A,514A,516A,518A,525A,527A,529A,531A,533A,536A,539A,541A,543A,545A,547A,550A,552A,554A,556A,558A,560A,562A ''80'':205A,537A ''ability'':1934A ''access'':563A,1371A,1570A,1649A ''accounts'':1169A ''achieve'':287A,293A,892A,898A ''achieving'':1204A,1228A ''action'':1013A ''actually'':265A,870A ''administration'':1247A,1293A ''allow'':767A,1516A ''allowing'':1251A ''allows'':776A,1005A,1525A,1609A,1796A ''amazon'':438A,443A,1123A,1765A,1914A ''audiences'':846A ''aurora'':445A ''authenticated'':688A ''authentication'':907A ''available'':1827A ''azure'':461A ''best'':144A ''build'':118A,388A,817A ''checked'':1854A ''cloud'':432A,450A,455A,553A,646A,1136A,1167A,1361A,1454A,1639A,1732A ''collaboration'':1173A ''collections'':1811A ''communications'':915A ''comparing'':950A,1459A ''comparison'':81A ''compatible'':428A ''conceptual'':124A,394A,823A ''connect'':559A,1257A,1367A,1645A ''connecting'':169A,501A ''connection'':589A,1397A,1675A ''connections'':771A,782A,1243A,1520A,1531A ''consists'':728A ''contains'':1972A ''cost'':102A,372A ''course'':1996A ''create'':1564A,1615A ''custom'':75A ''data'':90A,133A,329A,360A,403A,617A,807A,832A,952A,1425A,1461A,1703A,1804A,1938A ''database'':106A,335A,376A,611A,1019A,1097A,1245A,1291A,1303A,1419A,1697A,1739A,1867A,1888A ''databases'':434A,567A,1286A,1375A,1653A,1944A ''date'':1962A ''day'':9A,857A ''days'':1989A ''deleted'':982A,1491A ''design'':108A,378A ''designed'':1540A ''destinations'':30A ''different'':1146A,1942A ''direct'':769A,1518A ''disciplined'':314A ''displayed'':1875A ''don'':252A ''dreams'':486A ''e'':620A,1428A,1706A ''easily'':1041A,1562A ''easy'':1307A,1586A ''edit'':1619A ''editor'':1607A ''effective'':104A,374A ''employs'':997A ''enable'':63A ''enables'':811A ''encrypted'':913A ''enthusiasm'':748A ''escape'':260A ''establishing'':778A,1527A ''event'':795A,1186A,1782A ''execute'':1630A ''existing'':1105A,1747A,1896A ''export'':1792A,1802A ''extract'':327A ''failure'':736A,740A,789A,1180A,1776A ''feel'':281A,886A ''files'':599A,1407A,1685A ''fingers'':154A ''flexible'':59A ''format'':343A ''formats'':1829A ''forwarding'':932A ''friends'':146A ''g'':622A,1430A,1708A ''goals'':1208A,1232A ''going'':732A ''google'':453A ''graphical'':1542A ''great'':699A,705A,721A ''greet'':5A,853A ''group'':606A,1414A,1692A ''gui'':1548A ''heart'':19A,867A ''helps'':114A,384A ''high'':120A,390A,819A ''hijacking'':663A ''hosts'':921A ''http'':157A,188A,489A,520A,780A,1529A ''idea'':277A,882A ''ifksimzr6j'':2009C ''importance'':310A ''important'':1216A ''include'':412A ''information'':1576A,1978A ''insecure'':943A ''inserted'':975A,1484A ''installation'':1080A,1346A ''installed'':1052A,1318A ''instance'':1127A,1769A,1918A ''interface'':1546A ''isps'':761A,1510A ''journeys'':24A ''kept'':1956A ''key'':77A ''kinds'':1299A ''known'':924A ''learn'':56A,1602A ''lets'':1554A ''life'':248A ''lives'':2007A ''local'':1058A,1324A ''located'':1142A ''logical'':127A,397A,826A ''loss'':744A ''love'':13A,861A ''machine'':1066A,1332A ''making'':1289A ''malicious'':670A ''man'':140A,466A,701A,723A ''mariadb'':417A,1110A,1278A,1752A,1901A ''means'':576A,1384A,1662A ''menus'':1035A ''method'':165A,497A ''microsoft'':459A ''model'':597A,1405A,1683A ''modeler'':92A,362A,809A ''models'':135A,405A,834A ''mongodb'':1284A ''monitor'':1046A,1312A ''monitored'':408A,1090A,1356A ''multi'':1241A ''multiple'':1297A ''mysql'':414A,1107A,1261A,1749A,1898A ''navicat'':88A,358A,551A,644A,805A,1044A,1134A,1165A,1235A,1310A,1359A,1452A,1552A,1637A,1730A,1928A ''navigation'':993A,1846A ''network'':945A ''number'':963A,1472A ''objects'':1025A,1138A,1838A,1869A ''old'':472A ''oneself'':283A,888A ''option'':1850A ''oracle'':448A,1264A ''organize'':1567A ''pane'':995A,1848A,1881A ''passwords'':613A,1421A,1699A ''person'':802A,1193A,1789A ''physical'':131A,401A,830A ''place'':482A ''pop'':1031A ''port'':200A,203A,532A,535A,930A ''postgresql'':1113A,1267A,1755A,1904A ''powerful'':98A,368A ''preferences'':1860A ''prepare'':1626A ''prof'':2008B ''project'':1159A ''projects'':1148A ''protocol'':185A,517A ''provides'':903A,1930A ''quality'':122A,392A,821A ''queries'':594A,1402A,1634A,1680A ''query'':319A,1819A ''quickly'':1037A,1558A ''rds'':440A,1125A,1767A,1916A ''readable'':341A ''reason'':693A ''records'':967A,1476A ''regrets'':476A ''remember'':785A,1176A,1772A ''repository'':1095A,1737A,1886A,1970A ''request'':355A ''require'':1074A,1340A ''resolves'':713A ''results'':1821A ''s'':142A,353A ''schema'':1842A ''schemas'':1950A ''secret'':28A ''secure'':911A,1582A ''selected'':1632A ''server'':175A,214A,423A,507A,546A,1118A,1275A,1760A,1909A ''servers'':410A,1086A,1352A ''session'':661A,680A ''sessions'':651A ''set'':69A,242A ''settings'':61A,591A,1399A,1677A ''share'':1155A,1574A ''shows'':959A,1468A ''software'':1078A,1344A ''spend'':1985A,2003A ''sql'':421A,1116A,1273A,1605A,1621A,1758A,1907A ''sqlite'':1270A ''ssh'':928A ''store'':585A,1393A,1671A ''stored'':640A,1448A,1726A ''strong'':905A ''structure'':1001A ''success'':726A ''susceptible'':657A ''synchronization'':85A ''t'':254A ''tables'':625A,1433A,1711A,1808A ''takes'':674A ''target'':988A,1497A ''text'':1623A ''tool'':110A,380A,1249A ''traveler'':38A ''tree'':999A ''tunneling'':159A,491A,935A ''unaware'':42A ''updated'':978A,1487A ''used'':323A,755A,1504A ''user'':351A,672A,1544A ''uses'':179A,511A ''vacation'':231A ''variety'':842A ''views'':628A,1436A,1714A,1814A ''virtual'':604A,1064A,1330A,1412A,1690A ''way'':1588A ''web'':212A,544A ''wide'':840A ''win'':49A,1595A ''window'':957A,1466A,1862A ''wizard'':1794A ''wondering'':223A ''words'':1925A');
INSERT INTO "public"."post" VALUES (13, 'Prof.', 'Dnn0VL8ZnD', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/320858ac51504dbe83ee5ac50d4d5813.jpg', 'To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. A query is used to extract data from the database in a readable format according to the user''s request. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. If it scares you, it might be a good thing to try. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Anyone who has never made a mistake has never tried anything new. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Remember that failure is an event, not a person. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. I will greet this day with love in my heart. A man is not old until regrets take the place of dreams. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. You must be the change you wish to see in the world. The reason why a great man is great is that he resolves to be a great man. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. I may not have gone where I intended to go, but I think I have ended up where I needed to be. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. The past has no power over the present moment. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. The On Startup feature allows you to control what tabs appear when you launch Navicat. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. You must be the change you wish to see in the world. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. The reason why a great man is great is that he resolves to be a great man. There is no way to happiness. Happiness is the way. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. A query is used to extract data from the database in a readable format according to the user''s request. You cannot save people, you can just love them. Flexible settings enable you to set up a custom key for comparison and synchronization. Anyone who has ever made anything of importance was disciplined. The Synchronize to Database function will give you a full picture of all database differences. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. The On Startup feature allows you to control what tabs appear when you launch Navicat. I may not have gone where I intended to go, but I think I have ended up where I needed to be.', '2002-05-11 11:57:04.905023+08', '2020-04-12 03:18:38.905023+08', 6, 3, 'f', 2, ''' '':2A,4A,6A,8A,10A,12A,14A,18A,20A,22A,24A,26A,28A,30A,32A,35A,37A,39A,41A,43A,45A,47A,49A,51A,54A,56A,58A,60A,63A,65A,67A,69A,72A,74A,76A,78A,80A,82A,84A,86A,89A,91A,94A,96A,99A,101A,103A,105A,107A,110A,112A,114A,116A,118A,120A,122A,124A,127A,129A,132A,134A,136A,138A,140A,143A,145A,148A,150A,152A,156A,158A,161A,163A,165A,167A,169A,171A,173A,175A,177A,179A,181A,183A,185A,187A,189A,191A,193A,195A,199A,202A,204A,206A,210A,212A,214A,216A,218A,220A,222A,224A,226A,228A,230A,232A,235A,237A,239A,241A,243A,245A,248A,250A,252A,254A,256A,258A,260A,262A,265A,267A,269A,271A,274A,276A,278A,280A,282A,284A,286A,288A,291A,293A,295A,297A,299A,301A,303A,305A,308A,310A,312A,314A,316A,318A,320A,322A,324A,326A,328A,330A,333A,335A,337A,339A,341A,343A,345A,347A,349A,351A,353A,355A,358A,360A,362A,364A,366A,368A,370A,373A,375A,377A,379A,381A,383A,386A,388A,393A,395A,398A,400A,403A,405A,407A,409A,411A,413A,416A,418A,420A,423A,425A,427A,429A,431A,433A,435A,437A,440A,442A,444A,446A,448A,450A,452A,454A,456A,458A,460A,462A,465A,467A,469A,471A,473A,475A,477A,479A,481A,483A,486A,488A,490A,492A,494A,496A,498A,500A,502A,504A,506A,508A,511A,513A,515A,517A,519A,521A,523A,525A,527A,529A,531A,533A,535A,537A,541A,543A,545A,547A,550A,552A,554A,556A ''80'':1240A ''access'':532A,639A,792A,900A ''accounts'':969A ''activities'':130A ''advanced'':369A ''aggregate'':707A ''allows'':526A,1262A,1683A ''amazon'':85A,90A ''appear'':1274A,1695A ''aurora'':92A ''authenticated'':331A,463A,1324A ''azure'':108A ''build'':1052A ''builder'':698A,703A,709A ''building'':713A ''buttons'':1480A ''capabilities'':384A ''change'':728A,1335A ''checked'':573A ''cloud'':79A,97A,102A,782A,875A,936A,967A,1643A,1664A ''code'':380A,389A ''collaboration'':973A ''commands'':238A ''comparing'':1354A ''comparison'':1574A ''compatible'':75A ''compelling'':378A ''completion'':391A ''compromising'':546A ''conceptual'':1058A ''connect'':788A ''connecting'':1204A ''connection'':11A,818A,1080A,1145A ''connections'':1460A,1670A ''control'':1268A,1689A ''corresponding'':1478A ''cost'':1036A ''create'':633A ''custom'':1568A ''data'':174A,846A,1024A,1067A,1356A,1503A ''database'':40A,139A,180A,586A,840A,1040A,1111A,1177A,1509A,1608A,1628A ''databases'':81A,796A ''day'':474A ''ddl'':135A ''deleted'':1386A ''dependencies'':146A ''design'':1042A ''designed'':609A ''detailed'':121A ''differences'':1630A ''different'':946A ''direct'':898A ''directly'':691A ''disciplined'':1599A ''displayed'':594A ''divided'':1658A ''dnn0vl8znd'':1747C ''download'':1109A ''dreams'':509A ''e'':849A ''easily'':631A ''easy'':655A ''editing'':382A,683A ''editor'':679A ''effective'':1038A ''enable'':1556A ''ended'':1007A,1737A ''establish'':5A,1139A ''event'':414A ''execute'':236A ''extract'':172A,1501A ''failure'':408A ''feature'':1260A,1645A,1681A ''features'':371A ''files'':253A,828A ''flexible'':1552A ''format'':188A,1517A ''formatting'':396A ''function'':1610A ''g'':851A ''general'':50A,1187A ''gone'':984A,1714A ''good'':283A ''google'':100A ''graphical'':611A ''great'':753A,759A,775A,1403A,1409A,1425A ''greet'':470A ''group'':835A ''gui'':617A ''happiness'':1440A,1443A ''heart'':484A ''helps'':1048A ''high'':1054A ''hijacking'':306A,438A,1299A ''http'':921A,1170A,1192A,1223A ''importance'':1595A ''include'':59A ''information'':44A,113A,125A,645A,1181A,1486A ''inserted'':1379A ''install'':1101A ''intended'':990A,1720A ''interface'':615A ''internet'':882A ''isp'':889A ''key'':1570A ''launch'':1280A,1701A ''lets'':623A ''library'':1105A ''local'':15A,1149A ''located'':942A ''log'':219A ''logged'':1635A ''logical'':1061A ''login'':42A,1179A ''love'':478A,1547A ''machine'':259A ''malicious'':313A,445A,1306A ''man'':489A,755A,777A,1405A,1427A ''mariadb'':64A ''matter'':25A,1159A ''means'':805A ''membership'':149A ''method'':1200A ''microsoft'':106A ''mistake'':346A ''model'':826A ''modeler'':1026A ''models'':1069A ''moment'':1132A ''monitored'':55A ''mysql'':61A ''navicat'':359A,621A,660A,780A,873A,934A,965A,1022A,1282A,1641A,1662A,1703A ''navigation'':565A,1650A ''needed'':1015A,1745A ''network'':233A ''new'':9A,356A,1143A ''number'':1367A ''object'':123A,144A ''objects'':141A,557A,588A,938A,1463A ''old'':495A ''openssl'':1103A ''option'':569A ''oracle'':95A ''organize'':636A ''pane'':115A,567A,600A,1488A,1652A ''passwords'':842A ''people'':1538A ''person'':421A ''physical'':1065A ''picture'':1622A ''place'':505A ''port'':1235A,1238A ''power'':1124A ''powerful'':664A,1032A ''preferences'':579A ''present'':1130A ''prevent'':518A ''preview'':159A ''prof'':1746B ''program'':215A ''project'':128A,959A ''projects'':948A,1467A ''protocol'':913A,1220A ''provide'':896A ''provider'':886A ''provides'':361A,662A ''quality'':1056A ''queries'':674A,715A,823A ''query'':164A,677A,687A,696A,1493A ''quickly'':627A ''range'':367A ''rds'':87A ''readable'':186A,1515A ''reason'':747A,1397A ''records'':1371A ''regrets'':499A ''remember'':404A ''remote'':17A,244A,536A,1151A ''request'':200A,1529A ''resolves'':767A,1417A ''roles'':155A ''s'':198A,540A,1527A ''scares'':270A ''schema'':561A ''sections'':1672A ''secure'':203A,651A,909A,1078A ''security'':548A ''select'':1456A,1474A ''server'':19A,70A,246A,538A,906A,1153A,1210A,1249A ''servers'':57A ''serves'':514A ''service'':884A ''session'':304A,323A,436A,455A,1297A,1316A ''sessions'':294A,426A,1287A ''set'':36A,1173A,1562A ''settings'':820A,1554A ''share'':643A,955A ''shell'':205A,542A ''shows'':117A,1363A ''smart'':387A ''solution'':927A ''source'':1113A ''sql'':68A,394A ''ssh'':33A,208A,512A,916A,1166A ''ssl'':29A,1163A ''startup'':1258A,1679A ''store'':814A ''stored'':869A ''successfully'':3A,1137A ''susceptible'':300A,432A,1293A ''synchronization'':1578A ''synchronize'':1604A ''tab'':52A,1189A ''tables'':854A ''tabs'':1272A,1693A ''takes'':317A,449A,1310A ''target'':1392A ''text'':689A ''thing'':285A,1087A ''think'':1001A,1731A ''tool'':1044A ''tools'':666A ''tried'':352A ''try'':289A ''tunneling'':911A,1194A ''updated'':1382A ''used'':168A,1497A ''user'':196A,315A,447A,613A,1308A,1525A ''users'':153A ''uses'':1214A ''views'':857A ''virtual'':833A ''visually'':717A ''vulnerabilities'':522A ''way'':657A,1436A,1449A ''web'':1247A ''wide'':365A ''window'':581A,1361A ''wish'':732A,1339A ''working'':670A ''world'':742A,1349A');
INSERT INTO "public"."post" VALUES (8, 'Mr.', 'Bj9hE4VOcq', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'You cannot save people, you can just love them. Anyone who has ever made anything of importance was disciplined. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. If it scares you, it might be a good thing to try. The On Startup feature allows you to control what tabs appear when you launch Navicat. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Flexible settings enable you to set up a custom key for comparison and synchronization. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. If the plan doesn’t work, change the plan, but never the goal. Typically, it is employed as an encrypted version of Telnet. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. If you wait, all that happens is you get older. A query is used to extract data from the database in a readable format according to the user''s request. If it scares you, it might be a good thing to try. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. It wasn’t raining when Noah built the ark. Difficult circumstances serve as a textbook of life for people. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. What you get by achieving your goals is not as important as what you become by achieving your goals. Difficult circumstances serve as a textbook of life for people. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Genius is an infinite capacity for taking pains. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Actually it is just in an idea when feel oneself can achieve and cannot achieve. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. What you get by achieving your goals is not as important as what you become by achieving your goals. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Genius is an infinite capacity for taking pains. Creativity is intelligence having fun. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Optimism is the one quality more associated with success and happiness than any other. If it scares you, it might be a good thing to try. If opportunity doesn’t knock, build a door. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. It wasn’t raining when Noah built the ark. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Anyone who has never made a mistake has never tried anything new. If the plan doesn’t work, change the plan, but never the goal. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Flexible settings enable you to set up a custom key for comparison and synchronization. All journeys have secret destinations of which the traveler is unaware. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. The Synchronize to Database function will give you a full picture of all database differences. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. To connect to a database or schema, simply double-click it in the pane. Creativity is intelligence having fun. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane.', '2010-05-13 18:56:38.905023+08', '2002-03-20 20:05:47.905023+08', 4, 4, 't', 18, ''' '':2A,4A,6A,9A,11A,13A,15A,17A,20A,22A,24A,26A,28A,30A,32A,34A,36A,38A,41A,43A,45A,47A,49A,51A,53A,55A,57A,61A,63A,66A,69A,72A,74A,76A,79A,81A,83A,85A,88A,90A,92A,94A,96A,98A,100A,102A,105A,107A,109A,111A,113A,115A,117A,119A,121A,123A,125A,127A,129A,131A,133A,136A,138A,140A,142A,144A,146A,148A,150A,154A,156A,158A,160A,162A,164A,167A,169A,171A,174A,176A,178A,180A,182A,184A,186A,188A,190A,193A,195A,197A,200A,202A,204A,206A,208A,210A,212A,214A,216A,218A,222A,224A,226A,228A,230A,236A,238A,240A,242A,244A,246A,248A,250A,253A,255A,257A,259A,261A,263A,265A,267A,269A,271A,273A,275A,277A,279A,281A,284A,286A,288A,290A,292A,294A,296A,298A,300A,302A,304A,306A,308A,310A,313A,315A,317A,319A,321A,323A,325A,327A,329A,331A,333A,335A,337A,339A,341A,343A,345A,347A,349A,351A,353A,357A,359A,361A,363A,366A,368A,370A,372A,376A,379A,381A,383A,386A,388A,390A,392A,395A,398A,400A,402A,404A,406A,408A,410A,412A,414A,417A,419A,421A,423A,425A,427A,429A,431A,434A,436A,439A,441A,443A,445A,447A,450A,452A,455A,457A,459A,463A,465A,468A,470A,472A,475A,477A,479A,481A,483A,485A,487A,490A,492A,494A,496A,498A,500A,502A,504A,506A,508A,510A,512A,514A,516A,518A,520A,522A,524A,528A,531A,533A,535A,537A,540A,542A,544A,546A,548A,550A,552A,554A,557A,559A,561A ''ability'':207A ''access'':597A,703A ''accounts'':801A,1658A ''achieve'':276A,282A,1093A,1099A ''achieving'':855A,879A,1197A,1221A ''action'':336A,1327A ''activities'':437A ''actually'':254A,1071A ''advanced'':1815A ''agentless'':1528A ''alerts'':572A,1058A ''alibaba'':1128A ''allow'':923A,1867A ''allows'':46A,114A,328A,697A,932A,1009A,1319A,1876A ''amazon'':1118A,1123A ''analysis'':582A,1068A ''analytical'':1039A ''appear'':126A ''ark'':738A,1510A ''associated'':1370A ''authentication'':1982A ''authorizes'':1928A ''bj9he4vocq'':2065C ''build'':1424A ''built'':734A,1506A ''buttons'':836A,977A,1264A,2056A ''capacity'':998A,1285A ''change'':380A,981A,1268A,1603A ''circumstances'':743A,888A ''click'':1904A ''cloud'':587A,680A,768A,799A,1110A,1130A,1625A,1656A ''collaboration'':805A,1662A ''collections'':60A ''commands'':1466A ''comparing'':1987A ''comparison'':307A,1718A ''compromising'':717A ''connect'':593A,1887A ''connection'':147A,623A,1936A ''connections'':816A,927A,938A,1806A,1871A,1882A,2036A ''consists'':1784A ''contains'':245A ''control'':120A ''corresponding'':834A,2054A ''creativity'':1294A,1915A ''csv'':64A ''custom'':301A,1712A ''data'':54A,211A,503A,651A,1017A,1989A ''database'':179A,342A,446A,509A,645A,1023A,1184A,1333A,1809A,1826A,1846A,1893A ''databases'':217A,601A,1112A ''date'':235A ''dbf'':73A ''ddl'':442A ''deleted'':2019A ''dependencies'':453A ''destinations'':1733A ''detailed'':428A,1037A ''developers'':1151A ''diagram'':971A,975A,1258A,1262A ''differences'':1848A ''different'':215A,778A,1635A,1948A ''difficult'':741A,886A ''direct'':925A,1869A ''disciplined'':39A ''documents'':1769A ''doesn'':373A,1417A,1596A ''door'':1428A ''double'':1902A ''e'':654A,1955A ''easily'':364A,1355A ''easy'':1166A ''effective'':1558A ''employed'':403A ''employs'':320A,1311A ''enable'':289A,1700A ''encrypted'':409A ''er'':969A,973A,1256A,1260A ''establish'':141A ''establishing'':934A,1878A ''execute'':1464A ''extract'':501A ''eyes'':1671A ''feature'':112A ''features'':1133A,1548A ''feel'':270A,1087A ''files'':633A,1481A ''flexible'':285A,1696A ''format'':517A ''fun'':1302A,1923A ''function'':1828A ''g'':656A ''general'':189A ''genius'':990A,1277A ''goal'':393A,1616A ''goals'':859A,883A,1201A,1225A ''good'':97A,549A,1404A ''group'':640A ''gssapi'':1980A ''happens'':480A ''happiness'':1378A ''having'':1300A,1921A ''historical'':580A,1066A ''http'':172A,936A,1880A ''idea'':266A,1083A ''import'':42A,52A ''importance'':35A ''important'':867A,1209A ''infinite'':996A,1283A ''information'':183A,251A,420A,432A,842A,2062A ''inserted'':2012A ''inspire'':1691A ''intelligence'':1298A,1919A ''internet'':1775A ''isps'':917A,1861A ''journeys'':1727A ''kept'':229A ''key'':303A,1714A ''knock'':1421A ''launch'':132A ''layer'':1752A ''learn'':1170A ''life'':755A,900A ''linux'':1964A ''list'':958A,960A,1245A,1247A ''local'':151A ''located'':774A,1631A ''log'':1447A ''login'':181A ''love'':16A ''machine'':1487A ''macos'':1961A ''main'':1780A ''make'':1552A,1934A ''manage'':1108A ''matter'':161A ''means'':610A ''membership'':456A ''menus'':358A,1349A ''metrics'':576A,1062A ''mistake'':1577A ''model'':631A ''monitor'':560A,1046A,1515A ''monitoring'':1534A,1556A ''navicat'':134A,201A,558A,585A,678A,766A,797A,1007A,1044A,1137A,1513A,1623A,1654A,1926A ''navigation'':316A,1307A ''needs'':1161A ''network'':1461A ''new'':145A,1180A,1587A ''noah'':732A,1504A ''number'':2000A ''object'':430A,451A,985A,1272A ''objects'':348A,448A,770A,819A,945A,1232A,1339A,1627A,1811A,2039A ''older'':488A ''oneself'':272A,1089A ''open'':1673A ''opportunity'':1415A ''optimism'':1358A ''packed'':1542A ''pains'':1004A,1291A ''pam'':1976A ''pane'':318A,422A,844A,1309A,1912A,2064A ''panes'':1794A ''passwords'':647A ''people'':7A,759A,904A ''picture'':1840A ''plan'':371A,384A,1594A,1607A ''platforms'':1950A ''pop'':354A,1345A ''possible'':1562A ''powerful'':1546A ''prevent'':689A ''preview'':466A ''private'':1767A ''process'':1041A ''professional'':1149A ''program'':1443A ''project'':435A,791A,1648A ''projects'':780A,823A,1637A,2043A ''protocol'':1761A ''provide'':1147A ''provides'':203A ''quality'':1366A ''queries'':628A ''query'':493A ''quickly'':360A,1351A ''raining'':728A,1500A ''rds'':1125A ''readable'':515A ''records'':2004A ''redshift'':1120A ''remote'':153A,707A,1472A,1530A,1940A ''repository'':243A,566A,1052A ''request'':529A ''requires'':562A,1048A ''roles'':462A ''running'':1944A ''s'':527A,711A ''safe'':1521A ''scares'':84A,536A,1391A ''schema'':1029A,1897A ''schemas'':223A ''secret'':1731A ''secure'':1431A,1748A ''security'':719A ''select'':812A,830A,2032A,2050A ''serve'':745A,890A ''server'':155A,709A,1186A,1474A,1532A ''servers'':1942A ''serves'':685A ''set'':175A,295A,1706A ''settings'':287A,625A,1698A ''share'':787A,1644A ''shell'':713A,1433A ''shows'':424A,1996A ''simple'':1524A ''simply'':1900A ''sockets'':1750A ''sophisticated'':1141A ''specific'':1159A ''ssh'':168A,683A,1436A ''ssl'':165A,1754A ''startup'':110A ''store'':570A,619A,1056A ''stored'':674A ''structure'':324A,1315A ''success'':1374A ''successfully'':139A ''supports'':1974A ''synchronization'':311A,1722A ''synchronize'':1822A ''t'':375A,726A,1419A,1498A,1598A ''tab'':191A,947A,1234A ''tables'':58A,659A ''tabs'':124A ''taking'':1002A,1289A ''target'':2025A ''telnet'':415A ''textbook'':751A,896A ''thing'':99A,551A,1406A ''tool'':1536A ''toolbars'':1790A ''tools'':1817A ''transfer'':1015A ''transmitting'':1765A ''traveler'':1741A ''tree'':322A,1313A ''tried'':1583A ''try'':103A,555A,1410A ''txt'':67A ''typically'':396A ''unaware'':1745A ''unix'':1968A ''updated'':2015A ''use'':954A,1241A ''used'':497A,911A,1855A ''user'':525A ''users'':460A,1174A ''version'':411A ''view'':987A,1274A ''views'':662A ''virtual'':638A ''vulnerabilities'':693A ''wait'':473A ''wasn'':724A,1496A ''watching'':1678A ''window'':1782A,1994A ''windows'':1958A ''wizard'':44A ''words'':198A ''work'':377A,1600A,1802A ''xml'':70A');
INSERT INTO "public"."post" VALUES (12, 'Miss.', 'q4f2rFxRlf', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'A man is not old until regrets take the place of dreams. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. All journeys have secret destinations of which the traveler is unaware. Actually it is just in an idea when feel oneself can achieve and cannot achieve. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Genius is an infinite capacity for taking pains. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. How we spend our days is, of course, how we spend our lives. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Creativity is intelligence having fun. Typically, it is employed as an encrypted version of Telnet. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Anyone who has ever made anything of importance was disciplined. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Typically, it is employed as an encrypted version of Telnet. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. A man is not old until regrets take the place of dreams. It wasn’t raining when Noah built the ark. If you wait, all that happens is you get older. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily.', '2013-10-20 07:03:03.905023+08', '2007-08-15 12:00:56.905023+08', 2, 1, 'f', 0, ''' '':2A,4A,6A,8A,10A,12A,14A,16A,18A,20A,22A,25A,27A,29A,31A,33A,35A,37A,39A,41A,44A,47A,49A,51A,53A,55A,57A,59A,61A,64A,66A,68A,70A,73A,75A,77A,79A,81A,84A,86A,88A,90A,92A,94A,96A,98A,100A,102A,104A,107A,109A,111A,113A,115A,117A,119A,121A,123A,125A,127A,129A,131A,133A,135A,138A,140A,142A,144A,146A,148A,150A,152A,154A,156A,159A,161A,163A,165A,167A,169A,171A,173A,175A,177A,179A,181A,184A,186A,188A,190A,192A,194A,196A,198A,201A,203A,205A,207A,209A,211A,213A,215A,217A,219A,221A,223A,225A,228A,230A,232A,234A,236A,238A,241A,243A,246A,248A,250A,252A,254A,257A,259A,261A,263A,265A,267A,269A,272A,274A,276A,278A,280A,282A,284A,286A,288A,290A,292A,294A,296A,299A,301A,303A,305A,307A,309A,311A,313A,316A,318A,321A,323A,325A,327A,329A,332A,334A,337A,339A,341A,345A,347A,350A,352A,354A,356A,358A,360A,362A,364A,366A,368A,370A,372A,374A,376A,378A,380A,383A,385A,387A,389A,391A,393A,395A,397A,399A,402A,404A,406A,408A,412A,414A,416A,418A,420A,422A,424A,426A,428A,431A,434A,437A,440A,442A,445A,447A,451A,453A,456A,458A,460A,462A,464A,466A,468A,470A,472A,474A,477A,479A,481A,483A,485A,487A,489A,491A,493A,495A,497A,499A,501A,503A,507A,509A,511A,513A,516A,518A,520A,522A,524A,526A,528A,530A,534A,537A,539A,541A,543A,545A,547A,549A,551A,553A ''access'':498A,650A ''accounts'':178A ''achieve'':130A,136A ''action'':954A ''activities'':319A ''actually'':108A ''administration'':415A,461A ''alerts'':216A ''allowing'':419A ''allows'':492A,946A ''analysis'':226A ''ark'':907A ''audiences'':558A,602A ''build'':529A,573A ''built'':903A ''capacity'':193A ''checked'':373A ''cloud'':28A,34A,145A,176A,268A,289A,640A,733A ''collaboration'':182A ''collects'':759A ''compromising'':512A ''conceptual'':535A,579A ''connect'':425A,646A ''connection'':676A ''connections'':42A,295A,411A ''course'':244A ''cpu'':769A ''creativity'':605A ''data'':519A,544A,563A,588A,704A ''database'':328A,386A,413A,459A,471A,698A,960A ''databases'':454A,654A ''days'':237A ''ddl'':324A ''dependencies'':335A ''destinations'':93A ''detailed'':310A ''different'':74A,80A,155A ''disciplined'':754A ''displayed'':394A ''divided'':283A ''don'':853A ''dreams'':23A,888A ''e'':707A ''easily'':982A ''easy'':475A ''employed'':623A,805A ''employs'':938A ''enables'':523A,567A ''encrypted'':629A,811A ''escape'':861A ''family'':69A ''feature'':270A ''feel'':124A ''files'':50A,686A ''fun'':613A ''g'':709A ''genius'':185A ''group'':56A,693A ''happens'':921A ''having'':611A ''high'':531A,575A ''historical'':224A ''idea'':120A ''importance'':750A ''infinite'':191A ''information'':58A,302A,314A ''intelligence'':609A ''journeys'':87A ''kinds'':467A ''life'':849A ''lives'':255A ''load'':771A ''located'':151A ''logged'':260A ''logical'':538A,582A ''machines'':76A ''making'':457A ''man'':3A,868A ''mariadb'':446A ''means'':663A ''members'':71A ''membership'':338A ''menus'':976A ''metrics'':220A,763A ''miss'':983B ''model'':48A,684A ''modeler'':521A,565A ''models'':546A,590A ''mongodb'':452A ''monitor'':204A ''multi'':409A ''multiple'':465A ''mysql'':429A ''navicat'':26A,62A,67A,143A,174A,202A,266A,287A,403A,517A,561A,638A,731A ''navigation'':275A,365A,934A ''noah'':901A ''object'':312A,333A ''objects'':147A,330A,357A,388A,966A ''old'':9A,874A ''older'':929A ''oneself'':126A ''option'':369A ''oracle'':432A ''pains'':199A ''pane'':277A,304A,367A,400A,936A ''passwords'':700A ''physical'':542A,586A ''place'':19A,884A ''platforms'':82A ''pop'':972A ''postgresql'':435A ''preferences'':379A ''prevent'':484A ''preview'':348A ''process'':761A ''project'':168A,317A ''projects'':157A ''provides'':30A ''q4f2rfxrlf'':984C ''quality'':533A,577A ''queries'':45A,681A ''quickly'':978A ''raining'':897A ''ram'':774A ''regrets'':13A,878A ''remote'':502A ''repository'':210A ''requires'':206A ''resources'':789A ''roles'':344A ''s'':506A ''schema'':361A ''secret'':91A ''sections'':297A ''security'':514A ''server'':443A,504A ''serves'':480A ''service'':36A ''set'':843A ''settings'':678A ''share'':164A ''shell'':508A ''shows'':306A ''snmp'':795A ''spend'':233A,251A ''sql'':441A ''sqlite'':438A ''ssh'':478A,793A ''store'':214A,672A ''stored'':727A ''structure'':942A ''synchronizing'':40A ''t'':855A,895A ''tables'':712A ''taking'':197A ''telnet'':635A,817A ''tool'':417A ''traveler'':101A ''tree'':940A ''typically'':616A,798A ''unaware'':105A ''usage'':776A ''users'':342A ''vacation'':832A ''variety'':554A,598A,783A ''version'':631A,813A ''views'':715A ''virtual'':54A,691A ''vulnerabilities'':488A ''wait'':914A ''wasn'':893A ''wide'':552A,596A ''window'':381A ''wondering'':824A');
INSERT INTO "public"."post" VALUES (15, 'Ms.', 'OzVl3wV2IB', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. If you wait, all that happens is you get older. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Typically, it is employed as an encrypted version of Telnet. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. The On Startup feature allows you to control what tabs appear when you launch Navicat. Typically, it is employed as an encrypted version of Telnet. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Remember that failure is an event, not a person. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Optimism is the one quality more associated with success and happiness than any other. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. What you get by achieving your goals is not as important as what you become by achieving your goals. If you wait, all that happens is you get older. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network.', '2023-02-28 07:44:42+08', '2019-07-03 13:58:10.905023+08', 8, 2, 't', 268, ''' '':2A,4A,6A,8A,10A,12A,15A,17A,19A,21A,23A,25A,27A,29A,31A,33A,35A,37A,39A,42A,44A,46A,50A,52A,54A,60A,62A,64A,66A,68A,70A,72A,75A,78A,80A,82A,84A,86A,88A,90A,92A,94A,96A,99A,101A,103A,106A,108A,110A,112A,114A,116A,118A,121A,123A,125A,128A,130A,132A,134A,136A,138A,140A,142A,144A,146A,148A,151A,153A,155A,157A,159A,161A,164A,167A,169A,171A,173A,175A,177A,179A,181A,183A,186A,188A,190A,192A,194A,196A,198A,200A,203A,205A,207A,209A,211A,213A,215A,217A,219A,221A,223A,225A,227A,230A,232A,234A,236A,238A,240A,242A,245A,247A,249A,251A,253A,255A,257A,259A,261A,263A,265A,267A,269A,272A,274A,276A,278A,280A,282A,284A,286A,288A,290A,292A,294A,296A,298A,300A,303A,306A,308A,310A,312A,314A,316A,318A,320A,322A,325A,327A,329A,331A,333A,335A,337A,339A,341A,343A,345A,347A,349A,351A,353A,356A,358A,360A,362A,364A,366A,368A,370A,373A,375A,377A,379A,381A,383A,385A,387A,389A,391A,393A,395A,398A,400A,402A,404A,406A,408A,411A,413A,415A,418A,420A,422A,424A,426A,428A,430A,432A,434A,436A,439A,441A,444A,446A,449A,451A,453A,455A,457A,459A,461A,463A,465A,467A,469A,471A,473A,475A,477A,480A,482A,484A,486A,488A,490A,492A,494A,496A,498A,500A,502A,505A,507A,509A,512A,514A,516A,518A,520A,522A,524A,526A,528A,530A,534A,536A,538A,540A,542A,548A,550A,552A ''ability'':519A ''access'':79A,632A,703A ''achieve'':348A,354A ''achieving'':797A,821A ''actually'':326A ''alibaba'':445A ''allows'':281A ''amazon'':435A,440A ''appear'':293A ''associated'':674A ''authenticated'':396A ''authentication'':856A ''cloud'':11A,32A,241A,262A,427A,447A,693A,786A ''communications'':864A ''comparing'':124A ''connect'':699A ''connection'':214A,226A,593A,605A,729A ''connections'':38A,220A,268A,599A ''contains'':557A ''control'':287A ''create'':73A ''data'':126A,523A,757A ''database'':501A,751A ''databases'':429A,529A,707A ''date'':547A ''deleted'':156A ''designed'':49A ''developers'':468A ''different'':527A ''direct'':630A ''divided'':26A,256A ''e'':760A ''easily'':71A ''easy'':95A,483A ''employed'':172A,311A ''encrypted'':178A,317A,862A ''establish'':210A,589A ''event'':409A ''failure'':403A ''feature'':13A,243A,279A ''features'':450A ''feel'':342A ''files'':739A ''forwarding'':881A ''g'':762A ''goals'':801A,825A ''graphical'':51A ''group'':746A ''gui'':57A ''happens'':111A,839A ''happiness'':682A ''hijacking'':371A ''hosts'':870A ''http'':653A ''idea'':338A ''important'':809A ''information'':85A,563A ''insecure'':892A ''inserted'':149A ''interface'':55A ''internet'':614A ''isp'':621A ''kept'':541A ''known'':873A ''launch'':299A ''learn'':487A ''lets'':63A ''logged'':3A,233A ''malicious'':378A ''manage'':425A ''means'':716A ''model'':737A ''navicat'':9A,30A,61A,201A,239A,260A,301A,454A,513A,580A,691A,784A ''navigation'':18A,248A ''needs'':478A ''network'':894A ''new'':497A ''number'':137A ''older'':119A,847A ''oneself'':344A ''optimism'':662A ''organize'':76A ''ozvl3wv2ib'':895C ''pane'':20A,250A ''passwords'':753A ''person'':416A ''port'':879A ''professional'':466A ''protocol'':645A ''provide'':464A,628A ''provider'':618A ''provides'':515A,852A ''quality'':670A ''queries'':734A ''quickly'':67A ''rds'':442A ''records'':141A ''redshift'':437A ''remember'':399A ''repository'':555A ''schemas'':535A ''sections'':40A,270A ''secure'':91A,641A,860A ''server'':197A,503A,576A,638A ''service'':616A ''session'':369A,388A ''sessions'':359A ''settings'':731A ''share'':83A ''shows'':133A ''solution'':659A ''sophisticated'':458A ''specific'':476A ''ssh'':648A,877A ''start'':189A,568A ''startup'':277A ''store'':725A ''stored'':780A ''strong'':854A ''success'':678A ''susceptible'':365A ''tables'':765A ''tabs'':291A ''takes'':382A ''target'':162A ''telnet'':184A,323A ''tunneling'':643A,884A ''typically'':165A,304A ''updated'':152A ''user'':53A,380A ''users'':491A ''using'':222A,601A ''version'':180A,319A ''views'':768A ''virtual'':744A ''wait'':104A,832A ''way'':97A ''window'':131A,228A,607A ''words'':510A ''working'':191A,570A');
INSERT INTO "public"."post" VALUES (20, 'Mr.', 'X53gNyvaWF', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/320858ac51504dbe83ee5ac50d4d5813.jpg', 'Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. How we spend our days is, of course, how we spend our lives. I may not have gone where I intended to go, but I think I have ended up where I needed to be. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Anyone who has ever made anything of importance was disciplined. All journeys have secret destinations of which the traveler is unaware. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Creativity is intelligence having fun. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. You cannot save people, you can just love them. To connect to a database or schema, simply double-click it in the pane. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Creativity is intelligence having fun. I will greet this day with love in my heart. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Anyone who has ever made anything of importance was disciplined. The On Startup feature allows you to control what tabs appear when you launch Navicat. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. If opportunity doesn’t knock, build a door. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. The Synchronize to Database function will give you a full picture of all database differences. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. If the plan doesn’t work, change the plan, but never the goal. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Sometimes you win, sometimes you learn. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. The first step is as good as half over. Creativity is intelligence having fun. I may not have gone where I intended to go, but I think I have ended up where I needed to be. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Flexible settings enable you to set up a custom key for comparison and synchronization. I may not have gone where I intended to go, but I think I have ended up where I needed to be. What you get by achieving your goals is not as important as what you become by achieving your goals. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. I destroy my enemies when I make them my friends. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. It wasn’t raining when Noah built the ark. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. The first step is as good as half over. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. You cannot save people, you can just love them. I destroy my enemies when I make them my friends. The Synchronize to Database function will give you a full picture of all database differences. Success consists of going from failure to failure without loss of enthusiasm. It wasn’t raining when Noah built the ark. Remember that failure is an event, not a person. Typically, it is employed as an encrypted version of Telnet. I may not have gone where I intended to go, but I think I have ended up where I needed to be. A query is used to extract data from the database in a readable format according to the user''s request. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. You cannot save people, you can just love them. There is no way to happiness. Happiness is the way. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. The reason why a great man is great is that he resolves to be a great man. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. A query is used to extract data from the database in a readable format according to the user''s request. To connect to a database or schema, simply double-click it in the pane. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. I will greet this day with love in my heart. The first step is as good as half over. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Champions keep playing until they get it right. A comfort zone is a beautiful place, but nothing ever grows there. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. I will greet this day with love in my heart. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. You will succeed because most people are lazy. You cannot save people, you can just love them. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure.', '2005-05-07 11:08:23.905023+08', '2005-06-13 00:58:46.905023+08', 2, 1, 'f', 610, ''' '':2A,4A,6A,8A,10A,12A,14A,16A,18A,22A,24A,26A,28A,30A,32A,34A,37A,39A,41A,43A,46A,48A,50A,52A,54A,56A,59A,61A,63A,65A,67A,69A,71A,73A,75A,77A,79A,81A,83A,86A,88A,90A,92A,94A,96A,98A,100A,103A,107A,109A,111A,113A,115A,117A,119A,122A,124A,126A,128A,130A,132A,134A,136A,138A,140A,142A,144A,147A,149A,151A,153A,155A,157A,160A,162A,165A,167A,169A,171A,173A,176A,178A,180A,182A,184A,186A,188A,190A,192A,194A,197A,199A,201A,203A,205A,207A,209A,211A,213A,215A,217A,219A,222A,224A,226A,228A,230A,232A,234A,236A,238A,240A,242A,244A,246A,248A,254A,257A,260A,262A,264A,268A,270A,272A,274A,276A,278A,281A,283A,285A,287A,289A,291A,293A,295A,298A,300A,303A,305A,307A,309A,311A,313A,315A,317A,322A,324A,326A,328A,330A,332A,334A,336A,338A,340A,343A,345A,347A,349A,351A,353A,355A,357A,359A,361A,363A,366A,368A,370A,372A,374A,377A,379A,381A,384A,386A,388A,390A,392A,394A,396A,398A,400A,402A,405A,407A,409A,411A,413A,416A,418A,420A,422A,424A,426A,428A,430A,433A,435A,437A,439A,441A,443A,445A,447A,449A,453A,455A,457A,459A,462A,464A,466A,468A,471A,473A,475A,477A,479A,482A,484A,486A,488A,490A,492A,494A,497A,499A,503A,505A,507A,509A,512A,514A,516A,518A,520A,523A,525A,527A,529A,531A,533A,535A,537A,539A,541A,543A,545A,547A,549A,551A,553A,555A,557A ''access'':633A,1180A,1316A,2440A,3169A ''accounts'':1161A ''achieving'':1744A,1768A ''action'':1062A,1570A,2613A ''advanced'':2681A,3198A ''agentless'':528A ''aggregate'':1648A ''alerts'':3247A ''allow'':1454A,1852A,2737A,3110A ''allows'':3A,658A,814A,1054A,1463A,1562A,1779A,1861A,2434A,2605A,2746A,2931A,3010A,3119A,3163A ''amazon'':867A,872A,1002A,3371A,3376A ''analysis'':3257A ''analytical'':33A,3040A ''appear'':826A ''ark'':1886A,2288A ''audiences'':2172A ''aurora'':874A,3378A ''authentication'':279A ''authorizes'':225A ''available'':689A,1810A ''azure'':890A,3394A ''beautiful'':2992A ''build'':965A,2143A ''builder'':1639A,1644A,1650A ''building'':1654A ''built'':1882A,2284A ''buttons'':74A,395A,774A,3081A ''capabilities'':3213A ''champions'':2965A ''change'':78A,1106A,3085A ''checked'':716A,1965A ''click'':106A,502A,2815A,2845A ''cloud'':861A,879A,884A,1128A,1159A,1170A,1263A,3365A,3383A,3388A ''code'':3209A,3218A ''collaboration'':1165A ''collections'':673A,1794A,2945A ''collects'':284A ''comfort'':2984A ''comparison'':1683A ''compatible'':857A,3361A ''compelling'':3207A ''completion'':3220A ''compromising'':2454A,3183A ''conceptual'':2149A ''connect'':485A,1176A,2798A ''connection'':233A,1206A,1347A,1421A,1433A,1899A,2084A,2467A,3287A,3299A ''connections'':375A,754A,1427A,1458A,1469A,1856A,1867A,2672A,2741A,2752A,3114A,3125A,3293A ''consists'':2249A,2650A ''control'':104A,820A,2843A ''corresponding'':393A,772A ''course'':163A ''cpu'':294A ''create'':627A,1310A ''creativity'':406A,565A,1491A ''csv'':2949A ''custom'':1677A ''data'':11A,666A,1234A,1787A,2133A,2158A,2391A,2767A,2939A,3018A ''database'':17A,491A,729A,976A,1015A,1035A,1068A,1228A,1379A,1576A,1928A,1978A,2116A,2222A,2242A,2397A,2498A,2619A,2675A,2773A,2804A,3024A ''databases'':863A,1184A,3367A ''day'':584A,2895A,3136A ''days'':156A ''dbf'':2958A ''designed'':603A,1286A ''destinations'':352A ''destroy'':1817A,2197A ''detailed'':31A,3038A ''diagram'':68A,72A,3075A,3079A ''differences'':1037A,2244A ''different'':245A,1138A ''direct'':1456A,1854A,2739A,3112A ''directly'':1632A ''disciplined'':341A,803A ''displayed'':737A,1986A ''documents'':914A,2016A,2065A ''doesn'':958A,1099A ''don'':450A,2578A ''door'':969A ''double'':500A,2813A ''download'':2496A ''e'':252A,1237A ''easily'':625A,1090A,1308A,1598A,2641A ''easy'':649A,1332A ''editing'':1624A,3211A ''editor'':101A,120A,141A,1620A,2840A,2859A,2880A ''effective'':558A ''employed'':2318A ''employs'':1046A,1554A,2597A ''enable'':1665A ''enables'':2137A ''encrypted'':2324A ''ended'':208A,1533A,1721A,2364A ''enemies'':1821A,2201A ''enthusiasm'':2269A ''er'':66A,70A,3073A,3077A ''escape'':458A,2586A ''establish'':1341A,1417A,1893A,2078A,3283A ''establishing'':1465A,1863A,2748A,3121A ''event'':2301A ''existing'':984A ''export'':654A,664A,1775A,1785A ''external'':99A,118A,139A,2838A,2857A,2878A ''extract'':2389A,2765A ''eyes'':929A ''failure'':2257A,2261A,2295A ''feature'':812A ''features'':548A,3200A ''file'':131A,2870A ''files'':1216A ''flexible'':1661A ''format'':2405A,2781A ''formats'':691A,1812A ''formatting'':3225A ''friends'':1833A,2213A ''fun'':414A,573A,1499A ''function'':1017A,2224A ''g'':1239A ''general'':1389A,1938A,2126A ''goal'':1119A ''goals'':1748A,1772A ''going'':2253A ''gone'':185A,1510A,1698A,2341A ''good'':1482A,2035A,2918A ''google'':882A,3386A ''graphical'':605A,1288A ''great'':2694A,2700A,2716A ''greet'':580A,2891A,3132A ''group'':1223A ''grows'':3003A ''gssapi'':277A ''gui'':611A,1294A ''half'':1486A,2039A,2922A ''happiness'':2533A,2536A ''having'':412A,571A,1497A ''heart'':594A,2905A,3146A ''high'':2145A ''historical'':3255A ''http'':1372A,1467A,1865A,2109A,2750A,3123A ''import'':2927A,2937A ''importance'':337A,799A ''important'':1756A ''include'':841A,3345A ''information'':401A,639A,780A,1322A,1383A,1932A,2120A ''inspire'':949A ''install'':2488A ''instance'':1006A ''intelligence'':410A,569A,1495A ''intended'':191A,1516A,1704A,2347A ''interface'':609A,1292A ''internet'':920A,2022A,2071A ''isps'':1448A,1846A,2731A,3104A ''journeys'':346A ''key'':1679A ''knock'':962A ''launch'':832A ''layer'':897A,1999A,2048A ''lazy'':3318A ''learn'':1277A ''lets'':617A,1300A ''library'':2492A ''life'':446A,2574A ''linux'':261A ''list'':55A,57A,3062A,3064A ''lives'':174A ''load'':296A ''local'':1351A,1903A,2088A ''located'':1134A ''logical'':2152A ''login'':1381A,1930A,2118A ''loss'':2265A ''love'':478A,588A,2190A,2518A,2899A,3140A,3336A ''macos'':258A ''main'':2646A ''make'':231A,552A,1827A,2207A ''man'':2696A,2718A ''mariadb'':846A,989A,3350A ''matter'':1361A,1913A,2098A ''means'':1193A ''menus'':1084A,1592A,2635A ''metrics'':288A,3251A ''microsoft'':888A,3392A ''model'':1214A ''modeler'':2135A ''models'':2160A ''monitor'':515A,3235A ''monitored'':837A,3341A ''monitoring'':534A,556A ''mysql'':843A,986A,3347A ''navicat'':1A,223A,513A,615A,834A,1126A,1157A,1168A,1261A,1298A,1408A,1601A,2131A,3008A,3188A,3233A,3274A ''navigation'':708A,1042A,1550A,1957A,2593A ''needed'':216A,1541A,1729A,2372A ''new'':1345A,1897A,2082A ''noah'':1880A,2282A ''object'':82A,3089A ''objects'':42A,378A,700A,731A,757A,1074A,1130A,1582A,1949A,1980A,2625A,2677A,3049A ''open'':89A,114A,931A,2828A,2853A ''openssl'':2490A ''opportunity'':956A ''option'':712A,1961A ''oracle'':877A,3381A ''organize'':630A,1313A ''packed'':542A ''pam'':273A ''pane'':403A,510A,710A,743A,782A,1044A,1552A,1959A,1992A,2595A,2823A ''panes'':2660A ''passwords'':1230A ''path'':133A,2872A ''people'':469A,2181A,2509A,3314A,3327A ''person'':2308A ''physical'':2156A ''picture'':1029A,2236A ''place'':2994A ''plan'':1097A,1110A ''platforms'':247A ''playing'':2969A ''pop'':1080A,1588A,2631A ''possible'':562A ''postgresql'':992A ''powerful'':546A,1605A ''preferences'':145A,722A,1971A,2884A ''prevent'':2426A,3155A ''private'':912A,2014A,2063A ''process'':35A,286A,3042A ''project'':1151A ''projects'':382A,761A,1140A ''protocol'':906A,2008A,2057A ''provides'':1603A,3190A ''quality'':2147A ''queries'':1211A,1615A,1656A ''query'':93A,681A,1618A,1628A,1637A,1802A,2381A,2757A,2832A ''quickly'':621A,1086A,1304A,1594A,2637A ''raining'':1876A,2278A ''ram'':299A ''range'':3196A ''rds'':869A,1004A,3373A ''readable'':2403A,2779A ''reason'':2688A ''remember'':2291A ''remote'':237A,530A,1353A,1905A,2090A,2444A,3173A ''repository'':974A,3241A ''request'':2417A,2793A ''requires'':3237A ''resolves'':2708A ''resources'':314A ''results'':683A,1804A ''right'':2979A ''running'':241A ''s'':2415A,2448A,2791A,3177A ''safe'':521A ''schema'':23A,495A,704A,1953A,2808A,3030A ''secret'':350A ''secure'':645A,893A,1328A,1995A,2044A,2465A ''security'':2456A,3185A ''select'':112A,371A,389A,750A,768A,2851A ''server'':532A,852A,997A,1355A,1404A,1907A,2092A,2446A,3175A,3270A,3356A ''servers'':239A,839A,3343A ''serves'':2422A,3151A ''set'':127A,440A,1375A,1671A,1924A,2112A,2568A,2866A ''settings'':1208A,1663A ''share'':637A,1147A,1320A ''shell'':2450A,3179A ''simple'':524A ''simply'':498A,2811A ''smart'':3216A ''snmp'':320A ''sockets'':895A,1997A,2046A ''source'':2500A ''spend'':152A,170A ''sql'':850A,995A,3223A,3354A ''ssh'':318A,1368A,1921A,2105A,2420A,3149A ''ssl'':899A,1365A,1917A,2001A,2050A,2102A ''start'':1396A,3262A ''startup'':810A ''step'':1476A,2029A,2912A ''store'':1202A,3245A ''stored'':1257A ''structure'':1050A,1558A,2601A ''succeed'':3308A ''success'':2247A ''successfully'':1339A,1891A,2076A ''supports'':271A ''synchronization'':1687A ''synchronize'':1011A,2218A ''t'':452A,960A,1101A,1874A,2276A,2580A ''tab'':44A,1391A,1940A,2128A,3051A ''tables'':670A,1242A,1791A,2943A ''tabs'':824A ''telnet'':2330A ''text'':1630A ''thing'':2474A ''think'':202A,1527A,1715A,2358A ''tool'':536A ''toolbars'':2656A ''tools'':1607A,2683A ''transfer'':9A,3016A ''transmitting'':910A,2012A,2061A ''traveler'':360A ''tree'':1048A,1556A,2599A ''txt'':2952A ''typically'':2311A ''unaware'':364A ''unix'':265A ''usage'':301A ''use'':51A,3058A ''used'':1442A,1840A,2385A,2725A,2761A,3098A ''user'':607A,1290A,2413A,2789A ''using'':95A,1429A,2834A,3295A ''vacation'':429A,2557A ''variety'':308A,2168A ''version'':2326A ''view'':84A,3091A ''views'':676A,1245A,1797A ''virtual'':1221A ''visually'':1658A ''vulnerabilities'':2430A,3159A ''wasn'':1872A,2274A ''watching'':936A ''way'':651A,1334A,2529A,2542A ''wide'':2166A,3194A ''win'':1270A ''window'':724A,1435A,1973A,2648A,3301A ''windows'':255A ''wizard'':656A,1777A,2929A ''wondering'':421A,2549A ''work'':1103A,2668A ''working'':1398A,1611A,3264A ''x53gnyvawf'':3395C ''xml'':2955A ''zone'':2986A');
INSERT INTO "public"."post" VALUES (9, 'Mrs.', 'KJS9o7z5uU', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Optimism is the one quality more associated with success and happiness than any other. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. The On Startup feature allows you to control what tabs appear when you launch Navicat. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Flexible settings enable you to set up a custom key for comparison and synchronization. Flexible settings enable you to set up a custom key for comparison and synchronization. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. It wasn’t raining when Noah built the ark. If the plan doesn’t work, change the plan, but never the goal. The Synchronize to Database function will give you a full picture of all database differences. Remember that failure is an event, not a person. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. A man is not old until regrets take the place of dreams. The Synchronize to Database function will give you a full picture of all database differences. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution.', '2000-12-20 16:17:54.905023+08', '2000-12-03 14:35:50.905023+08', 9, 3, 't', 0, ''' '':2A,4A,6A,8A,10A,12A,14A,16A,18A,20A,22A,24A,26A,28A,31A,33A,35A,37A,39A,42A,44A,46A,48A,50A,52A,54A,57A,59A,62A,64A,66A,69A,73A,75A,77A,79A,81A,83A,85A,87A,89A,91A,93A,95A,97A,99A,102A,104A,106A,108A,110A,112A,114A,116A,118A,120A,123A,125A,127A,129A,131A,133A,135A,137A,139A,141A,143A,145A,147A,149A,152A,154A,156A,158A,160A,162A,164A,166A,170A,172A,174A,176A,178A,180A,182A,184A,187A,189A,191A,193A,195A,197A,199A,201A,203A,206A,208A,210A,212A,214A,216A,218A,220A,224A,226A,228A,230A,232A,234A,237A,239A,241A,244A,246A,248A,250A,252A,254A,256A,258A,260A,263A,265A,267A,269A,271A,273A,275A,277A,279A,281A,283A,285A,287A,290A,292A,294A,296A,298A,300A,302A,304A,306A,308A,310A,312A,314A,316A,318A,321A,323A,325A,327A,329A,331A,333A,335A,337A,339A,342A,344A,347A,349A,352A,354A,356A,358A,360A,362A,364A,366A,368A,370A,372A,374A,376A,378A,380A,383A,385A,387A,389A,391A,393A,395A,397A,399A,401A,403A,405A,408A,410A,412A,414A,416A,418A,420A,423A,425A,428A,430A,432A,435A,439A,441A,443A,445A,447A,449A,451A,453A,455A,457A,459A,461A,463A,465A,468A,470A,472A,474A,476A,478A,480A,482A,484A,486A,489A,491A,493A,495A,497A,499A,501A,503A,505A,507A,509A,511A,513A,515A,518A,520A,522A,524A,526A,528A,530A,532A,534A,536A,538A,540A,542A,544A ''access'':1058A ''acquire'':65A,431A,921A ''advanced'':38A,711A ''alerts'':278A ''alibaba'':348A ''allows'':299A,646A ''amazon'':338A,343A ''analysis'':288A ''appear'':311A ''ark'':816A ''associated'':136A ''build'':578A ''built'':812A ''caches'':55A,421A,911A ''change'':832A ''choose'':94A,460A,950A ''clear'':45A,411A,901A ''click'':72A,438A,928A ''cloud'':330A,350A ''collects'':761A ''comparing'':718A ''comparison'':512A,541A ''conceptual'':584A ''connection'':76A,163A,217A,442A,625A,637A,932A ''connections'':29A,631A,702A ''consists'':7A,680A ''control'':70A,305A,436A,926A ''cost'':562A ''cpu'':771A ''create'':652A ''custom'':506A,535A ''data'':550A,593A,720A ''database'':32A,192A,249A,404A,566A,705A,854A,874A,1011A,1031A ''databases'':332A ''deleted'':750A ''design'':568A ''developers'':371A ''differences'':876A,1033A ''direct'':1056A ''doesn'':825A ''dreams'':1002A ''easy'':386A ''edit'':656A ''editor'':644A ''effective'':564A ''enable'':494A,523A ''establish'':157A,211A,621A ''event'':889A ''execute'':667A ''failure'':883A ''feature'':121A,297A,487A,977A ''features'':353A ''flexible'':490A,519A ''flush'':58A,90A,98A,424A,456A,464A,914A,946A,954A ''function'':856A,1013A ''general'':202A,259A ''goal'':845A ''happiness'':144A ''helps'':574A ''high'':580A ''historical'':286A ''http'':242A,1079A ''information'':196A,253A ''inserted'':743A ''internal'':53A,419A,909A ''internet'':1040A ''isp'':1047A ''key'':508A,537A ''kjs9o7z5uu'':1086C ''launch'':317A ''learn'':390A ''load'':773A ''local'':167A,221A ''locks'':67A,433A,923A ''logical'':587A ''login'':194A,251A ''main'':3A,676A ''man'':982A ''manage'':328A ''matter'':177A,231A ''metrics'':282A,765A ''modeler'':552A ''models'':595A ''monitor'':266A ''navicat'':264A,319A,357A,548A,612A ''navigation'':82A,448A,938A ''needs'':381A ''new'':161A,215A,400A ''noah'':810A ''number'':731A ''objects'':34A,707A ''old'':988A ''optimism'':124A ''option'':100A,466A,956A ''pane'':84A,450A,940A ''panes'':17A,690A ''person'':896A ''physical'':591A ''picture'':868A,1025A ''place'':998A ''plan'':823A,836A ''powerful'':558A ''prepare'':663A ''privilege'':113A,479A,969A ''process'':763A ''professional'':369A ''protocol'':1071A ''provide'':367A,1054A ''provider'':1044A ''quality'':132A,582A ''queries'':671A ''raining'':806A ''ram'':776A ''rds'':345A ''records'':735A ''redshift'':340A ''regrets'':992A ''reload'':49A,111A,415A,477A,905A,967A ''remember'':879A ''remote'':169A,223A ''repository'':272A ''requires'':268A ''resources'':791A ''secure'':1067A ''select'':88A,454A,944A ''selected'':669A ''server'':171A,225A,406A,608A,1064A ''service'':1042A ''set'':188A,245A,500A,529A ''settings'':492A,521A ''shows'':727A ''snmp'':797A ''solution'':1085A ''sophisticated'':361A ''specific'':379A ''sql'':642A,658A ''ssh'':185A,238A,795A,1074A ''ssl'':181A,235A ''start'':600A ''startup'':295A ''store'':276A ''success'':140A ''successfully'':155A,209A ''synchronization'':516A,545A ''synchronize'':850A,1007A ''t'':804A,827A ''tab'':204A,261A ''tables'':60A,426A,916A ''tabs'':309A ''target'':756A ''text'':660A ''tool'':570A ''toolbars'':13A,686A ''tools'':40A,713A ''tunneling'':1069A ''updated'':746A ''usage'':778A ''use'':117A,483A,973A ''users'':394A ''using'':633A ''variety'':785A ''various'':51A,417A,907A ''wasn'':802A ''window'':5A,639A,678A,725A ''work'':25A,698A,829A ''working'':602A');
INSERT INTO "public"."post" VALUES (18, 'Prof.', 'XV1XONeS9B', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Champions keep playing until they get it right. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Creativity is intelligence having fun. The On Startup feature allows you to control what tabs appear when you launch Navicat. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. The reason why a great man is great is that he resolves to be a great man. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. You cannot save people, you can just love them. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. In the middle of winter I at last discovered that there was in me an invincible summer. What you get by achieving your goals is not as important as what you become by achieving your goals. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections.', '2008-01-06 18:33:14.905023+08', '2015-12-20 06:11:20.905023+08', 7, 3, 't', 267, ''' '':2A,4A,6A,8A,10A,12A,14A,16A,19A,22A,24A,26A,28A,30A,32A,34A,36A,39A,41A,43A,45A,48A,50A,52A,54A,56A,59A,61A,63A,65A,67A,69A,71A,73A,76A,78A,80A,82A,84A,86A,88A,90A,93A,95A,97A,99A,101A,103A,105A,107A,109A,111A,113A,115A,118A,120A,122A,124A,126A,129A,131A,133A,135A,137A,139A,141A,143A,145A,147A,149A,151A,153A,155A,157A,160A,162A,164A,166A,168A,170A,172A,174A,176A,178A,181A,183A,185A,187A,189A,192A,194A,196A,198A,201A,203A,206A,208A,210A,212A,215A,217A,219A,221A,226A,228A,230A,232A,236A,238A,240A,242A,244A,246A,248A,250A,252A,255A,257A,259A,261A,263A,265A,267A,269A,271A,273A,275A,277A,279A,281A,283A,285A,287A,290A,292A,294A,296A,298A,300A,302A,304A,307A,309A,311A,313A,315A,317A,319A,321A,323A,327A,329A,331A,333A,336A,338A,340A,344A,346A,348A,354A,356A,358A,360A,362A,364A,366A,369A,372A,374A,376A,378A,380A,382A,384A,386A,388A,390A,393A,395A,397A,399A,402A,404A,406A,408A,410A,413A,415A,417A,421A,423A,425A,431A,433A,435A,437A,439A,441A,443A,446A,449A,451A,453A,455A,457A,459A,461A,463A,465A,467A,470A,472A,474A,476A,478A,480A,482A,485A,487A,490A,492A,494A,497A,501A,503A,505A,507A,509A,511A,513A,515A,517A,519A,521A,523A,525A,527A,530A,532A,534A,536A,538A,540A,542A,544A,546A,548A,551A,553A,555A,557A,559A,561A,563A ''access'':373A,450A ''achieving'':595A,619A ''acquire'':493A ''aggregate'':673A ''allowing'':227A ''allows'':138A,165A ''appear'':150A ''authenticated'':116A ''builder'':664A,669A,675A ''building'':679A ''caches'':483A ''champions'':60A ''choose'':522A ''clear'':473A ''click'':500A ''cloud'':3A,9A,696A,717A ''communications'':204A ''connection'':504A ''connections'':17A,723A ''control'':144A,498A ''create'':171A,367A,444A ''creativity'':119A ''designed'':343A,420A ''different'':49A,55A ''directly'':657A ''discovered'':568A ''divided'':711A ''don'':324A ''easily'':365A,442A ''easy'':389A,466A ''edit'':175A ''editing'':649A ''editor'':163A,645A ''escape'':332A ''execute'':186A ''family'':44A ''feature'':136A,549A,698A ''files'':25A ''flush'':486A,518A,526A ''fun'':127A ''goals'':599A,623A ''graphical'':345A,422A ''great'':264A,270A,286A ''group'':31A ''gui'':351A,428A ''having'':125A ''hijacking'':91A ''important'':607A ''including'':207A ''information'':33A,253A,379A,456A ''intelligence'':123A ''interface'':349A,426A ''internal'':481A ''invincible'':582A ''launch'':156A ''lets'':357A,434A ''life'':320A ''listen'':233A ''locks'':495A ''logged'':688A ''love'':409A ''machines'':51A ''malicious'':98A ''man'':266A,288A ''members'':46A ''middle'':556A ''model'':23A ''navicat'':1A,37A,42A,158A,355A,432A,626A,694A,715A ''navigation'':510A,703A ''option'':528A ''organize'':370A,447A ''pane'':512A,705A ''password'':213A ''passwords'':247A ''people'':400A ''plain'':222A ''platforms'':57A ''playing'':64A ''powerful'':630A ''prepare'':182A ''privilege'':541A ''prof'':726B ''provides'':5A,628A ''queries'':20A,190A,640A,681A ''query'':643A,653A,662A ''quickly'':361A,438A ''reason'':258A ''reload'':477A,539A ''resolves'':278A ''right'':74A ''sections'':725A ''secure'':385A,462A ''select'':516A ''selected'':188A ''service'':11A ''session'':89A,108A,199A,241A ''sessions'':79A ''set'':314A ''share'':377A,454A ''sql'':161A,177A ''startup'':134A ''steal'':245A ''summer'':584A ''susceptible'':85A ''synchronizing'':15A ''t'':326A ''tables'':488A ''tabs'':148A ''takes'':102A ''telnet'':197A ''text'':179A,224A,655A ''tools'':632A ''transmitted'':218A ''use'':545A ''user'':100A,347A,424A ''username'':209A ''vacation'':303A ''various'':479A ''virtual'':29A ''visually'':683A ''way'':391A,468A ''winter'':560A ''wondering'':295A ''working'':636A ''xv1xones9b'':727C');
INSERT INTO "public"."post" VALUES (1, 'Git多分支开发注意事项', 'Git多分支开发注意事项', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/320858ac51504dbe83ee5ac50d4d5813.jpg', '

## 0x01

最近的一个项目因为Git冲突问题导致我不得不重新开一个仓库，十分恼人。

查阅资料加上自己的总结，提出以下几点注意事项，仅供参考。

1. 默认分支为 `master` 分支，仅供 `release` 使用，一般不在此分支上开发

2. 开发用分支应为 `dev` 分支，根据开发内容的不同，设置不同的后缀分支

eg. Web 全栈项目中，分成几个不同分支 `dev-server`, `dev-app`, `dev-web`

3. 其他分支必须最后合并到 `dev` 分支

4. 一般使用 `merge` 合并分支

5. 切换分支前最好将 `.gitignore` 文件中忽略的内容从本地删除，以免对提交结果造成污染

。。。

仍需补充

## 0x02

花了半个晚上时间重新想项目的名字和图标，可能还会改，目前暂定 [Okito](https://github.com/wlonestar/okito)，各方面都还没开发完善。

花了另外半个晚上时间将之前写的内容迁移到新仓库中，计划按照之前的提交顺序一点一点加代码分很多次提交的，想想还是没必要，后面的内容才是重点。

或许等我写完了能有时间再写个开发教程，哈哈。

就这样吧。

-- 完 --
', '2023-02-27 02:55:13+08', '2009-03-21 19:11:11.905023+08', 2, 3, 't', 12, '''
'':2A,4A,11A,13A,34A,36A,51A,53A,82A,84A,110A,112A,147A,149A,165A,167A,180A,182A,212A,214A,219A,221A,226A,228A,235A,237A,282A,284A,330A,332A,350A,352A,358A,360A,369A '''':1A,3A,10A,12A,33A,35A,50A,52A,81A,83A,109A,111A,146A,148A,164A,166A,179A,181A,211A,213A,218A,220A,225A,227A,234A,236A,281A,283A,329A,331A,349A,351A,357A,359A,368A '' '':7A,55A,59A,63A,67A,71A,86A,91A,95A,115A,117A,126A,133A,140A,151A,158A,162A,169A,172A,176A,184A,190A,195A,231A,257A,363A,365A ''1.'':54A ''2.'':85A ''3.'':150A ''4.'':168A ''5.'':183A ''app'':137A ''com'':268A ''dev'':93A,128A,135A,142A,160A ''git'':19A,370B,375C ''github'':266A ''gitignore'':193A ''https'':262A ''master'':61A ''merge'':174A ''okito'':259A,272A ''release'':69A ''server'':130A ''web'':116A,144A ''wlonestar'':270A ''x01'':9A ''x02'':233A ''一个'':16A,27A ''一点一点'':308A ''不同'':102A,105A,124A ''不得不'':24A ''中'':120A,197A,300A ''之前'':292A,304A ''仅供'':66A ''仅供参考'':48A ''仓库'':28A,299A ''代码'':310A ''以下几点'':45A ''使用'':72A,171A ''全栈'':118A ''内容'':100A,200A,295A,324A ''写'':293A,336A ''写个'':343A ''冲突'':20A ''几个'':123A ''分'':311A ''分成'':122A ''分支'':57A,64A,78A,89A,96A,108A,125A,153A,163A,178A,186A,372B,377C ''切换'':185A ''删除'':203A ''前'':187A ''加'':309A ''加上'':39A ''十分'':30A ''半个'':240A,288A ''可能'':251A ''合并'':156A,177A ''名字'':247A ''后缀'':107A ''后面'':322A ''图标'':249A ''多次'':313A ''完'':337A,364A ''完善'':279A ''导致'':22A ''应为'':90A ''开'':26A ''开发'':80A,87A,99A,278A,344A,373B,378C ''必要'':320A ''必须'':154A ''忽略'':198A ''总结'':42A ''恼人'':31A ''想'':244A ''想想'':317A ''或许'':333A ''提交'':207A,306A,314A ''提出'':44A ''改'':253A ''教程'':345A ''文件'':196A ''新'':298A ''方面'':276A ''时间'':242A,290A,341A ''晚上'':241A,289A ''暂定'':256A ''最后'':155A ''最好'':188A ''最近'':14A ''查阅'':37A ''污染'':210A ''没'':319A ''注意事项'':46A,374B,379C ''目前'':255A ''花'':238A,285A ''补充'':224A ''计划'':302A ''设置'':104A ''资料'':38A ''迁移'':296A ''还会'':252A ''造成'':209A ''都还没'':277A ''重新'':25A,243A ''重点'':327A ''问题'':21A ''需'':223A ''项目'':17A,119A,245A ''顺序'':307A ''默认'':56A');
INSERT INTO "public"."post" VALUES (17, 'Mr.', 'InMxj62WnR', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. What you get by achieving your goals is not as important as what you become by achieving your goals. If the plan doesn’t work, change the plan, but never the goal. Difficult circumstances serve as a textbook of life for people. You must be the change you wish to see in the world. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. A comfort zone is a beautiful place, but nothing ever grows there. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. If it scares you, it might be a good thing to try. In the middle of winter I at last discovered that there was in me an invincible summer. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. In the middle of winter I at last discovered that there was in me an invincible summer. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. It wasn’t raining when Noah built the ark. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. I destroy my enemies when I make them my friends. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP.', '2009-08-22 22:11:51.905023+08', '2022-07-12 10:45:31.905023+08', 7, 4, 't', 268, ''' '':2A,4A,9A,11A,13A,15A,17A,19A,21A,23A,25A,27A,30A,32A,34A,36A,38A,41A,43A,45A,47A,49A,51A,53A,55A,57A,59A,61A,63A,65A,67A,69A,71A,73A,75A,77A,79A,82A,84A,86A,88A,90A,92A,94A,96A,98A,100A,102A,104A,106A,108A,110A,112A,114A,116A,118A,121A,123A,125A,127A,131A,134A,136A,138A,141A,143A,145A,147A,150A,152A,154A,156A,158A,160A,162A,164A,166A,168A,171A,173A,175A,177A,179A,181A,183A,185A,187A,189A,191A,193A,196A,198A,200A,202A,204A,206A,208A,210A,212A,214A,216A,218A,220A,223A,225A,227A,229A,231A,233A,235A,237A,240A,244A,246A,248A,250A,252A,254A,256A,259A,261A,263A,265A,267A,269A,271A,273A,275A,277A,279A,281A,284A,286A,288A,290A,292A,294A,296A,299A,301A,303A,305A,307A,310A,312A,314A,319A,321A,323A,325A,327A,329A,331A,333A,335A,337A,340A,342A,344A,346A,348A,350A,352A,354A,357A,359A,361A,363A,365A,367A,369A,371A,373A,377A,379A,381A,383A,386A,388A,390A,392A,395A,397A,399A,401A,403A,405A,407A,409A,412A,414A,416A,418A,420A,422A,424A,426A,428A,430A,432A,434A,436A,438A,440A,442A,444A,447A,449A,451A,453A,455A,458A,460A,463A,465A,467A,469A,471A,473A,475A,478A,480A,482A,484A,486A,488A,490A,492A,494A,496A,498A,500A,502A,504A,506A,508A,510A,513A,515A,517A,519A,521A,523A,525A,527A,530A,534A,536A,538A,540A,542A,544A,546A,549A,551A ''achieving'':91A,115A ''agentless'':46A ''alerts'':211A,589A ''analysis'':221A,599A ''ark'':756A ''beautiful'':295A ''build'':720A ''built'':752A ''change'':135A,180A ''circumstances'':153A ''click'':243A,533A ''collects'':825A ''comfort'':287A ''comparing'':761A ''conceptual'':726A ''connection'':612A ''control'':241A,531A ''cost'':704A ''cpu'':835A ''data'':692A,735A,763A ''database'':644A,708A ''deleted'':793A ''design'':710A ''destroy'':804A ''difficult'':151A ''discovered'':429A,495A ''documents'':22A,332A ''doesn'':128A ''don'':374A ''editor'':238A,257A,278A,528A,547A,568A ''effective'':76A,706A ''enemies'':808A ''escape'':382A ''establish'':606A ''external'':236A,255A,276A,526A,545A,566A ''eyes'':454A,665A ''features'':66A ''file'':268A,558A ''friends'':820A ''general'':654A ''goal'':148A ''goals'':95A,119A ''good'':404A ''grows'':306A ''helps'':716A ''high'':722A ''historical'':219A,597A ''http'':637A ''important'':103A ''information'':648A ''inmxj62wnr'':862C ''inserted'':786A ''inspire'':474A,685A ''internet'':28A,338A ''invincible'':443A,509A ''layer'':5A,315A ''life'':165A,370A ''load'':837A ''local'':616A ''logical'':729A ''login'':646A ''make'':70A,814A ''matter'':626A ''metrics'':215A,593A,829A ''middle'':417A,483A ''modeler'':694A ''models'':737A ''monitor'':33A,199A,577A ''monitoring'':52A,74A ''navicat'':31A,197A,575A,690A ''new'':610A ''noah'':750A ''number'':774A ''open'':226A,251A,456A,516A,541A,667A ''packed'':60A ''path'':270A,560A ''people'':169A ''physical'':733A ''place'':297A ''plan'':126A,139A ''possible'':80A ''powerful'':64A,700A ''preferences'':282A,572A ''private'':20A,330A ''process'':827A ''protocol'':14A,324A ''quality'':724A ''query'':230A,520A ''raining'':746A ''ram'':840A ''records'':778A ''remote'':48A,618A ''repository'':205A,583A ''requires'':201A,579A ''resources'':855A ''safe'':39A ''scares'':391A ''secure'':1A,311A ''select'':249A,539A ''serve'':155A ''server'':50A,620A ''set'':264A,364A,554A,640A ''shows'':770A ''simple'':42A ''snmp'':861A ''sockets'':3A,313A ''ssh'':633A,859A ''ssl'':7A,317A,630A ''store'':209A,587A ''successfully'':604A ''summer'':445A,511A ''t'':130A,376A,744A ''tab'':656A ''target'':799A ''textbook'':161A ''thing'':406A ''tool'':54A,712A ''transmitting'':18A,328A ''try'':410A ''updated'':789A ''usage'':842A ''using'':232A,522A ''vacation'':353A ''variety'':849A ''wasn'':742A ''watching'':461A,672A ''window'':768A ''winter'':421A,487A ''wish'':184A ''wondering'':345A ''work'':132A ''world'':194A ''zone'':289A');
INSERT INTO "public"."post" VALUES (19, 'Mr.', 'hCSsvhw0KS', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/320858ac51504dbe83ee5ac50d4d5813.jpg', 'It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. I may not have gone where I intended to go, but I think I have ended up where I needed to be. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. Optimism is the one quality more associated with success and happiness than any other. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. All journeys have secret destinations of which the traveler is unaware. Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', '2009-07-30 16:33:58.905023+08', '2004-12-27 22:17:26.905023+08', 4, 3, 't', 422, ''' '':2A,4A,6A,8A,10A,12A,14A,16A,18A,20A,23A,25A,27A,29A,31A,34A,36A,38A,40A,42A,44A,46A,48A,50A,52A,55A,57A,59A,61A,63A,65A,67A,69A,71A,73A,75A,77A,80A,82A,84A,86A,88A,90A,92A,94A,96A,98A,102A,104A,106A,108A,110A,112A,114A,117A,119A,121A,123A,126A,128A,130A,132A,134A,136A,139A,141A,143A,145A,147A,149A,151A,153A,155A,157A,159A,161A,163A,166A,168A,170A,172A,174A,176A,178A,181A,183A,185A,187A,189A,191A,193A,195A,197A,199A,201A,203A,205A,208A,210A,212A,215A,217A,219A,221A,223A,225A,227A,229A,231A,233A,235A,238A,240A,242A,244A,246A,248A,251A,253A,255A,259A,261A,263A,265A,267A,269A,271A,273A,275A,277A,279A,281A,284A,286A,288A,290A,292A,294A,297A,299A,301A,303A,305A,307A,309A,311A,314A,316A,318A,320A,322A,324A,326A,328A,330A,332A,334A,336A,338A,340A,343A,345A,347A,349A,351A,353A,355A,357A,359A,361A,363A,366A,368A,370A,372A,374A,376A,381A,383A,385A,387A,390A,392A,394A,396A,398A,400A,402A,404A,406A,409A,412A,415A,417A,419A,421A,423A,425A,427A,430A,432A,434A,436A,438A,441A,443A,445A,447A,449A,451A,453A,455A,457A,459A,461A,463A,465A,467A,469A,471A,474A,476A,478A,480A,482A,484A,486A,488A,490A,492A,494A,497A,499A,501A,503A,505A,508A,510A,513A,515A,517A,519A,521A,523A,525A ''allow'':17A ''allows'':26A,83A,395A ''analytical'':113A ''associated'':327A ''authentication'':350A ''available'':426A ''buttons'':154A ''change'':158A ''cloud'':177A,198A ''collections'':410A ''commands'':287A ''communications'':358A ''comparing'':211A ''connection'':439A ''connections'':21A,32A,204A ''data'':91A,213A,403A ''database'':97A,470A ''deleted'':243A ''destinations'':483A ''detailed'':111A ''diagram'':148A,152A ''direct'':19A ''divided'':192A ''download'':468A ''encrypted'':356A ''ended'':66A ''er'':146A,150A ''establishing'':28A ''execute'':285A ''export'':391A,401A ''eyes'':504A ''feature'':179A ''files'':302A ''formats'':428A ''forwarding'':375A ''gone'':43A ''happiness'':335A ''hcssvhw0ks'':526C ''hosts'':364A ''http'':30A ''insecure'':386A ''inserted'':236A ''inspire'':524A ''install'':460A ''intended'':49A ''isps'':11A ''journeys'':477A ''known'':367A ''library'':464A ''list'':135A,137A ''log'':268A ''logged'':169A ''machine'':308A ''navicat'':81A,175A,196A ''navigation'':184A ''needed'':74A ''network'':282A,388A ''number'':224A ''object'':162A ''objects'':122A ''open'':506A ''openssl'':462A ''optimism'':315A ''pane'':186A ''port'':373A ''process'':115A ''program'':264A ''provides'':346A ''quality'':323A ''query'':418A ''records'':228A ''remote'':293A ''results'':420A ''schema'':103A ''secret'':481A ''sections'':206A ''secure'':252A,354A,437A ''server'':295A ''shell'':254A ''shows'':220A ''source'':472A ''ssh'':257A,371A ''strong'':348A ''success'':331A ''tab'':124A ''tables'':407A ''target'':249A ''thing'':446A ''think'':60A ''transfer'':89A ''traveler'':491A ''tunneling'':378A ''unaware'':495A ''updated'':239A ''use'':131A ''used'':5A ''view'':164A ''views'':413A ''watching'':511A ''window'':218A ''wizard'':393A');
INSERT INTO "public"."post" VALUES (16, 'Miss.', 'lTaFRipd9y', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/320858ac51504dbe83ee5ac50d4d5813.jpg', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. There is no way to happiness. Happiness is the way. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated.', '2002-02-18 01:53:29.905023+08', '2021-02-15 10:04:40.905023+08', 6, 1, 't', 342, ''' '':2A,4A,6A,8A,10A,12A,14A,16A,18A,21A,23A,26A,28A,31A,33A,35A,37A,39A,41A,43A,45A,47A,49A,51A,53A,55A,57A,59A,62A,64A,66A,68A,70A,72A,74A,76A,78A,80A,82A,84A,87A,89A,91A,93A,95A,97A,100A,102A,104A,106A,109A,111A,113A,115A,118A,120A,122A,124A,126A,128A,131A,133A,135A,137A,139A,141A,143A,145A,147A,149A,151A,153A,155A,158A,160A,162A,164A,166A,168A,170A,173A,175A,177A,179A,181A,183A,186A,188A,193A,195A,198A,200A,203A,205A,207A,209A,211A,213A,215A,217A,220A,222A,224A,226A,228A,230A,232A,234A,236A,238A,240A,242A ''advanced'':169A ''alibaba'':27A ''amazon'':17A,22A ''authenticated'':243A ''buttons'':146A ''capabilities'':184A ''change'':150A ''cloud'':9A,29A ''code'':180A,189A ''compelling'':178A ''completion'':191A ''database'':83A ''databases'':11A ''developers'':50A ''diagram'':140A,144A ''easy'':65A ''editing'':182A ''er'':138A,142A ''features'':32A,171A ''formatting'':196A ''happiness'':98A,101A ''hijacking'':218A ''learn'':69A ''list'':127A,129A ''ltafripd9y'':245C ''malicious'':225A ''manage'':7A ''miss'':244B ''navicat'':36A,159A ''needs'':60A ''new'':79A ''object'':154A ''objects'':114A ''professional'':48A ''provide'':46A ''provides'':161A ''range'':167A ''rds'':24A ''redshift'':19A ''server'':85A ''session'':216A,235A ''sessions'':206A ''smart'':187A ''sophisticated'':40A ''specific'':58A ''sql'':194A ''susceptible'':212A ''tab'':116A ''takes'':229A ''use'':123A ''user'':227A ''users'':73A ''view'':156A ''way'':94A,107A ''wide'':165A');
INSERT INTO "public"."post" VALUES (3, 'Prof.', 'ht4N43FZCO', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/IMG20221212153340.jpg', 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Typically, it is employed as an encrypted version of Telnet. Difficult circumstances serve as a textbook of life for people. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored.', '2023-02-26 06:34:35+08', '2000-09-07 17:54:29.905023+08', 4, 1, 't', 300, ''' '':2A,4A,6A,9A,11A,13A,15A,18A,20A,22A,24A,26A,28A,30A,32A,35A,37A,40A,42A,45A,47A,49A,51A,53A,56A,58A,60A,62A,64A,66A,68A,70A,73A,75A,77A,79A,81A,83A,85A,87A,89A,91A,93A,95A,98A,101A,103A,105A,107A,109A,111A,113A,115A,117A,120A,122A,124A,126A,128A,130A,132A,134A,136A,138A,141A,143A,145A,147A,149A,151A,153A,155A,157A,159A,161A,163A,165A,167A,169A,171A,173A,175A,177A,179A,181A,183A,185A,187A ''amazon'':31A,36A ''aurora'':38A ''authenticated'':96A ''azure'':54A ''circumstances'':123A ''cloud'':25A,43A,48A ''compatible'':21A ''databases'':27A ''difficult'':121A ''employed'':106A ''encrypted'':112A ''google'':46A ''hijacking'':71A ''ht4n43fzco'':190C ''include'':5A ''installation'':178A ''installed'':150A ''life'':135A ''local'':156A ''machine'':164A ''malicious'':78A ''mariadb'':10A ''microsoft'':52A ''monitor'':144A ''monitored'':1A,188A ''mysql'':7A ''navicat'':142A ''oracle'':41A ''people'':139A ''prof'':189B ''rds'':33A ''require'':172A ''serve'':125A ''server'':16A ''servers'':3A,184A ''session'':69A,88A ''sessions'':59A ''software'':176A ''sql'':14A ''susceptible'':65A ''takes'':82A ''telnet'':118A ''textbook'':131A ''typically'':99A ''user'':80A ''version'':114A ''virtual'':162A');

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
INSERT INTO "public"."post_comment" VALUES (13, '工厂只是传布首席系数呢？枕头惩处人民群众。', '2023-01-06 13:40:35.561851+08', 2, 14, 1);
INSERT INTO "public"."post_comment" VALUES (14, '所有废料娓娓当做大个子。', '2023-01-06 13:40:35.565286+08', 2, 5, 3);
INSERT INTO "public"."post_comment" VALUES (1, '撑杆捎带倾斜电话号码。', '2023-01-06 13:40:35.458871+08', 2, 14, NULL);
INSERT INTO "public"."post_comment" VALUES (2, '那些山核桃一向支解糖尿病。', '2023-01-06 13:40:35.514815+08', 2, 3, NULL);
INSERT INTO "public"."post_comment" VALUES (12, '战役平素供应针线丑八怪吗？只有屠夫探路昨天。', '2023-01-06 13:40:35.559361+08', 2, 1, NULL);
INSERT INTO "public"."post_comment" VALUES (9, '事理只管攀龙附凤口语。', '2023-01-06 13:40:35.550228+08', 2, 2, 5);
INSERT INTO "public"."post_comment" VALUES (6, '有个承诺生前习惯支票。', '2023-01-06 13:40:35.527955+08', 3, 4, NULL);
INSERT INTO "public"."post_comment" VALUES (7, '遗产宁愿极目夕阳苦瓜，宛若弹道修缮团体。', '2023-01-06 13:40:35.533436+08', 3, 6, NULL);
INSERT INTO "public"."post_comment" VALUES (15, '灯具更加牵头视差通讯员，而且装璜打官腔总行。', '2023-01-06 13:40:35.568709+08', 1, 6, 8);
INSERT INTO "public"."post_comment" VALUES (8, '有些虹吸管大致应付禾苗呀？大米阻挠味蕾。', '2023-01-06 13:40:35.546229+08', 2, 6, NULL);
INSERT INTO "public"."post_comment" VALUES (11, '妇幼暗自吝惜失物。', '2023-01-06 13:40:35.556805+08', 3, 7, NULL);
INSERT INTO "public"."post_comment" VALUES (4, '宫闱突然狂笑余暇。', '2023-01-06 13:40:35.521736+08', 4, 9, NULL);
INSERT INTO "public"."post_comment" VALUES (10, '有些思维至今官官相护秃子。', '2023-01-06 13:40:35.553859+08', 3, 10, NULL);
INSERT INTO "public"."post_comment" VALUES (5, '那些期货兴许解除甘露晚香玉。那些期货兴许解除甘露晚香玉。那些期货兴许解除甘露晚香玉。那些期货兴许解除甘露晚香玉。那些期货兴许解除甘露晚香玉。那些期货兴许解除甘露晚香玉。那些期货兴许解除甘露晚香玉。那些期货兴许解除甘露晚香玉。那些期货兴许解除甘露晚香玉。那些期货兴许解除甘露晚香玉。那些期货兴许解除甘露晚香玉。', '2023-01-06 13:40:35.524947+08', 3, 2, NULL);
INSERT INTO "public"."post_comment" VALUES (16, 'zdfcsdgfv begsrfdhgy45tr vb 34tr wedfg 3Zrettgt人格人格不少地方干部v额', '2023-02-05 15:15:52+08', 1, 2, 9);
INSERT INTO "public"."post_comment" VALUES (3, '节拍器从来灭口优先权呀？指战员上当胆囊炎。', '2023-01-06 13:40:35.518729+08', 1, 14, 1);
INSERT INTO "public"."post_comment" VALUES (17, '上的如果v我如果v额外人更换为如果v我访问过verge', '2023-02-05 20:42:14+08', 1, 2, NULL);
INSERT INTO "public"."post_comment" VALUES (18, '发v不然我体会过好吧我让他还以为他如果', '2023-02-05 20:45:56+08', 1, 2, 5);
INSERT INTO "public"."post_comment" VALUES (19, '违法所得的晚上发的是广东富豪天涯·1', '2023-02-09 14:37:19.518+08', 1, 2, NULL);
INSERT INTO "public"."post_comment" VALUES (20, '的风格萨芬', '2023-02-09 14:37:48.71+08', 1, 2, 5);
INSERT INTO "public"."post_comment" VALUES (21, '驱蚊器为恶', '2023-02-09 14:38:18.728+08', 1, 2, 9);
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
INSERT INTO "public"."post_comment" VALUES (33, '牛逼！！！！！！！', '2023-02-25 05:05:40.448+08', 10, 20, NULL);
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
INSERT INTO "public"."sys_user" VALUES (6, '我试试吧', '123', 'hhh@163.com', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/f0ee8a3c7c9638a54940382568c9dpng.png', NULL, NULL, NULL, '2023-02-07 20:33:55.584622+08', 2, NULL);
INSERT INTO "public"."sys_user" VALUES (7, '欧凯iTouch', 'aaa', 'www', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/f0ee8a3c7c9638a54940382568c9dpng.png', NULL, NULL, NULL, '2023-02-07 20:33:55.584622+08', 2, NULL);
INSERT INTO "public"."sys_user" VALUES (8, 'wsbb', '222', 'jklsdfb', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/f0ee8a3c7c9638a54940382568c9dpng.png', NULL, NULL, NULL, '2023-02-07 20:33:55.584622+08', 2, NULL);
INSERT INTO "public"."sys_user" VALUES (9, '我i聚梦空间那我', '111', 'werfwe@okito.com', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/f0ee8a3c7c9638a54940382568c9dpng.png', NULL, NULL, NULL, '2023-02-07 20:33:55.584622+08', 2, '7caaf775-8fe5-4931-a86e-3859f78a8c84');
INSERT INTO "public"."sys_user" VALUES (21, '2123', '21312', '123@12.cc', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/f0ee8a3c7c9638a54940382568c9dpng.png', NULL, NULL, NULL, '2023-02-26 12:12:14.158651+08', 2, NULL);
INSERT INTO "public"."sys_user" VALUES (3, '让覅u会被人', 'yyy', 'bbb@163.com', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/cddfd2bf-1f79-45dc-b650-2840300735d8.jpg', '为法国不快乐的顾客', 'https://mui.com', NULL, '2023-01-04 20:32:14.905023+08', 2, 'a82cd754-a2c2-4b18-bf83-48b2b0301183');
INSERT INTO "public"."sys_user" VALUES (10, '如果飞机回流泵', '123', 'test@test.com', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/f0ee8a3c7c9638a54940382568c9dpng.png', NULL, NULL, NULL, '2023-02-25 13:04:46.884187+08', 2, 'de3f194d-6490-480c-9d65-25f2c7281417');
INSERT INTO "public"."sys_user" VALUES (2, '问题官方v的', 'xxx', 'aaa@163.com', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/e590db1f-9d83-4af3-b49c-b0c9b9ffd9bc.jpg', NULL, NULL, NULL, '2023-01-04 20:31:54.905023+08', 2, 'a2fa604a-7a90-4474-b083-f0613a5160a1');
INSERT INTO "public"."sys_user" VALUES (4, 'CCC', 'zzz', 'ccc@163.com', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/b924ce27-b536-4ec0-9b3c-0f86f7779beb.jpg', '嘻嘻嘻', NULL, NULL, '2023-01-04 20:32:28.905023+08', 2, 'e2971bcf-f803-48a4-8e41-4b3e03b64613');
INSERT INTO "public"."sys_user" VALUES (19, '1211', '1212', '123@12.co', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/f0ee8a3c7c9638a54940382568c9dpng.png', NULL, NULL, NULL, '2023-02-26 12:12:14.158651+08', 2, NULL);
INSERT INTO "public"."sys_user" VALUES (20, '121212', '12121', '123@12.com', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/f0ee8a3c7c9638a54940382568c9dpng.png', NULL, NULL, NULL, '2023-02-26 12:12:14.158651+08', 2, NULL);
INSERT INTO "public"."sys_user" VALUES (1, 'wjl', '123', 'wjl@163.com', 'https://mypic-1305118058.cos.ap-hongkong.myqcloud.com/img/483850ff-576b-4941-9595-cde286070364.jpg', '哈哈哈', NULL, NULL, '2023-01-04 20:31:36.905023+08', 1, '684efe69-684e-4d52-9833-75fad6231c01');

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
INSERT INTO "public"."tag" VALUES (1, 'Mike Hughes', '4j9bjGUGc4', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. A man is not old until regrets take the place of dreams. Navicat 15 has added support for the system-wide dark mode. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Typically, it is employed as an encrypted version of Telnet. Anyone who has never made a mistake has never tried anything new. If the plan doesn’t work, change the plan, but never the goal. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Optimism is the one quality more associated with success and happiness than any other. Remember that failure is an event, not a person. The On Startup feature allows you to control what tabs appear when you launch Navicat. Actually it is just in an idea when feel oneself can achieve and cannot achieve. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. The Synchronize to Database function will give you a full picture of all database differences. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. A man is not old until regrets take the place of dreams. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Flexible settings enable you to set up a custom key for comparison and synchronization. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. The reason why a great man is great is that he resolves to be a great man. Navicat 15 has added support for the system-wide dark mode. A man’s best friends are his ten fingers. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. A man’s best friends are his ten fingers. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Anyone who has never made a mistake has never tried anything new. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Remember that failure is an event, not a person. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. A man is not old until regrets take the place of dreams. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Sometimes you win, sometimes you learn. You cannot save people, you can just love them. A man’s best friends are his ten fingers. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. You will succeed because most people are lazy. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. What you get by achieving your goals is not as important as what you become by achieving your goals. Sometimes you win, sometimes you learn. Optimism is the one quality more associated with success and happiness than any other. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. The Synchronize to Database function will give you a full picture of all database differences. A comfort zone is a beautiful place, but nothing ever grows there. The reason why a great man is great is that he resolves to be a great man. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. If it scares you, it might be a good thing to try. A query is used to extract data from the database in a readable format according to the user''s request. A man’s best friends are his ten fingers. Creativity is intelligence having fun. Optimism is the one quality more associated with success and happiness than any other. If opportunity doesn’t knock, build a door. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. The past has no power over the present moment. The past has no power over the present moment. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. If it scares you, it might be a good thing to try. Genius is an infinite capacity for taking pains. A man is not old until regrets take the place of dreams. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. A man’s best friends are his ten fingers. A query is used to extract data from the database in a readable format according to the user''s request. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Typically, it is employed as an encrypted version of Telnet. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. In the middle of winter I at last discovered that there was in me an invincible summer. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Genius is an infinite capacity for taking pains. You cannot save people, you can just love them. The reason why a great man is great is that he resolves to be a great man. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat 15 has added support for the system-wide dark mode. All journeys have secret destinations of which the traveler is unaware. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. Actually it is just in an idea when feel oneself can achieve and cannot achieve.');
INSERT INTO "public"."tag" VALUES (2, 'Mo Shihan', '7SCpgzuH2B', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you. If you wait, all that happens is you get older. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Optimism is the one quality more associated with success and happiness than any other. The Synchronize to Database function will give you a full picture of all database differences. Optimism is the one quality more associated with success and happiness than any other. The On Startup feature allows you to control what tabs appear when you launch Navicat. If it scares you, it might be a good thing to try. You must be the change you wish to see in the world. To connect to a database or schema, simply double-click it in the pane. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. How we spend our days is, of course, how we spend our lives. If the plan doesn’t work, change the plan, but never the goal. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. A man is not old until regrets take the place of dreams. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Optimism is the one quality more associated with success and happiness than any other. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. The On Startup feature allows you to control what tabs appear when you launch Navicat. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Difficult circumstances serve as a textbook of life for people. Difficult circumstances serve as a textbook of life for people. A man is not old until regrets take the place of dreams. The Synchronize to Database function will give you a full picture of all database differences. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. The On Startup feature allows you to control what tabs appear when you launch Navicat. Difficult circumstances serve as a textbook of life for people. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. In the middle of winter I at last discovered that there was in me an invincible summer. Optimism is the one quality more associated with success and happiness than any other. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Success consists of going from failure to failure without loss of enthusiasm. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Anyone who has ever made anything of importance was disciplined. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window.');
INSERT INTO "public"."tag" VALUES (4, 'Zou Zitao', 'p6Q0l7e2Rn', 'The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Genius is an infinite capacity for taking pains. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. I destroy my enemies when I make them my friends. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. It wasn’t raining when Noah built the ark. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. Flexible settings enable you to set up a custom key for comparison and synchronization. The first step is as good as half over. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. A query is used to extract data from the database in a readable format according to the user''s request. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Success consists of going from failure to failure without loss of enthusiasm. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. If you wait, all that happens is you get older. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. In the middle of winter I at last discovered that there was in me an invincible summer. Actually it is just in an idea when feel oneself can achieve and cannot achieve. The reason why a great man is great is that he resolves to be a great man. You will succeed because most people are lazy. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. If the plan doesn’t work, change the plan, but never the goal. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. A man’s best friends are his ten fingers. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. A man is not old until regrets take the place of dreams. A query is used to extract data from the database in a readable format according to the user''s request. The first step is as good as half over. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. I destroy my enemies when I make them my friends. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab.');
INSERT INTO "public"."tag" VALUES (5, 'Tony Boyd', 'rwD8ld48S5', 'The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Genius is an infinite capacity for taking pains. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. In the middle of winter I at last discovered that there was in me an invincible summer. You cannot save people, you can just love them. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. If it scares you, it might be a good thing to try. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. It wasn’t raining when Noah built the ark. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Difficult circumstances serve as a textbook of life for people. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. You must be the change you wish to see in the world.');
INSERT INTO "public"."tag" VALUES (6, 'Gu Jiehong', 'GMWyEY8TeW', 'Anyone who has ever made anything of importance was disciplined. What you get by achieving your goals is not as important as what you become by achieving your goals. If opportunity doesn’t knock, build a door. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. The Synchronize to Database function will give you a full picture of all database differences. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. The past has no power over the present moment. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. How we spend our days is, of course, how we spend our lives. A man is not old until regrets take the place of dreams. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. The Synchronize to Database function will give you a full picture of all database differences. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. You will succeed because most people are lazy. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. A man’s best friends are his ten fingers. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. The reason why a great man is great is that he resolves to be a great man. Success consists of going from failure to failure without loss of enthusiasm. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. If it scares you, it might be a good thing to try. You must be the change you wish to see in the world. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Creativity is intelligence having fun. Anyone who has ever made anything of importance was disciplined. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Remember that failure is an event, not a person. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. You cannot save people, you can just love them. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. All journeys have secret destinations of which the traveler is unaware. A comfort zone is a beautiful place, but nothing ever grows there. I will greet this day with love in my heart. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. It wasn’t raining when Noah built the ark. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. A man’s best friends are his ten fingers. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Optimism is the one quality more associated with success and happiness than any other. Difficult circumstances serve as a textbook of life for people. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. In the middle of winter I at last discovered that there was in me an invincible summer. Champions keep playing until they get it right. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Typically, it is employed as an encrypted version of Telnet. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Success consists of going from failure to failure without loss of enthusiasm. A comfort zone is a beautiful place, but nothing ever grows there. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences.');
INSERT INTO "public"."tag" VALUES (7, 'Wada Aoi', 'C5lxmOJ6p9', 'Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Navicat 15 has added support for the system-wide dark mode. In the middle of winter I at last discovered that there was in me an invincible summer. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. You cannot save people, you can just love them. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. In the middle of winter I at last discovered that there was in me an invincible summer. If it scares you, it might be a good thing to try. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. I destroy my enemies when I make them my friends. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. The past has no power over the present moment. The first step is as good as half over. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Creativity is intelligence having fun. A query is used to extract data from the database in a readable format according to the user''s request. If the plan doesn’t work, change the plan, but never the goal. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Anyone who has never made a mistake has never tried anything new. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. I will greet this day with love in my heart. I will greet this day with love in my heart. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. Champions keep playing until they get it right. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. If it scares you, it might be a good thing to try. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. If you wait, all that happens is you get older. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Anyone who has never made a mistake has never tried anything new. Champions keep playing until they get it right. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. There is no way to happiness. Happiness is the way. I will greet this day with love in my heart. Difficult circumstances serve as a textbook of life for people. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Actually it is just in an idea when feel oneself can achieve and cannot achieve. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. How we spend our days is, of course, how we spend our lives. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. I may not have gone where I intended to go, but I think I have ended up where I needed to be. A query is used to extract data from the database in a readable format according to the user''s request. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. The first step is as good as half over. Anyone who has never made a mistake has never tried anything new. There is no way to happiness. Happiness is the way. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Creativity is intelligence having fun. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. If you wait, all that happens is you get older. If the plan doesn’t work, change the plan, but never the goal. Actually it is just in an idea when feel oneself can achieve and cannot achieve. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. What you get by achieving your goals is not as important as what you become by achieving your goals. If opportunity doesn’t knock, build a door. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. The On Startup feature allows you to control what tabs appear when you launch Navicat. Remember that failure is an event, not a person. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. A query is used to extract data from the database in a readable format according to the user''s request. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. A query is used to extract data from the database in a readable format according to the user''s request. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Anyone who has never made a mistake has never tried anything new. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more.');
INSERT INTO "public"."tag" VALUES (8, 'Ying On Kay', 'ToKgACubKa', 'Navicat 15 has added support for the system-wide dark mode. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. The Synchronize to Database function will give you a full picture of all database differences. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.');
INSERT INTO "public"."tag" VALUES (9, 'Kong Wai Man', 'u3uCSTjxVH', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. To connect to a database or schema, simply double-click it in the pane. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. How we spend our days is, of course, how we spend our lives. To connect to a database or schema, simply double-click it in the pane. All journeys have secret destinations of which the traveler is unaware. Sometimes you win, sometimes you learn. Flexible settings enable you to set up a custom key for comparison and synchronization. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. A man is not old until regrets take the place of dreams. The On Startup feature allows you to control what tabs appear when you launch Navicat. There is no way to happiness. Happiness is the way. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Optimism is the one quality more associated with success and happiness than any other. A comfort zone is a beautiful place, but nothing ever grows there. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Difficult circumstances serve as a textbook of life for people. You must be the change you wish to see in the world. Champions keep playing until they get it right. SSH serves to prevent such vulnerabilities and allows you to access a remote server''s shell without compromising security. The Synchronize to Database function will give you a full picture of all database differences. You cannot save people, you can just love them. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. The Synchronize to Database function will give you a full picture of all database differences. Genius is an infinite capacity for taking pains. If it scares you, it might be a good thing to try. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. A query is used to extract data from the database in a readable format according to the user''s request. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. You will succeed because most people are lazy. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. Success consists of going from failure to failure without loss of enthusiasm. In the middle of winter I at last discovered that there was in me an invincible summer. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. It wasn’t raining when Noah built the ark. What you get by achieving your goals is not as important as what you become by achieving your goals. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. In the middle of winter I at last discovered that there was in me an invincible summer. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. If it scares you, it might be a good thing to try. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. The first step is as good as half over. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. The reason why a great man is great is that he resolves to be a great man. Sometimes you win, sometimes you learn. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Difficult circumstances serve as a textbook of life for people. If you wait, all that happens is you get older. Flexible settings enable you to set up a custom key for comparison and synchronization. Difficult circumstances serve as a textbook of life for people. You cannot save people, you can just love them. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Navicat 15 has added support for the system-wide dark mode. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. If the plan doesn’t work, change the plan, but never the goal. I will greet this day with love in my heart. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Anyone who has never made a mistake has never tried anything new. I may not have gone where I intended to go, but I think I have ended up where I needed to be. If opportunity doesn’t knock, build a door. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. A man is not old until regrets take the place of dreams. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Champions keep playing until they get it right. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. I may not have gone where I intended to go, but I think I have ended up where I needed to be. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. If the plan doesn’t work, change the plan, but never the goal. A man is not old until regrets take the place of dreams. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Navicat 15 has added support for the system-wide dark mode. Success consists of going from failure to failure without loss of enthusiasm. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats.');
INSERT INTO "public"."tag" VALUES (10, 'Ono Ryota', 'qdHlPQZn99', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. The past has no power over the present moment. It wasn’t raining when Noah built the ark. If it scares you, it might be a good thing to try. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Anyone who has never made a mistake has never tried anything new. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Flexible settings enable you to set up a custom key for comparison and synchronization. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. A comfort zone is a beautiful place, but nothing ever grows there. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. A man is not old until regrets take the place of dreams. Success consists of going from failure to failure without loss of enthusiasm. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. There is no way to happiness. Happiness is the way. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. If it scares you, it might be a good thing to try. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.');
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
a 关注了 b';

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
-- Function structure for jieba_end
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."jieba_end"(internal);
CREATE OR REPLACE FUNCTION "public"."jieba_end"(internal)
  RETURNS "pg_catalog"."void" AS '$libdir/pg_jieba', 'jieba_end'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for jieba_gettoken
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."jieba_gettoken"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."jieba_gettoken"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_jieba', 'jieba_gettoken'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for jieba_hmm_start
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."jieba_hmm_start"(internal, int4);
CREATE OR REPLACE FUNCTION "public"."jieba_hmm_start"(internal, int4)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_jieba', 'jieba_hmm_start'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for jieba_lextype
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."jieba_lextype"(internal);
CREATE OR REPLACE FUNCTION "public"."jieba_lextype"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_jieba', 'jieba_lextype'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for jieba_mp_start
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."jieba_mp_start"(internal, int4);
CREATE OR REPLACE FUNCTION "public"."jieba_mp_start"(internal, int4)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_jieba', 'jieba_mp_start'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for jieba_query_start
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."jieba_query_start"(internal, int4);
CREATE OR REPLACE FUNCTION "public"."jieba_query_start"(internal, int4)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_jieba', 'jieba_query_start'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for jieba_reload_dict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."jieba_reload_dict"();
CREATE OR REPLACE FUNCTION "public"."jieba_reload_dict"()
  RETURNS "pg_catalog"."void" AS '$libdir/pg_jieba', 'jieba_reload_dict'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for jieba_start
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."jieba_start"(internal, int4);
CREATE OR REPLACE FUNCTION "public"."jieba_start"(internal, int4)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_jieba', 'jieba_start'
  LANGUAGE c VOLATILE STRICT
  COST 1;

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
-- Indexes structure for table pin
-- ----------------------------
CREATE INDEX "pin_fts_gin_index" ON "public"."pin" USING gin (
  "fts" "pg_catalog"."tsvector_ops"
);

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
-- Indexes structure for table post
-- ----------------------------
CREATE INDEX "post_fts_gin_index" ON "public"."post" USING gin (
  "fts" "pg_catalog"."tsvector_ops"
);

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

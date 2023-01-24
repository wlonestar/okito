/*
 Navicat Premium Data Transfer

 Source Server         : postgresql_local
 Source Server Type    : PostgreSQL
 Source Server Version : 150001 (150001)
 Source Host           : localhost:5432
 Source Catalog        : virosa
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 150001 (150001)
 File Encoding         : 65001

 Date: 06/01/2023 15:37:29
*/

-- ----------------------------
-- Sequence structure for category_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."category_id_seq";
CREATE SEQUENCE "public"."category_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for collection_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."collection_id_seq";
CREATE SEQUENCE "public"."collection_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for column_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."column_id_seq";
CREATE SEQUENCE "public"."column_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for pin_author_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pin_author_id_seq";
CREATE SEQUENCE "public"."pin_author_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for pin_comment_author_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pin_comment_author_id_seq";
CREATE SEQUENCE "public"."pin_comment_author_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for pin_comment_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pin_comment_id_seq";
CREATE SEQUENCE "public"."pin_comment_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for pin_comment_like_comment_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pin_comment_like_comment_id_seq";
CREATE SEQUENCE "public"."pin_comment_like_comment_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for pin_comment_like_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pin_comment_like_user_id_seq";
CREATE SEQUENCE "public"."pin_comment_like_user_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for pin_comment_parent_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pin_comment_parent_id_seq";
CREATE SEQUENCE "public"."pin_comment_parent_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for pin_comment_pin_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pin_comment_pin_id_seq";
CREATE SEQUENCE "public"."pin_comment_pin_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for pin_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pin_id_seq";
CREATE SEQUENCE "public"."pin_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for pin_like_pin_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pin_like_pin_id_seq";
CREATE SEQUENCE "public"."pin_like_pin_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for pin_like_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pin_like_user_id_seq";
CREATE SEQUENCE "public"."pin_like_user_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for post_author_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_author_id_seq";
CREATE SEQUENCE "public"."post_author_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for post_cate_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_cate_id_seq";
CREATE SEQUENCE "public"."post_cate_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for post_collection_collect_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_collection_collect_id_seq";
CREATE SEQUENCE "public"."post_collection_collect_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for post_collection_post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_collection_post_id_seq";
CREATE SEQUENCE "public"."post_collection_post_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for post_column_column_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_column_column_id_seq";
CREATE SEQUENCE "public"."post_column_column_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for post_column_post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_column_post_id_seq";
CREATE SEQUENCE "public"."post_column_post_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for post_comment_author_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_comment_author_id_seq";
CREATE SEQUENCE "public"."post_comment_author_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for post_comment_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_comment_id_seq";
CREATE SEQUENCE "public"."post_comment_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for post_comment_like_comment_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_comment_like_comment_id_seq";
CREATE SEQUENCE "public"."post_comment_like_comment_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for post_comment_like_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_comment_like_user_id_seq";
CREATE SEQUENCE "public"."post_comment_like_user_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for post_comment_parent_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_comment_parent_id_seq";
CREATE SEQUENCE "public"."post_comment_parent_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for post_comment_post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_comment_post_id_seq";
CREATE SEQUENCE "public"."post_comment_post_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_id_seq";
CREATE SEQUENCE "public"."post_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for post_like_post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_like_post_id_seq";
CREATE SEQUENCE "public"."post_like_post_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for post_like_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_like_user_id_seq";
CREATE SEQUENCE "public"."post_like_user_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for post_tag_post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_tag_post_id_seq";
CREATE SEQUENCE "public"."post_tag_post_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for post_tag_tag_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."post_tag_tag_id_seq";
CREATE SEQUENCE "public"."post_tag_tag_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."role_id_seq";
CREATE SEQUENCE "public"."role_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for sys_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_user_id_seq";
CREATE SEQUENCE "public"."sys_user_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for sys_user_role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_user_role_id_seq";
CREATE SEQUENCE "public"."sys_user_role_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for tag_follow_follower_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tag_follow_follower_id_seq";
CREATE SEQUENCE "public"."tag_follow_follower_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for tag_follow_tag_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tag_follow_tag_id_seq";
CREATE SEQUENCE "public"."tag_follow_tag_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for tag_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tag_id_seq";
CREATE SEQUENCE "public"."tag_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for user_collection_collect_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."user_collection_collect_id_seq";
CREATE SEQUENCE "public"."user_collection_collect_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for user_collection_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."user_collection_user_id_seq";
CREATE SEQUENCE "public"."user_collection_user_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for user_column_column_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."user_column_column_id_seq";
CREATE SEQUENCE "public"."user_column_column_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for user_column_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."user_column_user_id_seq";
CREATE SEQUENCE "public"."user_column_user_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for user_follow_followed_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."user_follow_followed_id_seq";
CREATE SEQUENCE "public"."user_follow_followed_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Sequence structure for user_follow_follower_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."user_follow_follower_id_seq";
CREATE SEQUENCE "public"."user_follow_follower_id_seq"
    INCREMENT 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS "public"."category";
CREATE TABLE "public"."category"
(
    "id"          int8                                        NOT NULL DEFAULT nextval('category_id_seq'::regclass),
    "name"        varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
    "cover"       varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
    "description" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS "public"."collection";
CREATE TABLE "public"."collection"
(
    "id"          int8                                        NOT NULL DEFAULT nextval('collection_id_seq'::regclass),
    "name"        varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
    "cover"       varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
    "description" text COLLATE "pg_catalog"."default"         NOT NULL,
    "create_time" timestamptz(6)                              NOT NULL,
    "update_time" timestamptz(6)                              NOT NULL
)
;

-- ----------------------------
-- Table structure for column
-- ----------------------------
DROP TABLE IF EXISTS "public"."column";
CREATE TABLE "public"."column"
(
    "id"          int8                                        NOT NULL DEFAULT nextval('column_id_seq'::regclass),
    "name"        varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
    "cover"       varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
    "description" text COLLATE "pg_catalog"."default"         NOT NULL,
    "create_time" timestamptz(6)                              NOT NULL,
    "update_time" timestamptz(6)                              NOT NULL
)
;

-- ----------------------------
-- Table structure for pin
-- ----------------------------
DROP TABLE IF EXISTS "public"."pin";
CREATE TABLE "public"."pin"
(
    "id"          int8                                NOT NULL DEFAULT nextval('pin_id_seq'::regclass),
    "content"     text COLLATE "pg_catalog"."default" NOT NULL,
    "create_time" timestamptz(6)                      NOT NULL,
    "update_time" timestamptz(6)                      NOT NULL,
    "author_id"   int8                                NOT NULL DEFAULT nextval('pin_author_id_seq'::regclass)
)
;

-- ----------------------------
-- Table structure for pin_comment
-- ----------------------------
DROP TABLE IF EXISTS "public"."pin_comment";
CREATE TABLE "public"."pin_comment"
(
    "id"          int8                                NOT NULL DEFAULT nextval('pin_comment_id_seq'::regclass),
    "content"     text COLLATE "pg_catalog"."default" NOT NULL,
    "upload_time" timestamptz(6)                      NOT NULL,
    "author_id"   int8                                NOT NULL DEFAULT nextval('pin_comment_author_id_seq'::regclass),
    "pin_id"      int8                                NOT NULL DEFAULT nextval('pin_comment_pin_id_seq'::regclass),
    "parent_id"   int8                                         DEFAULT null
)
;

-- ----------------------------
-- Table structure for pin_comment_like
-- ----------------------------
DROP TABLE IF EXISTS "public"."pin_comment_like";
CREATE TABLE "public"."pin_comment_like"
(
    "comment_id" int8 NOT NULL DEFAULT nextval('pin_comment_like_comment_id_seq'::regclass),
    "user_id"    int8 NOT NULL DEFAULT nextval('pin_comment_like_user_id_seq'::regclass)
)
;

-- ----------------------------
-- Table structure for pin_like
-- ----------------------------
DROP TABLE IF EXISTS "public"."pin_like";
CREATE TABLE "public"."pin_like"
(
    "pin_id"  int8 NOT NULL DEFAULT nextval('pin_like_pin_id_seq'::regclass),
    "user_id" int8 NOT NULL DEFAULT nextval('pin_like_user_id_seq'::regclass)
)
;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS "public"."post";
CREATE TABLE "public"."post"
(
    "id"          int8                                         NOT NULL DEFAULT nextval('post_id_seq'::regclass),
    "title"       varchar(255) COLLATE "pg_catalog"."default"  NOT NULL,
    "summary"     varchar(1000) COLLATE "pg_catalog"."default" NOT NULL,
    "cover"       varchar(255) COLLATE "pg_catalog"."default"  NOT NULL,
    "content"     text COLLATE "pg_catalog"."default"          NOT NULL,
    "create_time" timestamptz(6)                               NOT NULL,
    "update_time" timestamptz(6)                               NOT NULL,
    "cate_id"     int8                                         NOT NULL DEFAULT nextval('post_cate_id_seq'::regclass),
    "author_id"   int8                                         NOT NULL DEFAULT nextval('post_author_id_seq'::regclass)
)
;

-- ----------------------------
-- Table structure for post_collection
-- ----------------------------
DROP TABLE IF EXISTS "public"."post_collection";
CREATE TABLE "public"."post_collection"
(
    "post_id"    int8 NOT NULL DEFAULT nextval('post_collection_post_id_seq'::regclass),
    "collect_id" int8 NOT NULL DEFAULT nextval('post_collection_collect_id_seq'::regclass)
)
;

-- ----------------------------
-- Table structure for post_column
-- ----------------------------
DROP TABLE IF EXISTS "public"."post_column";
CREATE TABLE "public"."post_column"
(
    "post_id"   int8 NOT NULL DEFAULT nextval('post_column_post_id_seq'::regclass),
    "column_id" int8 NOT NULL DEFAULT nextval('post_column_column_id_seq'::regclass)
)
;

-- ----------------------------
-- Table structure for post_comment
-- ----------------------------
DROP TABLE IF EXISTS "public"."post_comment";
CREATE TABLE "public"."post_comment"
(
    "id"          int8                                NOT NULL DEFAULT nextval('post_comment_id_seq'::regclass),
    "content"     text COLLATE "pg_catalog"."default" NOT NULL,
    "upload_time" timestamptz(6)                      NOT NULL,
    "author_id"   int8                                NOT NULL DEFAULT nextval('post_comment_author_id_seq'::regclass),
    "post_id"     int8                                NOT NULL DEFAULT nextval('post_comment_post_id_seq'::regclass),
    "parent_id"   int8                                         DEFAULT null
)
;

-- ----------------------------
-- Table structure for post_comment_like
-- ----------------------------
DROP TABLE IF EXISTS "public"."post_comment_like";
CREATE TABLE "public"."post_comment_like"
(
    "comment_id" int8 NOT NULL DEFAULT nextval('post_comment_like_comment_id_seq'::regclass),
    "user_id"    int8 NOT NULL DEFAULT nextval('post_comment_like_user_id_seq'::regclass)
)
;

-- ----------------------------
-- Table structure for post_like
-- ----------------------------
DROP TABLE IF EXISTS "public"."post_like";
CREATE TABLE "public"."post_like"
(
    "post_id" int8 NOT NULL DEFAULT nextval('post_like_post_id_seq'::regclass),
    "user_id" int8 NOT NULL DEFAULT nextval('post_like_user_id_seq'::regclass)
)
;

-- ----------------------------
-- Table structure for post_tag
-- ----------------------------
DROP TABLE IF EXISTS "public"."post_tag";
CREATE TABLE "public"."post_tag"
(
    "post_id" int8 NOT NULL DEFAULT nextval('post_tag_post_id_seq'::regclass),
    "tag_id"  int8 NOT NULL DEFAULT nextval('post_tag_tag_id_seq'::regclass)
)
;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS "public"."role";
CREATE TABLE "public"."role"
(
    "id"   int8                                        NOT NULL DEFAULT nextval('role_id_seq'::regclass),
    "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user";
CREATE TABLE "public"."sys_user"
(
    "id"        int8                                        NOT NULL DEFAULT nextval('sys_user_id_seq'::regclass),
    "username"  varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
    "password"  varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
    "email"     varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
    "avatar"    varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
    "bio"       varchar(255) COLLATE "pg_catalog"."default",
    "homepage"  varchar(255) COLLATE "pg_catalog"."default",
    "intro"     varchar(255) COLLATE "pg_catalog"."default",
    "join_time" timestamptz(6)                              NOT NULL,
    "role_id"   int8                                        NOT NULL DEFAULT nextval('sys_user_role_id_seq'::regclass)
)
;

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS "public"."tag";
CREATE TABLE "public"."tag"
(
    "id"          int8                                        NOT NULL DEFAULT nextval('tag_id_seq'::regclass),
    "name"        varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
    "cover"       varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
    "description" text COLLATE "pg_catalog"."default"         NOT NULL
)
;

-- ----------------------------
-- Table structure for tag_follow
-- ----------------------------
DROP TABLE IF EXISTS "public"."tag_follow";
CREATE TABLE "public"."tag_follow"
(
    "tag_id"      int8 NOT NULL DEFAULT nextval('tag_follow_tag_id_seq'::regclass),
    "follower_id" int8 NOT NULL DEFAULT nextval('tag_follow_follower_id_seq'::regclass)
)
;

-- ----------------------------
-- Table structure for user_collection
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_collection";
CREATE TABLE "public"."user_collection"
(
    "user_id"    int8 NOT NULL DEFAULT nextval('user_collection_user_id_seq'::regclass),
    "collect_id" int8 NOT NULL DEFAULT nextval('user_collection_collect_id_seq'::regclass),
    "type"       int2 NOT NULL
)
;
COMMENT ON COLUMN "public"."user_collection"."type" IS '1 -> create private collection
2 -> create public collection
3 -> collect other''s collection';

-- ----------------------------
-- Table structure for user_column
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_column";
CREATE TABLE "public"."user_column"
(
    "user_id"   int8 NOT NULL DEFAULT nextval('user_column_user_id_seq'::regclass),
    "column_id" int8 NOT NULL DEFAULT nextval('user_column_column_id_seq'::regclass),
    "type"      int2 NOT NULL
)
;
COMMENT ON COLUMN "public"."user_column"."type" IS '1 -> create self column
2 -> follow other''s column';

-- ----------------------------
-- Table structure for user_follow
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_follow";
CREATE TABLE "public"."user_follow"
(
    "follower_id" int8 NOT NULL DEFAULT nextval('user_follow_follower_id_seq'::regclass),
    "followed_id" int8 NOT NULL DEFAULT nextval('user_follow_followed_id_seq'::regclass)
)
;
COMMENT ON TABLE "public"."user_follow" IS 'follower -> followed
a -> b
a follow b';

-- ----------------------------
-- View structure for pin_comment_view
-- ----------------------------
DROP VIEW IF EXISTS "public"."pin_comment_view";
CREATE VIEW "public"."pin_comment_view" AS
SELECT p.id,
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
         LEFT JOIN (SELECT pin_comment_like.comment_id,
                           count(*) AS like_num
                    FROM pin_comment_like
                    GROUP BY pin_comment_like.comment_id) l ON p.id = l.comment_id;

-- ----------------------------
-- View structure for post_view
-- ----------------------------
DROP VIEW IF EXISTS "public"."post_view";
CREATE VIEW "public"."post_view" AS
SELECT p.id,
       p.title,
       p.summary,
       p.cover,
       p.content,
       p.create_time,
       p.update_time,
       p.cate_id,
       p.author_id,
       CASE
           WHEN l.like_num IS NULL THEN 0::bigint
           ELSE l.like_num
           END AS like_num
FROM post p
         LEFT JOIN (SELECT post_like.post_id,
                           count(*) AS like_num
                    FROM post_like
                    GROUP BY post_like.post_id) l ON p.id = l.post_id;

-- ----------------------------
-- View structure for post_comment_view
-- ----------------------------
DROP VIEW IF EXISTS "public"."post_comment_view";
CREATE VIEW "public"."post_comment_view" AS
SELECT p.id,
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
         LEFT JOIN (SELECT post_comment_like.comment_id,
                           count(*) AS like_num
                    FROM post_comment_like
                    GROUP BY post_comment_like.comment_id) l ON p.id = l.comment_id;

-- ----------------------------
-- View structure for tag_view
-- ----------------------------
DROP VIEW IF EXISTS "public"."tag_view";
CREATE VIEW "public"."tag_view" AS
SELECT t.id,
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
         LEFT JOIN (SELECT tag_follow.tag_id AS tag_a,
                           count(*)          AS follow_num
                    FROM tag_follow
                    GROUP BY tag_follow.tag_id) follow ON t.id = follow.tag_a
         LEFT JOIN (SELECT post_tag.tag_id AS tag_b,
                           count(*)        AS post_num
                    FROM post_tag
                    GROUP BY post_tag.tag_id) pt ON t.id = pt.tag_b;

-- ----------------------------
-- View structure for pin_view
-- ----------------------------
DROP VIEW IF EXISTS "public"."pin_view";
CREATE VIEW "public"."pin_view" AS
SELECT p.id,
       p.content,
       p.create_time,
       p.update_time,
       p.author_id,
       CASE
           WHEN l.like_num IS NULL THEN 0::bigint
           ELSE l.like_num
           END AS like_num
FROM pin p
         LEFT JOIN (SELECT pin_like.pin_id,
                           count(*) AS like_num
                    FROM pin_like
                    GROUP BY pin_like.pin_id) l ON p.id = l.pin_id;

-- ----------------------------
-- View structure for user_view
-- ----------------------------
DROP VIEW IF EXISTS "public"."user_view";
CREATE VIEW "public"."user_view" AS
SELECT u.id,
       u.username,
       u.password,
       u.email,
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
           WHEN p.post_like_num IS NULL THEN 0::numeric
           ELSE p.post_like_num
           END AS post_like_num
FROM sys_user u
         LEFT JOIN (SELECT user_follow.follower_id,
                           count(*) AS followed_num
                    FROM user_follow
                    GROUP BY user_follow.follower_id) followed ON u.id = followed.follower_id
         LEFT JOIN (SELECT user_follow.followed_id,
                           count(*) AS follower_num
                    FROM user_follow
                    GROUP BY user_follow.followed_id) follower ON u.id = follower.followed_id
         LEFT JOIN (SELECT post_view.author_id,
                           sum(post_view.like_num) AS post_like_num
                    FROM post_view
                    GROUP BY post_view.author_id) p ON u.id = p.author_id;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."category_id_seq"
    OWNED BY "public"."category"."id";
SELECT setval('"public"."category_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."collection_id_seq"
    OWNED BY "public"."collection"."id";
SELECT setval('"public"."collection_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."column_id_seq"
    OWNED BY "public"."column"."id";
SELECT setval('"public"."column_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."pin_author_id_seq"
    OWNED BY "public"."pin"."author_id";
SELECT setval('"public"."pin_author_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."pin_comment_author_id_seq"
    OWNED BY "public"."pin_comment"."author_id";
SELECT setval('"public"."pin_comment_author_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."pin_comment_id_seq"
    OWNED BY "public"."pin_comment"."id";
SELECT setval('"public"."pin_comment_id_seq"', 31, true);

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
ALTER SEQUENCE "public"."pin_comment_parent_id_seq"
    OWNED BY "public"."pin_comment"."parent_id";
SELECT setval('"public"."pin_comment_parent_id_seq"', 15, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."pin_comment_pin_id_seq"
    OWNED BY "public"."pin_comment"."pin_id";
SELECT setval('"public"."pin_comment_pin_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."pin_id_seq"
    OWNED BY "public"."pin"."id";
SELECT setval('"public"."pin_id_seq"', 1, false);

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
ALTER SEQUENCE "public"."post_author_id_seq"
    OWNED BY "public"."post"."author_id";
SELECT setval('"public"."post_author_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."post_cate_id_seq"
    OWNED BY "public"."post"."cate_id";
SELECT setval('"public"."post_cate_id_seq"', 1, false);

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
ALTER SEQUENCE "public"."post_comment_author_id_seq"
    OWNED BY "public"."post_comment"."author_id";
SELECT setval('"public"."post_comment_author_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."post_comment_id_seq"
    OWNED BY "public"."post_comment"."id";
SELECT setval('"public"."post_comment_id_seq"', 15, true);

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
ALTER SEQUENCE "public"."post_comment_parent_id_seq"
    OWNED BY "public"."post_comment"."parent_id";
SELECT setval('"public"."post_comment_parent_id_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."post_comment_post_id_seq"
    OWNED BY "public"."post_comment"."post_id";
SELECT setval('"public"."post_comment_post_id_seq"', 1, false);

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
SELECT setval('"public"."sys_user_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_user_role_id_seq"
    OWNED BY "public"."sys_user"."role_id";
SELECT setval('"public"."sys_user_role_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."tag_follow_follower_id_seq"
    OWNED BY "public"."tag_follow"."follower_id";
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
    OWNED BY "public"."user_collection"."collect_id";
SELECT setval('"public"."user_collection_collect_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."user_collection_user_id_seq"
    OWNED BY "public"."user_collection"."user_id";
SELECT setval('"public"."user_collection_user_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."user_column_column_id_seq"
    OWNED BY "public"."user_column"."column_id";
SELECT setval('"public"."user_column_column_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."user_column_user_id_seq"
    OWNED BY "public"."user_column"."user_id";
SELECT setval('"public"."user_column_user_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."user_follow_followed_id_seq"
    OWNED BY "public"."user_follow"."followed_id";
SELECT setval('"public"."user_follow_followed_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."user_follow_follower_id_seq"
    OWNED BY "public"."user_follow"."follower_id";
SELECT setval('"public"."user_follow_follower_id_seq"', 1, false);

-- ----------------------------
-- Primary Key structure for table category
-- ----------------------------
ALTER TABLE "public"."category"
    ADD CONSTRAINT "category_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table collection
-- ----------------------------
ALTER TABLE "public"."collection"
    ADD CONSTRAINT "collection_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table column
-- ----------------------------
ALTER TABLE "public"."column"
    ADD CONSTRAINT "column_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pin
-- ----------------------------
ALTER TABLE "public"."pin"
    ADD CONSTRAINT "pin_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pin_comment
-- ----------------------------
ALTER TABLE "public"."pin_comment"
    ADD CONSTRAINT "pin_comment_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pin_comment_like
-- ----------------------------
ALTER TABLE "public"."pin_comment_like"
    ADD CONSTRAINT "pin_comment_like_pkey" PRIMARY KEY ("comment_id", "user_id");

-- ----------------------------
-- Primary Key structure for table pin_like
-- ----------------------------
ALTER TABLE "public"."pin_like"
    ADD CONSTRAINT "pin_like_pkey" PRIMARY KEY ("pin_id", "user_id");

-- ----------------------------
-- Primary Key structure for table post
-- ----------------------------
ALTER TABLE "public"."post"
    ADD CONSTRAINT "post_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table post_collection
-- ----------------------------
ALTER TABLE "public"."post_collection"
    ADD CONSTRAINT "post_collection_pkey" PRIMARY KEY ("post_id", "collect_id");

-- ----------------------------
-- Primary Key structure for table post_column
-- ----------------------------
ALTER TABLE "public"."post_column"
    ADD CONSTRAINT "post_column_pkey" PRIMARY KEY ("post_id", "column_id");

-- ----------------------------
-- Primary Key structure for table post_comment
-- ----------------------------
ALTER TABLE "public"."post_comment"
    ADD CONSTRAINT "post_comment_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table post_comment_like
-- ----------------------------
ALTER TABLE "public"."post_comment_like"
    ADD CONSTRAINT "post_comment_like_pkey" PRIMARY KEY ("comment_id", "user_id");

-- ----------------------------
-- Primary Key structure for table post_like
-- ----------------------------
ALTER TABLE "public"."post_like"
    ADD CONSTRAINT "post_like_pkey" PRIMARY KEY ("post_id", "user_id");

-- ----------------------------
-- Primary Key structure for table post_tag
-- ----------------------------
ALTER TABLE "public"."post_tag"
    ADD CONSTRAINT "post_tag_pkey" PRIMARY KEY ("post_id", "tag_id");

-- ----------------------------
-- Primary Key structure for table role
-- ----------------------------
ALTER TABLE "public"."role"
    ADD CONSTRAINT "role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "public"."sys_user"
    ADD CONSTRAINT "sys_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tag
-- ----------------------------
ALTER TABLE "public"."tag"
    ADD CONSTRAINT "tag_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tag_follow
-- ----------------------------
ALTER TABLE "public"."tag_follow"
    ADD CONSTRAINT "tag_follow_pkey" PRIMARY KEY ("tag_id", "follower_id");

-- ----------------------------
-- Primary Key structure for table user_collection
-- ----------------------------
ALTER TABLE "public"."user_collection"
    ADD CONSTRAINT "user_collection_pkey" PRIMARY KEY ("user_id", "collect_id");

-- ----------------------------
-- Primary Key structure for table user_column
-- ----------------------------
ALTER TABLE "public"."user_column"
    ADD CONSTRAINT "user_column_pkey" PRIMARY KEY ("user_id", "column_id");

-- ----------------------------
-- Primary Key structure for table user_follow
-- ----------------------------
ALTER TABLE "public"."user_follow"
    ADD CONSTRAINT "user_follow_pkey" PRIMARY KEY ("follower_id", "followed_id");

-- ----------------------------
-- Foreign Keys structure for table pin
-- ----------------------------
ALTER TABLE "public"."pin"
    ADD CONSTRAINT "fk_pin_sys_user_1" FOREIGN KEY ("author_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table pin_comment
-- ----------------------------
ALTER TABLE "public"."pin_comment"
    ADD CONSTRAINT "fk_pin_comment_pin_1" FOREIGN KEY ("pin_id") REFERENCES "public"."pin" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."pin_comment"
    ADD CONSTRAINT "fk_pin_comment_pin_comment_1" FOREIGN KEY ("parent_id") REFERENCES "public"."pin_comment" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."pin_comment"
    ADD CONSTRAINT "fk_pin_comment_sys_user_1" FOREIGN KEY ("author_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table pin_comment_like
-- ----------------------------
ALTER TABLE "public"."pin_comment_like"
    ADD CONSTRAINT "fk_pin_comment_like_pin_comment_1" FOREIGN KEY ("comment_id") REFERENCES "public"."pin_comment" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."pin_comment_like"
    ADD CONSTRAINT "fk_pin_comment_like_sys_user_1" FOREIGN KEY ("user_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table pin_like
-- ----------------------------
ALTER TABLE "public"."pin_like"
    ADD CONSTRAINT "fk_pin_like_pin_1" FOREIGN KEY ("pin_id") REFERENCES "public"."pin" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."pin_like"
    ADD CONSTRAINT "fk_pin_like_sys_user_1" FOREIGN KEY ("user_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table post
-- ----------------------------
ALTER TABLE "public"."post"
    ADD CONSTRAINT "fk_post_category_1" FOREIGN KEY ("cate_id") REFERENCES "public"."category" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."post"
    ADD CONSTRAINT "fk_post_sys_user_1" FOREIGN KEY ("author_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table post_collection
-- ----------------------------
ALTER TABLE "public"."post_collection"
    ADD CONSTRAINT "fk_post_collection_collection_1" FOREIGN KEY ("collect_id") REFERENCES "public"."collection" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."post_collection"
    ADD CONSTRAINT "fk_post_collection_post_1" FOREIGN KEY ("post_id") REFERENCES "public"."post" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table post_column
-- ----------------------------
ALTER TABLE "public"."post_column"
    ADD CONSTRAINT "fk_post_column_column_1" FOREIGN KEY ("column_id") REFERENCES "public"."column" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."post_column"
    ADD CONSTRAINT "fk_post_column_post_1" FOREIGN KEY ("post_id") REFERENCES "public"."post" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table post_comment
-- ----------------------------
ALTER TABLE "public"."post_comment"
    ADD CONSTRAINT "fk_post_comment_post_1" FOREIGN KEY ("post_id") REFERENCES "public"."post" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."post_comment"
    ADD CONSTRAINT "fk_post_comment_post_comment_1" FOREIGN KEY ("parent_id") REFERENCES "public"."post_comment" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."post_comment"
    ADD CONSTRAINT "fk_post_comment_sys_user_1" FOREIGN KEY ("author_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table post_comment_like
-- ----------------------------
ALTER TABLE "public"."post_comment_like"
    ADD CONSTRAINT "fk_post_comment_like_post_comment_1" FOREIGN KEY ("comment_id") REFERENCES "public"."post_comment" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."post_comment_like"
    ADD CONSTRAINT "fk_post_comment_like_sys_user_1" FOREIGN KEY ("user_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table post_like
-- ----------------------------
ALTER TABLE "public"."post_like"
    ADD CONSTRAINT "fk_post_like_post_1" FOREIGN KEY ("post_id") REFERENCES "public"."post" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."post_like"
    ADD CONSTRAINT "fk_post_like_sys_user_1" FOREIGN KEY ("user_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table post_tag
-- ----------------------------
ALTER TABLE "public"."post_tag"
    ADD CONSTRAINT "fk_post_tag_post_1" FOREIGN KEY ("post_id") REFERENCES "public"."post" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."post_tag"
    ADD CONSTRAINT "fk_post_tag_tag_1" FOREIGN KEY ("tag_id") REFERENCES "public"."tag" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table sys_user
-- ----------------------------
ALTER TABLE "public"."sys_user"
    ADD CONSTRAINT "fk_sys_user_role_1" FOREIGN KEY ("role_id") REFERENCES "public"."role" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table tag_follow
-- ----------------------------
ALTER TABLE "public"."tag_follow"
    ADD CONSTRAINT "fk_tag_follow_sys_user_1" FOREIGN KEY ("follower_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."tag_follow"
    ADD CONSTRAINT "fk_tag_follow_tag_1" FOREIGN KEY ("tag_id") REFERENCES "public"."tag" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table user_collection
-- ----------------------------
ALTER TABLE "public"."user_collection"
    ADD CONSTRAINT "fk_user_collection_collection_1" FOREIGN KEY ("collect_id") REFERENCES "public"."collection" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."user_collection"
    ADD CONSTRAINT "fk_user_collection_sys_user_1" FOREIGN KEY ("user_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table user_column
-- ----------------------------
ALTER TABLE "public"."user_column"
    ADD CONSTRAINT "fk_user_column_column_1" FOREIGN KEY ("column_id") REFERENCES "public"."column" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."user_column"
    ADD CONSTRAINT "fk_user_column_sys_user_1" FOREIGN KEY ("user_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table user_follow
-- ----------------------------
ALTER TABLE "public"."user_follow"
    ADD CONSTRAINT "fk_user_follow_sys_user_1" FOREIGN KEY ("follower_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."user_follow"
    ADD CONSTRAINT "fk_user_follow_sys_user_2" FOREIGN KEY ("followed_id") REFERENCES "public"."sys_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

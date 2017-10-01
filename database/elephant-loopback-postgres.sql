/*
Navicat PGSQL Data Transfer

Source Server         : localhost
Source Server Version : 90412
Source Host           : localhost:5432
Source Database       : elephant-loopback-postgres
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90412
File Encoding         : 65001

Date: 2017-10-02 00:03:57
*/


-- ----------------------------
-- Sequence structure for category_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "category_id_seq";
CREATE SEQUENCE "category_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."category_id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for product_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "product_id_seq";
CREATE SEQUENCE "product_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."product_id_seq"', 1, true);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS "category";
CREATE TABLE "category" (
"id" int4 DEFAULT nextval('category_id_seq'::regclass) NOT NULL,
"name" varchar(50) COLLATE "default",
"description" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO "category" VALUES ('1', 'string', 'string');
COMMIT;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS "product";
CREATE TABLE "product" (
"id" int4 DEFAULT nextval('product_id_seq'::regclass) NOT NULL,
"name" varchar(50) COLLATE "default",
"description" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
INSERT INTO "product" VALUES ('1', 'string', 'string');
COMMIT;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "category_id_seq" OWNED BY "category"."id";
ALTER SEQUENCE "product_id_seq" OWNED BY "product"."id";

-- ----------------------------
-- Primary Key structure for table category
-- ----------------------------
ALTER TABLE "category" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table product
-- ----------------------------
ALTER TABLE "product" ADD PRIMARY KEY ("id");

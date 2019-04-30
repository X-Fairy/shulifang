SET NAMES UTF8;
DROP DATABASE IF EXISTS sup;
CREATE DATABASE sup CHARSET=UTF8;
USE sup;
-- 用户信息
CREATE TABLE sup_user(
  uid    INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(25),
  upwd  VARCHAR(32), 
  uphone varchar(20)
);

-- 添加用户
INSERT INTO sup_user VALUES(null,'tom',666666,12388888888);
INSERT INTO sup_user VALUES(null,'juery',99999,12388888888);

-- 轮播图
CREATE TABLE bnner(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128)
);
INSERT INTO bnner VALUES(null,'http://127.0.0.1:5555/images/bnner/bnner1.png');
INSERT INTO bnner VALUES(null,'http://127.0.0.1:5555/images/bnner/bnner2.png');
INSERT INTO bnner VALUES(null,'http://127.0.0.1:5555/images/bnner/bnner3.png');
INSERT INTO bnner VALUES(null,'http://127.0.0.1:5555/images/bnner/bnner4.jpg');















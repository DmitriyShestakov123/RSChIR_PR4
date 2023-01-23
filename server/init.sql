CREATE DATABASE IF NOT EXISTS appDB;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';
CREATE USER 'greg'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT,UPDATE,INSERT,DELETE ON appDB.* TO 'user'@'%';
FLUSH PRIVILEGES;


USE appDB;

CREATE TABLE IF NOT EXISTS `accounts`(
	acc_id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  	username VARCHAR(50) NOT NULL,
  	passwords VARCHAR(50) NOT NULL,
  	email VARCHAR(100) NOT NULL
);

INSERT INTO accounts (username, passwords, email) VALUES ('admin', 'admin', 'test@test.com');
INSERT INTO accounts (username, passwords, email) VALUES ('test_user1', 'admin', 'test@test.com');
INSERT INTO accounts (username, passwords, email) VALUES ('test_user2', 'admin', 'test@test.com');
INSERT INTO accounts (username, passwords, email) VALUES ('test_user3', 'admin', 'test@test.com');

CREATE TABLE IF NOT EXISTS `posts`(
	post_id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  	post_user VARCHAR(50) NOT NULL,
  	post_info VARCHAR(500) NOT NULL
);

INSERT INTO posts (post_user, post_info) VALUES ('admin', 'https://img5.goodfon.ru/original/1920x1280/4/21/car-art-sketch-aleksandr-sidelnikov-transport-vehicles-race.jpg');

INSERT INTO posts (post_user, post_info) VALUES ('test_user1', 'https://i.pinimg.com/originals/ff/5e/44/ff5e44df106dc5e707fbf3a9fe82883e.jpg');

INSERT INTO posts (post_user, post_info) VALUES ('admin', 'https://gamerwall.pro/uploads/posts/2022-03/1647233852_36-gamerwall-pro-p-gonochnaya-mashina-art-krasivie-oboi-49.jpg');

INSERT INTO posts (post_user, post_info) VALUES ('test_user2', 'https://phonoteka.org/uploads/posts/2021-07/1625777364_22-phonoteka-org-p-mashinka-art-krasivo-22.jpg');

INSERT INTO posts (post_user, post_info) VALUES ('test_user1', 'https://phonoteka.org/uploads/posts/2021-05/1622266117_9-phonoteka_org-p-pop-art-mashina-krasivo-9.jpg');

INSERT INTO posts (post_user, post_info) VALUES ('admin', 'https://phonoteka.org/uploads/posts/2021-05/1622367282_6-phonoteka_org-p-krutie-mashini-art-krasivo-6.jpg');

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password'; 
insert into "user"(username, email, password, is_admin) values ('fabiano', 'fz@fabianozenatti.it', 'd8022f2060ad6efd297ab73dcc5355c9b214054b0d1776a136a669d26a7d3b14f73aa0d0ebff19ee333368f0164b6419a96da49e3e481753e7e96b716bdccb6f', 'f');
insert into "user"(username, email, password, is_admin) values ('marco', 'dallamarco93@gmail.com', 'd8022f2060ad6efd297ab73dcc5355c9b214054b0d1776a136a669d26a7d3b14f73aa0d0ebff19ee333368f0164b6419a96da49e3e481753e7e96b716bdccb6f', 't');
insert into "user"(username, email, password, is_admin) values ('roberto', 'bampi.roberto@gmail.com', 'd8022f2060ad6efd297ab73dcc5355c9b214054b0d1776a136a669d26a7d3b14f73aa0d0ebff19ee333368f0164b6419a96da49e3e481753e7e96b716bdccb6f', 't');

INSERT INTO "genre" (description) VALUES ('Action');
INSERT INTO "genre" (description) VALUES ('Adventure');
INSERT INTO "genre" (description) VALUES ('Animation');
INSERT INTO "genre" (description) VALUES ('Comedy');
INSERT INTO "genre" (description) VALUES ('Crime');
INSERT INTO "genre" (description) VALUES ('Drama');
INSERT INTO "genre" (description) VALUES ('Horror');
INSERT INTO "genre" (description) VALUES ('Musical');
INSERT INTO "genre" (description) VALUES ('Science Fiction');
INSERT INTO "genre" (description) VALUES ('War');
INSERT INTO "genre" (description) VALUES ('Western');

INSERT INTO "price" (kind, amount) VALUES ('Normale','10.0');
INSERT INTO "price" (kind, amount) VALUES ('Ridotto','8.0');
INSERT INTO "price" (kind, amount) VALUES ('Militare','5.0');
INSERT INTO "price" (kind, amount) VALUES ('Disabile','5.0');

INSERT INTO "theater" (id, description) VALUES ('1','Blu');
INSERT INTO "theater" (id, description) VALUES ('2','Verde');
INSERT INTO "theater" (id, description) VALUES ('3','Rossa');
INSERT INTO "theater" (id, description) VALUES ('4','Gialla');

INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('1','1','1','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('2','1','1','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('3','1','1','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('4','1','1','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('5','1','1','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('6','1','1','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('7','1','1','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('8','1','1','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('9','1','1','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('10','1','1','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('11','1','2','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('12','1','2','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('13','1','2','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('14','1','2','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('15','1','2','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('16','1','2','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('17','1','2','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('18','1','2','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('19','1','2','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('20','1','2','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('21','1','3','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('22','1','3','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('23','1','3','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('24','1','3','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('25','1','3','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('26','1','3','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('27','1','3','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('28','1','3','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('29','1','3','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('30','1','3','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('31','1','4','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('32','1','4','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('33','1','4','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('34','1','4','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('35','1','4','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('36','1','4','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('37','1','4','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('38','1','4','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('39','1','4','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('40','1','4','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('41','1','5','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('42','1','5','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('43','1','5','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('44','1','5','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('45','1','5','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('46','1','5','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('47','1','5','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('48','1','5','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('49','1','5','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('50','1','5','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('51','2','1','1','false'); -- sala 2
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('52','2','1','2','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('53','2','1','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('54','2','1','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('55','2','1','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('56','2','1','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('57','2','1','7','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('58','2','1','8','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('59','2','2','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('60','2','2','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('61','2','2','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('62','2','2','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('63','2','2','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('64','2','2','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('65','2','2','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('66','2','2','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('67','2','3','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('68','2','3','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('69','2','3','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('70','2','3','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('71','2','3','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('72','2','3','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('73','2','3','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('74','2','3','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('75','2','4','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('76','2','4','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('77','2','4','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('78','2','4','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('79','2','4','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('80','2','4','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('81','2','4','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('82','2','4','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('83','2','5','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('84','2','5','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('85','2','5','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('86','2','5','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('87','2','5','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('88','2','5','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('89','2','5','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('90','2','5','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('91','2','6','1','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('92','2','6','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('93','2','6','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('94','2','6','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('95','2','6','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('96','2','6','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('97','2','6','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('98','2','6','8','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('99','2','7','1','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('100','2','7','2','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('101','2','7','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('102','2','7','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('103','2','7','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('104','2','7','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('105','2','7','7','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('106','2','7','8','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('107','3','1','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('108','3','1','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('109','3','1','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('110','3','1','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('111','3','1','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('112','3','1','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('113','3','1','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('114','3','1','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('115','3','1','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('116','3','2','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('117','3','2','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('118','3','2','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('119','3','2','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('120','3','2','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('121','3','2','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('122','3','2','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('123','3','2','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('124','3','2','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('125','3','3','1','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('126','3','3','2','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('127','3','3','3','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('128','3','3','4','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('129','3','3','5','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('130','3','3','6','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('131','3','3','7','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('132','3','3','8','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('133','3','3','9','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('134','3','4','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('135','3','4','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('136','3','4','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('137','3','4','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('138','3','4','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('139','3','4','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('140','3','4','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('141','3','4','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('142','3','4','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('143','3','5','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('144','3','5','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('145','3','5','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('146','3','5','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('147','3','5','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('148','3','5','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('149','3','5','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('150','3','5','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('151','3','5','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('152','3','6','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('153','3','6','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('154','3','6','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('155','3','6','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('156','3','6','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('157','3','6','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('158','3','6','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('159','3','6','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('160','3','6','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('161','4','1','1','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('162','4','1','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('163','4','1','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('164','4','1','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('165','4','1','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('166','4','1','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('167','4','1','7','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('168','4','2','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('169','4','2','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('170','4','2','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('171','4','2','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('172','4','2','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('173','4','2','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('174','4','2','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('175','4','3','1','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('176','4','3','2','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('177','4','3','3','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('178','4','3','4','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('179','4','3','5','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('180','4','3','6','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('181','4','3','7','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('182','4','4','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('183','4','4','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('184','4','4','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('185','4','4','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('186','4','4','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('187','4','4','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('188','4','4','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('189','4','5','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('190','4','5','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('191','4','5','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('192','4','5','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('193','4','5','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('194','4','5','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('195','4','5','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('196','4','6','1','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('197','4','6','2','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('198','4','6','3','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('199','4','6','4','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('200','4','6','5','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('201','4','6','6','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('202','4','6','7','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('203','4','7','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('204','4','7','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('205','4','7','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('206','4','7','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('207','4','7','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('208','4','7','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('209','4','7','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('210','4','8','1','false');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('211','4','8','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('212','4','8','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('213','4','8','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('214','4','8','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('215','4','8','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('216','4','8','7','false');

insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('King Kong', '1','https://www.youtube.com/watch?v=AYaTCPbYGdk', '187', 'In 1933 New York, an overly ambitious movie producer coerces his cast and hired ship crew to travel to mysterious Skull Island, where they encounter Kong, a giant ape who is immediately smitten with leading lady Ann Darrow.', 'http://ia.media-imdb.com/images/M/MV5BMTgzODQwNjAwOV5BMl5BanBnXkFtZTcwMDA4MDA0MQ@@._V1_SY317_CR0,0,214,317_AL_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Cars', '3','https://www.youtube.com/watch?v=SbXIj2T-_uk', '117', 'A hot-shot race-car named Lightning McQueen gets waylaid in Radiator Springs, where he finds the true meaning of friendship and family.', 'http://ia.media-imdb.com/images/M/MV5BMTg5NzY0MzA2MV5BMl5BanBnXkFtZTYwNDc3NTc2._V1_SX214_AL_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Jurassic World', '2','https://www.youtube.com/watch?v=RFinNxS5KN4', '124', 'Twenty-two years after the events of Jurassic Park, Isla Nublar now features a fully functioning dinosaur theme park, Jurassic World, as originally envisioned by John Hammond. After 10 years of operation and visitor rates declining, in order to fulfill a corporate mandate, a new attraction is created to re-spark visitors'' interest, which backfires horribly.', 'http://ia.media-imdb.com/images/M/MV5BMTQ5MTE0MTk3Nl5BMl5BanBnXkFtZTgwMjczMzk2NTE@._V1_SX214_AL_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('American Sniper', '10','https://www.youtube.com/watch?v=99k3u9ay1gs', '132', 'Navy SEAL sniper Chris Kyle''s pinpoint accuracy saves countless lives on the battlefield and turns him into a legend. Back home to his wife and kids after four tours of duty, however, Chris finds that it is the war he can''t leave behind.', 'http://ia.media-imdb.com/images/M/MV5BMTkxNzI3ODI4Nl5BMl5BanBnXkFtZTgwMjkwMjY4MjE@._V1_SX214_AL_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('The Hangover', '4','https://www.youtube.com/watch?v=tcdUhdOlz9M', '100', 'Three buddies wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing. They make their way around the city in order to find their friend before his wedding.', 'http://ia.media-imdb.com/images/M/MV5BMTU1MDA1MTYwMF5BMl5BanBnXkFtZTcwMDcxMzA1Mg@@._V1_SX214_AL_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('The Godfather', '6','https://www.youtube.com/watch?v=sY1S34973zA', '175', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'http://ia.media-imdb.com/images/M/MV5BMjEyMjcyNDI4MF5BMl5BanBnXkFtZTcwMDA5Mzg3OA@@._V1_SX214_AL_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Django Unchained', '11','https://www.youtube.com/watch?v=eUdM9vrCbow', '165', 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.', 'http://ia.media-imdb.com/images/M/MV5BMjIyNTQ5NjQ1OV5BMl5BanBnXkFtZTcwODg1MDU4OA@@._V1_SX214_AL_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Shining', '7','https://www.youtube.com/watch?v=S014oGZiSdI', '146', 'A family heads to an isolated hotel for the winter where an evil and spiritual presence influences the father into violence, while his psychic son sees horrific forebodings from the past and of the future.', 'http://ia.media-imdb.com/images/M/MV5BODMxMjE3NTA4Ml5BMl5BanBnXkFtZTgwNDc0NTIxMDE@._V1_SY317_CR1,0,214,317_AL_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Grease', '8','https://www.youtube.com/watch?v=wzWmxjYNfz4', '110', 'Good girl Sandy and greaser Danny fell in love over the summer. But when they unexpectedly discover they''re now in the same high school, will they be able to rekindle their romance?', 'http://ia.media-imdb.com/images/M/MV5BMTcyMTA5MTY3MF5BMl5BanBnXkFtZTgwMTMwNzAxMDE@._V1_SX214_AL_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Avatar', '9','https://www.youtube.com/watch?v=d1_JBMrrYw8', '162', 'A Paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home..', 'http://ia.media-imdb.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_SY317_CR0,0,214,317_AL_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Fight Club', '6','https://www.youtube.com/watch?v=SUXWAEX2jlg', '139', 'An insomniac office worker looking for a way to change his life crosses paths with a devil-may-care soap maker and they form an underground fight club that evolves into something much, much more...', 'http://ia.media-imdb.com/images/M/MV5BMjIwNTYzMzE1M15BMl5BanBnXkFtZTcwOTE5Mzg3OA@@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Inception', '1','https://www.youtube.com/watch?v=8hP9D6kZseM', '148', 'A thief who steals corporate secrets through use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.', 'http://ia.media-imdb.com/images/M/MV5BMTMyMzYxMDQ3NV5BMl5BanBnXkFtZTcwNTA1NTcwMw@@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Matrix', '1','https://www.youtube.com/watch?v=q_tuIcqX5-g', '136', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 'http://ia.media-imdb.com/images/M/MV5BMTkxNDYxOTA4M15BMl5BanBnXkFtZTgwNTk0NzQxMTE@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Interstellar', '9', 'https://www.youtube.com/watch?v=0vxOhd4qlnA','169', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity''s survival.', 'http://ia.media-imdb.com/images/M/MV5BMjIxNTU4MzY4MF5BMl5BanBnXkFtZTgwMzM4ODI3MjE@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Edge of Tomorrow', '2','https://www.youtube.com/watch?v=fLe_qO4AE-M', '113', 'A military officer is brought into an alien war against an extraterrestrial enemy who can reset the day and know the future. When this officer is enabled with the same power, he teams up with a Special Forces warrior to try and end the war.', 'http://ia.media-imdb.com/images/M/MV5BMTc5OTk4MTM3M15BMl5BanBnXkFtZTgwODcxNjg3MDE@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('The Imitation Game', '6','https://www.youtube.com/watch?v=Sn-7SNrQWMo', '114', 'During World War II, mathematician Alan Turing tries to crack the enigma code with help from fellow mathematicians.', 'http://ia.media-imdb.com/images/M/MV5BNDkwNTEyMzkzNl5BMl5BanBnXkFtZTgwNTAwNzk3MjE@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Guardians of the Galaxy', '2','https://www.youtube.com/watch?v=89yh3vYs-zo', '121', 'A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe.', 'http://ia.media-imdb.com/images/M/MV5BMTAwMjU5OTgxNjZeQTJeQWpwZ15BbWU4MDUxNDYxODEx._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('The Hunger Games: Mockingjay - Part 1', '2','https://www.youtube.com/watch?v=3PkkHsuMrho', '123', 'Katniss Everdeen is in District 13 after she shatters the games forever. Under the leadership of President Coin and the advice of her trusted friends, Katniss spreads her wings as she fights to save Peeta and a nation moved by her courage.', 'http://ia.media-imdb.com/images/M/MV5BMTcxNDI2NDAzNl5BMl5BanBnXkFtZTgwODM3MTc2MjE@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Captain America: The Winter Soldier', '9','https://www.youtube.com/watch?v=tbayiPxkUMM', '136', 'As Steve Rogers struggles to embrace his role in the modern world, he teams up with another super soldier, the black widow, to battle a new threat from old history: an assassin known as the Winter Soldier.', 'http://ia.media-imdb.com/images/M/MV5BMzA2NDkwODAwM15BMl5BanBnXkFtZTgwODk5MTgzMTE@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('The Lego Movie', '3','https://www.youtube.com/watch?v=fZ_JOBCLF-I', '100', 'An ordinary Lego construction worker, thought to be the prophesied ''Special'', is recruited to join a quest to stop an evil tyrant from gluing the Lego universe into eternal stasis.', 'http://ia.media-imdb.com/images/M/MV5BMTg4MDk1ODExN15BMl5BanBnXkFtZTgwNzIyNjg3MDE@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Maleficent', '2','https://www.youtube.com/watch?v=w-XO4XiRop0', '97', 'A vengeful fairy is driven to curse an infant princess, only to discover that the child may be the one person who can restore peace to their troubled land.', 'http://ia.media-imdb.com/images/M/MV5BMTQ1NDk3NTk0MV5BMl5BanBnXkFtZTgwMTk3MDcxMzE@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('X-Men: Days of Future Past', '9','https://www.youtube.com/watch?v=pK2zYHWDZKo', '132', 'The X-Men send Wolverine to the past in a desperate effort to change history and prevent an event that results in doom for both humans and mutants.', 'http://ia.media-imdb.com/images/M/MV5BMjEwMDk2NzY4MF5BMl5BanBnXkFtZTgwNTY2OTcwMDE@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Dawn of the Planet of the Apes', '1','https://www.youtube.com/watch?v=DpSaTrW4leg', '130', 'A growing nation of genetically evolved apes led by Caesar is threatened by a band of human survivors of the devastating virus unleashed a decade earlier.', 'http://ia.media-imdb.com/images/M/MV5BMTgwODk3NDc1N15BMl5BanBnXkFtZTgwNTc1NjQwMjE@._V1__SX1626_SY828_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Intouchables', '4','https://www.youtube.com/watch?v=34WIbmXkewU', '112', 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.', 'http://ia.media-imdb.com/images/M/MV5BMTYxNDA3MDQwNl5BMl5BanBnXkFtZTcwNTU4Mzc1Nw@@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('The Wolf of Wall Street', '5','https://www.youtube.com/watch?v=pabEtIERlic', '180', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.', 'http://ia.media-imdb.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Spirited Away', '3','https://www.youtube.com/watch?v=ByXuk9QqQkk', '125', 'During her family''s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.', 'http://ia.media-imdb.com/images/M/MV5BMjYxMDcyMzIzNl5BMl5BanBnXkFtZTYwNDg2MDU3._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('How to Train Your Dragon 2', '2','https://www.youtube.com/watch?v=Z9a4PvzlqoQ', '102', 'When Hiccup and Toothless discover an ice cave that is home to hundreds of new wild dragons and the mysterious Dragon Rider, the two friends find themselves at the center of a battle to protect the peace.', 'http://ia.media-imdb.com/images/M/MV5BMzMwMTAwODczN15BMl5BanBnXkFtZTgwMDk2NDA4MTE@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Gone Girl', '6','https://www.youtube.com/watch?v=esGn-xKFZdU', '149', 'With his wife''s disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it''s suspected that he may not be innocent.', 'http://ia.media-imdb.com/images/M/MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Neighbors', '4','https://www.youtube.com/watch?v=kL5c2szf3E4', '97', 'After they are forced to live next to a fraternity house, a couple with a newborn baby do whatever they can to take them down.', 'http://ia.media-imdb.com/images/M/MV5BOTQ0OTkzODgyNF5BMl5BanBnXkFtZTgwOTA3OTE4MDE@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('The Fault in Our Stars', '6','https://www.youtube.com/watch?v=9ItBvH5J6ss', '126', 'Two teens, both who have different cancer conditions, fall in love after meeting at a cancer support group.', 'http://ia.media-imdb.com/images/M/MV5BMjA4NzkxNzc5Ml5BMl5BanBnXkFtZTgwNzQ3OTMxMTE@._V1__SX629_SY905_.jpg');

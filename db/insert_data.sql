insert into "user"(username, email, password) values ('fabiano', 'fz@fabianozenatti.it', 'b35469cfbe220e8f5a663c14b6fdea99bacab80cab74eb809761ab7e2a2eb6642e57693d638a21cdbf7e07cb76d3441647dc68689502d4a0398d8009f7ed9980');

INSERT INTO "user" (username, email, password, credit) VALUES ('mario', 'mario.rossi@fabianozenatti.it', 'b35469cfbe220e8f5a663c14b6fdea99bacab80cab74eb809761ab7e2a2eb6642e57693d638a21cdbf7e07cb76d3441647dc68689502d4a0398d8009f7ed9980', '10.0' );
INSERT INTO "user" (username, email, password, credit) VALUES ('luca', 'luca@fabianozenatti.it', 'b35469cfbe220e8f5a663c14b6fdea99bacab80cab74eb809761ab7e2a2eb6642e57693d638a21cdbf7e07cb76d3441647dc68689502d4a0398d8009f7ed9980', '15.0' );
INSERT INTO "user" (username, email, password, credit) VALUES ('roby', 'roberto@fabianozenatti.it', 'b35469cfbe220e8f5a663c14b6fdea99bacab80cab74eb809761ab7e2a2eb6642e57693d638a21cdbf7e07cb76d3441647dc68689502d4a0398d8009f7ed9980', '20.0' );
INSERT INTO "user" (username, email, password, credit) VALUES ('dallag', 'marco@fabianozenatti.it', 'b35469cfbe220e8f5a663c14b6fdea99bacab80cab74eb809761ab7e2a2eb6642e57693d638a21cdbf7e07cb76d3441647dc68689502d4a0398d8009f7ed9980', '5.0' );
INSERT INTO "user" (username, email, password, credit) VALUES ('David93', 'davide.pizzolotto@fabianozenatti.it', 'b35469cfbe220e8f5a663c14b6fdea99bacab80cab74eb809761ab7e2a2eb6642e57693d638a21cdbf7e07cb76d3441647dc68689502d4a0398d8009f7ed9980', '7.0' );
INSERT INTO "user" (username, email, password, credit) VALUES ('erFabyTunz', 'faby.zen@fabianozenatti.it', 'b35469cfbe220e8f5a663c14b6fdea99bacab80cab74eb809761ab7e2a2eb6642e57693d638a21cdbf7e07cb76d3441647dc68689502d4a0398d8009f7ed9980', '150.0' );
INSERT INTO "user" (username, email, password, credit) VALUES ('Matteo', 'Matteo.martella@fabianozenatti.it', 'b35469cfbe220e8f5a663c14b6fdea99bacab80cab74eb809761ab7e2a2eb6642e57693d638a21cdbf7e07cb76d3441647dc68689502d4a0398d8009f7ed9980', '35.0' );
INSERT INTO "user" (username, email, password, credit) VALUES ('Dante99', 'Alighieri.dante@fabianozenatti.it', 'b35469cfbe220e8f5a663c14b6fdea99bacab80cab74eb809761ab7e2a2eb6642e57693d638a21cdbf7e07cb76d3441647dc68689502d4a0398d8009f7ed9980', '1.0' );
INSERT INTO "user" (username, email, password, credit) VALUES ('Serious', 'serious.sam@fabianozenatti.it', 'b35469cfbe220e8f5a663c14b6fdea99bacab80cab74eb809761ab7e2a2eb6642e57693d638a21cdbf7e07cb76d3441647dc68689502d4a0398d8009f7ed9980', '47.0' );
INSERT INTO "user" (username, email, password, credit) VALUES ('Menethil', 'Arthas@fabianozenatti.it', 'b35469cfbe220e8f5a663c14b6fdea99bacab80cab74eb809761ab7e2a2eb6642e57693d638a21cdbf7e07cb76d3441647dc68689502d4a0398d8009f7ed9980', '250.0' );
INSERT INTO "user" (username, email, password, credit) VALUES ('pippiZ', 'pippicalzelunghe@fabianozenatti.it', 'b35469cfbe220e8f5a663c14b6fdea99bacab80cab74eb809761ab7e2a2eb6642e57693d638a21cdbf7e07cb76d3441647dc68689502d4a0398d8009f7ed9980', '15.0' );
INSERT INTO "user" (username, email, password, credit) VALUES ('UtontoStd', 'utonto@fabianozenatti.it', 'b35469cfbe220e8f5a663c14b6fdea99bacab80cab74eb809761ab7e2a2eb6642e57693d638a21cdbf7e07cb76d3441647dc68689502d4a0398d8009f7ed9980', '16.0' );
INSERT INTO "user" (username, email, password, credit) VALUES ('fhahthbhahrhdhah', 'fatbardha.Hoxha@fabianozenatti.it', 'b35469cfbe220e8f5a663c14b6fdea99bacab80cab74eb809761ab7e2a2eb6642e57693d638a21cdbf7e07cb76d3441647dc68689502d4a0398d8009f7ed9980', '85.0' );
INSERT INTO "user" (username, email, password, credit) VALUES ('TheKing', 'tullo_ostilio@fabianozenatti.it', 'b35469cfbe220e8f5a663c14b6fdea99bacab80cab74eb809761ab7e2a2eb6642e57693d638a21cdbf7e07cb76d3441647dc68689502d4a0398d8009f7ed9980', '31.0' );

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

INSERT INTO "price" (kind, amount) VALUES ('3D','10.0');
INSERT INTO "price" (kind, amount) VALUES ('2D','8.0');
INSERT INTO "price" (kind, amount) VALUES ('Disabile','5.0');
INSERT INTO "price" (kind, amount) VALUES ('Reduce','5.0');

INSERT INTO "theater" (id) VALUES ('1');
INSERT INTO "theater" (id) VALUES ('2');
INSERT INTO "theater" (id) VALUES ('3');
INSERT INTO "theater" (id) VALUES ('4');

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
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('51','2','1','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('52','2','1','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('53','2','1','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('54','2','1','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('55','2','1','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('56','2','1','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('57','2','1','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('58','2','1','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('59','2','1','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('60','2','1','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('61','2','2','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('62','2','2','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('63','2','2','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('64','2','2','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('65','2','2','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('66','2','2','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('67','2','2','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('68','2','2','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('69','2','2','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('70','2','2','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('71','2','3','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('72','2','3','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('73','2','3','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('74','2','3','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('75','2','3','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('76','2','3','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('77','2','3','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('78','2','3','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('79','2','3','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('80','2','3','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('81','2','4','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('82','2','4','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('83','2','4','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('84','2','4','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('85','2','4','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('86','2','4','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('87','2','4','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('88','2','4','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('89','2','4','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('90','2','4','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('91','2','5','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('92','2','5','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('93','2','5','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('94','2','5','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('95','2','5','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('96','2','5','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('97','2','5','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('98','2','5','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('99','2','5','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('100','2','5','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('101','3','1','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('102','3','1','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('103','3','1','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('104','3','1','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('105','3','1','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('106','3','1','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('107','3','1','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('108','3','1','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('109','3','1','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('110','3','1','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('111','3','2','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('112','3','2','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('113','3','2','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('114','3','2','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('115','3','2','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('116','3','2','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('117','3','2','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('118','3','2','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('119','3','2','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('120','3','2','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('121','3','3','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('122','3','3','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('123','3','3','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('124','3','3','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('125','3','3','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('126','3','3','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('127','3','3','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('128','3','3','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('129','3','3','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('130','3','3','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('131','3','4','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('132','3','4','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('133','3','4','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('134','3','4','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('135','3','4','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('136','3','4','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('137','3','4','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('138','3','4','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('139','3','4','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('140','3','4','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('141','3','5','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('142','3','5','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('143','3','5','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('144','3','5','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('145','3','5','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('146','3','5','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('147','3','5','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('148','3','5','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('149','3','5','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('150','3','5','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('151','4','1','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('152','4','1','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('153','4','1','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('154','4','1','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('155','4','1','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('156','4','1','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('157','4','1','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('158','4','1','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('159','4','1','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('160','4','1','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('161','4','2','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('162','4','2','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('163','4','2','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('164','4','2','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('165','4','2','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('166','4','2','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('167','4','2','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('168','4','2','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('169','4','2','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('170','4','2','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('171','4','3','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('172','4','3','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('173','4','3','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('174','4','3','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('175','4','3','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('176','4','3','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('177','4','3','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('178','4','3','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('179','4','3','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('180','4','3','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('181','4','4','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('182','4','4','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('183','4','4','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('184','4','4','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('185','4','4','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('186','4','4','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('187','4','4','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('188','4','4','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('189','4','4','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('190','4','4','10','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('191','4','5','1','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('192','4','5','2','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('193','4','5','3','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('194','4','5','4','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('195','4','5','5','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('196','4','5','6','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('197','4','5','7','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('198','4','5','8','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('199','4','5','9','true');
INSERT INTO "seat" (id, theater_id, "row", "column", exist) VALUES ('200','4','5','10','true');


insert into "movie" (title, genre_id, trailer_url) VALUES ('King Kong', '1','https://www.youtube.com/watch?v=AYaTCPbYGdk');
insert into "movie" (title, genre_id, trailer_url) VALUES ('Cars', '3','https://www.youtube.com/watch?v=SbXIj2T-_uk');
insert into "movie" (title, genre_id, trailer_url) VALUES ('Jurassic World', '2','https://www.youtube.com/watch?v=RFinNxS5KN4');
insert into "movie" (title, genre_id, trailer_url) VALUES ('American Sniper', '10','https://www.youtube.com/watch?v=99k3u9ay1gs');
insert into "movie" (title, genre_id, trailer_url) VALUES ('The Hangover', '4','https://www.youtube.com/watch?v=tcdUhdOlz9M');
insert into "movie" (title, genre_id, trailer_url) VALUES ('The Godfather', '6','https://www.youtube.com/watch?v=sY1S34973zA');
insert into "movie" (title, genre_id, trailer_url) VALUES ('Django Unchained', '11','https://www.youtube.com/watch?v=eUdM9vrCbow');


insert into "show" (movie_id, theater_id, date_time) VALUES('1', '1', '2015-06-18 15:30:00'); -- sala 1  show 1
insert into "show" (movie_id, theater_id, date_time) VALUES('1', '1', '2015-06-18 18:30:00'); --         show 2
insert into "show" (movie_id, theater_id, date_time) VALUES('1', '1', '2015-06-18 21:30:00'); --         show 3
insert into "show" (movie_id, theater_id, date_time) VALUES('2', '2', '2015-06-18 15:30:00'); -- sala 2  show 4
insert into "show" (movie_id, theater_id, date_time) VALUES('2', '2', '2015-06-18 18:30:00'); --         show 5
insert into "show" (movie_id, theater_id, date_time) VALUES('2', '2', '2015-06-18 21:30:00'); --         show 6
insert into "show" (movie_id, theater_id, date_time) VALUES('3', '3', '2015-06-18 15:30:00'); -- sala 3  show 7
insert into "show" (movie_id, theater_id, date_time) VALUES('3', '3', '2015-06-18 18:30:00'); --         show 8
insert into "show" (movie_id, theater_id, date_time) VALUES('3', '3', '2015-06-18 21:30:00'); --         show 9
insert into "show" (movie_id, theater_id, date_time) VALUES('4', '4', '2015-06-18 15:30:00'); -- sala 4  show 10
insert into "show" (movie_id, theater_id, date_time) VALUES('4', '4', '2015-06-18 18:30:00'); --         show 11
insert into "show" (movie_id, theater_id, date_time) VALUES('4', '4', '2015-06-18 21:30:00'); --         show 12
insert into "show" (movie_id, theater_id, date_time) VALUES('7', '3', '2015-06-19 15:30:00'); -- sala 3  show 13
insert into "show" (movie_id, theater_id, date_time) VALUES('7', '3', '2015-06-19 18:30:00'); --         show 14
insert into "show" (movie_id, theater_id, date_time) VALUES('7', '3', '2015-06-19 21:30:00'); --         show 15


insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('1','2','1','24'); --sala 1
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('1','2','1','25');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('1','2','1','26');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('1','2','1','27');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('3','6','1','63'); --sala 2
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('3','6','1','64');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('3','6','1','65');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('3','6','1','66');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('3','6','1','67');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('5','8','1','112'); --sala 3
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('5','8','1','113');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('5','8','1','114');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('8','15','1','112'); --sala 3
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('8','15','1','114');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('8','15','1','116');




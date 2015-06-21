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
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Dawn of the Planet of the Apes', '1','https://www.youtube.com/watch?v=DpSaTrW4leg', '130', 'A growing nation of genetically evolved apes led by Caesar is threatened by a band of human survivors of the devastating virus unleashed a decade earlier.', 'http://www.imdb.com/media/rm1894698240/tt2103281?ref_=tt_ov_i');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Intouchables', '4','https://www.youtube.com/watch?v=34WIbmXkewU', '112', 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.', 'http://ia.media-imdb.com/images/M/MV5BMTYxNDA3MDQwNl5BMl5BanBnXkFtZTcwNTU4Mzc1Nw@@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('The Wolf of Wall Street', '5','https://www.youtube.com/watch?v=pabEtIERlic', '180', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.', 'http://ia.media-imdb.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Spirited Away', '3','https://www.youtube.com/watch?v=ByXuk9QqQkk', '125', 'During her family''s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.', 'http://ia.media-imdb.com/images/M/MV5BMjYxMDcyMzIzNl5BMl5BanBnXkFtZTYwNDg2MDU3._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('How to Train Your Dragon 2', '2','https://www.youtube.com/watch?v=Z9a4PvzlqoQ', '102', 'When Hiccup and Toothless discover an ice cave that is home to hundreds of new wild dragons and the mysterious Dragon Rider, the two friends find themselves at the center of a battle to protect the peace.', 'http://ia.media-imdb.com/images/M/MV5BMzMwMTAwODczN15BMl5BanBnXkFtZTgwMDk2NDA4MTE@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Gone Girl', '6','https://www.youtube.com/watch?v=esGn-xKFZdU', '149', 'With his wife''s disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it''s suspected that he may not be innocent.', 'http://ia.media-imdb.com/images/M/MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('Neighbors', '4','https://www.youtube.com/watch?v=kL5c2szf3E4', '97', 'After they are forced to live next to a fraternity house, a couple with a newborn baby do whatever they can to take them down.', 'http://ia.media-imdb.com/images/M/MV5BOTQ0OTkzODgyNF5BMl5BanBnXkFtZTgwOTA3OTE4MDE@._V1__SX629_SY905_.jpg');
insert into "movie" (title, genre_id, trailer_url, duration, plot, poster_uri) VALUES ('The Fault in Our Stars', '6','https://www.youtube.com/watch?v=9ItBvH5J6ss', '126', 'Two teens, both who have different cancer conditions, fall in love after meeting at a cancer support group.', 'http://ia.media-imdb.com/images/M/MV5BMjA4NzkxNzc5Ml5BMl5BanBnXkFtZTgwNzQ3OTMxMTE@._V1__SX629_SY905_.jpg');


insert into "show" (id, movie_id, theater_id, date_time) VALUES('1', '1', '1', '2015-06-22 15:30:00');  -- sala 1  show 1
insert into "show" (id, movie_id, theater_id, date_time) VALUES('2', '1', '1', '2015-06-22 18:30:00');  --         show 2
insert into "show" (id, movie_id, theater_id, date_time) VALUES('3', '1', '1', '2015-06-22 21:30:00');  --         show 3
insert into "show" (id, movie_id, theater_id, date_time) VALUES('4', '2', '2', '2015-06-22 15:30:00');  -- sala 2  show 4
insert into "show" (id, movie_id, theater_id, date_time) VALUES('5', '2', '2', '2015-06-22 18:30:00');  --         show 5
insert into "show" (id, movie_id, theater_id, date_time) VALUES('6', '2', '2', '2015-06-22 21:30:00');  --         show 6
insert into "show" (id, movie_id, theater_id, date_time) VALUES('7', '3', '3', '2015-06-22 15:30:00');  -- sala 3  show 7
insert into "show" (id, movie_id, theater_id, date_time) VALUES('8', '3', '3', '2015-06-22 18:30:00');  --         show 8
insert into "show" (id, movie_id, theater_id, date_time) VALUES('9', '3', '3', '2015-06-22 21:30:00');  --         show 9
insert into "show" (id, movie_id, theater_id, date_time) VALUES('10', '4', '4', '2015-06-22 15:30:00'); -- sala 4  show 10
insert into "show" (id, movie_id, theater_id, date_time) VALUES('11', '4', '4', '2015-06-22 18:30:00'); --         show 11
insert into "show" (id, movie_id, theater_id, date_time) VALUES('12', '4', '4', '2015-06-22 21:30:00'); --         show 12
insert into "show" (id, movie_id, theater_id, date_time) VALUES('13', '7', '3', '2015-06-23 15:30:00'); -- sala 3  show 13
insert into "show" (id, movie_id, theater_id, date_time) VALUES('14', '7', '3', '2015-06-23 18:30:00'); --         show 14
insert into "show" (id, movie_id, theater_id, date_time) VALUES('15', '7', '3', '2015-06-23 21:30:00'); --         show 15
insert into "show" (id, movie_id, theater_id, date_time) VALUES('16', '1', '1', '2015-06-23 15:30:00'); -- sala 1  show 16
insert into "show" (id, movie_id, theater_id, date_time) VALUES('17', '1', '1', '2015-06-23 18:30:00'); --         show 17
insert into "show" (id, movie_id, theater_id, date_time) VALUES('18', '1', '1', '2015-06-23 21:30:00'); --         show 18
insert into "show" (id, movie_id, theater_id, date_time) VALUES('19', '2', '2', '2015-06-23 15:30:00'); -- sala 2  show 19
insert into "show" (id, movie_id, theater_id, date_time) VALUES('20', '2', '2', '2015-06-23 18:30:00'); --         show 20
insert into "show" (id, movie_id, theater_id, date_time) VALUES('21', '2', '2', '2015-06-23 21:30:00'); --         show 21
insert into "show" (id, movie_id, theater_id, date_time) VALUES('22', '4', '4', '2015-06-23 15:30:00'); -- sala 4  show 22
insert into "show" (id, movie_id, theater_id, date_time) VALUES('23', '4', '4', '2015-06-23 18:30:00'); --         show 23
insert into "show" (id, movie_id, theater_id, date_time) VALUES('24', '4', '4', '2015-06-23 21:30:00'); --         show 24
insert into "show" (id, movie_id, theater_id, date_time) VALUES('25', '3', '1', '2015-06-24 15:30:00'); -- sala 1  show 25
insert into "show" (id, movie_id, theater_id, date_time) VALUES('26', '3', '1', '2015-06-24 18:30:00'); --         show 26
insert into "show" (id, movie_id, theater_id, date_time) VALUES('27', '3', '1', '2015-06-24 21:30:00'); --         show 27
insert into "show" (id, movie_id, theater_id, date_time) VALUES('28', '7', '2', '2015-06-24 15:30:00'); -- sala 2  show 28
insert into "show" (id, movie_id, theater_id, date_time) VALUES('29', '7', '2', '2015-06-24 18:30:00'); --         show 29
insert into "show" (id, movie_id, theater_id, date_time) VALUES('30', '7', '2', '2015-06-24 21:30:00'); --         show 30
insert into "show" (id, movie_id, theater_id, date_time) VALUES('31', '5', '3', '2015-06-24 15:30:00'); -- sala 3  show 31
insert into "show" (id, movie_id, theater_id, date_time) VALUES('32', '5', '3', '2015-06-24 18:30:00'); --         show 32
insert into "show" (id, movie_id, theater_id, date_time) VALUES('33', '5', '3', '2015-06-24 21:30:00'); --         show 33
insert into "show" (id, movie_id, theater_id, date_time) VALUES('34', '6', '4', '2015-06-24 15:30:00'); -- sala 4  show 34
insert into "show" (id, movie_id, theater_id, date_time) VALUES('35', '6', '4', '2015-06-24 18:30:00'); --         show 35
insert into "show" (id, movie_id, theater_id, date_time) VALUES('36', '6', '4', '2015-06-24 21:30:00'); --         show 36
insert into "show" (id, movie_id, theater_id, date_time) VALUES('37', '5', '1', '2015-06-25 15:30:00'); -- sala 1  show 37
insert into "show" (id, movie_id, theater_id, date_time) VALUES('38', '5', '1', '2015-06-25 18:30:00'); --         show 38
insert into "show" (id, movie_id, theater_id, date_time) VALUES('39', '5', '1', '2015-06-25 21:30:00'); --         show 39
insert into "show" (id, movie_id, theater_id, date_time) VALUES('40', '6', '2', '2015-06-25 15:30:00'); -- sala 2  show 40
insert into "show" (id, movie_id, theater_id, date_time) VALUES('41', '6', '2', '2015-06-25 18:30:00'); --         show 41
insert into "show" (id, movie_id, theater_id, date_time) VALUES('42', '6', '2', '2015-06-25 21:30:00'); --         show 42
insert into "show" (id, movie_id, theater_id, date_time) VALUES('43', '8', '3', '2015-06-25 15:30:00'); -- sala 3  show 43
insert into "show" (id, movie_id, theater_id, date_time) VALUES('44', '8', '3', '2015-06-25 18:30:00'); --         show 44
insert into "show" (id, movie_id, theater_id, date_time) VALUES('45', '10', '3', '2015-06-25 21:30:00');--         show 45
insert into "show" (id, movie_id, theater_id, date_time) VALUES('46', '9', '4', '2015-06-25 15:30:00'); -- sala 4  show 46
insert into "show" (id, movie_id, theater_id, date_time) VALUES('47', '9', '4', '2015-06-25 18:30:00'); --         show 47
insert into "show" (id, movie_id, theater_id, date_time) VALUES('48', '9', '4', '2015-06-25 21:30:00'); --         show 48
insert into "show" (id, movie_id, theater_id, date_time) VALUES('49', '10', '1', '2015-06-26 15:30:00');-- sala 1  show 49
insert into "show" (id, movie_id, theater_id, date_time) VALUES('50', '10', '1', '2015-06-26 18:30:00');--         show 50
insert into "show" (id, movie_id, theater_id, date_time) VALUES('51', '8', '1', '2015-06-26 21:30:00'); --         show 51
insert into "show" (id, movie_id, theater_id, date_time) VALUES('52', '9', '2', '2015-06-26 15:30:00'); -- sala 2  show 52
insert into "show" (id, movie_id, theater_id, date_time) VALUES('53', '9', '2', '2015-06-26 18:30:00'); --         show 53
insert into "show" (id, movie_id, theater_id, date_time) VALUES('54', '9', '2', '2015-06-26 21:30:00'); --         show 54
insert into "show" (id, movie_id, theater_id, date_time) VALUES('55', '8', '1', '2015-06-27 15:30:00'); -- sala 1  show 55
insert into "show" (id, movie_id, theater_id, date_time) VALUES('56', '8', '1', '2015-06-27 18:30:00'); --         show 56
insert into "show" (id, movie_id, theater_id, date_time) VALUES('57', '8', '1', '2015-06-27 21:30:00'); --         show 57
insert into "show" (id, movie_id, theater_id, date_time) VALUES('58', '10', '2', '2015-06-27 15:30:00');-- sala 2  show 58
insert into "show" (id, movie_id, theater_id, date_time) VALUES('59', '10', '2', '2015-06-27 18:30:00');--         show 59

insert into "show" (id, movie_id, theater_id, date_time) VALUES('60', '11', '1', '2015-6-28 15:30:00'); -- scriptati
insert into "show" (id, movie_id, theater_id, date_time) VALUES('61', '11', '1', '2015-6-28 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('62', '11', '1', '2015-6-28 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('63', '12', '2', '2015-6-28 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('64', '12', '2', '2015-6-28 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('65', '12', '2', '2015-6-28 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('66', '13', '3', '2015-6-28 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('67', '13', '3', '2015-6-28 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('68', '13', '3', '2015-6-28 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('69', '14', '4', '2015-6-28 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('70', '14', '4', '2015-6-28 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('71', '14', '4', '2015-6-28 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('72', '12', '1', '2015-6-29 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('73', '12', '1', '2015-6-29 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('74', '12', '1', '2015-6-29 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('75', '13', '2', '2015-6-29 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('76', '13', '2', '2015-6-29 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('77', '13', '2', '2015-6-29 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('78', '14', '3', '2015-6-29 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('79', '14', '3', '2015-6-29 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('80', '14', '3', '2015-6-29 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('81', '15', '4', '2015-6-29 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('82', '15', '4', '2015-6-29 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('83', '15', '4', '2015-6-29 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('84', '13', '1', '2015-6-30 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('85', '13', '1', '2015-6-30 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('86', '13', '1', '2015-6-30 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('87', '14', '2', '2015-6-30 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('88', '14', '2', '2015-6-30 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('89', '14', '2', '2015-6-30 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('90', '15', '3', '2015-6-30 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('91', '15', '3', '2015-6-30 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('92', '15', '3', '2015-6-30 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('93', '16', '4', '2015-6-30 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('94', '16', '4', '2015-6-30 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('95', '16', '4', '2015-6-30 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('96', '14', '1', '2015-7-1 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('97', '14', '1', '2015-7-1 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('98', '14', '1', '2015-7-1 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('99', '15', '2', '2015-7-1 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('100', '15', '2', '2015-7-1 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('101', '15', '2', '2015-7-1 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('102', '16', '3', '2015-7-1 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('103', '16', '3', '2015-7-1 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('104', '16', '3', '2015-7-1 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('105', '17', '4', '2015-7-1 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('106', '17', '4', '2015-7-1 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('107', '17', '4', '2015-7-1 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('108', '15', '1', '2015-7-2 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('109', '15', '1', '2015-7-2 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('110', '15', '1', '2015-7-2 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('111', '16', '2', '2015-7-2 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('112', '16', '2', '2015-7-2 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('113', '16', '2', '2015-7-2 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('114', '17', '3', '2015-7-2 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('115', '17', '3', '2015-7-2 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('116', '17', '3', '2015-7-2 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('117', '18', '4', '2015-7-2 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('118', '18', '4', '2015-7-2 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('119', '18', '4', '2015-7-2 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('120', '16', '1', '2015-7-3 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('121', '16', '1', '2015-7-3 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('122', '16', '1', '2015-7-3 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('123', '17', '2', '2015-7-3 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('124', '17', '2', '2015-7-3 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('125', '17', '2', '2015-7-3 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('126', '18', '3', '2015-7-3 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('127', '18', '3', '2015-7-3 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('128', '18', '3', '2015-7-3 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('129', '19', '4', '2015-7-3 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('130', '19', '4', '2015-7-3 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('131', '19', '4', '2015-7-3 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('132', '17', '1', '2015-7-4 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('133', '17', '1', '2015-7-4 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('134', '17', '1', '2015-7-4 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('135', '18', '2', '2015-7-4 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('136', '18', '2', '2015-7-4 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('137', '18', '2', '2015-7-4 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('138', '19', '3', '2015-7-4 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('139', '19', '3', '2015-7-4 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('140', '19', '3', '2015-7-4 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('141', '20', '4', '2015-7-4 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('142', '20', '4', '2015-7-4 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('143', '20', '4', '2015-7-4 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('144', '18', '1', '2015-7-5 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('145', '18', '1', '2015-7-5 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('146', '18', '1', '2015-7-5 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('147', '19', '2', '2015-7-5 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('148', '19', '2', '2015-7-5 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('149', '19', '2', '2015-7-5 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('150', '20', '3', '2015-7-5 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('151', '20', '3', '2015-7-5 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('152', '20', '3', '2015-7-5 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('153', '21', '4', '2015-7-5 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('154', '21', '4', '2015-7-5 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('155', '21', '4', '2015-7-5 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('156', '19', '1', '2015-7-6 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('157', '19', '1', '2015-7-6 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('158', '19', '1', '2015-7-6 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('159', '20', '2', '2015-7-6 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('160', '20', '2', '2015-7-6 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('161', '20', '2', '2015-7-6 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('162', '21', '3', '2015-7-6 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('163', '21', '3', '2015-7-6 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('164', '21', '3', '2015-7-6 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('165', '22', '4', '2015-7-6 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('166', '22', '4', '2015-7-6 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('167', '22', '4', '2015-7-6 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('168', '20', '1', '2015-7-7 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('169', '20', '1', '2015-7-7 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('170', '20', '1', '2015-7-7 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('171', '21', '2', '2015-7-7 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('172', '21', '2', '2015-7-7 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('173', '21', '2', '2015-7-7 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('174', '22', '3', '2015-7-7 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('175', '22', '3', '2015-7-7 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('176', '22', '3', '2015-7-7 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('177', '23', '4', '2015-7-7 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('178', '23', '4', '2015-7-7 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('179', '23', '4', '2015-7-7 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('180', '21', '1', '2015-7-8 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('181', '21', '1', '2015-7-8 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('182', '21', '1', '2015-7-8 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('183', '22', '2', '2015-7-8 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('184', '22', '2', '2015-7-8 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('185', '22', '2', '2015-7-8 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('186', '23', '3', '2015-7-8 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('187', '23', '3', '2015-7-8 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('188', '23', '3', '2015-7-8 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('189', '24', '4', '2015-7-8 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('190', '24', '4', '2015-7-8 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('191', '24', '4', '2015-7-8 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('192', '22', '1', '2015-7-9 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('193', '22', '1', '2015-7-9 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('194', '22', '1', '2015-7-9 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('195', '23', '2', '2015-7-9 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('196', '23', '2', '2015-7-9 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('197', '23', '2', '2015-7-9 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('198', '24', '3', '2015-7-9 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('199', '24', '3', '2015-7-9 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('200', '24', '3', '2015-7-9 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('201', '25', '4', '2015-7-9 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('202', '25', '4', '2015-7-9 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('203', '25', '4', '2015-7-9 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('204', '23', '1', '2015-7-10 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('205', '23', '1', '2015-7-10 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('206', '23', '1', '2015-7-10 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('207', '24', '2', '2015-7-10 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('208', '24', '2', '2015-7-10 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('209', '24', '2', '2015-7-10 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('210', '25', '3', '2015-7-10 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('211', '25', '3', '2015-7-10 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('212', '25', '3', '2015-7-10 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('213', '26', '4', '2015-7-10 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('214', '26', '4', '2015-7-10 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('215', '26', '4', '2015-7-10 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('216', '24', '1', '2015-7-11 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('217', '24', '1', '2015-7-11 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('218', '24', '1', '2015-7-11 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('219', '25', '2', '2015-7-11 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('220', '25', '2', '2015-7-11 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('221', '25', '2', '2015-7-11 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('222', '26', '3', '2015-7-11 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('223', '26', '3', '2015-7-11 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('224', '26', '3', '2015-7-11 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('225', '27', '4', '2015-7-11 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('226', '27', '4', '2015-7-11 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('227', '27', '4', '2015-7-11 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('228', '25', '1', '2015-7-12 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('229', '25', '1', '2015-7-12 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('230', '25', '1', '2015-7-12 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('231', '26', '2', '2015-7-12 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('232', '26', '2', '2015-7-12 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('233', '26', '2', '2015-7-12 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('234', '27', '3', '2015-7-12 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('235', '27', '3', '2015-7-12 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('236', '27', '3', '2015-7-12 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('237', '28', '4', '2015-7-12 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('238', '28', '4', '2015-7-12 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('239', '28', '4', '2015-7-12 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('240', '26', '1', '2015-7-13 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('241', '26', '1', '2015-7-13 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('242', '26', '1', '2015-7-13 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('243', '27', '2', '2015-7-13 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('244', '27', '2', '2015-7-13 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('245', '27', '2', '2015-7-13 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('246', '28', '3', '2015-7-13 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('247', '28', '3', '2015-7-13 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('248', '28', '3', '2015-7-13 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('249', '29', '4', '2015-7-13 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('250', '29', '4', '2015-7-13 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('251', '29', '4', '2015-7-13 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('252', '27', '1', '2015-7-14 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('253', '27', '1', '2015-7-14 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('254', '27', '1', '2015-7-14 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('255', '28', '2', '2015-7-14 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('256', '28', '2', '2015-7-14 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('257', '28', '2', '2015-7-14 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('258', '29', '3', '2015-7-14 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('259', '29', '3', '2015-7-14 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('260', '29', '3', '2015-7-14 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('261', '30', '4', '2015-7-14 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('262', '30', '4', '2015-7-14 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('263', '30', '4', '2015-7-14 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('264', '28', '1', '2015-7-15 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('265', '28', '1', '2015-7-15 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('266', '28', '1', '2015-7-15 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('267', '29', '2', '2015-7-15 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('268', '29', '2', '2015-7-15 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('269', '29', '2', '2015-7-15 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('270', '30', '3', '2015-7-15 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('271', '30', '3', '2015-7-15 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('272', '30', '3', '2015-7-15 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('273', '31', '4', '2015-7-15 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('274', '31', '4', '2015-7-15 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('275', '31', '4', '2015-7-15 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('276', '29', '1', '2015-7-16 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('277', '29', '1', '2015-7-16 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('278', '29', '1', '2015-7-16 21:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('279', '30', '2', '2015-7-16 15:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('280', '30', '2', '2015-7-16 18:30:00');
insert into "show" (id, movie_id, theater_id, date_time) VALUES('281', '30', '2', '2015-7-16 21:30:00');


insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('1','2','1','24');   --sala 1
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('1','2','1','25');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('1','2','1','26');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('1','2','1','27');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('3','6','1','62');   --sala 2
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('3','6','1','63');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('3','6','1','64');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('3','6','1','65');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('3','6','1','66');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('5','8','1','112');  --sala 3
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('5','8','1','113');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('5','8','1','114');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('8','15','1','110'); --sala 3
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('8','15','1','112');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('8','15','1','114');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('9','12','1','168'); -- sala 4
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('9','12','1','169');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('9','12','1','170');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('9','12','1','171');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('9','12','1','172');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('9','12','1','173');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('4','33','1','136'); -- sala 3
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('4','33','1','137');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('4','33','1','138');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('2','38','1','14');  -- sala 1
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('2','38','1','15');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('2','38','1','16');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('2','38','1','17');

insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('2','48','1','163'); -- sala 4 -> grease delle 21:30
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('2','48','1','164');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('2','48','1','165');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('2','48','1','166');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('6','48','1','183');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('6','48','1','184');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('6','48','1','185');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('6','48','1','186');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('6','48','1','187');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('7','48','1','206');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('7','48','1','207');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('7','48','1','208');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('8','48','1','190');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('8','48','1','191');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('1','48','1','211');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('1','48','1','212');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('1','48','1','213');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('1','48','1','214');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('1','48','1','215');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('3','48','1','169');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('3','48','1','170');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('3','48','1','171');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('3','48','1','172');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('9','48','1','194');
insert into "reservation" (user_id, show_id, price_id, seat_id) VALUES ('9','48','1','195');

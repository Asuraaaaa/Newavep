/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : essentialmode

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 25/03/2020 21:21:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for addon_account
-- ----------------------------
DROP TABLE IF EXISTS `addon_account`;
CREATE TABLE `addon_account`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `label` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `shared` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of addon_account
-- ----------------------------
INSERT INTO `addon_account` VALUES (1, 'society_police', 'Police', 1);
INSERT INTO `addon_account` VALUES (2, 'society_cardealer', 'Concessionnaire', 1);
INSERT INTO `addon_account` VALUES (3, 'property_black_money', 'Argent Sale Propriété', 0);
INSERT INTO `addon_account` VALUES (4, 'society_taxi', 'Taxi', 1);
INSERT INTO `addon_account` VALUES (5, 'society_realestateagent', 'Agent immobilier', 1);
INSERT INTO `addon_account` VALUES (6, 'society_mechanic', 'Mécano', 1);
INSERT INTO `addon_account` VALUES (7, 'society_ambulance', 'Ambulance', 1);

-- ----------------------------
-- Table structure for addon_account_data
-- ----------------------------
DROP TABLE IF EXISTS `addon_account_data`;
CREATE TABLE `addon_account_data`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of addon_account_data
-- ----------------------------
INSERT INTO `addon_account_data` VALUES (1, 'society_police', 16375, NULL);
INSERT INTO `addon_account_data` VALUES (2, 'society_cardealer', 0, NULL);
INSERT INTO `addon_account_data` VALUES (3, 'property_black_money', 0, 'steam:1100001081ca641');
INSERT INTO `addon_account_data` VALUES (4, 'society_taxi', 2312, NULL);
INSERT INTO `addon_account_data` VALUES (5, 'society_realestateagent', 0, NULL);
INSERT INTO `addon_account_data` VALUES (6, 'society_mecano', 2732, NULL);
INSERT INTO `addon_account_data` VALUES (7, 'society_ambulance', 0, NULL);
INSERT INTO `addon_account_data` VALUES (8, 'property_black_money', 0, 'fcd32157de1fdd7dc4c122113baca4b95ec80013');
INSERT INTO `addon_account_data` VALUES (9, 'society_mechanic', 0, NULL);

-- ----------------------------
-- Table structure for addon_inventory
-- ----------------------------
DROP TABLE IF EXISTS `addon_inventory`;
CREATE TABLE `addon_inventory`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `label` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `shared` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of addon_inventory
-- ----------------------------
INSERT INTO `addon_inventory` VALUES (1, 'society_police', 'Police', 1);
INSERT INTO `addon_inventory` VALUES (2, 'society_cardealer', 'Concesionnaire', 1);
INSERT INTO `addon_inventory` VALUES (3, 'property', 'Propriété', 0);
INSERT INTO `addon_inventory` VALUES (4, 'society_taxi', 'Taxi', 1);
INSERT INTO `addon_inventory` VALUES (5, 'society_mechanic', 'Mécano', 1);
INSERT INTO `addon_inventory` VALUES (6, 'society_ambulance', 'Ambulance', 1);

-- ----------------------------
-- Table structure for addon_inventory_items
-- ----------------------------
DROP TABLE IF EXISTS `addon_inventory_items`;
CREATE TABLE `addon_inventory_items`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `count` int(0) NOT NULL,
  `owner` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of addon_inventory_items
-- ----------------------------
INSERT INTO `addon_inventory_items` VALUES (6, 'society_police', 'acetone', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (7, 'society_police', 'blowpipe', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (8, 'society_police', 'detector', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (9, 'society_police', 'crack', 0, NULL);
INSERT INTO `addon_inventory_items` VALUES (10, 'property', 'acetone', 0, 'steam:1100001081ca641');

-- ----------------------------
-- Table structure for billing
-- ----------------------------
DROP TABLE IF EXISTS `billing`;
CREATE TABLE `billing`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `sender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `target_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `amount` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of billing
-- ----------------------------
INSERT INTO `billing` VALUES (28, 'steam:1100001081ca641', 'Radar fixe', 'society', 'society_police', '📸:plaque AAF 453 , 110 km/h a la place de 80.0', 1250);

-- ----------------------------
-- Table structure for cardealer_vehicles
-- ----------------------------
DROP TABLE IF EXISTS `cardealer_vehicles`;
CREATE TABLE `cardealer_vehicles`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `price` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for characters
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `dateofbirth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'M',
  `height` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of characters
-- ----------------------------
INSERT INTO `characters` VALUES (3, 'fcd32157de1fdd7dc4c122113baca4b95ec80013', 'Toto', 'Tata', '2015-56-59', 'm', '150');
INSERT INTO `characters` VALUES (5, 'fcd32157de1fdd7dc4c122113baca4b95ec80013', 'Toto', 'Tata', '1989/02/05', 'm', '175');
INSERT INTO `characters` VALUES (6, 'fcd32157de1fdd7dc4c122113baca4b95ec80013', 'Toto', 'Tata', '1989/08/08', 'm', '175');

-- ----------------------------
-- Table structure for datastore
-- ----------------------------
DROP TABLE IF EXISTS `datastore`;
CREATE TABLE `datastore`  (
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `shared` int(0) NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datastore
-- ----------------------------
INSERT INTO `datastore` VALUES ('property', 'Propriété', 0);
INSERT INTO `datastore` VALUES ('society_ambulance', 'Ambulance', 1);
INSERT INTO `datastore` VALUES ('society_police', 'Police', 1);
INSERT INTO `datastore` VALUES ('society_taxi', 'Taxi', 1);
INSERT INTO `datastore` VALUES ('user_bags', 'Sac', 0);
INSERT INTO `datastore` VALUES ('user_bracelets', 'Bracelets', 0);
INSERT INTO `datastore` VALUES ('user_chain', 'Chaine', 0);
INSERT INTO `datastore` VALUES ('user_ears', 'Ears', 0);
INSERT INTO `datastore` VALUES ('user_glasses', 'Glasses', 0);
INSERT INTO `datastore` VALUES ('user_helmet', 'Helmet', 0);
INSERT INTO `datastore` VALUES ('user_mask', 'Mask', 0);
INSERT INTO `datastore` VALUES ('user_watches', 'Watches', 0);

-- ----------------------------
-- Table structure for datastore_data
-- ----------------------------
DROP TABLE IF EXISTS `datastore_data`;
CREATE TABLE `datastore_data`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_datastore_data_name_owner`(`name`, `owner`) USING BTREE,
  INDEX `index_datastore_data_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datastore_data
-- ----------------------------
INSERT INTO `datastore_data` VALUES (1, 'user_bags', 'steam:1100001081ca641', '{}');
INSERT INTO `datastore_data` VALUES (2, 'user_chain', 'steam:1100001081ca641', '{}');
INSERT INTO `datastore_data` VALUES (3, 'user_ears', 'steam:1100001081ca641', '{\"skin\":[{\"ears_2\":0,\"ears_1\":1}]}');
INSERT INTO `datastore_data` VALUES (4, 'user_glasses', 'steam:1100001081ca641', '{\"skin\":[{\"glasses_2\":9,\"glasses_1\":20}]}');
INSERT INTO `datastore_data` VALUES (5, 'user_bracelets', 'steam:1100001081ca641', '{}');
INSERT INTO `datastore_data` VALUES (6, 'user_mask', 'steam:1100001081ca641', '{\"skin\":[{\"mask_2\":0,\"mask_1\":1}]}');
INSERT INTO `datastore_data` VALUES (7, 'user_helmet', 'steam:1100001081ca641', '{}');
INSERT INTO `datastore_data` VALUES (8, 'user_watches', 'steam:1100001081ca641', '{}');
INSERT INTO `datastore_data` VALUES (9, 'society_police', NULL, '{\"weapons\":[{\"count\":0,\"name\":\"WEAPON_NIGHTSTICK\"},{\"count\":0,\"name\":\"WEAPON_APPISTOL\"},{\"count\":0,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"count\":0,\"name\":\"WEAPON_ADVANCEDRIFLE\"},{\"count\":0,\"name\":\"WEAPON_STUNGUN\"},{\"count\":0,\"name\":\"WEAPON_FLASHLIGHT\"},{\"count\":0,\"name\":\"WEAPON_SMG\"},{\"count\":0,\"name\":\"WEAPON_SMOKEGRENADE\"},{\"count\":0,\"name\":\"WEAPON_FIREEXTINGUISHER\"},{\"count\":0,\"name\":\"WEAPON_PETROLCAN\"},{\"count\":0,\"name\":\"WEAPON_FLAREGUN\"},{\"count\":0,\"name\":\"GADGET_PARACHUTE\"},{\"count\":0,\"name\":\"WEAPON_FLARE\"}]}');
INSERT INTO `datastore_data` VALUES (10, 'property', 'steam:1100001081ca641', '{\"dressing\":[{\"label\":\"tes\",\"skin\":{\"chest_3\":0,\"blush_1\":0,\"eyebrows_4\":0,\"beard_4\":0,\"sun_2\":0,\"beard_1\":0,\"blush_3\":0,\"hair_2\":0,\"chain_1\":0,\"complexion_1\":0,\"shoes_1\":61,\"eye_color\":0,\"bracelets_2\":0,\"bodyb_1\":0,\"mask_2\":0,\"bags_2\":0,\"watches_2\":0,\"chest_2\":0,\"arms\":11,\"hair_1\":5,\"beard_2\":0,\"glasses_1\":0,\"makeup_2\":0,\"age_1\":0,\"makeup_4\":0,\"chain_2\":0,\"glasses_2\":0,\"bracelets_1\":0,\"sex\":0,\"lipstick_3\":0,\"makeup_3\":0,\"shoes_2\":2,\"beard_3\":0,\"hair_color_1\":16,\"chest_1\":0,\"blush_2\":0,\"watches_1\":1,\"blemishes_2\":0,\"helmet_1\":-1,\"bags_1\":0,\"tshirt_1\":15,\"age_2\":0,\"decals_1\":3,\"sun_1\":0,\"skin\":11,\"eyebrows_2\":0,\"lipstick_2\":0,\"lipstick_1\":0,\"bodyb_2\":0,\"hair_color_2\":0,\"pants_1\":25,\"decals_2\":0,\"torso_1\":42,\"face\":0,\"eyebrows_3\":0,\"eyebrows_1\":0,\"ears_1\":-1,\"moles_1\":0,\"moles_2\":0,\"bproof_2\":0,\"pants_2\":2,\"tshirt_2\":0,\"arms_2\":0,\"complexion_2\":0,\"mask_1\":0,\"blemishes_1\":0,\"torso_2\":0,\"makeup_1\":0,\"helmet_2\":0,\"bproof_1\":0,\"ears_2\":0,\"lipstick_4\":0}},{\"label\":\"lll\",\"skin\":{\"chest_3\":0,\"blush_1\":0,\"eyebrows_4\":0,\"beard_4\":0,\"sun_2\":0,\"beard_1\":0,\"blush_3\":0,\"hair_2\":0,\"chain_1\":0,\"complexion_1\":0,\"shoes_1\":61,\"eye_color\":0,\"bracelets_2\":0,\"bodyb_1\":0,\"decals_2\":0,\"bags_2\":0,\"watches_2\":0,\"chest_2\":0,\"arms\":11,\"hair_1\":5,\"beard_2\":0,\"glasses_1\":0,\"makeup_2\":0,\"age_1\":0,\"makeup_4\":0,\"chain_2\":0,\"face\":0,\"bracelets_1\":0,\"sex\":0,\"lipstick_3\":0,\"makeup_3\":0,\"shoes_2\":2,\"beard_3\":0,\"hair_color_1\":16,\"chest_1\":0,\"blush_2\":0,\"helmet_1\":-1,\"watches_1\":1,\"lipstick_1\":0,\"bags_1\":0,\"tshirt_1\":15,\"age_2\":0,\"moles_2\":0,\"decals_1\":3,\"skin\":11,\"eyebrows_2\":0,\"lipstick_2\":0,\"blemishes_2\":0,\"bodyb_2\":0,\"hair_color_2\":0,\"pants_1\":25,\"sun_1\":0,\"torso_1\":41,\"blemishes_1\":0,\"eyebrows_3\":0,\"ears_1\":-1,\"glasses_2\":0,\"moles_1\":0,\"eyebrows_1\":0,\"bproof_2\":0,\"pants_2\":2,\"complexion_2\":0,\"arms_2\":0,\"mask_2\":0,\"tshirt_2\":0,\"helmet_2\":0,\"torso_2\":0,\"makeup_1\":0,\"mask_1\":0,\"bproof_1\":0,\"ears_2\":0,\"lipstick_4\":0}}]}');
INSERT INTO `datastore_data` VALUES (12, 'society_taxi', NULL, '{\"garage\":[{\"modEngineBlock\":-1,\"modRightFender\":-1,\"plateIndex\":0,\"fuelLevel\":58.8,\"modSeats\":-1,\"modFrontWheels\":-1,\"modRoof\":-1,\"modSteeringWheel\":-1,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modTrunk\":-1,\"modArchCover\":-1,\"modSpoilers\":-1,\"modEngine\":-1,\"modFender\":-1,\"modDial\":-1,\"neonEnabled\":[false,false,false,false],\"modRearBumper\":-1,\"color2\":77,\"modOrnaments\":-1,\"modHood\":-1,\"model\":-956048545,\"modAerials\":-1,\"modXenon\":false,\"modSuspension\":-1,\"modVanityPlate\":-1,\"modLivery\":-1,\"wheels\":0,\"wheelColor\":156,\"modHydrolic\":-1,\"modExhaust\":-1,\"modTurbo\":false,\"modBackWheels\":-1,\"bodyHealth\":1000.0,\"modTrimA\":-1,\"modStruts\":-1,\"color1\":88,\"modHorns\":-1,\"modSmokeEnabled\":false,\"modSpeakers\":-1,\"pearlescentColor\":5,\"modArmor\":-1,\"modTransmission\":-1,\"modGrille\":-1,\"tyreSmokeColor\":[255,255,255],\"modSideSkirt\":-1,\"plate\":\"LHN 367\",\"modFrame\":-1,\"modShifterLeavers\":-1,\"engineHealth\":1000.0,\"windowTint\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modPlateHolder\":-1,\"modTank\":-1,\"modBrakes\":-1,\"extras\":{\"11\":true,\"10\":false,\"9\":false,\"8\":false,\"7\":false,\"6\":false,\"5\":true},\"modDashboard\":-1,\"modAPlate\":-1,\"dirtLevel\":8.5,\"neonColor\":[255,0,255],\"modAirFilter\":-1},{\"modEngineBlock\":-1,\"modRightFender\":-1,\"plateIndex\":0,\"fuelLevel\":41.0,\"color2\":77,\"modSeats\":-1,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modTrunk\":-1,\"modDial\":-1,\"modSpoilers\":-1,\"modRoof\":-1,\"modFender\":-1,\"modSpeakers\":-1,\"neonEnabled\":[false,false,false,false],\"modRearBumper\":-1,\"modXenon\":false,\"modOrnaments\":-1,\"modHood\":-1,\"model\":-956048545,\"modAerials\":-1,\"modSuspension\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"modLivery\":-1,\"wheels\":0,\"wheelColor\":156,\"modEngine\":-1,\"modHydrolic\":-1,\"modTurbo\":false,\"modBackWheels\":-1,\"modAPlate\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"color1\":88,\"bodyHealth\":1000.0,\"modTrimA\":-1,\"pearlescentColor\":5,\"modSmokeEnabled\":false,\"modArmor\":-1,\"modFrontBumper\":-1,\"modHorns\":-1,\"tyreSmokeColor\":[255,255,255],\"modTransmission\":-1,\"plate\":\"HVH 198\",\"modFrame\":-1,\"modGrille\":-1,\"engineHealth\":1000.0,\"windowTint\":-1,\"modBrakes\":-1,\"modSideSkirt\":-1,\"modPlateHolder\":-1,\"modTank\":-1,\"modTrimB\":-1,\"extras\":{\"11\":true,\"9\":false,\"10\":false,\"8\":false,\"7\":false,\"6\":false,\"5\":true},\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"neonColor\":[255,0,255],\"dirtLevel\":7.4}]}');
INSERT INTO `datastore_data` VALUES (13, 'society_ambulance', NULL, '{}');
INSERT INTO `datastore_data` VALUES (14, 'user_bags', 'fcd32157de1fdd7dc4c122113baca4b95ec80013', '{}');
INSERT INTO `datastore_data` VALUES (15, 'user_helmet', 'fcd32157de1fdd7dc4c122113baca4b95ec80013', '{}');
INSERT INTO `datastore_data` VALUES (16, 'user_glasses', 'fcd32157de1fdd7dc4c122113baca4b95ec80013', '{}');
INSERT INTO `datastore_data` VALUES (17, 'property', 'fcd32157de1fdd7dc4c122113baca4b95ec80013', '{}');
INSERT INTO `datastore_data` VALUES (18, 'user_mask', 'fcd32157de1fdd7dc4c122113baca4b95ec80013', '{}');
INSERT INTO `datastore_data` VALUES (19, 'user_bracelets', 'fcd32157de1fdd7dc4c122113baca4b95ec80013', '{}');
INSERT INTO `datastore_data` VALUES (20, 'user_ears', 'fcd32157de1fdd7dc4c122113baca4b95ec80013', '{}');
INSERT INTO `datastore_data` VALUES (21, 'user_chain', 'fcd32157de1fdd7dc4c122113baca4b95ec80013', '{}');
INSERT INTO `datastore_data` VALUES (22, 'user_watches', 'fcd32157de1fdd7dc4c122113baca4b95ec80013', '{}');

-- ----------------------------
-- Table structure for fine_types
-- ----------------------------
DROP TABLE IF EXISTS `fine_types`;
CREATE TABLE `fine_types`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `amount` int(0) NULL DEFAULT NULL,
  `category` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fine_types
-- ----------------------------
INSERT INTO `fine_types` VALUES (1, 'Usage abusif du klaxon', 30, 0);
INSERT INTO `fine_types` VALUES (2, 'Franchir une ligne continue', 40, 0);
INSERT INTO `fine_types` VALUES (3, 'Circulation à contresens', 250, 0);
INSERT INTO `fine_types` VALUES (4, 'Demi-tour non autorisé', 250, 0);
INSERT INTO `fine_types` VALUES (5, 'Circulation hors-route', 170, 0);
INSERT INTO `fine_types` VALUES (6, 'Non-respect des distances de sécurité', 30, 0);
INSERT INTO `fine_types` VALUES (7, 'Arrêt dangereux / interdit', 150, 0);
INSERT INTO `fine_types` VALUES (8, 'Stationnement gênant / interdit', 70, 0);
INSERT INTO `fine_types` VALUES (9, 'Non respect  de la priorité à droite', 70, 0);
INSERT INTO `fine_types` VALUES (10, 'Non-respect à un véhicule prioritaire', 90, 0);
INSERT INTO `fine_types` VALUES (11, 'Non-respect d\'un stop', 105, 0);
INSERT INTO `fine_types` VALUES (12, 'Non-respect d\'un feu rouge', 130, 0);
INSERT INTO `fine_types` VALUES (13, 'Dépassement dangereux', 100, 0);
INSERT INTO `fine_types` VALUES (14, 'Véhicule non en état', 100, 0);
INSERT INTO `fine_types` VALUES (15, 'Conduite sans permis', 1500, 0);
INSERT INTO `fine_types` VALUES (16, 'Délit de fuite', 800, 0);
INSERT INTO `fine_types` VALUES (17, 'Excès de vitesse < 5 kmh', 90, 0);
INSERT INTO `fine_types` VALUES (18, 'Excès de vitesse 5-15 kmh', 120, 0);
INSERT INTO `fine_types` VALUES (19, 'Excès de vitesse 15-30 kmh', 180, 0);
INSERT INTO `fine_types` VALUES (20, 'Excès de vitesse > 30 kmh', 300, 0);
INSERT INTO `fine_types` VALUES (21, 'Entrave de la circulation', 110, 1);
INSERT INTO `fine_types` VALUES (22, 'Dégradation de la voie publique', 90, 1);
INSERT INTO `fine_types` VALUES (23, 'Trouble à l\'ordre publique', 90, 1);
INSERT INTO `fine_types` VALUES (24, 'Entrave opération de police', 130, 1);
INSERT INTO `fine_types` VALUES (25, 'Insulte envers / entre civils', 75, 1);
INSERT INTO `fine_types` VALUES (26, 'Outrage à agent de police', 110, 1);
INSERT INTO `fine_types` VALUES (27, 'Menace verbale ou intimidation envers civil', 90, 1);
INSERT INTO `fine_types` VALUES (28, 'Menace verbale ou intimidation envers policier', 150, 1);
INSERT INTO `fine_types` VALUES (29, 'Manifestation illégale', 250, 1);
INSERT INTO `fine_types` VALUES (30, 'Tentative de corruption', 1500, 1);
INSERT INTO `fine_types` VALUES (31, 'Arme blanche sortie en ville', 120, 2);
INSERT INTO `fine_types` VALUES (32, 'Arme léthale sortie en ville', 300, 2);
INSERT INTO `fine_types` VALUES (33, 'Port d\'arme non autorisé (défaut de license)', 600, 2);
INSERT INTO `fine_types` VALUES (34, 'Port d\'arme illégal', 700, 2);
INSERT INTO `fine_types` VALUES (35, 'Pris en flag lockpick', 300, 2);
INSERT INTO `fine_types` VALUES (36, 'Vol de voiture', 1800, 2);
INSERT INTO `fine_types` VALUES (37, 'Vente de drogue', 1500, 2);
INSERT INTO `fine_types` VALUES (38, 'Fabriquation de drogue', 1500, 2);
INSERT INTO `fine_types` VALUES (39, 'Possession de drogue', 650, 2);
INSERT INTO `fine_types` VALUES (40, 'Prise d\'ôtage civil', 1500, 2);
INSERT INTO `fine_types` VALUES (41, 'Prise d\'ôtage agent de l\'état', 2000, 2);
INSERT INTO `fine_types` VALUES (42, 'Braquage particulier', 650, 2);
INSERT INTO `fine_types` VALUES (43, 'Braquage magasin', 650, 2);
INSERT INTO `fine_types` VALUES (44, 'Braquage de banque', 1500, 2);
INSERT INTO `fine_types` VALUES (45, 'Tir sur civil', 2000, 3);
INSERT INTO `fine_types` VALUES (46, 'Tir sur agent de l\'état', 2500, 3);
INSERT INTO `fine_types` VALUES (47, 'Tentative de meurtre sur civil', 3000, 3);
INSERT INTO `fine_types` VALUES (48, 'Tentative de meurtre sur agent de l\'état', 5000, 3);
INSERT INTO `fine_types` VALUES (49, 'Meurtre sur civil', 10000, 3);
INSERT INTO `fine_types` VALUES (50, 'Meurte sur agent de l\'état', 30000, 3);
INSERT INTO `fine_types` VALUES (51, 'Meurtre involontaire', 1800, 3);
INSERT INTO `fine_types` VALUES (52, 'Escroquerie à l\'entreprise', 2000, 2);

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `limit` int(0) NOT NULL DEFAULT -1,
  `rare` int(0) NOT NULL DEFAULT 0,
  `can_remove` int(0) NOT NULL DEFAULT 1,
  `can_steal` int(0) NOT NULL,
  `weight` int(0) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('acetone', 'Acetone', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('bandage', 'Bandage', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('billet', 'Papier', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('billet_pooch', 'Faux Billet', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('blowpipe', 'Chalumeaux', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('bread', 'bread', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('bulletproof', 'Gilet blistique', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('carokit', 'Kit carosserie', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('coke', 'Cokaine', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('coke_pooch', 'Pochon de coke', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('coyotte', 'Coyotte', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('crack', 'Crack', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('crack_pooch', 'Pochon de Crack', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('detector', 'Detector', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('donut', 'Donuts', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('ecstasy', 'Ecstasy', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('ecstasy_pooch', 'Pochon d \'ecstasy', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('fixkit', 'Kit réparation', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('fixtool', 'outils réparation', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('gazbottle', 'bouteille de gaz', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('grand_cru', 'Grand Cru', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('ketamine', 'Ketamine', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('ketamine_pooch', 'Pochon de ketamine', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('lithium', 'Lithium', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('medikit', 'Medikit', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('meth', 'meth', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('meth_pooch', 'Pochon de meth', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('methlab', 'Methilamine', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('opium', 'Opium', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('opium_pooch', 'Pochon de opium', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('oxygen_mask', 'Mask a oxygen', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('picnic', 'Kit de picnic', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('pils', 'pils', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('redgull', 'Redgull', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('rose', 'Rose', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('sandwich', 'sandwich', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('umbrella', 'Parapluie', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('water', 'water', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('weed', 'Weed', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('weed_pooch', 'Pochon de weed', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('xanax', 'xanax', 100, 0, 0, 0, 1);
INSERT INTO `items` VALUES ('carotool', 'Kit de vitre', 100, 0, 1, 0, 1);
INSERT INTO `items` VALUES ('vegetables', 'Legumes', 100, 0, 1, 0, 1);
INSERT INTO `items` VALUES ('tacos', 'Tacos', 100, 0, 1, 0, 1);
INSERT INTO `items` VALUES ('burger', 'Burger', 100, 0, 1, 0, 1);
INSERT INTO `items` VALUES ('chocolate', 'Chocolat', 100, 0, 1, 0, 1);
INSERT INTO `items` VALUES ('hamburger', 'Hamburger', 100, 0, 1, 0, 1);
INSERT INTO `items` VALUES ('cupcake', 'Cupcake', 100, 0, 1, 0, 1);
INSERT INTO `items` VALUES ('bolcacahuetes', 'Bolcacahuetes', 100, 0, 1, 0, 1);
INSERT INTO `items` VALUES ('bolnoixcajou', 'Bolnoixcajou', 100, 0, 1, 0, 1);
INSERT INTO `items` VALUES ('bolpistache', 'Bolpistache', 100, 0, 1, 0, 1);
INSERT INTO `items` VALUES ('bolchips', 'Bolchips', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('mixapero', 'mixapero', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('cola', 'cola', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('raisin', 'raisin', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('icetea', 'icetea', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('redbull', 'redbull', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('coffee', 'coffee', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('soda', 'soda', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('jusfruit', 'jusfruit', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('icetea', 'icetea', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('energy', 'energy', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('drpepper', 'drpepper', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('limonade', 'limonade', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('vine', 'vine', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('beer', 'beer', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('vodka', 'vodka', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('tequila', 'tequila', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('whisky', 'whisky', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('rhum', 'rhum', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('jager', 'jager', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('martini', 'martini', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('jagerbomb', 'jagerbomb', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('golem', 'golem', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('whiskycoca', 'whiskycoca', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('vodkaenergy', 'vodkaenergy', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('teqpaf', 'teqpaf', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('vodkafruit', 'vodkafruit', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('rhumfruit', 'rhumfruit', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('rhumcoca', 'rhumcoca', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('metreshooter', 'metreshooter', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('jagercerbere', 'jagercerbere', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('marijuana', 'marijuana', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('coke', 'coke', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('heroin', 'heroin', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('lsd', 'lsd', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('meth', 'meth', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('xanax', 'xanax', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('cigarett', 'cigarett', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('dildo', 'dildo', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('dildo2', 'dildo2', 100, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('rope', 'Corde', 10, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('handcuffs', 'Menotte', 10, 0, 1, 1, 1);
INSERT INTO `items` VALUES ('key', 'Clef', 10, 0, 1, 1, 1);

-- ----------------------------
-- Table structure for items_copy1
-- ----------------------------
DROP TABLE IF EXISTS `items_copy1`;
CREATE TABLE `items_copy1`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `limit` int(0) NOT NULL DEFAULT -1,
  `rare` int(0) NOT NULL DEFAULT 0,
  `can_remove` int(0) NOT NULL DEFAULT 1,
  `can_steal` int(0) NOT NULL,
  `weight` int(0) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of items_copy1
-- ----------------------------
INSERT INTO `items_copy1` VALUES ('acetone', 'Acetone', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('bandage', 'Bandage', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('billet', 'Papier', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('billet_pooch', 'Faux Billet', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('blowpipe', 'Chalumeaux', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('bread', 'bread', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('bulletproof', 'Gilet blistique', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('carokit', 'Kit carosserie', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('coke', 'Cokaine', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('coke_pooch', 'Pochon de coke', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('coyotte', 'Coyotte', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('crack', 'Crack', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('crack_pooch', 'Pochon de Crack', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('detector', 'Detector', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('donut', 'Donuts', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('ecstasy', 'Ecstasy', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('ecstasy_pooch', 'Pochon d\'ecstasy', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('fixkit', 'Kit réparation', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('fixtool', 'outils réparation', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('gazbottle', 'bouteille de gaz', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('grand_cru', 'Grand Cru', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('ketamine', 'Ketamine', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('ketamine_pooch', 'Pochon de ketamine', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('lithium', 'Lithium', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('medikit', 'Medikit', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('meth', 'meth', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('meth_pooch', 'Pochon de meth', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('methlab', 'Methilamine', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('opium', 'Opium', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('opium_pooch', 'Pochon de opium', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('oxygen_mask', 'Mask a oxygen', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('picnic', 'Kit de picnic', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('pils', 'pils', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('redgull', 'Redgull', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('rose', 'Rose', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('sandwich', 'sandwich', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('umbrella', 'Parapluie', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('water', 'water', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('weed', 'Weed', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('weed_pooch', 'Pochon de weed', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('xanax', 'xanax', 100, 0, 0, 1, 1);
INSERT INTO `items_copy1` VALUES ('carotool', 'Kit de vitre', 100, 0, 1, 1, 1);

-- ----------------------------
-- Table structure for job_grades
-- ----------------------------
DROP TABLE IF EXISTS `job_grades`;
CREATE TABLE `job_grades`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `grade` int(0) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `salary` int(0) NOT NULL,
  `skin_male` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `skin_female` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_grades
-- ----------------------------
INSERT INTO `job_grades` VALUES (1, 'unemployed', 0, 'unemployed', 'Sans Emplois', 200, '{}', '{}');
INSERT INTO `job_grades` VALUES (2, 'police', 0, 'recruit', 'Recrue', 20, '{}', '{}');
INSERT INTO `job_grades` VALUES (3, 'police', 1, 'officer', 'Officier', 40, '{}', '{}');
INSERT INTO `job_grades` VALUES (4, 'police', 2, 'sergeant', 'Sergent', 60, '{}', '{}');
INSERT INTO `job_grades` VALUES (5, 'police', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}');
INSERT INTO `job_grades` VALUES (6, 'police', 4, 'boss', 'Commandant', 100, '{}', '{}');
INSERT INTO `job_grades` VALUES (14, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}');
INSERT INTO `job_grades` VALUES (15, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}');
INSERT INTO `job_grades` VALUES (16, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}');
INSERT INTO `job_grades` VALUES (17, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}');
INSERT INTO `job_grades` VALUES (18, 'taxi', 0, 'recrue', 'Recrue', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES (19, 'taxi', 1, 'novice', 'Novice', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES (20, 'taxi', 2, 'experimente', 'Experimente', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES (21, 'taxi', 3, 'uber', 'Uber', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES (22, 'taxi', 4, 'boss', 'Patron', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}');
INSERT INTO `job_grades` VALUES (23, 'realestateagent', 0, 'location', 'Location', 10, '{}', '{}');
INSERT INTO `job_grades` VALUES (24, 'realestateagent', 1, 'vendeur', 'Vendeur', 25, '{}', '{}');
INSERT INTO `job_grades` VALUES (25, 'realestateagent', 2, 'gestion', 'Gestion', 40, '{}', '{}');
INSERT INTO `job_grades` VALUES (26, 'realestateagent', 3, 'boss', 'Patron', 0, '{}', '{}');
INSERT INTO `job_grades` VALUES (27, 'mechanic', 0, 'recrue', 'Recrue', 12, '{}', '{}');
INSERT INTO `job_grades` VALUES (28, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}');
INSERT INTO `job_grades` VALUES (29, 'mechanic', 2, 'experimente', 'Experimente', 36, '{}', '{}');
INSERT INTO `job_grades` VALUES (30, 'mechanic', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}');
INSERT INTO `job_grades` VALUES (31, 'mechanic', 4, 'boss', 'Patron', 0, '{}', '{}');
INSERT INTO `job_grades` VALUES (32, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES (33, 'ambulance', 1, 'doctor', 'Medecin', 40, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES (34, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES (35, 'ambulance', 3, 'boss', 'Chirurgien', 80, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------
INSERT INTO `jobs` VALUES ('ambulance', 'Ambulance', 0);
INSERT INTO `jobs` VALUES ('cardealer', 'Concessionnaire', 1);
INSERT INTO `jobs` VALUES ('mechanic', 'Mécano', 0);
INSERT INTO `jobs` VALUES ('police', 'LSPD', 0);
INSERT INTO `jobs` VALUES ('realestateagent', 'Agent immobilier', 0);
INSERT INTO `jobs` VALUES ('taxi', 'Taxi', 0);
INSERT INTO `jobs` VALUES ('unemployed', 'RSA', 0);

-- ----------------------------
-- Table structure for joueurs_bans
-- ----------------------------
DROP TABLE IF EXISTS `joueurs_bans`;
CREATE TABLE `joueurs_bans`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nom` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Citizen',
  `date` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '2010-04-06',
  `heure` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '12:05:07',
  `verif` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'oui',
  `bandef` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Non',
  `raison` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jsfour_criminalrecord
-- ----------------------------
DROP TABLE IF EXISTS `jsfour_criminalrecord`;
CREATE TABLE `jsfour_criminalrecord`  (
  `offense` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `institution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `charge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `term` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `classified` int(0) NOT NULL DEFAULT 0,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `dob` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `warden` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`offense`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jsfour_criminaluserinfo
-- ----------------------------
DROP TABLE IF EXISTS `jsfour_criminaluserinfo`;
CREATE TABLE `jsfour_criminaluserinfo`  (
  `identifier` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `aliases` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `recordid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `eyecolor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `haircolor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `dob` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `height` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jsfour_criminaluserinfo
-- ----------------------------
INSERT INTO `jsfour_criminaluserinfo` VALUES ('steam:1100001081ca641', 'TOTO', 'E837E484', '72kg', 'Noir', 'Noir', 'TOTO', 'TOTA', '2015-89-52', 'm', '175cm');

-- ----------------------------
-- Table structure for licenses
-- ----------------------------
DROP TABLE IF EXISTS `licenses`;
CREATE TABLE `licenses`  (
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of licenses
-- ----------------------------
INSERT INTO `licenses` VALUES ('dmv', 'Code de la route');
INSERT INTO `licenses` VALUES ('drive', 'Permis de conduire');
INSERT INTO `licenses` VALUES ('drive_bike', 'Permis moto');
INSERT INTO `licenses` VALUES ('drive_truck', 'Permis camion');

-- ----------------------------
-- Table structure for outfits
-- ----------------------------
DROP TABLE IF EXISTS `outfits`;
CREATE TABLE `outfits`  (
  `idSteam` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dad` int(0) NOT NULL DEFAULT 0,
  `mum` int(0) NOT NULL DEFAULT 0,
  `dadmumpercent` int(0) NOT NULL DEFAULT 0,
  `skinton` int(0) NOT NULL DEFAULT 0,
  `eyecolor` int(0) NOT NULL DEFAULT 0,
  `acne` int(0) NOT NULL DEFAULT 0,
  `skinproblem` int(0) NOT NULL DEFAULT 0,
  `freckle` int(0) NOT NULL DEFAULT 0,
  `wrinkle` int(0) NOT NULL DEFAULT 0,
  `wrinkleopacity` int(0) NOT NULL DEFAULT 0,
  `eyebrow` int(0) NOT NULL DEFAULT 0,
  `eyebrowopacity` int(0) NOT NULL DEFAULT 0,
  `beard` int(0) NOT NULL DEFAULT 0,
  `beardopacity` int(0) NOT NULL DEFAULT 0,
  `beardcolor` int(0) NOT NULL DEFAULT 0,
  `hair` int(0) NOT NULL DEFAULT 0,
  `hairtext` int(0) NOT NULL DEFAULT 0,
  `torso` int(0) NOT NULL DEFAULT 0,
  `torsotext` int(0) NOT NULL DEFAULT 0,
  `leg` int(0) NOT NULL DEFAULT 0,
  `legtext` int(0) NOT NULL DEFAULT 0,
  `shoes` int(0) NOT NULL DEFAULT 0,
  `shoestext` int(0) NOT NULL DEFAULT 0,
  `accessory` int(0) NOT NULL DEFAULT 0,
  `accessorytext` int(0) NOT NULL DEFAULT 0,
  `undershirt` int(0) NOT NULL DEFAULT 0,
  `undershirttext` int(0) NOT NULL DEFAULT 0,
  `torso2` int(0) NOT NULL DEFAULT 0,
  `torso2text` int(0) NOT NULL DEFAULT 0,
  `prop_hat` int(0) NOT NULL DEFAULT 0,
  `prop_hat_text` int(0) NOT NULL DEFAULT 0,
  `prop_glasses` int(0) NOT NULL DEFAULT 0,
  `prop_glasses_text` int(0) NOT NULL DEFAULT 0,
  `prop_earrings` int(0) NOT NULL DEFAULT 0,
  `prop_earrings_text` int(0) NOT NULL DEFAULT 0,
  `prop_watches` int(0) NOT NULL DEFAULT 0,
  `prop_watches_text` int(0) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for owned_properties
-- ----------------------------
DROP TABLE IF EXISTS `owned_properties`;
CREATE TABLE `owned_properties`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `price` double NOT NULL,
  `rented` int(0) NOT NULL,
  `owner` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of owned_properties
-- ----------------------------
INSERT INTO `owned_properties` VALUES (10, 'HillcrestAvenue2868', 1500000, 0, 'steam:1100001081ca641');

-- ----------------------------
-- Table structure for owned_vehicles
-- ----------------------------
DROP TABLE IF EXISTS `owned_vehicles`;
CREATE TABLE `owned_vehicles`  (
  `vehicle` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `owner` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Etat de la voiture',
  `stored` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Etat de la voiture',
  `garage_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Garage_Centre',
  `pound` tinyint(1) NOT NULL DEFAULT 0,
  `vehiclename` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'voiture',
  `plate` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'car',
  `job` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`plate`) USING BTREE,
  INDEX `vehsowned`(`owner`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of owned_vehicles
-- ----------------------------
INSERT INTO `owned_vehicles` VALUES ('{\"modArmor\":-1,\"plateIndex\":4,\"modHorns\":-1,\"extras\":{\"2\":true,\"1\":false},\"bodyHealth\":1000.0,\"color1\":134,\"model\":2046537925,\"tyreSmokeColor\":[255,255,255],\"wheels\":1,\"modSeats\":-1,\"modLivery\":4,\"neonColor\":[255,0,255],\"modRightFender\":-1,\"dirtLevel\":5.0,\"modSideSkirt\":-1,\"modTrimB\":-1,\"windowTint\":-1,\"pearlescentColor\":0,\"engineHealth\":1000.0,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modSteeringWheel\":-1,\"modFender\":-1,\"modFrontBumper\":-1,\"plate\":\"NAX 751\",\"modAirFilter\":-1,\"modVanityPlate\":-1,\"modSuspension\":-1,\"modHydrolic\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"modHood\":-1,\"modPlateHolder\":-1,\"modSmokeEnabled\":false,\"modEngineBlock\":-1,\"neonEnabled\":[false,false,false,false],\"modAPlate\":-1,\"modWindows\":-1,\"modRearBumper\":-1,\"modSpoilers\":-1,\"modRoof\":-1,\"modDial\":-1,\"modBackWheels\":-1,\"modDashboard\":-1,\"modSpeakers\":-1,\"modBrakes\":-1,\"modFrontWheels\":-1,\"modXenon\":false,\"modTank\":-1,\"modTurbo\":false,\"fuelLevel\":54.0,\"modEngine\":-1,\"color2\":134,\"wheelColor\":156,\"modOrnaments\":-1,\"modAerials\":-1,\"modGrille\":-1,\"modTrimA\":-1,\"modFrame\":-1,\"modTransmission\":-1,\"modStruts\":-1,\"modTrunk\":-1}', 'steam:1100001081ca641', 0, 1, 'Garage_Centre', 0, 'voiture', 'NAX 751', 'car', 'police');
INSERT INTO `owned_vehicles` VALUES ('{\"modAerials\":-1,\"modSeats\":-1,\"modTrimB\":-1,\"color2\":0,\"modSmokeEnabled\":false,\"modTransmission\":-1,\"modHorns\":-1,\"modFrontWheels\":-1,\"modTank\":-1,\"modArchCover\":-1,\"fuelLevel\":35.0,\"bodyHealth\":1000.0,\"modGrille\":-1,\"modAPlate\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modEngine\":-1,\"pearlescentColor\":5,\"model\":-344943009,\"modLivery\":-1,\"windowTint\":-1,\"modSuspension\":-1,\"modFrontBumper\":-1,\"modEngineBlock\":-1,\"plate\":\"UPF 383\",\"modAirFilter\":-1,\"modRightFender\":-1,\"modFender\":-1,\"wheels\":0,\"modExhaust\":-1,\"modWindows\":-1,\"modBrakes\":-1,\"modHood\":-1,\"wheelColor\":156,\"modRoof\":-1,\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"modSteeringWheel\":-1,\"modTurbo\":false,\"modDashboard\":-1,\"plateIndex\":0,\"modBackWheels\":-1,\"modXenon\":false,\"modStruts\":-1,\"modSpoilers\":-1,\"engineHealth\":1000.0,\"modTrimA\":-1,\"dirtLevel\":3.1,\"modTrunk\":-1,\"color1\":6,\"modHydrolic\":-1,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modArmor\":-1,\"modDial\":-1,\"extras\":{\"12\":false,\"10\":true},\"modOrnaments\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrame\":-1,\"neonColor\":[255,0,255],\"modDoorSpeaker\":-1,\"modRearBumper\":-1}', 'steam:1100001081ca641', 0, 1, 'Garage_Centre', 0, 'voiture', 'UPF 383', 'car', NULL);

-- ----------------------------
-- Table structure for owned_vehicles2
-- ----------------------------
DROP TABLE IF EXISTS `owned_vehicles2`;
CREATE TABLE `owned_vehicles2`  (
  `vehicle` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `owner` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Etat de la voiture',
  `garage_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Garage_Centre',
  `fourrieremecano` tinyint(1) NOT NULL DEFAULT 0,
  `vehiclename` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'voiture',
  `plate` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `vehicle_type` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'car',
  PRIMARY KEY (`plate`) USING BTREE,
  INDEX `vehsowned`(`owner`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of owned_vehicles2
-- ----------------------------
INSERT INTO `owned_vehicles2` VALUES ('{\"modBrakes\":-1,\"engineHealth\":1000.0,\"modSeats\":-1,\"extras\":{\"10\":false,\"11\":true,\"5\":true,\"9\":false,\"8\":false,\"7\":false,\"6\":false},\"pearlescentColor\":5,\"modExhaust\":-1,\"modTrimA\":-1,\"modFrontWheels\":-1,\"modXenon\":false,\"modAirFilter\":-1,\"modDashboard\":-1,\"modSmokeEnabled\":false,\"modAPlate\":-1,\"modFrame\":-1,\"modSpeakers\":-1,\"modDial\":-1,\"modSpoilers\":-1,\"modHood\":-1,\"model\":-956048545,\"modRightFender\":-1,\"color2\":77,\"modSteeringWheel\":-1,\"modTank\":-1,\"modSideSkirt\":-1,\"modSuspension\":-1,\"modTurbo\":false,\"bodyHealth\":1000.0,\"modFrontBumper\":-1,\"neonColor\":[255,0,255],\"modAerials\":-1,\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1,\"modDoorSpeaker\":-1,\"plate\":\"LHN 367\",\"fuelLevel\":69.5,\"modArchCover\":-1,\"plateIndex\":0,\"modTrunk\":-1,\"modRoof\":-1,\"modArmor\":-1,\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"modTransmission\":-1,\"modEngineBlock\":-1,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"modEngine\":-1,\"modHorns\":-1,\"wheelColor\":156,\"dirtLevel\":7.0,\"modHydrolic\":-1,\"windowTint\":-1,\"modLivery\":-1,\"modFender\":-1,\"modOrnaments\":-1,\"wheels\":0,\"modRearBumper\":-1,\"modBackWheels\":-1,\"color1\":88,\"modTrimB\":-1,\"modStruts\":-1}', 'steam:1100001081ca641', 0, 'Garage_Centre', 0, 'voiture', 'LHN 367', 'car');

-- ----------------------------
-- Table structure for phone_app_chat
-- ----------------------------
DROP TABLE IF EXISTS `phone_app_chat`;
CREATE TABLE `phone_app_chat`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phone_app_chat
-- ----------------------------
INSERT INTO `phone_app_chat` VALUES (28, 'klh', 'km', '2020-02-09 16:06:53');

-- ----------------------------
-- Table structure for phone_calls
-- ----------------------------
DROP TABLE IF EXISTS `phone_calls`;
CREATE TABLE `phone_calls`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(0) NOT NULL COMMENT 'Défini si on est à l\'origine de l\'appels',
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `accepts` int(0) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 150 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phone_calls
-- ----------------------------
INSERT INTO `phone_calls` VALUES (135, '55551045', '911', 1, '2020-02-09 10:57:35', 0);
INSERT INTO `phone_calls` VALUES (140, '761743164', 'police', 1, '2020-02-14 19:47:51', 0);
INSERT INTO `phone_calls` VALUES (141, '761743164', '1', 1, '2020-03-21 10:54:46', 0);
INSERT INTO `phone_calls` VALUES (142, '761743164', 'd312', 1, '2020-03-23 10:20:43', 0);
INSERT INTO `phone_calls` VALUES (143, '761743164', 'dsf', 1, '2020-03-24 10:22:09', 0);
INSERT INTO `phone_calls` VALUES (144, '761743164', 'TOTO TOA', 1, '2020-03-24 10:22:51', 0);
INSERT INTO `phone_calls` VALUES (145, '761743164', 'ttr', 1, '2020-03-24 10:26:07', 0);
INSERT INTO `phone_calls` VALUES (146, '761743164', 'TOTO TOA', 1, '2020-03-24 10:26:12', 0);
INSERT INTO `phone_calls` VALUES (147, '761743164', 'toto toa', 1, '2020-03-24 10:27:51', 0);
INSERT INTO `phone_calls` VALUES (148, '761743164', '761743164', 0, '2020-03-24 12:56:51', 0);
INSERT INTO `phone_calls` VALUES (149, '761743164', '761743164', 1, '2020-03-24 12:56:51', 0);

-- ----------------------------
-- Table structure for phone_messages
-- ----------------------------
DROP TABLE IF EXISTS `phone_messages`;
CREATE TABLE `phone_messages`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receiver` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `isRead` int(0) NOT NULL DEFAULT 0,
  `owner` int(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 155 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phone_messages
-- ----------------------------
INSERT INTO `phone_messages` VALUES (126, 'taxi', '55551045', 'De #55551045 : GPS: 439.3742980957, -982.50457763672', '2020-02-09 10:59:22', 1, 0);
INSERT INTO `phone_messages` VALUES (127, 'taxi', '55551045', 'df', '2020-02-09 11:03:26', 1, 1);
INSERT INTO `phone_messages` VALUES (128, 'taxi', '55551045', 'De #55551045 : sqd', '2020-02-09 11:03:44', 1, 0);
INSERT INTO `phone_messages` VALUES (125, 'taxi', '55551045', 'GPS: 439.3742980957, -982.50457763672', '2020-02-09 10:59:21', 1, 1);
INSERT INTO `phone_messages` VALUES (124, 'taxi', '55551045', 'De #55551045 : j\'arrive', '2020-02-09 10:59:18', 1, 0);
INSERT INTO `phone_messages` VALUES (123, 'taxi', '55551045', 'j\'arrive', '2020-02-09 10:59:17', 1, 1);
INSERT INTO `phone_messages` VALUES (122, 'taxi', '55551045', 'De #55551045 : bonjour 439.3742980957, -982.50457763672', '2020-02-09 10:59:08', 1, 0);
INSERT INTO `phone_messages` VALUES (119, 'police', '55551045', 'De #55551045 : salut les naze 439.30990600586, -982.49383544922', '2020-02-09 10:57:47', 1, 0);
INSERT INTO `phone_messages` VALUES (120, 'police', '55551045', 'salut', '2020-02-09 10:58:12', 1, 1);
INSERT INTO `phone_messages` VALUES (121, 'police', '55551045', 'De #55551045 : salut', '2020-02-09 10:58:13', 1, 0);
INSERT INTO `phone_messages` VALUES (129, 'taxi', '55551045', 'GPS: 388.21228027344, -948.59704589844', '2020-02-09 11:03:44', 1, 0);
INSERT INTO `phone_messages` VALUES (130, 'police', '55551045', 'sqds', '2020-02-09 11:05:02', 1, 1);
INSERT INTO `phone_messages` VALUES (131, 'police', '55551045', 'sdq', '2020-02-09 11:05:14', 1, 1);
INSERT INTO `phone_messages` VALUES (132, 'police', '55551045', 'De #55551045 : dqs', '2020-02-09 11:05:23', 1, 0);
INSERT INTO `phone_messages` VALUES (133, 'police', '55551045', 'GPS: 387.9963684082, -949.9619140625', '2020-02-09 11:05:23', 1, 0);
INSERT INTO `phone_messages` VALUES (134, 'police', '55551045', 'De #55551045 : fhj', '2020-02-09 11:14:57', 1, 0);
INSERT INTO `phone_messages` VALUES (135, 'police', '55551045', 'GPS: ', '2020-02-09 11:14:57', 1, 0);
INSERT INTO `phone_messages` VALUES (149, 'ambulance', '761743164', 'De #761743164 : cvg 323.6650390625, -1366.8411865234', '2020-02-14 19:42:14', 1, 0);
INSERT INTO `phone_messages` VALUES (150, 'ambulance', '761743164', 'De #761743164 : FGH 323.72946166992, -1366.6062011719', '2020-02-14 19:47:57', 1, 0);
INSERT INTO `phone_messages` VALUES (151, 'police', '761743164', 'sqdsd', '2020-03-24 12:55:58', 1, 1);
INSERT INTO `phone_messages` VALUES (152, 'police', '761743164', 'De #761743164 : sqdsd', '2020-03-24 12:55:59', 1, 0);
INSERT INTO `phone_messages` VALUES (153, 'police', '761743164', 'hfg', '2020-03-24 12:56:32', 1, 1);
INSERT INTO `phone_messages` VALUES (154, 'police', '761743164', 'De #761743164 : hfg', '2020-03-24 12:56:32', 1, 0);

-- ----------------------------
-- Table structure for phone_users_contacts
-- ----------------------------
DROP TABLE IF EXISTS `phone_users_contacts`;
CREATE TABLE `phone_users_contacts`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for private_vehicles
-- ----------------------------
DROP TABLE IF EXISTS `private_vehicles`;
CREATE TABLE `private_vehicles`  (
  `owner` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'vehicle state',
  `plate` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `vehicle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'car',
  `job` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`plate`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for properties
-- ----------------------------
DROP TABLE IF EXISTS `properties`;
CREATE TABLE `properties`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `entering` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `exit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `inside` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `outside` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ipls` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '[]',
  `gateway` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_single` int(0) NULL DEFAULT NULL,
  `is_room` int(0) NULL DEFAULT NULL,
  `is_gateway` int(0) NULL DEFAULT NULL,
  `room_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of properties
-- ----------------------------
INSERT INTO `properties` VALUES (1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000);
INSERT INTO `properties` VALUES (2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000);
INSERT INTO `properties` VALUES (3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000);
INSERT INTO `properties` VALUES (4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000);
INSERT INTO `properties` VALUES (5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000);
INSERT INTO `properties` VALUES (6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000);
INSERT INTO `properties` VALUES (7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500);
INSERT INTO `properties` VALUES (8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000);
INSERT INTO `properties` VALUES (9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000);
INSERT INTO `properties` VALUES (10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000);
INSERT INTO `properties` VALUES (11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000);
INSERT INTO `properties` VALUES (12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO `properties` VALUES (13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000);
INSERT INTO `properties` VALUES (14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000);
INSERT INTO `properties` VALUES (15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000);
INSERT INTO `properties` VALUES (16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000);
INSERT INTO `properties` VALUES (17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000);
INSERT INTO `properties` VALUES (18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000);
INSERT INTO `properties` VALUES (19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000);
INSERT INTO `properties` VALUES (20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000);
INSERT INTO `properties` VALUES (21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000);
INSERT INTO `properties` VALUES (22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000);
INSERT INTO `properties` VALUES (23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000);
INSERT INTO `properties` VALUES (24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000);
INSERT INTO `properties` VALUES (25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000);
INSERT INTO `properties` VALUES (26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000);
INSERT INTO `properties` VALUES (27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000);
INSERT INTO `properties` VALUES (28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000);
INSERT INTO `properties` VALUES (29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000);
INSERT INTO `properties` VALUES (30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000);
INSERT INTO `properties` VALUES (31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000);
INSERT INTO `properties` VALUES (32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000);
INSERT INTO `properties` VALUES (33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000);
INSERT INTO `properties` VALUES (34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000);
INSERT INTO `properties` VALUES (35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000);
INSERT INTO `properties` VALUES (36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000);
INSERT INTO `properties` VALUES (37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO `properties` VALUES (38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000);
INSERT INTO `properties` VALUES (39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000);
INSERT INTO `properties` VALUES (40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO `properties` VALUES (41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000);
INSERT INTO `properties` VALUES (42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000);

-- ----------------------------
-- Table structure for rented_vehicles
-- ----------------------------
DROP TABLE IF EXISTS `rented_vehicles`;
CREATE TABLE `rented_vehicles`  (
  `vehicle` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `player_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `base_price` int(0) NOT NULL,
  `rent_price` int(0) NOT NULL,
  `owner` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`plate`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shops
-- ----------------------------
DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `price` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shops
-- ----------------------------
INSERT INTO `shops` VALUES (2, 'TwentyFourSeven', 'water', 15);
INSERT INTO `shops` VALUES (3, 'TwentyFourSeven', 'coyotte', 15);
INSERT INTO `shops` VALUES (4, 'TwentyFourSeven', 'detector', 15);
INSERT INTO `shops` VALUES (5, 'TwentyFourSeven', 'donut', 15);
INSERT INTO `shops` VALUES (6, 'TwentyFourSeven', 'picnic', 15);
INSERT INTO `shops` VALUES (7, 'TwentyFourSeven', 'redgull', 15);
INSERT INTO `shops` VALUES (8, 'TwentyFourSeven', 'rose', 15);
INSERT INTO `shops` VALUES (9, 'TwentyFourSeven', 'sandwich', 15);
INSERT INTO `shops` VALUES (10, 'TwentyFourSeven', 'xanax', 15);
INSERT INTO `shops` VALUES (11, 'TwentyFourSeven', 'umbrella', 15);
INSERT INTO `shops` VALUES (12, 'RobsLiquor', 'bread', 30);
INSERT INTO `shops` VALUES (13, 'RobsLiquor', 'water', 15);
INSERT INTO `shops` VALUES (14, 'RobsLiquor', 'coyotte', 15);
INSERT INTO `shops` VALUES (15, 'RobsLiquor', 'detector', 15);
INSERT INTO `shops` VALUES (16, 'RobsLiquor', 'donut', 15);
INSERT INTO `shops` VALUES (17, 'RobsLiquor', 'picnic', 15);
INSERT INTO `shops` VALUES (18, 'RobsLiquor', 'redgull', 15);
INSERT INTO `shops` VALUES (19, 'RobsLiquor', 'rose', 15);
INSERT INTO `shops` VALUES (20, 'RobsLiquor', 'sandwich', 15);
INSERT INTO `shops` VALUES (21, 'RobsLiquor', 'xanax', 15);
INSERT INTO `shops` VALUES (22, 'RobsLiquor', 'umbrella', 15);
INSERT INTO `shops` VALUES (23, 'LTDgasoline', 'bread', 30);
INSERT INTO `shops` VALUES (24, 'LTDgasoline', 'water', 15);
INSERT INTO `shops` VALUES (25, 'LTDgasoline', 'coyotte', 15);
INSERT INTO `shops` VALUES (26, 'LTDgasoline', 'detector', 15);
INSERT INTO `shops` VALUES (27, 'LTDgasoline', 'donut', 15);
INSERT INTO `shops` VALUES (28, 'LTDgasoline', 'picnic', 15);
INSERT INTO `shops` VALUES (29, 'LTDgasoline', 'redgull', 15);
INSERT INTO `shops` VALUES (30, 'LTDgasoline', 'rose', 15);
INSERT INTO `shops` VALUES (31, 'LTDgasoline', 'sandwich', 15);
INSERT INTO `shops` VALUES (32, 'LTDgasoline', 'xanax', 15);
INSERT INTO `shops` VALUES (33, 'LTDgasoline', 'umbrella', 15);

-- ----------------------------
-- Table structure for shops_copy1
-- ----------------------------
DROP TABLE IF EXISTS `shops_copy1`;
CREATE TABLE `shops_copy1`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `price` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shops_copy1
-- ----------------------------
INSERT INTO `shops_copy1` VALUES (13, 'TwentyFourSeven', 'bread', 30);
INSERT INTO `shops_copy1` VALUES (14, 'TwentyFourSeven', 'water', 15);
INSERT INTO `shops_copy1` VALUES (15, 'RobsLiquor', 'bread', 30);
INSERT INTO `shops_copy1` VALUES (16, 'RobsLiquor', 'water', 15);
INSERT INTO `shops_copy1` VALUES (17, 'LTDgasoline', 'bread', 30);
INSERT INTO `shops_copy1` VALUES (18, 'LTDgasoline', 'water', 15);

-- ----------------------------
-- Table structure for society_moneywash
-- ----------------------------
DROP TABLE IF EXISTS `society_moneywash`;
CREATE TABLE `society_moneywash`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `society` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `amount` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of society_moneywash
-- ----------------------------
INSERT INTO `society_moneywash` VALUES (1, 'steam:1100001081ca641', 'taxi', 90000);
INSERT INTO `society_moneywash` VALUES (2, 'steam:1100001081ca641', 'taxi', 9000);

-- ----------------------------
-- Table structure for truck_categories
-- ----------------------------
DROP TABLE IF EXISTS `truck_categories`;
CREATE TABLE `truck_categories`  (
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of truck_categories
-- ----------------------------
INSERT INTO `truck_categories` VALUES ('box', 'Boxed Trucks');
INSERT INTO `truck_categories` VALUES ('haul', 'Haulers');
INSERT INTO `truck_categories` VALUES ('other', 'Other Trucks');
INSERT INTO `truck_categories` VALUES ('trans', 'Transport Trucks');

-- ----------------------------
-- Table structure for trucks
-- ----------------------------
DROP TABLE IF EXISTS `trucks`;
CREATE TABLE `trucks`  (
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `price` int(0) NOT NULL,
  `category` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`model`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trucks
-- ----------------------------
INSERT INTO `trucks` VALUES ('Airport Bus', 'airbus', 50000, 'trans');
INSERT INTO `trucks` VALUES ('Benson', 'benson', 55000, 'box');
INSERT INTO `trucks` VALUES ('Biff', 'biff', 30000, 'other');
INSERT INTO `trucks` VALUES ('Boxville 1', 'boxville', 45000, 'box');
INSERT INTO `trucks` VALUES ('Boxville 2', 'boxville2', 45000, 'box');
INSERT INTO `trucks` VALUES ('Boxville 3', 'boxville3', 45000, 'box');
INSERT INTO `trucks` VALUES ('Boxville 4', 'boxville4', 45000, 'box');
INSERT INTO `trucks` VALUES ('Dozer', 'bulldozer', 20000, 'other');
INSERT INTO `trucks` VALUES ('Bus', 'bus', 50000, 'trans');
INSERT INTO `trucks` VALUES ('Dashound', 'coach', 50000, 'trans');
INSERT INTO `trucks` VALUES ('Hauler', 'hauler', 100000, 'haul');
INSERT INTO `trucks` VALUES ('Mixer 1', 'mixer', 30000, 'other');
INSERT INTO `trucks` VALUES ('Mixer 2', 'mixer2', 30000, 'other');
INSERT INTO `trucks` VALUES ('Mule 1', 'mule', 40000, 'box');
INSERT INTO `trucks` VALUES ('Mule 2', 'mule2', 40000, 'box');
INSERT INTO `trucks` VALUES ('Mule 3', 'mule3', 40000, 'box');
INSERT INTO `trucks` VALUES ('Packer', 'packer', 100000, 'haul');
INSERT INTO `trucks` VALUES ('Festival Bus', 'pbus2', 125000, 'trans');
INSERT INTO `trucks` VALUES ('Phantom', 'phantom', 105000, 'haul');
INSERT INTO `trucks` VALUES ('Phantom Custom', 'phantom3', 110000, 'haul');
INSERT INTO `trucks` VALUES ('Pounder', 'pounder', 55000, 'box');
INSERT INTO `trucks` VALUES ('Rental Bus', 'rentalbus', 35000, 'trans');
INSERT INTO `trucks` VALUES ('Rubble', 'rubble', 30000, 'other');
INSERT INTO `trucks` VALUES ('Scrap Truck', 'scrap', 10000, 'other');
INSERT INTO `trucks` VALUES ('Taxi', 'taxi', 15000, 'other');
INSERT INTO `trucks` VALUES ('Tipper 1', 'tiptruck', 30000, 'other');
INSERT INTO `trucks` VALUES ('Tipper 2', 'tiptruck2', 30000, 'other');
INSERT INTO `trucks` VALUES ('Tour Bus', 'tourbus', 35000, 'trans');
INSERT INTO `trucks` VALUES ('Field Master', 'tractor2', 15000, 'other');

-- ----------------------------
-- Table structure for twitter_accounts
-- ----------------------------
DROP TABLE IF EXISTS `twitter_accounts`;
CREATE TABLE `twitter_accounts`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for twitter_likes
-- ----------------------------
DROP TABLE IF EXISTS `twitter_likes`;
CREATE TABLE `twitter_likes`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `authorId` int(0) NULL DEFAULT NULL,
  `tweetId` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_twitter_likes_twitter_accounts`(`authorId`) USING BTREE,
  INDEX `FK_twitter_likes_twitter_tweets`(`tweetId`) USING BTREE,
  CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for twitter_tweets
-- ----------------------------
DROP TABLE IF EXISTS `twitter_tweets`;
CREATE TABLE `twitter_tweets`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `authorId` int(0) NOT NULL,
  `realUser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `message` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `likes` int(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_twitter_tweets_twitter_accounts`(`authorId`) USING BTREE,
  CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_accounts
-- ----------------------------
DROP TABLE IF EXISTS `user_accounts`;
CREATE TABLE `user_accounts`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `money` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_accounts
-- ----------------------------
INSERT INTO `user_accounts` VALUES (1, 'steam:1100001081ca641', 'black_money', 117496);
INSERT INTO `user_accounts` VALUES (2, 'fcd32157de1fdd7dc4c122113baca4b95ec80013', 'bank', 370);
INSERT INTO `user_accounts` VALUES (3, 'fcd32157de1fdd7dc4c122113baca4b95ec80013', 'black_money', 338);
INSERT INTO `user_accounts` VALUES (4, 'fcd32157de1fdd7dc4c122113baca4b95ec80013', 'money', 109996000);

-- ----------------------------
-- Table structure for user_inventory
-- ----------------------------
DROP TABLE IF EXISTS `user_inventory`;
CREATE TABLE `user_inventory`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `count` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_inventory
-- ----------------------------
INSERT INTO `user_inventory` VALUES (34, 'steam:1100001081ca641', 'umbrella', 8);
INSERT INTO `user_inventory` VALUES (35, 'steam:1100001081ca641', 'acetone', 10);
INSERT INTO `user_inventory` VALUES (36, 'steam:1100001081ca641', 'blowpipe', 16);
INSERT INTO `user_inventory` VALUES (37, 'steam:1100001081ca641', 'opium_pooch', 10);
INSERT INTO `user_inventory` VALUES (38, 'steam:1100001081ca641', 'sandwich', 9);
INSERT INTO `user_inventory` VALUES (39, 'steam:1100001081ca641', 'redgull', 9);
INSERT INTO `user_inventory` VALUES (40, 'steam:1100001081ca641', 'billet', 10);
INSERT INTO `user_inventory` VALUES (41, 'steam:1100001081ca641', 'fixkit', 9);
INSERT INTO `user_inventory` VALUES (42, 'steam:1100001081ca641', 'ecstasy', 8);
INSERT INTO `user_inventory` VALUES (43, 'steam:1100001081ca641', 'medikit', 9);
INSERT INTO `user_inventory` VALUES (44, 'steam:1100001081ca641', 'lithium', 10);
INSERT INTO `user_inventory` VALUES (45, 'steam:1100001081ca641', 'coyotte', 10);
INSERT INTO `user_inventory` VALUES (46, 'steam:1100001081ca641', 'bandage', 9);
INSERT INTO `user_inventory` VALUES (47, 'steam:1100001081ca641', 'carokit', 9);
INSERT INTO `user_inventory` VALUES (48, 'steam:1100001081ca641', 'gazbottle', 10);
INSERT INTO `user_inventory` VALUES (49, 'steam:1100001081ca641', 'coke', 9);
INSERT INTO `user_inventory` VALUES (50, 'steam:1100001081ca641', 'coke_pooch', 10);
INSERT INTO `user_inventory` VALUES (51, 'steam:1100001081ca641', 'crack', 8);
INSERT INTO `user_inventory` VALUES (52, 'steam:1100001081ca641', 'oxygen_mask', 9);
INSERT INTO `user_inventory` VALUES (53, 'steam:1100001081ca641', 'weed', 7);
INSERT INTO `user_inventory` VALUES (54, 'steam:1100001081ca641', 'xanax', 4);
INSERT INTO `user_inventory` VALUES (55, 'steam:1100001081ca641', 'ketamine', 8);
INSERT INTO `user_inventory` VALUES (56, 'steam:1100001081ca641', 'ecstasy_pooch', 10);
INSERT INTO `user_inventory` VALUES (57, 'steam:1100001081ca641', 'carotool', 10);
INSERT INTO `user_inventory` VALUES (58, 'steam:1100001081ca641', 'meth_pooch', 10);
INSERT INTO `user_inventory` VALUES (59, 'steam:1100001081ca641', 'bread', 7);
INSERT INTO `user_inventory` VALUES (60, 'steam:1100001081ca641', 'crack_pooch', 10);
INSERT INTO `user_inventory` VALUES (61, 'steam:1100001081ca641', 'rose', 8);
INSERT INTO `user_inventory` VALUES (62, 'steam:1100001081ca641', 'water', 8);
INSERT INTO `user_inventory` VALUES (63, 'steam:1100001081ca641', 'weed_pooch', 10);
INSERT INTO `user_inventory` VALUES (64, 'steam:1100001081ca641', 'bulletproof', 8);
INSERT INTO `user_inventory` VALUES (65, 'steam:1100001081ca641', 'pils', 9);
INSERT INTO `user_inventory` VALUES (66, 'steam:1100001081ca641', 'donut', 8);
INSERT INTO `user_inventory` VALUES (67, 'steam:1100001081ca641', 'ketamine_pooch', 10);
INSERT INTO `user_inventory` VALUES (68, 'steam:1100001081ca641', 'fixtool', 10);
INSERT INTO `user_inventory` VALUES (69, 'steam:1100001081ca641', 'picnic', 10);
INSERT INTO `user_inventory` VALUES (70, 'steam:1100001081ca641', 'detector', 11);
INSERT INTO `user_inventory` VALUES (71, 'steam:1100001081ca641', 'opium', 8);
INSERT INTO `user_inventory` VALUES (72, 'steam:1100001081ca641', 'meth', 9);
INSERT INTO `user_inventory` VALUES (73, 'steam:1100001081ca641', 'billet_pooch', 10);
INSERT INTO `user_inventory` VALUES (74, 'steam:1100001081ca641', 'grand_cru', 8);
INSERT INTO `user_inventory` VALUES (75, 'steam:1100001081ca641', 'methlab', 10);
INSERT INTO `user_inventory` VALUES (76, 'steam:1100001081ca641', 'cupcake', 8);
INSERT INTO `user_inventory` VALUES (77, 'steam:1100001081ca641', 'vegetables', 8);
INSERT INTO `user_inventory` VALUES (78, 'steam:1100001081ca641', 'redbull', 9);
INSERT INTO `user_inventory` VALUES (79, 'steam:1100001081ca641', 'golem', 9);
INSERT INTO `user_inventory` VALUES (80, 'steam:1100001081ca641', 'hamburger', 8);
INSERT INTO `user_inventory` VALUES (81, 'steam:1100001081ca641', 'jagerbomb', 10);
INSERT INTO `user_inventory` VALUES (82, 'steam:1100001081ca641', 'dildo2', 9);
INSERT INTO `user_inventory` VALUES (83, 'steam:1100001081ca641', 'burger', 8);
INSERT INTO `user_inventory` VALUES (84, 'steam:1100001081ca641', 'vine', 8);
INSERT INTO `user_inventory` VALUES (85, 'steam:1100001081ca641', 'mixapero', 9);
INSERT INTO `user_inventory` VALUES (86, 'steam:1100001081ca641', 'bolchips', 9);
INSERT INTO `user_inventory` VALUES (87, 'steam:1100001081ca641', 'jagercerbere', 9);
INSERT INTO `user_inventory` VALUES (88, 'steam:1100001081ca641', 'dildo', 9);
INSERT INTO `user_inventory` VALUES (89, 'steam:1100001081ca641', 'vodkafruit', 8);
INSERT INTO `user_inventory` VALUES (90, 'steam:1100001081ca641', 'chocolate', 9);
INSERT INTO `user_inventory` VALUES (91, 'steam:1100001081ca641', 'tacos', 9);
INSERT INTO `user_inventory` VALUES (92, 'steam:1100001081ca641', 'bolpistache', 9);
INSERT INTO `user_inventory` VALUES (93, 'steam:1100001081ca641', 'marijuana', 10);
INSERT INTO `user_inventory` VALUES (94, 'steam:1100001081ca641', 'heroin', 10);
INSERT INTO `user_inventory` VALUES (95, 'steam:1100001081ca641', 'lsd', 10);
INSERT INTO `user_inventory` VALUES (96, 'steam:1100001081ca641', 'rhumfruit', 9);
INSERT INTO `user_inventory` VALUES (97, 'steam:1100001081ca641', 'metreshooter', 9);
INSERT INTO `user_inventory` VALUES (98, 'steam:1100001081ca641', 'rhumcoca', 9);
INSERT INTO `user_inventory` VALUES (99, 'steam:1100001081ca641', 'cigarett', 8);
INSERT INTO `user_inventory` VALUES (100, 'steam:1100001081ca641', 'teqpaf', 8);
INSERT INTO `user_inventory` VALUES (101, 'steam:1100001081ca641', 'bolnoixcajou', 9);
INSERT INTO `user_inventory` VALUES (102, 'steam:1100001081ca641', 'raisin', 9);
INSERT INTO `user_inventory` VALUES (103, 'steam:1100001081ca641', 'whiskycoca', 8);
INSERT INTO `user_inventory` VALUES (104, 'steam:1100001081ca641', 'jager', 9);
INSERT INTO `user_inventory` VALUES (105, 'steam:1100001081ca641', 'martini', 9);
INSERT INTO `user_inventory` VALUES (106, 'steam:1100001081ca641', 'tequila', 8);
INSERT INTO `user_inventory` VALUES (107, 'steam:1100001081ca641', 'beer', 8);
INSERT INTO `user_inventory` VALUES (108, 'steam:1100001081ca641', 'whisky', 8);
INSERT INTO `user_inventory` VALUES (109, 'steam:1100001081ca641', 'vodka', 10);
INSERT INTO `user_inventory` VALUES (110, 'steam:1100001081ca641', 'rhum', 9);
INSERT INTO `user_inventory` VALUES (111, 'steam:1100001081ca641', 'limonade', 9);
INSERT INTO `user_inventory` VALUES (112, 'steam:1100001081ca641', 'jusfruit', 8);
INSERT INTO `user_inventory` VALUES (113, 'steam:1100001081ca641', 'soda', 9);
INSERT INTO `user_inventory` VALUES (114, 'steam:1100001081ca641', 'icetea', 10);
INSERT INTO `user_inventory` VALUES (115, 'steam:1100001081ca641', 'drpepper', 9);
INSERT INTO `user_inventory` VALUES (116, 'steam:1100001081ca641', 'bolcacahuetes', 9);
INSERT INTO `user_inventory` VALUES (117, 'steam:1100001081ca641', 'vodkaenergy', 9);
INSERT INTO `user_inventory` VALUES (118, 'steam:1100001081ca641', 'energy', 9);
INSERT INTO `user_inventory` VALUES (119, 'steam:1100001081ca641', 'coffee', 8);
INSERT INTO `user_inventory` VALUES (120, 'steam:1100001081ca641', 'cola', 9);
INSERT INTO `user_inventory` VALUES (121, 'steam:1100001081ca641', 'handcuffs', 0);
INSERT INTO `user_inventory` VALUES (122, 'steam:1100001081ca641', 'key', 0);
INSERT INTO `user_inventory` VALUES (123, 'steam:1100001081ca641', 'rope', 0);

-- ----------------------------
-- Table structure for user_licenses
-- ----------------------------
DROP TABLE IF EXISTS `user_licenses`;
CREATE TABLE `user_licenses`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_licenses
-- ----------------------------
INSERT INTO `user_licenses` VALUES (5, 'dmv', 'steam:1100001081ca641');
INSERT INTO `user_licenses` VALUES (6, 'drive', 'steam:1100001081ca641');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `identifier` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `license` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `money` int(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '',
  `skin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'unemployed',
  `job_grade` int(0) NULL DEFAULT 0,
  `loadout` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '{\"x\":-269.4,\"y\":-955.3,\"z\":31.2,\"heading\":205.8}',
  `bank` int(0) NULL DEFAULT NULL,
  `permission_level` int(0) NULL DEFAULT NULL,
  `group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `firstname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '',
  `lastname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '',
  `dateofbirth` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '',
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '',
  `height` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '',
  `phone_number` int(0) NULL DEFAULT NULL,
  `isDead` bit(1) NULL DEFAULT b'0',
  `status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `last_property` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `animal` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tattoos` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `jail` int(0) NOT NULL DEFAULT 0,
  `is_dead` tinyint(1) NULL DEFAULT 0,
  `inventory` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('steam:1100001081ca641', 'license:fcd32157de1fdd7dc4c122113baca4b95ec80013', 1718486, '', '{\"blemishes_1\":0,\"blush_1\":0,\"eyebrows_1\":0,\"arms\":11,\"sun_1\":0,\"chest_3\":0,\"torso_2\":0,\"chest_2\":0,\"age_1\":0,\"beard_3\":0,\"chain_1\":0,\"age_2\":0,\"eyebrows_2\":0,\"ears_1\":-1,\"torso_1\":41,\"tshirt_2\":0,\"hair_2\":0,\"makeup_3\":0,\"decals_1\":3,\"watches_1\":1,\"helmet_1\":-1,\"sun_2\":0,\"lipstick_4\":0,\"beard_4\":0,\"ears_2\":0,\"watches_2\":0,\"makeup_4\":0,\"skin\":0,\"pants_2\":2,\"eyebrows_4\":0,\"face\":0,\"bodyb_2\":0,\"glasses_2\":0,\"mask_2\":0,\"moles_2\":0,\"makeup_1\":0,\"bracelets_2\":0,\"complexion_2\":0,\"bproof_1\":0,\"mask_1\":0,\"sex\":0,\"tshirt_1\":15,\"shoes_1\":61,\"complexion_1\":0,\"blush_3\":0,\"bproof_2\":0,\"eyebrows_3\":0,\"helmet_2\":0,\"bags_2\":0,\"bracelets_1\":0,\"beard_2\":0,\"chain_2\":0,\"blemishes_2\":0,\"moles_1\":0,\"shoes_2\":2,\"beard_1\":0,\"pants_1\":25,\"bags_1\":0,\"bodyb_1\":0,\"lipstick_3\":0,\"hair_color_2\":0,\"lipstick_1\":0,\"chest_1\":0,\"blush_2\":0,\"arms_2\":0,\"hair_1\":0,\"makeup_2\":0,\"eye_color\":0,\"decals_2\":0,\"hair_color_1\":0,\"lipstick_2\":0,\"glasses_1\":0}', 'police', 4, '[{\"label\":\"Matraque\",\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":500,\"components\":[]},{\"label\":\"Pistolet automatique\",\"name\":\"WEAPON_APPISTOL\",\"ammo\":500,\"components\":[]},{\"label\":\"Fusil à pompe\",\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":500,\"components\":[]},{\"label\":\"Fusil avancé\",\"name\":\"WEAPON_ADVANCEDRIFLE\",\"ammo\":500,\"components\":[]},{\"label\":\"Tazer\",\"name\":\"WEAPON_STUNGUN\",\"ammo\":500,\"components\":[]},{\"label\":\"Lampe torche\",\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":500,\"components\":[]}]', '{\"z\":30.6,\"heading\":235.1,\"x\":229.7,\"y\":-800.1}', 5022290, 4, 'superadmin', 'Toto', 'Tota', '2015-89-52', 'm', '175', 761743164, b'0', '[{\"val\":602900,\"percent\":60.29,\"name\":\"hunger\"},{\"val\":702175,\"percent\":70.2175,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"},{\"val\":0,\"percent\":0.0,\"name\":\"drug\"}]', NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO `users` VALUES ('fcd32157de1fdd7dc4c122113baca4b95ec80013', NULL, NULL, '', '{\"hair_color_2\":0,\"tshirt_1\":0,\"sun_2\":0,\"complexion_2\":0,\"lipstick_4\":0,\"makeup_1\":0,\"glasses_2\":0,\"lipstick_1\":0,\"pants_2\":0,\"ears_2\":0,\"watches_1\":-1,\"decals_1\":0,\"blush_3\":0,\"age_1\":0,\"chest_1\":0,\"decals_2\":0,\"ears_1\":-1,\"blemishes_1\":0,\"mask_1\":0,\"blush_1\":0,\"bodyb_1\":0,\"beard_3\":0,\"age_2\":0,\"complexion_1\":0,\"face\":0,\"makeup_3\":0,\"sex\":0,\"hair_2\":0,\"lipstick_2\":0,\"arms_2\":0,\"chest_3\":0,\"torso_1\":0,\"helmet_1\":-1,\"hair_color_1\":0,\"blush_2\":0,\"mask_2\":0,\"moles_1\":0,\"arms\":0,\"beard_4\":0,\"makeup_4\":0,\"bodyb_2\":0,\"beard_1\":0,\"sun_1\":0,\"chest_2\":0,\"hair_1\":0,\"eye_color\":0,\"bproof_2\":0,\"bproof_1\":0,\"beard_2\":0,\"lipstick_3\":0,\"shoes_2\":0,\"bags_2\":0,\"chain_1\":0,\"blemishes_2\":0,\"bracelets_2\":0,\"eyebrows_1\":0,\"pants_1\":0,\"eyebrows_2\":0,\"tshirt_2\":0,\"bags_1\":0,\"torso_2\":0,\"watches_2\":0,\"glasses_1\":0,\"helmet_2\":0,\"eyebrows_4\":0,\"makeup_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"skin\":0,\"moles_2\":0,\"bracelets_1\":-1,\"shoes_1\":0}', 'mecano', 4, '[]', '{\"y\":-1289.2,\"x\":-176.5,\"z\":31.3,\"heading\":104.8}', NULL, 4, 'superadmin', '', '', '', '', '', NULL, b'0', '[{\"name\":\"hunger\",\"val\":352100,\"percent\":35.21},{\"name\":\"thirst\",\"val\":855400,\"percent\":85.54},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0},{\"name\":\"drug\",\"val\":0,\"percent\":0.0}]', NULL, NULL, NULL, 0, 0, '{\"bread\":200,\"crack_pooch\":100,\"coke_pooch\":100,\"grand_cru\":97,\"meth_pooch\":100,\"coke\":99,\"weed_pooch\":98,\"xanax\":99,\"ecstasy_pooch\":100,\"opium_pooch\":100,\"weed\":100,\"ketamine_pooch\":100}');

-- ----------------------------
-- Table structure for vehicle_categories
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_categories`;
CREATE TABLE `vehicle_categories`  (
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehicle_categories
-- ----------------------------
INSERT INTO `vehicle_categories` VALUES ('compacts', 'Compacts');
INSERT INTO `vehicle_categories` VALUES ('coupes', 'Coupés');
INSERT INTO `vehicle_categories` VALUES ('motorcycles', 'Motos');
INSERT INTO `vehicle_categories` VALUES ('muscle', 'Muscle');
INSERT INTO `vehicle_categories` VALUES ('offroad', 'Off Road');
INSERT INTO `vehicle_categories` VALUES ('sedans', 'Sedans');
INSERT INTO `vehicle_categories` VALUES ('sports', 'Sports');
INSERT INTO `vehicle_categories` VALUES ('sportsclassics', 'Sports Classics');
INSERT INTO `vehicle_categories` VALUES ('super', 'Super');
INSERT INTO `vehicle_categories` VALUES ('suvs', 'SUVs');
INSERT INTO `vehicle_categories` VALUES ('vans', 'Vans');

-- ----------------------------
-- Table structure for vehicle_sold
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_sold`;
CREATE TABLE `vehicle_sold`  (
  `client` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `soldby` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`plate`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vehicles
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles`  (
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `price` int(0) NOT NULL,
  `category` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`model`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehicles
-- ----------------------------
INSERT INTO `vehicles` VALUES ('Akuma', 'AKUMA', 7500, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Adder', 'adder', 900000, 'super');
INSERT INTO `vehicles` VALUES ('Alpha', 'alpha', 60000, 'sports');
INSERT INTO `vehicles` VALUES ('Ardent', 'ardent', 1150000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Asea', 'asea', 5500, 'sedans');
INSERT INTO `vehicles` VALUES ('Autarch', 'autarch', 1955000, 'super');
INSERT INTO `vehicles` VALUES ('Avarus', 'avarus', 18000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Bagger', 'bagger', 13500, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Baller', 'baller2', 40000, 'suvs');
INSERT INTO `vehicles` VALUES ('Baller Sport', 'baller3', 60000, 'suvs');
INSERT INTO `vehicles` VALUES ('Banshee', 'banshee', 70000, 'sports');
INSERT INTO `vehicles` VALUES ('Banshee 900R', 'banshee2', 255000, 'super');
INSERT INTO `vehicles` VALUES ('Bati 801', 'bati', 12000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Bati 801RR', 'bati2', 19000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Bestia GTS', 'bestiagts', 55000, 'sports');
INSERT INTO `vehicles` VALUES ('BF400', 'bf400', 6500, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Bf Injection', 'bfinjection', 16000, 'offroad');
INSERT INTO `vehicles` VALUES ('Bifta', 'bifta', 12000, 'offroad');
INSERT INTO `vehicles` VALUES ('Bison', 'bison', 45000, 'vans');
INSERT INTO `vehicles` VALUES ('Blade', 'blade', 15000, 'muscle');
INSERT INTO `vehicles` VALUES ('Blazer', 'blazer', 6500, 'offroad');
INSERT INTO `vehicles` VALUES ('Blazer Sport', 'blazer4', 8500, 'offroad');
INSERT INTO `vehicles` VALUES ('blazer5', 'blazer5', 1755600, 'offroad');
INSERT INTO `vehicles` VALUES ('Blista', 'blista', 8000, 'compacts');
INSERT INTO `vehicles` VALUES ('BMX (velo)', 'bmx', 160, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Bobcat XL', 'bobcatxl', 32000, 'vans');
INSERT INTO `vehicles` VALUES ('Brawler', 'brawler', 45000, 'offroad');
INSERT INTO `vehicles` VALUES ('Brioso R/A', 'brioso', 18000, 'compacts');
INSERT INTO `vehicles` VALUES ('Btype', 'btype', 62000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Btype Hotroad', 'btype2', 155000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Btype Luxe', 'btype3', 85000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Buccaneer', 'buccaneer', 18000, 'muscle');
INSERT INTO `vehicles` VALUES ('Buccaneer Rider', 'buccaneer2', 24000, 'muscle');
INSERT INTO `vehicles` VALUES ('Buffalo', 'buffalo', 12000, 'sports');
INSERT INTO `vehicles` VALUES ('Buffalo S', 'buffalo2', 20000, 'sports');
INSERT INTO `vehicles` VALUES ('Bullet', 'bullet', 90000, 'super');
INSERT INTO `vehicles` VALUES ('Burrito', 'burrito3', 19000, 'vans');
INSERT INTO `vehicles` VALUES ('Camper', 'camper', 42000, 'vans');
INSERT INTO `vehicles` VALUES ('Carbonizzare', 'carbonizzare', 75000, 'sports');
INSERT INTO `vehicles` VALUES ('Carbon RS', 'carbonrs', 18000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Casco', 'casco', 30000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Cavalcade', 'cavalcade2', 55000, 'suvs');
INSERT INTO `vehicles` VALUES ('Cheetah', 'cheetah', 375000, 'super');
INSERT INTO `vehicles` VALUES ('Chimera', 'chimera', 38000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Chino', 'chino', 15000, 'muscle');
INSERT INTO `vehicles` VALUES ('Chino Luxe', 'chino2', 19000, 'muscle');
INSERT INTO `vehicles` VALUES ('Cliffhanger', 'cliffhanger', 9500, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes');
INSERT INTO `vehicles` VALUES ('Cognoscenti', 'cognoscenti', 55000, 'sedans');
INSERT INTO `vehicles` VALUES ('Comet', 'comet2', 65000, 'sports');
INSERT INTO `vehicles` VALUES ('Comet 5', 'comet5', 1145000, 'sports');
INSERT INTO `vehicles` VALUES ('Contender', 'contender', 70000, 'suvs');
INSERT INTO `vehicles` VALUES ('Coquette', 'coquette', 65000, 'sports');
INSERT INTO `vehicles` VALUES ('Coquette Classic', 'coquette2', 40000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Coquette BlackFin', 'coquette3', 55000, 'muscle');
INSERT INTO `vehicles` VALUES ('Cruiser (velo)', 'cruiser', 510, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Cyclone', 'cyclone', 1890000, 'super');
INSERT INTO `vehicles` VALUES ('Daemon', 'daemon', 11500, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Daemon High', 'daemon2', 13500, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Defiler', 'defiler', 9800, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Deluxo', 'deluxo', 4721500, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Dominator', 'dominator', 35000, 'muscle');
INSERT INTO `vehicles` VALUES ('Double T', 'double', 28000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Dubsta', 'dubsta', 45000, 'suvs');
INSERT INTO `vehicles` VALUES ('Dubsta Luxuary', 'dubsta2', 60000, 'suvs');
INSERT INTO `vehicles` VALUES ('Bubsta 6x6', 'dubsta3', 120000, 'offroad');
INSERT INTO `vehicles` VALUES ('Dukes', 'dukes', 28000, 'muscle');
INSERT INTO `vehicles` VALUES ('Dune Buggy', 'dune', 8000, 'offroad');
INSERT INTO `vehicles` VALUES ('Elegy', 'elegy2', 38500, 'sports');
INSERT INTO `vehicles` VALUES ('Emperor', 'emperor', 8500, 'sedans');
INSERT INTO `vehicles` VALUES ('Enduro', 'enduro', 5500, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Entity XF', 'entityxf', 425000, 'super');
INSERT INTO `vehicles` VALUES ('Esskey', 'esskey', 4200, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Exemplar', 'exemplar', 32000, 'coupes');
INSERT INTO `vehicles` VALUES ('F620', 'f620', 40000, 'coupes');
INSERT INTO `vehicles` VALUES ('Faction', 'faction', 20000, 'muscle');
INSERT INTO `vehicles` VALUES ('Faction Rider', 'faction2', 30000, 'muscle');
INSERT INTO `vehicles` VALUES ('Faction XL', 'faction3', 40000, 'muscle');
INSERT INTO `vehicles` VALUES ('Faggio', 'faggio', 1900, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Vespa', 'faggio2', 2800, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Felon', 'felon', 42000, 'coupes');
INSERT INTO `vehicles` VALUES ('Felon GT', 'felon2', 55000, 'coupes');
INSERT INTO `vehicles` VALUES ('Feltzer', 'feltzer2', 55000, 'sports');
INSERT INTO `vehicles` VALUES ('Stirling GT', 'feltzer3', 65000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Fixter (velo)', 'fixter', 225, 'motorcycles');
INSERT INTO `vehicles` VALUES ('FMJ', 'fmj', 185000, 'super');
INSERT INTO `vehicles` VALUES ('Fhantom', 'fq2', 17000, 'suvs');
INSERT INTO `vehicles` VALUES ('Fugitive', 'fugitive', 12000, 'sedans');
INSERT INTO `vehicles` VALUES ('Furore GT', 'furoregt', 45000, 'sports');
INSERT INTO `vehicles` VALUES ('Fusilade', 'fusilade', 40000, 'sports');
INSERT INTO `vehicles` VALUES ('Gargoyle', 'gargoyle', 16500, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Gauntlet', 'gauntlet', 30000, 'muscle');
INSERT INTO `vehicles` VALUES ('Gang Burrito', 'gburrito', 45000, 'vans');
INSERT INTO `vehicles` VALUES ('Burrito', 'gburrito2', 29000, 'vans');
INSERT INTO `vehicles` VALUES ('Glendale', 'glendale', 6500, 'sedans');
INSERT INTO `vehicles` VALUES ('Grabger', 'granger', 50000, 'suvs');
INSERT INTO `vehicles` VALUES ('Gresley', 'gresley', 47500, 'suvs');
INSERT INTO `vehicles` VALUES ('GT 500', 'gt500', 785000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Guardian', 'guardian', 45000, 'offroad');
INSERT INTO `vehicles` VALUES ('Hakuchou', 'hakuchou', 31000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Hermes', 'hermes', 535000, 'muscle');
INSERT INTO `vehicles` VALUES ('Hexer', 'hexer', 12000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Hotknife', 'hotknife', 125000, 'muscle');
INSERT INTO `vehicles` VALUES ('Huntley S', 'huntley', 40000, 'suvs');
INSERT INTO `vehicles` VALUES ('Hustler', 'hustler', 625000, 'muscle');
INSERT INTO `vehicles` VALUES ('Infernus', 'infernus', 180000, 'super');
INSERT INTO `vehicles` VALUES ('Innovation', 'innovation', 23500, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Intruder', 'intruder', 7500, 'sedans');
INSERT INTO `vehicles` VALUES ('Issi', 'issi2', 10000, 'compacts');
INSERT INTO `vehicles` VALUES ('Jackal', 'jackal', 38000, 'coupes');
INSERT INTO `vehicles` VALUES ('Jester', 'jester', 65000, 'sports');
INSERT INTO `vehicles` VALUES ('Jester(Racecar)', 'jester2', 135000, 'sports');
INSERT INTO `vehicles` VALUES ('Journey', 'journey', 6500, 'vans');
INSERT INTO `vehicles` VALUES ('Kamacho', 'kamacho', 345000, 'offroad');
INSERT INTO `vehicles` VALUES ('Khamelion', 'khamelion', 38000, 'sports');
INSERT INTO `vehicles` VALUES ('Kuruma', 'kuruma', 30000, 'sports');
INSERT INTO `vehicles` VALUES ('Landstalker', 'landstalker', 35000, 'suvs');
INSERT INTO `vehicles` VALUES ('RE-7B', 'le7b', 325000, 'super');
INSERT INTO `vehicles` VALUES ('Lynx', 'lynx', 40000, 'sports');
INSERT INTO `vehicles` VALUES ('Mamba', 'mamba', 70000, 'sports');
INSERT INTO `vehicles` VALUES ('Manana', 'manana', 12800, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Manchez', 'manchez', 5300, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Massacro', 'massacro', 65000, 'sports');
INSERT INTO `vehicles` VALUES ('Massacro(Racecar)', 'massacro2', 130000, 'sports');
INSERT INTO `vehicles` VALUES ('Mesa', 'mesa', 16000, 'suvs');
INSERT INTO `vehicles` VALUES ('Mesa Trail', 'mesa3', 40000, 'suvs');
INSERT INTO `vehicles` VALUES ('Minivan', 'minivan', 13000, 'vans');
INSERT INTO `vehicles` VALUES ('Monroe', 'monroe', 55000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('The Liberator', 'monster', 210000, 'offroad');
INSERT INTO `vehicles` VALUES ('Moonbeam', 'moonbeam', 18000, 'vans');
INSERT INTO `vehicles` VALUES ('Moonbeam Rider', 'moonbeam2', 35000, 'vans');
INSERT INTO `vehicles` VALUES ('Nemesis', 'nemesis', 5800, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Neon', 'neon', 1500000, 'sports');
INSERT INTO `vehicles` VALUES ('Nightblade', 'nightblade', 35000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Nightshade', 'nightshade', 65000, 'muscle');
INSERT INTO `vehicles` VALUES ('9F', 'ninef', 65000, 'sports');
INSERT INTO `vehicles` VALUES ('9F Cabrio', 'ninef2', 80000, 'sports');
INSERT INTO `vehicles` VALUES ('Omnis', 'omnis', 35000, 'sports');
INSERT INTO `vehicles` VALUES ('Oppressor', 'oppressor', 3524500, 'super');
INSERT INTO `vehicles` VALUES ('Oracle XS', 'oracle2', 35000, 'coupes');
INSERT INTO `vehicles` VALUES ('Osiris', 'osiris', 160000, 'super');
INSERT INTO `vehicles` VALUES ('Panto', 'panto', 10000, 'compacts');
INSERT INTO `vehicles` VALUES ('Paradise', 'paradise', 19000, 'vans');
INSERT INTO `vehicles` VALUES ('Pariah', 'pariah', 1420000, 'sports');
INSERT INTO `vehicles` VALUES ('Patriot', 'patriot', 55000, 'suvs');
INSERT INTO `vehicles` VALUES ('PCJ-600', 'pcj', 6200, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Penumbra', 'penumbra', 28000, 'sports');
INSERT INTO `vehicles` VALUES ('Pfister', 'pfister811', 85000, 'super');
INSERT INTO `vehicles` VALUES ('Phoenix', 'phoenix', 12500, 'muscle');
INSERT INTO `vehicles` VALUES ('Picador', 'picador', 18000, 'muscle');
INSERT INTO `vehicles` VALUES ('Pigalle', 'pigalle', 20000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Prairie', 'prairie', 12000, 'compacts');
INSERT INTO `vehicles` VALUES ('Premier', 'premier', 8000, 'sedans');
INSERT INTO `vehicles` VALUES ('Primo Custom', 'primo2', 14000, 'sedans');
INSERT INTO `vehicles` VALUES ('X80 Proto', 'prototipo', 2500000, 'super');
INSERT INTO `vehicles` VALUES ('Radius', 'radi', 29000, 'suvs');
INSERT INTO `vehicles` VALUES ('raiden', 'raiden', 1375000, 'sports');
INSERT INTO `vehicles` VALUES ('Rapid GT', 'rapidgt', 35000, 'sports');
INSERT INTO `vehicles` VALUES ('Rapid GT Convertible', 'rapidgt2', 45000, 'sports');
INSERT INTO `vehicles` VALUES ('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Reaper', 'reaper', 150000, 'super');
INSERT INTO `vehicles` VALUES ('Rebel', 'rebel2', 35000, 'offroad');
INSERT INTO `vehicles` VALUES ('Regina', 'regina', 5000, 'sedans');
INSERT INTO `vehicles` VALUES ('Retinue', 'retinue', 615000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Revolter', 'revolter', 1610000, 'sports');
INSERT INTO `vehicles` VALUES ('riata', 'riata', 380000, 'offroad');
INSERT INTO `vehicles` VALUES ('Rocoto', 'rocoto', 45000, 'suvs');
INSERT INTO `vehicles` VALUES ('Ruffian', 'ruffian', 6800, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Ruiner 2', 'ruiner2', 5745600, 'muscle');
INSERT INTO `vehicles` VALUES ('Rumpo', 'rumpo', 15000, 'vans');
INSERT INTO `vehicles` VALUES ('Rumpo Trail', 'rumpo3', 19500, 'vans');
INSERT INTO `vehicles` VALUES ('Sabre Turbo', 'sabregt', 20000, 'muscle');
INSERT INTO `vehicles` VALUES ('Sabre GT', 'sabregt2', 25000, 'muscle');
INSERT INTO `vehicles` VALUES ('Sanchez', 'sanchez', 5300, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Sanchez Sport', 'sanchez2', 5300, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Sanctus', 'sanctus', 25000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Sandking', 'sandking', 55000, 'offroad');
INSERT INTO `vehicles` VALUES ('Savestra', 'savestra', 990000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('SC 1', 'sc1', 1603000, 'super');
INSERT INTO `vehicles` VALUES ('Schafter', 'schafter2', 25000, 'sedans');
INSERT INTO `vehicles` VALUES ('Schafter V12', 'schafter3', 50000, 'sports');
INSERT INTO `vehicles` VALUES ('Scorcher (velo)', 'scorcher', 280, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Seminole', 'seminole', 25000, 'suvs');
INSERT INTO `vehicles` VALUES ('Sentinel', 'sentinel', 32000, 'coupes');
INSERT INTO `vehicles` VALUES ('Sentinel XS', 'sentinel2', 40000, 'coupes');
INSERT INTO `vehicles` VALUES ('Sentinel3', 'sentinel3', 650000, 'sports');
INSERT INTO `vehicles` VALUES ('Seven 70', 'seven70', 39500, 'sports');
INSERT INTO `vehicles` VALUES ('ETR1', 'sheava', 220000, 'super');
INSERT INTO `vehicles` VALUES ('Shotaro Concept', 'shotaro', 320000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Slam Van', 'slamvan3', 11500, 'muscle');
INSERT INTO `vehicles` VALUES ('Sovereign', 'sovereign', 22000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Stinger', 'stinger', 80000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Stinger GT', 'stingergt', 75000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Streiter', 'streiter', 500000, 'sports');
INSERT INTO `vehicles` VALUES ('Stretch', 'stretch', 90000, 'sedans');
INSERT INTO `vehicles` VALUES ('Stromberg', 'stromberg', 3185350, 'sports');
INSERT INTO `vehicles` VALUES ('Sultan', 'sultan', 15000, 'sports');
INSERT INTO `vehicles` VALUES ('Sultan RS', 'sultanrs', 65000, 'super');
INSERT INTO `vehicles` VALUES ('Super Diamond', 'superd', 130000, 'sedans');
INSERT INTO `vehicles` VALUES ('Surano', 'surano', 50000, 'sports');
INSERT INTO `vehicles` VALUES ('Surfer', 'surfer', 12000, 'vans');
INSERT INTO `vehicles` VALUES ('T20', 't20', 300000, 'super');
INSERT INTO `vehicles` VALUES ('Tailgater', 'tailgater', 30000, 'sedans');
INSERT INTO `vehicles` VALUES ('Tampa', 'tampa', 16000, 'muscle');
INSERT INTO `vehicles` VALUES ('Drift Tampa', 'tampa2', 80000, 'sports');
INSERT INTO `vehicles` VALUES ('Thrust', 'thrust', 24000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Tri bike (velo)', 'tribike3', 520, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Trophy Truck', 'trophytruck', 60000, 'offroad');
INSERT INTO `vehicles` VALUES ('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad');
INSERT INTO `vehicles` VALUES ('Tropos', 'tropos', 40000, 'sports');
INSERT INTO `vehicles` VALUES ('Turismo R', 'turismor', 350000, 'super');
INSERT INTO `vehicles` VALUES ('Tyrus', 'tyrus', 600000, 'super');
INSERT INTO `vehicles` VALUES ('Vacca', 'vacca', 120000, 'super');
INSERT INTO `vehicles` VALUES ('Vader', 'vader', 7200, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Verlierer', 'verlierer2', 70000, 'sports');
INSERT INTO `vehicles` VALUES ('Vigero', 'vigero', 12500, 'muscle');
INSERT INTO `vehicles` VALUES ('Virgo', 'virgo', 14000, 'muscle');
INSERT INTO `vehicles` VALUES ('Viseris', 'viseris', 875000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Visione', 'visione', 2250000, 'super');
INSERT INTO `vehicles` VALUES ('Voltic', 'voltic', 90000, 'super');
INSERT INTO `vehicles` VALUES ('Voltic 2', 'voltic2', 3830400, 'super');
INSERT INTO `vehicles` VALUES ('Voodoo', 'voodoo', 7200, 'muscle');
INSERT INTO `vehicles` VALUES ('Vortex', 'vortex', 9800, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Warrener', 'warrener', 4000, 'sedans');
INSERT INTO `vehicles` VALUES ('Washington', 'washington', 9000, 'sedans');
INSERT INTO `vehicles` VALUES ('Windsor', 'windsor', 95000, 'coupes');
INSERT INTO `vehicles` VALUES ('Windsor Drop', 'windsor2', 125000, 'coupes');
INSERT INTO `vehicles` VALUES ('Woflsbane', 'wolfsbane', 9000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('XLS', 'xls', 32000, 'suvs');
INSERT INTO `vehicles` VALUES ('Yosemite', 'yosemite', 485000, 'muscle');
INSERT INTO `vehicles` VALUES ('Youga', 'youga', 10800, 'vans');
INSERT INTO `vehicles` VALUES ('Youga Luxuary', 'youga2', 14500, 'vans');
INSERT INTO `vehicles` VALUES ('Z190', 'z190', 900000, 'sportsclassics');
INSERT INTO `vehicles` VALUES ('Zentorno', 'zentorno', 1500000, 'super');
INSERT INTO `vehicles` VALUES ('Zion', 'zion', 36000, 'coupes');
INSERT INTO `vehicles` VALUES ('Zion Cabrio', 'zion2', 45000, 'coupes');
INSERT INTO `vehicles` VALUES ('Zombie', 'zombiea', 9500, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Zombie Luxuary', 'zombieb', 12000, 'motorcycles');
INSERT INTO `vehicles` VALUES ('Z-Type', 'ztype', 220000, 'sportsclassics');

-- ----------------------------
-- Table structure for whitelist
-- ----------------------------
DROP TABLE IF EXISTS `whitelist`;
CREATE TABLE `whitelist`  (
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`identifier`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of whitelist
-- ----------------------------
INSERT INTO `whitelist` VALUES ('steam:1100001081ca641');

SET FOREIGN_KEY_CHECKS = 1;

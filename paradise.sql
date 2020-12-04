/*
 Navicat Premium Data Transfer

 Source Server         : PracticeDb
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : paradise

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 04/12/2020 16:47:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities`  (
  `id` int NOT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fkstateid` int NOT NULL,
  `isactive` int NULL DEFAULT NULL,
  INDEX `fkstate`(`fkstateid`) USING BTREE,
  CONSTRAINT `fkstate` FOREIGN KEY (`fkstateid`) REFERENCES `states` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES (1, 'North and Middle Andaman', 32, 1);
INSERT INTO `cities` VALUES (2, 'South Andaman', 32, 1);
INSERT INTO `cities` VALUES (3, 'Nicobar', 32, 1);
INSERT INTO `cities` VALUES (4, 'Adilabad', 1, 1);
INSERT INTO `cities` VALUES (5, 'Anantapur', 1, 1);
INSERT INTO `cities` VALUES (6, 'Chittoor', 1, 1);
INSERT INTO `cities` VALUES (7, 'East Godavari', 1, 1);
INSERT INTO `cities` VALUES (8, 'Guntur', 1, 1);
INSERT INTO `cities` VALUES (9, 'Hyderabad', 1, 1);
INSERT INTO `cities` VALUES (10, 'Kadapa', 1, 1);
INSERT INTO `cities` VALUES (11, 'Karimnagar', 1, 1);
INSERT INTO `cities` VALUES (12, 'Khammam', 1, 1);
INSERT INTO `cities` VALUES (13, 'Krishna', 1, 1);
INSERT INTO `cities` VALUES (14, 'Kurnool', 1, 1);
INSERT INTO `cities` VALUES (15, 'Mahbubnagar', 1, 1);
INSERT INTO `cities` VALUES (16, 'Medak', 1, 1);
INSERT INTO `cities` VALUES (17, 'Nalgonda', 1, 1);
INSERT INTO `cities` VALUES (18, 'Nellore', 1, 1);
INSERT INTO `cities` VALUES (19, 'Nizamabad', 1, 1);
INSERT INTO `cities` VALUES (20, 'Prakasam', 1, 1);
INSERT INTO `cities` VALUES (21, 'Rangareddi', 1, 1);
INSERT INTO `cities` VALUES (22, 'Srikakulam', 1, 1);
INSERT INTO `cities` VALUES (23, 'Vishakhapatnam', 1, 1);
INSERT INTO `cities` VALUES (24, 'Vizianagaram', 1, 1);
INSERT INTO `cities` VALUES (25, 'Warangal', 1, 1);
INSERT INTO `cities` VALUES (26, 'West Godavari', 1, 1);
INSERT INTO `cities` VALUES (27, 'Anjaw', 3, 1);
INSERT INTO `cities` VALUES (28, 'Changlang', 3, 1);
INSERT INTO `cities` VALUES (29, 'East Kameng', 3, 1);
INSERT INTO `cities` VALUES (30, 'Lohit', 3, 1);
INSERT INTO `cities` VALUES (31, 'Lower Subansiri', 3, 1);
INSERT INTO `cities` VALUES (32, 'Papum Pare', 3, 1);
INSERT INTO `cities` VALUES (33, 'Tirap', 3, 1);
INSERT INTO `cities` VALUES (34, 'Dibang Valley', 3, 1);
INSERT INTO `cities` VALUES (35, 'Upper Subansiri', 3, 1);
INSERT INTO `cities` VALUES (36, 'West Kameng', 3, 1);
INSERT INTO `cities` VALUES (37, 'Barpeta', 2, 1);
INSERT INTO `cities` VALUES (38, 'Bongaigaon', 2, 1);
INSERT INTO `cities` VALUES (39, 'Cachar', 2, 1);
INSERT INTO `cities` VALUES (40, 'Darrang', 2, 1);
INSERT INTO `cities` VALUES (41, 'Dhemaji', 2, 1);
INSERT INTO `cities` VALUES (42, 'Dhubri', 2, 1);
INSERT INTO `cities` VALUES (43, 'Dibrugarh', 2, 1);
INSERT INTO `cities` VALUES (44, 'Goalpara', 2, 1);
INSERT INTO `cities` VALUES (45, 'Golaghat', 2, 1);
INSERT INTO `cities` VALUES (46, 'Hailakandi', 2, 1);
INSERT INTO `cities` VALUES (47, 'Jorhat', 2, 1);
INSERT INTO `cities` VALUES (48, 'Karbi Anglong', 2, 1);
INSERT INTO `cities` VALUES (49, 'Karimganj', 2, 1);
INSERT INTO `cities` VALUES (50, 'Kokrajhar', 2, 1);
INSERT INTO `cities` VALUES (51, 'Lakhimpur', 2, 1);
INSERT INTO `cities` VALUES (52, 'Marigaon', 2, 1);
INSERT INTO `cities` VALUES (53, 'Nagaon', 2, 1);
INSERT INTO `cities` VALUES (54, 'Nalbari', 2, 1);
INSERT INTO `cities` VALUES (55, 'North Cachar Hills', 2, 1);
INSERT INTO `cities` VALUES (56, 'Sibsagar', 2, 1);
INSERT INTO `cities` VALUES (57, 'Sonitpur', 2, 1);
INSERT INTO `cities` VALUES (58, 'Tinsukia', 2, 1);
INSERT INTO `cities` VALUES (59, 'Araria', 4, 1);
INSERT INTO `cities` VALUES (60, 'Aurangabad', 4, 1);
INSERT INTO `cities` VALUES (61, 'Banka', 4, 1);
INSERT INTO `cities` VALUES (62, 'Begusarai', 4, 1);
INSERT INTO `cities` VALUES (63, 'Bhagalpur', 4, 1);
INSERT INTO `cities` VALUES (64, 'Bhojpur', 4, 1);
INSERT INTO `cities` VALUES (65, 'Buxar', 4, 1);
INSERT INTO `cities` VALUES (66, 'Darbhanga', 4, 1);
INSERT INTO `cities` VALUES (67, 'Purba Champaran', 4, 1);
INSERT INTO `cities` VALUES (68, 'Gaya', 4, 1);
INSERT INTO `cities` VALUES (69, 'Gopalganj', 4, 1);
INSERT INTO `cities` VALUES (70, 'Jamui', 4, 1);
INSERT INTO `cities` VALUES (71, 'Jehanabad', 4, 1);
INSERT INTO `cities` VALUES (72, 'Khagaria', 4, 1);
INSERT INTO `cities` VALUES (73, 'Kishanganj', 4, 1);
INSERT INTO `cities` VALUES (74, 'Kaimur', 4, 1);
INSERT INTO `cities` VALUES (75, 'Katihar', 4, 1);
INSERT INTO `cities` VALUES (76, 'Lakhisarai', 4, 1);
INSERT INTO `cities` VALUES (77, 'Madhubani', 4, 1);
INSERT INTO `cities` VALUES (78, 'Munger', 4, 1);
INSERT INTO `cities` VALUES (79, 'Madhepura', 4, 1);
INSERT INTO `cities` VALUES (80, 'Muzaffarpur', 4, 1);
INSERT INTO `cities` VALUES (81, 'Nalanda', 4, 1);
INSERT INTO `cities` VALUES (82, 'Nawada', 4, 1);
INSERT INTO `cities` VALUES (83, 'Patna', 4, 1);
INSERT INTO `cities` VALUES (84, 'Purnia', 4, 1);
INSERT INTO `cities` VALUES (85, 'Rohtas', 4, 1);
INSERT INTO `cities` VALUES (86, 'Saharsa', 4, 1);
INSERT INTO `cities` VALUES (87, 'Samastipur', 4, 1);
INSERT INTO `cities` VALUES (88, 'Sheohar', 4, 1);
INSERT INTO `cities` VALUES (89, 'Sheikhpura', 4, 1);
INSERT INTO `cities` VALUES (90, 'Saran', 4, 1);
INSERT INTO `cities` VALUES (91, 'Sitamarhi', 4, 1);
INSERT INTO `cities` VALUES (92, 'Supaul', 4, 1);
INSERT INTO `cities` VALUES (93, 'Siwan', 4, 1);
INSERT INTO `cities` VALUES (94, 'Vaishali', 4, 1);
INSERT INTO `cities` VALUES (95, 'Pashchim Champaran', 4, 1);
INSERT INTO `cities` VALUES (112, 'Diu', 29, 1);
INSERT INTO `cities` VALUES (113, 'Daman', 29, 1);
INSERT INTO `cities` VALUES (114, 'Central Delhi', 25, 1);
INSERT INTO `cities` VALUES (115, 'East Delhi', 25, 1);
INSERT INTO `cities` VALUES (116, 'New Delhi', 25, 1);
INSERT INTO `cities` VALUES (117, 'North Delhi', 25, 1);
INSERT INTO `cities` VALUES (118, 'North East Delhi', 25, 1);
INSERT INTO `cities` VALUES (119, 'North West Delhi', 25, 1);
INSERT INTO `cities` VALUES (120, 'South Delhi', 25, 1);
INSERT INTO `cities` VALUES (121, 'South West Delhi', 25, 1);
INSERT INTO `cities` VALUES (122, 'West Delhi', 25, 1);
INSERT INTO `cities` VALUES (123, 'North Goa', 26, 1);
INSERT INTO `cities` VALUES (124, 'South Goa', 26, 1);
INSERT INTO `cities` VALUES (125, 'Ahmedabad', 5, 1);
INSERT INTO `cities` VALUES (126, 'Amreli District', 5, 1);
INSERT INTO `cities` VALUES (127, 'Anand', 5, 1);
INSERT INTO `cities` VALUES (128, 'Banaskantha', 5, 1);
INSERT INTO `cities` VALUES (129, 'Bharuch', 5, 1);
INSERT INTO `cities` VALUES (130, 'Bhavnagar', 5, 1);
INSERT INTO `cities` VALUES (131, 'Dahod', 5, 1);
INSERT INTO `cities` VALUES (132, 'The Dangs', 5, 1);
INSERT INTO `cities` VALUES (133, 'Gandhinagar', 5, 1);
INSERT INTO `cities` VALUES (134, 'Jamnagar', 5, 1);
INSERT INTO `cities` VALUES (135, 'Junagadh', 5, 1);
INSERT INTO `cities` VALUES (136, 'Kutch', 5, 1);
INSERT INTO `cities` VALUES (137, 'Kheda', 5, 1);
INSERT INTO `cities` VALUES (138, 'Mehsana', 5, 1);
INSERT INTO `cities` VALUES (139, 'Narmada', 5, 1);
INSERT INTO `cities` VALUES (140, 'Navsari', 5, 1);
INSERT INTO `cities` VALUES (141, 'Patan', 5, 1);
INSERT INTO `cities` VALUES (142, 'Panchmahal', 5, 1);
INSERT INTO `cities` VALUES (143, 'Porbandar', 5, 1);
INSERT INTO `cities` VALUES (144, 'Rajkot', 5, 1);
INSERT INTO `cities` VALUES (145, 'Sabarkantha', 5, 1);
INSERT INTO `cities` VALUES (146, 'Surendranagar', 5, 1);
INSERT INTO `cities` VALUES (147, 'Surat', 5, 1);
INSERT INTO `cities` VALUES (148, 'Vadodara', 5, 1);
INSERT INTO `cities` VALUES (149, 'Valsad', 5, 1);
INSERT INTO `cities` VALUES (150, 'Ambala', 6, 1);
INSERT INTO `cities` VALUES (151, 'Bhiwani', 6, 1);
INSERT INTO `cities` VALUES (152, 'Faridabad', 6, 1);
INSERT INTO `cities` VALUES (153, 'Fatehabad', 6, 1);
INSERT INTO `cities` VALUES (154, 'Gurgaon', 6, 1);
INSERT INTO `cities` VALUES (155, 'Hissar', 6, 1);
INSERT INTO `cities` VALUES (96, 'bastar', 35, 1);
INSERT INTO `cities` VALUES (97, 'bilaspur', 35, 1);
INSERT INTO `cities` VALUES (98, 'dantewada', 35, 1);
INSERT INTO `cities` VALUES (99, 'dhamtari', 35, 1);
INSERT INTO `cities` VALUES (100, 'durg', 35, 1);
INSERT INTO `cities` VALUES (101, 'jashpur', 35, 1);
INSERT INTO `cities` VALUES (102, 'janjgir-champa', 35, 1);
INSERT INTO `cities` VALUES (103, 'korba', 35, 1);
INSERT INTO `cities` VALUES (104, 'koriya', 35, 1);
INSERT INTO `cities` VALUES (105, 'kanker', 35, 1);
INSERT INTO `cities` VALUES (106, 'kawardha', 35, 1);
INSERT INTO `cities` VALUES (107, 'mahasamund', 35, 1);
INSERT INTO `cities` VALUES (110, 'raipur', 35, 1);
INSERT INTO `cities` VALUES (111, 'surguja', 35, 1);
INSERT INTO `cities` VALUES (109, 'rajnandgaon', 35, 1);
INSERT INTO `cities` VALUES (157, 'Jind', 6, 1);
INSERT INTO `cities` VALUES (158, 'Karnal', 6, 1);
INSERT INTO `cities` VALUES (159, 'Kaithal', 6, 1);
INSERT INTO `cities` VALUES (160, 'Kurukshetra', 6, 1);
INSERT INTO `cities` VALUES (161, 'Mahendragarh', 6, 1);
INSERT INTO `cities` VALUES (162, 'Mewat', 6, 1);
INSERT INTO `cities` VALUES (163, 'Panchkula', 6, 1);
INSERT INTO `cities` VALUES (164, 'Panipat', 6, 1);
INSERT INTO `cities` VALUES (165, 'Rewari', 6, 1);
INSERT INTO `cities` VALUES (166, 'Rohtak', 6, 1);
INSERT INTO `cities` VALUES (167, 'Sirsa', 6, 1);
INSERT INTO `cities` VALUES (168, 'Sonepat', 6, 1);
INSERT INTO `cities` VALUES (169, 'Yamuna Nagar', 6, 1);
INSERT INTO `cities` VALUES (170, 'Palwal', 6, 1);
INSERT INTO `cities` VALUES (171, 'Bilaspur', 7, 1);
INSERT INTO `cities` VALUES (172, 'Chamba', 7, 1);
INSERT INTO `cities` VALUES (173, 'Hamirpur', 7, 1);
INSERT INTO `cities` VALUES (174, 'Kangra', 7, 1);
INSERT INTO `cities` VALUES (175, 'Kinnaur', 7, 1);
INSERT INTO `cities` VALUES (176, 'Kulu', 7, 1);
INSERT INTO `cities` VALUES (177, 'Lahaul and Spiti', 7, 1);
INSERT INTO `cities` VALUES (178, 'Mandi', 7, 1);
INSERT INTO `cities` VALUES (179, 'Shimla', 7, 1);
INSERT INTO `cities` VALUES (180, 'Sirmaur', 7, 1);
INSERT INTO `cities` VALUES (181, 'Solan', 7, 1);
INSERT INTO `cities` VALUES (182, 'Una', 7, 1);
INSERT INTO `cities` VALUES (183, 'Anantnag', 8, 1);
INSERT INTO `cities` VALUES (184, 'Badgam', 8, 1);
INSERT INTO `cities` VALUES (185, 'Bandipore', 8, 1);
INSERT INTO `cities` VALUES (186, 'Baramula', 8, 1);
INSERT INTO `cities` VALUES (187, 'Doda', 8, 1);
INSERT INTO `cities` VALUES (188, 'Jammu', 8, 1);
INSERT INTO `cities` VALUES (189, 'Kargil', 8, 1);
INSERT INTO `cities` VALUES (190, 'Kathua', 8, 1);
INSERT INTO `cities` VALUES (191, 'Kupwara', 8, 1);
INSERT INTO `cities` VALUES (192, 'Leh', 8, 1);
INSERT INTO `cities` VALUES (193, 'Poonch', 8, 1);
INSERT INTO `cities` VALUES (194, 'Pulwama', 8, 1);
INSERT INTO `cities` VALUES (195, 'Rajauri', 8, 1);
INSERT INTO `cities` VALUES (196, 'Srinagar', 8, 1);
INSERT INTO `cities` VALUES (197, 'Samba', 8, 1);
INSERT INTO `cities` VALUES (198, 'Udhampur', 8, 1);
INSERT INTO `cities` VALUES (199, 'Bokaro', 34, 1);
INSERT INTO `cities` VALUES (200, 'Chatra', 34, 1);
INSERT INTO `cities` VALUES (201, 'Deoghar', 34, 1);
INSERT INTO `cities` VALUES (202, 'Dhanbad', 34, 1);
INSERT INTO `cities` VALUES (203, 'Dumka', 34, 1);
INSERT INTO `cities` VALUES (204, 'Purba Singhbhum', 34, 1);
INSERT INTO `cities` VALUES (205, 'Garhwa', 34, 1);
INSERT INTO `cities` VALUES (206, 'Giridih', 34, 1);
INSERT INTO `cities` VALUES (207, 'Godda', 34, 1);
INSERT INTO `cities` VALUES (208, 'Gumla', 34, 1);
INSERT INTO `cities` VALUES (209, 'Hazaribagh', 34, 1);
INSERT INTO `cities` VALUES (210, 'Koderma', 34, 1);
INSERT INTO `cities` VALUES (211, 'Lohardaga', 34, 1);
INSERT INTO `cities` VALUES (212, 'Pakur', 34, 1);
INSERT INTO `cities` VALUES (213, 'Palamu', 34, 1);
INSERT INTO `cities` VALUES (214, 'Ranchi', 34, 1);
INSERT INTO `cities` VALUES (215, 'Sahibganj', 34, 1);
INSERT INTO `cities` VALUES (216, 'Seraikela and Kharsawan', 34, 1);
INSERT INTO `cities` VALUES (217, 'Pashchim Singhbhum', 34, 1);
INSERT INTO `cities` VALUES (218, 'Ramgarh', 34, 1);
INSERT INTO `cities` VALUES (219, 'Bidar', 9, 1);
INSERT INTO `cities` VALUES (220, 'Belgaum', 9, 1);
INSERT INTO `cities` VALUES (221, 'Bijapur', 9, 1);
INSERT INTO `cities` VALUES (222, 'Bagalkot', 9, 1);
INSERT INTO `cities` VALUES (223, 'Bellary', 9, 1);
INSERT INTO `cities` VALUES (224, 'Bangalore Rural District', 9, 1);
INSERT INTO `cities` VALUES (225, 'Bangalore Urban District', 9, 1);
INSERT INTO `cities` VALUES (226, 'Chamarajnagar', 9, 1);
INSERT INTO `cities` VALUES (227, 'Chikmagalur', 9, 1);
INSERT INTO `cities` VALUES (228, 'Chitradurga', 9, 1);
INSERT INTO `cities` VALUES (229, 'Davanagere', 9, 1);
INSERT INTO `cities` VALUES (230, 'Dharwad', 9, 1);
INSERT INTO `cities` VALUES (231, 'Dakshina Kannada', 9, 1);
INSERT INTO `cities` VALUES (232, 'Gadag', 9, 1);
INSERT INTO `cities` VALUES (233, 'Gulbarga', 9, 1);
INSERT INTO `cities` VALUES (234, 'Hassan', 9, 1);
INSERT INTO `cities` VALUES (235, 'Haveri District', 9, 1);
INSERT INTO `cities` VALUES (236, 'Kodagu', 9, 1);
INSERT INTO `cities` VALUES (237, 'Kolar', 9, 1);
INSERT INTO `cities` VALUES (238, 'Koppal', 9, 1);
INSERT INTO `cities` VALUES (239, 'Mandya', 9, 1);
INSERT INTO `cities` VALUES (240, 'Mysore', 9, 1);
INSERT INTO `cities` VALUES (241, 'Raichur', 9, 1);
INSERT INTO `cities` VALUES (242, 'Shimoga', 9, 1);
INSERT INTO `cities` VALUES (243, 'Tumkur', 9, 1);
INSERT INTO `cities` VALUES (244, 'Udupi', 9, 1);
INSERT INTO `cities` VALUES (245, 'Uttara Kannada', 9, 1);
INSERT INTO `cities` VALUES (246, 'Ramanagara', 9, 1);
INSERT INTO `cities` VALUES (247, 'Chikballapur', 9, 1);
INSERT INTO `cities` VALUES (248, 'Yadagiri', 9, 1);
INSERT INTO `cities` VALUES (249, 'Alappuzha', 10, 1);
INSERT INTO `cities` VALUES (250, 'Ernakulam', 10, 1);
INSERT INTO `cities` VALUES (251, 'Idukki', 10, 1);
INSERT INTO `cities` VALUES (252, 'Kollam', 10, 1);
INSERT INTO `cities` VALUES (253, 'Kannur', 10, 1);
INSERT INTO `cities` VALUES (254, 'Kasaragod', 10, 1);
INSERT INTO `cities` VALUES (255, 'Kottayam', 10, 1);
INSERT INTO `cities` VALUES (256, 'Kozhikode', 10, 1);
INSERT INTO `cities` VALUES (257, 'Malappuram', 10, 1);
INSERT INTO `cities` VALUES (258, 'Palakkad', 10, 1);
INSERT INTO `cities` VALUES (259, 'Pathanamthitta', 10, 1);
INSERT INTO `cities` VALUES (260, 'Thrissur', 10, 1);
INSERT INTO `cities` VALUES (261, 'Thiruvananthapuram', 10, 1);
INSERT INTO `cities` VALUES (262, 'Wayanad', 10, 1);
INSERT INTO `cities` VALUES (263, 'Alirajpur', 11, 1);
INSERT INTO `cities` VALUES (264, 'Anuppur', 11, 1);
INSERT INTO `cities` VALUES (265, 'Ashok Nagar', 11, 1);
INSERT INTO `cities` VALUES (266, 'Balaghat', 11, 1);
INSERT INTO `cities` VALUES (267, 'Barwani', 11, 1);
INSERT INTO `cities` VALUES (268, 'Betul', 11, 1);
INSERT INTO `cities` VALUES (269, 'Bhind', 11, 1);
INSERT INTO `cities` VALUES (270, 'Bhopal', 11, 1);
INSERT INTO `cities` VALUES (271, 'Burhanpur', 11, 1);
INSERT INTO `cities` VALUES (272, 'Chhatarpur', 11, 1);
INSERT INTO `cities` VALUES (273, 'Chhindwara', 11, 1);
INSERT INTO `cities` VALUES (274, 'Damoh', 11, 1);
INSERT INTO `cities` VALUES (275, 'Datia', 11, 1);
INSERT INTO `cities` VALUES (276, 'Dewas', 11, 1);
INSERT INTO `cities` VALUES (277, 'Dhar', 11, 1);
INSERT INTO `cities` VALUES (278, 'Dindori', 11, 1);
INSERT INTO `cities` VALUES (279, 'Guna', 11, 1);
INSERT INTO `cities` VALUES (280, 'Gwalior', 11, 1);
INSERT INTO `cities` VALUES (281, 'Harda', 11, 1);
INSERT INTO `cities` VALUES (282, 'Hoshangabad', 11, 1);
INSERT INTO `cities` VALUES (283, 'Indore', 11, 1);
INSERT INTO `cities` VALUES (284, 'Jabalpur', 11, 1);
INSERT INTO `cities` VALUES (285, 'Jhabua', 11, 1);
INSERT INTO `cities` VALUES (286, 'Katni', 11, 1);
INSERT INTO `cities` VALUES (287, 'Khandwa', 11, 1);
INSERT INTO `cities` VALUES (288, 'Khargone', 11, 1);
INSERT INTO `cities` VALUES (289, 'Mandla', 11, 1);
INSERT INTO `cities` VALUES (290, 'Mandsaur', 11, 1);
INSERT INTO `cities` VALUES (291, 'Morena', 11, 1);
INSERT INTO `cities` VALUES (292, 'Narsinghpur', 11, 1);
INSERT INTO `cities` VALUES (293, 'Neemuch', 11, 1);
INSERT INTO `cities` VALUES (294, 'Panna', 11, 1);
INSERT INTO `cities` VALUES (295, 'Rewa', 11, 1);
INSERT INTO `cities` VALUES (296, 'Rajgarh', 11, 1);
INSERT INTO `cities` VALUES (297, 'Ratlam', 11, 1);
INSERT INTO `cities` VALUES (298, 'Raisen', 11, 1);
INSERT INTO `cities` VALUES (299, 'Sagar', 11, 1);
INSERT INTO `cities` VALUES (300, 'Satna', 11, 1);
INSERT INTO `cities` VALUES (301, 'Sehore', 11, 1);
INSERT INTO `cities` VALUES (302, 'Seoni', 11, 1);
INSERT INTO `cities` VALUES (303, 'Shahdol', 11, 1);
INSERT INTO `cities` VALUES (304, 'Shajapur', 11, 1);
INSERT INTO `cities` VALUES (305, 'Sheopur', 11, 1);
INSERT INTO `cities` VALUES (306, 'Shivpuri', 11, 1);
INSERT INTO `cities` VALUES (307, 'Sidhi', 11, 1);
INSERT INTO `cities` VALUES (308, 'Singrauli', 11, 1);
INSERT INTO `cities` VALUES (309, 'Tikamgarh', 11, 1);
INSERT INTO `cities` VALUES (310, 'Ujjain', 11, 1);
INSERT INTO `cities` VALUES (311, 'Umaria', 11, 1);
INSERT INTO `cities` VALUES (312, 'Vidisha', 11, 1);
INSERT INTO `cities` VALUES (313, 'Ahmednagar', 12, 1);
INSERT INTO `cities` VALUES (314, 'Akola', 12, 1);
INSERT INTO `cities` VALUES (315, 'Amrawati', 12, 1);
INSERT INTO `cities` VALUES (316, 'Aurangabad', 12, 1);
INSERT INTO `cities` VALUES (317, 'Bhandara', 12, 1);
INSERT INTO `cities` VALUES (318, 'Beed', 12, 1);
INSERT INTO `cities` VALUES (319, 'Buldhana', 12, 1);
INSERT INTO `cities` VALUES (320, 'Chandrapur', 12, 1);
INSERT INTO `cities` VALUES (321, 'Dhule', 12, 1);
INSERT INTO `cities` VALUES (322, 'Gadchiroli', 12, 1);
INSERT INTO `cities` VALUES (323, 'Gondiya', 12, 1);
INSERT INTO `cities` VALUES (324, 'Hingoli', 12, 1);
INSERT INTO `cities` VALUES (325, 'Jalgaon', 12, 1);
INSERT INTO `cities` VALUES (326, 'Jalna', 12, 1);
INSERT INTO `cities` VALUES (327, 'Kolhapur', 12, 1);
INSERT INTO `cities` VALUES (328, 'Latur', 12, 1);
INSERT INTO `cities` VALUES (329, 'Mumbai City', 12, 1);
INSERT INTO `cities` VALUES (330, 'Mumbai suburban', 12, 1);
INSERT INTO `cities` VALUES (331, 'Nandurbar', 12, 1);
INSERT INTO `cities` VALUES (332, 'Nanded', 12, 1);
INSERT INTO `cities` VALUES (333, 'Nagpur', 12, 1);
INSERT INTO `cities` VALUES (334, 'Nashik', 12, 1);
INSERT INTO `cities` VALUES (335, 'Osmanabad', 12, 1);
INSERT INTO `cities` VALUES (336, 'Parbhani', 12, 1);
INSERT INTO `cities` VALUES (337, 'Pune', 12, 1);
INSERT INTO `cities` VALUES (338, 'Raigad', 12, 1);
INSERT INTO `cities` VALUES (339, 'Ratnagiri', 12, 1);
INSERT INTO `cities` VALUES (340, 'Sindhudurg', 12, 1);
INSERT INTO `cities` VALUES (341, 'Sangli', 12, 1);
INSERT INTO `cities` VALUES (342, 'Solapur', 12, 1);
INSERT INTO `cities` VALUES (343, 'Satara', 12, 1);
INSERT INTO `cities` VALUES (344, 'Thane', 12, 1);
INSERT INTO `cities` VALUES (345, 'Wardha', 12, 1);
INSERT INTO `cities` VALUES (346, 'Washim', 12, 1);
INSERT INTO `cities` VALUES (347, 'Yavatmal', 12, 1);
INSERT INTO `cities` VALUES (348, 'Bishnupur', 13, 1);
INSERT INTO `cities` VALUES (349, 'Churachandpur', 13, 1);
INSERT INTO `cities` VALUES (350, 'Chandel', 13, 1);
INSERT INTO `cities` VALUES (351, 'Imphal East', 13, 1);
INSERT INTO `cities` VALUES (352, 'Senapati', 13, 1);
INSERT INTO `cities` VALUES (353, 'Tamenglong', 13, 1);
INSERT INTO `cities` VALUES (354, 'Thoubal', 13, 1);
INSERT INTO `cities` VALUES (355, 'Ukhrul', 13, 1);
INSERT INTO `cities` VALUES (356, 'Imphal West', 13, 1);
INSERT INTO `cities` VALUES (357, 'East Garo Hills', 14, 1);
INSERT INTO `cities` VALUES (358, 'East Khasi Hills', 14, 1);
INSERT INTO `cities` VALUES (359, 'Jaintia Hills', 14, 1);
INSERT INTO `cities` VALUES (360, 'Ri-Bhoi', 14, 1);
INSERT INTO `cities` VALUES (361, 'South Garo Hills', 14, 1);
INSERT INTO `cities` VALUES (362, 'West Garo Hills', 14, 1);
INSERT INTO `cities` VALUES (363, 'West Khasi Hills', 14, 1);
INSERT INTO `cities` VALUES (364, 'Aizawl', 15, 1);
INSERT INTO `cities` VALUES (365, 'Champhai', 15, 1);
INSERT INTO `cities` VALUES (366, 'Kolasib', 15, 1);
INSERT INTO `cities` VALUES (367, 'Lawngtlai', 15, 1);
INSERT INTO `cities` VALUES (368, 'Lunglei', 15, 1);
INSERT INTO `cities` VALUES (369, 'Mamit', 15, 1);
INSERT INTO `cities` VALUES (370, 'Saiha', 15, 1);
INSERT INTO `cities` VALUES (371, 'Serchhip', 15, 1);
INSERT INTO `cities` VALUES (372, 'Dimapur', 16, 1);
INSERT INTO `cities` VALUES (373, 'Kohima', 16, 1);
INSERT INTO `cities` VALUES (374, 'Mokokchung', 16, 1);
INSERT INTO `cities` VALUES (375, 'Mon', 16, 1);
INSERT INTO `cities` VALUES (376, 'Phek', 16, 1);
INSERT INTO `cities` VALUES (377, 'Tuensang', 16, 1);
INSERT INTO `cities` VALUES (378, 'Wokha', 16, 1);
INSERT INTO `cities` VALUES (379, 'Zunheboto', 16, 1);
INSERT INTO `cities` VALUES (380, 'Angul', 17, 1);
INSERT INTO `cities` VALUES (381, 'Boudh', 17, 1);
INSERT INTO `cities` VALUES (382, 'Bhadrak', 17, 1);
INSERT INTO `cities` VALUES (383, 'Bolangir', 17, 1);
INSERT INTO `cities` VALUES (384, 'Bargarh', 17, 1);
INSERT INTO `cities` VALUES (385, 'Baleswar', 17, 1);
INSERT INTO `cities` VALUES (386, 'Cuttack', 17, 1);
INSERT INTO `cities` VALUES (387, 'Debagarh', 17, 1);
INSERT INTO `cities` VALUES (388, 'Dhenkanal', 17, 1);
INSERT INTO `cities` VALUES (389, 'Ganjam', 17, 1);
INSERT INTO `cities` VALUES (390, 'Gajapati', 17, 1);
INSERT INTO `cities` VALUES (391, 'Jharsuguda', 17, 1);
INSERT INTO `cities` VALUES (392, 'Jajapur', 17, 1);
INSERT INTO `cities` VALUES (393, 'Jagatsinghpur', 17, 1);
INSERT INTO `cities` VALUES (394, 'Khordha', 17, 1);
INSERT INTO `cities` VALUES (395, 'Kendujhar', 17, 1);
INSERT INTO `cities` VALUES (396, 'Kalahandi', 17, 1);
INSERT INTO `cities` VALUES (397, 'Kandhamal', 17, 1);
INSERT INTO `cities` VALUES (398, 'Koraput', 17, 1);
INSERT INTO `cities` VALUES (399, 'Kendrapara', 17, 1);
INSERT INTO `cities` VALUES (400, 'Malkangiri', 17, 1);
INSERT INTO `cities` VALUES (401, 'Mayurbhanj', 17, 1);
INSERT INTO `cities` VALUES (402, 'Nabarangpur', 17, 1);
INSERT INTO `cities` VALUES (403, 'Nuapada', 17, 1);
INSERT INTO `cities` VALUES (404, 'Nayagarh', 17, 1);
INSERT INTO `cities` VALUES (405, 'Puri', 17, 1);
INSERT INTO `cities` VALUES (406, 'Rayagada', 17, 1);
INSERT INTO `cities` VALUES (407, 'Sambalpur', 17, 1);
INSERT INTO `cities` VALUES (408, 'Subarnapur', 17, 1);
INSERT INTO `cities` VALUES (409, 'Sundargarh', 17, 1);
INSERT INTO `cities` VALUES (410, 'Karaikal', 27, 1);
INSERT INTO `cities` VALUES (411, 'Mahe', 27, 1);
INSERT INTO `cities` VALUES (412, 'Puducherry', 27, 1);
INSERT INTO `cities` VALUES (413, 'Yanam', 27, 1);
INSERT INTO `cities` VALUES (414, 'Amritsar', 18, 1);
INSERT INTO `cities` VALUES (415, 'Bathinda', 18, 1);
INSERT INTO `cities` VALUES (416, 'Firozpur', 18, 1);
INSERT INTO `cities` VALUES (417, 'Faridkot', 18, 1);
INSERT INTO `cities` VALUES (418, 'Fatehgarh Sahib', 18, 1);
INSERT INTO `cities` VALUES (419, 'Gurdaspur', 18, 1);
INSERT INTO `cities` VALUES (420, 'Hoshiarpur', 18, 1);
INSERT INTO `cities` VALUES (421, 'Jalandhar', 18, 1);
INSERT INTO `cities` VALUES (422, 'Kapurthala', 18, 1);
INSERT INTO `cities` VALUES (423, 'Ludhiana', 18, 1);
INSERT INTO `cities` VALUES (424, 'Mansa', 18, 1);
INSERT INTO `cities` VALUES (425, 'Moga', 18, 1);
INSERT INTO `cities` VALUES (426, 'Mukatsar', 18, 1);
INSERT INTO `cities` VALUES (427, 'Nawan Shehar', 18, 1);
INSERT INTO `cities` VALUES (428, 'Patiala', 18, 1);
INSERT INTO `cities` VALUES (429, 'Rupnagar', 18, 1);
INSERT INTO `cities` VALUES (430, 'Sangrur', 18, 1);
INSERT INTO `cities` VALUES (431, 'Ajmer', 19, 1);
INSERT INTO `cities` VALUES (432, 'Alwar', 19, 1);
INSERT INTO `cities` VALUES (433, 'Bikaner', 19, 1);
INSERT INTO `cities` VALUES (434, 'Barmer', 19, 1);
INSERT INTO `cities` VALUES (435, 'Banswara', 19, 1);
INSERT INTO `cities` VALUES (436, 'Bharatpur', 19, 1);
INSERT INTO `cities` VALUES (437, 'Baran', 19, 1);
INSERT INTO `cities` VALUES (438, 'Bundi', 19, 1);
INSERT INTO `cities` VALUES (439, 'Bhilwara', 19, 1);
INSERT INTO `cities` VALUES (440, 'Churu', 19, 1);
INSERT INTO `cities` VALUES (441, 'Chittorgarh', 19, 1);
INSERT INTO `cities` VALUES (442, 'Dausa', 19, 1);
INSERT INTO `cities` VALUES (443, 'Dholpur', 19, 1);
INSERT INTO `cities` VALUES (444, 'Dungapur', 19, 1);
INSERT INTO `cities` VALUES (445, 'Ganganagar', 19, 1);
INSERT INTO `cities` VALUES (446, 'Hanumangarh', 19, 1);
INSERT INTO `cities` VALUES (447, 'Juhnjhunun', 19, 1);
INSERT INTO `cities` VALUES (448, 'Jalore', 19, 1);
INSERT INTO `cities` VALUES (449, 'Jodhpur', 19, 1);
INSERT INTO `cities` VALUES (450, 'Jaipur', 19, 1);
INSERT INTO `cities` VALUES (451, 'Jaisalmer', 19, 1);
INSERT INTO `cities` VALUES (452, 'Jhalawar', 19, 1);
INSERT INTO `cities` VALUES (453, 'Karauli', 19, 1);
INSERT INTO `cities` VALUES (454, 'Kota', 19, 1);
INSERT INTO `cities` VALUES (455, 'Nagaur', 19, 1);
INSERT INTO `cities` VALUES (456, 'Pali', 19, 1);
INSERT INTO `cities` VALUES (457, 'Pratapgarh', 19, 1);
INSERT INTO `cities` VALUES (458, 'Rajsamand', 19, 1);
INSERT INTO `cities` VALUES (459, 'Sikar', 19, 1);
INSERT INTO `cities` VALUES (460, 'Sawai Madhopur', 19, 1);
INSERT INTO `cities` VALUES (461, 'Sirohi', 19, 1);
INSERT INTO `cities` VALUES (462, 'Tonk', 19, 1);
INSERT INTO `cities` VALUES (463, 'Udaipur', 19, 1);
INSERT INTO `cities` VALUES (464, 'East Sikkim', 20, 1);
INSERT INTO `cities` VALUES (465, 'North Sikkim', 20, 1);
INSERT INTO `cities` VALUES (466, 'South Sikkim', 20, 1);
INSERT INTO `cities` VALUES (467, 'West Sikkim', 20, 1);
INSERT INTO `cities` VALUES (468, 'Ariyalur', 21, 1);
INSERT INTO `cities` VALUES (469, 'Chennai', 21, 1);
INSERT INTO `cities` VALUES (470, 'Coimbatore', 21, 1);
INSERT INTO `cities` VALUES (471, 'Cuddalore', 21, 1);
INSERT INTO `cities` VALUES (472, 'Dharmapuri', 21, 1);
INSERT INTO `cities` VALUES (473, 'Dindigul', 21, 1);
INSERT INTO `cities` VALUES (474, 'Erode', 21, 1);
INSERT INTO `cities` VALUES (475, 'Kanchipuram', 21, 1);
INSERT INTO `cities` VALUES (476, 'Kanyakumari', 21, 1);
INSERT INTO `cities` VALUES (477, 'Karur', 21, 1);
INSERT INTO `cities` VALUES (478, 'Madurai', 21, 1);
INSERT INTO `cities` VALUES (479, 'Nagapattinam', 21, 1);
INSERT INTO `cities` VALUES (480, 'The Nilgiris', 21, 1);
INSERT INTO `cities` VALUES (481, 'Namakkal', 21, 1);
INSERT INTO `cities` VALUES (482, 'Perambalur', 21, 1);
INSERT INTO `cities` VALUES (483, 'Pudukkottai', 21, 1);
INSERT INTO `cities` VALUES (484, 'Ramanathapuram', 21, 1);
INSERT INTO `cities` VALUES (485, 'Salem', 21, 1);
INSERT INTO `cities` VALUES (486, 'Sivagangai', 21, 1);
INSERT INTO `cities` VALUES (487, 'Tiruppur', 21, 1);
INSERT INTO `cities` VALUES (488, 'Tiruchirappalli', 21, 1);
INSERT INTO `cities` VALUES (489, 'Theni', 21, 1);
INSERT INTO `cities` VALUES (490, 'Tirunelveli', 21, 1);
INSERT INTO `cities` VALUES (491, 'Thanjavur', 21, 1);
INSERT INTO `cities` VALUES (492, 'Thoothukudi', 21, 1);
INSERT INTO `cities` VALUES (493, 'Thiruvallur', 21, 1);
INSERT INTO `cities` VALUES (494, 'Thiruvarur', 21, 1);
INSERT INTO `cities` VALUES (495, 'Tiruvannamalai', 21, 1);
INSERT INTO `cities` VALUES (496, 'Vellore', 21, 1);
INSERT INTO `cities` VALUES (497, 'Villupuram', 21, 1);
INSERT INTO `cities` VALUES (498, 'Dhalai', 22, 1);
INSERT INTO `cities` VALUES (499, 'North Tripura', 22, 1);
INSERT INTO `cities` VALUES (500, 'South Tripura', 22, 1);
INSERT INTO `cities` VALUES (501, 'West Tripura', 22, 1);
INSERT INTO `cities` VALUES (502, 'Almora', 33, 1);
INSERT INTO `cities` VALUES (503, 'Bageshwar', 33, 1);
INSERT INTO `cities` VALUES (504, 'Chamoli', 33, 1);
INSERT INTO `cities` VALUES (505, 'Champawat', 33, 1);
INSERT INTO `cities` VALUES (506, 'Dehradun', 33, 1);
INSERT INTO `cities` VALUES (507, 'Haridwar', 33, 1);
INSERT INTO `cities` VALUES (508, 'Nainital', 33, 1);
INSERT INTO `cities` VALUES (509, 'Pauri Garhwal', 33, 1);
INSERT INTO `cities` VALUES (510, 'Pithoragharh', 33, 1);
INSERT INTO `cities` VALUES (511, 'Rudraprayag', 33, 1);
INSERT INTO `cities` VALUES (512, 'Tehri Garhwal', 33, 1);
INSERT INTO `cities` VALUES (513, 'Udham Singh Nagar', 33, 1);
INSERT INTO `cities` VALUES (514, 'Uttarkashi', 33, 1);
INSERT INTO `cities` VALUES (515, 'Agra', 23, 1);
INSERT INTO `cities` VALUES (516, 'Allahabad', 23, 1);
INSERT INTO `cities` VALUES (517, 'Aligarh', 23, 1);
INSERT INTO `cities` VALUES (518, 'Ambedkar Nagar', 23, 1);
INSERT INTO `cities` VALUES (519, 'Auraiya', 23, 1);
INSERT INTO `cities` VALUES (520, 'Azamgarh', 23, 1);
INSERT INTO `cities` VALUES (521, 'Barabanki', 23, 1);
INSERT INTO `cities` VALUES (522, 'Badaun', 23, 1);
INSERT INTO `cities` VALUES (523, 'Bagpat', 23, 1);
INSERT INTO `cities` VALUES (524, 'Bahraich', 23, 1);
INSERT INTO `cities` VALUES (525, 'Bijnor', 23, 1);
INSERT INTO `cities` VALUES (526, 'Ballia', 23, 1);
INSERT INTO `cities` VALUES (527, 'Banda', 23, 1);
INSERT INTO `cities` VALUES (528, 'Balrampur', 23, 1);
INSERT INTO `cities` VALUES (529, 'Bareilly', 23, 1);
INSERT INTO `cities` VALUES (530, 'Basti', 23, 1);
INSERT INTO `cities` VALUES (531, 'Bulandshahr', 23, 1);
INSERT INTO `cities` VALUES (532, 'Chandauli', 23, 1);
INSERT INTO `cities` VALUES (533, 'Chitrakoot', 23, 1);
INSERT INTO `cities` VALUES (534, 'Deoria', 23, 1);
INSERT INTO `cities` VALUES (535, 'Etah', 23, 1);
INSERT INTO `cities` VALUES (536, 'Kanshiram Nagar', 23, 1);
INSERT INTO `cities` VALUES (537, 'Etawah', 23, 1);
INSERT INTO `cities` VALUES (538, 'Firozabad', 23, 1);
INSERT INTO `cities` VALUES (539, 'Farrukhabad', 23, 1);
INSERT INTO `cities` VALUES (540, 'Fatehpur', 23, 1);
INSERT INTO `cities` VALUES (541, 'Faizabad', 23, 1);
INSERT INTO `cities` VALUES (542, 'Gautam Buddha Nagar', 23, 1);
INSERT INTO `cities` VALUES (543, 'Gonda', 23, 1);
INSERT INTO `cities` VALUES (544, 'Ghazipur', 23, 1);
INSERT INTO `cities` VALUES (545, 'Gorkakhpur', 23, 1);
INSERT INTO `cities` VALUES (546, 'Ghaziabad', 23, 1);
INSERT INTO `cities` VALUES (547, 'Hamirpur', 23, 1);
INSERT INTO `cities` VALUES (548, 'Hardoi', 23, 1);
INSERT INTO `cities` VALUES (549, 'Mahamaya Nagar', 23, 1);
INSERT INTO `cities` VALUES (550, 'Jhansi', 23, 1);
INSERT INTO `cities` VALUES (551, 'Jalaun', 23, 1);
INSERT INTO `cities` VALUES (552, 'Jyotiba Phule Nagar', 23, 1);
INSERT INTO `cities` VALUES (553, 'Jaunpur District', 23, 1);
INSERT INTO `cities` VALUES (554, 'Kanpur Dehat', 23, 1);
INSERT INTO `cities` VALUES (555, 'Kannauj', 23, 1);
INSERT INTO `cities` VALUES (556, 'Kanpur Nagar', 23, 1);
INSERT INTO `cities` VALUES (557, 'Kaushambi', 23, 1);
INSERT INTO `cities` VALUES (558, 'Kushinagar', 23, 1);
INSERT INTO `cities` VALUES (559, 'Lalitpur', 23, 1);
INSERT INTO `cities` VALUES (560, 'Lakhimpur Kheri', 23, 1);
INSERT INTO `cities` VALUES (561, 'Lucknow', 23, 1);
INSERT INTO `cities` VALUES (562, 'Mau', 23, 1);
INSERT INTO `cities` VALUES (563, 'Meerut', 23, 1);
INSERT INTO `cities` VALUES (564, 'Maharajganj', 23, 1);
INSERT INTO `cities` VALUES (565, 'Mahoba', 23, 1);
INSERT INTO `cities` VALUES (566, 'Mirzapur', 23, 1);
INSERT INTO `cities` VALUES (567, 'Moradabad', 23, 1);
INSERT INTO `cities` VALUES (568, 'Mainpuri', 23, 1);
INSERT INTO `cities` VALUES (569, 'Mathura', 23, 1);
INSERT INTO `cities` VALUES (570, 'Muzaffarnagar', 23, 1);
INSERT INTO `cities` VALUES (571, 'Pilibhit', 23, 1);
INSERT INTO `cities` VALUES (572, 'Pratapgarh', 23, 1);
INSERT INTO `cities` VALUES (573, 'Rampur', 23, 1);
INSERT INTO `cities` VALUES (574, 'Rae Bareli', 23, 1);
INSERT INTO `cities` VALUES (575, 'Saharanpur', 23, 1);
INSERT INTO `cities` VALUES (576, 'Sitapur', 23, 1);
INSERT INTO `cities` VALUES (577, 'Shahjahanpur', 23, 1);
INSERT INTO `cities` VALUES (578, 'Sant Kabir Nagar', 23, 1);
INSERT INTO `cities` VALUES (579, 'Siddharthnagar', 23, 1);
INSERT INTO `cities` VALUES (580, 'Sonbhadra', 23, 1);
INSERT INTO `cities` VALUES (581, 'Sant Ravidas Nagar', 23, 1);
INSERT INTO `cities` VALUES (582, 'Sultanpur', 23, 1);
INSERT INTO `cities` VALUES (583, 'Shravasti', 23, 1);
INSERT INTO `cities` VALUES (584, 'Unnao', 23, 1);
INSERT INTO `cities` VALUES (585, 'Varanasi', 23, 1);
INSERT INTO `cities` VALUES (586, 'Birbhum', 24, 1);
INSERT INTO `cities` VALUES (587, 'Bankura', 24, 1);
INSERT INTO `cities` VALUES (588, 'Bardhaman', 24, 1);
INSERT INTO `cities` VALUES (589, 'Darjeeling', 24, 1);
INSERT INTO `cities` VALUES (590, 'Dakshin Dinajpur', 24, 1);
INSERT INTO `cities` VALUES (591, 'Hooghly', 24, 1);
INSERT INTO `cities` VALUES (592, 'Howrah', 24, 1);
INSERT INTO `cities` VALUES (593, 'Jalpaiguri', 24, 1);
INSERT INTO `cities` VALUES (594, 'Cooch Behar', 24, 1);
INSERT INTO `cities` VALUES (595, 'Kolkata', 24, 1);
INSERT INTO `cities` VALUES (596, 'Malda', 24, 1);
INSERT INTO `cities` VALUES (597, 'Midnapore', 24, 1);
INSERT INTO `cities` VALUES (598, 'Murshidabad', 24, 1);
INSERT INTO `cities` VALUES (599, 'Nadia', 24, 1);
INSERT INTO `cities` VALUES (600, 'North 24 Parganas', 24, 1);
INSERT INTO `cities` VALUES (601, 'South 24 Parganas', 24, 1);
INSERT INTO `cities` VALUES (602, 'Purulia', 24, 1);
INSERT INTO `cities` VALUES (603, 'Uttar Dinajpur', 24, 1);

-- ----------------------------
-- Table structure for contactus
-- ----------------------------
DROP TABLE IF EXISTS `contactus`;
CREATE TABLE `contactus`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `subject` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fkuserId` int NULL DEFAULT NULL,
  `isactive` int NULL DEFAULT NULL,
  `cd` datetime(6) NULL DEFAULT NULL,
  `md` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_Id`(`fkuserId`) USING BTREE,
  CONSTRAINT `user_Id` FOREIGN KEY (`fkuserId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contactus
-- ----------------------------
INSERT INTO `contactus` VALUES (1, 'rohit', 'rohitchikane35.rp@gmail.com', 'Greetings', 'Hii', NULL, 1, '2020-12-03 10:45:13.000000', NULL);
INSERT INTO `contactus` VALUES (2, 'rohit', 'torr@gmail.com', 'Greetings', 'hii', NULL, 1, '2020-12-03 10:47:39.000000', NULL);
INSERT INTO `contactus` VALUES (3, 'rohit', 'torr@gmail.com', 'Greetings', 'hii', NULL, 1, '2020-12-03 10:48:43.000000', NULL);

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `countryCode` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `isactive` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 251 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES (1, 'AD', 'Andorra', 1);
INSERT INTO `countries` VALUES (2, 'AE', 'United Arab Emirates', 1);
INSERT INTO `countries` VALUES (3, 'AF', 'Afghanistan', 1);
INSERT INTO `countries` VALUES (4, 'AG', 'Antigua and Barbuda', 1);
INSERT INTO `countries` VALUES (5, 'AI', 'Anguilla', 1);
INSERT INTO `countries` VALUES (6, 'AL', 'Albania', 1);
INSERT INTO `countries` VALUES (7, 'AM', 'Armenia', 1);
INSERT INTO `countries` VALUES (8, 'AO', 'Angola', 1);
INSERT INTO `countries` VALUES (9, 'AQ', 'Antarctica', 1);
INSERT INTO `countries` VALUES (10, 'AR', 'Argentina', 1);
INSERT INTO `countries` VALUES (11, 'AS', 'American Samoa', 1);
INSERT INTO `countries` VALUES (12, 'AT', 'Austria', 1);
INSERT INTO `countries` VALUES (13, 'AU', 'Australia', 1);
INSERT INTO `countries` VALUES (14, 'AW', 'Aruba', 1);
INSERT INTO `countries` VALUES (15, 'AX', 'Åland', 1);
INSERT INTO `countries` VALUES (16, 'AZ', 'Azerbaijan', 1);
INSERT INTO `countries` VALUES (17, 'BA', 'Bosnia and Herzegovina', 1);
INSERT INTO `countries` VALUES (18, 'BB', 'Barbados', 1);
INSERT INTO `countries` VALUES (19, 'BD', 'Bangladesh', 1);
INSERT INTO `countries` VALUES (20, 'BE', 'Belgium', 1);
INSERT INTO `countries` VALUES (21, 'BF', 'Burkina Faso', 1);
INSERT INTO `countries` VALUES (22, 'BG', 'Bulgaria', 1);
INSERT INTO `countries` VALUES (23, 'BH', 'Bahrain', 1);
INSERT INTO `countries` VALUES (24, 'BI', 'Burundi', 1);
INSERT INTO `countries` VALUES (25, 'BJ', 'Benin', 1);
INSERT INTO `countries` VALUES (26, 'BL', 'Saint Barthélemy', 1);
INSERT INTO `countries` VALUES (27, 'BM', 'Bermuda', 1);
INSERT INTO `countries` VALUES (28, 'BN', 'Brunei', 1);
INSERT INTO `countries` VALUES (29, 'BO', 'Bolivia', 1);
INSERT INTO `countries` VALUES (30, 'BQ', 'Bonaire', 1);
INSERT INTO `countries` VALUES (31, 'BR', 'Brazil', 1);
INSERT INTO `countries` VALUES (32, 'BS', 'Bahamas', 1);
INSERT INTO `countries` VALUES (33, 'BT', 'Bhutan', 1);
INSERT INTO `countries` VALUES (34, 'BV', 'Bouvet Island', 1);
INSERT INTO `countries` VALUES (35, 'BW', 'Botswana', 1);
INSERT INTO `countries` VALUES (36, 'BY', 'Belarus', 1);
INSERT INTO `countries` VALUES (37, 'BZ', 'Belize', 1);
INSERT INTO `countries` VALUES (38, 'CA', 'Canada', 1);
INSERT INTO `countries` VALUES (39, 'CC', 'Cocos [Keeling] Islands', 1);
INSERT INTO `countries` VALUES (40, 'CD', 'Democratic Republic of the Congo', 1);
INSERT INTO `countries` VALUES (41, 'CF', 'Central African Republic', 1);
INSERT INTO `countries` VALUES (42, 'CG', 'Republic of the Congo', 1);
INSERT INTO `countries` VALUES (43, 'CH', 'Switzerland', 1);
INSERT INTO `countries` VALUES (44, 'CI', 'Ivory Coast', 1);
INSERT INTO `countries` VALUES (45, 'CK', 'Cook Islands', 1);
INSERT INTO `countries` VALUES (46, 'CL', 'Chile', 1);
INSERT INTO `countries` VALUES (47, 'CM', 'Cameroon', 1);
INSERT INTO `countries` VALUES (48, 'CN', 'China', 1);
INSERT INTO `countries` VALUES (49, 'CO', 'Colombia', 1);
INSERT INTO `countries` VALUES (50, 'CR', 'Costa Rica', 1);
INSERT INTO `countries` VALUES (51, 'CU', 'Cuba', 1);
INSERT INTO `countries` VALUES (52, 'CV', 'Cape Verde', 1);
INSERT INTO `countries` VALUES (53, 'CW', 'Curacao', 1);
INSERT INTO `countries` VALUES (54, 'CX', 'Christmas Island', 1);
INSERT INTO `countries` VALUES (55, 'CY', 'Cyprus', 1);
INSERT INTO `countries` VALUES (56, 'CZ', 'Czech Republic', 1);
INSERT INTO `countries` VALUES (57, 'DE', 'Germany', 1);
INSERT INTO `countries` VALUES (58, 'DJ', 'Djibouti', 1);
INSERT INTO `countries` VALUES (59, 'DK', 'Denmark', 1);
INSERT INTO `countries` VALUES (60, 'DM', 'Dominica', 1);
INSERT INTO `countries` VALUES (61, 'DO', 'Dominican Republic', 1);
INSERT INTO `countries` VALUES (62, 'DZ', 'Algeria', 1);
INSERT INTO `countries` VALUES (63, 'EC', 'Ecuador', 1);
INSERT INTO `countries` VALUES (64, 'EE', 'Estonia', 1);
INSERT INTO `countries` VALUES (65, 'EG', 'Egypt', 1);
INSERT INTO `countries` VALUES (66, 'EH', 'Western Sahara', 1);
INSERT INTO `countries` VALUES (67, 'ER', 'Eritrea', 1);
INSERT INTO `countries` VALUES (68, 'ES', 'Spain', 1);
INSERT INTO `countries` VALUES (69, 'ET', 'Ethiopia', 1);
INSERT INTO `countries` VALUES (70, 'FI', 'Finland', 1);
INSERT INTO `countries` VALUES (71, 'FJ', 'Fiji', 1);
INSERT INTO `countries` VALUES (72, 'FK', 'Falkland Islands', 1);
INSERT INTO `countries` VALUES (73, 'FM', 'Micronesia', 1);
INSERT INTO `countries` VALUES (74, 'FO', 'Faroe Islands', 1);
INSERT INTO `countries` VALUES (75, 'FR', 'France', 1);
INSERT INTO `countries` VALUES (76, 'GA', 'Gabon', 1);
INSERT INTO `countries` VALUES (77, 'GB', 'United Kingdom', 1);
INSERT INTO `countries` VALUES (78, 'GD', 'Grenada', 1);
INSERT INTO `countries` VALUES (79, 'GE', 'Georgia', 1);
INSERT INTO `countries` VALUES (80, 'GF', 'French Guiana', 1);
INSERT INTO `countries` VALUES (81, 'GG', 'Guernsey', 1);
INSERT INTO `countries` VALUES (82, 'GH', 'Ghana', 1);
INSERT INTO `countries` VALUES (83, 'GI', 'Gibraltar', 1);
INSERT INTO `countries` VALUES (84, 'GL', 'Greenland', 1);
INSERT INTO `countries` VALUES (85, 'GM', 'Gambia', 1);
INSERT INTO `countries` VALUES (86, 'GN', 'Guinea', 1);
INSERT INTO `countries` VALUES (87, 'GP', 'Guadeloupe', 1);
INSERT INTO `countries` VALUES (88, 'GQ', 'Equatorial Guinea', 1);
INSERT INTO `countries` VALUES (89, 'GR', 'Greece', 1);
INSERT INTO `countries` VALUES (90, 'GS', 'South Georgia and the South Sandwich Islands', 1);
INSERT INTO `countries` VALUES (91, 'GT', 'Guatemala', 1);
INSERT INTO `countries` VALUES (92, 'GU', 'Guam', 1);
INSERT INTO `countries` VALUES (93, 'GW', 'Guinea-Bissau', 1);
INSERT INTO `countries` VALUES (94, 'GY', 'Guyana', 1);
INSERT INTO `countries` VALUES (95, 'HK', 'Hong Kong', 1);
INSERT INTO `countries` VALUES (96, 'HM', 'Heard Island and McDonald Islands', 1);
INSERT INTO `countries` VALUES (97, 'HN', 'Honduras', 1);
INSERT INTO `countries` VALUES (98, 'HR', 'Croatia', 1);
INSERT INTO `countries` VALUES (99, 'HT', 'Haiti', 1);
INSERT INTO `countries` VALUES (100, 'HU', 'Hungary', 1);
INSERT INTO `countries` VALUES (101, 'ID', 'Indonesia', 1);
INSERT INTO `countries` VALUES (102, 'IE', 'Ireland', 1);
INSERT INTO `countries` VALUES (103, 'IL', 'Israel', 1);
INSERT INTO `countries` VALUES (104, 'IM', 'Isle of Man', 1);
INSERT INTO `countries` VALUES (105, 'IN', 'India', 1);
INSERT INTO `countries` VALUES (106, 'IO', 'British Indian Ocean Territory', 1);
INSERT INTO `countries` VALUES (107, 'IQ', 'Iraq', 1);
INSERT INTO `countries` VALUES (108, 'IR', 'Iran', 1);
INSERT INTO `countries` VALUES (109, 'IS', 'Iceland', 1);
INSERT INTO `countries` VALUES (110, 'IT', 'Italy', 1);
INSERT INTO `countries` VALUES (111, 'JE', 'Jersey', 1);
INSERT INTO `countries` VALUES (112, 'JM', 'Jamaica', 1);
INSERT INTO `countries` VALUES (113, 'JO', 'Jordan', 1);
INSERT INTO `countries` VALUES (114, 'JP', 'Japan', 1);
INSERT INTO `countries` VALUES (115, 'KE', 'Kenya', 1);
INSERT INTO `countries` VALUES (116, 'KG', 'Kyrgyzstan', 1);
INSERT INTO `countries` VALUES (117, 'KH', 'Cambodia', 1);
INSERT INTO `countries` VALUES (118, 'KI', 'Kiribati', 1);
INSERT INTO `countries` VALUES (119, 'KM', 'Comoros', 1);
INSERT INTO `countries` VALUES (120, 'KN', 'Saint Kitts and Nevis', 1);
INSERT INTO `countries` VALUES (121, 'KP', 'North Korea', 1);
INSERT INTO `countries` VALUES (122, 'KR', 'South Korea', 1);
INSERT INTO `countries` VALUES (123, 'KW', 'Kuwait', 1);
INSERT INTO `countries` VALUES (124, 'KY', 'Cayman Islands', 1);
INSERT INTO `countries` VALUES (125, 'KZ', 'Kazakhstan', 1);
INSERT INTO `countries` VALUES (126, 'LA', 'Laos', 1);
INSERT INTO `countries` VALUES (127, 'LB', 'Lebanon', 1);
INSERT INTO `countries` VALUES (128, 'LC', 'Saint Lucia', 1);
INSERT INTO `countries` VALUES (129, 'LI', 'Liechtenstein', 1);
INSERT INTO `countries` VALUES (130, 'LK', 'Sri Lanka', 1);
INSERT INTO `countries` VALUES (131, 'LR', 'Liberia', 1);
INSERT INTO `countries` VALUES (132, 'LS', 'Lesotho', 1);
INSERT INTO `countries` VALUES (133, 'LT', 'Lithuania', 1);
INSERT INTO `countries` VALUES (134, 'LU', 'Luxembourg', 1);
INSERT INTO `countries` VALUES (135, 'LV', 'Latvia', 1);
INSERT INTO `countries` VALUES (136, 'LY', 'Libya', 1);
INSERT INTO `countries` VALUES (137, 'MA', 'Morocco', 1);
INSERT INTO `countries` VALUES (138, 'MC', 'Monaco', 1);
INSERT INTO `countries` VALUES (139, 'MD', 'Moldova', 1);
INSERT INTO `countries` VALUES (140, 'ME', 'Montenegro', 1);
INSERT INTO `countries` VALUES (141, 'MF', 'Saint Martin', 1);
INSERT INTO `countries` VALUES (142, 'MG', 'Madagascar', 1);
INSERT INTO `countries` VALUES (143, 'MH', 'Marshall Islands', 1);
INSERT INTO `countries` VALUES (144, 'MK', 'Macedonia', 1);
INSERT INTO `countries` VALUES (145, 'ML', 'Mali', 1);
INSERT INTO `countries` VALUES (146, 'MM', 'Myanmar [Burma]', 1);
INSERT INTO `countries` VALUES (147, 'MN', 'Mongolia', 1);
INSERT INTO `countries` VALUES (148, 'MO', 'Macao', 1);
INSERT INTO `countries` VALUES (149, 'MP', 'Northern Mariana Islands', 1);
INSERT INTO `countries` VALUES (150, 'MQ', 'Martinique', 1);
INSERT INTO `countries` VALUES (151, 'MR', 'Mauritania', 1);
INSERT INTO `countries` VALUES (152, 'MS', 'Montserrat', 1);
INSERT INTO `countries` VALUES (153, 'MT', 'Malta', 1);
INSERT INTO `countries` VALUES (154, 'MU', 'Mauritius', 1);
INSERT INTO `countries` VALUES (155, 'MV', 'Maldives', 1);
INSERT INTO `countries` VALUES (156, 'MW', 'Malawi', 1);
INSERT INTO `countries` VALUES (157, 'MX', 'Mexico', 1);
INSERT INTO `countries` VALUES (158, 'MY', 'Malaysia', 1);
INSERT INTO `countries` VALUES (159, 'MZ', 'Mozambique', 1);
INSERT INTO `countries` VALUES (160, 'NA', 'Namibia', 1);
INSERT INTO `countries` VALUES (161, 'NC', 'New Caledonia', 1);
INSERT INTO `countries` VALUES (162, 'NE', 'Niger', 1);
INSERT INTO `countries` VALUES (163, 'NF', 'Norfolk Island', 1);
INSERT INTO `countries` VALUES (164, 'NG', 'Nigeria', 1);
INSERT INTO `countries` VALUES (165, 'NI', 'Nicaragua', 1);
INSERT INTO `countries` VALUES (166, 'NL', 'Netherlands', 1);
INSERT INTO `countries` VALUES (167, 'NO', 'Norway', 1);
INSERT INTO `countries` VALUES (168, 'NP', 'Nepal', 1);
INSERT INTO `countries` VALUES (169, 'NR', 'Nauru', 1);
INSERT INTO `countries` VALUES (170, 'NU', 'Niue', 1);
INSERT INTO `countries` VALUES (171, 'NZ', 'New Zealand', 1);
INSERT INTO `countries` VALUES (172, 'OM', 'Oman', 1);
INSERT INTO `countries` VALUES (173, 'PA', 'Panama', 1);
INSERT INTO `countries` VALUES (174, 'PE', 'Peru', 1);
INSERT INTO `countries` VALUES (175, 'PF', 'French Polynesia', 1);
INSERT INTO `countries` VALUES (176, 'PG', 'Papua New Guinea', 1);
INSERT INTO `countries` VALUES (177, 'PH', 'Philippines', 1);
INSERT INTO `countries` VALUES (178, 'PK', 'Pakistan', 1);
INSERT INTO `countries` VALUES (179, 'PL', 'Poland', 1);
INSERT INTO `countries` VALUES (180, 'PM', 'Saint Pierre and Miquelon', 1);
INSERT INTO `countries` VALUES (181, 'PN', 'Pitcairn Islands', 1);
INSERT INTO `countries` VALUES (182, 'PR', 'Puerto Rico', 1);
INSERT INTO `countries` VALUES (183, 'PS', 'Palestine', 1);
INSERT INTO `countries` VALUES (184, 'PT', 'Portugal', 1);
INSERT INTO `countries` VALUES (185, 'PW', 'Palau', 1);
INSERT INTO `countries` VALUES (186, 'PY', 'Paraguay', 1);
INSERT INTO `countries` VALUES (187, 'QA', 'Qatar', 1);
INSERT INTO `countries` VALUES (188, 'RE', 'Réunion', 1);
INSERT INTO `countries` VALUES (189, 'RO', 'Romania', 1);
INSERT INTO `countries` VALUES (190, 'RS', 'Serbia', 1);
INSERT INTO `countries` VALUES (191, 'RU', 'Russia', 1);
INSERT INTO `countries` VALUES (192, 'RW', 'Rwanda', 1);
INSERT INTO `countries` VALUES (193, 'SA', 'Saudi Arabia', 1);
INSERT INTO `countries` VALUES (194, 'SB', 'Solomon Islands', 1);
INSERT INTO `countries` VALUES (195, 'SC', 'Seychelles', 1);
INSERT INTO `countries` VALUES (196, 'SD', 'Sudan', 1);
INSERT INTO `countries` VALUES (197, 'SE', 'Sweden', 1);
INSERT INTO `countries` VALUES (198, 'SG', 'Singapore', 1);
INSERT INTO `countries` VALUES (199, 'SH', 'Saint Helena', 1);
INSERT INTO `countries` VALUES (200, 'SI', 'Slovenia', 1);
INSERT INTO `countries` VALUES (201, 'SJ', 'Svalbard and Jan Mayen', 1);
INSERT INTO `countries` VALUES (202, 'SK', 'Slovakia', 1);
INSERT INTO `countries` VALUES (203, 'SL', 'Sierra Leone', 1);
INSERT INTO `countries` VALUES (204, 'SM', 'San Marino', 1);
INSERT INTO `countries` VALUES (205, 'SN', 'Senegal', 1);
INSERT INTO `countries` VALUES (206, 'SO', 'Somalia', 1);
INSERT INTO `countries` VALUES (207, 'SR', 'Suriname', 1);
INSERT INTO `countries` VALUES (208, 'SS', 'South Sudan', 1);
INSERT INTO `countries` VALUES (209, 'ST', 'São Tomé and Príncipe', 1);
INSERT INTO `countries` VALUES (210, 'SV', 'El Salvador', 1);
INSERT INTO `countries` VALUES (211, 'SX', 'Sint Maarten', 1);
INSERT INTO `countries` VALUES (212, 'SY', 'Syria', 1);
INSERT INTO `countries` VALUES (213, 'SZ', 'Swaziland', 1);
INSERT INTO `countries` VALUES (214, 'TC', 'Turks and Caicos Islands', 1);
INSERT INTO `countries` VALUES (215, 'TD', 'Chad', 1);
INSERT INTO `countries` VALUES (216, 'TF', 'French Southern Territories', 1);
INSERT INTO `countries` VALUES (217, 'TG', 'Togo', 1);
INSERT INTO `countries` VALUES (218, 'TH', 'Thailand', 1);
INSERT INTO `countries` VALUES (219, 'TJ', 'Tajikistan', 1);
INSERT INTO `countries` VALUES (220, 'TK', 'Tokelau', 1);
INSERT INTO `countries` VALUES (221, 'TL', 'East Timor', 1);
INSERT INTO `countries` VALUES (222, 'TM', 'Turkmenistan', 1);
INSERT INTO `countries` VALUES (223, 'TN', 'Tunisia', 1);
INSERT INTO `countries` VALUES (224, 'TO', 'Tonga', 1);
INSERT INTO `countries` VALUES (225, 'TR', 'Turkey', 1);
INSERT INTO `countries` VALUES (226, 'TT', 'Trinidad and Tobago', 1);
INSERT INTO `countries` VALUES (227, 'TV', 'Tuvalu', 1);
INSERT INTO `countries` VALUES (228, 'TW', 'Taiwan', 1);
INSERT INTO `countries` VALUES (229, 'TZ', 'Tanzania', 1);
INSERT INTO `countries` VALUES (230, 'UA', 'Ukraine', 1);
INSERT INTO `countries` VALUES (231, 'UG', 'Uganda', 1);
INSERT INTO `countries` VALUES (232, 'UM', 'U.S. Minor Outlying Islands', 1);
INSERT INTO `countries` VALUES (233, 'US', 'United States', 1);
INSERT INTO `countries` VALUES (234, 'UY', 'Uruguay', 1);
INSERT INTO `countries` VALUES (235, 'UZ', 'Uzbekistan', 1);
INSERT INTO `countries` VALUES (236, 'VA', 'Vatican City', 1);
INSERT INTO `countries` VALUES (237, 'VC', 'Saint Vincent and the Grenadines', 1);
INSERT INTO `countries` VALUES (238, 'VE', 'Venezuela', 1);
INSERT INTO `countries` VALUES (239, 'VG', 'British Virgin Islands', 1);
INSERT INTO `countries` VALUES (240, 'VI', 'U.S. Virgin Islands', 1);
INSERT INTO `countries` VALUES (241, 'VN', 'Vietnam', 1);
INSERT INTO `countries` VALUES (242, 'VU', 'Vanuatu', 1);
INSERT INTO `countries` VALUES (243, 'WF', 'Wallis and Futuna', 1);
INSERT INTO `countries` VALUES (244, 'WS', 'Samoa', 1);
INSERT INTO `countries` VALUES (245, 'XK', 'Kosovo', 1);
INSERT INTO `countries` VALUES (246, 'YE', 'Yemen', 1);
INSERT INTO `countries` VALUES (247, 'YT', 'Mayotte', 1);
INSERT INTO `countries` VALUES (248, 'ZA', 'South Africa', 1);
INSERT INTO `countries` VALUES (249, 'ZM', 'Zambia', 1);
INSERT INTO `countries` VALUES (250, 'ZW', 'Zimbabwe', 1);

-- ----------------------------
-- Table structure for group_master
-- ----------------------------
DROP TABLE IF EXISTS `group_master`;
CREATE TABLE `group_master`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isactive` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_master
-- ----------------------------
INSERT INTO `group_master` VALUES (1, 'PAYMENTTYPE', 'PREPAID', 'PREPAID', 1);
INSERT INTO `group_master` VALUES (2, 'PAYMENTTYPE', 'COD', 'COD', 1);
INSERT INTO `group_master` VALUES (3, 'PAYMENTTYPE', 'BOTH', 'BOTH', 1);
INSERT INTO `group_master` VALUES (4, 'USERTYPE', 'SELF', 'SELF', 1);
INSERT INTO `group_master` VALUES (5, 'DELUXROOM', 'AREA', '270 Sq Ft.', 1);
INSERT INTO `group_master` VALUES (6, 'SUPERDELUXROOM', 'AREA', '570 SQ Ft.', 1);

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `roomnumber` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `roomtype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `beds` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `capacity` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `roomdetails` varchar(580) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isactive` int NULL DEFAULT NULL,
  `adult` int NULL DEFAULT NULL,
  `child` int NULL DEFAULT NULL,
  `cd` datetime(6) NULL DEFAULT NULL,
  `md` date NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fkroomtypeid` int NULL DEFAULT NULL,
  `fkroomnumberid` int NULL DEFAULT NULL,
  `fkroomarea` int NULL DEFAULT NULL,
  `roomBook` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fkroomtypeid`(`fkroomtypeid`) USING BTREE,
  INDEX `fkroomnumberid`(`fkroomnumberid`) USING BTREE,
  INDEX `fkroomarea`(`fkroomarea`) USING BTREE,
  CONSTRAINT `fkroomarea` FOREIGN KEY (`fkroomarea`) REFERENCES `room_area` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fkroomnumberid` FOREIGN KEY (`fkroomnumberid`) REFERENCES `roomnumber` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fkroomtypeid` FOREIGN KEY (`fkroomtypeid`) REFERENCES `roomtype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (29, '102', 'Delux Room', '1', '1', '1000', 'Culture, Charm and Hospitality blended with contemporary facilities and services create Paradise Group of Hotels, the finest business-cum-leisure hotel in Navi Mumbai which includes Hotel Paradise Executive & Hotel Paradise Metropolitan.', 1, 1, 1, '2020-11-06 10:31:06.000000', NULL, '300 Sq Ft', 1, 2, 2, 0);
INSERT INTO `room` VALUES (33, '107', 'Delux Room', '1', '1', '1000', 'Culture, Charm and Hospitality blended with contemporary facilities and services create Paradise Group of Hotels, the finest business-cum-leisure hotel in Navi Mumbai which includes Hotel Paradise Executive & Hotel Paradise Metropolitan.', 1, 1, 1, '2020-11-06 10:38:11.000000', '2020-11-16', '270 Sq Ft', 1, 7, 1, 0);
INSERT INTO `room` VALUES (34, '108', 'Delux Room', '1', '1', '1000', 'Culture, Charm and Hospitality blended with contemporary facilities and services create Paradise Group of Hotels, the finest business-cum-leisure hotel in Navi Mumbai which includes Hotel Paradise Executive & Hotel Paradise Metropolitan.', 1, 1, 1, '2020-11-06 15:57:31.000000', '2020-11-16', '300 Sq Ft', 1, 8, 2, 1);
INSERT INTO `room` VALUES (35, '109', 'Super Delux Room', '1', '4', '2500', 'Culture, Charm and Hospitality blended with contemporary facilities and services create Paradise Group of Hotels, the finest business-cum-leisure hotel in Navi Mumbai which includes Hotel Paradise Executive & Hotel Paradise Metropolitan.', 1, 4, 2, '2020-11-11 13:50:10.000000', '2020-11-16', '570 Sq Ft', 2, 9, 4, 0);

-- ----------------------------
-- Table structure for room_area
-- ----------------------------
DROP TABLE IF EXISTS `room_area`;
CREATE TABLE `room_area`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `roomAreaIdfk` int NULL DEFAULT NULL,
  `area` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `unit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isactive` int NULL DEFAULT NULL,
  `cd` datetime(6) NULL DEFAULT NULL,
  `md` datetime(6) NULL DEFAULT NULL,
  `ef1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roomAreaIdfk`(`roomAreaIdfk`) USING BTREE,
  CONSTRAINT `roomAreaIdfk` FOREIGN KEY (`roomAreaIdfk`) REFERENCES `roomtype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_area
-- ----------------------------
INSERT INTO `room_area` VALUES (1, 1, '270 Sq Ft', NULL, 1, '2020-11-06 11:09:13.000000', NULL, NULL);
INSERT INTO `room_area` VALUES (2, 1, '300 Sq Ft', NULL, 1, '2020-11-06 11:10:50.000000', NULL, NULL);
INSERT INTO `room_area` VALUES (3, 2, '500 Sq Ft', NULL, 1, '2020-11-06 11:11:18.000000', NULL, NULL);
INSERT INTO `room_area` VALUES (4, 2, '570 Sq Ft', NULL, 1, '2020-11-06 11:11:39.000000', NULL, NULL);

-- ----------------------------
-- Table structure for room_book
-- ----------------------------
DROP TABLE IF EXISTS `room_book`;
CREATE TABLE `room_book`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `capacity` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adult` int NULL DEFAULT NULL,
  `child` int NULL DEFAULT NULL,
  `days` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `roomtype` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `checkIn` datetime(6) NULL DEFAULT NULL,
  `checkout` datetime(6) NULL DEFAULT NULL,
  `fkroomid` int NULL DEFAULT NULL,
  `roomstatus` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fkuserid` int NULL DEFAULT NULL,
  `fkadminid` int NULL DEFAULT NULL,
  `adminapprove` int NULL DEFAULT NULL,
  `fkpaystatus` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fkroomid`(`fkroomid`) USING BTREE,
  INDEX `fkuserid`(`fkuserid`) USING BTREE,
  INDEX `fkadminid`(`fkadminid`) USING BTREE,
  CONSTRAINT `fkadminid` FOREIGN KEY (`fkadminid`) REFERENCES `system_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fkroomid` FOREIGN KEY (`fkroomid`) REFERENCES `room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fkuserid` FOREIGN KEY (`fkuserid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_book
-- ----------------------------

-- ----------------------------
-- Table structure for room_booking_info
-- ----------------------------
DROP TABLE IF EXISTS `room_booking_info`;
CREATE TABLE `room_booking_info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `bookingid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adult` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `child` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `check_in_time` datetime(6) NULL DEFAULT NULL,
  `check_out_time` datetime(6) NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `total_price` double NULL DEFAULT NULL,
  `fkpaymentTypeId` int NULL DEFAULT NULL,
  `payment_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fkroomid` int NULL DEFAULT NULL,
  `ispayed` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cd` datetime(6) NULL DEFAULT NULL,
  `md` datetime(6) NULL DEFAULT NULL,
  `arrivalTime` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `days` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ef1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fkroomidforbooking`(`fkroomid`) USING BTREE,
  INDEX `fkpaymentTypeId`(`fkpaymentTypeId`) USING BTREE,
  CONSTRAINT `fkpaymentTypeId` FOREIGN KEY (`fkpaymentTypeId`) REFERENCES `group_master` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fkroomidforbooking` FOREIGN KEY (`fkroomid`) REFERENCES `room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_booking_info
-- ----------------------------

-- ----------------------------
-- Table structure for room_image
-- ----------------------------
DROP TABLE IF EXISTS `room_image`;
CREATE TABLE `room_image`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `fkroomimgid` int NULL DEFAULT NULL,
  `imagename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `imagepath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isactive` int NULL DEFAULT NULL,
  `cd` datetime(6) NULL DEFAULT NULL,
  `md` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fkroomimgid`(`fkroomimgid`) USING BTREE,
  CONSTRAINT `fkroomimgid` FOREIGN KEY (`fkroomimgid`) REFERENCES `room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_image
-- ----------------------------
INSERT INTO `room_image` VALUES (3, 29, 'ce8430774cd23228df7d261cd65c662f.jpg', 'http://localhost:8081/Hmss/public/uploads/room/newimage/ce8430774cd23228df7d261cd65c662f.jpg', 1, '2020-11-06 10:31:10.000000', NULL);
INSERT INTO `room_image` VALUES (4, 33, 'a2b4a0236da03fab35e929f74ea894f8.jpg', 'http://localhost:8081/Hmss/public/uploads/room/newimage/a2b4a0236da03fab35e929f74ea894f8.jpg', 1, '2020-11-16 18:32:42.000000', NULL);
INSERT INTO `room_image` VALUES (5, 34, '60cab3ea3f22bf0af69d7ba9d2ab1f83.jpg', 'http://localhost:8081/Hmss/public/uploads/room/newimage/60cab3ea3f22bf0af69d7ba9d2ab1f83.jpg', 1, '2020-11-16 18:28:39.000000', NULL);
INSERT INTO `room_image` VALUES (6, 35, 'de70fe480138a18c13b4fe3555045a37.jpg', 'http://localhost:8081/Hmss/public/uploads/room/newimage/de70fe480138a18c13b4fe3555045a37.jpg', 1, '2020-11-16 18:41:07.000000', NULL);

-- ----------------------------
-- Table structure for roomnumber
-- ----------------------------
DROP TABLE IF EXISTS `roomnumber`;
CREATE TABLE `roomnumber`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `roomnumber` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fkroom_type_Id` int NULL DEFAULT NULL,
  `isroomadd` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isactive` int NULL DEFAULT NULL,
  `cd` datetime(6) NULL DEFAULT NULL,
  `ef1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fkroom_type_Id`(`fkroom_type_Id`) USING BTREE,
  CONSTRAINT `fkroom_type_Id` FOREIGN KEY (`fkroom_type_Id`) REFERENCES `roomtype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roomnumber
-- ----------------------------
INSERT INTO `roomnumber` VALUES (1, '101', 1, '0', 1, '2020-11-06 17:56:19.000000', NULL);
INSERT INTO `roomnumber` VALUES (2, '102', 1, '1', 1, '2020-11-06 17:56:38.000000', NULL);
INSERT INTO `roomnumber` VALUES (3, '103', 2, '0', 1, '2020-11-06 18:00:48.000000', NULL);
INSERT INTO `roomnumber` VALUES (4, '104', 2, '1', 1, '2020-11-06 18:01:01.000000', NULL);
INSERT INTO `roomnumber` VALUES (5, '105', 2, '0', 1, '2020-11-06 18:01:16.000000', NULL);
INSERT INTO `roomnumber` VALUES (6, '106', 1, '1', 1, '2020-11-06 18:01:30.000000', NULL);
INSERT INTO `roomnumber` VALUES (7, '107', 1, '1', 1, '2020-11-16 18:20:42.000000', NULL);
INSERT INTO `roomnumber` VALUES (8, '108', 1, '1', 1, '2020-11-16 18:21:11.000000', NULL);
INSERT INTO `roomnumber` VALUES (9, '109', 2, '1', 1, '2020-11-16 18:21:34.000000', NULL);
INSERT INTO `roomnumber` VALUES (10, '110', 2, '0', 1, '2020-11-16 18:22:12.000000', NULL);

-- ----------------------------
-- Table structure for roomtype
-- ----------------------------
DROP TABLE IF EXISTS `roomtype`;
CREATE TABLE `roomtype`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `roomtype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `roomcode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isactive` int NULL DEFAULT NULL,
  `cd` datetime(6) NULL DEFAULT NULL,
  `md` datetime(6) NULL DEFAULT NULL,
  `ef1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roomtype
-- ----------------------------
INSERT INTO `roomtype` VALUES (1, 'Delux Room', 'DR', 1, '2020-11-05 13:23:07.000000', NULL, NULL);
INSERT INTO `roomtype` VALUES (2, 'Super Delux Room', 'SDR', 1, '2020-11-05 13:23:32.000000', NULL, NULL);

-- ----------------------------
-- Table structure for system_user
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pincode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fkusertypeid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isactive` int NULL DEFAULT NULL,
  `cd` date NULL DEFAULT NULL,
  `ef1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ef2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ef3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ef4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES (1, 'admin', 'admin', '$2y$10$Ze5dlTxUDi946tYxF8MnleOkHFXGedhS0P5JXI3cVW7vBjCfRqj0i', '8888888888', 'admin@gmail.com', '400705', 'Navi Mumbai', NULL, '4', 1, '2020-10-21', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `emailid` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mobileno` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isactive` int NULL DEFAULT NULL,
  `ef1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ef2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ef3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;

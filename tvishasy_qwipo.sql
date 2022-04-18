-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "contactus" ------------------------------------
CREATE TABLE `contactus`( 
	`contact_id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`mobile` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`number` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '\'\'',
	`email` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`address` VarChar( 1000 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '\'\'',
	`title` VarChar( 500 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '\'\'',
	`image_path` VarChar( 500 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '\'\'',
	`name` VarChar( 1000 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '\'\'',
	`subject` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
	`message` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
	`type` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`status` Int( 11 ) NOT NULL DEFAULT 1,
	`created_at` DateTime NOT NULL,
	`updated_at` DateTime NOT NULL,
	PRIMARY KEY ( `contact_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 89;
-- -------------------------------------------------------------


-- CREATE TABLE "user" -----------------------------------------
CREATE TABLE `user`( 
	`user_id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`name` VarChar( 150 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`email` Text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`password` Text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`role` Int( 11 ) NOT NULL DEFAULT 1,
	`hash` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`mobile` BigInt( 255 ) NOT NULL,
	`image_path` Text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`otp` VarChar( 6 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '\'12345\'',
	`is_verified` Int( 11 ) NOT NULL DEFAULT 1,
	`status` Int( 11 ) NOT NULL DEFAULT 1,
	`created_at` DateTime NOT NULL,
	`updated_at` DateTime NOT NULL,
	PRIMARY KEY ( `user_id` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- -------------------------------------------------------------


-- CREATE TABLE "aboutus" --------------------------------------
CREATE TABLE `aboutus`( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`banner_title` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`banner_sub_title` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`title` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`sub_title` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`image_path` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`content` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`status` Int( 11 ) NOT NULL DEFAULT 1,
	`created_at` DateTime NOT NULL,
	`updated_at` DateTime NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 47;
-- -------------------------------------------------------------


-- CREATE TABLE "executive" ------------------------------------
CREATE TABLE `executive`( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`name` Text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`designation` Text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`linkedin_url` Text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`image_path` Text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`status` Int( 11 ) NOT NULL DEFAULT 1,
	`created_at` DateTime NOT NULL,
	`updated_at` DateTime NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- -------------------------------------------------------------


-- CREATE TABLE "session" --------------------------------------
CREATE TABLE `session`( 
	`id` Char( 32 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '\'\'',
	`name` Char( 32 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '\'\'',
	`modified` BigInt( 20 ) NULL DEFAULT NULL,
	`lifetime` BigInt( 20 ) NULL DEFAULT NULL,
	`data` Text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
	PRIMARY KEY ( `id`, `name` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------


-- CREATE TABLE "career" ---------------------------------------
CREATE TABLE `career`( 
	`career_id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`title` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '\'\'',
	`sub_title` VarChar( 500 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '\'\'',
	`image_path` VarChar( 1000 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '\'\'',
	`content` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '\'\'',
	`name` VarChar( 500 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '\'\'',
	`email` VarChar( 500 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '\'\'',
	`mobile` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '\'\'',
	`pdf_path` VarChar( 1000 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '\'\'',
	`type` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`status` Int( 11 ) NOT NULL DEFAULT 1,
	`created_at` DateTime NOT NULL,
	`updated_at` DateTime NOT NULL,
	`address` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
	`age` Int( 255 ) NULL DEFAULT NULL,
	`gender` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
	`years_of_exp` Int( 255 ) NOT NULL DEFAULT 0,
	`ctc` Double( 22, 0 ) NOT NULL DEFAULT 0,
	`ectc` Double( 22, 0 ) NOT NULL DEFAULT 0,
	`notice_period` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
	`order` Double( 10, 0 ) NOT NULL DEFAULT 0,
	PRIMARY KEY ( `career_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 37;
-- -------------------------------------------------------------


-- CREATE TABLE "blog" -----------------------------------------
CREATE TABLE `blog`( 
	`blog_id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`title` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`custom_url` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`content` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`image_path` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`date` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`status` Int( 11 ) NOT NULL DEFAULT 1,
	`created_at` DateTime NOT NULL,
	`updated_at` DateTime NOT NULL,
	PRIMARY KEY ( `blog_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 29;
-- -------------------------------------------------------------


-- CREATE TABLE "ourteam" --------------------------------------
CREATE TABLE `ourteam`( 
	`team_id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`name` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`designation` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`image_path` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`status` Int( 11 ) NOT NULL DEFAULT 1,
	`created_at` DateTime NOT NULL,
	`updated_at` DateTime NOT NULL,
	`order` Int( 255 ) NOT NULL,
	PRIMARY KEY ( `team_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 33;
-- -------------------------------------------------------------


-- CREATE TABLE "statistics" -----------------------------------
CREATE TABLE `statistics`( 
	`id` Int( 255 ) NOT NULL,
	`market_coverage` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`geographical_areas` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`monthly_supply` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`active_clients` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`created_at` DateTime NOT NULL,
	`updated_at` DateTime NOT NULL )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------


-- CREATE TABLE "gallery" --------------------------------------
CREATE TABLE `gallery`( 
	`gallery_id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`image_path` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`status` Int( 11 ) NOT NULL DEFAULT 1,
	`created_at` DateTime NOT NULL,
	`updated_at` DateTime NOT NULL,
	`order` Int( 255 ) NOT NULL,
	PRIMARY KEY ( `gallery_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 37;
-- -------------------------------------------------------------


-- CREATE TABLE "advisor" --------------------------------------
CREATE TABLE `advisor`( 
	`advisor_id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`name` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`designation` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`image_path` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`status` Int( 11 ) NOT NULL DEFAULT 1,
	`created_at` DateTime NOT NULL,
	`updated_at` DateTime NOT NULL,
	`linkedin_url` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
	PRIMARY KEY ( `advisor_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 36;
-- -------------------------------------------------------------


-- CREATE TABLE "service" --------------------------------------
CREATE TABLE `service`( 
	`service_id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`title` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`sub_title` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`content` VarChar( 5000 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '\'\'',
	`image_path` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`type` Int( 255 ) NOT NULL,
	`status` Int( 11 ) NOT NULL DEFAULT 1,
	`created_at` DateTime NOT NULL,
	`updated_at` DateTime NOT NULL,
	PRIMARY KEY ( `service_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 34;
-- -------------------------------------------------------------


-- CREATE TABLE "home" -----------------------------------------
CREATE TABLE `home`( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`title` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`sub_title` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`content` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`image_path` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`type` Int( 255 ) NOT NULL,
	`status` Int( 11 ) NOT NULL DEFAULT 1,
	`created_at` DateTime NOT NULL,
	`updated_at` DateTime NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 65;
-- -------------------------------------------------------------


-- Dump data of "contactus" --------------------------------
BEGIN;

INSERT INTO `contactus`(`contact_id`,`mobile`,`number`,`email`,`address`,`title`,`image_path`,`name`,`subject`,`message`,`type`,`status`,`created_at`,`updated_at`) VALUES 
( '3', '', '', '', '', 'dsad', '1118blogs-single.png', '', '', '', '1', '1', '2020-08-25 16:00:24', '2020-08-25 16:00:24' ),
( '4', '', '', '', '', 'Contact Us', '3095contactus.png', '', '', '', '1', '1', '2020-08-25 16:01:14', '2020-08-25 16:01:14' ),
( '8', '', '', '', '', 'Contact Us', '7258contactus.png', '', '', '', '1', '1', '2020-08-26 16:14:39', '2020-08-26 16:14:39' ),
( '9', '9121222836', '7207824659', 'info@qwipo.com', '<p>D.no. 8-3-897/5/A, Ground Floor, Yellareddyguda,<br/> Nagarjuna Nagar Colony, Hyderabad -500 073, Telangana</p>', '', '', '', '', '', '2', '1', '2020-08-26 16:18:31', '2020-08-26 16:18:31' ),
( '13', '', '', '', '', 'We are happy to help anytime. You just call us. We’ll get you in minutes!', '7258contactus.png', '', '', '', '1', '1', '2020-09-01 19:22:38', '2020-09-01 19:22:38' ),
( '21', '9121222837', '7207824659', 'info@qwipo.com', '<p>D.no. 8-3-897/5/A, Ground Floor, Yellareddyguda,<br/> Nagarjuna Nagar Colony, Hyderabad -500 073, Telangana</p>', '', '', '', '', '', '2', '1', '2020-10-09 09:33:55', '2020-10-09 09:33:55' ),
( '22', '9121222836', '9121222836', 'info@qwipo.com', '<p>D.no. 8-3-897/5/A, Ground Floor, Yellareddyguda,<br/> Nagarjuna Nagar Colony, Hyderabad -500 073, Telangana</p>', '', '', '', '', '', '2', '1', '2020-10-09 09:34:40', '2020-10-09 09:34:40' ),
( '23', '', '', '', '', 'We are happy to help anytime. Call us or submit your query below.  We’ll get you in minutes!', '7258contactus.png', '', '', '', '1', '1', '2020-10-17 13:37:28', '2020-10-17 13:37:28' ),
( '25', '8472124509', '', 'test@gmail.com', '', '', '', 'test', 'test', 'test', '3', '1', '2020-11-27 20:01:15', '2020-11-27 20:01:15' ),
( '26', '9849943736', '', 'trishaagencies@gmail.com', '', '', '', 'samir kumar awasthi  / TRISHA AGENCIES', 'we wanrt to do business with you', 'we are super stokist for rock salt /atta/rawa/suji/besan/maida/jiggery powder/ and ect we want to list  our products in your app please contact us thanks', '3', '1', '2020-11-30 14:26:15', '2020-11-30 14:26:15' ),
( '27', '8464048729', '', 'r.sunilsingh97@gmail.com', '', '', '', 'Rajput Sunil Singh', 'Query', 'Hi 
Qwipo 
Can you please send me the details of your products by which it will help me to know more about your company.', '3', '1', '2020-12-02 09:30:06', '2020-12-02 09:30:06' ),
( '28', '9966677099', '', 'sudheerveerina7@gmail.com', '', '', '', 'Sudheer', 'Very poor response', 'Hi Team, 
I am extremely not happy with  I think there is a gap between customer service team and sales team.', '3', '1', '2020-12-02 15:10:43', '2020-12-02 15:10:43' ),
( '29', '7036128628', '', 'saikiranreddy235@gmail.com', '', '', '', 'R sai kiran reddy', 'Business proposal. We are vegetables wholesale suppliers', 'We were excited to work with you as we are new and enthusiastic. We are wholesale vegetable suppliers from patancheru market. Get in touch Or let us get in touch with you so we can work as collaboration. We will be supplying the fresh vegetables on less prices.', '3', '1', '2020-12-12 09:40:24', '2020-12-12 09:40:24' ),
( '30', '9348123654', '', 'bhaskar_jasti@yahoo.co.in', '', '', '', 'SRI SAI GANAPATHI RICE DEPOT', 'to join in your business partner', 'we want develop our business in support', '3', '1', '2020-12-13 11:37:37', '2020-12-13 11:37:37' ),
( '31', '9849082082', '', 'nraju082@gmail.com', '', '', '', 'Nagaraju Katta', 'APPLYING FOR GOOD POSITION', 'Dear HR, 

I am looking for a good position in your organisation.', '3', '1', '2020-12-19 20:11:12', '2020-12-19 20:11:12' ),
( '32', '9059614647', '', 'nagarajumcse@gmail.com', '', '', '', 'KONDA NAGARAJU', 'Sales job', '1 year experience in Ninjacart', '3', '1', '2020-12-20 04:11:26', '2020-12-20 04:11:26' ),
( '33', '7893583987', '', 'venu8306@gmail.com', '', '', '', 'Venugopal', 'Need executive to download app', 'Hi', '3', '1', '2020-12-25 10:03:35', '2020-12-25 10:03:35' ),
( '34', '9908037560', '', 'mohdyounus980@gmail.com', '', '', '', 'MOHD YOUNUS', 'Delivery issue', 'Delivery issue', '3', '1', '2020-12-28 09:53:36', '2020-12-28 09:53:36' ),
( '35', '9012345678', '', 'test@gmail.com', '', '', '', 'test', 'test', 'test', '3', '1', '2021-02-01 17:21:49', '2021-02-01 17:21:49' ),
( '36', '9012345678', '', 'test@gmail.com', '', '', '', 'test', 'test', 'test', '3', '1', '2021-02-01 17:24:30', '2021-02-01 17:24:30' ),
( '37', '9028123456', '', 'test@gmail.com', '', '', '', 'test', 'test', 'test', '3', '1', '2021-02-02 11:01:44', '2021-02-02 11:01:44' ),
( '38', '9160111483', '', 'soujanyaobylapu@gmail.com', '', '', '', 'soujanya', 'looking for supply of groceries and vegetables', 'Lookinf for supply of vegetables and groceries for a resaturant.', '3', '1', '2021-02-04 13:32:46', '2021-02-04 13:32:46' ),
( '39', '8179515931', '', 'srinivas.malae25@gmail.com', '', '', '', 'Srinivas', 'Unable to login', 'I forgot the login details mail and password I want to recover the old account which was in my old phone and it is been stolen', '3', '1', '2021-02-05 14:04:30', '2021-02-05 14:04:30' ),
( '40', '9652719917', '', 'madhugogikar@9gmail.com', '', '', '', 'madhu', 'alla', 'all over vegetables. onion', '3', '1', '2021-02-19 12:28:24', '2021-02-19 12:28:24' ),
( '41', '9396298967', '', 'rajashekarreddy314@gmail.com', '', '', '', 'Shymala Rajashekar Reddy', 'Waiting for job opportunities in qwipo', 'Imy self Rajashekar Reddy I am searching for job in qwipo b2b', '3', '1', '2021-02-27 09:59:51', '2021-02-27 09:59:51' ),
( '42', '9246183932', '', 'bvbalaji61@gmail.com', '', '', '', 'B.v.balaji', 'Want supplies', 'We are regularly supplying hotels,we require material.contact immediately.', '3', '1', '2021-03-01 22:25:14', '2021-03-01 22:25:14' ),
( '43', '7720074365', '', 'krishnabajaj4@gmail.com', '', '', '', 'Krishna Ganesh Bajaj', 'Regarding job application for Marketing & Operations role', 'https://www.linkedin.com/in/krishna-bajaj-52bb378b/
Above is the link for my LinkedIn profile

15 March 2021
Qwipo
Dear Recruiter,

You had my attention at “Whatever your posting, you will be in the thick of the business, analyzing, reviewing, planning, innovating and implementing policies, as well as working with teams on business projects.” These are the highlights in what makes any professional atmosphere vastly interesting to work in.

It is with great enthusiasm that I apply for the opportunity to work with Your organization. Having always had a great commitment in any role that I have taken up, it gives me confidence in my ability to become a key member of your team.

Since my post graduation, Marketing & Business operations has been a key area among my interests, considering that this field provides a great extent of learning, challenging projects and interaction with a wide variety of stakeholders. A strong passion for excellence, a mind set to make things better and more efficient, while being dedicated to customer satisfaction are the foundations that I offer to you as an individual.

I have also attached my resume which will help you understand the kind of responsibilities that I have taken up previously.
Currently working with Uber as a Sr. Marketing & Business Operations Lead.

I hope that you find my application interesting and I would like to discuss the available opportunities within your company.
Thank you for your time, consideration and forthcoming response.

Yours truly,
Krishna Bajaj
7720074365', '3', '1', '2021-03-15 13:40:29', '2021-03-15 13:40:29' ),
( '44', '7013954426', '', 'kirankumarreddy.meesala@gmail.ocm', '', '', '', 'Kiran Kumar', 'Interested in Distributor  for your Qwipo', 'Dear Sir

We are a distributor located in Kukatpally area.  Please let me know any vacancies of distribution opportunity in any location of Hyderabad', '3', '1', '2021-03-18 21:13:04', '2021-03-18 21:13:04' ),
( '45', '9121222836', '9121222836', 'info@qwipo.com', '<p>2nd Floor,Purva Summit,White Fields,Hitech City,Hyderabad,Telangana, 500081</p>', '', '', '', NULL, NULL, '2', '1', '2021-03-19 22:41:07', '2021-03-19 22:41:07' ),
( '46', '9705258304', '', 'maheshsafeshop99@gmail.com', '', '', '', 'MAHESH', 'business', 'Shop', '3', '1', '2021-03-20 01:37:15', '2021-03-20 01:37:15' ),
( '47', '9121222836', '9121222836', 'info@qwipo.com', '<p>2nd Floor,Purva Summit,White Fields,Hitech City,Hyderabad,Telangana, 500081</p>', '', '', '', NULL, NULL, '2', '1', '2021-03-20 15:12:36', '2021-03-20 15:12:36' ),
( '48', '9966508048', '', 'emgangadharan@gmail.com', '', '', '', 'Gangadhar', 'Complaint', 'Not responding to calls and it\'s been 1 month updated wrong address', '3', '1', '2021-03-20 20:56:48', '2021-03-20 20:56:48' ),
( '49', '9700531003', '', 'kodaru.sunnychowdary@gmail.com', '', '', '', 'Sunilkumar Kodaru', 'I am interested for city head position', 'I am interested for city head position I haven\'t see your email mail for sharing my updated CV for the same so I was writing it here', '3', '1', '2021-03-22 08:47:08', '2021-03-22 08:47:08' ),
( '50', '9121222836', '9121222836', 'info@qwipo.com', '<p>address</p>', '', '', '', NULL, NULL, '2', '1', '2021-03-22 14:22:24', '2021-03-22 14:22:24' ),
( '51', '9121222836', '9121222836', 'info@qwipo.com', '<p>2nd Floor,Purva Summit,White Fields,Hitech City,Hyderabad,Telangana, 500081</p>', '', '', '', NULL, NULL, '2', '1', '2021-03-22 14:22:50', '2021-03-22 14:22:50' ),
( '52', '9989130114', '', 'kvramanarao@gmail.com', '', '', '', 'Ramana Rao', 'About a possible job...', 'I am looking for the position of a tech writer, editor at Hyderabad, or remote. Please give me the mail Id of your recruiter.', '3', '1', '2021-03-25 11:51:02', '2021-03-25 11:51:02' ),
( '53', '8008489444', '', 'mattalatha@gmal.com', '', '', '', 'Srilatha', 'Job openings', 'Hi I am looking for the job openings.', '3', '1', '2021-03-30 12:39:21', '2021-03-30 12:39:21' ),
( '54', '8801993482', '', 'asleshea1411@gmail.com', '', '', '', 'Srinivas Ganti', 'Head -Operations (Hyderabad)', 'Dear HR/TA Mgr
With the annexed resume, I would like to express my strong interest in the position of Head-Operations-Hyderabad you are looking to fill. As a highly skilled and successful professional with comprehensive experience coordinating global supply chain operations, inventories, materials, and procurement while ensuring compliance to regulations and guidelines, I possess a wide range of knowledge and experience that will allow me to contribute toward the success of your company.
My expertise lies in implementing strategic initiatives and projects; overseeing entire gamut of Logistics & Supply Chain processes; and leading diverse staff to maximize productivity, efficiency, and overall business performance. Through my experience, I have become adept in ensuring alignment with organizational goals and requirements while facilitating streamlined logistical operations and building strategic relationships with internal and external stakeholders.
The following highlights of my experience demonstrate my qualification for this position:
•	Spearheading all aspects of supply chain management, including need assessment, procurement / sourcing, inventory management, staff training, and material / supplies forecasting.
•	Contributing vital support to leadership in supply chain and logistics management while identifying and pursuing strategic opportunities to improve materials, internal processes, logistics, and overall performance.
•	Developing and establishing operating policies and procedures, in accordance with organisational regulations, to improve productivity and efficiency while reducing costs.
•	Holding a Masters in Supply Chain Management from CII (IIT-M) as well as Diploma in Material Management.
My proven ability to optimize and lead logistics & supply chain operations, along with my solid talents in communication and problem solving, will contribute immensely to the success of your organization. 
Thank you for your consideration, and I look forward to speaking with you soon.

Sincerely,
Srinivas Ganti
8801993482/8317530782', '3', '1', '2021-03-31 08:27:14', '2021-03-31 08:27:14' ),
( '55', '9000018977', '', 'paanduranga777@gmail.com', '', '', '', 'Panduranga', 'Applying for Operations', 'Looking for Operations job', '3', '1', '2021-03-31 19:38:59', '2021-03-31 19:38:59' ),
( '56', '7799008717', '', 'eatpathllp@gmail.com', '', '', '', 'Furqan', 'Need to order', 'Need to order', '3', '1', '2021-04-02 19:46:49', '2021-04-02 19:46:49' ),
( '57', '9985692250', '', 'aneel.nani1987@gmail.com', '', '', '', 'anil kumar', 'applying for job', 'Respected Madam,
As discussed,
I\'m Anil Kumar, having 11+ years experience in the manager logistics/warehouse.
also experience in operations/auditing/inventory/logistics

Ready to relocate & provide best services in PAN INDIA any of the roles.

Years of experience- 11+
Present salary- 6 Lpa
Notice period- immediately
Job preferred location- PAN India 
Expected salary- as per industry standard

I sincerely request you kindly give me the opportunity.

Thanking you,

Thanks & Regards
Anil Kumar
+91 9985692250', '3', '1', '2021-04-03 13:22:38', '2021-04-03 13:22:38' ),
( '58', '9951708396', '', 'sharathdsc12@gmail.com', '', '', '', 'Sharath Chandra', 'SUpply of Organic Mango', 'HI Sir / Madam,
We have mango farm near hyderabad (70kms from International Airport) we grow organic mango (Daseri, Benisa, Alphonsa varieties), we have approximate 10,000 Mango trees, we are interested to supply our product directly to your esteemed organization, if interested kindly contact us on 9951708396', '3', '1', '2021-04-15 15:47:11', '2021-04-15 15:47:11' ),
( '59', '9666141722', '', 'srinivaskothamasu100@gmail.com', '', '', '', 'K. Srinivas', 'Britaniya  maregold  damege', 'Britaniya mare gold biscuts damage', '3', '1', '2021-04-18 09:45:24', '2021-04-18 09:45:24' ),
( '60', '9505499736', '', 'kan.anju123@gmail.com', '', '', '', 'Anjaneyulu', 'franchise  details', 'please share me franchise details', '3', '1', '2021-04-19 13:38:51', '2021-04-19 13:38:51' ),
( '61', '9502925361', '', 'anand_sudriptarao@rediffmail.com', '', '', '', 'Anand Sudripta Rao', 'Head Of Operations', 'Hello,

Having +30 years of professional experience in "Executive management" with expertise in "Operations, Fleet Management, Logistics,Transport, Warehouse and Distribution, SCM".

​Managed transport​, warehouse and distribution​ operations in India, ​West Africa and East Africa.​

Industries worked in include : Logistics, Freight Forwarding, Cement, Oil & Gas, Plastic Manufacturing.

If given opportunity, your esteemed company can utilize my expertise to manage "Critical Cargo Movement".

Willing to relocate to any part of the world, eager to join a vibrant team.

Notice Period : Immediately available

With warm regards
Anand Sudripta Rao
M.Sc - Geology, Diploma in Gemology, Diamond Grading & Gold Appraising
(M) India +91 9502925361
Skype ID : anand_sudriptarao3
Profile URL : www.linkedIn.com/in/anandsudriptarao', '3', '1', '2021-04-19 15:00:34', '2021-04-19 15:00:34' ),
( '62', '9121222836', '9121222836', 'info@qwipo.com', '<p>2nd Floor,Purva Summit,White Fields,Hitech City,Hyderabad,Telangana, 500081</p>', '', '', '', NULL, NULL, '2', '1', '2021-04-21 09:39:25', '2021-04-21 09:39:25' ),
( '63', '8519915904', '', 'kchary946@gmail.com', '', '', '', 'Praveen chary', 'Tomato requirement', 'Required  tomato one ton let me know the price per kg', '3', '1', '2021-04-27 10:40:16', '2021-04-27 10:40:16' ),
( '64', '9899920695', '', 'poonam@musesmarketing.com', '', '', '', 'Poonam', 'Details of Marketing Head for Qwipo', 'Hi

This. is Poonam from Muses Marketing. We are pioneer in all kind of online and off line marketing and branding. Out Head office is in Gurgaon and we operate pan India mainly South and North.

Request you to pls provide contact details of the person who takes care of advertising and marketing', '3', '1', '2021-04-29 18:11:57', '2021-04-29 18:11:57' ),
( '65', '9686114479', '', 'vinod_raghavan@yahoo.com', '', '', '', 'Vinod', 'Business head', 'With my varied experience we can grow business multiform through various avenues and verticals....Happy to present and join the team of Qwipo.....Please connect me to CEO Best regards, Vinod raghavan', '3', '1', '2021-05-05 09:01:29', '2021-05-05 09:01:29' ),
( '66', '7337289045', '', 'dhanraj.s88@gmail.com', '', '', '', 'Suryavamshi dhanraj', 'Job', 'Hi Qwipo team , 

     My name is Dhanraj and I was trying apply for a job position on ur website however due to some technical issues I am unable to do it , can someone guide me to Human resources team .

Thanks and regards

Dhanraj', '3', '1', '2021-05-05 14:23:09', '2021-05-05 14:23:09' ),
( '67', '9920960076', '', 'rrakesh.thotapally@gmail.com', '', '', '', 'Rakesh Thotapally', 'Purchase Analyst', 'Hello Team,

Please note that I\'m trying to apply for the position of Purchase Analyst, however when I\'m trying to attach my resume I\'m getting an error message stating invalid file, so have sent my resume and error screen shot to email ID: info@qwipo.com, and if this is not the correct email ID then please share me the correct one to send my resume.

Regards,
Rakesh Thotapally.', '3', '1', '2021-05-06 23:14:53', '2021-05-06 23:14:53' ),
( '68', '8187813888', '', 'ram.0438@gmail.com', '', '', '', 'Ram', 'Bulk vegetables', 'We need bulk vegetables for our stores', '3', '1', '2021-05-10 14:36:27', '2021-05-10 14:36:27' ),
( '69', '9989927706', '', 'dbhardwaj20@gmail.com', '', '', '', 'D Bhardwaj', 'Not able to login', 'Hi,
I am not able to login in anaroid app.', '3', '1', '2021-05-12 20:49:35', '2021-05-12 20:49:35' ),
( '70', '9502946070', '', 'ravulagopal006@gmail.com', '', '', '', 'ravula gopal', 'Good', 'Hi', '3', '1', '2021-05-17 16:13:07', '2021-05-17 16:13:07' ),
( '71', '7702338809', '', 'bhagig363@gmail.com', '', '', '', 'Gugloth Bhagya', 'Already I have a account in QWIPO, but I lost my mobile. Please give me suggestions how to get my account', 'Already I have a account in QWIPO, but I lost my mobile. Please give me suggestions how to get my account', '3', '1', '2021-05-17 18:27:25', '2021-05-17 18:27:25' ),
( '72', '9246538808', '', 'basheeribc@yahoo.com', '', '', '', 'm k basheeruddin', 'we r plan started new vegtable shop', 'my name is basheeruddin we run inverter and battery shop name indian battery centre but i think change business so plz kindly proved detils how isvesment and marrgen
from
m k basheeruddin
Tarnaka,
Hyderabad
9246538808,9849329600
id basheeribc@yahoo.com', '3', '1', '2021-05-24 08:45:26', '2021-05-24 08:45:26' ),
( '73', '9515277962', '', 'vannela.sari@gmail.com', '', '', '', 'V Saritha', 'Need to Register', 'I Have canteen & curry  point centers need to buy vegetables online', '3', '1', '2021-05-24 11:20:45', '2021-05-24 11:20:45' ),
( '74', '7306119475', '', 'psuryanarayana10@gmail.com', '', '', '', 'Surya Narayan Panda', 'Join as Delivery Executive', 'I want to join as Delivery Executive. So please suggest me.', '3', '1', '2021-05-27 15:30:16', '2021-05-27 15:30:16' ),
( '75', '9866111549', '', 'sridharbasavaraju29@ymail.com', '', '', '', 'sridhar', 'vegetable', 'we are having vegetables and fruits store we need vegetables and fruits dailly', '3', '1', '2021-06-02 18:48:50', '2021-06-02 18:48:50' ),
( '76', '9949767773', '', 'madhav.kunapareddy@gmail.com', '', '', '', 'Madhav', 'Sugar Traders', 'We supply Sugar at best rates..', '3', '1', '2021-06-04 13:07:18', '2021-06-04 13:07:18' ),
( '77', '9059657944', '', 'peedinisreedhar123@gmail.com', '', '', '', 'sreedhar', 'job', 'sir
iam having experience in b2b fmcg sales presently liam looking job if having any opportunity plz I will ready to serve', '3', '1', '2021-06-04 15:46:34', '2021-06-04 15:46:34' ),
( '78', '8142353444', '', 'knkhetro@gmail.com', '', '', '', 'KNK reddy', 'Wholesale sale rates I. e vegetables and fruits', 'Need fruits and vegetables in whole sale price', '3', '1', '2021-06-06 18:46:24', '2021-06-06 18:46:24' ),
( '79', '9059657944', '', 'peedinisreedhar123@gmail.com', '', '', '', 'sreedhar', 'job sales', 'sir 
iam looking for job iam having experience in b2b company in sales plz contact me my phone no 9059657944', '3', '1', '2021-06-07 17:42:08', '2021-06-07 17:42:08' ),
( '80', '9121222836', '', 'Victor.lee@sourcingware.com', '', '', '', 'Victor', 'Offer sourcing service from China', 'Do you need to purchase any pieces of equipment and materials from China? Please send email to me.', '3', '1', '2021-06-08 11:41:13', '2021-06-08 11:41:13' ),
( '81', '9030000076', '', 'rkinternational.ts@gmail.com', '', '', '', 'AYUSH AGARWAL', 'Alnoori brand - Rice & Basmati Rice', 'Want to list our variety of products Alnoori brand - Rice & Basmati Rice', '3', '1', '2021-06-09 08:24:03', '2021-06-09 08:24:03' ),
( '82', '919381008082', '', 'maheshbabuvelur@gmail.com', '', '', '', 'Mahesh Babu Velur', 'Distribution center at Chennai near Chennai central railway station available for rent', 'Dear Sir/Madam, 

I am writing you this message. To let you know about the warehouse/distribution center of 1600 square foot available for rent in Chennai. 

Location : Choolai P.O, Chennai - 600112
Built up Area : 1600 square foot available at ground floor

Contact : V. Hemachalam 
Phone : +91 9381008082', '3', '1', '2021-06-09 10:19:18', '2021-06-09 10:19:18' ),
( '83', '8008308880', '', 'j.mounica@gmail.com', '', '', '', 'Mounica', 'Need regular supply of fresh fruits and vegetables', 'We want regular supply of fresh fruits and vegetables to our store in mallapur Hyderabad', '3', '1', '2021-06-11 14:43:23', '2021-06-11 14:43:23' ),
( '84', '9392801138', '', 'jashwanthkorlapalligmali@gmail.com', '', '', '', 'KORLAPALLY RAJU', 'Need emergency help', 'Please active wait my qwipo account', '3', '1', '2021-06-11 17:31:45', '2021-06-11 17:31:45' ),
( '85', '9346945160', '', 'ganesh.boomi043@gmail.com', '', '', '', 'Ganesh', 'Need to talk to Qwipo for business', 'I am running a supermarket in gurramguda.
I would like to have business with Qwipo. reach me to the above number for further details.so that we can have a good business.', '3', '1', '2021-06-11 22:16:34', '2021-06-11 22:16:34' ),
( '86', '8317613425', '', 'prakash.divaker@gmail.com', '', '', '', 'Mp divaker', 'Looking for job in logistics', 'Hi sir/madam,
Myself divaker I have experience in logistics for 5 years I was worked for dhl express India pvt Ltd. But in the last pandemic I lost my job and I was looking for a job in logistics at present .
So kindly look into this matter and do the needful.
Thanks & Regards,
M Divaker', '3', '1', '2021-06-14 11:08:38', '2021-06-14 11:08:38' ),
( '87', '8688624736', '', 'brahmateja614@gmail.com', '', '', '', 'Thiriveedhi brahma teja', 'Interested to join in your company', 'Hi there I\'m looking for job change. I have 2+ years experience in F&V and groceries', '3', '1', '2021-06-17 02:02:10', '2021-06-17 02:02:10' ),
( '88', '8125850999', '', 'PARASARAN.MV@GMAIL.COM', '', '', '', 'SARAN', 'PURCHASE / VENDOR OPENINGS', 'Hello Team,

Looking for an opportunity.', '3', '1', '2021-06-18 21:33:55', '2021-06-18 21:33:55' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "user" -------------------------------------
BEGIN;

INSERT INTO `user`(`user_id`,`name`,`email`,`password`,`role`,`hash`,`mobile`,`image_path`,`otp`,`is_verified`,`status`,`created_at`,`updated_at`) VALUES 
( '1', 'qwipo', 'Qwipodm@gmail.com', 'f75b1ab7ed68990cfb28c45a59146c47c209780acddbd4fc2ddb9eab942a4d79+5Kzkwk5q6XlBXqMHZN3t8toYP9AUOtUNnz4NSWnsxg=', '1', 'gyefptzk2e4fwn91oibc2btoc8f8ff3c', '9182200450', '/data/images/3415men--mena-menu-.jpg', '661957', '1', '1', '2019-07-10 13:00:00', '2021-03-20 13:10:56' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "aboutus" ----------------------------------
BEGIN;

INSERT INTO `aboutus`(`id`,`banner_title`,`banner_sub_title`,`title`,`sub_title`,`image_path`,`content`,`status`,`created_at`,`updated_at`) VALUES 
( '1', 'sadgf', 'dgfhgh', 'dsvfdhgh', 'sfgfh', '2069declaration.png', '<p>msbshdhfhshhd</p>', '1', '2020-08-20 21:00:14', '2020-08-20 21:00:14' ),
( '2', 'sadgf', 'dgfhgh', 'dsvfdhgh', 'sfgfh', '4975', '<p>msbshdhfhshhd</p>', '1', '2020-08-20 21:10:58', '2020-08-20 21:10:58' ),
( '3', 'sadgf', 'dgfhgh', 'dsvfdhgh', 'sfgfh', '1025declaration.png', '<p>msbshdhfhshhd</p>', '1', '2020-08-20 21:14:05', '2020-08-20 21:14:05' ),
( '4', 'sadgf', 'dgfhgh', 'dsvfdhgh', 'sfgfh', '', '<p>msbshdhfhshhd</p>', '1', '2020-08-20 21:14:16', '2020-08-20 21:14:16' ),
( '5', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'dsvfdhgh', 'sfgfh', '3753aboutus-img.png', '<div class="raleway-semibold color-000 services-heading mb-2">About Us</div>
<div class="raleway-semibold color-666 services-caption">More than 200 delivery and satisfied customers</div>
<div class="my-3 color-000">
<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
<p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</p>
</div>', '1', '2020-08-24 12:08:18', '2020-08-24 12:08:18' ),
( '6', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'About Us', 'More than 200 delivery and satisfied customers', '', '<div class="raleway-semibold color-666 services-caption">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</div>
<div class="my-3 color-000">
<p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</p>
</div>', '1', '2020-08-24 12:09:14', '2020-08-24 12:09:14' ),
( '7', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'About Us', 'More than 200 delivery and satisfied customers', '1819aboutus-img.png', '<div class="raleway-semibold color-666 services-caption">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</div>
<div class="my-3 color-000">
<p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</p>
</div>', '1', '2020-08-24 12:09:29', '2020-08-24 12:09:29' ),
( '8', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'About Us', 'More than 200 delivery and satisfied customers', '8487aboutus-img.png', '<div class="raleway-semibold color-666 services-caption">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</div>', '1', '2020-08-24 15:58:43', '2020-08-24 15:58:43' ),
( '9', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'About Us', 'More than 200 delivery and satisfied customers', '8146Scan1 - Copy.jpg', '<div class="raleway-semibold color-666 services-caption">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</div>', '1', '2020-08-24 19:06:07', '2020-08-24 19:06:07' ),
( '10', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'About Us', 'More than 200 delivery and satisfied customers', '6762aboutus-img.png', '<div class="raleway-semibold color-666 services-caption">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</div>', '1', '2020-08-24 20:19:02', '2020-08-24 20:19:02' ),
( '11', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'About Us', 'More than 200 delivery and satisfied customers', '', '<div class="raleway-semibold color-666 services-caption">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</div>', '1', '2020-08-25 12:48:16', '2020-08-25 12:48:16' ),
( '12', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'About Us', 'More than 200 delivery and satisfied customers', '3158aboutus-img.png', '<div class="raleway-semibold color-666 services-caption">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</div>', '1', '2020-08-25 12:50:58', '2020-08-25 12:50:58' ),
( '13', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'About Us', 'More than 200 delivery and satisfied customers', '', '<div class="raleway-semibold color-666 services-caption">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</div>', '1', '2020-08-25 12:51:20', '2020-08-25 12:51:20' ),
( '14', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'About Us', 'More than 200 delivery and satisfied customers', '', '<div class="raleway-semibold color-666 services-caption">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</div>', '1', '2020-08-25 12:56:41', '2020-08-25 12:56:41' ),
( '15', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'About Us', 'More than 200 delivery and satisfied customers', '8244aboutus-img.png', '<div class="raleway-semibold color-666 services-caption">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</div>', '1', '2020-08-25 12:57:23', '2020-08-25 12:57:23' ),
( '16', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'About Us', 'More than 200 delivery and satisfied customers', '', '<div class="raleway-semibold color-666 services-caption">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</div>', '1', '2020-08-25 12:58:06', '2020-08-25 12:58:06' ),
( '17', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'About Us', 'More than 200 delivery and satisfied customers', '9868aboutus-img.png', '<div class="raleway-semibold color-666 services-caption">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</div>', '1', '2020-08-25 12:59:28', '2020-08-25 12:59:28' ),
( '18', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'About Us', 'More than 200 delivery and satisfied customers', '9868aboutus-img.png', '<div class="raleway-semibold color-666 services-caption">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</div>', '1', '2020-08-25 13:08:14', '2020-08-25 13:08:14' ),
( '19', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'About Us', 'More than 200 delivery and satisfied customers', '9868aboutus-img.png', '<div class="raleway-semibold color-666 services-caption">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</div>', '1', '2020-08-25 13:09:09', '2020-08-25 13:09:09' ),
( '20', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'About Us', 'More than 200 delivery and satisfied customers', '610aboutus-img.png', '<div class="raleway-semibold color-666 services-caption">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</div>', '1', '2020-08-26 15:55:50', '2020-08-26 15:55:50' ),
( '21', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'About Us', 'More than 200 delivery and satisfied customers', '610aboutus-img.png', '<div class="raleway-semibold color-666 services-caption">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</div>', '1', '2020-08-26 15:56:14', '2020-08-26 15:56:14' ),
( '22', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'About Us', 'More than 200 delivery and satisfied customers', '610aboutus-img.png', '<div class="raleway-semibold color-666 services-caption">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</div>', '1', '2020-08-27 15:25:48', '2020-08-27 15:25:48' ),
( '23', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', 'About Us', 'More than 200 delivery and satisfied customers', '3752banners.jpg', '<div class="raleway-semibold color-666 services-caption">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more including versions of Lorem Ipsum.</div>', '1', '2020-08-27 15:31:54', '2020-08-27 15:31:54' ),
( '24', 'Qwipo For Quick &  Quality Food Suppliers For B2B markets!', 'Qwipo is a highly-valued brand for supplying farm-fresh vegetables and groceries for B2B sectors especially HORECA (Hotels, Restaurants, Cafes) and also to the Hospitals, Kirana stores, Catering services, and Wholesalers. Our supply chain starts directly from the farm and ends at businesses’ doorstep without middle players.', 'About Us', 'Qwipo For Quick &  Quality Food Suppliers For B2B markets!', '7684about-banner.png', '<div class="raleway-semibold color-666 services-caption">
<p class="western" align="justify"><span style="font-family: David Libre, serif;">Qwipo is a highly-valued brand for supplying farm-fresh vegetables and groceries for B2B sectors especially HORECA (Hotels, Restaurants, Cafes) and also to the Hospitals, Kirana stores, Catering services, and Wholesalers. Our supply chain starts directly from the farm and ends at businesses&rsquo; doorstep without middle players.</span></p>
</div>', '1', '2020-09-01 18:48:21', '2020-09-01 18:48:21' ),
( '25', 'We Ensure Quality and Freshness!', 'Vegetables and Groceries are procured directly from the farm. Enjoy the best of both worlds – Quality and Freshness!', 'About Us', 'Qwipo For Quick &  Quality Food Suppliers For B2B markets!', '7684about-banner.png', '<div class="raleway-semibold color-666 services-caption">
<p class="western" align="justify"><span style="font-family: David Libre, serif;">Qwipo is a highly-valued brand for supplying farm-fresh vegetables and groceries for B2B sectors especially HORECA (Hotels, Restaurants, Cafes) and also to the Hospitals, Kirana stores, Catering services, and Wholesalers. Our supply chain starts directly from the farm and ends at businesses&rsquo; doorstep without middle players.</span></p>
</div>', '1', '2020-09-01 18:50:51', '2020-09-01 18:50:51' ),
( '26', 'Qwipo For Quick &  Quality Food Suppliers For B2B markets!', 'Qwipo is a highly-valued brand for supplying farm-fresh vegetables and groceries for B2B sectors especially HORECA (Hotels, Restaurants, Cafes) and also to the Hospitals, Kirana stores, Catering services, and Wholesalers. Our supply chain starts directly from the farm and ends at businesses’ doorstep without middle players.', 'About Us', 'Qwipo For Quick &  Quality Food Suppliers For B2B markets!', '7684about-banner.png', '<p class="western" align="justify"><span style="font-family: David Libre, serif;">We are a one-stop destination for A-Z veggies and groceries. Launched by ambitious entrepreneurs, Qwipo has gained a stellar reputation for unparalleled intelligence across the food supply chain in providing daily essentials. And it has made its mark in the niche industry in no time.</span></p>
<p class="western" align="justify">&nbsp;</p>
<p class="western" align="justify"><span style="font-family: \'David Libre\', serif;">HORECA sector is the prime target customer of Qwipo. HORECA stands for Hotels, Restaurants, and Cafes that need a bulk amount of vegetables and groceries on a daily basis. Also, it offers its services to Kirana Stores, Wholesalers, and Caterers.</span></p>
<p class="western" align="justify">&nbsp;</p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">We know &lsquo;On-time delivery without compromising on Quality and Freshness&rsquo; is what most of these sectors want. Accordingly, the team at Qwipo works hand-in-hand with farmers and prime suppliers to supply the same.</span></p>
<p class="western" align="justify">&nbsp;</p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">We have tie-ups with reputed prime suppliers and farmers. Our experienced</span> <span style="font-family: David Libre, serif;">cross-functional teams embrace new era technologies to provide seamless end-to-end connectivity. Moreover, we make sure we serve everyone on time.</span></p>
<p class="western" align="justify">&nbsp;</p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">Since our inception, we have served 4000+ customers and supplied more than 12,000 tonnes of vegetables and groceries. </span></p>', '1', '2020-09-01 19:00:42', '2020-09-01 19:00:42' ),
( '27', 'Qwipo For Quick &  Quality Food Suppliers For B2B markets!', 'Qwipo is a highly-valued brand for supplying farm-fresh vegetables and groceries for B2B sectors especially HORECA (Hotels, Restaurants, Cafes) and also to the Hospitals, Kirana stores, Catering services, and Wholesalers. Our supply chain starts directly from the farm and ends at businesses’ doorstep without middle players.', 'About Us', 'Qwipo For Quick &  Quality Food Suppliers For B2B markets!', '7684about-banner.png', '<p class="western" align="justify"><span style="font-family: David Libre, serif;">We are a one-stop destination for A-Z veggies and groceries. Launched by ambitious entrepreneurs, Qwipo has gained a stellar reputation for unparalleled intelligence across the food supply chain in providing daily essentials. And it has made its mark in the niche industry in no time.</span></p>
<p class="western" align="justify"><span style="font-family: \'David Libre\', serif;">HORECA sector is the prime target customer of Qwipo. HORECA stands for Hotels, Restaurants, and Cafes that need a bulk amount of vegetables and groceries on a daily basis. Also, it offers its services to Kirana Stores, Wholesalers, and Caterers.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">We know &lsquo;On-time delivery without compromising on Quality and Freshness&rsquo; is what most of these sectors want. Accordingly, the team at Qwipo works hand-in-hand with farmers and prime suppliers to supply the same.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">We have tie-ups with reputed prime suppliers and farmers. Our experienced</span> <span style="font-family: David Libre, serif;">cross-functional teams embrace new era technologies to provide seamless end-to-end connectivity. Moreover, we make sure we serve everyone on time.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">Since our inception, we have served 4000+ customers and supplied more than 12,000 tonnes of vegetables and groceries. </span></p>', '1', '2020-09-01 19:02:12', '2020-09-01 19:02:12' ),
( '28', 'Qwipo For Quick &  Quality Food Suppliers For B2B markets!', 'Qwipo is a highly-valued brand for supplying farm-fresh vegetables and groceries for B2B sectors especially HORECA (Hotels, Restaurants, Cafes) and also to the Hospitals, Kirana stores, Catering services, and Wholesalers. Our supply chain starts directly from the farm and ends at businesses’ doorstep without middle players.', 'About Us', 'Qwipo For Quick &  Quality Food Suppliers For B2B markets!', '1435aboutus-img.png', '<p class="western" align="justify"><span style="font-family: David Libre, serif;">We are a one-stop destination for A-Z veggies and groceries. Launched by ambitious entrepreneurs, Qwipo has gained a stellar reputation for unparalleled intelligence across the food supply chain in providing daily essentials. And it has made its mark in the niche industry in no time.</span></p>
<p class="western" align="justify"><span style="font-family: \'David Libre\', serif;">HORECA sector is the prime target customer of Qwipo. HORECA stands for Hotels, Restaurants, and Cafes that need a bulk amount of vegetables and groceries on a daily basis. Also, it offers its services to Kirana Stores, Wholesalers, and Caterers.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">We know &lsquo;On-time delivery without compromising on Quality and Freshness&rsquo; is what most of these sectors want. Accordingly, the team at Qwipo works hand-in-hand with farmers and prime suppliers to supply the same.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">We have tie-ups with reputed prime suppliers and farmers. Our experienced</span> <span style="font-family: David Libre, serif;">cross-functional teams embrace new era technologies to provide seamless end-to-end connectivity. Moreover, we make sure we serve everyone on time.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">Since our inception, we have served 4000+ customers and supplied more than 12,000 tonnes of vegetables and groceries. </span></p>', '1', '2020-09-01 19:29:17', '2020-09-01 19:29:17' ),
( '29', 'Qwipo For Quick &  Quality Food Suppliers For B2B markets!', 'Qwipo is a highly-valued brand for supplying farm-fresh vegetables and groceries for B2B sectors especially HORECA (Hotels, Restaurants, Cafes) and also to the Hospitals, Kirana stores, Catering services, and Wholesalers. Our supply chain starts directly from the farm and ends at businesses’ doorstep without middle players.', 'About Us', 'Qwipo For Quick &  Quality Food Suppliers For B2B markets!', '1435aboutus-img.png', '<p class="western" align="justify"><span style="font-family: David Libre, serif;">We are a one-stop destination for A-Z veggies and groceries. Launched by ambitious entrepreneurs, Qwipo has gained a stellar reputation for unparalleled intelligence across the food supply chain in providing daily essentials. And it has made its mark in the niche industry in no time.</span></p>
<p class="western" align="justify"><span style="font-family: \'David Libre\', serif;">HORECA sector is the prime target customer of Qwipo. HORECA stands for Hotels, Restaurants, and Cafes that need a bulk amount of vegetables and groceries on a daily basis. Also, it offers its services to Kirana Stores, Wholesalers, and Caterers.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">We know &lsquo;On-time delivery without compromising on Quality and Freshness&rsquo; is what most of these sectors want. Accordingly, the team at Qwipo works hand-in-hand with farmers and prime suppliers to supply the same.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">We have tie-ups with reputed prime suppliers and farmers. Our experienced</span> <span style="font-family: David Libre, serif;">cross-functional teams embrace new era technologies to provide seamless end-to-end connectivity. Moreover, we make sure we serve everyone on time.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">Since our inception, we have served 4000+ customers and supplied more than 12,000 tonnes of vegetables and groceries. Qwipo</span></p>', '1', '2020-09-30 14:11:29', '2020-09-30 14:11:29' ),
( '30', 'Qwipo For Quick &  Quality Food Suppliers For B2B markets!', 'Qwipo is a highly-valued brand for supplying farm-fresh vegetables and groceries for B2B sectors especially HORECA (Hotels, Restaurants, Cafes) and also to the Hospitals, Kirana stores, Catering services, and Wholesalers. Our supply chain starts directly from the farm and ends at businesses’ doorstep without middle players.', 'About Us', 'Qwipo For Quick &  Quality Food Suppliers For B2B markets!', '1435aboutus-img.png', '<p class="western" align="justify"><span style="font-family: David Libre, serif;">We are a one-stop destination for A-Z veggies and groceries. Launched by ambitious entrepreneurs, Qwipo has gained a stellar reputation for unparalleled intelligence across the food supply chain in providing daily essentials. And it has made its mark in the niche industry in no time.</span></p>
<p class="western" align="justify"><span style="font-family: \'David Libre\', serif;">HORECA sector is the prime target customer of Qwipo. HORECA stands for Hotels, Restaurants, and Cafes that need a bulk amount of vegetables and groceries on a daily basis. Also, it offers its services to Kirana Stores, Wholesalers, and Caterers.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">We know &lsquo;On-time delivery without compromising on Quality and Freshness&rsquo; is what most of these sectors want. Accordingly, the team at Qwipo works hand-in-hand with farmers and prime suppliers to supply the same.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">We have tie-ups with reputed prime suppliers and farmers. Our experienced</span> <span style="font-family: David Libre, serif;">cross-functional teams embrace new era technologies to provide seamless end-to-end connectivity. Moreover, we make sure we serve everyone on time.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">Since our inception, we have served 4000+ customers and supplied more than 12,000 tonnes of vegetables and groceries.&nbsp;</span></p>', '1', '2020-09-30 14:11:59', '2020-09-30 14:11:59' ),
( '31', 'Qwipo For Quick &  Quality Food Suppliers For B2B markets!', 'Qwipo is a highly-valued brand for supplying farm-fresh vegetables and groceries for B2B sectors especially HORECA (Hotels, Restaurants, Cafes) and also to the Hospitals, Kirana stores, Catering services, and Wholesalers. Our supply chain starts directly from the farm and ends at businesses’ doorstep without middle players.', 'About Us', 'Qwipo For Quick &  Quality Food Suppliers For B2B markets!', '1435aboutus-img.png', '<p class="western" align="justify"><span style="font-family: David Libre, serif;">We are a one-stop destination for A-Z veggies and groceries. Launched by ambitious entrepreneurs, Qwipo has gained a stellar reputation for unparalleled intelligence across the food supply chain in providing daily essentials. And it has made its mark in the niche industry in no time.</span></p>
<p class="western" align="justify"><span style="font-family: \'David Libre\', serif;">HORECA sector is the prime target customer of Qwipo. HORECA stands for Hotels, Restaurants, and Cafes that need a bulk amount of vegetables and groceries on a daily basis. Also, it offers its services to Kirana Stores, Wholesalers, and Caterers.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">We know &lsquo;On-time delivery without compromising on Quality and Freshness&rsquo; is what most of these sectors want. Accordingly, the team at Qwipo works hand-in-hand with farmers and prime suppliers to supply the same.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">We have tie-ups with reputed prime suppliers and farmers. Our experienced</span> <span style="font-family: David Libre, serif;">cross-functional teams embrace new era technologies to provide seamless end-to-end connectivity. Moreover, we make sure we serve everyone on time.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">Since our inception, we have served 4000+ customers and supplied more than 12,000 tonnes of vegetables and groceries and Horeca Products.&nbsp;</span></p>', '1', '2020-10-08 10:03:02', '2020-10-08 10:03:02' ),
( '32', 'Qwipo For Quick &  Quality Food Suppliers For B2B markets!', 'Qwipo is a highly-valued brand for supplying farm-fresh vegetables and groceries for B2B sectors especially HORECA (Hotels, Restaurants, Cafes) and also to the Hospitals, Kirana stores, Catering services, and Wholesalers. Our supply chain starts directly from the farm and ends at businesses’ doorstep without middle players.', 'About Us', 'Qwipo For Quick &  Quality Food Suppliers For B2B markets!', '1435aboutus-img.png', '<p class="western" align="justify"><span style="font-family: David Libre, serif;">We are a one-stop destination for A-Z veggies and groceries. Launched by ambitious entrepreneurs, Qwipo has gained a stellar reputation for unparalleled intelligence across the food supply chain in providing daily essentials. And it has made its mark in the niche industry in no time.</span></p>
<p class="western" align="justify"><span style="font-family: \'David Libre\', serif;">HORECA sector is the prime target customer of Qwipo. HORECA stands for Hotels, Restaurants, and Cafes that need a bulk amount of vegetables and groceries on a daily basis. Also, it offers its services to Kirana Stores, Wholesalers, and Caterers.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">We know &lsquo;On-time delivery without compromising on Quality and Freshness&rsquo; is what most of these sectors want. Accordingly, the team at Qwipo works hand-in-hand with farmers and prime suppliers to supply the same.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">We have tie-ups with reputed prime suppliers and farmers. Our experienced</span> <span style="font-family: David Libre, serif;">cross-functional teams embrace new era technologies to provide seamless end-to-end connectivity. Moreover, we make sure we serve everyone on time.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">Since our inception, we have served 4000+ customers and supplied more than 12,000 tonnes of vegetables and groceries.&nbsp;</span></p>', '1', '2020-10-08 10:03:37', '2020-10-08 10:03:37' ),
( '33', 'Daily Food Essentials for B2B Markets direct from prime suppliers.', 'One stop destination for Vegetables and Groceries for Retail, HORECA and Enterprises. Direct procurement from Prime suppliers. Backed by technology, intelligence applied across the food supply chain minimizing the costs making it lean and thus providing tremendous value to both business clients and prime suppliers.', 'About Us', 'Qwipo For Quick &  Quality Food Suppliers For B2B markets!', '1435aboutus-img.png', '<p class="western" align="justify"><span style="font-family: David Libre, serif;">We are a one-stop destination for A-Z veggies and groceries. Launched by ambitious entrepreneurs, Qwipo has gained a stellar reputation for unparalleled intelligence across the food supply chain in providing daily essentials. And it has made its mark in the niche industry in no time.</span></p>
<p class="western" align="justify"><span style="font-family: \'David Libre\', serif;">HORECA sector is the prime target customer of Qwipo. HORECA stands for Hotels, Restaurants, and Cafes that need a bulk amount of vegetables and groceries on a daily basis. Also, it offers its services to Kirana Stores, Wholesalers, and Caterers.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">We know &lsquo;On-time delivery without compromising on Quality and Freshness&rsquo; is what most of these sectors want. Accordingly, the team at Qwipo works hand-in-hand with farmers and prime suppliers to supply the same.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">We have tie-ups with reputed prime suppliers and farmers. Our experienced</span> <span style="font-family: David Libre, serif;">cross-functional teams embrace new era technologies to provide seamless end-to-end connectivity. Moreover, we make sure we serve everyone on time.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">Since our inception, we have served 4000+ customers and supplied more than 12,000 tonnes of vegetables and groceries.&nbsp;</span></p>', '1', '2020-10-13 13:48:07', '2020-10-13 13:48:07' ),
( '34', 'Daily Food Essentials for B2B Markets direct from prime suppliers.', 'One stop destination for Vegetables and Groceries for Retail, HORECA and Enterprises. Direct procurement from Prime suppliers. Backed by technology, intelligence applied across the food supply chain minimizing the costs making it lean and thus providing tremendous value to both business clients and prime suppliers.', 'About Us', 'Daily Food Essentials for B2B Markets direct from prime suppliers.', '1435aboutus-img.png', '<p class="western" align="justify">One stop destination for Vegetables and Groceries for Retail, HORECA and Enterprises. Direct procurement from Prime suppliers. Backed by technology, intelligence applied across the food supply chain minimizing the costs making it lean and thus providing tremendous value to both business clients and prime suppliers.</p>
<p class="western" align="justify"><span style="font-family: \'David Libre\', serif;">HORECA sector is the prime target customer of Qwipo. HORECA stands for Hotels, Restaurants, and Cafes that need a bulk amount of vegetables and groceries on a daily basis. Also, it offers its services to Kirana Stores, Wholesalers, and Caterers.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">We know &lsquo;On-time delivery without compromising on Quality and Freshness&rsquo; is what most of these sectors want. Accordingly, the team at Qwipo works hand-in-hand with farmers and prime suppliers to supply the same.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">We have tie-ups with reputed prime suppliers and farmers. Our experienced</span> <span style="font-family: David Libre, serif;">cross-functional teams embrace new era technologies to provide seamless end-to-end connectivity. Moreover, we make sure we serve everyone on time.</span></p>
<p class="western" align="justify"><span style="font-family: David Libre, serif;">Since our inception, we have served 4000+ customers and supplied more than 12,000 tonnes of vegetables and groceries.&nbsp;</span></p>', '1', '2020-10-13 13:54:51', '2020-10-13 13:54:51' ),
( '35', 'Daily Food Essentials for B2B Markets direct from prime suppliers.', 'One stop destination for Vegetables and Groceries for Retail, HORECA and Enterprises. Direct procurement from Prime suppliers. Backed by technology, intelligence applied across the food supply chain minimizing the costs making it lean and thus providing tremendous value to both business clients and prime suppliers.', 'About Us', 'Daily Food Essentials for B2B Markets direct from prime suppliers.', '1435aboutus-img.png', '<p class="western" align="justify">One stop destination for Vegetables and Groceries for Retail, HORECA and Enterprises. Direct procurement from Prime suppliers. Backed by technology, intelligence applied across the food supply chain minimizing the costs making it lean and thus providing tremendous value to both business clients and prime suppliers.</p>
<p align="justify"><span style="font-size: small;">Urbanization is inevitable and the need for consumption of healthy food becomes imperative. The food we choose makes all the difference for a healthy living and promising future. To keep up ourselves with the speed of modernization and to stay relevant we need to &ldquo;EAT GLOBAL and LIVE LOCAL&rdquo;.</span></p>
<p align="justify"><span style="font-size: small;"><strong>M.S. Swaminathan quotes&rdquo; If the Food system fails, everything will fail&rdquo;. </strong></span></p>
<p align="justify"><span style="font-size: small;">Drawing the inspiration from the father of India&rsquo;s green revolution, Qwipo is committed to focusing on the food system; how/where we procure, collect, store, transport, transform and ensure access to foods. We aim to promote better diets and improve our health and reduce carbon emissions. </span></p>
<p align="justify"><span style="font-size: small;">We are a One-stop-shop for Vegetables and Groceries for Retail, HORECA (Hotels, Restaurants, Cafes), and Enterprises and are specialized in procuring fresh and superior quality commodities directly from the farming communities and from prime food suppliers. Backed by technology and intelligence applied across the food supply chain, we weave the missing links minimizing the costs making the value chain lean, and thereby providing tremendous value to both business clients and prime suppliers</span><span style="color: #ff0000;"><span style="font-size: small;">. </span></span></p>
<p align="justify"><span style="font-size: small;">Customers&rsquo; satisfaction is at the heart of our daily concerns at Qwipo. The key to the longevity of produces is the freshness, our operational team makes it a point to supply the best products, prepare orders, and deliver our customers with minimum lead time. </span></p>
<p><span style="font-size: small;">We strive to ensure the farming community and purveyors get better prices and consistent demand, and on the other end, retailers receive fresh produce at competitive prices that are delivered to their doorstep. We have taken the digital route transforming the food systems and are fully committed to the Digital India Agriculture initiatives improving </span></p>', '1', '2020-10-14 21:29:19', '2020-10-14 21:29:19' ),
( '36', 'Daily Food Essentials for B2B Markets direct from prime suppliers.', 'One stop destination for Vegetables and Groceries for Retail, HORECA and Enterprises. Direct procurement from Prime suppliers. Backed by technology, intelligence applied across the food supply chain minimizing the costs making it lean and thus providing tremendous value to both business clients and prime suppliers.', 'About Us', 'Daily Food Essentials for B2B Markets direct from prime suppliers.', '1435aboutus-img.png', '<p class="western" align="justify">One stop destination for Vegetables and Groceries for Retail, HORECA and Enterprises. Direct procurement from Prime suppliers. Backed by technology, intelligence applied across the food supply chain minimizing the costs making it lean and thus providing tremendous value to both business clients and prime suppliers.</p>
<p align="justify"><span style="font-size: small;">Urbanization is inevitable and the need for consumption of healthy food becomes imperative. The food we choose makes all the difference for a healthy living and promising future. To keep up ourselves with the speed of modernization and to stay relevant we need to &ldquo;EAT GLOBAL and LIVE LOCAL&rdquo;.</span></p>
<p align="justify"><span style="font-size: small;"><strong>M.S. Swaminathan quotes&rdquo; If the Food system fails, everything will fail&rdquo;. </strong></span></p>
<p align="justify"><span style="font-size: small;">Drawing the inspiration from the father of India&rsquo;s green revolution, Qwipo is committed to focusing on the food system; how/where we procure, collect, store, transport, transform and ensure access to foods. We aim to promote better diets and improve our health and reduce carbon emissions. </span></p>
<p align="justify"><span style="font-size: small;">We are a One-stop-shop for Vegetables and Groceries for Retail, HORECA (Hotels, Restaurants, Cafes), and Enterprises and are specialized in procuring fresh and superior quality commodities directly from the farming communities and from prime food suppliers. Backed by technology and intelligence applied across the food supply chain, we weave the missing links minimizing the costs making the value chain lean, and thereby providing tremendous value to both business clients and prime suppliers</span><span style="color: #ff0000;"><span style="font-size: small;">. </span></span></p>
<p align="justify"><span style="font-size: small;">Customers&rsquo; satisfaction is at the heart of our daily concerns at Qwipo. The key to the longevity of produces is the freshness, our operational team makes it a point to supply the best products, prepare orders, and deliver our customers with minimum lead time. </span></p>
<p><span style="font-size: small;">We strive to ensure the farming community and purveyors get better prices and consistent demand, and on the other end, retailers receive fresh produce at competitive prices that are delivered to their doorstep. We have taken the digital route transforming the food systems and are fully committed to the Digital India Agriculture initiatives improving </span></p>', '1', '2020-10-14 21:30:43', '2020-10-14 21:30:43' ),
( '37', 'Daily Food Essentials for B2B Markets direct from prime suppliers.', 'One stop destination for Vegetables and Groceries', 'About Us', 'Daily Food Essentials for B2B Markets direct from prime suppliers.', '1435aboutus-img.png', '<p class="western" align="justify">One stop destination for Vegetables and Groceries for Retail, HORECA and Enterprises. Direct procurement from Prime suppliers. Backed by technology, intelligence applied across the food supply chain minimizing the costs making it lean and thus providing tremendous value to both business clients and prime suppliers.</p>
<p align="justify"><span style="font-size: small;">Urbanization is inevitable and the need for consumption of healthy food becomes imperative. The food we choose makes all the difference for a healthy living and promising future. To keep up ourselves with the speed of modernization and to stay relevant we need to &ldquo;EAT GLOBAL and LIVE LOCAL&rdquo;.</span></p>
<p align="justify"><span style="font-size: small;"><strong>M.S. Swaminathan quotes&rdquo; If the Food system fails, everything will fail&rdquo;. </strong></span></p>
<p align="justify"><span style="font-size: small;">Drawing the inspiration from the father of India&rsquo;s green revolution, Qwipo is committed to focusing on the food system; how/where we procure, collect, store, transport, transform and ensure access to foods. We aim to promote better diets and improve our health and reduce carbon emissions. </span></p>
<p align="justify"><span style="font-size: small;">We are a One-stop-shop for Vegetables and Groceries for Retail, HORECA (Hotels, Restaurants, Cafes), and Enterprises and are specialized in procuring fresh and superior quality commodities directly from the farming communities and from prime food suppliers. Backed by technology and intelligence applied across the food supply chain, we weave the missing links minimizing the costs making the value chain lean, and thereby providing tremendous value to both business clients and prime suppliers</span><span style="color: #ff0000;"><span style="font-size: small;">. </span></span></p>
<p align="justify"><span style="font-size: small;">Customers&rsquo; satisfaction is at the heart of our daily concerns at Qwipo. The key to the longevity of produces is the freshness, our operational team makes it a point to supply the best products, prepare orders, and deliver our customers with minimum lead time. </span></p>
<p><span style="font-size: small;">We strive to ensure the farming community and purveyors get better prices and consistent demand, and on the other end, retailers receive fresh produce at competitive prices that are delivered to their doorstep. We have taken the digital route transforming the food systems and are fully committed to the Digital India Agriculture initiatives improving </span></p>', '1', '2020-11-26 17:24:30', '2020-11-26 17:24:30' ),
( '38', 'Daily Food Essentials for B2B Markets direct from prime suppliers.', 'One stop destination for Vegetables and Groceries for Retail, HORECA and Enterprises', 'About Us', 'Daily Food Essentials for B2B Markets direct from prime suppliers.', '1435aboutus-img.png', '<p class="western" align="justify">One stop destination for Vegetables and Groceries for Retail, HORECA and Enterprises. Direct procurement from Prime suppliers. Backed by technology, intelligence applied across the food supply chain minimizing the costs making it lean and thus providing tremendous value to both business clients and prime suppliers.</p>
<p align="justify"><span style="font-size: small;">Urbanization is inevitable and the need for consumption of healthy food becomes imperative. The food we choose makes all the difference for a healthy living and promising future. To keep up ourselves with the speed of modernization and to stay relevant we need to &ldquo;EAT GLOBAL and LIVE LOCAL&rdquo;.</span></p>
<p align="justify"><span style="font-size: small;"><strong>M.S. Swaminathan quotes&rdquo; If the Food system fails, everything will fail&rdquo;. </strong></span></p>
<p align="justify"><span style="font-size: small;">Drawing the inspiration from the father of India&rsquo;s green revolution, Qwipo is committed to focusing on the food system; how/where we procure, collect, store, transport, transform and ensure access to foods. We aim to promote better diets and improve our health and reduce carbon emissions. </span></p>
<p align="justify"><span style="font-size: small;">We are a One-stop-shop for Vegetables and Groceries for Retail, HORECA (Hotels, Restaurants, Cafes), and Enterprises and are specialized in procuring fresh and superior quality commodities directly from the farming communities and from prime food suppliers. Backed by technology and intelligence applied across the food supply chain, we weave the missing links minimizing the costs making the value chain lean, and thereby providing tremendous value to both business clients and prime suppliers</span><span style="color: #ff0000;"><span style="font-size: small;">. </span></span></p>
<p align="justify"><span style="font-size: small;">Customers&rsquo; satisfaction is at the heart of our daily concerns at Qwipo. The key to the longevity of produces is the freshness, our operational team makes it a point to supply the best products, prepare orders, and deliver our customers with minimum lead time. </span></p>
<p><span style="font-size: small;">We strive to ensure the farming community and purveyors get better prices and consistent demand, and on the other end, retailers receive fresh produce at competitive prices that are delivered to their doorstep. We have taken the digital route transforming the food systems and are fully committed to the Digital India Agriculture initiatives improving </span></p>', '1', '2020-11-26 17:25:12', '2020-11-26 17:25:12' ),
( '39', 'Daily Food Essentials for B2B Markets direct from prime suppliers.', 'One stop destination for Vegetables and Groceries for Retail, HORECA and Enterprises', 'About Us', 'One stop destination for Vegetables and Groceries for Retail, HORECA and Enterprises. Direct procurement from Prime suppliers. Backed by technology, intelligence applied across the food supply chain minimizing the costs making it lean and thus providing tremendous value to both business clients and prime suppliers.', '1435aboutus-img.png', '<p align="justify"><span style="font-size: small;">Urbanization is inevitable and the need for consumption of healthy food becomes imperative. The food we choose makes all the difference for a healthy living and promising future. To keep up ourselves with the speed of modernization and to stay relevant we need to &ldquo;EAT GLOBAL and LIVE LOCAL&rdquo;.</span></p>
<p align="justify"><span style="font-size: small;"><strong>M.S. Swaminathan quotes&rdquo; If the Food system fails, everything will fail&rdquo;. </strong></span></p>
<p align="justify"><span style="font-size: small;">Drawing the inspiration from the father of India&rsquo;s green revolution, Qwipo is committed to focusing on the food system; how/where we procure, collect, store, transport, transform and ensure access to foods. We aim to promote better diets and improve our health and reduce carbon emissions. </span></p>
<p align="justify"><span style="font-size: small;">We are a One-stop-shop for Vegetables and Groceries for Retail, HORECA (Hotels, Restaurants, Cafes), and Enterprises and are specialized in procuring fresh and superior quality commodities directly from the farming communities and from prime food suppliers. Backed by technology and intelligence applied across the food supply chain, we weave the missing links minimizing the costs making the value chain lean, and thereby providing tremendous value to both business clients and prime suppliers</span><span style="color: #ff0000;"><span style="font-size: small;">. </span></span></p>
<p align="justify"><span style="font-size: small;">Customers&rsquo; satisfaction is at the heart of our daily concerns at Qwipo. The key to the longevity of produces is the freshness, our operational team makes it a point to supply the best products, prepare orders, and deliver our customers with minimum lead time. </span></p>
<p><span style="font-size: small;">We strive to ensure the farming community and purveyors get better prices and consistent demand, and on the other end, retailers receive fresh produce at competitive prices that are delivered to their doorstep. We have taken the digital route transforming the food systems and are fully committed to the Digital India Agriculture initiatives improving </span></p>', '1', '2020-11-26 18:02:59', '2020-11-26 18:02:59' ),
( '40', 'Daily Food Essentials for B2B Markets direct from prime suppliers.', 'One stop destination for Vegetables and Groceries for Retail, HORECA and Enterprises', 'About Us', 'One stop destination for Vegetables, Groceries and FMCG for Retail, HORECA and Enterprises. Direct procurement from Prime suppliers. Backed by technology, intelligence applied across the food supply chain minimizing the costs making it lean and thus providing tremendous value to both business clients and prime vendors.', '1435aboutus-img.png', '<p><strong>Need for Digitization</strong></p>
<p><span style="font-weight: 400;">The retail industry is one of the sectors which contributes majorly to the economy of this sub-continent and the need for innovation, digital transformation, and strengthening of the retail sector becomes more pertinent. Retail giants have been quickly adapting to the prevalent conditions and staying relevant with changes. There is a pressing need to digitally empower Prime suppliers, Wholesalers, Small Retailers, &amp; Kirana stores to conduct commerce, keeping their foothold strong in their respective markets and providing an opportunity to expand their business. e-Marketplaces are a new trend that will continue to grow strong and cannot be disregarded. Having an own website is no longer sufficient for business houses and today even the strong brands make use of these e-Marketplace platforms to promote and conduct business.</span></p>
<p><strong>Current Challenges by the vendors&nbsp;</strong></p>
<p><span style="font-weight: 400;">There is a serious trust deficit on the quality of food supplies, commodities, and daily essentials in the market. Business Retailers need to be extremely cautious about the purchase of quality and safe products. Besides these, the transactional challenges continue to assault the value chain with logistics, Multi-Geo/Multi-Merchant commodity Sourcing, and Price transparency, etc. There is a clear need for a trusted &amp; tested market where all our essential needs are met uncompromised through a robust digital platform bringing in Transparency, Traceability, and Trustworthy.</span></p>
<p><strong>QWIPO&rsquo;s Solution</strong></p>
<p><span style="font-weight: 400;">QWIPO is a m-commerce digital marketplace specialized in the delivery of groceries and daily essentials spread across Staples, Vegetables, Fruits, and FMCG goods, etc., and ensures premium quality products from our network of Prime wholesalers who procure directly from the prime suppliers. With a decentralized distribution system, we bring in an extensive range of product catalogue,&nbsp; versatile pricing and multiple vendors to our platform. Our cutting-edge technology ensures transparency and a seamless experience for all business users.</span></p>
<p><strong>Solution Benefits</strong></p>
<p><span style="font-weight: 400;">QWIPO our flagship e-Commerce digital platform benefits everyone in different ways.</span></p>
<ul>
<li><span style="font-weight: 400;"> For prime suppliers and producers, it is a way to reduce the costs of acquisition for new customers and make their operations smooth.</span></li>
<li><span style="font-weight: 400;"> For Prime Vendors, it is a platform helping them penetrate the wider markets with strong visibility.</span></li>
<li><span style="font-weight: 400;"> For business retailers e-Marketplaces represent a trustworthy neutral platform where they find everything they need with vendor ratings, deals and transparency in price.</span></li>
</ul>
<p>&nbsp;</p>
<p><span style="font-weight: 400;">Product listing on QWIPO e-Commerce digital platform helps create visibility for brands, product range, expand their sales territory, and strengthen the brand recall in consumers&rsquo; minds through their quality and consistent presence. Business retailers no longer want to wait for 3&ndash;4 days for their orders to get delivered to their doorsteps hence QWIPO assures very quick decentralized delivery to all its business retailers from the prime vendors.</span></p>', '1', '2021-06-02 15:01:15', '2021-06-02 15:01:15' ),
( '41', 'Daily Food Essentials for B2B Markets direct from prime suppliers.', 'One stop destination for Vegetables and Groceries for Retail, HORECA and Enterprises', 'About Us', 'One stop destination for Vegetables, Groceries and FMCG for Retail, HORECA and Enterprises. Direct procurement from Prime suppliers. Backed by technology, intelligence applied across the food supply chain minimizing the costs making it lean and thus providing tremendous value to both business clients and prime vendors.', '1435aboutus-img.png', '<p><strong>Need for Digitization</strong></p>
<p><span style="font-weight: 400;">The retail industry is one of the sectors which contributes majorly to the economy of this sub-continent and the need for innovation, digital transformation, and strengthening of the retail sector becomes more pertinent. Retail giants have been quickly adapting to the prevalent conditions and staying relevant with changes. There is a pressing need to digitally empower Prime suppliers, Wholesalers, Small Retailers, &amp; Kirana stores to conduct commerce, keeping their foothold strong in their respective markets and providing an opportunity to expand their business. e-Marketplaces are a new trend that will continue to grow strong and cannot be disregarded. Having an own website is no longer sufficient for business houses and today even the strong brands make use of these e-Marketplace platforms to promote and conduct business.</span></p>
<p><strong>Current Challenges by the vendors&nbsp;</strong></p>
<p><span style="font-weight: 400;">There is a serious trust deficit on the quality of food supplies, commodities, and daily essentials in the market. Business Retailers need to be extremely cautious about the purchase of quality and safe products. Besides these, the transactional challenges continue to assault the value chain with logistics, Multi-Geo/Multi-Merchant commodity Sourcing, and Price transparency, etc. There is a clear need for a trusted &amp; tested market where all our essential needs are met uncompromised through a robust digital platform bringing in Transparency, Traceability, and Trustworthy.</span></p>
<p><strong>QWIPO&rsquo;s Solution</strong></p>
<p><span style="font-weight: 400;">QWIPO is a m-commerce digital marketplace specialized in the delivery of groceries and daily essentials spread across Staples, Vegetables, Fruits, and FMCG goods, etc., and ensures premium quality products from our network of Prime wholesalers who procure directly from the prime suppliers. With a decentralized distribution system, we bring in an extensive range of product catalogue,&nbsp; versatile pricing and multiple vendors to our platform. Our cutting-edge technology ensures transparency and a seamless experience for all business users.</span></p>
<p><strong>Solution Benefits</strong></p>
<p><span style="font-weight: 400;">QWIPO our flagship e-Commerce digital platform benefits everyone in different ways.</span></p>
<ul>
<li style="text-align: left;"><span style="font-weight: 400;"> For prime suppliers and producers, it is a way to reduce the costs of acquisition for new customers and make their operations smooth.</span></li>
<li style="text-align: left;"><span style="font-weight: 400;"> For Prime Vendors, it is a platform helping them penetrate the wider markets with strong visibility.</span></li>
<li style="text-align: left;"><span style="font-weight: 400;"> For business retailers e-Marketplaces represent a trustworthy neutral platform where they find everything they need with vendor ratings, deals and transparency in price.</span></li>
</ul>
<p><span style="font-weight: 400;">Product listing on QWIPO e-Commerce digital platform helps create visibility for brands, product range, expand their sales territory, and strengthen the brand recall in consumers&rsquo; minds through their quality and consistent presence. Business retailers no longer want to wait for 3&ndash;4 days for their orders to get delivered to their doorsteps hence QWIPO assures very quick decentralized delivery to all its business retailers from the prime vendors.</span></p>', '1', '2021-06-02 15:09:54', '2021-06-02 15:09:54' ),
( '42', 'Daily Food Essentials for B2B Markets direct from prime suppliers.', 'One stop destination for Vegetables and Groceries for Retail, HORECA and Enterprises', 'About Us', 'One stop destination for Vegetables, Groceries and FMCG for Retail, HORECA and Enterprises. Direct procurement from Prime suppliers. Backed by technology, intelligence applied across the food supply chain minimizing the costs making it lean and thus providing tremendous value to both business clients and prime vendors.', '1435aboutus-img.png', '<p><strong>Need for Digitization</strong></p>
<p><span style="font-weight: 400;">The retail industry is one of the sectors which contributes majorly to the economy of this sub-continent and the need for innovation, digital transformation, and strengthening of the retail sector becomes more pertinent. Retail giants have been quickly adapting to the prevalent conditions and staying relevant with changes. There is a pressing need to digitally empower Prime suppliers, Wholesalers, Small Retailers, &amp; Kirana stores to conduct commerce, keeping their foothold strong in their respective markets and providing an opportunity to expand their business. e-Marketplaces are a new trend that will continue to grow strong and cannot be disregarded. Having an own website is no longer sufficient for business houses and today even the strong brands make use of these e-Marketplace platforms to promote and conduct business.</span></p>
<p><strong>Current Challenges faced by the vendors&nbsp;</strong></p>
<p><span style="font-weight: 400;">There is a serious trust deficit on the quality of food supplies, commodities, and daily essentials in the market. Business Retailers need to be extremely cautious about the purchase of quality and safe products. Besides these, the transactional challenges continue to assault the value chain with logistics, Multi-Geo/Multi-Merchant commodity Sourcing, and Price transparency, etc. There is a clear need for a trusted &amp; tested market where all our essential needs are met uncompromised through a robust digital platform bringing in Transparency, Traceability, and Trustworthy.</span></p>
<p><strong>QWIPO&rsquo;s Solution</strong></p>
<p><span style="font-weight: 400;">QWIPO is a m-commerce digital marketplace specialized in the delivery of groceries and daily essentials spread across Staples, Vegetables, Fruits, and FMCG goods, etc., and ensures premium quality products from our network of Prime wholesalers who procure directly from the prime suppliers. With a decentralized distribution system, we bring in an extensive range of product catalogue,&nbsp; versatile pricing and multiple vendors to our platform. Our cutting-edge technology ensures transparency and a seamless experience for all business users.</span></p>
<p><strong>Solution Benefits</strong></p>
<p><span style="font-weight: 400;">QWIPO our flagship e-Commerce digital platform benefits everyone in different ways.</span></p>
<ul>
<li style="text-align: left;"><span style="font-weight: 400;"> For prime suppliers and producers, it is a way to reduce the costs of acquisition for new customers and make their operations smooth.</span></li>
<li style="text-align: left;"><span style="font-weight: 400;"> For Prime Vendors, it is a platform helping them penetrate the wider markets with strong visibility.</span></li>
<li style="text-align: left;"><span style="font-weight: 400;"> For business retailers e-Marketplaces represent a trustworthy neutral platform where they find everything they need with vendor ratings, deals and transparency in price.</span></li>
</ul>
<p><span style="font-weight: 400;">Product listing on QWIPO e-Commerce digital platform helps create visibility for brands, product range, expand their sales territory, and strengthen the brand recall in consumers&rsquo; minds through their quality and consistent presence. Business retailers no longer want to wait for 3&ndash;4 days for their orders to get delivered to their doorsteps hence QWIPO assures very quick decentralized delivery to all its business retailers from the prime vendors.</span></p>', '1', '2021-06-02 15:10:44', '2021-06-02 15:10:44' ),
( '43', 'Daily Food Essentials for B2B Markets direct from prime suppliers.', 'One stop destination for Vegetables and Groceries for Retail, HORECA and Enterprises', 'About Us', 'One stop destination for Vegetables, Groceries and FMCG for Retail, HORECA and Enterprises. Direct procurement from Prime suppliers. Backed by technology, intelligence applied across the food supply chain minimizing the costs making it lean and thus providing tremendous value to both business clients and prime vendors.', '1435aboutus-img.png', '<p><strong>Need for Digitization</strong></p>
<p><span style="font-weight: 400;">The retail industry is one of the sectors which contributes majorly to the economy of this sub-continent and the need for innovation, digital transformation, and strengthening of the retail sector becomes more pertinent. Retail giants have been quickly adapting to the prevalent conditions and staying relevant with changes. There is a pressing need to digitally empower Prime suppliers, Wholesalers, Small Retailers, &amp; Kirana stores to conduct commerce, keeping their foothold strong in their respective markets and providing an opportunity to expand their business. e-Marketplaces are a new trend that will continue to grow strong and cannot be disregarded. Having an own website is no longer sufficient for business houses and today even the strong brands make use of these e-Marketplace platforms to promote and conduct business.</span></p>
<p><strong>Current Challenges faced by the vendors&nbsp;</strong></p>
<p><span style="font-weight: 400;">There is a serious trust deficit on the quality of food supplies, commodities, and daily essentials in the market. Business Retailers need to be extremely cautious about the purchase of quality and safe products. Besides these, the transactional challenges continue to assault the value chain with logistics, Multi-Geo/Multi-Merchant commodity Sourcing, and Price transparency, etc. There is a clear need for a trusted &amp; tested market where all our essential needs are met uncompromised through a robust digital platform bringing in Transparency, Traceability, and Trustworthy.</span></p>
<p><strong>QWIPO&rsquo;s Solution</strong></p>
<p><span style="font-weight: 400;">QWIPO is a m-commerce digital marketplace specialized in the delivery of groceries and daily essentials spread across Staples, Vegetables, Fruits, and FMCG goods, etc., and ensures premium quality products from our network of Prime wholesalers who procure directly from the prime suppliers. With a decentralized distribution system, we bring in an extensive range of product catalogue,&nbsp; versatile pricing and multiple vendors to our platform. Our cutting-edge technology ensures transparency and a seamless experience for all business users.</span></p>
<p><strong>Solution Benefits</strong></p>
<p><span style="font-weight: 400;">QWIPO our flagship e-Commerce digital platform benefits everyone in different ways.</span></p>
<ul>
<li style="text-align: left;"><span style="font-weight: 400;"> For prime suppliers and producers, it is a way to reduce the costs of acquisition for new customers and make their operations smooth.</span></li>
<li style="text-align: left;"><span style="font-weight: 400;"> For Prime Vendors, it is a platform helping them penetrate the wider markets with strong visibility.</span></li>
<li style="text-align: left;"><span style="font-weight: 400;"> For business retailers e-Marketplaces represent a trustworthy neutral platform where they find everything they need with vendor ratings, deals and transparency in price.</span></li>
</ul>
<p><span style="font-weight: 400;">Product listing on QWIPO e-Commerce digital platform helps create visibility for brands, product range, expand their sales territory, and strengthen the brand recall in consumers&rsquo; minds through their quality and consistent presence. Business retailers no longer want to wait for 3&ndash;4 days for their orders to get delivered to their doorsteps hence QWIPO assures very quick decentralized delivery to all its business retailers from the prime vendors.</span></p>', '1', '2021-06-02 15:11:24', '2021-06-02 15:11:24' ),
( '44', 'Supplying Daily Business Essentials for B2B Markets procured directly from prime suppliers.', 'One stop destination for Vegetables, Groceries and FMCG for Retail, HORECA and Enterprises', 'About Us', 'One stop destination for Vegetables, Groceries and FMCG for Retail, HORECA and Enterprises. Direct procurement from Prime suppliers. Backed by technology, intelligence applied across the food supply chain minimizing the costs making it lean and thus providing tremendous value to both business clients and prime vendors.', '1435aboutus-img.png', '<p><span style="font-weight: 400;">The retail industry is one of the sectors which contributes majorly to the economy of this sub-continent and the need for innovation, digital transformation, and strengthening of the retail sector becomes more pertinent. Retail giants have been quickly adapting to the prevalent conditions and staying relevant with changes. There is a pressing need to digitally empower Prime suppliers, Wholesalers, Small Retailers, &amp; Kirana stores to conduct commerce, keeping their foothold strong in their respective markets and providing an opportunity to expand their business. e-Marketplaces are a new trend that will continue to grow strong and cannot be disregarded. Having an own website is no longer sufficient for business houses and today even the strong brands make use of these e-Marketplace platforms to promote and conduct business.</span></p>
<p><span style="font-weight: 400;">There is a serious trust deficit on the quality of food supplies, commodities, and daily essentials in the market. Business Retailers need to be extremely cautious about the purchase of quality and safe products. Besides these, the transactional challenges continue to assault the value chain with logistics, Multi-Geo/Multi-Merchant commodity Sourcing, and Price transparency, etc. There is a clear need for a trusted &amp; tested market where all our essential needs are met uncompromised through a robust digital platform bringing in Transparency, Traceability, and Trustworthy.</span></p>
<p><span style="font-weight: 400;">QWIPO is a m-commerce digital marketplace specialized in the delivery of groceries and daily essentials spread across Staples, Vegetables, Fruits, and FMCG goods, etc., and ensures premium quality products from our network of Prime wholesalers who procure directly from the prime suppliers. With a decentralized distribution system, we bring in an extensive range of product catalogue,&nbsp; versatile pricing and multiple vendors to our platform. Our cutting-edge technology ensures transparency and a seamless experience for all business users.</span></p>
<p><span style="font-weight: 400;">QWIPO our flagship e-Commerce digital platform benefits everyone in different ways.</span></p>
<ul>
<li style="text-align: left;"><span style="font-weight: 400;"> For prime suppliers and producers, it is a way to reduce the costs of acquisition for new customers and make their operations smooth.</span></li>
<li style="text-align: left;"><span style="font-weight: 400;"> For Prime Vendors, it is a platform helping them penetrate the wider markets with strong visibility.</span></li>
<li style="text-align: left;"><span style="font-weight: 400;"> For business retailers e-Marketplaces represent a trustworthy neutral platform where they find everything they need with vendor ratings, deals and transparency in price.</span></li>
</ul>
<p><span style="font-weight: 400;">Product listing on QWIPO e-Commerce digital platform helps create visibility for brands, product range, expand their sales territory, and strengthen the brand recall in consumers&rsquo; minds through their quality and consistent presence. Business retailers no longer want to wait for 3&ndash;4 days for their orders to get delivered to their doorsteps hence QWIPO assures very quick decentralized delivery to all its business retailers from the prime vendors.</span></p>', '1', '2021-06-02 16:25:53', '2021-06-02 16:25:53' ),
( '45', 'Supplying Daily Business Essentials for B2B Markets procured directly from prime suppliers.', 'One-stop destination for Vegetables, Groceries, and FMCG for Retail, HORECA, and Enterprises', 'About Us', 'One stop destination for Vegetables, Groceries and FMCG for Retail, HORECA and Enterprises. Direct procurement from Prime suppliers. Backed by technology, intelligence applied across the food supply chain minimizing the costs making it lean and thus providing tremendous value to both business clients and prime vendors.', '1435aboutus-img.png', '<p><span style="font-weight: 400;">The retail industry is one of the sectors which contributes majorly to the economy of this sub-continent and the need for innovation, digital transformation, and strengthening of the retail sector becomes more pertinent. Retail giants have been quickly adapting to the prevalent conditions and staying relevant with changes. There is a pressing need to digitally empower Prime suppliers, Wholesalers, Small Retailers, &amp; Kirana stores to conduct commerce, keeping their foothold strong in their respective markets and providing an opportunity to expand their business. e-Marketplaces are a new trend that will continue to grow strong and cannot be disregarded. Having an own website is no longer sufficient for business houses and today even the strong brands make use of these e-Marketplace platforms to promote and conduct business.</span></p>
<p><span style="font-weight: 400;">There is a serious trust deficit on the quality of food supplies, commodities, and daily essentials in the market. Business Retailers need to be extremely cautious about the purchase of quality and safe products. Besides these, the transactional challenges continue to assault the value chain with logistics, Multi-Geo/Multi-Merchant commodity Sourcing, and Price transparency, etc. There is a clear need for a trusted &amp; tested market where all our essential needs are met uncompromised through a robust digital platform bringing in Transparency, Traceability, and Trustworthy.</span></p>
<p><span style="font-weight: 400;">QWIPO is a m-commerce digital marketplace specialized in the delivery of groceries and daily essentials spread across Staples, Vegetables, Fruits, and FMCG goods, etc., and ensures premium quality products from our network of Prime wholesalers who procure directly from the prime suppliers. With a decentralized distribution system, we bring in an extensive range of product catalogue,&nbsp; versatile pricing and multiple vendors to our platform. Our cutting-edge technology ensures transparency and a seamless experience for all business users.</span></p>
<p><span style="font-weight: 400;">QWIPO our flagship e-Commerce digital platform benefits everyone in different ways.</span></p>
<ul>
<li style="text-align: left;"><span style="font-weight: 400;"> For prime suppliers and producers, it is a way to reduce the costs of acquisition for new customers and make their operations smooth.</span></li>
<li style="text-align: left;"><span style="font-weight: 400;"> For Prime Vendors, it is a platform helping them penetrate the wider markets with strong visibility.</span></li>
<li style="text-align: left;"><span style="font-weight: 400;"> For business retailers e-Marketplaces represent a trustworthy neutral platform where they find everything they need with vendor ratings, deals and transparency in price.</span></li>
</ul>
<p><span style="font-weight: 400;">Product listing on QWIPO e-Commerce digital platform helps create visibility for brands, product range, expand their sales territory, and strengthen the brand recall in consumers&rsquo; minds through their quality and consistent presence. Business retailers no longer want to wait for 3&ndash;4 days for their orders to get delivered to their doorsteps hence QWIPO assures very quick decentralized delivery to all its business retailers from the prime vendors.</span></p>', '1', '2021-06-02 16:27:04', '2021-06-02 16:27:04' ),
( '46', 'Supplying Business Essentials for B2B Markets procured directly from prime suppliers.', 'One-stop destination for Vegetables, Groceries, and FMCG for Retail, HORECA, and Enterprises', 'About Us', 'One stop destination for Vegetables, Groceries and FMCG for Retail, HORECA and Enterprises. Direct procurement from Prime suppliers. Backed by technology, intelligence applied across the food supply chain minimizing the costs making it lean and thus providing tremendous value to both business clients and prime vendors.', '1435aboutus-img.png', '<p><span style="font-weight: 400;">The retail industry is one of the sectors which contributes majorly to the economy of this sub-continent and the need for innovation, digital transformation, and strengthening of the retail sector becomes more pertinent. Retail giants have been quickly adapting to the prevalent conditions and staying relevant with changes. There is a pressing need to digitally empower Prime suppliers, Wholesalers, Small Retailers, &amp; Kirana stores to conduct commerce, keeping their foothold strong in their respective markets and providing an opportunity to expand their business. e-Marketplaces are a new trend that will continue to grow strong and cannot be disregarded. Having an own website is no longer sufficient for business houses and today even the strong brands make use of these e-Marketplace platforms to promote and conduct business.</span></p>
<p><span style="font-weight: 400;">There is a serious trust deficit on the quality of food supplies, commodities, and daily essentials in the market. Business Retailers need to be extremely cautious about the purchase of quality and safe products. Besides these, the transactional challenges continue to assault the value chain with logistics, Multi-Geo/Multi-Merchant commodity Sourcing, and Price transparency, etc. There is a clear need for a trusted &amp; tested market where all our essential needs are met uncompromised through a robust digital platform bringing in Transparency, Traceability, and Trustworthy.</span></p>
<p><span style="font-weight: 400;">QWIPO is a m-commerce digital marketplace specialized in the delivery of groceries and daily essentials spread across Staples, Vegetables, Fruits, and FMCG goods, etc., and ensures premium quality products from our network of Prime wholesalers who procure directly from the prime suppliers. With a decentralized distribution system, we bring in an extensive range of product catalogue,&nbsp; versatile pricing and multiple vendors to our platform. Our cutting-edge technology ensures transparency and a seamless experience for all business users.</span></p>
<p><span style="font-weight: 400;">QWIPO our flagship e-Commerce digital platform benefits everyone in different ways.</span></p>
<ul>
<li style="text-align: left;"><span style="font-weight: 400;"> For prime suppliers and producers, it is a way to reduce the costs of acquisition for new customers and make their operations smooth.</span></li>
<li style="text-align: left;"><span style="font-weight: 400;"> For Prime Vendors, it is a platform helping them penetrate the wider markets with strong visibility.</span></li>
<li style="text-align: left;"><span style="font-weight: 400;"> For business retailers e-Marketplaces represent a trustworthy neutral platform where they find everything they need with vendor ratings, deals and transparency in price.</span></li>
</ul>
<p><span style="font-weight: 400;">Product listing on QWIPO e-Commerce digital platform helps create visibility for brands, product range, expand their sales territory, and strengthen the brand recall in consumers&rsquo; minds through their quality and consistent presence. Business retailers no longer want to wait for 3&ndash;4 days for their orders to get delivered to their doorsteps hence QWIPO assures very quick decentralized delivery to all its business retailers from the prime vendors.</span></p>', '1', '2021-06-02 17:01:41', '2021-06-02 17:01:41' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "executive" --------------------------------
BEGIN;

INSERT INTO `executive`(`id`,`name`,`designation`,`linkedin_url`,`image_path`,`status`,`created_at`,`updated_at`) VALUES 
( '1', 'Chandrasekhar Chandragiri', 'CFO', 'https://www.linkedin.com/in/chandragiric/', '905Chandra Chandragiri (150 x 150).jpg', '1', '2021-05-21 10:29:38', '2021-05-21 10:29:38' ),
( '2', 'Siva Morisetti', 'CEO, Co-Founder', 'https://www.linkedin.com/in/sivamorisetti/', '8138WhatsApp Image 2021-03-17 at 8.34.35 PM (150 x 150).jpg', '1', '2021-05-21 10:30:51', '2021-05-21 10:30:51' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "session" ----------------------------------
BEGIN;

INSERT INTO `session`(`id`,`name`,`modified`,`lifetime`,`data`) VALUES 
( '00std83p4edde1qgjeanjmj8mg', 'PHPSESSID', '1624381096', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624381096.70683;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"00std83p4edde1qgjeanjmj8mg";}}' ),
( '011faeujnvr93ntt4u4iqu0g9v', 'PHPSESSID', '1624339044', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624339044.45694;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"011faeujnvr93ntt4u4iqu0g9v";}}' ),
( '01hsq3th293edd4ulcmmjuo4uk', 'PHPSESSID', '1624327606', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624327606.822017;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"01hsq3th293edd4ulcmmjuo4uk";}}' ),
( '02fgvjdo1fmthgpj2kg1lpf4uv', 'PHPSESSID', '1624368333', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624368333.418098;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"02fgvjdo1fmthgpj2kg1lpf4uv";}}' ),
( '02lfer97qn2acka9p44pb7783c', 'PHPSESSID', '1624400454', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624400453.946455;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"02lfer97qn2acka9p44pb7783c";}}' ),
( '04b5r3vii6q631tse95jnb9eh2', 'PHPSESSID', '1641995370', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1641995370.3523631;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"04b5r3vii6q631tse95jnb9eh2";}}' ),
( '04hjv610ousgicoeuq917fn3qo', 'PHPSESSID', '1624402817', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624402817.448919;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"04hjv610ousgicoeuq917fn3qo";}}' ),
( '0617a0ude14r9rmrhfa2ih0imc', 'PHPSESSID', '1624346493', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624346493.864294;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"0617a0ude14r9rmrhfa2ih0imc";}}' ),
( '08uur1ji4f06qmdmnhvaq2hjis', 'PHPSESSID', '1624417384', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624417384.160332;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"08uur1ji4f06qmdmnhvaq2hjis";}}' ),
( '09m56veke2nt2fjsl3t43felsm', 'PHPSESSID', '1624358578', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624358578.792194;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"09m56veke2nt2fjsl3t43felsm";}}' ),
( '0b5i2bisap5g739f4dis4ud938', 'PHPSESSID', '1624333252', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333252.569242;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"0b5i2bisap5g739f4dis4ud938";}}' ),
( '0c5rq1l1lrkgvid9chk4qg6bqv', 'PHPSESSID', '1624363730', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624363730.910131;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"0c5rq1l1lrkgvid9chk4qg6bqv";}}' ),
( '0cdogsrihjmkqdpcdolr6qrhts', 'PHPSESSID', '1624345826', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624345826.38302;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"0cdogsrihjmkqdpcdolr6qrhts";}}' ),
( '0jgodcrgd6qlm31pldvahhuv6o', 'PHPSESSID', '1624319523', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624319523.519222;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"0jgodcrgd6qlm31pldvahhuv6o";}}' ),
( '0l8jcu1he40gel00hgf5o622j3', 'PHPSESSID', '1624384021', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624384021.571897;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"0l8jcu1he40gel00hgf5o622j3";}}' ),
( '0lg1vq934p8da74181gpelkv2i', 'PHPSESSID', '1624343313', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624343313.854894;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"0lg1vq934p8da74181gpelkv2i";}}' ),
( '0lvk0dk6pu5n2u6m1p6c7hf8dq', 'PHPSESSID', '1624373612', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624373612.766241;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"0lvk0dk6pu5n2u6m1p6c7hf8dq";}}' ),
( '0mbrlhdqqtt5d0ff8jnuil5b4l', 'PHPSESSID', '1624337962', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624337962.733056;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"0mbrlhdqqtt5d0ff8jnuil5b4l";}}' ),
( '0n9d302qpkg9nh7pvq55bsqa7t', 'PHPSESSID', '1624328806', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624328806.168639;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"0n9d302qpkg9nh7pvq55bsqa7t";}}' ),
( '0nshcndq1vpiofv8omt7cp4u2q', 'PHPSESSID', '1624347749', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624347749.624774;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"0nshcndq1vpiofv8omt7cp4u2q";}}' ),
( '0ocaj9h1f92tg082nctgneoh4h', 'PHPSESSID', '1624328855', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624328855.300402;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"0ocaj9h1f92tg082nctgneoh4h";}}' ),
( '0q0o39loipf265og6015lkuu2s', 'PHPSESSID', '1624371414', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624371413.952172;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"0q0o39loipf265og6015lkuu2s";}}' ),
( '0use50o6evi31c24nd3qa91p3a', 'PHPSESSID', '1624352712', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624352712.625472;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"0use50o6evi31c24nd3qa91p3a";}}' ),
( '10lin3s3m96urn9qnkehb4gv3k', 'PHPSESSID', '1624344514', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624344514.24921;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"10lin3s3m96urn9qnkehb4gv3k";}}' ),
( '115q49csjcintl1aphophubbd4', 'PHPSESSID', '1624328590', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624328590.25735;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"115q49csjcintl1aphophubbd4";}}' ),
( '11a1ca5va0f38ljm74htl6v7dc', 'PHPSESSID', '1624331400', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624331400.177815;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"11a1ca5va0f38ljm74htl6v7dc";}}' ),
( '145ratadgps5j8cj7261e7pr1n', 'PHPSESSID', '1624416876', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624416876.286472;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"145ratadgps5j8cj7261e7pr1n";}}' ),
( '16sbqe04e767eed2smah6it1j4', 'PHPSESSID', '1624358218', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624358218.949231;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"16sbqe04e767eed2smah6it1j4";}}' ),
( '1a1vg24o2msdfco0aa8kj4nne9', 'PHPSESSID', '1624409207', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624409206.999055;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"1a1vg24o2msdfco0aa8kj4nne9";}}' ),
( '1c3ho16u1jv3jinqeed1i7k2re', 'PHPSESSID', '1624327853', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624327853.060849;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"1c3ho16u1jv3jinqeed1i7k2re";}}' ),
( '1d7h5a825iq1g0tejfj6cfrnqc', 'PHPSESSID', '1624390994', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390994.672505;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"1d7h5a825iq1g0tejfj6cfrnqc";}}' ),
( '1e4i6v1uj9vjcej9noi96g025n', 'PHPSESSID', '1624371593', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624371593.148592;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"1e4i6v1uj9vjcej9noi96g025n";}}' ),
( '1g7uo8rpdcu5mafn76gbutkj77', 'PHPSESSID', '1624328804', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624328804.654594;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"1g7uo8rpdcu5mafn76gbutkj77";}}' ),
( '1hpfp0j7l1nvl31affr19akgq5', 'PHPSESSID', '1624315329', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624315329.885659;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"1hpfp0j7l1nvl31affr19akgq5";}}' ),
( '1ig84pb4fcdfoiaud1359d8dkp', 'PHPSESSID', '1624368336', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624368336.375045;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"1ig84pb4fcdfoiaud1359d8dkp";}}' ),
( '1io73p7nv4ccubu8i1eappq1cp', 'PHPSESSID', '1624414452', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624414452.163922;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"1io73p7nv4ccubu8i1eappq1cp";}}' ),
( '1j6liqancrmhup27akdd7o1ok1', 'PHPSESSID', '1624358218', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624358218.468723;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"1j6liqancrmhup27akdd7o1ok1";}}' ),
( '1ji0ddpqjl9qi1pjsq20di4cqj', 'PHPSESSID', '1624370361', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624370361.686057;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"1ji0ddpqjl9qi1pjsq20di4cqj";}}' ),
( '1lene12sqg78rfahrefk15sfq5', 'PHPSESSID', '1624340359', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624340359.730655;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"1lene12sqg78rfahrefk15sfq5";}}' ),
( '1na5ti7hfr3oc5t433joae2ras', 'PHPSESSID', '1624413881', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624413881.354242;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"1na5ti7hfr3oc5t433joae2ras";}}' ),
( '1oiej04lsm2a4gb635e0gn49i7', 'PHPSESSID', '1624333476', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333476.415506;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"1oiej04lsm2a4gb635e0gn49i7";}}' ),
( '1vbt214906hrcp7abakeo4q17h', 'PHPSESSID', '1624361614', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624361614.739241;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"1vbt214906hrcp7abakeo4q17h";}}' ),
( '1vt2ogdml717m8qckufk5mfmmp', 'PHPSESSID', '1624415478', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624415478.768829;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"1vt2ogdml717m8qckufk5mfmmp";}}' ),
( '21f5co2q8afaj40icejjg9p45o', 'PHPSESSID', '1624342860', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624342860.718948;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"21f5co2q8afaj40icejjg9p45o";}}' ),
( '21h2k3l88gjuvh6mvcps4r4n84', 'PHPSESSID', '1624422056', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624422056.335835;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"21h2k3l88gjuvh6mvcps4r4n84";}}' ),
( '21j8ce348r1uk226p1rl0nrod0', 'PHPSESSID', '1624366468', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624366468.305002;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"21j8ce348r1uk226p1rl0nrod0";}}' ),
( '233tomeikconua9nq27mha7bpo', 'PHPSESSID', '1624322648', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624322648.663827;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"233tomeikconua9nq27mha7bpo";}}' ),
( '256ej2ots4i2fpt8iprjipq9kg', 'PHPSESSID', '1624320913', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624320913.893092;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"256ej2ots4i2fpt8iprjipq9kg";}}' ),
( '25ob5im4cghmlv5sege79118ka', 'PHPSESSID', '1624369569', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624369569.856361;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"25ob5im4cghmlv5sege79118ka";}}' ),
( '26rbppftsev9i9877dtqh8scub', 'PHPSESSID', '1624322648', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624322648.891083;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"26rbppftsev9i9877dtqh8scub";}}' ),
( '27b2mnquuqk2l09kv8auko842o', 'PHPSESSID', '1624405204', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624405204.689708;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"27b2mnquuqk2l09kv8auko842o";}}' ),
( '28ol42o8e3jcahsompi2bl4ju0', 'PHPSESSID', '1624378556', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624378556.345598;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"28ol42o8e3jcahsompi2bl4ju0";}}' ),
( '2ab28nrmqmqv4s0a5c0hbaj0k8', 'PHPSESSID', '1624319742', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624319742.072608;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2ab28nrmqmqv4s0a5c0hbaj0k8";}}' ),
( '2bknd8tcgr8fpl3k9g7cm5nvi7', 'PHPSESSID', '1624336322', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624336322.71557;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2bknd8tcgr8fpl3k9g7cm5nvi7";}}' ),
( '2cg6p2fajoh0chp08mtruct39o', 'PHPSESSID', '1624347744', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624347744.922049;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2cg6p2fajoh0chp08mtruct39o";}}' ),
( '2cjkq5sik1heg3qo2qfn7tppam', 'PHPSESSID', '1624404364', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624404364.404546;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2cjkq5sik1heg3qo2qfn7tppam";}}' ),
( '2daedmir8afp0frrmbav6kn49d', 'PHPSESSID', '1624423809', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624423809.233572;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2daedmir8afp0frrmbav6kn49d";}}' ),
( '2egcr8pihag3jbt0ujeat738a7', 'PHPSESSID', '1624334429', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624334429.157909;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2egcr8pihag3jbt0ujeat738a7";}}' ),
( '2fajuntcbbso1hoq4mpu4nguap', 'PHPSESSID', '1624341644', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624341644.42132;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2fajuntcbbso1hoq4mpu4nguap";}}' ),
( '2fd5hiqintr6e0iuqsiavoajh0', 'PHPSESSID', '1624409217', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624409217.531313;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2fd5hiqintr6e0iuqsiavoajh0";}}' ),
( '2g1br3i5rgcchc5tg6agmfk7ql', 'PHPSESSID', '1624328803', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624328803.482632;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2g1br3i5rgcchc5tg6agmfk7ql";}}' ),
( '2k62pknt8hqnhfsggo95009ve5', 'PHPSESSID', '1624350994', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624350994.899173;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2k62pknt8hqnhfsggo95009ve5";}}' ),
( '2kj87ikk6rh6gkk1s92eok0230', 'PHPSESSID', '1624342975', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624342975.276562;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2kj87ikk6rh6gkk1s92eok0230";}}' ),
( '2kulkmgu2o8itbv8qqhv0tjdnq', 'PHPSESSID', '1642049010', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1642049010.348882;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2kulkmgu2o8itbv8qqhv0tjdnq";}}' ),
( '2lcqpd4k7vigut3c2ps01dvfa4', 'PHPSESSID', '1624370405', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624370405.348569;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2lcqpd4k7vigut3c2ps01dvfa4";}}' ),
( '2mgujs59426fv54afvecletart', 'PHPSESSID', '1642054994', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1642054994.343164;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2mgujs59426fv54afvecletart";}}' ),
( '2o9tmhm4vr41gsmec8k1rvr9r0', 'PHPSESSID', '1624315326', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624315326.832402;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2o9tmhm4vr41gsmec8k1rvr9r0";}}' ),
( '2pjluqq6pv5c7on90r8ipf5bht', 'PHPSESSID', '1624390906', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390906.741492;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2pjluqq6pv5c7on90r8ipf5bht";}}' ),
( '2sijp7nlgabjt86te3pmbrq7pn', 'PHPSESSID', '1624397309', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624397309.125813;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2sijp7nlgabjt86te3pmbrq7pn";}}' ),
( '2toie2718eh3tgum8khhrjrpda', 'PHPSESSID', '1624384706', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624384706.554249;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2toie2718eh3tgum8khhrjrpda";}}' ),
( '2u657ltlv8duk7duqjoaatmasg', 'PHPSESSID', '1624342975', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624342975.276986;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2u657ltlv8duk7duqjoaatmasg";}}' ),
( '2vbivg4h6mefkqhrngeieo5fhk', 'PHPSESSID', '1624361604', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624361604.040795;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"2vbivg4h6mefkqhrngeieo5fhk";}}' ),
( '3195bc2qbkl22orchugr8ue6od', 'PHPSESSID', '1624384660', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624384660.804177;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"3195bc2qbkl22orchugr8ue6od";}}' ),
( '31q7bgt1j5dkm656iqguujs9tr', 'PHPSESSID', '1624315389', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624315389.800554;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"31q7bgt1j5dkm656iqguujs9tr";}}' ),
( '347vnh04oi96h87ulnvru661k9', 'PHPSESSID', '1624327702', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624327702.629674;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"347vnh04oi96h87ulnvru661k9";}}' ),
( '34ilfbjb3j5ackpmrcqgupns44', 'PHPSESSID', '1624380510', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624380510.307196;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"34ilfbjb3j5ackpmrcqgupns44";}}' ),
( '350ckt063f5utaaj3g5fll3r2s', 'PHPSESSID', '1624333900', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333900.209359;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"350ckt063f5utaaj3g5fll3r2s";}}' ),
( '35io35kgfm2eeimr51h6h88l47', 'PHPSESSID', '1624401852', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624401852.830495;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"35io35kgfm2eeimr51h6h88l47";}}' ),
( '39elp4p5ahtocf00fed22ofb9j', 'PHPSESSID', '1624416239', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624416239.933651;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"39elp4p5ahtocf00fed22ofb9j";}}' ),
( '3auab170osl7ivriksrn42fi5e', 'PHPSESSID', '1624396748', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624396748.11148;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"3auab170osl7ivriksrn42fi5e";}}' ),
( '3b63fjm722rcc7l9rdi3jigrff', 'PHPSESSID', '1624384569', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624384568.993942;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"3b63fjm722rcc7l9rdi3jigrff";}}' ),
( '3bkikf74a8gors7mq8r1duvne4', 'PHPSESSID', '1624363687', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624363687.359992;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"3bkikf74a8gors7mq8r1duvne4";}}' ),
( '3bvf2j2555os4q1pdjvc4teept', 'PHPSESSID', '1624358316', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624358316.850049;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"3bvf2j2555os4q1pdjvc4teept";}}' ),
( '3c41lp2d5thdr2hl4a0241g5kj', 'PHPSESSID', '1624314144', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624314144.165543;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"3c41lp2d5thdr2hl4a0241g5kj";}}' ),
( '3dm8nn2ihvbcdr73s8a4fpbvrj', 'PHPSESSID', '1624360985', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624360985.619804;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"3dm8nn2ihvbcdr73s8a4fpbvrj";}}' ),
( '3duq3aj29lq8m8bqmgq27c9m78', 'PHPSESSID', '1624346608', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624346608.352637;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"3duq3aj29lq8m8bqmgq27c9m78";}}' ),
( '3hg0n69on8ni5v70k9mtod7p7u', 'PHPSESSID', '1624378558', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624378558.520117;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"3hg0n69on8ni5v70k9mtod7p7u";}}' ),
( '3ib79ehh87kihiftp4rflqf6mu', 'PHPSESSID', '1624423034', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624423034.021251;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"3ib79ehh87kihiftp4rflqf6mu";}}' ),
( '3mmfmkeh3fkcbod3ip4scqtqdn', 'PHPSESSID', '1624421962', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624421962.353081;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"3mmfmkeh3fkcbod3ip4scqtqdn";}}' ),
( '3ov2i26v3lpm5ctrkddnfptfdf', 'PHPSESSID', '1624361611', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624361611.46971;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"3ov2i26v3lpm5ctrkddnfptfdf";}}' ),
( '3rh258ud1rqj7vhqagua99iov6', 'PHPSESSID', '1624419359', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624419359.394089;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"3rh258ud1rqj7vhqagua99iov6";}}' ),
( '43bga60c1n9hf7cp82ds41pql7', 'PHPSESSID', '1624422059', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624422059.413696;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"43bga60c1n9hf7cp82ds41pql7";}}' ),
( '4418nv96qirpiit4gauigvtfrg', 'PHPSESSID', '1624368334', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624368334.341928;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"4418nv96qirpiit4gauigvtfrg";}}' ),
( '4510e31fq6f49iqsq79lc0au1c', 'PHPSESSID', '1624346860', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624346860.029813;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"4510e31fq6f49iqsq79lc0au1c";}}' ),
( '455ftspuc2nkbm2daut48dpjqd', 'PHPSESSID', '1624333662', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333662.350353;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"455ftspuc2nkbm2daut48dpjqd";}}' ),
( '49mkm0f17e1cgupgrvnk01k5im', 'PHPSESSID', '1624341554', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624341554.00647;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"49mkm0f17e1cgupgrvnk01k5im";}}' ),
( '49qmhcif2a3npca8dkg6836kmn', 'PHPSESSID', '1624353231', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624353231.860748;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"49qmhcif2a3npca8dkg6836kmn";}}' ),
( '49ror351611cdakriqlna2spfn', 'PHPSESSID', '1624423078', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624423078.239461;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"49ror351611cdakriqlna2spfn";}}' ),
( '4dfqbmp9ffgolpm7m5qva5hg4s', 'PHPSESSID', '1624370946', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624370946.733782;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"4dfqbmp9ffgolpm7m5qva5hg4s";}}' ),
( '4ejdv11lmhqiufem1on1dopfs2', 'PHPSESSID', '1624398052', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624398052.890508;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"4ejdv11lmhqiufem1on1dopfs2";}}' ),
( '4gjill672t30msvt5iu0ndpht2', 'PHPSESSID', '1624370550', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624370550.362799;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"4gjill672t30msvt5iu0ndpht2";}}' ),
( '4hnof61dd089vdv2v679ra272c', 'PHPSESSID', '1624378517', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624378517.255656;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"4hnof61dd089vdv2v679ra272c";}}' ),
( '4klk5mbqfcojnqevpem8c2c6dl', 'PHPSESSID', '1624353402', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624353402.257591;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"4klk5mbqfcojnqevpem8c2c6dl";}}' ),
( '4mc607ptrd62tatkijqp9ib1gk', 'PHPSESSID', '1624383228', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624383228.400296;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"4mc607ptrd62tatkijqp9ib1gk";}}' ),
( '4r2hc6ldgbffbngftuo9iq2u8s', 'PHPSESSID', '1624376726', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624376726.362511;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"4r2hc6ldgbffbngftuo9iq2u8s";}}' ),
( '4ramjt5hp7fk0emt7pfk6afsvv', 'PHPSESSID', '1624380874', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624380874.664795;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"4ramjt5hp7fk0emt7pfk6afsvv";}}' ),
( '4s4lt9ic0hv7qa8k54510o97v7', 'PHPSESSID', '1624354440', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624354440.343639;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"4s4lt9ic0hv7qa8k54510o97v7";}}' ),
( '4tapvqrh74ldm55ab5gs54mqlv', 'PHPSESSID', '1624315327', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624315327.959211;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"4tapvqrh74ldm55ab5gs54mqlv";}}' ),
( '4ueomro28ectmqmv336e7n5723', 'PHPSESSID', '1624329159', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624329159.813944;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"4ueomro28ectmqmv336e7n5723";}}' ),
( '4v1q0iccqk55euh5hoojp3pkso', 'PHPSESSID', '1624324174', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624324173.988447;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"4v1q0iccqk55euh5hoojp3pkso";}}' ),
( '4vuff6ev6jdtct114jjl6jfcof', 'PHPSESSID', '1624347748', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624347747.982879;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"4vuff6ev6jdtct114jjl6jfcof";}}' ),
( '5175cu9aq7b04afq92jc287ib6', 'PHPSESSID', '1624329106', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624329106.511036;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"5175cu9aq7b04afq92jc287ib6";}}' ),
( '518ornkdccm73l6idi10tp9emq', 'PHPSESSID', '1624367767', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624367767.780944;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"518ornkdccm73l6idi10tp9emq";}}' ),
( '53kuj6m5d5a25455v98am9suui', 'PHPSESSID', '1624416223', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624416223.711085;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"53kuj6m5d5a25455v98am9suui";}}' ),
( '53njpqm152mej48p1e45p2q11p', 'PHPSESSID', '1624348254', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624348254.101927;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"53njpqm152mej48p1e45p2q11p";}}' ),
( '53vmjs8ak10ft1oqtdo7ash6fs', 'PHPSESSID', '1624369199', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624369199.155413;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"53vmjs8ak10ft1oqtdo7ash6fs";}}' ),
( '56gmqieh1atp5252ap5guut5rc', 'PHPSESSID', '1624340359', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624340359.488557;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"56gmqieh1atp5252ap5guut5rc";}}' ),
( '575p91otgl2jkiu8nq93q9mtbv', 'PHPSESSID', '1624341644', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624341643.976065;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"575p91otgl2jkiu8nq93q9mtbv";}}' ),
( '579nu5reul1v4haqrjdraf16sv', 'PHPSESSID', '1624368262', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624368261.985852;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"579nu5reul1v4haqrjdraf16sv";}}' ),
( '58729i6nbcdtnsrmou98mct3t5', 'PHPSESSID', '1624343314', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624343314.679798;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"58729i6nbcdtnsrmou98mct3t5";}}' ),
( '5flc3octvboc4gk7h0r1oob3vp', 'PHPSESSID', '1624368336', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624368336.356002;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"5flc3octvboc4gk7h0r1oob3vp";}}' ),
( '5g741lnans1hhs76n20ddhtb5c', 'PHPSESSID', '1624329390', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624329390.373622;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"5g741lnans1hhs76n20ddhtb5c";}}' ),
( '5gbgi0euknb22bdgg8ik7l7rtk', 'PHPSESSID', '1624378558', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624378558.106611;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"5gbgi0euknb22bdgg8ik7l7rtk";}}' ),
( '5ieur275pm5n9gjvhf7numpnl7', 'PHPSESSID', '1624352845', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624352845.867971;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"5ieur275pm5n9gjvhf7numpnl7";}}' ),
( '5mv2berr377ff01n5lksbr8855', 'PHPSESSID', '1624358217', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624358217.503736;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"5mv2berr377ff01n5lksbr8855";}}' ),
( '5o5sg4djuu3f450hduqq5ihofc', 'PHPSESSID', '1624354350', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624354350.330961;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"5o5sg4djuu3f450hduqq5ihofc";}}' ),
( '5q3masl8154pa11fjb3hjqtj5f', 'PHPSESSID', '1624347138', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624347138.599298;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"5q3masl8154pa11fjb3hjqtj5f";}}' ),
( '5q7gh0sj6mrsk1h2mv67s6idvm', 'PHPSESSID', '1624369567', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624369567.122695;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"5q7gh0sj6mrsk1h2mv67s6idvm";}}' ),
( '5quqd4lf6crs0gdvuifejl7apc', 'PHPSESSID', '1624365047', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624365047.267318;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"5quqd4lf6crs0gdvuifejl7apc";}}' ),
( '5rc0clvtk539pd3knh4ctrgd7e', 'PHPSESSID', '1624332109', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624332109.879518;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"5rc0clvtk539pd3knh4ctrgd7e";}}' ),
( '5vlgvhk59usvb6799c6vpm1bno', 'PHPSESSID', '1624419248', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624419248.748277;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"5vlgvhk59usvb6799c6vpm1bno";}}' ),
( '64v76oijnjm49v0lrgrh6ilc9p', 'PHPSESSID', '1624390835', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390835.898674;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"64v76oijnjm49v0lrgrh6ilc9p";}}' ),
( '651pm97tpj6cq6rqa79urf6go6', 'PHPSESSID', '1624419246', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624419246.449305;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"651pm97tpj6cq6rqa79urf6go6";}}' ),
( '66acmutrvqgn5k5v5m9h7ea0fs', 'PHPSESSID', '1624363680', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624363680.550153;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"66acmutrvqgn5k5v5m9h7ea0fs";}}' ),
( '66ad51qujqo5dni97v5737g8hb', 'PHPSESSID', '1624361919', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624361919.502488;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"66ad51qujqo5dni97v5737g8hb";}}' ),
( '66el9841edifbu68mj27la7dpa', 'PHPSESSID', '1624384566', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624384566.664805;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"66el9841edifbu68mj27la7dpa";}}' ),
( '68c1vldf2dn88351o1uv0eqquo', 'PHPSESSID', '1624417384', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624417384.501329;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"68c1vldf2dn88351o1uv0eqquo";}}' ),
( '6943pnia1afifnuvdlms1d3s3l', 'PHPSESSID', '1624380030', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624380030.246883;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"6943pnia1afifnuvdlms1d3s3l";}}' ),
( '69j1bu872dfmneemhsltasot3q', 'PHPSESSID', '1624423808', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624423808.937104;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"69j1bu872dfmneemhsltasot3q";}}' ),
( '6bksnj8g2hvuito6et0bje82d9', 'PHPSESSID', '1624373932', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624373932.876299;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"6bksnj8g2hvuito6et0bje82d9";}}' ),
( '6blkk10qjhijh995c2iihgsjbr', 'PHPSESSID', '1624419240', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624419240.974906;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"6blkk10qjhijh995c2iihgsjbr";}}' ),
( '6chpkdasl8k5695grr4llt8p2h', 'PHPSESSID', '1624391435', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624391435.424529;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"6chpkdasl8k5695grr4llt8p2h";}}' ),
( '6cv6hkl0uqiab39msfk2r2j6gi', 'PHPSESSID', '1624388039', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624388038.953836;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"6cv6hkl0uqiab39msfk2r2j6gi";}}' ),
( '6eoe35g6c1iqukip8a7cie630t', 'PHPSESSID', '1624332231', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624332231.327963;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"6eoe35g6c1iqukip8a7cie630t";}}' ),
( '6gfvq993kmgtbpgm4g6ku80mvm', 'PHPSESSID', '1624403300', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624403300.945347;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"6gfvq993kmgtbpgm4g6ku80mvm";}}' ),
( '6hvb80ltt2ndfihf9n5lb5vtih', 'PHPSESSID', '1624358011', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624358011.528094;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"6hvb80ltt2ndfihf9n5lb5vtih";}}' ),
( '6idbufgkvpah9va2cichsavnsg', 'PHPSESSID', '1624365972', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624365972.883281;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"6idbufgkvpah9va2cichsavnsg";}}' ),
( '6j664olqgq4q7ikhrqrgelt74o', 'PHPSESSID', '1624340813', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624340813.088586;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"6j664olqgq4q7ikhrqrgelt74o";}}' ),
( '6jnl4g764obeut9rah9rceg5ll', 'PHPSESSID', '1624382890', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624382890.173801;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"6jnl4g764obeut9rah9rceg5ll";}}' ),
( '6n2frvdgt5m784625g6lungvcd', 'PHPSESSID', '1624417944', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624417944.824367;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"6n2frvdgt5m784625g6lungvcd";}}' ),
( '6obqfh6ebh1t6278ib2qutkfjk', 'PHPSESSID', '1624390821', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390821.864372;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"6obqfh6ebh1t6278ib2qutkfjk";}}' ),
( '6pn70bq0tlgqgrtob4idt29vtq', 'PHPSESSID', '1624342861', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624342861.363056;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"6pn70bq0tlgqgrtob4idt29vtq";}}' ),
( '6spo738ehgnnkbsdm1ev7h39tp', 'PHPSESSID', '1624409230', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624409230.351987;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"6spo738ehgnnkbsdm1ev7h39tp";}}' ),
( '6su2939hai687dgi05rr4anad3', 'PHPSESSID', '1624395685', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624395685.365058;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"6su2939hai687dgi05rr4anad3";}}' ),
( '6u3j7qeak132idltantq5cc06n', 'PHPSESSID', '1624328175', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624328175.433117;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"6u3j7qeak132idltantq5cc06n";}}' ),
( '6uk929i7rg00ugro0q9dbfkqpo', 'PHPSESSID', '1624333477', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333477.438955;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"6uk929i7rg00ugro0q9dbfkqpo";}}' ),
( '70tb1imjsq79nvvlt8pq707mu4', 'PHPSESSID', '1624416610', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624416610.66327;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"70tb1imjsq79nvvlt8pq707mu4";}}' ),
( '74vgbi2444lqgnd13bcbiv2aj5', 'PHPSESSID', '1624347350', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624347350.790107;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"74vgbi2444lqgnd13bcbiv2aj5";}}' ),
( '754lj7n8pl185n8ilrqu3p96g3', 'PHPSESSID', '1624346865', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624346865.685342;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"754lj7n8pl185n8ilrqu3p96g3";}}' ),
( '764ngr89r06k6ieiniuhj8evf6', 'PHPSESSID', '1624339039', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624339039.177622;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"764ngr89r06k6ieiniuhj8evf6";}}' ),
( '76l5k6n4jo9g87qhc4arkni2lf', 'PHPSESSID', '1624422057', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624422057.289655;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"76l5k6n4jo9g87qhc4arkni2lf";}}' ),
( '7bghp6m7v91u8k1v1tftthohp7', 'PHPSESSID', '1624338497', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624338497.045544;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"7bghp6m7v91u8k1v1tftthohp7";}}' ),
( '7dhiroe81sj0hu50bai3fmdi74', 'PHPSESSID', '1624403445', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624403445.763933;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"7dhiroe81sj0hu50bai3fmdi74";}}' ),
( '7hv5litt6iefg77k0pbgdpnfh6', 'PHPSESSID', '1624416208', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624416208.895877;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"7hv5litt6iefg77k0pbgdpnfh6";}}' ),
( '7mvcdka94gnm7ce1di695bmius', 'PHPSESSID', '1624354423', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624354423.476594;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"7mvcdka94gnm7ce1di695bmius";}}' ),
( '7s6vr1jr568u1127vsj3lbmv9p', 'PHPSESSID', '1624365397', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624365397.628877;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"7s6vr1jr568u1127vsj3lbmv9p";}}' ),
( '7svcfrd4c756c1sup9nk3bij2i', 'PHPSESSID', '1624409229', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624409229.350363;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"7svcfrd4c756c1sup9nk3bij2i";}}' ),
( '7u8034srnptnu2ecdhoc1esvms', 'PHPSESSID', '1624315328', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624315328.752767;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"7u8034srnptnu2ecdhoc1esvms";}}' ),
( '7vgugrac6vp91ah6l7il5cgch1', 'PHPSESSID', '1624339732', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624339732.91413;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"7vgugrac6vp91ah6l7il5cgch1";}}' ),
( '8253fnbttbsg8bcpdrmo3m8r3l', 'PHPSESSID', '1624390849', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390849.444474;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"8253fnbttbsg8bcpdrmo3m8r3l";}}' ),
( '830qri1da4cm88itcccb5ht45d', 'PHPSESSID', '1624346469', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624346469.610414;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"830qri1da4cm88itcccb5ht45d";}}' ),
( '839pj3iupbs0jf0tpg6ba7cgp2', 'PHPSESSID', '1624405526', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624405525.969157;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"839pj3iupbs0jf0tpg6ba7cgp2";}}' ),
( '853j9k550r509n7nb9pciku5dg', 'PHPSESSID', '1624340359', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624340359.123511;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"853j9k550r509n7nb9pciku5dg";}}' ),
( '86870ef1g90otr332kobgoorhi', 'PHPSESSID', '1624347776', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624347776.005309;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"86870ef1g90otr332kobgoorhi";}}' ),
( '88q58drinsqbb88usp2ndvqa5c', 'PHPSESSID', '1624415478', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624415478.710279;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"88q58drinsqbb88usp2ndvqa5c";}}' ),
( '8aasn8fp044ulae6nic66pk311', 'PHPSESSID', '1624350159', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624350159.213335;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"8aasn8fp044ulae6nic66pk311";}}' ),
( '8ccs8il1jspm0g8k9ndg2il9en', 'PHPSESSID', '1624316800', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624316799.895027;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"8ccs8il1jspm0g8k9ndg2il9en";}}' ),
( '8g933n5ul311v0d8cn3f053uq4', 'PHPSESSID', '1624353231', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624353231.969075;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"8g933n5ul311v0d8cn3f053uq4";}}' ),
( '8h4im4j6jica2dgpgqndb4ej8l', 'PHPSESSID', '1624351296', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624351296.120234;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"8h4im4j6jica2dgpgqndb4ej8l";}}' ),
( '8hqegnsu6s432alc9jiclcp3e2', 'PHPSESSID', '1624350677', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624350677.164306;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"8hqegnsu6s432alc9jiclcp3e2";}}' ),
( '8idvb4dqevmrl6dfpcm1nt07sc', 'PHPSESSID', '1624387432', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624387432.265682;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"8idvb4dqevmrl6dfpcm1nt07sc";}}' ),
( '8mebnbfmu6cj3ue4glpmjgvi6m', 'PHPSESSID', '1624353231', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624353231.899464;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"8mebnbfmu6cj3ue4glpmjgvi6m";}}' ),
( '8stcc11gpq8jro28hg253nnbpv', 'PHPSESSID', '1624369866', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624369866.49133;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"8stcc11gpq8jro28hg253nnbpv";}}' ),
( '8t72r26oi86am94qi4igu5mhfo', 'PHPSESSID', '1624359838', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624359838.446874;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"8t72r26oi86am94qi4igu5mhfo";}}' ),
( '903m8iluv1fjlgfb515v7j4qul', 'PHPSESSID', '1624392433', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624392433.107281;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"903m8iluv1fjlgfb515v7j4qul";}}' ),
( '90sgjmcdk68rogtf8soh18bcdm', 'PHPSESSID', '1624378559', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624378559.573767;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"90sgjmcdk68rogtf8soh18bcdm";}}' ),
( '92g3r364118jl2u20dl4212aq4', 'PHPSESSID', '1624373611', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624373611.795107;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"92g3r364118jl2u20dl4212aq4";}}' ),
( '93n0g26n2u3uq9iv4uqc3l4d31', 'PHPSESSID', '1624421633', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624421633.127081;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"93n0g26n2u3uq9iv4uqc3l4d31";}}' ),
( '96a9jpe119fp0lpvr6alikqqng', 'PHPSESSID', '1624339041', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624339041.100111;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"96a9jpe119fp0lpvr6alikqqng";}}' ),
( '980iieivi3vv68200eagaqn41h', 'PHPSESSID', '1624415479', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624415479.703616;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"980iieivi3vv68200eagaqn41h";}}' ),
( '987rton2f3n2e1h32t2ao20hjs', 'PHPSESSID', '1624424011', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624424011.864591;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"987rton2f3n2e1h32t2ao20hjs";}}' ),
( '9alfet43n8tcl4r5upd3lbdc1n', 'PHPSESSID', '1624419239', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624419239.303537;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"9alfet43n8tcl4r5upd3lbdc1n";}}' ),
( '9b4hrihs1uj390slb1pq40va18', 'PHPSESSID', '1624324174', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624324174.005146;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"9b4hrihs1uj390slb1pq40va18";}}' ),
( '9bo4uqm3kh6jc1pkc3k829hb9h', 'PHPSESSID', '1624362447', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624362447.456138;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"9bo4uqm3kh6jc1pkc3k829hb9h";}}' ),
( '9h4r94dr5a0gja5qbabejtevmk', 'PHPSESSID', '1624409228', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624409228.258633;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"9h4r94dr5a0gja5qbabejtevmk";}}' ),
( '9jg9gv27secsg7tv41it05ke8d', 'PHPSESSID', '1624384567', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624384567.646904;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"9jg9gv27secsg7tv41it05ke8d";}}' ),
( '9k8v5dc6bc23vf2di3f22p2bs7', 'PHPSESSID', '1624347396', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624347396.790622;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"9k8v5dc6bc23vf2di3f22p2bs7";}}' ),
( '9mjbtamfad0jrichub8m9h8jk9', 'PHPSESSID', '1624353229', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624353229.080409;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"9mjbtamfad0jrichub8m9h8jk9";}}' ),
( '9qn9ntql9oq8ejg299vpp8o01i', 'PHPSESSID', '1624409229', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624409229.249732;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"9qn9ntql9oq8ejg299vpp8o01i";}}' ),
( '9rqr2v5uccs3g6hh4d07d758bb', 'PHPSESSID', '1624398674', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624398674.59432;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"9rqr2v5uccs3g6hh4d07d758bb";}}' ),
( '9sfdvigigf8kbs01d1b5cbn761', 'PHPSESSID', '1624409227', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624409227.29623;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"9sfdvigigf8kbs01d1b5cbn761";}}' ),
( '9uskvk3b0reutl88br5l0f9585', 'PHPSESSID', '1624352089', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624352089.639614;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"9uskvk3b0reutl88br5l0f9585";}}' ),
( '9vog7s9lvoa4odjqf8g0535308', 'PHPSESSID', '1624328677', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624328677.771255;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"9vog7s9lvoa4odjqf8g0535308";}}' ),
( 'a1q5gauaqd0er287u1pqcmr4rc', 'PHPSESSID', '1624365051', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624365051.544421;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"a1q5gauaqd0er287u1pqcmr4rc";}}' ),
( 'a2n8svio3irgkqph9q48tlck0f', 'PHPSESSID', '1624416208', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624416208.164409;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"a2n8svio3irgkqph9q48tlck0f";}}' ),
( 'a7j1mtkc79qqftoife71hhjn23', 'PHPSESSID', '1624416240', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624416240.957601;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"a7j1mtkc79qqftoife71hhjn23";}}' ),
( 'a8fc2jesm1vlfn5ig1rn0mtu55', 'PHPSESSID', '1624338497', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624338497.401726;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"a8fc2jesm1vlfn5ig1rn0mtu55";}}' ),
( 'a9adt27nnde3l2fjh142q7fglt', 'PHPSESSID', '1624416250', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624416250.595318;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"a9adt27nnde3l2fjh142q7fglt";}}' ),
( 'a9qdd29uetr8hvuss0n9de5poq', 'PHPSESSID', '1624380512', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624380512.819264;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"a9qdd29uetr8hvuss0n9de5poq";}}' ),
( 'achiiucepa07g2fnlv5a6klaeq', 'PHPSESSID', '1624338120', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624338120.71015;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"achiiucepa07g2fnlv5a6klaeq";}}' ),
( 'aeblqsaaeejl0am3fj098kv156', 'PHPSESSID', '1624327929', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624327929.560172;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"aeblqsaaeejl0am3fj098kv156";}}' ),
( 'ah9l4so3vhrkrug0d4bq54n7ot', 'PHPSESSID', '1624419249', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624419249.966254;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ah9l4so3vhrkrug0d4bq54n7ot";}}' ),
( 'aja5ba600chft94kiha8m08rtf', 'PHPSESSID', '1624384568', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624384568.89279;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"aja5ba600chft94kiha8m08rtf";}}' ),
( 'anpmno3n8uu6s8sf3tkog1vpjr', 'PHPSESSID', '1624343310', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624343310.594362;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"anpmno3n8uu6s8sf3tkog1vpjr";}}' ),
( 'anrbrrphpo19l994g8d3gk4m91', 'PHPSESSID', '1624328829', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624328829.507432;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"anrbrrphpo19l994g8d3gk4m91";}}' ),
( 'ap6ksgkqvp81bkl3omsh8okvsu', 'PHPSESSID', '1624337465', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624337465.784346;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ap6ksgkqvp81bkl3omsh8okvsu";}}' ),
( 'as4ds2n0srrat927dio08sl1ps', 'PHPSESSID', '1624419244', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624419244.092904;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"as4ds2n0srrat927dio08sl1ps";}}' ),
( 'askns854lsf1o6ku4ph9v76nsj', 'PHPSESSID', '1624327672', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624327672.916672;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"askns854lsf1o6ku4ph9v76nsj";}}' ),
( 'avduicbf0he5lruo4m0pc8mmbt', 'PHPSESSID', '1624361520', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624361519.982968;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"avduicbf0he5lruo4m0pc8mmbt";}}' ),
( 'b0veubiasj0vjn2sta1av2cal3', 'PHPSESSID', '1624373613', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624373613.032945;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"b0veubiasj0vjn2sta1av2cal3";}}' ),
( 'b3voqf19mekhnmvcbq93jfcaqd', 'PHPSESSID', '1624328805', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624328805.256454;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"b3voqf19mekhnmvcbq93jfcaqd";}}' ),
( 'b8vrql0vu5eveo17jp72mrdhn1', 'PHPSESSID', '1624370105', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624370105.280055;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"b8vrql0vu5eveo17jp72mrdhn1";}}' ),
( 'bb0a0agld67obqa8d7kcgla8ss', 'PHPSESSID', '1624395134', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624395134.802944;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"bb0a0agld67obqa8d7kcgla8ss";}}' ),
( 'bb9ldtu2ok5imimiahfmaaub7m', 'PHPSESSID', '1624316924', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624316924.47348;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"bb9ldtu2ok5imimiahfmaaub7m";}}' ),
( 'bbecuhglijabqv6cctpbn5p8s2', 'PHPSESSID', '1624353230', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624353230.911211;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"bbecuhglijabqv6cctpbn5p8s2";}}' ),
( 'bckm1rlmobb64nbiqlojbgi1s7', 'PHPSESSID', '1624397309', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624397309.389971;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"bckm1rlmobb64nbiqlojbgi1s7";}}' ),
( 'bekckjmgrkgh68gouk1chev59l', 'PHPSESSID', '1624403659', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624403659.313091;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"bekckjmgrkgh68gouk1chev59l";}}' ),
( 'bf1uge5tigul5vm08grd3n39st', 'PHPSESSID', '1624409230', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624409230.274289;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"bf1uge5tigul5vm08grd3n39st";}}' ),
( 'bg4mkimdihjer389e7bkqe6mch', 'PHPSESSID', '1624332379', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624332379.183342;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"bg4mkimdihjer389e7bkqe6mch";}}' ),
( 'bjbvksmkvl3t7c6v7kk56tfnpp', 'PHPSESSID', '1624388524', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624388524.344372;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"bjbvksmkvl3t7c6v7kk56tfnpp";}}' ),
( 'bk6e150lmp6tq2apbhtqall4bo', 'PHPSESSID', '1624373964', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624373964.155513;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"bk6e150lmp6tq2apbhtqall4bo";}}' ),
( 'bl9aoonkgpkivq2v4p4531c452', 'PHPSESSID', '1624342840', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624342840.2266;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"bl9aoonkgpkivq2v4p4531c452";}}' ),
( 'blhcaasmn43bu1o7r5nisolipb', 'PHPSESSID', '1642057447', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1642057447.719415;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"blhcaasmn43bu1o7r5nisolipb";}}Zend_Auth|C:23:"Zend\\Stdlib\\ArrayObject":388:{a:4:{s:7:"storage";a:1:{s:7:"storage";a:5:{s:7:"user_id";s:1:"1";s:4:"name";s:5:"qwipo";s:5:"email";s:17:"Qwipodm@gmail.com";s:4:"role";s:1:"1";s:10:"image_path";s:36:"/data/images/3415men--mena-menu-.jpg";}}s:4:"flag";i:2;s:13:"iteratorClass";s:13:"ArrayIterator";s:19:"protectedProperties";a:4:{i:0;s:7:"storage";i:1;s:4:"flag";i:2;s:13:"iteratorClass";i:3;s:19:"protectedProperties";}}}' ),
( 'blvfdbv9mdmkd8q66huk07o4o2', 'PHPSESSID', '1624420908', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624420908.616691;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"blvfdbv9mdmkd8q66huk07o4o2";}}' ),
( 'bmi6b8vfifvv6tbmg4f2od85im', 'PHPSESSID', '1624381421', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624381421.856709;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"bmi6b8vfifvv6tbmg4f2od85im";}}' ),
( 'bmm3ab117r3vhffgem3vurabno', 'PHPSESSID', '1624318034', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624318034.676689;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"bmm3ab117r3vhffgem3vurabno";}}' ),
( 'bmr70ivm12ht2k7hh6655v5ldv', 'PHPSESSID', '1624411233', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624411233.511139;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"bmr70ivm12ht2k7hh6655v5ldv";}}' ),
( 'bne01c58jn20r1cbrfga3hnp2m', 'PHPSESSID', '1624333900', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333900.289998;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"bne01c58jn20r1cbrfga3hnp2m";}}' ),
( 'bno286ljjt8h7c0ir94cjkl1rt', 'PHPSESSID', '1624415295', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624415295.592454;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"bno286ljjt8h7c0ir94cjkl1rt";}}' ),
( 'br0lbi9c8otdg3mpd2vp1qflci', 'PHPSESSID', '1624341643', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624341643.544929;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"br0lbi9c8otdg3mpd2vp1qflci";}}' ),
( 'bsrrprtpobv1jc0bsu04o3i2gg', 'PHPSESSID', '1624399164', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624399164.009038;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"bsrrprtpobv1jc0bsu04o3i2gg";}}' ),
( 'bucq4d19dgknk3nfq43r6dpa1c', 'PHPSESSID', '1624392869', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624392869.401992;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"bucq4d19dgknk3nfq43r6dpa1c";}}' ),
( 'buenhec3k47lalv4qusdhe46u8', 'PHPSESSID', '1624411269', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624411269.173441;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"buenhec3k47lalv4qusdhe46u8";}}' ),
( 'bvt1vt1j6gng884fgm7jijs0sn', 'PHPSESSID', '1624414501', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624414501.293971;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"bvt1vt1j6gng884fgm7jijs0sn";}}' ),
( 'c0vkktq8qri094udr192h0nth6', 'PHPSESSID', '1624330118', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624330118.05835;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"c0vkktq8qri094udr192h0nth6";}}' ),
( 'c15pd6rk3jr124nc5v24eo1ja8', 'PHPSESSID', '1624390880', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390880.261587;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"c15pd6rk3jr124nc5v24eo1ja8";}}' ),
( 'c2rn06rbe4j3bk7jcllh6m3epg', 'PHPSESSID', '1624408962', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624408962.209338;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"c2rn06rbe4j3bk7jcllh6m3epg";}}' ),
( 'c3i5it011fh2602eh612dcq6hv', 'PHPSESSID', '1624358225', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624358225.321283;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"c3i5it011fh2602eh612dcq6hv";}}' ),
( 'c6dop17gce4mv43ernfpqopa26', 'PHPSESSID', '1624331032', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624331032.835848;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"c6dop17gce4mv43ernfpqopa26";}}' ),
( 'cdtpme0mml7q62614rprbki98c', 'PHPSESSID', '1624330535', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624330535.41565;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"cdtpme0mml7q62614rprbki98c";}}' );

INSERT INTO `session`(`id`,`name`,`modified`,`lifetime`,`data`) VALUES 
( 'cg84l5a2ffi0j7m8626nd6s92g', 'PHPSESSID', '1624415295', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624415295.878879;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"cg84l5a2ffi0j7m8626nd6s92g";}}' ),
( 'cha86ubultqkgtl5mmv47n1phv', 'PHPSESSID', '1624377052', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624377052.305106;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"cha86ubultqkgtl5mmv47n1phv";}}' ),
( 'cor940v83pjvrd71g4mstkdkms', 'PHPSESSID', '1624415476', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624415476.808192;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"cor940v83pjvrd71g4mstkdkms";}}' ),
( 'crs3e9s1anaq4dt95pjafc0cnc', 'PHPSESSID', '1624346591', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624346591.719476;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"crs3e9s1anaq4dt95pjafc0cnc";}}' ),
( 'cs31oh4gliu089k2fm4od6agu8', 'PHPSESSID', '1624316800', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624316800.191551;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"cs31oh4gliu089k2fm4od6agu8";}}' ),
( 'cs8lkqf5mo9o1fjhsbmcl3joov', 'PHPSESSID', '1624416207', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624416207.493929;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"cs8lkqf5mo9o1fjhsbmcl3joov";}}' ),
( 'd041s65tp9t9ln1dtn5gfe4pb6', 'PHPSESSID', '1624381423', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624381423.13679;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"d041s65tp9t9ln1dtn5gfe4pb6";}}' ),
( 'd3rbirhd5mvut79g5irntmg735', 'PHPSESSID', '1624422757', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624422756.979469;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"d3rbirhd5mvut79g5irntmg735";}}' ),
( 'd6uvl7qufmuibsbu6r671te3qf', 'PHPSESSID', '1624375654', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624375654.305433;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"d6uvl7qufmuibsbu6r671te3qf";}}' ),
( 'd702fdkqqj8ngoon63fgjqkgt8', 'PHPSESSID', '1624423808', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624423808.670458;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"d702fdkqqj8ngoon63fgjqkgt8";}}' ),
( 'd8orclktu39gr0ehatbhlg3qr1', 'PHPSESSID', '1624373060', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624373060.764444;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"d8orclktu39gr0ehatbhlg3qr1";}}' ),
( 'd951q9rk67l5995si9ll693j3q', 'PHPSESSID', '1624347748', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624347748.081993;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"d951q9rk67l5995si9ll693j3q";}}' ),
( 'da0d5q0mun5pqd3fpcqss64e7i', 'PHPSESSID', '1624345785', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624345785.10661;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"da0d5q0mun5pqd3fpcqss64e7i";}}' ),
( 'daq62pul4q84feubd2afbtqsal', 'PHPSESSID', '1624412787', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624412787.66143;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"daq62pul4q84feubd2afbtqsal";}}' ),
( 'dfe4h5n3va3ad3p74bj0pks9fn', 'PHPSESSID', '1624363317', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624363317.401699;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"dfe4h5n3va3ad3p74bj0pks9fn";}}' ),
( 'dfg9add6njvp37iv6irusd3ek8', 'PHPSESSID', '1624351164', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624351164.546113;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"dfg9add6njvp37iv6irusd3ek8";}}' ),
( 'dhk74p9p512dedp51rc0iuls5o', 'PHPSESSID', '1624356010', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624356010.089192;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"dhk74p9p512dedp51rc0iuls5o";}}' ),
( 'dj28nfidgv50378qjtk4639pim', 'PHPSESSID', '1624416253', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624416253.314324;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"dj28nfidgv50378qjtk4639pim";}}' ),
( 'dl6g24anak73ivq349oo4s8c7q', 'PHPSESSID', '1624328004', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624328004.40547;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"dl6g24anak73ivq349oo4s8c7q";}}' ),
( 'dlkluuqnrln4pvtgnkiq08aiul', 'PHPSESSID', '1624327168', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624327168.036381;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"dlkluuqnrln4pvtgnkiq08aiul";}}' ),
( 'dnvmvtjq8pc2g1h6mdf7afitpe', 'PHPSESSID', '1624415479', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624415479.732417;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"dnvmvtjq8pc2g1h6mdf7afitpe";}}' ),
( 'drk462p2mktlnjgnkpn1arj2v3', 'PHPSESSID', '1624378559', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624378559.573958;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"drk462p2mktlnjgnkpn1arj2v3";}}' ),
( 'drnc82lbi2qikblbndvdlgilf4', 'PHPSESSID', '1624373610', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624373610.691994;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"drnc82lbi2qikblbndvdlgilf4";}}' ),
( 'dvg0tisepg9envtdpvi8skgjph', 'PHPSESSID', '1624363304', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624363304.418619;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"dvg0tisepg9envtdpvi8skgjph";}}' ),
( 'e0pgvq4oasoo27v4kpn0vkpp0p', 'PHPSESSID', '1624319523', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624319523.705949;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"e0pgvq4oasoo27v4kpn0vkpp0p";}}' ),
( 'e2sifsh51uv8o9fujfupfup0e7', 'PHPSESSID', '1624372257', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624372257.911184;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"e2sifsh51uv8o9fujfupfup0e7";}}' ),
( 'e74bp9pur87fai6k9riiqj68kd', 'PHPSESSID', '1624324173', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624324173.014135;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"e74bp9pur87fai6k9riiqj68kd";}}' ),
( 'e77m14uhedd4jbo0k5tkhftptp', 'PHPSESSID', '1624347776', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624347776.004897;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"e77m14uhedd4jbo0k5tkhftptp";}}' ),
( 'e7eoub9idjju7t87btvbslfo2c', 'PHPSESSID', '1624327907', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624327906.985803;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"e7eoub9idjju7t87btvbslfo2c";}}' ),
( 'e81a390qvc9u6lokgjbunqh9i7', 'PHPSESSID', '1624335490', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624335490.827875;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"e81a390qvc9u6lokgjbunqh9i7";}}' ),
( 'e8a0472as1upktmormj7hej8i8', 'PHPSESSID', '1624373611', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624373611.469637;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"e8a0472as1upktmormj7hej8i8";}}' ),
( 'eamd1mbq9osbkk5d3eoj3jvg8k', 'PHPSESSID', '1624342859', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624342859.713371;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"eamd1mbq9osbkk5d3eoj3jvg8k";}}' ),
( 'ebq2pq9f9tav8nem3gbma3c81c', 'PHPSESSID', '1624352144', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624352144.40317;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ebq2pq9f9tav8nem3gbma3c81c";}}' ),
( 'ebu3oivjsq4m3kjamcskqatbbk', 'PHPSESSID', '1624349466', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624349466.314371;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ebu3oivjsq4m3kjamcskqatbbk";}}' ),
( 'edhflvv4idnsqv51khom7pd069', 'PHPSESSID', '1624402824', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624402824.157618;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"edhflvv4idnsqv51khom7pd069";}}' ),
( 'eerpeg6eh9ge9r86b8jbs0bsul', 'PHPSESSID', '1624373032', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624373032.914531;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"eerpeg6eh9ge9r86b8jbs0bsul";}}' ),
( 'egbr3bi84polrrm18q33t8i86f', 'PHPSESSID', '1624390578', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390577.979401;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"egbr3bi84polrrm18q33t8i86f";}}' ),
( 'ej273b5lt9c5ta3bv3fejvjf8g', 'PHPSESSID', '1624397307', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624397307.372915;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ej273b5lt9c5ta3bv3fejvjf8g";}}' ),
( 'el248pvde9g5d5su10n109ko5k', 'PHPSESSID', '1624352617', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624352617.814569;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"el248pvde9g5d5su10n109ko5k";}}' ),
( 'eq5mmm36sl0ttcs06qpdo2lqrd', 'PHPSESSID', '1624350125', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624350125.654769;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"eq5mmm36sl0ttcs06qpdo2lqrd";}}' ),
( 'er5q315kqd399vb25fs4ialh9c', 'PHPSESSID', '1624337963', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624337963.273743;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"er5q315kqd399vb25fs4ialh9c";}}' ),
( 'eseg1i6dcc1sm6qs1r03gk8mmc', 'PHPSESSID', '1624406132', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624406132.288475;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"eseg1i6dcc1sm6qs1r03gk8mmc";}}' ),
( 'ev2hf7e0ehdd8ipmjq1k1bbr7m', 'PHPSESSID', '1624322545', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624322545.932751;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ev2hf7e0ehdd8ipmjq1k1bbr7m";}}' ),
( 'f02c5jb4tcltb8amtbail7ujmn', 'PHPSESSID', '1624357367', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624357367.894292;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"f02c5jb4tcltb8amtbail7ujmn";}}' ),
( 'f1qq2i8jp6q3v738qj87hhmjnn', 'PHPSESSID', '1624422059', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624422059.461042;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"f1qq2i8jp6q3v738qj87hhmjnn";}}' ),
( 'f258jc5g98ucg7bfvvntmunrrp', 'PHPSESSID', '1624325027', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624325027.898078;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"f258jc5g98ucg7bfvvntmunrrp";}}' ),
( 'f2oo7jldtei3qn6of9sjo4bu94', 'PHPSESSID', '1624358224', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624358224.624261;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"f2oo7jldtei3qn6of9sjo4bu94";}}' ),
( 'f55das1h7p5p3cvnct7gba0epu', 'PHPSESSID', '1624390989', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390989.788611;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"f55das1h7p5p3cvnct7gba0epu";}}' ),
( 'f6mgbpbhiuo1pjtq9n1vi6eib3', 'PHPSESSID', '1624350814', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624350814.202864;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"f6mgbpbhiuo1pjtq9n1vi6eib3";}}' ),
( 'f6oi4s33j4vfau6mmbmaufefma', 'PHPSESSID', '1624347036', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624347036.218777;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"f6oi4s33j4vfau6mmbmaufefma";}}' ),
( 'f8pjm2fllravbibj7k4088him4', 'PHPSESSID', '1624354004', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624354004.795233;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"f8pjm2fllravbibj7k4088him4";}}' ),
( 'fc24tffe1o88869rlnpi9tvjm7', 'PHPSESSID', '1624370632', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624370632.82355;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"fc24tffe1o88869rlnpi9tvjm7";}}' ),
( 'fc4l45ak7o6r38d1qn57ih998c', 'PHPSESSID', '1624424205', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624424205.927944;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"fc4l45ak7o6r38d1qn57ih998c";}}' ),
( 'fc9ad6pssqer964ce3c0m7o82k', 'PHPSESSID', '1624335130', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624335130.23292;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"fc9ad6pssqer964ce3c0m7o82k";}}' ),
( 'fcml8s5h8qodjdav27jka801tn', 'PHPSESSID', '1624333643', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333643.487943;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"fcml8s5h8qodjdav27jka801tn";}}' ),
( 'fd5h5l5j7hk7s9uijjdi3n5nbf', 'PHPSESSID', '1624340893', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624340893.51533;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"fd5h5l5j7hk7s9uijjdi3n5nbf";}}' ),
( 'feb2onpsritt9gq09ni0i9077t', 'PHPSESSID', '1624361960', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624361960.893147;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"feb2onpsritt9gq09ni0i9077t";}}' ),
( 'fejc42a5hgdb533iid4vammbr8', 'PHPSESSID', '1624424205', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624424205.930568;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"fejc42a5hgdb533iid4vammbr8";}}' ),
( 'feojhlah4e6b6spuktdbp6f88j', 'PHPSESSID', '1624328859', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624328859.655591;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"feojhlah4e6b6spuktdbp6f88j";}}' ),
( 'fm4v67me9m3nv3n7cepasj8ecd', 'PHPSESSID', '1624421389', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624421389.908889;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"fm4v67me9m3nv3n7cepasj8ecd";}}' ),
( 'foi4lo87s45mqmja12bra6dm09', 'PHPSESSID', '1624390583', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390583.388988;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"foi4lo87s45mqmja12bra6dm09";}}' ),
( 'frolonc038b7gklevuv3jrnkk3', 'PHPSESSID', '1624365555', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624365555.701702;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"frolonc038b7gklevuv3jrnkk3";}}' ),
( 'fuesf22kepn7ju0f4me1ggn3vo', 'PHPSESSID', '1624383230', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624383230.928536;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"fuesf22kepn7ju0f4me1ggn3vo";}}' ),
( 'fus3bj8a06bjgnhquh49f0dkn3', 'PHPSESSID', '1624337470', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624337470.294229;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"fus3bj8a06bjgnhquh49f0dkn3";}}' ),
( 'g1l1k5u9o67i7hdd5mknpc3pq9', 'PHPSESSID', '1624351784', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624351784.289023;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"g1l1k5u9o67i7hdd5mknpc3pq9";}}' ),
( 'g3aj1p9bbomadq4i30qtf917rl', 'PHPSESSID', '1624341643', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624341643.338545;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"g3aj1p9bbomadq4i30qtf917rl";}}' ),
( 'g6bjhut43mv7lafctlji7rc1lg', 'PHPSESSID', '1624327540', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624327540.900419;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"g6bjhut43mv7lafctlji7rc1lg";}}' ),
( 'g6ufoaqc6io3r090a7gdn7fj2c', 'PHPSESSID', '1624333646', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333646.908654;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"g6ufoaqc6io3r090a7gdn7fj2c";}}' ),
( 'g7f8ut416vaa1rg9b7n0vt8gcq', 'PHPSESSID', '1624363689', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624363689.415971;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"g7f8ut416vaa1rg9b7n0vt8gcq";}}' ),
( 'g8jaemg0c64e4sgc5f175qb71g', 'PHPSESSID', '1624415478', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624415478.63077;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"g8jaemg0c64e4sgc5f175qb71g";}}' ),
( 'g8lj87op61le0lg4kucequeqr6', 'PHPSESSID', '1624397310', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624397310.457177;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"g8lj87op61le0lg4kucequeqr6";}}' ),
( 'g8o6rqd6vuisvms2fs6j9gkbtd', 'PHPSESSID', '1624399163', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624399163.775689;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"g8o6rqd6vuisvms2fs6j9gkbtd";}}' ),
( 'g8u1ts0ssqujjag3bnj812q23m', 'PHPSESSID', '1624395134', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624395134.595573;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"g8u1ts0ssqujjag3bnj812q23m";}}' ),
( 'gddsh0mh1rhlc1qb9mnjo1daaa', 'PHPSESSID', '1624357544', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624357544.248852;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"gddsh0mh1rhlc1qb9mnjo1daaa";}}' ),
( 'ggg1r749pp8694dg0hutg87k0m', 'PHPSESSID', '1624415550', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624415550.641302;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ggg1r749pp8694dg0hutg87k0m";}}' ),
( 'ggmk5go2u5i9pvi10ct1sveml7', 'PHPSESSID', '1624418430', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624418430.658828;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ggmk5go2u5i9pvi10ct1sveml7";}}' ),
( 'gipkugs3d5goq6i2tj25g49f4j', 'PHPSESSID', '1624319523', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624319522.992524;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"gipkugs3d5goq6i2tj25g49f4j";}}' ),
( 'gjfv3sc2gqpchmbnvg01rg9ta2', 'PHPSESSID', '1624371754', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624371754.361001;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"gjfv3sc2gqpchmbnvg01rg9ta2";}}' ),
( 'gjkd7kd3s0kp9h96joge4fdhu1', 'PHPSESSID', '1624346594', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624346594.671582;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"gjkd7kd3s0kp9h96joge4fdhu1";}}' ),
( 'gjogtfn4t4t1o19v6g4a27tkb9', 'PHPSESSID', '1624331033', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624331033.146267;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"gjogtfn4t4t1o19v6g4a27tkb9";}}' ),
( 'gkgqkv26saagk5snueufj291e2', 'PHPSESSID', '1624361544', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624361544.317916;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"gkgqkv26saagk5snueufj291e2";}}' ),
( 'gllhcg9ful15pgts05chef2oni', 'PHPSESSID', '1624406846', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624406846.488379;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"gllhcg9ful15pgts05chef2oni";}}' ),
( 'gm6d5sp6cr3ol6o36b62c5qlfd', 'PHPSESSID', '1624402817', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624402817.727541;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"gm6d5sp6cr3ol6o36b62c5qlfd";}}' ),
( 'gmntbrrgmc0kfrt2eouumnhkln', 'PHPSESSID', '1624423905', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624423905.376561;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"gmntbrrgmc0kfrt2eouumnhkln";}}' ),
( 'gpi1gpp2v529q4bepu32njsvhr', 'PHPSESSID', '1624368764', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624368764.601637;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"gpi1gpp2v529q4bepu32njsvhr";}}' ),
( 'guco7htbddbs1qma606v1ir8ec', 'PHPSESSID', '1624402823', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624402823.601656;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"guco7htbddbs1qma606v1ir8ec";}}' ),
( 'h0j19iq93mc4c1us89gihhu70n', 'PHPSESSID', '1624332833', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624332833.187023;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"h0j19iq93mc4c1us89gihhu70n";}}' ),
( 'h1q811mvoi0u700ev2o259arv3', 'PHPSESSID', '1624348041', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624348041.489782;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"h1q811mvoi0u700ev2o259arv3";}}' ),
( 'h2an4h1m2302pfete4nqggc1e9', 'PHPSESSID', '1624419242', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624419242.620095;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"h2an4h1m2302pfete4nqggc1e9";}}' ),
( 'h5jk57f1aclhtngk9dqtjf17bv', 'PHPSESSID', '1624363689', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624363689.398597;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"h5jk57f1aclhtngk9dqtjf17bv";}}' ),
( 'h8cat5r2lc6bo69b7jdcrtk4d8', 'PHPSESSID', '1624390578', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390578.006851;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"h8cat5r2lc6bo69b7jdcrtk4d8";}}' ),
( 'h9o3rapnv1254msc7b3b69eun2', 'PHPSESSID', '1624371933', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624371933.760129;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"h9o3rapnv1254msc7b3b69eun2";}}' ),
( 'h9u42hggod2k67ckfssfsacmqf', 'PHPSESSID', '1624353230', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624353230.084484;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"h9u42hggod2k67ckfssfsacmqf";}}' ),
( 'hbvuhfbmmram8l554sa0c4f189', 'PHPSESSID', '1624423809', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624423808.981343;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"hbvuhfbmmram8l554sa0c4f189";}}' ),
( 'hdt1frgvroj3eg868g74oresqg', 'PHPSESSID', '1624373586', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624373586.411466;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"hdt1frgvroj3eg868g74oresqg";}}' ),
( 'hedccvmen6v9hhv2isatg882fc', 'PHPSESSID', '1624346859', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624346859.744946;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"hedccvmen6v9hhv2isatg882fc";}}' ),
( 'hgqnfsgj1af7co2gp43ol03fhs', 'PHPSESSID', '1624337963', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624337963.612897;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"hgqnfsgj1af7co2gp43ol03fhs";}}' ),
( 'hln27lop0rocp95tkbf79mofl8', 'PHPSESSID', '1624324171', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624324171.973727;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"hln27lop0rocp95tkbf79mofl8";}}' ),
( 'hltgclu1v4vevh74r1pi5rq38q', 'PHPSESSID', '1624319524', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624319524.721057;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"hltgclu1v4vevh74r1pi5rq38q";}}' ),
( 'hn7bd9ajet56qjfc53m52mkdda', 'PHPSESSID', '1624341250', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624341250.818674;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"hn7bd9ajet56qjfc53m52mkdda";}}' ),
( 'hnq0j7c6745j05ffmmvrq88gm2', 'PHPSESSID', '1624377355', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624377355.283397;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"hnq0j7c6745j05ffmmvrq88gm2";}}' ),
( 'hsfi7lnir15q9l4m26alajpbc5', 'PHPSESSID', '1624331076', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624331076.902327;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"hsfi7lnir15q9l4m26alajpbc5";}}' ),
( 'hu9idd9m6ir2ptqk9gerbu4ko0', 'PHPSESSID', '1624333475', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333475.504115;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"hu9idd9m6ir2ptqk9gerbu4ko0";}}' ),
( 'hv65fviotub5itpfvp24b0h2k7', 'PHPSESSID', '1624369568', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624369568.915821;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"hv65fviotub5itpfvp24b0h2k7";}}' ),
( 'i0t75jj7dvvgu7nqpgh8r29int', 'PHPSESSID', '1624406328', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624406328.070092;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"i0t75jj7dvvgu7nqpgh8r29int";}}' ),
( 'i2dtv1eg7nt9kt4fan8u18iqom', 'PHPSESSID', '1624383908', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624383908.180234;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"i2dtv1eg7nt9kt4fan8u18iqom";}}' ),
( 'i57tg5dd29gpsrjd1jqul2t2o0', 'PHPSESSID', '1624336090', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624336090.15208;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"i57tg5dd29gpsrjd1jqul2t2o0";}}' ),
( 'i5np470bp080vdjsslae775be4', 'PHPSESSID', '1624337964', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624337964.654908;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"i5np470bp080vdjsslae775be4";}}' ),
( 'i7tg79rcb09p70qah0juilllk4', 'PHPSESSID', '1624352112', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624352112.085016;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"i7tg79rcb09p70qah0juilllk4";}}' ),
( 'iaehaa64dhend2pqbhivq5sude', 'PHPSESSID', '1642052675', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1642052675.012614;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"iaehaa64dhend2pqbhivq5sude";}}' ),
( 'ibqhg447tvfn2dih6mu98l6r3s', 'PHPSESSID', '1624421518', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624421518.655696;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ibqhg447tvfn2dih6mu98l6r3s";}}' ),
( 'icrmkbt22iq5vv41558iqk4855', 'PHPSESSID', '1624342861', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624342861.894372;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"icrmkbt22iq5vv41558iqk4855";}}' ),
( 'ie4gvc2up392b68tivuj6isoeu', 'PHPSESSID', '1624362471', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624362471.900973;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ie4gvc2up392b68tivuj6isoeu";}}' ),
( 'ig0fdbc2q3oo1ruk61br3de5ku', 'PHPSESSID', '1624397310', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624397310.390577;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ig0fdbc2q3oo1ruk61br3de5ku";}}' ),
( 'ihg2o9gl1opa5kmmflits3pk01', 'PHPSESSID', '1624357478', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624357477.967718;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ihg2o9gl1opa5kmmflits3pk01";}}' ),
( 'ihlqnk2igula6pmf4liu7edu7m', 'PHPSESSID', '1624341643', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624341643.137094;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ihlqnk2igula6pmf4liu7edu7m";}}' ),
( 'ij8uua50qok78qt3rhbpu20th5', 'PHPSESSID', '1624375657', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624375657.258707;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ij8uua50qok78qt3rhbpu20th5";}}' ),
( 'ikf8htsj03bc7q39uro959j3ud', 'PHPSESSID', '1624394777', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624394777.710747;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ikf8htsj03bc7q39uro959j3ud";}}' ),
( 'iks3rbndnk664mpe0nc3ilq92t', 'PHPSESSID', '1624315496', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624315496.668538;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"iks3rbndnk664mpe0nc3ilq92t";}}' ),
( 'iksnvmfr2d85gkkv53midnr986', 'PHPSESSID', '1624319523', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624319523.671182;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"iksnvmfr2d85gkkv53midnr986";}}' ),
( 'il8rm2s1agrchlf7tkud92s3vp', 'PHPSESSID', '1642000219', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1642000219.181206;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"il8rm2s1agrchlf7tkud92s3vp";}}' ),
( 'inbuaj5tc2vkg8m78depmqg5mg', 'PHPSESSID', '1624422058', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624422058.452807;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"inbuaj5tc2vkg8m78depmqg5mg";}}' ),
( 'indstkh704v99n4vjrpfjk8o33', 'PHPSESSID', '1624333476', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333476.291331;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"indstkh704v99n4vjrpfjk8o33";}}' ),
( 'iqo5subg22qm7tjg5b550egab0', 'PHPSESSID', '1624391378', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624391378.067316;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"iqo5subg22qm7tjg5b550egab0";}}' ),
( 'iqpv7209pe8a15tf1pek29eprg', 'PHPSESSID', '1624327960', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624327960.70151;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"iqpv7209pe8a15tf1pek29eprg";}}' ),
( 'irr595r9gk1sk3q04gib267vj1', 'PHPSESSID', '1624328054', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624328054.279667;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"irr595r9gk1sk3q04gib267vj1";}}' ),
( 'is2f4a7801vioja1kamggrkv10', 'PHPSESSID', '1624370104', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624370104.203518;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"is2f4a7801vioja1kamggrkv10";}}' ),
( 'iv76dervdf5rvvhmskohr62dpi', 'PHPSESSID', '1624328806', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624328806.306127;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"iv76dervdf5rvvhmskohr62dpi";}}' ),
( 'j4cf6brmphp93gug4g9kueo7p3', 'PHPSESSID', '1624319522', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624319521.978485;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"j4cf6brmphp93gug4g9kueo7p3";}}' ),
( 'j6o0qn9ou6b3b3hhtejkrfsabd', 'PHPSESSID', '1624402818', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624402818.052108;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"j6o0qn9ou6b3b3hhtejkrfsabd";}}' ),
( 'j8oa5u0tutms1978re4of1dl26', 'PHPSESSID', '1624368334', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624368334.954319;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"j8oa5u0tutms1978re4of1dl26";}}' ),
( 'ja9jjpg81ippcgr1od367o7rfo', 'PHPSESSID', '1624342862', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624342862.806016;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ja9jjpg81ippcgr1od367o7rfo";}}' ),
( 'jdh8sad20k92je86eu552l8a37', 'PHPSESSID', '1624363690', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624363690.53761;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"jdh8sad20k92je86eu552l8a37";}}' ),
( 'je2ldnjdbm2lt921ro33lf08js', 'PHPSESSID', '1624351159', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624351159.58064;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"je2ldnjdbm2lt921ro33lf08js";}}' ),
( 'je414tfebju9jc43oke38heqhj', 'PHPSESSID', '1624422057', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624422057.934875;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"je414tfebju9jc43oke38heqhj";}}' ),
( 'jh6viqso6enemvh2ji2htkbj8g', 'PHPSESSID', '1624353230', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624353230.910873;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"jh6viqso6enemvh2ji2htkbj8g";}}' ),
( 'jivqcs2goiaghdb70hvrc71gta', 'PHPSESSID', '1624381421', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624381421.856709;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"jivqcs2goiaghdb70hvrc71gta";}}' ),
( 'jl2pu2rot511vmvnnicg0jmmid', 'PHPSESSID', '1624359160', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624359160.729861;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"jl2pu2rot511vmvnnicg0jmmid";}}' ),
( 'jlrfd3fcj57e3rr609fkmfhagh', 'PHPSESSID', '1624324172', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624324172.917101;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"jlrfd3fcj57e3rr609fkmfhagh";}}' ),
( 'jnevq8o7tt6r9a784au9vpjgim', 'PHPSESSID', '1624402822', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624402822.500365;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"jnevq8o7tt6r9a784au9vpjgim";}}' ),
( 'jnpfv7fvmmm9n1fb59plqke2cv', 'PHPSESSID', '1624391221', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624391221.504048;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"jnpfv7fvmmm9n1fb59plqke2cv";}}' ),
( 'jnroh427lfc186b7880n10lm9o', 'PHPSESSID', '1624328805', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624328805.216114;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"jnroh427lfc186b7880n10lm9o";}}' ),
( 'jqjb4j21annjdhds5erqohsp6j', 'PHPSESSID', '1624357581', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624357581.493785;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"jqjb4j21annjdhds5erqohsp6j";}}' ),
( 'jqkbtf183hvrnck76c2d4f98ms', 'PHPSESSID', '1624415477', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624415477.816474;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"jqkbtf183hvrnck76c2d4f98ms";}}' ),
( 'js4rof43lca15tbq72k6dmmhqp', 'PHPSESSID', '1624419238', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624419237.944303;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"js4rof43lca15tbq72k6dmmhqp";}}' ),
( 'jt44naqlps3dnffpif0t5h74q6', 'PHPSESSID', '1624350424', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624350424.608703;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"jt44naqlps3dnffpif0t5h74q6";}}' ),
( 'k160ik3d2pqiditjumj5u6u4nr', 'PHPSESSID', '1624329156', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624329156.104181;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"k160ik3d2pqiditjumj5u6u4nr";}}' ),
( 'k3gb6d9cpen4e7tt3hh3ducrbf', 'PHPSESSID', '1624368919', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624368919.3482;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"k3gb6d9cpen4e7tt3hh3ducrbf";}}' ),
( 'k3igb6l9qte1gh1kjmpoi69lbr', 'PHPSESSID', '1624375632', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624375632.77184;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"k3igb6l9qte1gh1kjmpoi69lbr";}}' ),
( 'k44r7eqges73i3vljjm1vrk6ok', 'PHPSESSID', '1624319524', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624319524.627349;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"k44r7eqges73i3vljjm1vrk6ok";}}' ),
( 'k47pkooo487p4fgld0besf6dug', 'PHPSESSID', '1624373611', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624373611.69577;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"k47pkooo487p4fgld0besf6dug";}}' ),
( 'k4m4co8ssdlecsa4mlmrrugc74', 'PHPSESSID', '1624319524', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624319524.799186;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"k4m4co8ssdlecsa4mlmrrugc74";}}' ),
( 'k56qu7i40akj6eigguqk768bi4', 'PHPSESSID', '1624327754', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624327754.245383;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"k56qu7i40akj6eigguqk768bi4";}}' ),
( 'k5mp902j0c2pen2dpno014eqmd', 'PHPSESSID', '1624347746', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624347746.886692;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"k5mp902j0c2pen2dpno014eqmd";}}' ),
( 'k7j3sngk4uirnbodoe6uli3din', 'PHPSESSID', '1624417711', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624417711.803117;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"k7j3sngk4uirnbodoe6uli3din";}}' ),
( 'k8dh1rsp4ia0nks8sm6mto5p9m', 'PHPSESSID', '1624390893', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390893.752555;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"k8dh1rsp4ia0nks8sm6mto5p9m";}}' ),
( 'k9mdaitgdv5ombs9oe1bf5o2kj', 'PHPSESSID', '1624369573', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624369573.853406;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"k9mdaitgdv5ombs9oe1bf5o2kj";}}' ),
( 'ka1o329mbanm35hk3v16dbfqo9', 'PHPSESSID', '1624314370', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624314370.075619;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ka1o329mbanm35hk3v16dbfqo9";}}' ),
( 'kisfr2lv7guq8ogoclnltado18', 'PHPSESSID', '1624329858', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624329858.747622;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"kisfr2lv7guq8ogoclnltado18";}}' ),
( 'kkij8hpqbnajulkjvlkajapdh5', 'PHPSESSID', '1624363730', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624363730.666125;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"kkij8hpqbnajulkjvlkajapdh5";}}' ),
( 'kmdj49bb6hpbt3qo97mmdqchek', 'PHPSESSID', '1624342096', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624342096.248259;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"kmdj49bb6hpbt3qo97mmdqchek";}}' ),
( 'knc2himdsl15gabkalrhslhukf', 'PHPSESSID', '1624412300', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624412300.881797;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"knc2himdsl15gabkalrhslhukf";}}' ),
( 'knq7thejpvgpcerdkl4n84v8c6', 'PHPSESSID', '1624368332', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624368331.995459;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"knq7thejpvgpcerdkl4n84v8c6";}}' ),
( 'kqi1co2drb82v9laldbscea442', 'PHPSESSID', '1624416876', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624416875.990362;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"kqi1co2drb82v9laldbscea442";}}' ),
( 'krbvlbioml47i8ofr0eppevi3p', 'PHPSESSID', '1624354004', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624354004.618406;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"krbvlbioml47i8ofr0eppevi3p";}}' ),
( 'kub9mhsir9nvvjh3gjuubg4p4c', 'PHPSESSID', '1624347745', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624347745.96119;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"kub9mhsir9nvvjh3gjuubg4p4c";}}' ),
( 'kuutmn079g735df4gtvurm0o89', 'PHPSESSID', '1624328128', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624328128.932038;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"kuutmn079g735df4gtvurm0o89";}}' ),
( 'kv59c75710unq09ba40e0tra78', 'PHPSESSID', '1624315328', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624315328.666038;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"kv59c75710unq09ba40e0tra78";}}' ),
( 'l0cus6ito5uf70abbo2isredv8', 'PHPSESSID', '1624327800', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624327800.851146;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"l0cus6ito5uf70abbo2isredv8";}}' ),
( 'l3m7k4t382mi6drs58u0kmn5vs', 'PHPSESSID', '1624333901', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333901.628367;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"l3m7k4t382mi6drs58u0kmn5vs";}}' ),
( 'l5dc0q9tdo07gam2isviiaa5sn', 'PHPSESSID', '1624337964', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624337964.68362;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"l5dc0q9tdo07gam2isviiaa5sn";}}' ),
( 'l5j4vlveeeebmlgt8pkvgqsbk6', 'PHPSESSID', '1624363690', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624363690.572338;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"l5j4vlveeeebmlgt8pkvgqsbk6";}}' ),
( 'l5tdr59u98rlljpdgt4hd0mosl', 'PHPSESSID', '1624384536', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624384536.781242;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"l5tdr59u98rlljpdgt4hd0mosl";}}' ),
( 'l6sdmag89p7ndb89v58pmvkonv', 'PHPSESSID', '1624341644', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624341644.136481;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"l6sdmag89p7ndb89v58pmvkonv";}}' ),
( 'l90ha1cdpt07bdeogekvqanq36', 'PHPSESSID', '1624334990', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624334990.549899;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"l90ha1cdpt07bdeogekvqanq36";}}' ),
( 'lchhbs7h4og7kl0psulop2ahid', 'PHPSESSID', '1624363645', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624363644.993271;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"lchhbs7h4og7kl0psulop2ahid";}}' ),
( 'lcqabg0eto12bubtoghaadnb69', 'PHPSESSID', '1624391019', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624391019.905491;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"lcqabg0eto12bubtoghaadnb69";}}' ),
( 'ld7o1qtrbbpdlj1vsonch78ju1', 'PHPSESSID', '1624333894', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333894.211495;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ld7o1qtrbbpdlj1vsonch78ju1";}}' ),
( 'lfe8mlc5vk081jgakr2bbdren4', 'PHPSESSID', '1624331528', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624331528.706483;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"lfe8mlc5vk081jgakr2bbdren4";}}' ),
( 'lfpmn1e9fq234u17op4u8jsihl', 'PHPSESSID', '1624327168', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624327168.331744;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"lfpmn1e9fq234u17op4u8jsihl";}}' ),
( 'lgit30uba3kdp1pmcudr7ijdef', 'PHPSESSID', '1624387123', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624387123.300849;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"lgit30uba3kdp1pmcudr7ijdef";}}' ),
( 'lgldcl0o1en5mrnthce8r8g26k', 'PHPSESSID', '1624321911', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624321911.181303;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"lgldcl0o1en5mrnthce8r8g26k";}}' ),
( 'lnicdp7a75nepnefemlvkebeii', 'PHPSESSID', '1624422059', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624422059.38128;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"lnicdp7a75nepnefemlvkebeii";}}' ),
( 'lrghl36u4csipbei9rlatv2c3e', 'PHPSESSID', '1624368336', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624368336.326324;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"lrghl36u4csipbei9rlatv2c3e";}}' ),
( 'lrk9ecoatit7s6nd2rq9uvt7aa', 'PHPSESSID', '1624341643', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624341643.815684;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"lrk9ecoatit7s6nd2rq9uvt7aa";}}' ),
( 'lt3v906khs6ddjal88sbnf0frk', 'PHPSESSID', '1624324174', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624324174.027285;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"lt3v906khs6ddjal88sbnf0frk";}}' ),
( 'ltsebgis7nl4op9pdog3umvfe5', 'PHPSESSID', '1624321569', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624321569.552863;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ltsebgis7nl4op9pdog3umvfe5";}}' ),
( 'lvt8frhi0c7u6jb0q2ckhv8p45', 'PHPSESSID', '1624370946', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624370946.327309;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"lvt8frhi0c7u6jb0q2ckhv8p45";}}' ),
( 'm0uevbd57o48fdks9p41la89u4', 'PHPSESSID', '1624378557', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624378557.482213;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"m0uevbd57o48fdks9p41la89u4";}}' ),
( 'm4udu12ijtkg4vud713pnam0ql', 'PHPSESSID', '1624340997', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624340997.716862;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"m4udu12ijtkg4vud713pnam0ql";}}' ),
( 'm5egh7bfbsosk2aqt1belfl4u6', 'PHPSESSID', '1624423333', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624423333.869394;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"m5egh7bfbsosk2aqt1belfl4u6";}}' ),
( 'm6km9c1hu6ejqqdq5e97lltfhn', 'PHPSESSID', '1624412787', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624412787.472075;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"m6km9c1hu6ejqqdq5e97lltfhn";}}' ),
( 'm7jiht46njd1nqd0r1a49i2i3k', 'PHPSESSID', '1624369857', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624369857.408871;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"m7jiht46njd1nqd0r1a49i2i3k";}}' ),
( 'm96136m19ctqp16arp6s8pf5aq', 'PHPSESSID', '1624358319', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624358319.359078;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"m96136m19ctqp16arp6s8pf5aq";}}' ),
( 'mdagk1mbhoulr8ube7bgjt4m3t', 'PHPSESSID', '1624416224', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624416224.692656;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"mdagk1mbhoulr8ube7bgjt4m3t";}}' ),
( 'mhtnbfu08dr100u0ondb9o6adb', 'PHPSESSID', '1624373609', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624373609.769044;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"mhtnbfu08dr100u0ondb9o6adb";}}' ),
( 'mi8914lmostonnf9c0p76p05n5', 'PHPSESSID', '1624358223', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624358223.620736;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"mi8914lmostonnf9c0p76p05n5";}}' ),
( 'mm6qp99tb5hgiam85j6spaa0f3', 'PHPSESSID', '1624331528', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624331528.712832;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"mm6qp99tb5hgiam85j6spaa0f3";}}' ),
( 'mo9krt85k81ja6mqtdovs3mfr4', 'PHPSESSID', '1624328806', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624328806.240709;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"mo9krt85k81ja6mqtdovs3mfr4";}}' ),
( 'mpq2btv9la0t4d14p4e2tun805', 'PHPSESSID', '1624325768', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624325768.745809;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"mpq2btv9la0t4d14p4e2tun805";}}' ),
( 'mq09l166bo5fv0tkv2mi1fol1e', 'PHPSESSID', '1624347746', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624347746.868598;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"mq09l166bo5fv0tkv2mi1fol1e";}}' ),
( 'mrhmeh6uiko2sdbb4ncj4anaah', 'PHPSESSID', '1624350171', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624350171.269719;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"mrhmeh6uiko2sdbb4ncj4anaah";}}' ),
( 'mrq9j38feglj0u799ka3fuhsob', 'PHPSESSID', '1624315328', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624315328.145861;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"mrq9j38feglj0u799ka3fuhsob";}}' ),
( 'ms1riqnmm5d1eo3u8kheshq37t', 'PHPSESSID', '1624339038', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624339038.177172;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ms1riqnmm5d1eo3u8kheshq37t";}}' ),
( 'n0hmjfqsb3b353mkbtond920fr', 'PHPSESSID', '1624404653', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624404653.263184;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"n0hmjfqsb3b353mkbtond920fr";}}' ),
( 'n0k2skf41q6770po1eu0l25pl7', 'PHPSESSID', '1624385929', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624385929.787174;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"n0k2skf41q6770po1eu0l25pl7";}}' ),
( 'n3tc0bhfadsd7actsjs66j6cdu', 'PHPSESSID', '1624337961', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624337961.725967;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"n3tc0bhfadsd7actsjs66j6cdu";}}' ),
( 'n4e89af2phi6kjrfptqgdhblo5', 'PHPSESSID', '1624369240', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624369240.509665;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"n4e89af2phi6kjrfptqgdhblo5";}}' ),
( 'n4h5vp9j07qp9qegj80ldbl0o9', 'PHPSESSID', '1624363688', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624363688.345292;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"n4h5vp9j07qp9qegj80ldbl0o9";}}' ),
( 'n7ro1gt3lasuibi21pl5grgibr', 'PHPSESSID', '1624401852', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624401852.836249;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"n7ro1gt3lasuibi21pl5grgibr";}}' ),
( 'n8h4l8d59fm2m2u3peh9v46v2t', 'PHPSESSID', '1624384660', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624384660.804162;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"n8h4l8d59fm2m2u3peh9v46v2t";}}' ),
( 'nd8ihhbb8d7a8edo9e8d5h1bdm', 'PHPSESSID', '1624402823', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624402823.620545;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"nd8ihhbb8d7a8edo9e8d5h1bdm";}}' ),
( 'nhmhrrnj6n53nqjftkjsh9li2r', 'PHPSESSID', '1624340878', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624340877.975859;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"nhmhrrnj6n53nqjftkjsh9li2r";}}' ),
( 'nj41rd8o60pe018c8antoivesp', 'PHPSESSID', '1624348534', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624348534.312491;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"nj41rd8o60pe018c8antoivesp";}}' ),
( 'nk1n5v2tnpvmmlearklkrkh603', 'PHPSESSID', '1624353230', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624353230.25008;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"nk1n5v2tnpvmmlearklkrkh603";}}' ),
( 'no25o3f4sh03ig0no53nq3fnsk', 'PHPSESSID', '1624347395', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624347395.604349;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"no25o3f4sh03ig0no53nq3fnsk";}}' ),
( 'nobu2bcph8m04ccbkk7hr5kbp6', 'PHPSESSID', '1624321319', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624321319.569324;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"nobu2bcph8m04ccbkk7hr5kbp6";}}' ),
( 'np9cit05q7aaf2840c3qidij3e', 'PHPSESSID', '1624390093', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390093.218418;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"np9cit05q7aaf2840c3qidij3e";}}' ),
( 'ns563hgd5n13v7kkn8p6t0cgg5', 'PHPSESSID', '1624352099', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624352099.912122;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ns563hgd5n13v7kkn8p6t0cgg5";}}' ),
( 'o1d2i9liju14rd8g04t1u28urk', 'PHPSESSID', '1624390576', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390576.328107;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"o1d2i9liju14rd8g04t1u28urk";}}' ),
( 'o3pqn3v0c0cp3se620pdgfqse1', 'PHPSESSID', '1624347748', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624347748.032829;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"o3pqn3v0c0cp3se620pdgfqse1";}}' ),
( 'o54lr5884mtp9rs71dprb5nco0', 'PHPSESSID', '1624333900', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333900.191853;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"o54lr5884mtp9rs71dprb5nco0";}}' ),
( 'o581djegpru347snki8qrrlij8', 'PHPSESSID', '1624342862', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624342862.859188;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"o581djegpru347snki8qrrlij8";}}' ),
( 'o8rk4q3t1c9ivco0f4eqdfhf15', 'PHPSESSID', '1624334714', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624334714.497007;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"o8rk4q3t1c9ivco0f4eqdfhf15";}}' ),
( 'o94tlod7lqon6hl8a4b7i2iuqt', 'PHPSESSID', '1624419245', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624419245.215935;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"o94tlod7lqon6hl8a4b7i2iuqt";}}' ),
( 'o9t1p3vc7pnfqep4kg6be7pt7u', 'PHPSESSID', '1624337964', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624337964.731637;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"o9t1p3vc7pnfqep4kg6be7pt7u";}}' ),
( 'oapb30t1nqv6eco0ihlpknhu66', 'PHPSESSID', '1624347327', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624347327.494807;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"oapb30t1nqv6eco0ihlpknhu66";}}' ),
( 'oc4glf1ouaqfv6nvl8rianc5vq', 'PHPSESSID', '1624421002', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624421002.136308;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"oc4glf1ouaqfv6nvl8rianc5vq";}}' ),
( 'oe8sd9875d5c5tf18nutnkarch', 'PHPSESSID', '1624384565', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624384565.706696;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"oe8sd9875d5c5tf18nutnkarch";}}' ),
( 'ofjjub69t38ucjmmshtmumhgl5', 'PHPSESSID', '1624334738', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624334738.113837;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ofjjub69t38ucjmmshtmumhgl5";}}' ),
( 'og970omc10l5187vovsubgmvor', 'PHPSESSID', '1624413881', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624413881.350866;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"og970omc10l5187vovsubgmvor";}}' ),
( 'ohm23v3e4qp7tbiqjgttd8vnt7', 'PHPSESSID', '1624422786', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624422786.855484;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ohm23v3e4qp7tbiqjgttd8vnt7";}}' ),
( 'oi18k1k20qv5oqbiuq0fpj07vh', 'PHPSESSID', '1624364870', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624364870.656059;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"oi18k1k20qv5oqbiuq0fpj07vh";}}' ),
( 'on3gpb1jocdcpbhgpheo0g36ml', 'PHPSESSID', '1624423114', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624423114.21263;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"on3gpb1jocdcpbhgpheo0g36ml";}}' ),
( 'on50n62k823p34fcvsh4h4c9op', 'PHPSESSID', '1624339206', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624339206.939011;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"on50n62k823p34fcvsh4h4c9op";}}' ),
( 'ootvjutch0b35ib0vao68pvk6b', 'PHPSESSID', '1624333124', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333124.118981;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ootvjutch0b35ib0vao68pvk6b";}}' ),
( 'ote361dm8oisqk7l3iglrm4r84', 'PHPSESSID', '1624323877', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624323877.827929;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ote361dm8oisqk7l3iglrm4r84";}}' ),
( 'ov4r5cbq5gt0k6u7fmbukpqjpk', 'PHPSESSID', '1624378559', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624378559.667915;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ov4r5cbq5gt0k6u7fmbukpqjpk";}}' ),
( 'p0th1btc00cb9c2cvim813urr2', 'PHPSESSID', '1624406845', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624406845.912351;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"p0th1btc00cb9c2cvim813urr2";}}' ),
( 'p448p897dils4ju549rt7dfi7g', 'PHPSESSID', '1624342861', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624342861.372133;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"p448p897dils4ju549rt7dfi7g";}}' ),
( 'p7aqjh9sm4903iq95oba2g36no', 'PHPSESSID', '1624399888', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624399888.741879;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"p7aqjh9sm4903iq95oba2g36no";}}' ),
( 'p7mkstd8g4ch36qplh2qirerrm', 'PHPSESSID', '1624327483', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624327483.425446;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"p7mkstd8g4ch36qplh2qirerrm";}}' ),
( 'p86meo9gjotjhi3n7em81cfg9r', 'PHPSESSID', '1624375047', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624375047.511739;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"p86meo9gjotjhi3n7em81cfg9r";}}' ),
( 'pcsqau72ipber3qmt644ebhpa3', 'PHPSESSID', '1624369567', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624369567.806925;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"pcsqau72ipber3qmt644ebhpa3";}}' ),
( 'pd2s55mlktq1i5hagqjitn3kng', 'PHPSESSID', '1624318036', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624318036.168183;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"pd2s55mlktq1i5hagqjitn3kng";}}' ),
( 'pfid5eoaqsf6ehp8uf6s7olbk3', 'PHPSESSID', '1624340359', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624340359.387352;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"pfid5eoaqsf6ehp8uf6s7olbk3";}}' ),
( 'pgtsgn4uj1qquc3t6i97in8vo6', 'PHPSESSID', '1624415479', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624415479.731978;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"pgtsgn4uj1qquc3t6i97in8vo6";}}' ),
( 'pmbm4frhad36unuu1qtmdl31ol', 'PHPSESSID', '1624420507', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624420507.240249;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"pmbm4frhad36unuu1qtmdl31ol";}}' ),
( 'pmsfnleocg7u4gm73m55ije5t5', 'PHPSESSID', '1624363690', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624363690.519298;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"pmsfnleocg7u4gm73m55ije5t5";}}' ),
( 'pnmga9ujg5aj7r8pk5m3s8ib34', 'PHPSESSID', '1624351160', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624351160.017758;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"pnmga9ujg5aj7r8pk5m3s8ib34";}}' );

INSERT INTO `session`(`id`,`name`,`modified`,`lifetime`,`data`) VALUES 
( 'pohpo8m8hifkl1us8nhauffb2a', 'PHPSESSID', '1624409229', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624409229.116001;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"pohpo8m8hifkl1us8nhauffb2a";}}' ),
( 'pouttoc0ia1p460pi19ahg83oc', 'PHPSESSID', '1624422057', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624422057.947292;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"pouttoc0ia1p460pi19ahg83oc";}}' ),
( 'pqj7771pj052br6b71jjva4tnm', 'PHPSESSID', '1624379914', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624379914.846501;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"pqj7771pj052br6b71jjva4tnm";}}' ),
( 'psha6daln68dms45scbdlikia1', 'PHPSESSID', '1624315330', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624315329.967403;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"psha6daln68dms45scbdlikia1";}}' ),
( 'psnjptvd7me7sbq7tsvi1f66em', 'PHPSESSID', '1624397309', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624397309.420845;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"psnjptvd7me7sbq7tsvi1f66em";}}' ),
( 'q06b1sk87miqm6p5e1h1kq5duc', 'PHPSESSID', '1624398530', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624398530.155711;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"q06b1sk87miqm6p5e1h1kq5duc";}}' ),
( 'q0glak1mb9rja9hdd971cfhjo9', 'PHPSESSID', '1624403658', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624403657.985356;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"q0glak1mb9rja9hdd971cfhjo9";}}' ),
( 'q3e0k3035b6271bc7tuhmkiihd', 'PHPSESSID', '1624402736', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624402736.644165;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"q3e0k3035b6271bc7tuhmkiihd";}}' ),
( 'q3icgaqrq0hcjh8fqmh4a6l33t', 'PHPSESSID', '1624321491', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624321491.293219;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"q3icgaqrq0hcjh8fqmh4a6l33t";}}' ),
( 'q43lnv9mcqh7j9u8k4li185fh2', 'PHPSESSID', '1624366345', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624366345.502769;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"q43lnv9mcqh7j9u8k4li185fh2";}}' ),
( 'q47quikve7un4mi8taov4ij8fa', 'PHPSESSID', '1624338363', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624338363.415983;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"q47quikve7un4mi8taov4ij8fa";}}' ),
( 'q4comeatksl5dg6jt154ono2q7', 'PHPSESSID', '1624406814', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624406814.376456;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"q4comeatksl5dg6jt154ono2q7";}}' ),
( 'q4sr43v5tie7lsvo4of6gqjjl9', 'PHPSESSID', '1624386982', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624386982.461488;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"q4sr43v5tie7lsvo4of6gqjjl9";}}' ),
( 'q5hku3g1upvjnsdh57udmp4v7g', 'PHPSESSID', '1624342082', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624342082.827962;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"q5hku3g1upvjnsdh57udmp4v7g";}}' ),
( 'qieh3q64o9lroklfulhuhega2u', 'PHPSESSID', '1624368764', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624368764.369602;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"qieh3q64o9lroklfulhuhega2u";}}' ),
( 'qm5shgvilvoic67aomvls69d2l', 'PHPSESSID', '1624327651', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624327651.040123;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"qm5shgvilvoic67aomvls69d2l";}}' ),
( 'qs5bps1ormmu37n5ml6nhi7d6l', 'PHPSESSID', '1624406132', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624406132.037766;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"qs5bps1ormmu37n5ml6nhi7d6l";}}' ),
( 'qsci3o6fq43e9suarer36n7sef', 'PHPSESSID', '1624416225', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624416225.724261;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"qsci3o6fq43e9suarer36n7sef";}}' ),
( 'r3apujju17fa30042pg63ssp8m', 'PHPSESSID', '1624390588', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390588.396052;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"r3apujju17fa30042pg63ssp8m";}}' ),
( 'r44vib7qtgsq88ejlmn7e8pdg0', 'PHPSESSID', '1624328804', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624328804.478062;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"r44vib7qtgsq88ejlmn7e8pdg0";}}' ),
( 'raa8kdnd86gdhs36tb4lunukde', 'PHPSESSID', '1624416963', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624416963.001608;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"raa8kdnd86gdhs36tb4lunukde";}}' ),
( 'rcgk2vbu2a9qfv56jc1ji9hp0v', 'PHPSESSID', '1624333476', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333476.169736;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"rcgk2vbu2a9qfv56jc1ji9hp0v";}}' ),
( 're9uiihog3es8etqf79st7dab6', 'PHPSESSID', '1624320850', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624320850.420492;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"re9uiihog3es8etqf79st7dab6";}}' ),
( 'riffk1u5ptsbdeieh1qp6k7c80', 'PHPSESSID', '1624333477', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333477.418921;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"riffk1u5ptsbdeieh1qp6k7c80";}}' ),
( 'rkif8i9l0mk37nt3qiade8e2s7', 'PHPSESSID', '1624374739', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624374739.967592;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"rkif8i9l0mk37nt3qiade8e2s7";}}' ),
( 'rkqbqgi61ld6mle2nnu68u31r0', 'PHPSESSID', '1624367378', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624367378.181031;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"rkqbqgi61ld6mle2nnu68u31r0";}}' ),
( 'rli82cu8qvigaev7k5utm4ae79', 'PHPSESSID', '1624384567', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624384567.617459;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"rli82cu8qvigaev7k5utm4ae79";}}' ),
( 'rlle4ohbfo355rt9e15l8i2vn9', 'PHPSESSID', '1624416242', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624416241.988211;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"rlle4ohbfo355rt9e15l8i2vn9";}}' ),
( 'rmojr1li9fup4l676u0og4rqh8', 'PHPSESSID', '1624363329', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624363329.500725;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"rmojr1li9fup4l676u0og4rqh8";}}' ),
( 'rnvu2jsp574v2a2s1lud9v1mpa', 'PHPSESSID', '1624356623', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624356623.12746;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"rnvu2jsp574v2a2s1lud9v1mpa";}}' ),
( 'ros44ammhiua0f7hqpq4u3uca7', 'PHPSESSID', '1624390864', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390864.699157;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ros44ammhiua0f7hqpq4u3uca7";}}' ),
( 'rq2mubj9473fmndbamel4m3cnj', 'PHPSESSID', '1624324171', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624324171.008705;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"rq2mubj9473fmndbamel4m3cnj";}}' ),
( 'rsoc6fse7k7igj19emr3gmkhkv', 'PHPSESSID', '1624390951', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390951.824128;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"rsoc6fse7k7igj19emr3gmkhkv";}}' ),
( 'ru9jmomg5svju5k7q31j9h5dbk', 'PHPSESSID', '1624391221', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624391221.904273;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ru9jmomg5svju5k7q31j9h5dbk";}}' ),
( 's4oei3o39ksfv8ggq1i8hglob0', 'PHPSESSID', '1624370404', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624370404.336665;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"s4oei3o39ksfv8ggq1i8hglob0";}}' ),
( 's5mdgg28jus086j84n9aghplsd', 'PHPSESSID', '1624416661', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624416661.438543;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"s5mdgg28jus086j84n9aghplsd";}}' ),
( 's5tq2v1u6j8sj3q4iq7p48kre5', 'PHPSESSID', '1624341554', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624341554.248915;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"s5tq2v1u6j8sj3q4iq7p48kre5";}}' ),
( 's7def0jf5eppft9m55gfraubsk', 'PHPSESSID', '1624407680', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624407680.223067;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"s7def0jf5eppft9m55gfraubsk";}}' ),
( 's7npf2q2n2686rg2ff7o4edlqn', 'PHPSESSID', '1624333061', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333061.583077;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"s7npf2q2n2686rg2ff7o4edlqn";}}' ),
( 'sckc4po1ag72rsvqno634vu1jf', 'PHPSESSID', '1624346604', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624346604.643115;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"sckc4po1ag72rsvqno634vu1jf";}}' ),
( 'sctsdom03s3jo5s9ig2coqh70j', 'PHPSESSID', '1624409230', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624409230.292121;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"sctsdom03s3jo5s9ig2coqh70j";}}' ),
( 'sgqe3j248ns871ca7stnlnht0t', 'PHPSESSID', '1624329884', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624329884.355876;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"sgqe3j248ns871ca7stnlnht0t";}}' ),
( 'sk9a3np87dm8fhotj5lq9b2s0p', 'PHPSESSID', '1624397308', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624397308.383339;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"sk9a3np87dm8fhotj5lq9b2s0p";}}' ),
( 'slbguu863i3kijah5albjc0nd0', 'PHPSESSID', '1624363689', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624363689.427209;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"slbguu863i3kijah5albjc0nd0";}}' ),
( 'sllbvpvvpa64ff9ql1pf6c9t0v', 'PHPSESSID', '1624379703', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624379703.036481;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"sllbvpvvpa64ff9ql1pf6c9t0v";}}' ),
( 'sngucqgo46jec36gud6hktd7e3', 'PHPSESSID', '1624419247', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624419247.560035;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"sngucqgo46jec36gud6hktd7e3";}}' ),
( 'somvqdd58imft3mskmip2onevd', 'PHPSESSID', '1624384568', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624384568.970828;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"somvqdd58imft3mskmip2onevd";}}' ),
( 'sqktlf8qs45bg14qo92j0nvrmq', 'PHPSESSID', '1624325430', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624325430.769329;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"sqktlf8qs45bg14qo92j0nvrmq";}}' ),
( 'sr7i1v06mt8ivpotj0f5a6ehs8', 'PHPSESSID', '1624390583', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390583.359058;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"sr7i1v06mt8ivpotj0f5a6ehs8";}}' ),
( 'ss5qndrdn30qrlpv111tfls3oq', 'PHPSESSID', '1624402816', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624402816.434861;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ss5qndrdn30qrlpv111tfls3oq";}}' ),
( 'ssoppb7440dnptii00accskhvk', 'PHPSESSID', '1624347746', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624347746.679294;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ssoppb7440dnptii00accskhvk";}}' ),
( 'su4p1r7pk7gmnfavrue5kv7upm', 'PHPSESSID', '1624418460', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624418460.151782;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"su4p1r7pk7gmnfavrue5kv7upm";}}' ),
( 'suahog577sk9k3u6o0sa94gsf5', 'PHPSESSID', '1624387642', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624387641.965971;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"suahog577sk9k3u6o0sa94gsf5";}}' ),
( 't0iocg34hndct1dq9u8spgklsk', 'PHPSESSID', '1624352088', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624352088.770382;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"t0iocg34hndct1dq9u8spgklsk";}}' ),
( 't1corgclf243kmrli5h0i2ropf', 'PHPSESSID', '1624372599', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624372599.283775;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"t1corgclf243kmrli5h0i2ropf";}}' ),
( 't3dp2lluguc5o8untnfcrsg1aj', 'PHPSESSID', '1624420139', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624420139.512068;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"t3dp2lluguc5o8untnfcrsg1aj";}}' ),
( 't4527tikbfngljfb5c057b4hne', 'PHPSESSID', '1624368335', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624368335.136608;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"t4527tikbfngljfb5c057b4hne";}}' ),
( 't63gv2rtcrkn7mdkn8pspat30e', 'PHPSESSID', '1624388345', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624388345.067666;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"t63gv2rtcrkn7mdkn8pspat30e";}}' ),
( 't6ngb35dis6rgi1l0e0m4uv4e9', 'PHPSESSID', '1624390582', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390582.366267;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"t6ngb35dis6rgi1l0e0m4uv4e9";}}' ),
( 't88u8kfppegf0cjoth24i0bkcl', 'PHPSESSID', '1624362770', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624362770.281139;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"t88u8kfppegf0cjoth24i0bkcl";}}' ),
( 'ta9pltcgce6spg8mku9ip93qu3', 'PHPSESSID', '1624347223', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624347223.897345;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ta9pltcgce6spg8mku9ip93qu3";}}' ),
( 'tdfmivr25obrqsrj02181h7rlv', 'PHPSESSID', '1624324173', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624324173.040791;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"tdfmivr25obrqsrj02181h7rlv";}}' ),
( 'te4lpkvfh7bhj2n8a31tc9kq28', 'PHPSESSID', '1624358223', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624358223.621586;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"te4lpkvfh7bhj2n8a31tc9kq28";}}' ),
( 'tltua2iuus7gpe5h1lkmfll2ap', 'PHPSESSID', '1624333474', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333474.386526;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"tltua2iuus7gpe5h1lkmfll2ap";}}' ),
( 'tndmk7fidufqk1ge1jg7uutpn1', 'PHPSESSID', '1624339624', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624339624.107847;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"tndmk7fidufqk1ge1jg7uutpn1";}}' ),
( 'tneabq602n4vto2jcpm5gcjlgd', 'PHPSESSID', '1624337195', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624337195.631139;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"tneabq602n4vto2jcpm5gcjlgd";}}' ),
( 'to9ejfeisoicmov57rh990ljrl', 'PHPSESSID', '1624423114', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624423114.636819;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"to9ejfeisoicmov57rh990ljrl";}}' ),
( 'togilqc2cqf3t5h6s9urbfoci4', 'PHPSESSID', '1624331309', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624331309.635829;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"togilqc2cqf3t5h6s9urbfoci4";}}' ),
( 'tooe73r4kj1mpgdart0aamioi9', 'PHPSESSID', '1624338555', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624338555.603508;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"tooe73r4kj1mpgdart0aamioi9";}}' ),
( 'tql7pg49mllc7ri6h5mli1uf9q', 'PHPSESSID', '1624416252', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624416252.155824;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"tql7pg49mllc7ri6h5mli1uf9q";}}' ),
( 'trhcrq9shnm7jj1lu8po2i5frq', 'PHPSESSID', '1624327432', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624327432.38152;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"trhcrq9shnm7jj1lu8po2i5frq";}}' ),
( 'ts5ofchj3br5gts8hcj7t4cp5u', 'PHPSESSID', '1624337963', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624337963.729456;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ts5ofchj3br5gts8hcj7t4cp5u";}}' ),
( 'tt0umamp83e44g2dugpmncpsh2', 'PHPSESSID', '1624333477', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333477.399288;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"tt0umamp83e44g2dugpmncpsh2";}}' ),
( 'ttbstvlaotplks4peuoc6fdu4n', 'PHPSESSID', '1624378093', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624378093.553974;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ttbstvlaotplks4peuoc6fdu4n";}}' ),
( 'tutp852849iamj6s4upulc3lc0', 'PHPSESSID', '1624380874', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624380874.943434;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"tutp852849iamj6s4upulc3lc0";}}' ),
( 'tv7e9qr547t0vhnjuvnf7jibqp', 'PHPSESSID', '1624390928', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390928.674281;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"tv7e9qr547t0vhnjuvnf7jibqp";}}' ),
( 'tvng4onlpt9hbadd2unki35q2q', 'PHPSESSID', '1624401857', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624401857.60157;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"tvng4onlpt9hbadd2unki35q2q";}}' ),
( 'u0bdoa6puriesovu861s95gm5g', 'PHPSESSID', '1624365743', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624365743.470899;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"u0bdoa6puriesovu861s95gm5g";}}' ),
( 'u1p1rubjuvthmcevk7t93aq58q', 'PHPSESSID', '1624372606', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624372606.593291;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"u1p1rubjuvthmcevk7t93aq58q";}}' ),
( 'u2g9qrrnpst4nhd68306vmmi7c', 'PHPSESSID', '1624372606', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624372606.108165;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"u2g9qrrnpst4nhd68306vmmi7c";}}' ),
( 'u2go7lmmtoavq4utm6oe6q8cjq', 'PHPSESSID', '1624328093', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624328093.490125;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"u2go7lmmtoavq4utm6oe6q8cjq";}}' ),
( 'u5sbl1mjkuvlenfnu8frvh3mgi', 'PHPSESSID', '1624397310', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624397310.428521;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"u5sbl1mjkuvlenfnu8frvh3mgi";}}' ),
( 'u5u1btf286gqnqe7k6vjhdrj8v', 'PHPSESSID', '1624357247', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624357247.131274;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"u5u1btf286gqnqe7k6vjhdrj8v";}}' ),
( 'u5vluf559vgnldsu3ai5j3jqnj', 'PHPSESSID', '1624419240', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624419240.429226;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"u5vluf559vgnldsu3ai5j3jqnj";}}' ),
( 'u6hie8q03rtd7e32hi2akg18lr', 'PHPSESSID', '1624390577', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390577.366157;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"u6hie8q03rtd7e32hi2akg18lr";}}' ),
( 'u6lt6sugd1c8u5up6uidruvfv9', 'PHPSESSID', '1624378558', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624378558.293206;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"u6lt6sugd1c8u5up6uidruvfv9";}}' ),
( 'ucm0ab7s31fg7to5o3refs7n9i', 'PHPSESSID', '1624411592', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624411592.595885;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ucm0ab7s31fg7to5o3refs7n9i";}}' ),
( 'ucnib7otlsbp1pcep82348lmie', 'PHPSESSID', '1624342496', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624342496.274284;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ucnib7otlsbp1pcep82348lmie";}}' ),
( 'ucpcbp6jvg5r4p2pmv6p0r3567', 'PHPSESSID', '1624398808', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624398808.760251;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ucpcbp6jvg5r4p2pmv6p0r3567";}}' ),
( 'uerrb1itkjs1f78bk09oqb05jb', 'PHPSESSID', '1624335130', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624335130.010993;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"uerrb1itkjs1f78bk09oqb05jb";}}' ),
( 'ulobhdi8hr1vv1t7715qg8i0av', 'PHPSESSID', '1624384567', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624384567.900497;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"ulobhdi8hr1vv1t7715qg8i0av";}}' ),
( 'um0kefv5hrrehh06hrqh1b4sdv', 'PHPSESSID', '1624351900', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624351900.683518;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"um0kefv5hrrehh06hrqh1b4sdv";}}' ),
( 'um6vk91d8pmrujv5djqpkgsqng', 'PHPSESSID', '1624423033', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624423033.58884;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"um6vk91d8pmrujv5djqpkgsqng";}}' ),
( 'uo2sfti8s6ubaae68mrsgh6guu', 'PHPSESSID', '1624341622', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624341622.873848;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"uo2sfti8s6ubaae68mrsgh6guu";}}' ),
( 'uorhpf51g7lds8vgsds7r2keie', 'PHPSESSID', '1624368335', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624368335.400121;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"uorhpf51g7lds8vgsds7r2keie";}}' ),
( 'uu77omnfaodlt2b332mk65bl1m', 'PHPSESSID', '1624358224', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624358224.623074;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"uu77omnfaodlt2b332mk65bl1m";}}' ),
( 'v2kn9r31me9cc43t7t03kqgu8m', 'PHPSESSID', '1624373617', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624373617.801827;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"v2kn9r31me9cc43t7t03kqgu8m";}}' ),
( 'v4q647kv344bbdccj89r922ugl', 'PHPSESSID', '1624315330', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624315330.005466;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"v4q647kv344bbdccj89r922ugl";}}' ),
( 'v758hvppjsgtf5h9nlo4ntlhd5', 'PHPSESSID', '1624361568', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624361568.239179;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"v758hvppjsgtf5h9nlo4ntlhd5";}}' ),
( 'vabtcbo1tlrgdn1konbvcd9ql3', 'PHPSESSID', '1624319430', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624319429.969165;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"vabtcbo1tlrgdn1konbvcd9ql3";}}' ),
( 'vc0s94j474il8po2gl60kisvj9', 'PHPSESSID', '1624380091', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624380091.534101;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"vc0s94j474il8po2gl60kisvj9";}}' ),
( 'vcgl6b40cipo2u3f35a01avb8m', 'PHPSESSID', '1624340850', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624340849.979483;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"vcgl6b40cipo2u3f35a01avb8m";}}' ),
( 'veg5lno3bjq936342a3mhqr6st', 'PHPSESSID', '1624342862', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624342862.83734;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"veg5lno3bjq936342a3mhqr6st";}}' ),
( 'vkcgab6gn4padlf7ppcm4ksous', 'PHPSESSID', '1624417028', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624417028.16247;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"vkcgab6gn4padlf7ppcm4ksous";}}' ),
( 'vpd0hfgkqoelfhplljf1e4ekvj', 'PHPSESSID', '1624390972', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624390972.408285;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"vpd0hfgkqoelfhplljf1e4ekvj";}}' ),
( 'vpu3vhjsh214j5f0cac4vme1nf', 'PHPSESSID', '1624333913', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624333912.972124;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"vpu3vhjsh214j5f0cac4vme1nf";}}' ),
( 'vujd7dlpvhlcutibei4o78u17u', 'PHPSESSID', '1624385745', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624385745.508983;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"vujd7dlpvhlcutibei4o78u17u";}}' ),
( 'vvepf7eu91ie7qmj370kprrqg0', 'PHPSESSID', '1624376722', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624376722.473495;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"vvepf7eu91ie7qmj370kprrqg0";}}' ),
( 'vvvcguqmpq8mp7fkumb8rsarh6', 'PHPSESSID', '1624371624', '1440', '__ZF|a:2:{s:20:"_REQUEST_ACCESS_TIME";d:1624371624.355291;s:6:"_VALID";a:1:{s:25:"Zend\\Session\\Validator\\Id";s:26:"vvvcguqmpq8mp7fkumb8rsarh6";}}' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "career" -----------------------------------
BEGIN;

INSERT INTO `career`(`career_id`,`title`,`sub_title`,`image_path`,`content`,`name`,`email`,`mobile`,`pdf_path`,`type`,`status`,`created_at`,`updated_at`,`address`,`age`,`gender`,`years_of_exp`,`ctc`,`ectc`,`notice_period`,`order`) VALUES 
( '1', 'sales', '', '', '<p><strong>What are we looking for?</strong></p>
<p>We are looking for an experienced National First-Mile Head who will be responsible for managing manpower, infrastructure and also plans the First Mile operations in terms of receiving/ order building/ dispatching that helps run a seamless supply chain system at a National level. Ideal profile is someone with a minimum of 6+ years of supply chain operations experience with rich experience in First-Mile delivery and in team management. Someone who sees the big picture of the system, identify the inefficiencies, frame the optimizations that can be done, Scale the operations across all the cities.</p>
<p><strong>What will you do?</strong></p>
<ul>
<li>Own end to end First Mile Operations and ensure the end to end smooth running of logistics operations across all the seven cities.</li>
<li>Ensure availability of adequate and trained manpower at Facilities and all the cities as per manpower and business plan.</li>
<li>Responsible for the reduction in cost and increase in productivity.</li>
<li>Ensure SOP Adherence at all times..</li>
<li>Ensure commercial and statutory compliance are met along with the support of teams across all the cities.</li>
<li>Maintain the cost of operations as per the budget.</li>
<li>Ensuring Pan India Performance reporting periodically.</li>
<li>Bench marking with Competition by updating regarding First-Mile Delivery solutions, coping up with latest trends, innovations and industry best practices.</li>
<li>Driver key operational and customer service metrics consistently.</li>
<li>Manage cost, quality, and efficiency to achieve operations SLAs.</li>
<li>Ensure the system and ops level guidelines strictly adhere to the respective facilities.</li>
<li>Influence any changes necessary to meet statutory requirements, ensuring minimum risk to staff members and the business</li>
</ul>', '', '', '', '', '2', '0', '2020-10-01 15:22:30', '2020-11-30 16:11:02', '', '0', '', '0', '0', '0', '', '0' ),
( '2', '', '', '', '', 'krishna', 'krishna@gmail.com', '9988776655', '/data/images/4403block diagram.pdf', '3', '1', '2020-10-01 15:23:44', '2020-10-01 15:23:44', '', '0', '', '0', '0', '0', '', '0' ),
( '3', 'Cheaper, Faster, Better!', 'We are into global. Anywhere in PAN India! Any amount of order! We assure you on-time delivery of quality vegetables at modest prices.', '7699careers-img.png', '', '', '', '', '', '1', '1', '2020-10-01 15:25:54', '2020-10-01 15:25:54', '', '0', '', '0', '0', '0', '', '0' ),
( '4', '', '', '', '', 'iswer', 'iswer@gmail.com', '9879987985', '/data/images/9166sample .pdf', '3', '1', '2020-10-01 15:54:42', '2020-10-01 15:54:42', '', '0', '', '0', '0', '0', '', '0' ),
( '5', 'sample test', '', '', '<p>An online shop evokes the physical analogy of buying&nbsp;<a title="Product (business)" href="https://en.wikipedia.org/wiki/Product_(business)">products</a>&nbsp;or services at a regular&nbsp;<a class="mw-redirect" title="Brick and mortar business" href="https://en.wikipedia.org/wiki/Brick_and_mortar_business">"bricks-and-mortar"</a>&nbsp;<a class="mw-redirect" title="Retailing" href="https://en.wikipedia.org/wiki/Retailing">retailer</a>&nbsp;or&nbsp;<a title="Shopping center" href="https://en.wikipedia.org/wiki/Shopping_center">shopping center</a>; the process is called business-to-consumer (B2C) online shopping</p>
<p>&nbsp;</p>', '', '', '', '', '2', '0', '2020-10-09 10:17:58', '2020-10-09 10:18:18', '', '0', '', '0', '0', '0', '', '0' ),
( '6', 'We Hire Qualified & Skilled People. Join Us.', 'We\'re looking for qualified, enthusiastic, and talented people who can work to their full potential. Explore here for your dream career!!', '7699careers-img.png', '', '', '', '', '', '1', '1', '2020-10-17 13:43:20', '2020-10-17 13:43:20', '', '0', '', '0', '0', '0', '', '0' ),
( '7', 'We Hire Qualified & Skilled People. Join Us.', 'We\'re looking for qualified, enthusiastic, and talented people who can work to their full potential. Explore here for your dream career!!', '9931careers-img.png', '', '', '', '', '', '1', '1', '2020-10-30 16:34:50', '2020-10-30 16:34:50', '', '0', '', '0', '0', '0', '', '0' ),
( '8', '', '', '', '', 'Sam', 'sam@test.net', '9123456789', '/data/images/653sample.pdf', '3', '1', '2020-10-30 20:43:09', '2020-10-30 20:43:09', '', '0', '', '0', '0', '0', '', '0' ),
( '9', '', '', '', '', 'iswer', 'iswer@gmail.com', '9879987985', '/data/images/9824Test.docx', '3', '1', '2020-10-30 21:03:10', '2020-10-30 21:03:10', '', '0', '', '0', '0', '0', '', '0' ),
( '10', '', '', '', '', 'iswer', 'iswer@gmail.com', '9879987985', '/data/images/5264sample .pdf', '3', '1', '2020-10-30 21:03:35', '2020-10-30 21:03:35', '', '0', '', '0', '0', '0', '', '0' ),
( '11', '', '', '', '', 'iswer', 'iswer@gmail.com', '9879987985', '/data/images/7854Test.docx', '3', '1', '2020-10-30 21:06:24', '2020-10-30 21:06:24', '', '0', '', '0', '0', '0', '', '0' ),
( '12', '', '', '', '', 'iswer', 'iswer@gmail.com', '9879987985', '/data/images/5852Test.docx', '3', '1', '2020-10-30 21:11:55', '2020-10-30 21:11:55', '', '0', '', '0', '0', '0', '', '0' ),
( '14', 'Technical Development Lead', '', '', '<p><strong>Designation</strong>: Lead Developer</p>
<p><strong>Open Positions</strong>:&nbsp;1</p>
<p><strong>Department</strong>: Development (Technical)</p>
<p><strong>Location</strong>: Hyderabad (WFH Option)</p>
<p><strong>Years Of Exp</strong>:&nbsp;7 to 8 Years</p>
<p><strong>Job Description and&nbsp;Skills Required</strong>:&nbsp;</p>
<ul>
<li>Must have experience on 8 yrs Angular, Angular Material, Bootstrap 3 /4, NgRX, Typescript.</li>
<li>Must have experience on Server Side Technologies - Dotnet Core, Asp.Net Core.</li>
<li>Must have either google cloud or azure or amazon cloud experience.</li>
<li>Must have Mobile Application Development experience Hybrid or native - Nice to have Nativescript experience.</li>
<li>Strong experience of Angular Fr</li>
<li>One or more of unit testing like Jasmine, Karma, Protramework, HTML5/CSS3, Dotnet Core, Asp.Net Core, and collateral technologies.actor, Selenium<br />Coding Standards.</li>
<li>HTML, CSS, JavaScript, JQuery and Sass/LESS/etc</li>
<li>Ability to work on Angular component level and Angular Libraries.</li>
<li>Dependency Management, package managers, etc</li>
<li>Build Systems, Webpack/Gulp/etc.</li>
<li>Linting, Compiling, Minifying, etc</li>
<li>Performance Optimization for CSS, JS, images, asset caching.</li>
<li>Organizing and building UI modules, working closely with visually-focused designers/CSS developers.</li>
<li>Experience with Agile methodology and CI/CD pipeline - Build/Release, Infrastructure as Code, Dev/Test/Prod Setups.</li>
<li>Must have 5 yrs experience in Team Management.</li>
<li>Must demonstrate -</li>
<li>&nbsp;Build/Release Pipelines for Dev/Test/Prod =&gt; Containerization and enable Professional Pipeline.</li>
<li>Architect/Design - Twitter-based applications.</li>
</ul>', '', '', '', '', '2', '0', '2020-11-28 10:43:24', '2021-05-24 18:20:08', '', '0', '', '0', '0', '0', '', '0' ),
( '15', 'Purchase Analyst - Groceries', '', '', '<p><strong>Designation</strong>: Purchase Analyst - Groceries</p>
<p><strong>Open Positions</strong>:&nbsp;1</p>
<p><strong>Department</strong>: Purchase and Procurement</p>
<p><strong>Location</strong>: Hyderabad</p>
<p><strong>Years Of Exp</strong>: 3 to 5 Years</p>
<p><strong>Job Description and&nbsp;Skills Required</strong>:</p>
<ul>
<li><span data-preserver-spaces="true">Merchandiser or Purchase team member in any retail sector company.</span></li>
<li><span data-preserver-spaces="true">Should be able to handle 30 SKUs at any given point of time.</span></li>
<li><span data-preserver-spaces="true">FMCG pulses and grocery should have good knowledge in sourcing products from root level i.e manufacturers mills sound pricing strategy.</span></li>
<li><span data-preserver-spaces="true">Should able to interact in Hindi, Telugu, and English, any other local Language will be an added advantage.</span></li>
<li><span data-preserver-spaces="true">Willing to travel in India.</span></li>
<li><span data-preserver-spaces="true">Able to Build ToT (Terms of Trade)</span></li>
<li style="list-style-type: none;">
<p>&nbsp;</p>
</li>
</ul>', '', '', '', '', '2', '0', '2020-12-01 15:23:13', '2021-05-24 18:24:36', '', '0', '', '0', '0', '0', '', '0' ),
( '16', 'Sales Executives', '', '', '<p><strong>Designation</strong>: Sales Executives</p>
<p><strong>Open Positions</strong>: 5 to 10</p>
<p><strong>Department</strong>: Sales and Marketing</p>
<p><strong>Location</strong>: Hyderabad</p>
<p><strong>Years Of Exp</strong>: 1 to 3 Years</p>
<p><strong>Job Description and&nbsp;Skills Required</strong>:</p>
<p>Sales executives are the key point of contact between an organisation and its clients: answering queries, offering advice, and introducing new products.</p>
<p>Their work includes :</p>
<ul>
<li>Organising&nbsp;<strong>sales</strong></li>
<li>Demonstrating and presenting products.</li>
<li>Establishing new business.</li>
<li>Maintaining accurate records.</li>
<li>Reviewing&nbsp;<strong>sales</strong></li>
<li>Negotiating contracts and packages.</li>
<li>Aiming to achieve monthly or annual targets.</li>
</ul>', '', '', '', '', '2', '0', '2020-12-01 15:59:14', '2021-05-24 18:26:35', '', '0', '', '0', '0', '0', '', '0' ),
( '17', 'Sales Executive (Shooters)', '', '', '<p><strong>Designation</strong>: Sales Shooters</p>
<p><strong>Open Positions</strong>: 5 to 10</p>
<p><strong>Department</strong>: Sales and Marketing</p>
<p><strong>Location</strong>: Hyderabad</p>
<p><strong>Years Of Exp</strong>: 1 to 3 Years</p>
<p><strong>Job Description and&nbsp;Skills Required</strong>:</p>
<p><span data-preserver-spaces="true">Sales executives are the key point of contact between an organisation and its clients: answering queries, offering advice, and introducing new products.</span></p>
<p><span data-preserver-spaces="true">Their work includes :</span></p>
<ul>
<li><span data-preserver-spaces="true">Organising&nbsp;</span><strong><span data-preserver-spaces="true">sales</span></strong></li>
<li><span data-preserver-spaces="true">Demonstrating and presenting products.</span></li>
<li><span data-preserver-spaces="true">Establishing new business.</span></li>
<li><span data-preserver-spaces="true">Maintaining accurate records.</span></li>
<li><span data-preserver-spaces="true">Reviewing&nbsp;</span><strong><span data-preserver-spaces="true">sales</span></strong></li>
<li><span data-preserver-spaces="true">Negotiating contracts and packages.</span></li>
<li><span data-preserver-spaces="true">Aiming to achieve monthly or annual targets.</span></li>
</ul>', '', '', '', '', '2', '0', '2020-12-01 16:02:52', '2021-05-24 18:29:10', '', '0', '', '0', '0', '0', '', '0' ),
( '18', 'Logistics Personnel (Packers / Pickers) - Hyderabad', '', '', '<p><strong>Designation</strong>: Packers / Pickers</p>
<p><strong>Open Positions</strong>: 20 to 30</p>
<p><strong>Department</strong>: Operations</p>
<p><strong>Location</strong>: Hyderabad</p>
<p><strong>Years Of Exp</strong>: 0 to 1 Year</p>
<p><strong>Job Description and&nbsp;Skills Required</strong>:&nbsp;</p>
<ul>
<li>Need to pick and pack the Products as per the Order List (Vegetables,Fruits &amp; Groceries)</li>
<li>Should be able to work as per below shifts
<ul>
<li><strong>Night 01:00 AM to Morning 09:00 AM</strong> (Includes Vegetables Packing and Loading)<br /><br /></li>
</ul>
</li>
<li>Qualification : 10th / 12th / Degree</li>
<li>Should be able to read English</li>
<li>Age : 19 years to 30 years Max</li>
<li>Should be physically fit to lift products</li>
</ul>
<p><strong>Benefits :</strong></p>
<ul>
<li>Group Insurance applicable for Accidental Insurance of 5 Lacs(GPA).</li>
<li>Attendance Bonus of 1000/Month.</li>
<li>Medical Insurance covered for Self and Family.</li>
</ul>
<p>&nbsp;</p>', '', '', '', '', '2', '1', '2020-12-01 16:33:53', '2021-04-09 16:46:40', '', '0', '', '0', '0', '0', '', '0' ),
( '19', 'Logistics Personnel (Packer cum Delivery Executives) - Hyderabad', '', '', '<div class="main-content">
<div class="container-fluid py-5 bg-white">
<div class="container">
<div class="mb-4">
<p><strong>Designation</strong>: Packer cum Delivery Executives (PCD)</p>
<p><strong>Open Positions</strong>: 20 to 30</p>
<p><strong>Department</strong>: Operations</p>
<p><strong>Location</strong>: Hyderabad</p>
<p><strong>Years Of Exp</strong>: 0 to 1 Year</p>
<p><strong>Job Description and&nbsp;Skills Required</strong>:&nbsp;</p>
<ul>
<li>Need to pick and pack the Products as per the Order List (Vegetables,Fruits &amp; Groceries)</li>
<li>Should be able to work as per below shifts
<ul>
<li><strong>02:00 AM to 02:00 PM</strong>&nbsp;(Includes Vegetables Packing, Loading and Delivery)<br /><br /></li>
</ul>
</li>
<li>Qualification : 10th / 12th / Degree</li>
<li>Should be able to read English</li>
<li>Age : 19 years to 30 years Max</li>
<li>Should be physically fit to lift products</li>
<li>Should be polite and patient with Customers.</li>
</ul>
<p><strong>Benefits :</strong></p>
<ul>
<li>Group Insurance applicable for Accidental Insurance of 5 Lacs(GPA).</li>
<li>Attendance Bonus of 1000/Month.</li>
<li>Medical Insurance covered for Self and Family.</li>
</ul>
<p>&nbsp;</p>
</div>
</div>
</div>
</div>', '', '', '', '', '2', '1', '2020-12-01 16:39:59', '2022-02-07 12:44:16', '', '0', '', '0', '0', '0', '', '3' ),
( '20', 'Logistics Personnel (Delivery Executives) - Hyderabad', '', '', '<p><strong>Designation</strong>: Delivery Executives (DE)</p>
<p><strong>Open Positions</strong>: 20 to 30</p>
<p><strong>Department</strong>: Operations</p>
<p><strong>Location</strong>: Hyderabad</p>
<p><strong>Years Of Exp</strong>: 0 to 1 Year</p>
<p><strong>Job Description and&nbsp;Skills Required</strong>:&nbsp;</p>
<ul>
<li>Need to deliver the orders to the Customers as per the list provided.</li>
<li>Should be able to work as per the shifts given below:
<ul>
<li><strong>06:00 AM to 02:00 PM</strong>&nbsp;(Includes Vegetables Delivery)</li>
<li><strong>07:00 AM to 05:00 PM</strong>&nbsp;(Includes Groceries Delivery)<br /><br /></li>
</ul>
</li>
<li>Qualification : 10th / 12th / Degree</li>
<li>Should be able to read English</li>
<li>Age : 19 years to 30 years Max</li>
<li>Should be physically fit.</li>
<li>Should be polite and patient with Customers.</li>
</ul>
<p><strong>Benefits :</strong></p>
<ul>
<li>Group Insurance applicable for Accidental Insurance of 5 Lacs(GPA).</li>
<li>Attendance Bonus of 1000/Month.</li>
<li>Medical Insurance covered for Self and Family.</li>
</ul>
<p>&nbsp;</p>', '', '', '', '', '2', '1', '2020-12-01 16:44:54', '2021-04-09 16:39:13', '', '0', '', '0', '0', '0', '', '0' ),
( '21', 'Logistics Personnel (Loader) - Hyderabad', '', '', '<p><strong>Designation</strong>: Loaders</p>
<p><strong>Open Positions</strong>: 20 to 30</p>
<p><strong>Department</strong>: Operations</p>
<p><strong>Location</strong>: Hyderabad</p>
<p><strong>Years Of Exp</strong>: 0 to 1 Year</p>
<p><strong>Job Description and&nbsp;Skills Required</strong>:&nbsp;</p>
<ul>
<li>Need to Load the orders as per the instructions.
<ul>
<li><strong>09:00 AM to 07:00 PM</strong>&nbsp;(Includes Vegetables)</li>
<li><strong>11:00 PM to 09:00 AM</strong>&nbsp;(Includes Groceries )</li>
</ul>
</li>
<li>Qualification : 10th / 12th / Degree</li>
<li>Should be able to read English</li>
<li>Age : 19 years to 30 years Max</li>
<li>Should be physically fit to load the orders.</li>
</ul>
<p><strong>Benefits :</strong></p>
<ul>
<li>Group Insurance applicable for Accidental Insurance of 5 Lacs(GPA).</li>
<li>Attendance Bonus of 1000/Month.</li>
<li>Medical Insurance covered for Self and Family.</li>
</ul>
<p>&nbsp;</p>', '', '', '', '', '2', '1', '2020-12-01 16:48:40', '2021-04-09 16:36:35', '', '0', '', '0', '0', '0', '', '0' ),
( '22', 'Developer', '', '', '<p><strong>Open Positions</strong>: 2 To 4</p>
<p><strong>Department</strong>: Engineering&nbsp;</p>
<p><strong>Location</strong>: Hyderabad</p>
<p><strong>Years Of Exp</strong>: 1 to 3 Year</p>
<h6><strong>Job Description and&nbsp;Skills Required</strong>:</h6>
<div class="dang-inner-html">
<ul>
<li>Expertise in Javascript, Web API, Angular, C#, SQL Server</li>
<li>.Net/.Net Core &amp; Angular Developer</li>
<li>The ability to write SQL queries and procedures is a mandate</li>
<li>Knowledge of Agile Methodology, Cloud exposure added advantage</li>
<li>Should be a Self-learner, creative, and have excellent logical &amp; analytical skills</li>
<li>Should be a Team player and have excellent communication skills</li>
<li>Quality and process-oriented</li>
<li>Great Attitude a major plus</li>
</ul>
<p><strong>Desired Candidate Profile</strong></p>
<p>Engineering Graduate or MCA</p>
<p>Interested Candidates can send their resumes to hr@qwipo.com or reach out on 9154297177</p>
</div>', '', '', '', '', '2', '1', '2021-04-20 12:14:28', '2021-04-24 10:54:51', '', '0', '', '0', '0', '0', '', '0' ),
( '23', 'Sales Executives', '', '', '<p><strong>Open Positions</strong>: 5 to 10</p>
<p><strong>Department</strong>: Sales and Marketing</p>
<p><strong>Location</strong>:Vijayawada&nbsp;</p>
<p><strong>Years Of Exp</strong>: 1 to 3 Years</p>
<p><strong>Job Description and&nbsp;Skills Required</strong>:</p>
<p><span data-preserver-spaces="true">Sales executives are the key point of contact between an organisation and its clients: answering queries, offering advice, and introducing new products.</span></p>
<p><span data-preserver-spaces="true">Their work includes :</span></p>
<ul>
<li><span data-preserver-spaces="true">Organising&nbsp;</span><strong><span data-preserver-spaces="true">sales</span></strong></li>
<li><span data-preserver-spaces="true">Demonstrating and presenting products.</span></li>
<li><span data-preserver-spaces="true">Establishing new business.</span></li>
<li><span data-preserver-spaces="true">Maintaining accurate records.</span></li>
<li><span data-preserver-spaces="true">Reviewing&nbsp;</span><strong><span data-preserver-spaces="true">sales</span></strong></li>
<li><span data-preserver-spaces="true">Negotiating contracts and packages.</span></li>
<li><span data-preserver-spaces="true">Aiming to achieve monthly or annual targets</span></li>
</ul>', '', '', '', '', '2', '1', '2021-04-24 10:51:58', '2021-04-24 10:51:58', '', '0', '', '0', '0', '0', '', '0' ),
( '24', 'Vendor Acquisition Manager', '', '', '<p><strong>Open Positions</strong>: 1 to 3</p>
<p><strong>Department</strong>: Sales and Marketing</p>
<p><strong>Location</strong>:Vijayawada&nbsp;</p>
<p><strong>Years Of Exp</strong>: 1 to 3 Years</p>
<p><strong>Job Description and&nbsp;Skills Required</strong>:</p>
<p>Education Level: Bachelor\'s degree in Supply Chain Management, Marketing, Business Administration, or a related field.</p>
<p><strong>JOB discription :-&nbsp;</strong></p>
<p>Need to manage vendor activities and maintain both new and existing vendor relationships. Identify suitable vendors,</p>
<p>negotiate with vendors to secure the best prices for products and services, and ensure that vendors fulfil their contractual obligations.</p>
<p><strong>Responsibilities:</strong></p>
<p>Developing and sustaining long-standing relationships with company-approved vendors.</p>
<p>Meeting with suitable vendors to assess their products, inquire about their services, negotiate pricing and best quality, and communicate any product or service-related concerns.</p>', '', '', '', '', '2', '1', '2021-04-24 10:57:55', '2021-04-24 10:57:55', '', '0', '', '0', '0', '0', '', '0' ),
( '25', 'Mid Level Developer', '', '', '<p><strong>Open Positions</strong>: 4 to 5</p>
<p><strong>Department</strong>: Engineering&nbsp;</p>
<p><strong>Location</strong>: Hyderabad</p>
<p><strong>Years Of Exp</strong>: 2 to 4 Year</p>
<p><strong>Job Description and&nbsp;Skills Required:</strong></p>
<ul>
<li>Engineering Graduate or MCA</li>
<li>2 to 4 years of hands on experience as .Net/.Net Core &amp; Angular Developer</li>
<li>&nbsp;Expertise in Javascript, Web API, Angular, C#, SQL Server</li>
<li>&nbsp;Ability to write SQL queries and procedures is mandate</li>
<li>Knowledge on Agile Methodology, Cloud exposure added advantage</li>
<li>Should be a Self-learner, creative and have excellent logical &amp; analytical skills</li>
<li>Should be a Team player and have excellent communication skills</li>
<li>Quality and process oriented</li>
<li>Great Attitude a major plus</li>
</ul>', '', '', '', '', '2', '1', '2021-05-24 18:12:38', '2021-05-24 18:16:03', '', '0', '', '0', '0', '0', '', '0' ),
( '26', 'Technical Development Lead', '', '', '<p><strong>Designation</strong>: Lead Developer</p>
<p><strong>Open Positions</strong>:&nbsp;1</p>
<p><strong>Department</strong>: Development (Technical)</p>
<p><strong>Location</strong>: Hyderabad (WFH Option)</p>
<p><strong>Years of experience</strong>:&nbsp;7 to 8 Years</p>
<p><strong>Job Description and&nbsp;Skills Required</strong>:&nbsp;</p>
<ul>
<li>Must have experience on 8 yrs Angular, Angular Material, Bootstrap 3 /4, NgRX, Typescript.</li>
<li>Must have experience on Server-Side Technologies - Dotnet Core, Asp.Net Core.</li>
<li>Must have either google cloud or azure or amazon cloud experience.</li>
<li>Must have Mobile Application Development Experience Hybrid or native - Nice to have Nativescript experience.</li>
<li>Strong experience of Angular Fr</li>
<li>One or more of unit testing like Jasmine, Karma, Protramework, HTML5/CSS3, Dotnet Core, Asp.Net Core, and collateral technologies.actor, Selenium<br />Coding Standards.</li>
<li>HTML, CSS, JavaScript, JQuery and Sass/LESS/etc</li>
<li>Ability to work on Angular component level and Angular Libraries.</li>
<li>Dependency Management, package managers, etc</li>
<li>Build Systems, Webpack/Gulp/etc.</li>
<li>Linting, Compiling, Minifying, etc</li>
<li>Performance Optimization for CSS, JS, images, asset caching.</li>
<li>Organizing and building UI modules, working closely with visually-focused designers/CSS developers.</li>
<li>Experience with Agile methodology and CI/CD pipeline - Build/Release, Infrastructure as Code, Dev/Test/Prod Setups.</li>
<li>Must have 5 yrs experience in Team Management.</li>
<li>Must demonstrate -</li>
<li>&nbsp;Build/Release Pipelines for Dev/Test/Prod =&gt; Containerization and enable Professional Pipeline.</li>
<li>Architect/Design - Twitter-based applications.</li>
</ul>', '', '', '', '', '2', '1', '2021-05-24 18:20:55', '2021-05-24 18:20:55', '', '0', '', '0', '0', '0', '', '0' ),
( '27', 'Purchase Analyst – Groceries', '', '', '<p><strong>Designation</strong>: Purchase Analyst - Groceries</p>
<p><strong>Open Positions</strong>:&nbsp;1</p>
<p><strong>Department</strong>: Purchase and Procurement</p>
<p><strong>Location</strong>: Hyderabad</p>
<p><strong>Years of exp</strong>: 3 to 5 Years</p>
<p><strong>Job Description and&nbsp;Skills Required</strong>:</p>
<ul>
<li>Merchandiser or Purchase team member in any retail sector company.</li>
<li>Should be able to handle 30 SKUs at any given point of time.</li>
<li>FMCG pulses and grocery should have good knowledge in sourcing products from root level i.e manufacturers mill sound pricing strategy.</li>
<li>Should able to interact in Hindi, Telugu, and English, any other local Language will be an added advantage.</li>
<li>Willing to travel in India.</li>
<li>Able to Build ToT (Terms of Trade)</li>
</ul>', '', '', '', '', '2', '1', '2021-05-24 18:25:14', '2021-05-24 18:25:14', '', '0', '', '0', '0', '0', '', '0' ),
( '28', 'Sales Executives', '', '', '<p><strong>Designation</strong>: Sales Executives</p>
<p><strong>Open Positions</strong>: 5 to 10</p>
<p><strong>Department</strong>: Sales and Marketing</p>
<p><strong>Location</strong>: Hyderabad</p>
<p><strong>Years of Exp</strong>: 1 to 3 Years</p>
<p><strong>Job Description and&nbsp;Skills Required</strong>:</p>
<p>Sales executives are the key point of contact between an organisation and its clients: answering queries, offering advice, and introducing new products.</p>
<p>Their work includes:</p>
<ul>
<li>Organising&nbsp;<strong>sales</strong></li>
<li>Demonstrating and presenting products.</li>
<li>Establishing new business.</li>
<li>Maintaining accurate records.</li>
<li>Reviewing&nbsp;<strong>sales</strong></li>
<li>Negotiating contracts and packages.</li>
<li>Aiming to achieve monthly or annual targets.</li>
</ul>', '', '', '', '', '2', '1', '2021-05-24 18:27:28', '2021-05-24 18:27:28', '', '0', '', '0', '0', '0', '', '0' ),
( '29', 'Sales Executive (Shooters)', '', '', '<p><strong>Designation</strong>: Sales Shooters</p>
<p><strong>Open Positions</strong>: 5 to 10</p>
<p><strong>Department</strong>: Sales and Marketing</p>
<p><strong>Location</strong>: Hyderabad</p>
<p><strong>Years of Exp</strong>: 1 to 3 Years</p>
<p><strong>Job Description and&nbsp;Skills Required</strong>:</p>
<p>Sales executives are the key point of contact between an organisation and its clients: answering queries, offering advice, and introducing new products.</p>
<p>Their work includes:</p>
<ul>
<li>Organising&nbsp;<strong>sales</strong></li>
<li>Demonstrating and presenting products.</li>
<li>Establishing new business.</li>
<li>Maintaining accurate records.</li>
<li>Reviewing&nbsp;<strong>sales</strong></li>
<li>Negotiating contracts and packages.</li>
<li>Aiming to achieve monthly or annual targets.</li>
</ul>', '', '', '', '', '2', '1', '2021-05-24 18:29:43', '2021-05-24 18:29:43', '', '0', '', '0', '0', '0', '', '0' ),
( '30', 'Mid Level Developer', '', '', '<p><strong>Designation</strong>: Mid Level Developer&nbsp;</p>
<p><strong>Open Positions</strong>: 4</p>
<p><strong>Department</strong>: Engineering&nbsp;</p>
<p><strong>Location</strong>: Hyderabad</p>
<p><strong>Years of Exp</strong>: 1 to 3 Years</p>
<p><strong>Job Description and&nbsp;Skills Required</strong>:<br />Engineering Graduate or MCA<br />4 to 6 years of hands on experience as .Net/.Net Core &amp; Angular Developer<br />Expertise in Javascript, Web API, Angular, C#, SQL Server<br />Ability to write SQL queries and procedures is mandate<br />Knowledge on Agile Methodology, Cloud exposure added advantage<br />Should be a Self-learner, creative and have excellent logical &amp; analytical skills<br />Should be a Team player and have excellent communication skills<br />Quality and process oriented<br />Great Attitude a major plus<br />Minimum 4 Years experience mandatory<br />Immediate joining to 15days more preferrable<br />Salary range would be in between 6 to 8 Lakhs</p>', '', '', '', '', '2', '1', '2021-06-16 16:44:29', '2022-02-07 12:19:07', '', '0', '', '0', '0', '0', '', '2' ),
( '31', NULL, '', '', NULL, 'Hunter Vargas', 'juhaqyxe@mailinator.com', 'Autem delectus ipsa', '/data/images/9835Letter of Recommendation.docx', '3', '1', '2022-01-13 11:01:13', '2022-01-13 11:01:13', '', '0', '', '0', '0', '0', '', '0' ),
( '32', NULL, '', '', NULL, 'Kadeem Odom', 'kewuxi@mailinator.com', 'Nesciunt tenetur ar', '/data/images/82payment-receipt.pdf', '3', '1', '2022-01-13 11:01:58', '2022-01-13 11:01:58', '', '0', '', '0', '0', '0', '', '0' ),
( '33', NULL, '', '', NULL, 'Phillip Carpenter', 'ravepivihe@mailinator.com', 'Tenetur labore ea lo', '/data/images/3528Letter of Recommendation.docx', '3', '1', '2022-01-13 11:13:40', '2022-01-13 11:13:40', 'Quibusdam enim quibu', '86', 'female', '2007', '98', '22', 'Est nisi voluptas do', '0' ),
( '34', NULL, '', '', NULL, 'Erin Lloyd', 'danaxadifa@mailinator.com', 'Quos dolorem reprehe', '/data/images/5688Letter of Recommendation.docx', '3', '1', '2022-01-13 11:14:31', '2022-01-13 11:14:31', 'Dolor libero ut sapi', '91', 'male', '1986', '73', '13', 'Repudiandae numquam', '0' ),
( '35', NULL, '', '', NULL, 'Aretha Petty', 'tohuf@mailinator.com', 'Tempore deserunt la', '/data/images/4330result.pdf', '3', '1', '2022-01-13 11:16:17', '2022-01-13 11:16:17', 'Quod quia veritatis', '60', 'female', '1970', '82', '95', 'Dignissimos mollit v', '0' ),
( '36', NULL, '', '', NULL, 'Lacey Norton', 'rotyfac@mailinator.com', 'Quia esse unde ullam', '/data/images/5662payment-receipt.pdf', '3', '1', '2022-01-13 12:03:08', '2022-01-13 12:03:08', 'Ex consequatur In e', '34', 'male', '1996', '36', '22', 'Ea placeat sint si', '0' ),
( '37', NULL, '', '', NULL, 'Yeo Sandoval', 'tajuve@mailinator.com', 'Et sunt dolore perfe', '/data/images/8316Letter of Recommendation.docx', '3', '1', '2022-02-05 04:47:16', '2022-02-05 04:47:16', 'Quia praesentium rep', '21', 'female', '2010', '54', '9', 'Lorem voluptas simil', '0' ),
( '38', NULL, '', '', NULL, 'Cairo Mills', 'biroxub@mailinator.com', 'Minus ea impedit di', '', '3', '1', '2022-02-05 04:50:25', '2022-02-05 04:50:25', 'Fugiat autem id eaqu', '47', 'female', '2010', '30', '75', 'Unde id et consecte', '0' ),
( '39', NULL, '', '', NULL, 'Carlos Lyons', 'poqegi@mailinator.com', 'Velit voluptates eli', '', '3', '1', '2022-02-05 04:50:54', '2022-02-05 04:50:54', 'Enim cupidatat commo', '90', 'female', '1972', '67', '88', 'Optio earum esse c', '0' ),
( '40', NULL, '', '', NULL, 'Meghan Dunlap', 'diwigep@mailinator.com', 'Repudiandae voluptas', '/data/images/4689payment-receipt.pdf', '3', '1', '2022-02-06 03:26:49', '2022-02-06 03:26:49', 'Aut dolor reprehende', '41', 'male', '2002', '50', '49', 'Provident velit exc', '0' ),
( '41', NULL, '', '', NULL, 'Astra Lara', 'arslanaslam173@gmail.com', 'Tenetur sit eos vol', '/data/images/2696Arslan Aslam CV.pdf', '3', '1', '2022-02-07 11:33:24', '2022-02-07 11:33:24', 'Aliqua Perferendis', '32', 'male', '2008', '81', '74', 'Et laboris aliqua F', '0' ),
( '42', 'Qui eos voluptatem m', '', '', '<p>Neque nostrum volupt.</p>', '', '', '', '', '2', '1', '2022-02-07 12:35:01', '2022-02-07 12:43:11', NULL, NULL, NULL, '0', '0', '0', NULL, '1' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "blog" -------------------------------------
BEGIN;

INSERT INTO `blog`(`blog_id`,`title`,`custom_url`,`content`,`image_path`,`date`,`status`,`created_at`,`updated_at`) VALUES 
( '4', 'How to make your online grocery shopping a health affair?', 'How-to-make-your-online-grocery-shopping-a-health-affair-', '<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
<p>&nbsp;</p>
<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
<p>&nbsp;</p>
<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
<p>&nbsp;</p>
<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
<p>&nbsp;</p>', '82525394.jpg', '26/08/2020', '0', '2020-08-25 19:58:50', '2020-10-30 16:59:06' ),
( '5', 'sdsf', 'sfdsf', '<p>safsdfsdgfd</p>', '8557blogs-2.png', '12/08/2020', '0', '2020-08-25 20:05:31', '2020-08-25 21:10:05' ),
( '6', 'Why is it great to opt for online grocery delivery?', 'Why-is-it-great-to-opt-for-online-grocery-delivery-', '<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
<p>&nbsp;</p>
<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
<p>&nbsp;</p>
<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
<p>&nbsp;</p>
<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '29611228.jpg', '31/08/2020', '0', '2020-08-26 16:09:29', '2020-10-30 16:58:58' ),
( '7', '4 things that make Online Grocery stores score  over local stores', '4-things-that-make-Online-Grocery-stores-score-over-local-stores', '<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '972374.jpg', '02/09/2020', '0', '2020-08-26 16:10:40', '2020-10-30 16:57:28' ),
( '8', 'How to make your online grocery shopping a health affair?', 'How-to-make-your-online-grocery-shopping-a-health-affair-', '<div>
<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
</div>
<div>
<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
</div>', '1022872988.jpg', '18/08/2020', '0', '2020-08-27 15:40:32', '2020-10-30 16:57:22' ),
( '9', '4 things that make Online Grocery stores score over local stores', '4-things-that-make-Online-Grocery-stores-score-over-local-stores', '<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '95898714.jpg', '02/10/2020', '0', '2020-09-03 21:00:30', '2020-10-30 16:57:13' ),
( '10', 'A simplified supply chain for conducting effective business', 'A-simplified-supply-chain-for-conducting-effective-business', '<p>India is the largest producer of various fresh vegetables, fruits, and meat; groceries and spices; and fibrous crops. The produce of the vegetable alone is around 146 million tons per annum.</p>
<p>Marketing of these vegetables and groceries is challenging than other goods or products because of their perishability and seasonality. However, the proper supply chain management helps to tackle challenges and reap profits for any business.</p>
<p>Let&rsquo;s dive into the details.</p>
<p><strong>What is the supply chain?</strong></p>
<p>Within each organization, the elements of a supply chain include Farms, mills, Warehouses/collection/distribution centers, retail outlets, and doorsteps of the end customer. And the people involved in the chain include farmers, prime suppliers, manufacturers, transporters, retailers, and customers.</p>
<p>In general, products/goods are moved from suppliers to manufacturers to distributors to retailers to customers along a chain. This supply chain is dynamic and information flows along the chain in both directions.</p>
<h6><strong>The importance of supply chain management:</strong></h6>
<p>The primary purpose of any supply chain management is customer satisfaction which impacts the bottom line of an organization or company.</p>
<p>There will be unexpected changes in demand and supply. And it is challenging to meet the fluctuating needs and diversified orders of customers.</p>
<p>The objectives of supply chain management include:</p>
<p>&bull; To fulfill time-sensitive orders<br />&bull; To manage transaction flows-information, inventory, and financial<br />&bull; To resolve execution errors in inventory, shipment, and payments<br />&bull; To cut costs and increase profits<br />&bull; To build strong and healthy relationships with farmers, prime suppliers, and business customers.<br />&bull; To eliminate waste from the supply chain</p>
<p>Hence, it is mandatory to think for a simplified yet effective supply chain management.</p>
<p><strong>How to simplify the supply chain to improve its performance?</strong><br /><br />Firstly, make sure everyone in the supply chain adheres to the same objective of your business &ndash; Delivering quality services.</p>
<p>Here is the 10-step model (M.A.N.A.G.E.M.E.N.T). Manage management.</p>
<p>M &ndash; Model Your supply Chain</p>
<p>A - Adopt &amp; Leverage Latest Technologies</p>
<p>N &ndash; Nullify execution errors</p>
<p>A &ndash; Agreement with farmers and prime suppliers</p>
<p>G &ndash; Go for Green Initiatives</p>
<p>E &ndash; Ensure freshness every time</p>
<p>M &ndash; Mobilize the supply chain to globalize your business</p>
<p>E &ndash; Embrace the Inherent CSR</p>
<p>N &ndash; No compromise on quality and faster delivery</p>
<p>T &ndash; Track, Assess, the performance every time</p>
<p><strong>Model Your Supply Chain:</strong></p>
<p>Act strategically to improve the supply chain. </p>
<p>&bull; A service provider should define the roles of all the staff in the supply chain so that there would be no scope for conflicts.<br />&bull; Have well-trained and skilled staff to be productive and to work on the &ldquo;big picture&rdquo; of your company. <br />&bull; Have the latest transport system even for long-distance to eliminate intermediaries.<br />&bull; Have modern packaging to improve the longevity of freshness. <br />&bull; Provide round-the-clock customer support for greater customer loyalty and brand credibility.</p>
<p><strong>Adopt and Leverage Latest Technologies:</strong></p>
<p>Stay abreast of the latest advancements in technologies. </p>
<p>&bull; Integrate Blockchain technology to streamline your supply chain by enabling quick and cost-efficient delivery, traceability, and improve collaboration between two ends of the supply chain.<br />&bull; Harness the power of AI for data collection, tracking, and evaluating to get detailed analytics, demand forecasting, and insights into your business.<br />&bull; Automate orders: Based on the historical data, forecast accurate demand, and reduce unmet demand and excessive ordering. With Live POS data, you can be more responsive to fluctuations in demand. Integrate both historical and live POS data into ordering tools to automate orders.</p>
<p><strong>Nullify execution errors:</strong></p>
<p>Resolve execution errors in procurement, inventory, shipment, and payments. Follow the top players in vegetables and grocery supply such as Qwipo that has built its supply chain on agility, adaptability, and alignment.</p>
<p><strong>Agreement with farmers and prime suppliers</strong></p>
<p>Find reliable suppliers (farmers and prime suppliers) and have a contractual agreement with them to deliver the best quality to your customers. </p>
<p>&bull; It helps farmers and prime suppliers to know the market demand, price, etc. <br />&bull; It helps them to receive the right price. <br />&bull; It forms strong and healthy relationships with them.<br />&bull; It ensures a disruption less supply for retailers and higher prices for farmers. <br />&bull; Educate farmers about the latest farming practices (if possible).<br />&bull; Provide storage requirements whenever required because small farmers may not have facilities to process the vegetables and fruits after harvesting.</p>
<p><strong>Go for Green Initiatives</strong> </p>
<p>&bull; Provide simple and seamless digital payments/transactions.<br />&bull; Have tech-driven green logistics and reduced optimal routes from the farm to the doorsteps of your customers to reduce the footprint on the go.</p>
<p><strong>Ensure freshness every time</strong></p>
<p>Fresh vegetables have a short lifetime and seasonal groceries as well. As a provider/supplier, make sure you supply them on time before they damaged/rotten. <br />Buy fresh and good quality vegetables and fruits from farmers directly. Ensure your collection center has all the facilities to keep the stuff clean, nutritious, and hygienic to maintain the quality. For groceries, you can store them in a clean and hygienic ambience.</p>
<p><strong>Mobilize the supply chain to globalize your business</strong></p>
<p>As services increases, the supply chain becomes more complex. So, it is better to have a mobile application to cater the global needs. Technology-driven supply chain lets you organize your inventory data, manage shipping, monitor distribution, etc. remotely.</p>
<p><strong>Embrace the Inherent CSR</strong></p>
<p>Embrace the inherent corporate social responsibility like Qwipo, a vegetable and grocery provider whose motto is is to improve the ROI of the farmers, prime suppliers, and business customers.</p>
<p><strong>No compromise on quality and faster delivery</strong></p>
<p>Quick and quality supply wins the game. </p>
<p>&bull; Be ready to cater to different consumer orders/demands at different hours.<br />&bull; Centralize both the manufacturing and distribution facilities to reduce the transportation time while increasing the number of orders.</p>
<p><strong>Track, Assess, and Improve the performance </strong></p>
<p>Track the whole supply chain using software tools, perform a logistics assessment to know where improvements can be made. And repeat this step constantly.</p>
<p><strong>Conclusion:</strong></p>
<p>Proper supply chain management is the fuel for effective business. If you want to maximize returns, maximize the supply chain&rsquo;s performance. Focus on sustainability and practice ethical ways of doing business within your supply chain. It is a great way to expose your business values, ethics, and culture to your suppliers and customers.</p>
<p>Stay connected and collaborative all the time!.</p>', '7703blog1-supply-chain.png', '29/10/2020', '1', '2020-09-03 21:07:41', '2021-04-28 17:25:09' ),
( '11', 'Blog new', 'Blog-new', '<p>Service First</p>', '4709blogs.png', '10/09/2020', '0', '2020-09-30 14:20:59', '2020-09-30 14:21:57' ),
( '12', 'example of Qwipo Shopping', 'example-of-Qwipo-Shopping', '<p>Online shopping is a form of&nbsp;<strong>electronic commerce</strong>&nbsp;which allows consumers to directly buy goods or services from a seller over the Internet using a web browser. Consumers find a product of interest by visiting the website of the retailer directly or by searching among alternative vendors using a shopping search engine, which displays the same product\'s availability and pricing at different e-retailers. As of 2020, customers can shop online using a range of different computers and devices ...</p>', '4442shopping-1232944_640.jpg', '06/10/2020', '0', '2020-10-08 11:24:24', '2020-10-08 11:28:53' ),
( '13', 'example 2', 'example-2', '<p>Online shopping is a form of&nbsp;<strong>electronic commerce</strong>&nbsp;which allows consumers to directly buy goods or services from a seller over the Internet using a web browser. Consumers find a product of interest by visiting the website of the retailer directly or by searching among alternative vendors using a shopping search engine, which displays the same product\'s availability and pricing at different e-retailers. As of 2020, customers can shop online using a range of different computers and devices ...</p>
<p>&nbsp;</p>', '6657shopping-1232944_640.jpg', '09/10/2020', '0', '2020-10-08 11:25:39', '2020-10-08 11:28:49' ),
( '14', 'example3', 'example3', '<p>Online shopping is a form of&nbsp;<strong>electronic commerce</strong>&nbsp;which allows consumers to directly buy goods or services from a seller over the Internet using a web browser. Consumers find a product of interest by visiting the website of the retailer directly or by searching among alternative vendors using a shopping search engine, which displays the same product\'s availability and pricing at different e-retailers. As of 2020, customers can shop online using a range of different computers and devices ...</p>
<p>&nbsp;</p>', '9600shopping-1232944_640.jpg', '05/08/2020', '0', '2020-10-08 11:26:40', '2020-10-08 11:28:48' ),
( '15', 'example4', 'example4', '<p>Online shopping is a form of&nbsp;<strong>electronic commerce</strong>&nbsp;which allows consumers to directly buy goods or services from a seller over the Internet using a web browser. Consumers find a product of interest by visiting the website of the retailer directly or by searching among alternative vendors using a shopping search engine, which displays the same product\'s availability and pricing at different e-retailers. As of 2020, customers can shop online using a range of different computers and devices ...</p>
<p>&nbsp;</p>', '4777shopping-1232944_640.jpg', '31/12/2020', '0', '2020-10-08 11:28:06', '2020-10-08 11:28:43' ),
( '16', '2020 Farm Bills: How Do They Empower Indian Farmers?', '2020-farm-bills-how-do-they-empower-indian-farmers', '<p>The farm bills announced by the Loksabha have become a hot topic recently. Though there are some protests running against these bills, hopefully we believe it should come in favour of the farmers.</p>
<p>Let&rsquo;s dive into details.</p>
<h3><strong>What are Farm Bills-2020?</strong></h3>
<p>Loksabha has announced three farm bills on 14<sup>th</sup> September 2020. They are:</p>
<ul>
<li><strong>The Essential Commodities (Amendment) Bill</strong></li>
</ul>
<p>This bill regulates the food supply even at the times of calamities such as famines. Also, there will be an imposition on the stock limit (agriculture produce) based on the rise in prices.</p>
<ul>
<li><strong>Farmers\' Produce Trade and Commerce (Promotion and Facilitation) Bill</strong></li>
</ul>
<p>It is also referred to as the APMC ByPass Bill. Farmers and traders will have full freedom of choice for sale and purchase of their produce. No barriers for trading as this bill allows both intra and inter-state trading.</p>
<ul>
<li><strong>Farmers (Empowerment and Protection) Agreement on Price Assurance and Farm Services Bill</strong></li>
</ul>
<p>This bill allows fair and transparent prices for farmers. It allows creating a framework on farming contracts between farmers and buyers before production and farmers can sell their produce on pre-agreed prices. <strong>&nbsp;</strong></p>
<p><strong>How do the bills empower Indian farmers?</strong></p>
<p><strong>It is farmer-centric! </strong></p>
<p>Farmers will have full freedom to trade their produce anywhere (intrastate and inter-state trade) beyond the premises of APMC (Agricultural Produce Marketing Committee) markets and to anyone. They can contact well-known exporters and traders globally. They are the traders of their own produce.</p>
<p><strong>It doesn&rsquo;t affect MSP and Mandis!</strong></p>
<p>It is not against agricultural Mandis (markets) as farmers still can choose to sell their produce at mandis. The minimum support price (MSP) that guarantees a minimum price for the crops will be continued as it was. It will be the same when farmers sell their produce through Mandis. Moreover, the MSPs were increased for some produces because of these bills.&nbsp;</p>
<p><strong>It improves the revenue of farmers!</strong></p>
<p>As farmers can directly contact exporters and traders, they can get accurate and transparent prices for their produce. In India, 86 % are small farmers. With these new bills, they can get high revenues as there will be no squeezing of money through middle players.</p>
<p><strong>No middle players!</strong></p>
<p>According to the previous APMC system, farmers need to sell their produce through Mandis (markets) alone. This rise many middle players and they started to control the market prices. Thus, it leads farmers to get less revenue. Courtesy of these farm bills, farmers will have full authority over trading their produce.</p>
<p><strong>It opens the door for electronic trading:</strong></p>
<p>As these farm bills allow agriculture export, farmers avail alternative channels for trading to promote their produce and crops. Thus, farmers&nbsp; can increase their revenue.</p>
<p><strong>Farmers can engage in direct marketing &amp; trade:</strong></p>
<p>Farmers can contact and engage with wholesalers, traders, agri-business firms,&nbsp; exporters, or large retailers. They will be able to understand the supply and demand, know the prices in advance and accordingly they can plan for profitable farming.</p>', '1978WhatsApp Image 2021-03-21 at 9.20.04 PM.jpeg', '02/11/2020', '1', '2020-11-26 17:18:42', '2021-04-30 10:28:44' ),
( '17', 'QWIPO- the scaffold between manufacturers and retailers', 'the-scaffold-between-manufacturers-and-retailers', '<p>India has 15% of the total organized retailer market and the remaining 85% of the market runs in the segment of small Kirana stores. Today organized retailers have established an ecosystem to cater to the needs of customers but Kirana stores in India have their own share of problems be it dealing with distributors, procurement, product availability, logistics, labour, and payments etc.</p>
<p>Examining the above statistics, clearly, there is a need for a solution to solve the bigger problems for small grocery stores or Kirana stores and unfortunately, they are left in abandonment. QWIPO looked at this as an opportunity to address the pain points of these Kirana stores by converging technology with a business model thereby creating an exclusive ecosystem for Kirana stores to run their business hassle-free.</p>
<p>A typical Kirana store owner goes in dealing with multiple wholesalers for procurement of goods. In most of the cases they have to move from one supplier to the other based on the varieties of goods he needs to purchase. A lot of time and energy is invested in this process. Often Shop owners will have to source the goods from other markets that are not in supply and a lot of time goes in traveling, identifying the right wholesalers, working out payment modalities, etc. leaving the business to be run by a family member or worker.</p>
<p>If we all look through the lens, the Shop owner is spending time fixing the procurement aspect and the problems that come with it. There is very little choice for the shop owner and the element of business focus seems to be missing which can hit them hard on revenues down the line.</p>
<p>To keep the shop owner&rsquo;s business focused and to increase top-line revenue, QWIPO has come up with a unique tech-driven business model to offer a&nbsp;one-stop solution where shop owners get all the SKUs under a single umbrella. The objective is to create an ecosystem for Kirana shop owners parallel to the organized retailer market and uplift them to level the playing field. With the QWIPO app, Kirana Shop owners can now place orders with a single click at any point of the day without even stepping out. We ensure that the goods are procured directly from manufactures and growers skewing the aggregators with the right market price for our customers. QWIPO does thorough quality checks while procuring and assuring clean, safe, healthy, and packaged goods with free delivery. If the goods are not as per the customer\'s desired quality, Qwipo takes the entire responsibility of replacing the goods and delivering the desired product to its customers. We bring transparency in payment through digital payments or COD with Invoices.</p>
<p><strong>QWIPO</strong> is gearing towards creating more value to customers by managing all their procurements and providing a seamless shopping experience sitting at their store. QWIPO is glad to have touched more than 10,000 of its customers in the last two years and not to float in the competitive structure but make them really compete with the bigger giants in the retail market.</p>', '7893qw-min.jpg', '10/03/2021', '1', '2021-03-10 11:47:14', '2021-04-29 16:55:16' ),
( '18', 'QWIPO - The authentic and trusted supplier of Vegetables', 'QWIPO-The-authentic-and-trusted-supplier-of-Vegetables', '<p><span style="font-weight: 400;">Riper, fresher, superior-quality vegetables are the ones which give the best taste to our food. Qwipo, being the </span><strong>best vegetable supplier in Hyderabad</strong><span style="font-weight: 400;">, is gaining the trust of people across the city for providing farm-fresh vegetables and fine groceries and capturing profits as well.</span></p>
<p><strong>Origin of Qwipo:</strong></p>
<p><span style="font-weight: 400;">The root of the Wipo business sprouted when it identified</span></p>
<p><span style="font-weight: 400;">l&nbsp; Vegetable buyers lack freshness and quality of vegetables/groceries at economic pricing.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p>
<p><span style="font-weight: 400;">l&nbsp; Farmers and prime producers are not getting the right market cost for their produce. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span> <span style="font-weight: 400;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p>
<p><span style="font-weight: 400;">l&nbsp; An increase in the final pricing of the commodity due to various middlemen in the food supply chain. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p>
<p><span style="font-weight: 400;">So, we aimed to deliver the vegetables and groceries in bulk to the buyers(businesses) economically and efficiently while maintaining supreme quality. Also, we vouch for reducing the pricing by bypassing intermediaries in the food supply chain.</span></p>
<p><strong>To whom we deliver vegetables and groceries?</strong></p>
<p><span style="font-weight: 400;">Being one of the</span><a href="https://www.tradeindia.com/qwipo-29387534/"> <span style="font-weight: 400;">B2B suppliers in Hyderabad</span></a><span style="font-weight: 400;">, we </span><span style="font-weight: 400;">deliver our services to</span></p>
<p><span style="font-weight: 400;">l&nbsp; HORECA&nbsp; &nbsp; (Hotels, Restaurants, Cafes) sector,&nbsp; </span> <span style="font-weight: 400;">&nbsp; &nbsp; &nbsp; &nbsp; </span></p>
<p><span style="font-weight: 400;">l&nbsp; Kirana stores,&nbsp; &nbsp; &nbsp; &nbsp; </span></p>
<p><span style="font-weight: 400;">l&nbsp; Wholesale retailers, &nbsp; &nbsp; &nbsp; </span></p>
<p><span style="font-weight: 400;">l&nbsp; Hostels, &nbsp; </span> <span style="font-weight: 400;">&nbsp; &nbsp; &nbsp; &nbsp; </span> <span style="font-weight: 400;">&nbsp; &nbsp; &nbsp; &nbsp; </span></p>
<p><span style="font-weight: 400;">l&nbsp; Hospitals,&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span> <span style="font-weight: 400;">&nbsp; &nbsp; &nbsp; &nbsp; </span></p>
<p><span style="font-weight: 400;">l&nbsp; Small, medium &amp; large government and private corporations.</span></p>
<p><strong>How do we work?</strong></p>
<p><span style="font-weight: 400;">Freshness, Quality, and Timely delivery of services determine the success of any business. It is applicable for our business as well.</span></p>
<p><span style="font-weight: 400;">Our journey starts at the Farming community and Foodgrain mills and ends at the doorsteps of businesses.</span></p>
<p><span style="font-weight: 400;">l&nbsp; We procure various types of farm-fresh vegetables and finest groceries directly from the </span><strong><em>farms</em></strong><span style="font-weight: 400;"> and </span><strong><em>food grain mills</em></strong><strong>.</strong><span style="font-weight: 400;">&nbsp; </span> <span style="font-weight: 400;">&nbsp; &nbsp; &nbsp; &nbsp; </span> <span style="font-weight: 400;">&nbsp; &nbsp; &nbsp; &nbsp; </span></p>
<p><span style="font-weight: 400;">l&nbsp; All the vegetables and groceries are brought to our </span><strong><em>collection center</em></strong><strong>.</strong><span style="font-weight: 400;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span> <span style="font-weight: 400;">&nbsp; &nbsp; &nbsp; &nbsp; </span></p>
<p><span style="font-weight: 400;">l&nbsp; From the collection center, all these items are moved to a </span><strong><em>distribution center</em></strong><span style="font-weight: 400;"> where our in-house experts divide them based on the orders and their relevant delivery locations and load them into the trucks.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p>
<p><span style="font-weight: 400;">l&nbsp; We nowhere store the vegetables instead we immediately deliver them to the destination. &nbsp; &nbsp; &nbsp; &nbsp; </span></p>
<p><span style="font-weight: 400;">l&nbsp; Also, we don&rsquo;t utilize and involve any type of middlemen instead we own experienced and professional vegetable and groceries delivery staff.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span> <span style="font-weight: 400;">&nbsp; &nbsp; &nbsp; &nbsp; </span></p>
<p><span style="font-weight: 400;">l&nbsp; We integrate technology into the food supply chain to streamline our business seamlessly. &nbsp; &nbsp; &nbsp; &nbsp; </span></p>
<p><span style="font-weight: 400;">l&nbsp; Likewise, we provide tremendous value to farmers, prime suppliers, and business clients.</span></p>
<p><span style="font-weight: 400;">Thus, all the placed orders are delivered on time to the doorsteps of the respective business clients.</span></p>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong> <strong>Why is Qwipo the best vegetable supplier in Hyderabad?</strong></p>
<p><span style="font-weight: 400;">Let me provide you with some valid reasons why and how we are considered the best </span><strong>organic vegetable suppliers in Hyderabad.</strong></p>
<p><span style="font-weight: 400;">l&nbsp; </span><strong>Inherent Corporate Social Responsibility is what lies within us!</strong></p>
<p><span style="font-weight: 400;">This is the forte of our business. We provide the best marketing cost to the farmer, the backbone of the country, and the prime suppliers of groceries and thereby we are committed to the Digital India Agriculture initiatives set by the government.</span></p>
<p><span style="font-weight: 400;">l&nbsp; </span><strong>We supply fresh &amp; superior-quality produce!</strong></p>
<p><span style="font-weight: 400;">We supply a</span><span style="font-weight: 400;"> wide-varieties of locally-grown, farm-fresh, and supreme quality vegetables and groceries (quality pulses, rice, spices, etc.) to all.</span></p>
<p><span style="font-weight: 400;">Quality comes first when we thought of providing services. Consistent delivery of supreme quality vegetables and groceries brought us many loyal business clients.</span></p>
<p><span style="font-weight: 400;">l&nbsp; </span><strong>We are a call away! </strong><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;</span></p>
<p><span style="font-weight: 400;">Our team is available round the clock. Businesses can call and place their orders at any time.</span></p>
<p><span style="font-weight: 400;">l&nbsp; </span><strong>No intermediaries at all!</strong></p>
<p><span style="font-weight: 400;">We are the only intermediary between the prime suppliers (farmers, mills, food producers) and business clients (such as HORECA, wholesalers, etc.).</span></p>
<p><span style="font-weight: 400;">Middlemen in the food supply chain occupy the whole space between production and sale and earn more profits. They provide less cost to the farmers and prime suppliers. Thus, the farmers get low ROIs despite being the food producers. To avoid this situation and improve the profits of farmers, we alone handle everything. We provide the farmers with the best market cost.</span></p>
<p><span style="font-weight: 400;">Also, we cut the cost to the business clients by eliminating the additional charges placed by the intermediaries. This is what brings profits to both business customers and for us.</span></p>
<p><span style="font-weight: 400;">l&nbsp; </span><strong>We offer bulk, fast, and same-day delivery!</strong></p>
<p><span style="font-weight: 400;">We deliver vegetables and groceries in bulk based on the preferences, unique needs of various types of businesses, and seasonal demands. As of now, we deliver a 5+ lakhs kgs supply of monthly food produce. Being</span><a href="../qwiposervices"> <span style="font-weight: 400;">vegetable suppliers for restaurants</span></a><strong>, </strong><span style="font-weight: 400;">w</span><span style="font-weight: 400;">e deliver orders covering 20 prime locations of Hyderabad and are expanding day by day in order to provide services to more areas and cities. Our retail and wholesale market coverage is about 80% which testimonies our quality services.</span></p>
<p><span style="font-weight: 400;">l&nbsp; </span><strong>We had a seamless supply chain!</strong></p>
<p><span style="font-weight: 400;">We streamline our business supply chain seamlessly and effectively by integrating technology into it.</span></p>
<p><span style="font-weight: 400;">&nbsp; Secure and seamless transactions can be made through CODs and third-party payment gateways.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span> <span style="font-weight: 400;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p>
<p><span style="font-weight: 400;">&nbsp; We had our own vehicles/trucks to transport commodities thus we avoided additional costs and saved time.</span><span style="font-weight: 400;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></p>
<p><span style="font-weight: 400;">&nbsp; No middlemen, same-day delivery, instant return management, and crystal-clear communication makes our supply chain even more seamless.</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p>
<p><span style="font-weight: 400;">l&nbsp; </span><strong>We help the environment!</strong></p>
<p><span style="font-weight: 400;">We follow green initiatives while transporting the vegetables and groceries by travelling via the most optimal routes from the farms to the doorsteps of the business clients minimizing the carbon footprint on the go.</span></p>
<p><span style="font-weight: 400;">l&nbsp; </span><strong>We manage returns instantly! </strong><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p>
<p><span style="font-weight: 400;">We also manage returns if the client wants to. They can reimburse money instantly without delays.</span></p>
<p><span style="font-weight: 400;">&nbsp;</span></p>
<p><span style="font-weight: 400;">l &nbsp; </span><strong>Hygienic practices everywhere and every time!</strong></p>
<p><span style="font-weight: 400;">Food hygiene has equal paramount in supplying vegetables and groceries, especially during this COVID-19 pandemic season. We strictly adhere to hygienic practices and measures such as</span> <span style="font-weight: 400;">stringent sanitation, physical distancing, etc. to ensure the orders (vegetables and groceries) are virus-free.<br /><br /></span></p>
<p><span style="font-weight: 400;">l&nbsp; </span><strong>We are equipped with a team of experts!</strong></p>
<p><span style="font-weight: 400;">Our team consists of various experienced professionals</span></p>
<p><span style="font-weight: 400;">l&nbsp; who are well aware of the </span><strong>wholesale vegetable market.</strong></p>
<p><span style="font-weight: 400;">l&nbsp; who have tie-ups and good rapport with the organic food producers, farmers, and mills.</span><span style="font-weight: 400;">&nbsp; &nbsp; &nbsp;</span></p>
<p><span style="font-weight: 400;">l&nbsp; Who can do quality checks (in-store checks) before it is loaded into the trucks.</span><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p>
<p><span style="font-weight: 400;">l&nbsp; who can receive and manage orders of any type.&nbsp; </span> <span style="font-weight: 400;">&nbsp; &nbsp; &nbsp; &nbsp; </span></p>
<p><span style="font-weight: 400;">l&nbsp; who can deliver them to any distance within the city on time and every time. &nbsp; &nbsp; &nbsp; &nbsp; </span> <span style="font-weight: 400;"> &nbsp; &nbsp; &nbsp; &nbsp; </span></p>
<p><span style="font-weight: 400;">l&nbsp; who can be available for customer support to provide information, take orders, manage (reschedule/cancel) orders, manage returns, and solve issues/complaints if any.</span></p>
<p>&nbsp;</p>
<p><strong>Wrapping up:</strong></p>
<p><span style="font-weight: 400;">Being the</span><a href="../"> <span style="font-weight: 400;">best vegetable suppliers in Hyderabad</span></a><span style="font-weight: 400;">, we vouch for freshness, quality, and timely delivery. Call us today to avail of the farm-fresh and quality commodities and give the best taste of food to your customers and reap profits.</span></p>', '5482WhatsApp Image 2021-04-27 at 10.56.08 AM.jpeg', '27/04/2021', '0', '2021-04-27 16:03:49', '2021-04-27 16:11:56' ),
( '19', 'QWIPO - The authentic and trusted supplier of Vegetables', 'QWIPO-The-authentic-and-trusted-supplier-of-Vegetables', '<p>Riper, fresher, superior-quality vegetables are the ones which give the best taste to our food. Qwipo, being the <strong>best vegetable supplier in Hyderabad</strong>, is gaining the trust of people across the city for providing farm-fresh vegetables and fine groceries and capturing profits as well.</p>
<p><strong>Origin of Qwipo:</strong></p>
<p>The root of the Wipo business sprouted when it identified</p>
<ul>
<li>Vegetable buyers lack freshness and quality of vegetables/groceries at economic pricing.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li>Farmers and prime producers are not getting the right market cost for their produce. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li>An increase in the final pricing of the commodity due to various middlemen in the food supply chain.</li>
</ul>
<p>So, we aimed to deliver the vegetables and groceries in bulk to the buyers(businesses) economically and efficiently while maintaining supreme quality. Also, we vouch for reducing the pricing by bypassing intermediaries in the food supply chain.</p>
<p><strong>To whom we deliver vegetables and groceries?</strong></p>
<p>Being one of the <a href="https://www.tradeindia.com/qwipo-29387534/">B2B suppliers in Hyderabad</a>, we deliver our services to</p>
<ul>
<li>HORECA (Hotels, Restaurants, Cafes) sector, &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li>Kirana stores,&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</li>
<li>Wholesale retailers,&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</li>
<li>Hostels, &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li>Hospitals, &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li>Small, medium &amp; large government and private corporations.</li>
</ul>
<p><strong>How do we work?</strong></p>
<p>Freshness, Quality, and Timely delivery of services determine the success of any business. It is applicable for our business as well.</p>
<p>Our journey starts at the Farming community and Foodgrain mills and ends at the doorsteps of businesses.</p>
<ul>
<li>We procure various types of farm-fresh vegetables and finest groceries directly from the <strong><em>farms</em></strong> and <strong><em>food grain mills</em>.</strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li>All the vegetables and groceries are brought to our <strong><em>collection center</em>.</strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li>From the collection center, all these items are moved to a <strong><em>distribution center</em></strong> where our in-house experts divide them based on the orders and their relevant delivery locations and load them into the trucks. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li>We nowhere store the vegetables instead we immediately deliver them to the destination.</li>
<li>Also, we don&rsquo;t utilize and involve any type of middlemen instead we own experienced and professional vegetable and groceries delivery staff. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li>We integrate technology into the food supply chain to streamline our business seamlessly.</li>
<li>Likewise, we provide tremendous value to farmers, prime suppliers, and business clients.&nbsp; &nbsp; <br /><br />Thus, all the placed orders are delivered on time to the doorsteps of the respective business clients.</li>
</ul>
<p><strong>&nbsp;Why is Qwipo the best vegetable supplier in Hyderabad?</strong></p>
<p>Let me provide you with some valid reasons why and how we are considered the best <strong>organic vegetable suppliers in Hyderabad.</strong></p>
<ul>
<li><strong>Inherent Corporate Social Responsibility is what lies within us!</strong></li>
</ul>
<p>This is the forte of our business. We provide the best marketing cost to the farmer, the backbone of the country, and the prime suppliers of groceries and thereby we are committed to the Digital India Agriculture initiatives set by the government.</p>
<ul>
<li><strong>We supply fresh &amp; superior-quality produce!</strong></li>
</ul>
<p>We supply a wide-varieties of locally-grown, farm-fresh, and supreme quality vegetables and groceries (quality pulses, rice, spices, etc.) to all.</p>
<p>Quality comes first when we thought of providing services. Consistent delivery of supreme quality vegetables and groceries brought us many loyal business clients.</p>
<ul>
<li><strong>We are a call away! </strong></li>
</ul>
<p>Our team is available round the clock. Businesses can call and place their orders at any time.</p>
<ul>
<li><strong>No intermediaries at all!</strong></li>
</ul>
<p>We are the only intermediary between the prime suppliers (farmers, mills, food producers) and business clients (such as HORECA, wholesalers, etc.).</p>
<p>Middlemen in the food supply chain occupy the whole space between production and sale and earn more profits. They provide less cost to the farmers and prime suppliers. Thus, the farmers get low ROIs despite being the food producers. To avoid this situation and improve the profits of farmers, we alone handle everything. We provide the farmers with the best market cost.</p>
<p>Also, we cut the cost to the business clients by eliminating the additional charges placed by the intermediaries. This is what brings profits to both business customers and for us.</p>
<ul>
<li><strong>We offer bulk, fast, and same-day delivery!</strong></li>
</ul>
<p>We deliver vegetables and groceries in bulk based on the preferences, unique needs of various types of businesses, and seasonal demands. As of now, we deliver a 5+ lakhs kgs supply of monthly food produce. Being <a href="../qwiposervices">vegetable suppliers for restaurants</a><strong>, </strong>we deliver orders covering 20 prime locations of Hyderabad and are expanding day by day in order to provide services to more areas and cities. Our retail and wholesale market coverage is about 80% which testimonies our quality services.</p>
<ul>
<li><strong>We had a seamless supply chain!</strong></li>
</ul>
<p>We streamline our business supply chain seamlessly and effectively by integrating technology into it.</p>
<ul>
<li>Secure and seamless transactions can be made through CODs and third-party payment gateways. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li>We had our own vehicles/trucks to transport commodities thus we avoided additional costs and saved time.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li>No middlemen, same-day delivery, instant return management, and crystal-clear communication makes our supply chain even more seamless.&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</li>
</ul>
<ul>
<li><strong>We help the environment!</strong></li>
</ul>
<p>We follow green initiatives while transporting the vegetables and groceries by travelling via the most optimal routes from the farms to the doorsteps of the business clients minimizing the carbon footprint on the go.</p>
<ul>
<li><strong>We manage returns instantly! </strong></li>
</ul>
<p>We also manage returns if the client wants to. They can reimburse money instantly without delays.</p>
<ul>
<li><strong>Hygienic practices everywhere and every time!</strong></li>
</ul>
<p>Food hygiene has equal paramount in supplying vegetables and groceries, especially during this COVID-19 pandemic season. We strictly adhere to hygienic practices and measures such as stringent sanitation, physical distancing, etc. to ensure the orders (vegetables and groceries) are virus-free.</p>
<ul>
<li><strong>We are equipped with a team of experts!</strong></li>
</ul>
<p>Our team consists of various experienced professionals</p>
<ul>
<li>who are well aware of the <strong>wholesale vegetable market.</strong></li>
<li>who have tie-ups and good rapport with the organic food producers, farmers, and mills.&nbsp;</li>
<li>Who can do quality checks (in-store checks) before it is loaded into the trucks.</li>
<li>who can receive and manage orders of any type. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li>who can deliver them to any distance within the city on time and every time. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li>who can be available for customer support to provide information, take orders, manage (reschedule/cancel) orders, manage returns, and solve issues/complaints if any.<br /><br /></li>
</ul>
<p><strong>Wrapping up:</strong></p>
<p>Being the <a href="../">best vegetable supplier in Hyderabad</a>, we vouch for freshness, quality, and timely delivery. Call us today to avail of the farm-fresh and quality commodities and give the best taste of food to your customers and reap profits.</p>', '8708WhatsApp Image 2021-04-27 at 10.56.08 AM.jpeg', '27/04/2021', '0', '2021-04-27 16:21:01', '2021-04-27 16:33:31' ),
( '20', 'QWIPO - The authentic and trusted supplier of Vegetables', 'QWIPO-The-authentic-and-trusted-supplier-of-Vegetables', '<p style="text-align: justify;"><span style="font-weight: 400;">Riper, fresher, superior-quality vegetables are what make the best taste of food. Qwipo, being the </span><strong>best vegetable suppliers in Hyderabad</strong><span style="font-weight: 400;">, is gaining the trust of people across the city for providing farm-fresh vegetables and fine groceries and capturing profits as well.</span></p>
<p><strong>Origin of Qwipo:</strong></p>
<p style="text-align: justify;"><span style="font-weight: 400;">The root of the QWipo business sprouted when it identified.</span></p>
<ol>
<li style="text-align: justify;"><span style="font-weight: 400;">Vegetable buyers lack freshness and quality of vegetables/groceries at economic pricing.</span></li>
<li style="text-align: justify;"><span style="font-weight: 400;">Farmers and prime producers are not getting the right market cost for their produce. </span></li>
<li style="text-align: justify;"><span style="font-weight: 400;">An increase in the final pricing of the commodity due to various middlemen in the food supply chain.</span></li>
</ol>
<p style="text-align: justify;"><span style="font-weight: 400;">So, we aimed to deliver the vegetables and groceries in bulk to the buyers(businesses) economically and efficiently while maintaining supreme quality. Also, we vouch for reducing the pricing by bypassing intermediaries in the food supply chain.</span></p>
<p><strong>To whom we deliver vegetables and groceries?</strong></p>
<p style="text-align: justify;"><span style="font-weight: 400;">Being one of the </span><a title="B2B suppliers in Hyderabad" href="https://www.tradeindia.com/qwipo-29387534/" target="_blank" rel="noopener"><strong>B2B suppliers in Hyderabad</strong></a><span style="font-weight: 400;">, we </span><span style="font-weight: 400;">deliver our services to</span></p>
<ul style="list-style-type: circle;">
<li><span style="font-weight: 400;">HORECA </span> <span style="font-weight: 400;">(Hotels, Restaurants, Cafes) sector, </span> <span style="font-weight: 400;"><br /></span></li>
<li><span style="font-weight: 400;">Kirana stores,</span><span style="font-weight: 400;"><br /></span></li>
<li><span style="font-weight: 400;">Wholesale retailers,</span><span style="font-weight: 400;"><br /></span></li>
<li><span style="font-weight: 400;">Hostels, </span> <span style="font-weight: 400;"><br /></span></li>
<li><span style="font-weight: 400;">Hospitals, </span> <span style="font-weight: 400;"><br /></span></li>
<li><span style="font-weight: 400;">Small, medium &amp; large government and private corporations.</span></li>
</ul>
<h5 style="text-align: justify;"><strong>How do we work?</strong></h5>
<p style="text-align: justify;"><span style="font-weight: 400;">Freshness, Quality, and Timely delivery of services determine the success of any business. It is applicable for our business as well.</span></p>
<p style="text-align: justify;"><span style="font-weight: 400;">Our journey starts at the Farming community and Foodgrain mills and ends at the doorsteps of businesses.</span></p>
<ul style="text-align: justify; list-style-type: circle;">
<li style="font-weight: 400;" aria-level="1"><span style="font-weight: 400;">We procure various types of farm-fresh vegetables and finest groceries directly from the </span><strong><em>farms</em></strong><span style="font-weight: 400;"> and </span><strong><em>food grain mills</em></strong><strong>.</strong> <span style="font-weight: 400;"><br /></span></li>
<li style="font-weight: 400;" aria-level="1"><span style="font-weight: 400;">All the vegetables and groceries are brought to our </span><strong><em>collection center</em></strong><strong>.</strong> <span style="font-weight: 400;"><br /></span></li>
<li style="font-weight: 400;" aria-level="1"><span style="font-weight: 400;">From&nbsp;</span><span style="font-weight: 400;">the collection center, all these items are moved to a </span><strong><em>distribution center</em></strong><span style="font-weight: 400;"> where our in-house experts divide them based on the orders and their relevant delivery locations and load them into the trucks. </span> <span style="font-weight: 400;"><br /></span></li>
<li style="font-weight: 400;" aria-level="1"><span style="font-weight: 400;">We nowhere store the vegetables instead we immediately deliver them to the destination. </span> <span style="font-weight: 400;"><br /></span></li>
<li style="font-weight: 400;" aria-level="1"><span style="font-weight: 400;">Also, </span> <span style="font-weight: 400;">we don&rsquo;t utilize and involve any type of middlemen instead we own experienced and professional vegetable and groceries delivery staff. </span> <span style="font-weight: 400;"><br /></span></li>
<li style="font-weight: 400;" aria-level="1"><span style="font-weight: 400;">We integrate technology into the food supply chain to streamline our business seamlessly. </span> <span style="font-weight: 400;"><br /></span></li>
<li style="font-weight: 400;" aria-level="1"><span style="font-weight: 400;">Likewise, we provide tremendous value to farmers, prime suppliers, and business clients.</span><span style="font-weight: 400;"><br /><br /></span></li>
</ul>
<p style="text-align: justify;"><span style="font-weight: 400;">Thus, all the placed orders are delivered on time to the doorsteps of the respective business clients.</span></p>
<h5 style="text-align: justify;"><strong>Why is Qwipo the best vegetable suppliers in Hyderabad?</strong></h5>
<p style="text-align: justify;"><span style="font-weight: 400;">Let me provide you with some valid reasons why and how we considered the best </span><strong>organic vegetable suppliers in Hyderabad.</strong></p>
<p style="text-align: justify;"><strong>1)&nbsp; Inherent Corporate Social Responsibility is what lies within us!</strong></p>
<p style="text-align: justify;"><span style="font-weight: 400;">This is the forte of our business. We provide the best marketing cost to the farmer, the backbone of the country, and the prime suppliers of groceries, and thereby we committed to the Digital India Agriculture initiatives set by the government.</span></p>
<p style="text-align: justify;"><strong>2)&nbsp; We supply fresh &amp; superior-quality produce!</strong></p>
<p style="text-align: justify;"><span style="font-weight: 400;">We supply a</span><span style="font-weight: 400;"> wide-varieties of locally-grown, farm-fresh, and supreme quality vegetables and groceries (quality pulses, rice, spices, etc.) to all.</span></p>
<p style="text-align: justify;"><span style="font-weight: 400;">Quality comes first when we thought of providing services. Consistent delivery of supreme quality vegetables and groceries brought us many loyal business clients.</span></p>
<p style="text-align: justify;"><strong>3)&nbsp; We are a call away! </strong></p>
<p style="text-align: justify;"><span style="font-weight: 400;">Our team is available round the clock. Businesses can call and place their orders at any time.</span></p>
<p style="text-align: justify;"><strong>4)&nbsp; No intermediaries at all!</strong></p>
<p style="text-align: justify;"><span style="font-weight: 400;">We are the only intermediary between the prime suppliers (farmers, mills, food producers) and business clients (such as HORECA, wholesalers, etc.).</span></p>
<p style="text-align: justify;"><span style="font-weight: 400;">Middlemen in the food supply chain occupy the whole space between the production and sale and earn more profits. They provide less cost to the farmers and prime suppliers. Thus, the farmers get low ROIs despite being the food producers. To avoid this situation and improve the profits of farmers, we alone handle everything. We provide the farmers with the best market cost.</span></p>
<p style="text-align: justify;"><span style="font-weight: 400;">Also, we cut the cost to the business clients by eliminating the additional charges placed by the intermediaries. This is what brings profits to both business customers and for us.</span></p>
<p style="text-align: justify;"><strong>5)&nbsp; We offer bulk, fast, and same-day delivery!</strong></p>
<p style="text-align: justify;"><span style="font-weight: 400;">We deliver vegetables and groceries in bulk based on the preferences, unique needs of various types of businesses, and seasonal demands. As of now, we deliver a 5+ lakhs kgs supply of monthly food produce. Being </span><span style="text-decoration: underline;"><a title="vegetable suppliers for restaurants" href="../qwiposervices" target="_blank" rel="noopener"><strong>vegetable suppliers for restaurants</strong></a></span><strong>, </strong><span style="font-weight: 400;">w</span><span style="font-weight: 400;">e deliver orders covering 20 prime locations of Hyderabad and are expanding day by day in order to provide services to more areas and cities. Our retail and wholesale market coverage is about 80% which testimonies our quality services.</span></p>
<p style="text-align: justify;"><strong>6)&nbsp; We had a seamless supply chain!</strong></p>
<p style="text-align: justify;"><span style="font-weight: 400;">We streamline our business supply chain seamlessly and effectively by integrating technology into it.</span></p>
<ol style="list-style-type: lower-alpha; text-align: justify;">
<li style="text-align: justify;"><span style="font-weight: 400;">Secure and seamless transactions can be made through CODs and third-party payment gateways.</span></li>
<li style="text-align: justify;"><span style="font-weight: 400;">We had our own vehicles/trucks to transport commodities thus we avoided additional costs and saved time.</span></li>
<li style="text-align: justify;"><span style="font-weight: 400;">No middlemen, same-day delivery, instant return management, and&nbsp;</span><span style="font-weight: 400;">crystal-clear communication make our supply chain even more seamless.</span></li>
</ol>
<p style="text-align: justify;"><span style="font-weight: 400;"><strong>7)&nbsp; We help the environment!</strong></span></p>
<p style="text-align: justify;"><span style="font-weight: 400;">We follow green initiatives while transporting the vegetables and groceries by traveling via the most optimal routes from the farms to the doorsteps of the business clients minimizing the carbon footprint on the go.</span></p>
<p style="text-align: justify;"><strong>8)&nbsp; We manage returns instantly! </strong></p>
<p style="text-align: justify;"><span style="font-weight: 400;">We also manage returns if the client wants to. They can reimburse money instantly without delays.</span></p>
<p style="text-align: justify;"><strong>9)&nbsp; Hygienic practices everywhere and every time!</strong></p>
<p style="text-align: justify;"><span style="font-weight: 400;">Food hygiene has equal paramount in supplying vegetables and groceries, especially during this COVID-19 pandemic season. We strictly adhere to hygienic practices and measures such as</span> <span style="font-weight: 400;">stringent sanitation, physical distancing, etc. to ensure the orders (vegetables and groceries) are virus-free.</span></p>
<p style="text-align: justify;"><strong>10)&nbsp; We are equipped with a team of experts!</strong></p>
<p style="text-align: justify;"><span style="font-weight: 400;">Our team consists of various experienced professionals</span></p>
<ol style="list-style-type: lower-roman; text-align: justify;">
<li style="text-align: justify;"><span style="font-weight: 400;">who are well aware of the </span><strong>wholesale vegetable market.</strong></li>
<li style="text-align: justify;"><span style="font-weight: 400;">who has tie-ups and good rapport with the organic food producers, </span> <span style="font-weight: 400;">farmers, and mills?</span></li>
<li style="text-align: justify;"><span style="font-weight: 400;">Who can do quality checks (in-store checks) before it is loaded into the trucks?</span></li>
<li style="text-align: justify;"><span style="font-weight: 400;">who can receive and manage orders of any type?</span></li>
<li style="text-align: justify;"><span style="font-weight: 400;">who can deliver them to any distance within the city on time and every time?</span></li>
<li style="text-align: justify;"><span style="font-weight: 400;">who can be available for customer support to providing information, take orders, manage (reschedule/cancel) orders, manage returns, and solve issues/complaints if any.</span><span style="font-weight: 400;"><br /></span></li>
</ol>
<h5 style="text-align: justify;"><strong>Wrapping up:</strong></h5>
<p style="text-align: justify;"><span style="font-weight: 400;">Being the</span> <span style="text-decoration: underline;"><a title="best vegetable suppliers in Hyderabad" href="../" target="_blank" rel="noopener"><strong>best vegetable suppliers in Hyderabad</strong></a></span><span style="font-weight: 400;">, we vouch for freshness, quality, and timely delivery. Call us today to avail of the farm-fresh and quality commodities and give the best taste of food to your customers and reap profits.</span></p>
<p style="text-align: justify;">&nbsp;</p>', '7327WhatsApp Image 2021-04-27 at 10.56.08 AM.jpeg', '27/04/2021', '0', '2021-04-27 16:37:39', '2021-04-28 18:43:33' ),
( '21', 'QWIPO - The authentic and trusted supplier of Vegetables', 'authentic-and-trusted-supplier-of-Vegetables', '<p><span style="font-weight: 400;">Riper, fresher, superior-quality vegetables are what make the best taste of food. Qwipo, being the best vegetable suppliers in Hyderabad, is gaining the trust of people across the city for providing farm-fresh vegetables and fine groceries and capturing profits as well.</span></p>', '7772WhatsApp Image 2021-04-27 at 10.56.08 AM.jpeg', '27/04/2021', '0', '2021-04-28 18:50:42', '2021-04-29 12:14:14' ),
( '22', 'QWIPO - The Best Vegetable Suppliers in Hyderabad', 'best-vegetable-suppliers-in-hyderabad', '<p>Riper, fresher, superior-quality vegetables are what make the best taste of food. Qwipo, being the <strong>best vegetable supplier in Hyderabad</strong>, is gaining the trust of people across the city for providing farm-fresh vegetables and fine groceries and capturing profits as well.</p>
<h6><strong>Origin of Qwipo:</strong></h6>
<p>The root of the <strong>QWIPO</strong> business sprouted when it was identified</p>
<ul>
<li>Vegetable buyers lack freshness and quality of vegetables/groceries at economic pricing.</li>
<li>Farmers and prime producers are not getting the right market cost for their produce.</li>
<li>An increase in the final pricing of the commodity due to various middlemen in the food supply chain.</li>
</ul>
<p>So, we aimed to deliver the vegetables and groceries in bulk to the buyers(businesses) economically and efficiently while maintaining supreme quality. Also, we vouch for reducing the pricing by bypassing intermediaries in the food supply chain.</p>
<h6><strong>To whom we deliver vegetables and groceries?</strong></h6>
<p>Being one of the <strong>B2B suppliers in Hyderabad</strong>, we deliver our services to</p>
<ol>
<li>HORECA (Hotels, Restaurants, Cafes) sector,</li>
<li>Kirana stores,</li>
<li>Wholesale retailers,</li>
<li>Hostels,</li>
<li>Hospitals,</li>
<li>Small, medium &amp; large government and private corporations.</li>
</ol>
<h4><strong>How do we work?</strong></h4>
<p>Freshness, Quality, and Timely delivery of services determine the success of any business. It is applicable for our business as well.</p>
<p>Our journey starts at the Farming community and Foodgrain mills and ends at the doorsteps of businesses.</p>
<ul>
<li>We procure various types of farm-fresh vegetables and finest groceries directly from the farms and food grain mills.</li>
<li>All the vegetables and groceries are brought to our collection center.&nbsp;</li>
<li>From the collection center, all these items are moved to a distribution center where our in-house experts divide them based on the orders and their relevant delivery locations and load them into the trucks.</li>
<li>We nowhere store the vegetables instead we immediately deliver them to the destination.</li>
<li>Also, we don&rsquo;t utilize and involve any type of middlemen instead we own experienced and professional vegetable and groceries delivery staff.</li>
<li>We integrate technology into the food supply chain to streamline our business seamlessly.</li>
<li>Likewise, we provide tremendous value to farmers, prime suppliers, and business clients.</li>
</ul>
<p>Thus, all the placed orders are delivered on time to the doorsteps of the respective business clients.</p>
<h4><strong>Why is Qwipo the best vegetable supplier in Hyderabad?</strong></h4>
<p>Let me provide you with some valid reasons why and how we considered the best organic vegetable suppliers in Hyderabad.</p>
<p><strong>1)</strong> <strong>Inherent Corporate Social Responsibility is what lies within us!</strong></p>
<p>This is the forte of our business. We provide the best marketing cost to the farmer, the backbone of the country, and the prime suppliers of groceries, and thereby we committed to the Digital India Agriculture initiatives set by the government.</p>
<p><strong>2)</strong> <strong>We supply fresh &amp; superior-quality produce!</strong></p>
<p>We supply a wide-varieties of locally-grown, farm-fresh, and supreme quality vegetables and groceries (quality pulses, rice, spices, etc.) to all.</p>
<p>Quality comes first when we thought of providing services. Consistent delivery of supreme quality vegetables and groceries brought us many loyal business clients.</p>
<p><strong>3)</strong> <strong>We are a call away!</strong></p>
<p>Our team is available round the clock. Businesses can call and place their orders at any time.</p>
<p><strong>4) No intermediaries at all!</strong></p>
<p>We are the only intermediary between the prime suppliers (farmers, mills, food producers) and business clients (such as HORECA, wholesalers, etc.).</p>
<p>Middlemen in the food supply chain occupy the whole space between the production and sale and earn more profits. They provide less cost to the farmers and prime suppliers. Thus, the farmers get low ROIs despite being the food producers. To avoid this situation and improve the profits of farmers, we alone handle everything. We provide the farmers with the best market cost.</p>
<p>Also, we cut the cost to the business clients by eliminating the additional charges placed by the intermediaries. This is what brings profits to both business customers and for us.</p>
<p><strong>5)</strong> <strong>We offer bulk, fast, and same-day delivery!</strong></p>
<p>We deliver vegetables and groceries in bulk based on the preferences, unique needs of various types of businesses, and seasonal demands. As of now, we deliver a 5+ lakhs kgs supply of monthly food produce. Being vegetable suppliers for restaurants, we deliver orders covering 20 prime locations of Hyderabad and are expanding day by day in order to provide services to more areas and cities. Our retail and wholesale market coverage is about 80% which testimonies our quality services.</p>
<p><strong>6)</strong> <strong>We had a seamless supply chain!</strong></p>
<p>We streamline our business supply chain seamlessly and effectively by integrating technology into it.</p>
<ul>
<li>Secure and seamless transactions can be made through CODs and third-party payment gateways.</li>
<li>We had our own vehicles/trucks to transport commodities thus we avoided additional costs and saved time.</li>
<li>No middlemen, same-day delivery, instant return management, and crystal-clear communication make our supply chain even more seamless.</li>
</ul>
<p><strong>7)</strong> <strong>We help the environment!</strong></p>
<p>We follow green initiatives while transporting the vegetables and groceries by traveling via the most optimal routes from the farms to the doorsteps of the business clients minimizing the carbon footprint on the go.</p>
<p><strong>8)</strong> <strong>We manage returns instantly!</strong></p>
<p>We also manage returns if the client wants to. They can reimburse money instantly without delays.</p>
<p><strong>9)</strong> <strong>Hygienic practices everywhere and every time!</strong></p>
<p>Food hygiene has equal paramount in supplying vegetables and groceries, especially during this COVID-19 pandemic season. We strictly adhere to hygienic practices and measures such as stringent sanitation, physical distancing, etc. to ensure the orders (vegetables and groceries) are virus-free.</p>
<p><strong>10)</strong> <strong>We are equipped with a team of experts!</strong></p>
<p>Our team consists of various experienced professionals</p>
<ol>
<li>who are well aware of the wholesale vegetable market.</li>
<li>who has tie-ups and good rapport with the organic food producers, farmers, and mills?</li>
<li>Who can do quality checks (in-store checks) before it is loaded into the trucks?</li>
<li>who can receive and manage orders of any type?</li>
<li>who can deliver them to any distance within the city on time and every time?</li>
<li>who can be available for customer support to providing information, take orders, manage (reschedule/cancel) orders, manage returns, and solve issues/complaints if any.</li>
</ol>
<h5><strong>Wrapping up:</strong></h5>
<p>Being the <strong>best vegetable supplier in Hyderabad</strong>, we vouch for freshness, quality, and timely delivery. Call us today to avail of the farm-fresh and quality commodities and give the best taste of food to your customers and reap profits.</p>', '2688Qwipo is the authentic and trusted supplier of Vegetables.jpeg', '29/04/2021', '1', '2021-04-29 12:16:51', '2021-04-29 16:34:27' ),
( '23', 'Top 5 Key Benefits of Wholesale Grocery Suppliers', 'benefits-of-wholesale-grocery-suppliers', '<p>Wholesale suppliers improve the efficiency of food distribution across the world. Catering to all the needs of customers is complicated due to emerging changes in the preferences of customers, budget constraints, and other reasons. So, having commodity suppliers helps Restaurants, Hotels, Hospitals, Hostels, Cafes, etc. to streamline and simplify business operations.</p>
<p>Since wholesale suppliers are very much aware of the customers&rsquo; importance, they are committed to delivering quality products whereas few unethical retailers are determined more on profits. So, it&rsquo;s highly advisable to choose the <strong>best wholesale grocery suppliers in Hyderabad</strong>.</p>
<p>Have you ever wondered how wholesale grocery suppliers can help your business? What are the benefits of wholesale grocery suppliers?</p>
<p>Let&rsquo;s discuss.</p>
<h5><strong>Benefits wholesale grocery suppliers</strong></h5>
<p><strong>1)&nbsp; Wholesale grocery suppliers will have a streamlined business</strong></p>
<p>Popular grocery suppliers like Qwipo will have various specialized in-house teams that</p>
<p>&nbsp;&nbsp; &nbsp;a. have good relationships with prime suppliers<br />&nbsp; &nbsp; b. are familiar and have knowledge of the wholesale grocery market in Hyderabad<br />&nbsp; &nbsp; c. Procures various types of quality groceries<br />&nbsp; &nbsp; d. Maintains superior standards of quality<br />&nbsp; &nbsp; e. receives and manages orders<br />&nbsp; &nbsp; f.&nbsp; checks quality of groceries before the delivery of orders<br />&nbsp; &nbsp; g. transport commodities with the utmost care (using in-house vehicles)<br />&nbsp; &nbsp; h. delivers on-time, efficiently, and economically</p>
<p><strong>2)&nbsp; Immediate availability &amp; Doorstep delivery</strong></p>
<p>Wholesale suppliers are a one-stop destination for a wide variety of groceries. You will be availed of all types of groceries from a single supplier like <strong>QWIPO</strong>. Customers are not needed to step out of their businesses for daily commodities or groceries. Wholesale grocery suppliers provide groceries to Hotels, Restaurants, Cafes, Wholesalers, Hostels, Hospitals, and other organizations in bulk and immediately.</p>
<ul>
<li>Unexpectedly, if you get more customers, then you can re-order immediately from the same supplier to get the required groceries on time as you already have an existing relationship with the supplier. They will arrange it quickly and deliver you promptly.</li>
<li>You can return commodities without any trouble; in case any spoiled/expired groceries are found or you have unnecessary/excessive stock.</li>
<li>For any queries, you can avail of our 24*7 customer service.</li>
</ul>
<p>Our&nbsp;<strong>online grocery supplier app</strong>&nbsp;simplifies your day-to-day hurdles of procurement, as you can now pick the required groceries, check their prices, and order them with a single click.</p>
<p><strong>3)&nbsp; Best market price</strong></p>
<p>Opting for the <strong>best grocery supplier in Hyderabad</strong> provides the best of both worlds.</p>
<ul>
<li>Due to intermediaries, farmers and prime suppliers are not getting the best value for their produce. However, with Qwipo, they can get the best market price for the commodities supplied because Qwipo delivers groceries by bypassing the middlemen and intermediaries who add additional costs to the food supply chain. Thus, it empowers the prime suppliers and farmers to reap maximum profits.</li>
<li>Businesses can avail all types of groceries at an affordable cost and increase returns.</li>
<li>Also, you can avail of discounts and offers as you are a regular customer and you order groceries in bulk.</li>
</ul>
<p><strong>4)&nbsp; Businesses can avail of superior-quality groceries!</strong></p>
<p>Many grocery suppliers for restaurants do quality checks regularly before the orders leave their centers. You can rely on wholesale suppliers like Qwipo that adhere to strict hygienic practices and take extra care in this current pandemic situation.</p>
<p>Moreover, they procure the groceries directly from the mills and prime suppliers and deliver at the doorsteps of the food businesses without the involvement of middlemen.</p>
<p><strong>5)&nbsp; Businesses can save both time and money!</strong></p>
<p>Groceries are of a wide range. They can&rsquo;t be produced in or procured from one place or one area. In a nutshell, all the groceries are not available at a single place or farmer or prime supplier. Going to various farmers or prime suppliers, picking the best product, and transporting them to your business location is time-consuming and expensive.</p>
<p>In this scenario, QWIPO does all the legwork on behalf of business houses to be touted as the best B2B suppliers in Hyderabad. Because their business is procuring a wide variety of quality groceries in bulk and getting them delivered on time every time. Thus, businesses can save time, money, and effort.</p>
<h6><strong>Conclusion:</strong></h6>
<p>To serve the best to your customer, you need to accompany the best. The benefits aligned with the wholesale suppliers in Hyderabad as aforementioned are certainly best and what any business will look for.</p>
<p>Tie up with us for your high volume and various types of grocery orders and tap on our <strong>online grocery supplier app</strong> for doorstep delivery.</p>
<p>Forget not to write to us in the comments.</p>
<p>&nbsp; &nbsp; 1. If this article is helpful to you<br />&nbsp; &nbsp; 2. If you have any experience with B2B grocery suppliers<br />&nbsp; &nbsp; 3. If you find any other benefit apart from the aforementioned key benefits of <strong>wholesale&nbsp; grocery suppliers</strong></p>
<p>&nbsp;</p>', '524773519ADD-1B76-429F-A345-6484064E8A87.png', '10/05/2021', '1', '2021-05-11 18:34:10', '2021-05-12 20:33:58' ),
( '24', 'How Technology and Innovation are helping modern-day shopkeepers?', 'How-Technology-and-Innovation-are-helping-modern-day-shopkeepers', '<p><span style="font-weight: 400;"><code></code><code></code>People, in general, have always been caught up in the variety of changes in this world and with different speeds in the adoption of technology given the circumstances of the countries that they live in. For the Aam Janta, it was first the computers and internet that has transformed a certain section of people and slowly penetrated corporates, SME&rsquo;s and has become a need for the middle-class segment of households in India. No matter the technology we adopt, there is always a newer, better, faster, and easier innovation around the corner.&nbsp;</span></p>
<p><span style="font-weight: 400;">That is when the mobile phones started to change the whole game which started with feature phones facilitating phone conversation and USSD payments. Before even we could realize the speed of technology innovation, Smartphones &amp; 4G defined the order of the day for many sections of people, building mobile apps for various services. Technology and Innovation have time and again proven that opportunities for every business to acquire new customers, engage better with existing customers, reduce the cost of operations, and improve employee motivation along with various other benefits that have a positive influence from a revenue and margin perspective.&nbsp;</span></p>
<p><span style="font-weight: 400;">This technological era presents opportunities for retailers to introduce more noteworthy degrees of operational effectiveness and client centricity in their plans of action. As a first step towards managing their transactions, shopkeepers embraced digital payments like G-pay, Pay TM, BHIM, Phone pay, etc. very particularly post </span><strong>Note Bandi </strong><span style="font-weight: 400;">in November 2016. Honestly, these digital tools have brought in transparency in transactions with a great speed of payment settlement. People including the shopkeepers started using various platforms like Dunzo, Swiggy Genie, etc to deliver/courier various commodities to their customers. Whatsapp business is also widely being used by shopkeepers for order booking. Shopkeepers began using apps like Vyapar, KhataBook, etc to maintain the ledger and day-to-day transactions. All these changes are incredible and purely with the advent of technology and innovation. The last decade has demonstrated to the world how swiftly and steadily people and business operators have come in terms with various tech-houses to pioneer their growth.&nbsp;</span></p>
<p><span style="font-weight: 400;">While nature is still healing in the pandemic times, people are forced to adapt to the new norm of virtual business across sectors largely and quickly. Shopkeepers are no exception and explored various available options to move their business online be it procurement, sales, delivery, etc. As much as 40% of respondents were keen to partner with online delivery and supply chains, according to a survey of Kirana store owners across 12 cities by a leading consulting firm EY. This led to the faster digitization of 12 million kiranas, which form the bulk of retail trade in the country. 20% of Kirana owners in metros and non-metros started leveraging online platforms to get a steady supply of goods.&nbsp;</span></p>
<p><span style="font-weight: 400;">The inception of QWIPO is only meant to provide further thrust to the growing adoption of shopkeepers and their business. The pandemic year has been good for QWIPO as we have seen a huge transition in the number of people accessing various apps to procure daily essentials. Our platform is robust and provides a user-friendly experience to all our customers as we studied their understating and expectation. There has been a phenomenal increase in our customer base owing to the various benefits of the business model and platform around. Our field warriors have exhibited in large numbers to our clientele how technology can weave unorganized elements into a seamless aspect creating value for everyone. Today with a sizeable presence we continue to aspire to be a One-stop-shop/ an all-in-one destination for Groceries, FMCG, Vegetables, and fruits. It is a great feeling to witness how QWIPO can establish a virtual Business to Business ecosystem and how a single click can ease their pain of traveling or commuting for several hours just to make sure that all their goods are in place for their customers. A vast majority have seen embracing technology through their mobiles (digital) as an enabler of better customer service or greater operational efficiency and hence transcended themselves from traditional methods of purchasing goods from various markets to adopting or imbibing a culture of purchasing daily essentials from one unique platform called </span><strong>QWIPO.&nbsp;</strong></p>
<p><span style="font-weight: 400;">For the majority of vendors, most of their productive time gets lost in follow-up calls, transit, and so on. With </span><strong>QWIPO </strong><span style="font-weight: 400;">in their hands, they can order groceries, FMCG, vegetables, and fruits all from a single-stop shop and the best part is all this can be done by sitting comfortably under their roofs. We accomplish on-time deliveries backed by technology, ministering to ever-changing customer demands all the while keeping the promise of freshness and quality. Retailers also get an opportunity to quickly compare prices between various brands of a single SKU and thus get the benefit of choosing the right brands at economical prices. At </span><strong>QWIPO </strong><span style="font-weight: 400;">we believe that our growth lies in the growth and development of our customers.&nbsp;</span></p>', '715WhatsApp Image 2021-03-01 at 11.25.27 AM.jpeg', '19/05/2021', '0', '2021-05-19 16:55:24', '2021-05-19 16:57:20' ),
( '25', 'How Technology and Innovation are helping modern-day shopkeepers?', 'How-Technology-and-Innovation-are-helping-modern-day-shopkeepers', '<p>People, in general, have always been caught up in the variety of changes in this world and with different speeds in the adoption of technology given the circumstances of the countries that they live in. For the Aam Janta, it was first the computers and internet that has transformed a certain section of people and slowly penetrated corporates, SME&rsquo;s and has become a need for the middle-class segment of households in India. No matter the technology we adopt, there is always a newer, better, faster, and easier innovation around the corner.</p>
<p>That is when the mobile phones started to change the whole game which started with feature phones facilitating phone conversation and USSD payments. Before even we could realize the speed of technology innovation, Smartphones &amp; 4G defined the order of the day for many sections of people, building mobile apps for various services. Technology and Innovation have time and again proven that opportunities for every business to acquire new customers, engage better with existing customers, reduce the cost of operations, and improve employee motivation along with various other benefits that have a positive influence from a revenue and margin perspective.</p>
<p>This technological era presents opportunities for retailers to introduce more noteworthy degrees of operational effectiveness and client centricity in their plans of action. As a first step towards managing their transactions, shopkeepers embraced digital payments like G-pay, Pay TM, BHIM, Phone pay, etc. very particularly post Note Bandi in November 2016. Honestly, these digital tools have brought in transparency in transactions with a great speed of payment settlement. People including the shopkeepers started using various platforms like Dunzo, Swiggy Genie, etc to deliver/courier various commodities to their customers. Whatsapp business is also widely being used by shopkeepers for order booking. Shopkeepers began using apps like Vyapar, KhataBook, etc to maintain the ledger and day-to-day transactions. All these changes are incredible and purely with the advent of technology and innovation. The last decade has demonstrated to the world how swiftly and steadily people and business operators have come in terms with various tech-houses to pioneer their growth.</p>
<p>While nature is healing in the pandemic times, people are forced to adapt to the new norm of virtual business across sectors largely and quickly. Shopkeepers are no exception and explored various available options to move their business online be it procurement, sales, delivery, etc. As much as 40% of respondents were keen to partner with online delivery and supply chains, according to a survey of Kirana store owners across 12 cities by a leading consulting firm EY. This led to the faster digitization of 12 million kiranas, which form the bulk of retail trade in the country. 20% of Kirana owners in metros and non-metros started leveraging online platforms to get a steady supply of goods.</p>
<p>The inception of QWIPO is only meant to provide further thrust to the growing adoption of shopkeepers and their business. The pandemic year has been good for QWIPO as we have seen a huge transition in the number of people accessing various apps to procure daily essentials. Our platform is robust and provides a user-friendly experience to all our customers as we studied their understating and expectation. There has been a phenomenal increase in our customer base owing to the various benefits of the business model and platform around. Our field warriors have exhibited in large numbers to our clientele how technology can weave unorganized elements into a seamless aspect creating value for everyone. Today with a sizeable presence we continue to aspire to be a One-stop-shop/ an all-in-one destination for Groceries, FMCG, Vegetables, and fruits. It is a great feeling to witness how QWIPO can establish a virtual Business to Business ecosystem and how a single click can ease their pain of traveling or commuting for several hours just to make sure that all their goods are in place for their customers. A vast majority have seen embracing technology through their mobiles (digital) as an enabler of better customer service or greater operational efficiency and hence transcended themselves from traditional methods of purchasing goods from various markets to adopting or imbibing a culture of purchasing daily essentials from one unique platform called QWIPO.</p>
<p>For the majority of vendors, most of their productive time gets lost in follow-up calls, transit, and so on. With QWIPO in their hands, they can order groceries, FMCG, vegetables, and fruits all from a single-stop shop and the best part is all this can be done by sitting comfortably under their roofs. We accomplish on-time deliveries backed by technology, ministering to ever-changing customer demands all the while keeping the promise of freshness and quality. Retailers also get an opportunity to quickly compare prices between various brands of a single SKU and thus get the benefit of choosing the right brands at economical prices. At QWIPO we believe that our growth lies in the growth and development of our customers.</p>', '5031WhatsApp Image 2021-05-19 at 7.51.34 PM.jpeg', '19/05/2021', '1', '2021-05-19 17:12:12', '2021-05-19 19:56:57' ),
( '26', 'QWIPO\'s Marketplace - connecting business retailers with prime vendors', 'connecting-business-retailers-with-prime-vendors', '<p>gh</p>', '2148QWIPO\'s Marketplace - connecting business retailers with prime vendors.jpeg', '03/06/2021', '0', '2021-06-03 17:22:11', '2021-06-03 17:37:59' ),
( '27', 'QWIPO\'s Marketplace - connecting business retailers with prime vendors', 'connecting-business-retailers-with-prime-vendors', '<p>With the booming modern business world, every industry is expanding its businesses on e-commerce platforms. But in India, there are only a few e-marketplace platforms for vegetables and grocery suppliers, which are not completely adaptable to every vendor.</p>
<p>With the Qwipo e-marketplace, any vendor irrespective of their age, business, education, knowledge in e-commerce can adapt to the platform seamlessly, by which they can reach out to the customers and customers can reach the vendors without moving from their place.</p>
<p>Qwipo has been one of the best fresh vegetable and grocery suppliers in Hyderabad. Seeing Qwipo&rsquo;s brand, goodwill, and credibility in the market, many customers would visit the site hence Qwipo can provide great visibility to every vendors&rsquo; products irrespective of the location of their business.</p>
<p><strong>How does QWIPO&rsquo;s Marketplace work?</strong></p>
<p>Qwipo platform is created to minimize the distance between the customers and quality vendors and in these unprecedented pandemic times, the platform became beneficial for both the vendors &amp; customers.</p>
<p>Qwipo creates a virtual marketplace, in which any registered vendor can create a virtual shop, add their products, and sell them at their fingertips. Even the customer can also visit the virtual marketplace using the Qwipo app, and purchase desired products with a few clicks, just sitting at their shops.</p>
<p><strong>1)&nbsp; Qwipo Platform:</strong>&nbsp; In Qwipo&rsquo;s marketplace, any vendor can register their business, which will help in marketing their products to the customers who weren&rsquo;t aware of the particular vendor.</p>
<p><strong>2)&nbsp; Vendors&rsquo; Products:</strong>&nbsp; As aforementioned suppliers will have to register their business on the Qwipo platform, upon successful registration suppliers can upload their products with the price, minimum order quantity (MOQ), and other required details, which will help the customer in taking the productive decision by comparing the products with other vendors in the process of placing the order.</p>
<p><strong>3)&nbsp; Products&rsquo; Price:</strong>&nbsp; Vendors will have the liberty to fix the price of their products.</p>
<p><strong>4)&nbsp; Logistics Provider:</strong>&nbsp; Qwipo will pick the purchased products from the prime vendors and deliver them to the customers&rsquo; place.</p>
<p><strong>5)&nbsp; Escrow Payments:</strong>&nbsp; Qwipo uses the Escrow payment method for its transactions. Once customers place an order and make the payment, it will be held with Qwipo till the goods are delivered to the customer. Once the customer acknowledges the quality and quantity of the products, the payment will be credited to the vendors&rsquo; account.</p>
<p><strong>Advantages of Digitizing:</strong></p>
<p>Some of the advantages of vendors digitizing their business with Qwipo are</p>
<p><strong>a)&nbsp; Visibility:</strong>&nbsp; Qwipo platform will help the vendors&rsquo; products to have great visibility. The customers who are far away from vendors&rsquo; places can view their products on the platform.</p>
<p><strong>b)&nbsp; Reachability:</strong>&nbsp; A vendor who never considered a particular area as a target seeing the distance, can also get sales from such places. A vendor may not reach the customer on his own but the Qwipo platform will help its vendors&rsquo; products to reach the customer.</p>
<p><strong>c)&nbsp; USP Promotion:</strong>&nbsp; Vendors will have multiple kinds of products from which one or two would be their signature products, which works as USP in their sales. So using the platform vendors can promote their USP products.</p>
<p><strong>d)&nbsp; Transparent Payment System:&nbsp;</strong> Every transaction will be online with proper bills. There will be no manipulative charges in the bill, every transaction will be transparent with no hidden charges.</p>
<p><strong>e)&nbsp; Optimum Market Price:</strong>&nbsp; Customers can purchase the products based on their comparison of the same product with multiple vendors and thus they can purchase at optimum market price.</p>
<p><strong>Conclusion:</strong></p>
<p>With Qwipo&rsquo;s e-marketplace platform, vendors can explore it to their advantage like marketing their products, reaching out to distant customers, and can achieve better online sales than offline sales. Given the uncertainty amid the pandemic, this platform proves to be a versatile medium for promoting vendors&rsquo; business.</p>', '1316WhatsApp Image 2021-06-03 at 2.31.24 PM (1100 x 400).jpg', '03/06/2021', '1', '2021-06-03 17:39:33', '2021-06-03 17:51:04' ),
( '28', 'How Qwipo Delivers Your Business Essentials at Your Doorstep', 'delivers-your-business-essentials-at-your-doorstep', '<p>Given the ongoing unprecedented situations most of the merchants, hoteliers, etc., are contemplating their suppliers&rsquo; credibility. As in pre-Corona, they had to neglect all the flaws caused by their suppliers, like their dispatch of non-quality products, late deliveries, tentative standards, etc., which persuaded them at a high time to reconsider, in the process of maintaining healthy and safe business operations.</p>
<p>To emphasize, Qwipo delivers the business essentials like any other suppliers, but no other supplier, and the food supply chain would follow the extent of standards as we do in ensuring the quality. All our operations are backed by trained and certified professionals with the help of technology, leaving no stone unturned in maintaining the trust &amp; healthy relationship with all our end customers, which made Qwipo the best suppliers in Hyderabad.</p>
<h5><strong>Delivering Your Business Essentials at your Doorstep</strong></h5>
<p>Qwipo is committed to quality and timely deliveries, and to attain that we designed and created a standardized work environment.</p>
<p><strong>a). On-time deliveries:</strong>&nbsp; In a survey, we noticed that sometimes merchants lose their sales in the peak hours due to late deliveries from their suppliers, conversely Qwipo&rsquo;s clients never get into such situations. Qwipo is committed to on-time deliveries. We deliver the products in and around Hyderabad up to <strong>26 locations</strong>. We have an algorithm created by experts, that routes the deliveries with an objective to deliver on time at your doorstep.</p>
<p>Even at these unfortunate pandemic times, be it lockdown or social distancing, we make sure that the deliveries reach your doorstep on time without any delay and within the restricted hours. We will never compromise on timely deliveries.</p>
<p><strong>b).</strong>&nbsp;<strong>Quality Deliveries:</strong>&nbsp; With the tech-driven supply chain, we plan our routing in the early hours, or the routes will be arranged which keeps away from the traffic, to forestall the contamination brought about via carbon footprint or any sort of contamination. We act responsibly in delivering quality products.</p>
<p><strong>c).&nbsp;</strong><strong>Availability:</strong>&nbsp; Be it quality, quantity, and variety whatever it is that you are looking for, <strong>QWIPO</strong> is the right choice for you. QWIPO&rsquo;s marketplace is specialized in the delivery of groceries and daily essentials spread across Staples, Vegetables, Fruits, and FMCG goods, etc., and ensures premium quality products from our network of Prime wholesalers who procure directly from the prime suppliers.</p>
<p><strong>d). Best price:</strong>&nbsp; Our products don&rsquo;t go through any extended supply chain, they will be delivered fresh at your doorstep at the optimum price. With a decentralized distribution system, we bring in an extensive range of product catalogues, versatile pricing, and multiple vendors to our platform.</p>
<h6><strong>Conclusions:</strong></h6>
<p>Qwipo is not just sales-driven, we work diligently in the favor of the environment, clients, or end customers, with a consistent urge, to aggrandize the relation, to maintain healthy, safe, and secured business operations. With the <strong>Qwipo platform</strong>, you can have quality assured business essentials delivered to your doorstep, maximizing your precautions.</p>', '5901How Qwipo Delivers Your Business Essentials at Your Doorstep.jpg', '16/06/2021', '1', '2021-06-16 14:43:35', '2021-06-16 15:02:58' ),
( '29', 'How technology plays an important role in the grocery retail industry?', 'How-technology-plays-an-important-role-in-the-grocery-retail-industry-', '<p>Recent technological advancements assist grocery retailers and wholesale grocery suppliers in streamlining store visits, increasing sales, and thus improving the consumer experience.&nbsp;</p>
<p><strong>Mobile apps are top among the list of these technological innovations!</strong></p>
<p><span style="font-weight: 400;">Gone are the days when people and business retailers stand in long queues for the daily essentials. The Indian smartphone market is estimated to reach <strong>173 million units</strong> by the end of this year. </span></p>
<p><span style="font-weight: 400;">Because of this high mobile phone penetration rate, now, everyone is getting their orders of any quantity to their doorstep with a single click on their smartphones. Thanks to the mobile applications and their ease of use!. They made online grocery shopping more convenient, seamless, and affordable.</span></p>
<p><span style="font-weight: 400;">As per the statistics from Euromonitor, the global grocery retail market is worth </span><span style="font-weight: 400;">$5.9 trillion.&nbsp;</span>An outstanding figure, right?</p>
<p><span style="font-weight: 400;">It is the result of technology that has laid its footprint in grocery retail with a myriad of benefits.</span><span style="font-weight: 400;"> It helps both Kirana store owners and business retailers.</span></p>
<p><strong>Let&rsquo;s dive in.</strong></p>
<p><strong>For</strong> <strong>Business Retailers:</strong></p>
<p><span style="font-weight: 400;">Not so long ago, </span><span style="font-weight: 400;">many business retailers such as Kirana store owners </span><span style="font-weight: 400;">have faced challenges in procuring various grocery items on time, logistics management, and inventory management. It often causes them to lose their business.</span></p>
<p><strong>Courtesy of grocery mobile apps like Qwipo!.</strong></p>
<ol>
<li style="font-weight: 400;" aria-level="1"><span style="font-weight: 400;">This tech-driven digital solution helps</span><span style="font-weight: 400;"> business retailers </span><span style="font-weight: 400;">overcome the challenges in procuring groceries of any type to a large extent.</span></li>
<li style="font-weight: 400;" aria-level="1"><span style="font-weight: 400;">No minimum orders!. They can place any number of orders and any quantity. And they can place orders from anywhere and at any time.</span></li>
<li style="font-weight: 400;" aria-level="1"><span style="font-weight: 400;">They can track the orders and the estimated date and time of delivery in real-time.</span></li>
<li style="font-weight: 400;" aria-level="1"><span style="font-weight: 400;">Many business retailers are unable to track their inventory, resulting in expired grocery items, missed sales opportunities, and so on. With the help of grocery apps, they can cater to a wider range of groceries and services without increasing their working capital. </span><span style="font-weight: 400;">It offers the best of both worlds &ndash; they can keep track of the available groceries and</span><span style="font-weight: 400;"> they can have customer satisfaction.</span></li>
<li style="font-weight: 400;" aria-level="1"><span style="font-weight: 400;">Also, the app helps them analyze past sales and emerging trends and get insights into their business.</span></li>
<li style="font-weight: 400;" aria-level="1"><span style="font-weight: 400;">Last but not least, these apps help in processing seamless transactions. Digital payments are the results of Digital India and Demonetization initiatives launched by the government and also the latest pandemic. </span><span style="font-weight: 400;">According to a recent NASSCOM analysis titled &lsquo;Digital Payments India &mdash; Short to Medium Term Effects of COVID-19&rsquo;</span><span style="font-weight: 400;">&ldquo;The use of digital payments for everything from groceries to utility bills to cab fares to fee payments, etc. has seen a colossal rise due to the virus&rsquo;s fear&rdquo;. This digital POS solution helps business retailers, promote digital payments, and supports social distancing. They can accept payments using their smartphones and barcodes and keep track of the number of payments.</span></li>
</ol>
<p><span style="font-weight: 400;">When business retailers make orders for their requirements and get them, they can gain the above benefits.</span></p>
<p><strong>For </strong><strong>Prime Vendors and Prime Suppliers</strong><strong>:</strong></p>
<p><span style="font-weight: 400;">Technology has shaped the way businesses operate. Wholesale grocery suppliers are no exceptions for this. According to</span> <span style="font-weight: 400;">consultant Praxis Global Alliance reports, the market of </span><a title="wholesale grocery online in India" href="../" target="_blank" rel="noopener"><strong>wholesale grocery online in India </strong></a><span style="font-weight: 400;">is expected to grow $ 7.5 billion by 2022 at 70% of staggering CAGR.</span></p>
<p><span style="font-weight: 400;">With the help of mobile apps, the B2B grocery suppliers or grocery suppliers can have visibility, brand credibility, and high turnovers. The other benefits include the following.</span></p>
<ol>
<li style="font-weight: 400;" aria-level="1"><span style="font-weight: 400;">With the help of applications, it is easy to receive orders and manage them from anywhere and at any time.</span></li>
<li style="font-weight: 400;" aria-level="1"><span style="font-weight: 400;">Managing inventory and stock manually will be a tedious and tough task. With technology involvement, prime suppliers or vendors can manage it without hassles. &nbsp; When they leverage technology into their inventory system, the systems update the database, transactions, the number of orders received/delivered/cancelled, and the grocery stock, etc. automatically.</span></li>
<li style="font-weight: 400;" aria-level="1"><span style="font-weight: 400;">Both the prime suppliers and prime vendors can be onboarded with Qwipo business retailers. As a result, they can</span> <span style="font-weight: 400;">now reach out to more retailers than ever</span><span style="font-weight: 400;">.</span><span style="font-weight: 400;">&nbsp;</span></li>
<li style="font-weight: 400;" aria-level="1"><span style="font-weight: 400;">They can increase the new customer acquisition and customer retention rates.</span></li>
<li style="font-weight: 400;" aria-level="1"><span style="font-weight: 400;">Availability of analytics is the greatest advantage of harnessing the power of technology in the grocery retail industry. They can know the insights, customer preferences, their behavioral patterns, understand customers and the local market. In a nutshell, they can have the insights of their business that help them make data-driven decision-making.</span></li>
</ol>
<p><strong>Conclusion:</strong></p>
<p><span style="font-weight: 400;">What do you think? What will it take to win customers and ROI in the <strong>grocery retail business</strong>?</span></p>
<p><span style="font-weight: 400;">The adoption of technology!</span></p>
<p><span style="font-weight: 400;">Technology offers convenience and more personalized services like same-day delivery that makes all the customers opt for online shopping for their daily essentials. So, by leveraging technology into the grocery business both business retailers and prime vendors reap great benefits.</span></p>', '6488WhatsApp Image 2021-11-03 at 8.57.46 AM.jpeg', '10/01/2022', '1', '2022-01-13 12:23:05', '2022-01-13 12:34:02' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "ourteam" ----------------------------------
BEGIN;

INSERT INTO `ourteam`(`team_id`,`name`,`designation`,`image_path`,`status`,`created_at`,`updated_at`,`order`) VALUES 
( '1', 'lakshman', 'software', '5047team-image.png', '0', '2020-08-25 12:07:14', '2020-11-26 17:16:30', '1' ),
( '2', 'suman', 'software', '8065team-image.png', '0', '2020-08-25 15:04:00', '2020-11-26 17:16:26', '1' ),
( '3', 'Raju', 'Business', '6726team-image.png', '0', '2020-08-26 16:03:11', '2020-11-26 17:16:22', '1' ),
( '4', 'Leader', 'one', '9335leader.jpg', '0', '2020-08-27 15:32:35', '2020-09-30 14:12:40', '1' ),
( '5', 'Sarvesh', 'Analyst', '8657leader.jpg', '0', '2020-09-30 14:13:27', '2020-11-26 17:16:21', '1' ),
( '6', 'Shilpa Chaladi', 'HR Manager', '4229WhatsApp Image 2021-03-15 at 9.39.20 PM.jpeg', '0', '2021-03-16 10:13:49', '2021-03-16 10:14:35', '1' ),
( '7', 'Denis Pedro', 'Marketing Manager', '52881578554484192.jpg', '0', '2021-03-16 10:15:52', '2021-03-16 10:52:23', '1' ),
( '8', 'Aerpula Vamshi Krishna', 'Manager - Operations', '8673WhatsApp Image 2021-03-15 at 5.22.58 PM.jpeg', '0', '2021-03-16 10:33:09', '2021-03-16 10:52:18', '1' ),
( '9', 'VAMSHI KRISHNA', 'Manager- Operations', '3927Vamshi.jpeg', '0', '2021-03-16 11:59:36', '2021-03-16 12:00:11', '1' ),
( '10', 'VAMSHI', 'Marketing Manager', '7541Vamshi1.jpg', '0', '2021-03-16 12:01:52', '2021-03-16 12:02:20', '1' ),
( '11', 'Siva Ramakrishna Morisetti', 'CEO', '1521Optimized-Siva Morisetti (1).jpeg', '0', '2021-03-17 16:04:35', '2021-03-17 18:08:13', '1' ),
( '12', 'Chandra Chandragiri', 'CFO', '8921Chandra Chandragiri.jpeg', '0', '2021-03-17 16:05:07', '2021-03-17 16:06:22', '1' ),
( '13', 'Shilpa Chaladi', 'Manager - HR', '7030Shilpa Chaladi.jpeg', '0', '2021-03-17 16:05:52', '2021-03-17 16:06:13', '1' ),
( '14', 'Chandra Chandragiri', 'CFO', '8755Optimized-Chandra Chandragiri (1).jpeg', '0', '2021-03-17 18:03:27', '2021-03-17 18:08:09', '1' ),
( '15', 'Bishak Roy Choudhary', 'Manager - Procurement', '7534Bishak Roy (150 x 150).jpg', '1', '2021-03-17 18:14:00', '2021-04-21 09:34:50', '1' ),
( '16', 'Konda Ramesh Kumar', 'Manager - Procurement', '5629Ramesh Konda (150 x 150).jpg', '1', '2021-03-17 18:16:46', '2021-04-21 09:33:59', '1' ),
( '17', 'Aerpula Vamshi Krishna', 'Manager- Operations', '6173Aerpula Vamshi Krishna (150 x 150).jpg', '1', '2021-03-17 18:27:12', '2021-04-21 09:35:08', '1' ),
( '18', 'Bhaskar Rao Chintaluri', 'Manager - Accounts and Finance', '2892Bhaskar Rao Chintaluri (150 x 150).jpg', '1', '2021-03-17 18:38:25', '2021-04-21 09:35:27', '1' ),
( '19', 'Shilpa Chaladi', 'Manager - HR', '7697Shilpa Chaladi (150 x 150).jpg', '1', '2021-03-17 18:40:59', '2021-04-21 09:35:50', '1' ),
( '20', 'Denis Pedro', 'Manager - Marketing', '6061Denis Pedro (150 x 150).jpg', '1', '2021-03-17 19:24:16', '2021-04-21 09:36:22', '1' ),
( '21', 'Venkat Rao Upputuri', 'Manager - Sales', '2743Venkat Rao Upputuri (150 x 150).jpg', '1', '2021-03-17 19:26:01', '2021-04-21 09:36:41', '1' ),
( '22', 'Chandrasekhar Chandragiri', 'CFO', '1753Chandra Chandragiri (150 x 150).jpg', '0', '2021-03-17 20:09:31', '2021-03-18 12:36:21', '1' ),
( '23', 'Siva Morisetti', 'CEO, Co-founder', '2738WhatsApp Image 2021-03-17 at 8.34.35 PM (150 x 150).jpg', '0', '2021-03-17 20:12:50', '2021-03-18 12:37:10', '1' ),
( '24', 'Kayala Jagadeesh Reddy', 'Manager - Sales', '4536Kayala Jagadeesh Reddy (150 x 150).jpg', '1', '2021-03-18 12:40:06', '2021-04-21 09:37:09', '1' ),
( '25', 'Chandrasekhar Chandragiri', 'CFO', '5529Chandra Chandragiri (150 x 150).jpg', '0', '2021-03-18 12:41:01', '2021-03-22 11:26:04', '1' ),
( '26', 'Siva Morisetti', 'CEO, Co-Founder', '542WhatsApp Image 2021-03-17 at 8.34.35 PM (150 x 150).jpg', '0', '2021-03-18 12:42:24', '2021-03-22 11:25:59', '1' ),
( '27', 'Lata Kalla', 'Product Owner - Engineering', '6593Lata 1 (150 x 150).jpg', '1', '2021-03-22 11:28:05', '2021-04-21 09:37:34', '1' ),
( '28', 'Chandrasekhar Chandragiri', 'CFO', '4369Chandra Chandragiri (150 x 150).jpg', '0', '2021-03-22 11:30:12', '2021-05-21 10:31:27', '1' ),
( '29', 'Siva Morisetti', 'CEO, Co-Founder', '9736Siva Morisetti (150 x 150).jpg', '0', '2021-03-22 11:31:05', '2021-05-21 10:31:23', '1' ),
( '30', 'Raja Srinivas Bijarapu', 'Head - Sales & Operations - South Zone', '4416WhatsApp Image 2021-06-04 at 8.11.00 AM (150 x 150).jpg', '1', '2021-06-04 10:22:50', '2021-06-04 10:22:50', '1' ),
( '31', 'Abhijeet Tarke', 'Head - Operations- South Zone', '8583WhatsApp Image 2021-06-04 at 8.11.10 AM (150 x 150).jpg', '1', '2021-06-04 10:24:12', '2021-06-04 10:24:12', '1' ),
( '32', 'Ram Avtar Malpani', 'Manager - Business Excellence', '9543WhatsApp Image 2021-06-04 at 8.10.57 AM (150 x 150).jpg', '1', '2021-06-04 10:25:31', '2021-06-04 10:46:02', '1' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "statistics" -------------------------------
BEGIN;

INSERT INTO `statistics`(`id`,`market_coverage`,`geographical_areas`,`monthly_supply`,`active_clients`,`created_at`,`updated_at`) VALUES 
( '1', '80', '20', '12', '8000', '2020-08-20 18:20:47', '2020-08-20 19:31:26' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "gallery" ----------------------------------
BEGIN;

INSERT INTO `gallery`(`gallery_id`,`image_path`,`status`,`created_at`,`updated_at`,`order`) VALUES 
( '1', '3770IMG_8554-compressed.jpg', '0', '2020-08-23 17:44:53', '2021-01-28 12:21:44', '1' ),
( '2', '4150declaration.png', '0', '2020-08-23 19:39:55', '2020-08-23 19:40:37', '1' ),
( '3', '2460IMG_8536-compressed.jpg', '0', '2020-08-24 20:35:07', '2021-01-28 12:20:37', '1' ),
( '4', '2909IMG_8575-compressed.jpg', '0', '2020-08-24 20:35:20', '2021-01-28 12:19:18', '1' ),
( '5', '7093IMG_8505-compressed.jpg', '0', '2020-08-24 20:35:36', '2021-01-28 12:18:02', '1' ),
( '6', '9463IMG_8443-compressed.jpg', '0', '2020-08-24 20:35:48', '2021-01-28 12:00:44', '1' ),
( '7', '3598gallery-6.png', '0', '2020-08-24 20:36:00', '2020-08-26 16:11:14', '1' ),
( '8', '23091885.jpg', '0', '2020-08-26 16:13:15', '2021-01-28 09:13:48', '1' ),
( '9', '32212136.jpg', '0', '2020-08-27 15:40:51', '2021-01-28 11:06:15', '1' ),
( '10', '32174161IMG_8430-min (1).jpg', '0', '2020-09-02 16:27:30', '2021-01-28 09:14:36', '1' ),
( '11', '3022shopping-1232944_640.jpg', '0', '2020-10-08 11:42:40', '2020-10-09 15:13:57', '1' ),
( '12', '2607IMG_8473-compressed.jpg', '0', '2021-01-28 09:14:20', '2021-01-28 12:17:26', '1' ),
( '13', '7623IMG_8439-compressed.jpg', '0', '2021-01-28 11:14:48', '2021-01-28 12:00:54', '1' ),
( '14', '8051IMG_8550-compressed.jpg', '0', '2021-01-28 11:56:23', '2021-01-28 12:16:41', '1' ),
( '15', '4720IMG_8430-compressed.jpg', '0', '2021-01-28 11:57:37', '2021-01-28 12:16:15', '1' ),
( '16', '1458IMG_8567-compressed.jpg', '0', '2021-01-28 11:58:07', '2021-01-28 12:15:03', '1' ),
( '17', '3533IMG_8489-compressed.jpg', '0', '2021-01-28 12:05:14', '2021-01-28 12:14:37', '1' ),
( '18', '6137IMG_8443-compressed.jpg', '0', '2021-01-28 12:05:43', '2021-01-28 12:14:12', '1' ),
( '19', '4262IMG_8439-compressed.jpg', '0', '2021-01-28 12:06:04', '2021-01-28 12:13:52', '1' ),
( '20', '1366WhatsApp Image 2021-01-29 at 3.30.51 PM.jpeg', '0', '2021-01-29 17:08:06', '2021-01-29 17:08:06', '1' ),
( '23', '49489481gallery-1.png', '0', '2021-02-23 21:35:48', '2021-02-23 21:35:53', '1' ),
( '24', '9852IMG_8536-compressed.jpg', '1', '2021-02-24 09:26:47', '2021-04-21 12:56:32', '1' ),
( '25', '9601IMG_8578-compressed.jpg', '1', '2021-02-24 09:27:09', '2021-04-21 12:55:55', '1' ),
( '26', '654IMG_8575-compressed.jpg', '1', '2021-02-24 09:28:48', '2021-04-21 12:54:58', '1' ),
( '27', '9830IMG_8550-compressed.jpg', '1', '2021-02-24 09:29:05', '2021-04-21 12:54:17', '1' ),
( '28', '2825IMG_8505-compressed.jpg', '1', '2021-02-24 09:31:49', '2021-04-21 12:53:10', '1' ),
( '29', '7897IMG_8443-compressed.jpg', '1', '2021-02-24 09:32:13', '2021-04-21 10:22:33', '1' ),
( '30', '3915IMG_8473-compressed.jpg', '1', '2021-02-24 09:32:29', '2021-04-21 10:11:39', '1' ),
( '31', '4890IMG_8469-compressed.jpg', '1', '2021-02-24 09:32:45', '2021-04-30 14:45:18', '1' ),
( '32', '9611IMG_8554-compressed.jpg', '0', '2021-02-24 09:33:03', '2021-03-08 10:00:10', '1' ),
( '33', '1122IMG_8439-compressed.jpg', '1', '2021-02-24 09:33:17', '2021-04-21 10:22:09', '1' ),
( '34', '396IMG_8430-compressed.jpg', '1', '2021-02-24 09:33:35', '2021-04-21 10:09:35', '1' ),
( '35', '9594WhatsApp Image 2021-03-01 at 11.25.27 AM.jpeg', '1', '2021-03-07 11:11:32', '2021-04-21 10:21:35', '1' ),
( '36', '5561WhatsApp Image 2021-04-21 at 9.58.36 AM.jpeg', '1', '2021-03-07 11:11:54', '2021-04-21 10:08:07', '1' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "advisor" ----------------------------------
BEGIN;

INSERT INTO `advisor`(`advisor_id`,`name`,`designation`,`image_path`,`status`,`created_at`,`updated_at`,`linkedin_url`) VALUES 
( '1', 'lakshman', 'software', '5047team-image.png', '0', '2020-08-25 12:07:14', '2020-11-26 17:16:30', NULL ),
( '2', 'suman', 'software', '8065team-image.png', '0', '2020-08-25 15:04:00', '2020-11-26 17:16:26', NULL ),
( '3', 'Raju', 'Business', '6726team-image.png', '0', '2020-08-26 16:03:11', '2020-11-26 17:16:22', NULL ),
( '4', 'Leader', 'one', '9335leader.jpg', '0', '2020-08-27 15:32:35', '2020-09-30 14:12:40', NULL ),
( '5', 'Sarvesh', 'Analyst', '8657leader.jpg', '0', '2020-09-30 14:13:27', '2020-11-26 17:16:21', NULL ),
( '6', 'Shilpa Chaladi', 'HR Manager', '4229WhatsApp Image 2021-03-15 at 9.39.20 PM.jpeg', '0', '2021-03-16 10:13:49', '2021-03-16 10:14:35', NULL ),
( '7', 'Denis Pedro', 'Marketing Manager', '52881578554484192.jpg', '0', '2021-03-16 10:15:52', '2021-03-16 10:52:23', NULL ),
( '8', 'Aerpula Vamshi Krishna', 'Manager - Operations', '8673WhatsApp Image 2021-03-15 at 5.22.58 PM.jpeg', '0', '2021-03-16 10:33:09', '2021-03-16 10:52:18', NULL ),
( '9', 'VAMSHI KRISHNA', 'Manager- Operations', '3927Vamshi.jpeg', '0', '2021-03-16 11:59:36', '2021-03-16 12:00:11', NULL ),
( '10', 'VAMSHI', 'Marketing Manager', '7541Vamshi1.jpg', '0', '2021-03-16 12:01:52', '2021-03-16 12:02:20', NULL ),
( '11', 'Siva Ramakrishna Morisetti', 'CEO', '1521Optimized-Siva Morisetti (1).jpeg', '0', '2021-03-17 16:04:35', '2021-03-17 18:08:13', NULL ),
( '12', 'Chandra Chandragiri', 'CFO', '8921Chandra Chandragiri.jpeg', '0', '2021-03-17 16:05:07', '2021-03-17 16:06:22', NULL ),
( '13', 'Shilpa Chaladi', 'Manager - HR', '7030Shilpa Chaladi.jpeg', '0', '2021-03-17 16:05:52', '2021-03-17 16:06:13', NULL ),
( '14', 'Chandra Chandragiri', 'CFO', '8755Optimized-Chandra Chandragiri (1).jpeg', '0', '2021-03-17 18:03:27', '2021-03-17 18:08:09', NULL ),
( '15', 'Bishak Roy Choudhary', 'Manager - Procurement', '7534Bishak Roy (150 x 150).jpg', '1', '2021-03-17 18:14:00', '2021-04-21 09:34:50', NULL ),
( '16', 'Konda Ramesh Kumar', 'Manager - Procurement', '5629Ramesh Konda (150 x 150).jpg', '1', '2021-03-17 18:16:46', '2021-04-21 09:33:59', NULL ),
( '17', 'Aerpula Vamshi Krishna', 'Manager- Operations', '6173Aerpula Vamshi Krishna (150 x 150).jpg', '1', '2021-03-17 18:27:12', '2021-04-21 09:35:08', NULL ),
( '18', 'Bhaskar Rao Chintaluri', 'Manager - Accounts and Finance', '2892Bhaskar Rao Chintaluri (150 x 150).jpg', '1', '2021-03-17 18:38:25', '2021-04-21 09:35:27', NULL ),
( '19', 'Shilpa Chaladi', 'Manager - HR', '7697Shilpa Chaladi (150 x 150).jpg', '1', '2021-03-17 18:40:59', '2021-04-21 09:35:50', NULL ),
( '20', 'Denis Pedro', 'Manager - Marketing', '6061Denis Pedro (150 x 150).jpg', '1', '2021-03-17 19:24:16', '2021-04-21 09:36:22', NULL ),
( '21', 'Venkat Rao Upputuri', 'Manager - Sales', '2743Venkat Rao Upputuri (150 x 150).jpg', '1', '2021-03-17 19:26:01', '2021-04-21 09:36:41', NULL ),
( '22', 'Chandrasekhar Chandragiri', 'CFO', '1753Chandra Chandragiri (150 x 150).jpg', '0', '2021-03-17 20:09:31', '2021-03-18 12:36:21', NULL ),
( '23', 'Siva Morisetti', 'CEO, Co-founder', '2738WhatsApp Image 2021-03-17 at 8.34.35 PM (150 x 150).jpg', '0', '2021-03-17 20:12:50', '2021-03-18 12:37:10', NULL ),
( '24', 'Kayala Jagadeesh Reddy', 'Manager - Sales', '4536Kayala Jagadeesh Reddy (150 x 150).jpg', '1', '2021-03-18 12:40:06', '2021-04-21 09:37:09', NULL ),
( '25', 'Chandrasekhar Chandragiri', 'CFO', '5529Chandra Chandragiri (150 x 150).jpg', '0', '2021-03-18 12:41:01', '2021-03-22 11:26:04', NULL ),
( '26', 'Siva Morisetti', 'CEO, Co-Founder', '542WhatsApp Image 2021-03-17 at 8.34.35 PM (150 x 150).jpg', '0', '2021-03-18 12:42:24', '2021-03-22 11:25:59', NULL ),
( '27', 'Lata Kalla', 'Product Owner - Engineering', '6593Lata 1 (150 x 150).jpg', '1', '2021-03-22 11:28:05', '2021-04-21 09:37:34', NULL ),
( '28', 'Chandrasekhar Chandragiri', 'CFO', '4369Chandra Chandragiri (150 x 150).jpg', '0', '2021-03-22 11:30:12', '2021-05-21 10:31:27', NULL ),
( '29', 'Siva Morisetti', 'CEO, Co-Founder', '9736Siva Morisetti (150 x 150).jpg', '0', '2021-03-22 11:31:05', '2021-05-21 10:31:23', NULL ),
( '30', 'Raja Srinivas Bijarapu', 'Head - Sales & Operations - South Zone', '4416WhatsApp Image 2021-06-04 at 8.11.00 AM (150 x 150).jpg', '1', '2021-06-04 10:22:50', '2021-06-04 10:22:50', NULL ),
( '31', 'Abhijeet Tarke', 'Head - Operations- South Zone', '8583WhatsApp Image 2021-06-04 at 8.11.10 AM (150 x 150).jpg', '1', '2021-06-04 10:24:12', '2021-06-04 10:24:12', NULL ),
( '32', 'Ram Avtar Malpani', 'Manager - Business Excellence', '9493heart.jpg', '1', '2021-06-04 10:25:31', '2022-01-13 12:06:03', 'https://www.fiverr.com/users/arslanaslam314/seller_dashboard' ),
( '33', 'Xantha Callahan', 'Enim corporis sunt n', '8202heart.jpg', '1', '2022-01-12 20:49:24', '2022-01-12 20:49:24', '' ),
( '34', 'Lynn Gentry', 'Est eius doloremque', '5562heart.jpg', '1', '2022-01-12 20:52:34', '2022-01-12 21:02:02', 'https://www.linkedin.com/in/muhammad-arslan-33462010b/' ),
( '35', 'Jin Ortega', 'Quasi pariatur Et s', '2408heart.jpg', '1', '2022-01-12 21:02:38', '2022-01-12 21:02:38', 'https://www.linkedin.com/in/muhammad-arslan-33462010b/' ),
( '36', 'Rhoda Rogers', 'Libero molestias nat', '3573thumb.jpg', '1', '2022-01-13 12:09:58', '2022-01-13 12:09:58', 'https://www.fiverr.com/users/arslanaslam314/seller_dashboard' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "service" ----------------------------------
BEGIN;

INSERT INTO `service`(`service_id`,`title`,`sub_title`,`content`,`image_path`,`type`,`status`,`created_at`,`updated_at`) VALUES 
( '1', 'gfgf', 'bccgg', '', '7211declaration.png', '1', '1', '2020-08-21 16:46:16', '2020-08-21 16:46:16' ),
( '2', 'gfgf', 'bccgg', '', '6105declaration.png', '1', '1', '2020-08-21 16:46:29', '2020-08-21 16:46:29' ),
( '3', 'gfgf', 'bccgg', '', '9581', '1', '1', '2020-08-21 17:02:02', '2020-08-21 17:02:02' ),
( '4', 'test', 'jtest', '', '', '2', '1', '2020-08-21 17:15:22', '2020-08-21 17:15:22' ),
( '5', 'test', 'jtest', '', '', '2', '1', '2020-08-21 17:18:45', '2020-08-21 17:18:45' ),
( '6', 'Lorem Ipsum', '', '<p>&nbsp;has been the industry\'s standard dummy text ever since the 1500s</p>', '4600feature-1.png', '3', '0', '2020-08-21 17:31:14', '2020-09-01 19:18:24' ),
( '7', 'ewrekrjk23rj', '', '<p>wqdhwhdfwfd</p>', '1205lak.jpg', '3', '0', '2020-08-21 20:48:44', '2020-08-21 20:50:33' ),
( '8', 'gfgf', 'bccgg', '', '8309blogs-single.png', '1', '1', '2020-08-24 15:42:59', '2020-08-24 15:42:59' ),
( '9', 'bdsdhhds', 'bccggnsabjsb', '', '1381blogs-2.png', '1', '1', '2020-08-24 16:36:53', '2020-08-24 16:36:53' ),
( '10', 'bdsdhhds', 'bccggnsabjsb', '', '7559WhatsApp Image 2019-07-05 at 12.20.40 PM.jpeg', '1', '1', '2020-08-24 19:32:44', '2020-08-24 19:32:44' ),
( '11', 'bdsdhhds', 'bccggnsabjsb', '', '4847services.png', '1', '1', '2020-08-24 20:20:13', '2020-08-24 20:20:13' ),
( '12', 'bdsdhhds', 'bccggnsabjsb', '', '4847services.png', '1', '1', '2020-08-25 14:29:30', '2020-08-25 14:29:30' ),
( '13', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '', '3165services.png', '1', '1', '2020-08-26 16:04:23', '2020-08-26 16:04:23' ),
( '14', 'Services', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '', '', '2', '1', '2020-08-26 16:04:54', '2020-08-26 16:04:54' ),
( '15', 'Groceries', '', '<p class="western" align="justify"><span style="color: #0e101a;"><span style="font-family: David Libre, serif;"><span style="font-size: large;">Order and get your daily needs from our wide range of groceries (Quality pulses, rice, spices, etc.) procured directly from mills and prime suppliers.</span></span></span></p>', '8768services-groceries.png', '3', '1', '2020-08-26 16:07:20', '2020-10-29 20:30:08' ),
( '16', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '', '4623careers-img.png', '1', '1', '2020-08-26 16:16:01', '2020-08-26 16:16:01' ),
( '17', 'Vegetables', '', '<p class="western" align="justify"><span style="color: #0e101a;"><span style="font-family: David Libre, serif;"><span style="font-size: large;">Explore our wide-varieties of locally-grown farm-fresh vegetables procured directly from farms. Order in bulk and we assure you we&rsquo;ll get you at your doorsteps.</span></span></span></p>', '5639services-vegetables.png', '3', '1', '2020-08-27 15:38:20', '2020-10-29 20:26:38' ),
( '18', 'Cheaper, Faster, Better!', 'We are into global. Anywhere in PAN India! Any amount of order! We assure you on-time delivery of quality vegetables at modest prices.', '', '3987services-banner.png', '1', '1', '2020-09-01 19:07:58', '2020-09-01 19:07:58' ),
( '19', 'Services', 'Touching the lives of 4000+ customers across Hyderabad.', '', '', '2', '1', '2020-09-01 19:08:49', '2020-09-01 19:08:49' ),
( '20', 'Veggies', '', '<p>We supply good veggies.</p>', '6990banners.jpg', '3', '0', '2020-09-30 14:19:03', '2020-09-30 14:20:00' ),
( '21', 'Groceries', '', '<p>An online shop evokes the physical analogy of buying&nbsp;<a title="Product (business)" href="https://en.wikipedia.org/wiki/Product_(business)">products</a>&nbsp;or services at a regular&nbsp;<a class="mw-redirect" title="Brick and mortar business" href="https://en.wikipedia.org/wiki/Brick_and_mortar_business">"bricks-and-mortar"</a>&nbsp;<a class="mw-redirect" title="Retailing" href="https://en.wikipedia.org/wiki/Retailing">retailer</a>&nbsp;or&nbsp;<a title="Shopping center" href="https://en.wikipedia.org/wiki/Shopping_center">shopping center</a>; the process is called business-to-consumer (B2C) online shopping</p>', '6939shopping-1232944_640.jpg', '3', '0', '2020-10-09 10:20:25', '2020-10-09 10:22:37' ),
( '22', 'hub', '', '<p>An online shop evokes the physical analogy of buying&nbsp;<a title="Product (business)" href="https://en.wikipedia.org/wiki/Product_(business)">products</a>&nbsp;or services at a regular&nbsp;<a class="mw-redirect" title="Brick and mortar business" href="https://en.wikipedia.org/wiki/Brick_and_mortar_business">"bricks-and-mortar"</a>&nbsp;<a class="mw-redirect" title="Retailing" href="https://en.wikipedia.org/wiki/Retailing">retailer</a>&nbsp;or&nbsp;<a title="Shopping center" href="https://en.wikipedia.org/wiki/Shopping_center">shopping center</a>; the process is called business-to-consumer (B2C) online shopping</p>
<p>&nbsp;</p>', '4206shopping-1232944_640.jpg', '3', '0', '2020-10-09 10:22:07', '2020-10-09 10:22:30' ),
( '23', 'sample', '', '<p>An online shop evokes the physical analogy of buying&nbsp;<a title="Product (business)" href="https://en.wikipedia.org/wiki/Product_(business)">products</a>&nbsp;or services at a regular&nbsp;<a class="mw-redirect" title="Brick and mortar business" href="https://en.wikipedia.org/wiki/Brick_and_mortar_business">"bricks-and-mortar"</a>&nbsp;<a class="mw-redirect" title="Retailing" href="https://en.wikipedia.org/wiki/Retailing">retailer</a>&nbsp;or&nbsp;<a title="Shopping center" href="https://en.wikipedia.org/wiki/Shopping_center">shopping center</a>; the process is called business-to-consumer (B2C) online shopping</p>', '2698shopping-1232944_640.jpg', '3', '0', '2020-10-09 10:28:09', '2020-10-09 10:30:09' ),
( '24', 'Sample for test', '', '<p>Explore our wide-varieties of locally-grown vegetables and groceries (quality pulses and food grains) procured directly from farms and mills. Order in bulk and we assure you we&rsquo;ll get you at your doorsteps.</p>', '7930shopping-1232944_640.jpg', '3', '0', '2020-10-09 16:31:54', '2020-10-09 16:37:36' ),
( '25', 'sample', '', '<p><strong>Online shopping</strong>&nbsp;is a form of&nbsp;<a class="mw-redirect" title="Electronic commerce" href="https://en.wikipedia.org/wiki/Electronic_commerce">electronic commerce</a>&nbsp;which allows consumers to directly buy&nbsp;<a class="mw-redirect" title="Good (economics)" href="https://en.wikipedia.org/wiki/Good_(economics)">goods</a>&nbsp;or&nbsp;<a title="Service (economics)" href="https://en.wikipedia.org/wiki/Service_(economics)">services</a>&nbsp;from a seller over the&nbsp;<a title="Internet" href="https://en.wikipedia.org/wiki/Internet">Internet</a>&nbsp;using a&nbsp;<a title="Web browser" href="https://en.wikipedia.org/wiki/Web_browser">web browser</a>. Consumers find a product of interest by visiting the&nbsp;<a title="Website" href="https://en.wikipedia.org/wiki/Website">website</a>&nbsp;of the retailer directly or by searching among alternative vendors using a&nbsp;<a class="mw-redirect" title="Shopping search engine" href="https://en.wikipedia.org/wiki/Shopping_search_engine">shopping search engine</a>, which displays the same product\'s availability and pricing at different e-retailers. As of 2020, customers can shop online using a range of different computers and devices, including&nbsp;<a title="Desktop computer" href="https://en.wikipedia.org/wiki/Desktop_computer">desktop computers</a>,&nbsp;<a title="Laptop" href="https://en.wikipedia.org/wiki/Laptop">laptops</a>,&nbsp;<a title="Tablet computer" href="https://en.wikipedia.org/wiki/Tablet_computer">tablet computers</a>&nbsp;and&nbsp;<a title="Smartphone" href="https://en.wikipedia.org/wiki/Smartphone">smartphones</a>.</p>', '2559shopping-1232944_640.jpg', '3', '0', '2020-10-09 16:50:30', '2020-10-09 16:53:14' ),
( '26', 'samp', '', '<p>service for website</p>', '6614shopping-1232944_640.jpg', '3', '0', '2020-10-09 16:53:49', '2020-10-09 16:54:01' ),
( '27', 'Quality, Convenience, Variety & Fast Delivery at a Right Price', 'Serving daily essentials for Restaurants, hotels, CAFÉ\'s, Kirana\'s, hostels, hospitals, small, medium & large government and private corporations. All at your fingertips from a mobile app.', '', '3987services-banner.png', '1', '1', '2020-10-17 14:02:31', '2020-10-17 14:02:31' ),
( '28', 'Services', 'Touching lives of thousands of business customers across Hyderabad. Soon expanding to more cities across India.', '', '', '2', '1', '2020-10-17 14:03:58', '2020-10-17 14:03:58' ),
( '29', 'Services', 'Touching lives of thousands of business customers across Hyderabad. Soon expanding to more cities across India.', '', '', '2', '1', '2020-10-17 14:08:03', '2020-10-17 14:08:03' ),
( '30', 'Quality, Convenience, Variety & Fast Delivery at a Right Price', 'Serving daily essentials for Restaurants, hotels, CAFÉ\'s, Kirana\'s, hostels, hospitals, small, medium & large government and private corporations. All at your fingertips from a mobile app.', '', '4446services-banner.jpg', '1', '1', '2020-10-29 20:05:18', '2020-10-29 20:05:18' ),
( '31', 'Quality, Convenience, Variety & Fast Delivery at a Right Price', 'Serving daily essentials for Restaurants, hotels, CAFÉ\'s, Kirana\'s, hostels, hospitals, small, medium & large government and private corporations. All at your fingertips from a mobile app.', '', '4446services-banner.jpg', '1', '1', '2020-10-29 20:26:09', '2020-10-29 20:26:09' ),
( '32', 'Quality, Convenience, Variety & Fast Delivery at a Right Price', 'Serving daily essentials for Restaurants, hotels, CAFÉ\'s, Kirana\'s, hostels, hospitals, small, medium & large government and private corporations. All at your fingertips from a mobile app.', '', '5464services-banner.png', '1', '1', '2020-10-30 16:54:56', '2020-10-30 16:54:56' ),
( '33', 'Quality, Convenience, Variety & Fast Delivery at a Right Price', 'Serving daily essentials for Restaurants, hotels, CAFÉ\'s, Kirana\'s, hostels, hospitals, small, medium & large government and private corporations. All at your fingertips from a mobile app.', '', '6012IMG_3252_iphonexspacegrey_portrait.png', '1', '1', '2020-12-01 20:51:59', '2020-12-01 20:51:59' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "home" -------------------------------------
BEGIN;

INSERT INTO `home`(`id`,`title`,`sub_title`,`content`,`image_path`,`type`,`status`,`created_at`,`updated_at`) VALUES 
( '1', 'sdsfds', 'dfdgfdgf', '', '6037declaration.png', '1', '0', '2020-08-20 18:20:47', '2020-08-20 19:31:26' ),
( '2', 'hsfhdghfg', 'nsfdfhedhfw', '', '99lak.jpg', '1', '0', '2020-08-20 18:29:21', '2020-08-24 15:37:48' ),
( '3', 'test', 'wqfefe', '', '8558banner-1.png', '1', '0', '2020-08-20 19:22:41', '2020-08-26 15:55:10' ),
( '4', 'wfewfew', 'wqfewfe', '', '8476declaration.png', '2', '1', '2020-08-21 10:55:30', '2020-08-21 10:55:30' ),
( '5', 'sasadsd', 'dwqdw', '', '9579img5.jpg', '2', '1', '2020-08-21 10:56:29', '2020-08-21 10:56:29' ),
( '6', 'sasadsd', 'dwqdw', '', '', '2', '1', '2020-08-21 11:25:39', '2020-08-21 11:25:39' ),
( '7', 'cxbxcjvcxjv', 'safdsgfdg', '', '', '3', '1', '2020-08-21 11:39:21', '2020-08-21 11:39:21' ),
( '8', 'wdwq', 'wdwqdewd', '', '', '3', '1', '2020-08-21 11:39:53', '2020-08-21 11:39:53' ),
( '9', 'wdwq', 'wdwqdewd', '', '', '3', '1', '2020-08-21 11:44:23', '2020-08-21 11:44:23' ),
( '10', 'testing', 'done', '', '', '3', '1', '2020-08-21 11:44:40', '2020-08-21 11:44:40' ),
( '13', 'test', '', '<p>bvwdbbhqwhdghqcd</p>', '4862declaration.png', '4', '0', '2020-08-21 14:29:27', '2020-08-21 14:37:58' ),
( '14', 'Feature 1', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>', '140feature-3.png', '4', '0', '2020-08-21 14:37:33', '2020-08-26 15:58:34' ),
( '15', 'sasadsd', 'dwqdw', '', '', '2', '1', '2020-08-21 14:39:05', '2020-08-21 14:39:05' ),
( '16', 'sfdgre', 'dgrgfrth', '', '', '5', '1', '2020-08-21 14:52:27', '2020-08-21 14:52:27' ),
( '17', 'wdwqd', 'd3d', '', '', '5', '1', '2020-08-21 14:53:29', '2020-08-21 14:53:29' ),
( '18', 'indian retail market', '', '', '943statistics-3.png', '6', '1', '2020-08-21 15:16:06', '2020-08-26 16:01:10' ),
( '19', 'sjfhjdhfjh', '', '', '9463declaration.png', '6', '0', '2020-08-21 15:57:04', '2020-08-21 15:57:10' ),
( '20', 'We Ensure the quality before it comes to you', 'Lorem Ipsum is simply dummy text of the printing and typesetting', '', '809banner-1.png', '1', '0', '2020-08-24 15:34:50', '2020-08-26 15:55:03' ),
( '21', 'sasadsdbhvg', 'dwqdwbvbv', '', '4588blogs-2.png', '2', '1', '2020-08-24 15:38:58', '2020-08-24 15:38:58' ),
( '22', 'sasadsdbhvg', 'dwqdwbvbv', '', '', '2', '1', '2020-08-24 15:39:07', '2020-08-24 15:39:07' ),
( '23', 'sasadsdbhvg', 'dwqdwbvbv', '', '1407blogs-2.png', '2', '1', '2020-08-24 15:39:32', '2020-08-24 15:39:32' ),
( '24', 'How It Works', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '', '4083how-it-works.png', '2', '1', '2020-08-24 17:15:11', '2020-08-24 17:15:11' ),
( '25', 'Statistics', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '', '', '5', '1', '2020-08-24 17:45:45', '2020-08-24 17:45:45' ),
( '26', 'RETAIL CONSUMPTION SPACE', '', '', '3639statistics-2.png', '6', '1', '2020-08-24 17:50:19', '2020-08-26 16:00:43' ),
( '27', 'RETAIL DENSITY', '', '', '8353statistics-1.png', '6', '1', '2020-08-24 17:50:46', '2020-08-26 16:00:26' ),
( '28', 'Features', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '', '', '3', '1', '2020-08-24 17:53:31', '2020-08-24 17:53:31' ),
( '29', 'Feature 2', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>', '5029feature-2.png', '4', '0', '2020-08-24 18:33:54', '2020-09-01 20:38:31' ),
( '30', 'Feature 3', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>', '8899feature-1.png', '4', '0', '2020-08-24 18:34:27', '2020-09-01 20:38:29' ),
( '31', 'test', 'testing', '', '5125aboutus-img.png', '1', '0', '2020-08-24 20:14:07', '2020-08-26 15:54:58' ),
( '32', 'How It Works', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '', '4083how-it-works.png', '2', '1', '2020-08-25 14:23:53', '2020-08-25 14:23:53' ),
( '33', 'Seamless buying experience and hassle-free procurement of your daily food essentials.', 'Discover the best in class at a single click to fast-track your growth curve in reduced time.', '', '8412Home_Banner5.png', '1', '1', '2020-08-26 15:02:05', '2020-10-14 21:19:01' ),
( '34', 'Gained the trust of sizeable SME’s, on a mission to serve more enterprises.', 'It is time for SME’s to shift the gears, from business centered to customer centered while we manage the intricacies of supply chain.', '', '2306Home_Banner4.png', '1', '1', '2020-08-26 15:50:47', '2020-10-14 21:17:48' ),
( '35', 'How It Works', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '', '8763how-it-works.png', '2', '1', '2020-08-26 15:57:01', '2020-08-26 15:57:01' ),
( '36', 'Feature 3', '', '<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s</p>', '877feature-3.png', '4', '0', '2020-08-26 15:59:33', '2020-09-01 20:38:25' ),
( '37', 'Statistics', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '', '', '5', '1', '2020-08-26 16:00:01', '2020-08-26 16:00:01' ),
( '38', 'How It Works', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '', '8763how-it-works.png', '2', '1', '2020-08-27 10:22:03', '2020-08-27 10:22:03' ),
( '39', 'Inherent Corporate Social Responsibility.', 'Supporting Digital India Agriculture initiative, Farmers, Mills and Food Producers are the prime suppliers for us. Improving ROI of prime suppliers and our business clients, who form the both ends of the chain, is the major mover of our business.', '', '4274Home_Banner3.png', '1', '1', '2020-08-27 15:30:40', '2020-10-14 21:16:20' ),
( '40', 'How It Works....', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '', '8763how-it-works.png', '2', '1', '2020-08-27 15:32:54', '2020-08-27 15:32:54' ),
( '41', 'Features', 'line by line', '', '', '3', '1', '2020-08-27 15:34:03', '2020-08-27 15:34:03' ),
( '42', 'Features', 'our features', '', '', '3', '1', '2020-08-27 15:34:51', '2020-08-27 15:34:51' ),
( '43', 'Feature 5', '', '<p>line by line</p>', '8663leader.jpg', '4', '0', '2020-08-27 15:36:02', '2020-09-01 20:38:22' ),
( '44', 'Quality and Freshness guaranteed at Economical pricing!', 'Direct procurement from the prime suppliers. Cutting middlemen & storage. Fine quality commodities at a right competitive price.', '', '7362Home_Banner2.png', '1', '1', '2020-09-01 18:33:01', '2020-10-14 21:14:47' ),
( '45', 'We ride on pillars of Transparency and Technology!', 'Simple yet efficient tech-driven methodology ensures transparency throughout the Business Process.', '', '2336ride-on-pillers.png', '1', '1', '2020-09-01 18:35:32', '2020-10-30 16:50:10' ),
( '46', 'How It Works....', 'We Are A single Cord That Connects Farmers, Prime suppliers & Businesses Together', '', '8763how-it-works.png', '2', '1', '2020-09-01 19:50:36', '2020-09-01 19:50:36' ),
( '47', 'How it Works!', 'We Are A single Cord That Connects Farmers, Prime suppliers & Businesses Together', '', '8763how-it-works.png', '2', '1', '2020-09-01 19:52:17', '2020-09-01 19:52:17' ),
( '48', 'Features', 'A One-stop Shop For Farm-fresh Produce & Daily Essentials!', '', '', '3', '1', '2020-09-01 20:37:04', '2020-09-01 20:37:04' ),
( '49', 'QUALITY ASSURANCE', '', '<p><span style="font-weight: 400;">We meet the highest standards of quality for your Business essentials through certified Prime suppliers and trusted vendors.</span></p>', '4688WhatsApp Image 2021-05-19 at 6.44.43 PM.jpeg', '4', '1', '2020-09-01 20:51:14', '2021-05-19 19:07:56' ),
( '50', 'JUST IN TIME & SAME-DAY DELIVERY', '', '<p><span style="font-weight: 400;">No warehousing. Our zeal to deliver essentials quickly &amp; safely is unparalleled. The backend planning ensures and shortens the delivery time window to as short as 12 Hrs for customers.</span></p>', '4250Feature-1-2.png', '4', '1', '2020-09-02 18:58:33', '2021-05-19 15:57:08' ),
( '51', 'DESIGNATED RELATIONSHIP MANAGER', '', '<p><span style="font-weight: 400;">Each Seller on our platform is provided with an individual account and a designated Relationship Manager who will make sure that the seller has a hassle-free experience throughout.</span></p>', '3504Feature-1-3.png', '4', '1', '2020-09-02 18:59:40', '2021-05-19 16:02:30' ),
( '52', 'Digital Transactions', '', '<p><span style="font-weight: 400;">Quick and secure transactions with multiple third-party payment gateways.</span></p>', '9611secure.png', '4', '1', '2020-09-02 19:01:12', '2021-05-01 17:21:00' ),
( '53', 'ESCROW PAYMENTS', '', '<p><span style="font-weight: 400;">We hold the funds until both parties have fulfilled their contractual requirements. Thus, the end users can stay rest assured of their payments.</span></p>', '3483WhatsApp Image 2021-05-19 at 6.44.42 PM.jpeg', '4', '1', '2020-09-02 19:02:27', '2021-05-19 19:07:32' ),
( '54', 'Optimum Market Price', '', '<p><span style="font-weight: 400;">We skew the middlemen and partner with prime vendors who source from prime suppliers which helps us transfer the benefitting price to our customers. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p>', '8742price.png', '4', '1', '2020-09-02 19:03:06', '2021-05-01 17:24:01' ),
( '55', 'Efficient Logistics', '', '<p><span style="font-weight: 400;">Tech-driven logistics supply chain help with most optimal routes from a prime supplier to the end customer&rsquo;s doorstep, reducing the carbon footprint.</span></p>', '9242WhatsApp Image 2021-05-19 at 3.40.58 PM.jpeg', '4', '1', '2020-09-02 19:03:33', '2021-05-19 15:45:14' ),
( '56', '24x7 Live Chat Customer Service', '', '<p><span style="font-weight: 400;">Round the clock customer service minimizes interruption to the Prime suppliers and customers.</span></p>', '103424-7.png', '4', '1', '2020-09-02 19:04:11', '2021-05-19 15:21:13' ),
( '57', 'Returns management', '', '<p><span style="font-weight: 400;">Reimburse your money instantly through our standard return policy.</span></p>', '7320return-management.png', '4', '1', '2020-09-02 19:04:46', '2021-05-19 15:20:15' ),
( '58', 'Customer loyalty programs', '', '<p class="western" align="justify"><span style="font-family: David Libre, serif;">It&rsquo;s a win-win for loyal customers. Get rewarded with various discount programs and offers.</span></p>', '6572Customer-loyalty.png', '4', '1', '2020-09-02 19:05:16', '2020-09-02 19:05:16' ),
( '59', 'Statistics', 'Retail and wholesale market coverage of Qwipo: 80%', '', '', '5', '1', '2020-09-03 14:42:08', '2020-09-03 14:42:08' ),
( '60', 'How it Works! *', 'We Are A single Cord That Connects Farmers, Prime suppliers & Businesses Together **', '', '8763how-it-works.png', '2', '1', '2020-09-30 14:14:11', '2020-09-30 14:14:11' ),
( '61', 'How it Works!', 'We Are A single Cord That Connects Farmers, Prime suppliers & Businesses Together', '', '8763how-it-works.png', '2', '1', '2020-09-30 14:15:04', '2020-09-30 14:15:04' ),
( '62', '????Example features', '', '<p>Online shopping is a form of&nbsp;<strong>electronic commerce</strong>&nbsp;which allows consumers to directly buy goods or services from a seller over the Internet using a web browser. Consumers find a product of interest by visiting the website of the retailer directly or by searching among alternative vendors using a shopping search engine, which displays the same product\'s availability and pricing at different e-retailers. As of 2020, customers can shop online using a range of different computers and devices ...</p>', '8874shopping-1232944_640.jpg', '4', '0', '2020-10-08 11:14:13', '2020-10-08 11:17:48' ),
( '63', 'example', 'groceries', '', '1035shopping-1232944_640.jpg', '1', '0', '2020-10-08 11:37:18', '2020-10-08 11:38:02' ),
( '64', 'Sample', '', '<p><strong>Online shopping</strong>&nbsp;is a form of&nbsp;<a class="mw-redirect" title="Electronic commerce" href="https://en.wikipedia.org/wiki/Electronic_commerce">electronic commerce</a>&nbsp;which allows consumers to directly buy&nbsp;<a class="mw-redirect" title="Good (economics)" href="https://en.wikipedia.org/wiki/Good_(economics)">goods</a>&nbsp;or&nbsp;<a title="Service (economics)" href="https://en.wikipedia.org/wiki/Service_(economics)">services</a>&nbsp;from a seller over the&nbsp;<a title="Internet" href="https://en.wikipedia.org/wiki/Internet">Internet</a>&nbsp;using a&nbsp;<a title="Web browser" href="https://en.wikipedia.org/wiki/Web_browser">web browser</a>. Consumers find a product of interest by visiting the&nbsp;<a title="Website" href="https://en.wikipedia.org/wiki/Website">website</a>&nbsp;of the retailer directly or by searching among alternative vendors using a&nbsp;<a class="mw-redirect" title="Shopping search engine" href="https://en.wikipedia.org/wiki/Shopping_search_engine">shopping search engine</a>, which displays the same product\'s availability and pricing at different e-retailers. As of 2020, customers can shop online using a range of different computers and devices, including&nbsp;<a title="Desktop computer" href="https://en.wikipedia.org/wiki/Desktop_computer">desktop computers</a>,&nbsp;<a title="Laptop" href="https://en.wikipedia.org/wiki/Laptop">laptops</a>,&nbsp;<a title="Tablet computer" href="https://en.wikipedia.org/wiki/Tablet_computer">tablet computers</a>&nbsp;and&nbsp;<a title="Smartphone" href="https://en.wikipedia.org/wiki/Smartphone">smartphones</a>.</p>', '9396shopping-1232944_640.jpg', '4', '1', '2020-10-09 09:13:30', '2020-10-09 09:13:30' );
COMMIT;
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------



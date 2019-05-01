-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 14, 2016 at 12:46 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `v14`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`admin_id` int(11) NOT NULL,
  `name` longtext,
  `phone` longtext,
  `address` longtext,
  `email` longtext,
  `password` longtext,
  `role` varchar(10) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `phone`, `address`, `email`, `password`, `role`, `timestamp`) VALUES
(1, 'Mr. Master Admin', '', '', 'admin@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1', '1476398746'),
(2, 'Mr. Accountant', '017', 'dhk', 'accountant@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '4', '1430737266'),
(3, 'Mr manager', '021525566', 'Niketon Dhaka', 'manager@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '6', '1433682938');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
`banner_id` int(11) NOT NULL,
  `page` longtext,
  `place` longtext,
  `num` longtext,
  `status` longtext,
  `link` longtext,
  `image_ext` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `page`, `place`, `num`, `status`, `link`, `image_ext`) VALUES
(1, 'home', 'after_slider', '1', 'ok', '', '.jpg'),
(2, 'home', 'after_slider', '2', 'ok', '', '.jpg'),
(3, 'home', 'after_slider', '3', 'ok', '', '.jpg'),
(4, 'home', 'after_slider', '4', '0', '', NULL),
(5, 'home', 'after_featured', '1', '0', '', NULL),
(6, 'home', 'after_featured', '2', '0', '', NULL),
(7, 'home', 'after_featured', '3', '0', '', NULL),
(8, 'home', 'after_featured', '4', '0', '', NULL),
(9, 'home', 'after_search', '1', '0', '', NULL),
(10, 'home', 'after_search', '2', '0', '', NULL),
(11, 'home', 'after_search', '3', '0', '', NULL),
(12, 'home', 'after_search', '4', '0', '', NULL),
(13, 'home', 'after_category', '1', '0', '', NULL),
(14, 'home', 'after_category', '2', '0', '', NULL),
(15, 'home', 'after_category', '3', '0', '', NULL),
(16, 'home', 'after_category', '4', '0', '', NULL),
(17, 'home', 'after_latest', '1', '0', '', NULL),
(18, 'home', 'after_popular', '1', '0', '', NULL),
(19, 'home', 'after_most_viewed', '1', '0', '', NULL),
(20, 'category', 'after_filters', '1', 'ok', '', NULL),
(21, 'featured', 'after_most_sold', '1', '0', '', NULL),
(22, 'featured', 'after_most_viewed', '1', '0', '', NULL),
(23, 'vendor_home', 'after_filter', '1', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
`blog_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `summery` varchar(1000) NOT NULL,
  `author` varchar(500) NOT NULL,
  `date` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `blog_category` varchar(25) NOT NULL,
  `number_of_view` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `summery`, `author`, `date`, `description`, `status`, `blog_category`, `number_of_view`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '<p><span [removed]="text-align: justify;"> </span><span [removed] justify;">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen </span><br></p>', 'mr.tom', '2016-09-25', '<p><span [removed]="text-align: justify;"> </span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p><p><span [removed]="text-align: justify;"> </span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><span [removed]="text-align: justify;"><br></span><span [removed] justify;"><br></span><br></p>', NULL, '1', 1),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '<p><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry</span><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="" justify;"="">is&nbsp;</span><br></p>', 'mr. viza', '2016-09-24', '<p><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry</span><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry</span><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry</span><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry</span><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry</span><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry</span><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry</span><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry</span><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry</span><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry</span><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry</span><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry</span><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry</span><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry</span></p><hr id="[object Object]"><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry</span><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry</span><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="text-align: justify;">Lorem Ipsum</span><span [removed]="text-align: justify;">is simply dummy text of the printing and typesetting industry</span><span [removed]="text-align: justify;">&nbsp;</span><span [removed]="" justify;"="">is simply dummy text of the printing and typesetting industry</span><p><br></p>', NULL, '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE IF NOT EXISTS `blog_category` (
`blog_category_id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`blog_category_id`, `name`) VALUES
(1, 'Health'),
(2, 'Beauty');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
`brand_id` int(11) NOT NULL,
  `name` longtext,
  `description` longtext,
  `logo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `name`, `description`, `logo`) VALUES
(41, 'Chevrolet', NULL, 'brand_41.jpg'),
(40, 'Ford', NULL, 'brand_40.jpg'),
(39, 'Nissan', NULL, 'brand_39.jpg'),
(38, 'Audi', NULL, 'brand_38.jpg'),
(6, 'Brighton', NULL, 'brand_6.jpg'),
(7, 'Tanishq', NULL, 'brand_7.jpg'),
(8, 'Lucky Brand', NULL, 'brand_8.jpg'),
(9, 'The Crystal Bride', NULL, 'brand_9.jpg'),
(10, 'Victoria''s Secret', NULL, 'brand_10.jpg'),
(11, 'Dior', NULL, 'brand_11.jpg'),
(12, 'Bucket Feet', NULL, 'brand_12.jpg'),
(13, 'Priscess Purse', NULL, 'brand_13.jpg'),
(14, 'En''or', NULL, 'brand_14.jpg'),
(15, 'Jlo', NULL, 'brand_15.jpg'),
(16, 'The Vested Interest', NULL, 'brand_16.jpg'),
(17, 'Polo', NULL, 'brand_17.jpg'),
(18, 'Rolex', NULL, 'brand_18.jpg'),
(19, 'Elle', NULL, 'brand_19.jpg'),
(20, 'Baume & Mercier', NULL, 'brand_20.jpg'),
(21, 'Pepe Jeans', NULL, 'brand_21.jpg'),
(22, 'Aigner', NULL, 'brand_22.jpg'),
(23, 'Adidas', NULL, 'brand_23.jpg'),
(24, 'Asics', NULL, 'brand_24.jpg'),
(25, 'Hudson', NULL, 'brand_25.jpg'),
(26, 'Omega', NULL, 'brand_26.jpg'),
(27, 'Breitling', NULL, 'brand_27.jpg'),
(28, 'Burberry', NULL, 'brand_28.jpg'),
(29, 'Axe', NULL, 'brand_29.jpg'),
(30, 'Giorgio Armani', NULL, 'brand_30.jpg'),
(31, 'Castillo', NULL, 'brand_31.jpg'),
(32, 'Muratti', NULL, 'brand_32.jpg'),
(33, 'Cognac', NULL, 'brand_33.jpg'),
(34, 'Project Vision', NULL, 'brand_34.jpg'),
(35, 'Nike', NULL, 'brand_35.jpg'),
(36, 'Reebok', NULL, 'brand_36.jpg'),
(37, 'Puma', NULL, 'brand_37.jpg'),
(42, 'Mini', NULL, 'brand_42.jpg'),
(43, 'Fiat', NULL, 'brand_43.jpg'),
(44, 'Hyundai', NULL, 'brand_44.jpg'),
(45, 'BMW', NULL, 'brand_45.jpg'),
(46, 'Marcedes-Benz', NULL, 'brand_46.jpg'),
(47, 'Mitsubishi', NULL, 'brand_47.jpg'),
(48, 'Suzuki', NULL, 'brand_48.jpg'),
(49, 'Tata', NULL, 'brand_49.jpg'),
(50, 'Lamborghini', NULL, 'brand_50.jpg'),
(51, 'Toyota', NULL, 'brand_51.jpg'),
(52, 'Honda', NULL, 'brand_52.jpg'),
(53, 'Volkswagen', NULL, 'brand_53.jpg'),
(54, 'Volvo', NULL, 'brand_54.jpg'),
(55, 'Porsche', NULL, 'brand_55.jpg'),
(56, 'Dunlop', NULL, 'brand_56.jpg'),
(57, 'Yamaha', NULL, 'brand_57.jpg'),
(59, 'Asus', NULL, 'brand_59.jpg'),
(60, 'HP', NULL, 'brand_60.jpg'),
(61, 'Dell', NULL, 'brand_61.jpg'),
(62, 'Intel', NULL, 'brand_62.jpg'),
(63, 'Apple', NULL, 'brand_63.jpg'),
(64, 'Acer', NULL, 'brand_64.jpg'),
(65, 'Lexington', NULL, 'brand_65.jpg'),
(66, 'Jade Furniture', NULL, 'brand_66.jpg'),
(67, 'AIF', NULL, 'brand_67.jpg'),
(68, 'Apato', NULL, 'brand_68.jpg'),
(69, 'Brooks', NULL, 'brand_69.jpg'),
(70, 'Decor', NULL, 'brand_70.jpg'),
(71, 'IFD', NULL, 'brand_71.jpg'),
(72, 'Interwood', NULL, 'brand_72.jpg'),
(73, 'Hillsdale', NULL, 'brand_73.jpg'),
(74, 'Nicoletti Home', NULL, 'brand_74.jpg'),
(75, 'Little Live Pets', NULL, 'brand_75.jpg'),
(76, 'Baby Tv', NULL, 'brand_76.jpg'),
(77, 'Johnson''s Baby', NULL, 'brand_77.jpg'),
(78, 'Kickers', NULL, 'brand_78.jpg'),
(79, 'Aptamil', NULL, 'brand_79.jpg'),
(80, 'Babies Outfits', NULL, 'brand_80.jpg'),
(81, 'Cerelac', NULL, 'brand_81.jpg'),
(82, 'Bambinoz', NULL, 'brand_82.jpg'),
(83, 'Baby & Me Organic', NULL, 'brand_83.jpg'),
(84, 'Toys Pino', NULL, 'brand_84.jpg'),
(85, 'Pampers', NULL, 'brand_85.jpg'),
(86, 'Hashroom', NULL, 'brand_86.jpg'),
(87, 'Belly Baby', NULL, 'brand_87.jpg'),
(88, 'Baby Care', NULL, 'brand_88.jpg'),
(89, 'Pricess Purse', NULL, 'brand_89.jpg'),
(90, 'Polo', NULL, 'brand_90.jpg'),
(91, 'Murrati', NULL, 'brand_91.jpg'),
(92, 'Nike', NULL, 'brand_92.jpg'),
(93, 'Adidas', NULL, 'brand_93.jpg'),
(94, 'Reebonz', NULL, 'brand_94.jpg'),
(95, 'Sally Young', NULL, 'brand_95.jpg'),
(96, 'Fenwick', NULL, 'brand_96.jpg'),
(97, 'Tuladuo', NULL, 'brand_97.jpg'),
(98, 'Bally', NULL, 'brand_98.jpg'),
(99, 'atlantic', NULL, 'brand_99.jpg'),
(100, 'Gucci', NULL, 'brand_100.jpg'),
(101, 'eternal love', NULL, 'brand_101.jpg'),
(102, 'Calvin Klein', NULL, 'brand_102.jpg'),
(103, 'Amro Music', NULL, 'brand_103.jpg'),
(104, 'For the Love of Guiter', NULL, 'brand_104.jpg'),
(105, 'Arbor', NULL, 'brand_105.jpg'),
(106, 'Breedlove', NULL, 'brand_106.jpg'),
(107, 'Eastman', NULL, 'brand_107.jpg'),
(108, 'Fender', NULL, 'brand_108.jpg'),
(109, 'Gibson Guiter', NULL, 'brand_109.jpg'),
(110, 'Yamaha', NULL, 'brand_110.jpg'),
(111, 'Guiter Center', NULL, 'brand_111.jpg'),
(112, 'Hill Music', NULL, 'brand_112.jpg'),
(113, 'Jackson', NULL, 'brand_113.jpg'),
(114, 'Martin & Co.', NULL, 'brand_114.jpg'),
(115, 'Stagg', NULL, 'brand_115.jpg'),
(116, 'Pearl', NULL, 'brand_116.jpg'),
(117, 'Richard Savery', NULL, 'brand_117.jpg'),
(118, 'Mitre', NULL, 'brand_118.jpg'),
(119, 'Scott', NULL, 'brand_119.jpg'),
(120, 'New Balance', NULL, 'brand_120.jpg'),
(121, 'Arena', NULL, 'brand_121.jpg'),
(122, 'Brooks', NULL, 'brand_122.jpg'),
(123, 'Amer Sports', NULL, 'brand_123.jpg'),
(124, 'Anderson', NULL, 'brand_124.jpg'),
(125, 'Easton', NULL, 'brand_125.jpg'),
(126, 'Milano', NULL, 'brand_126.jpg'),
(127, 'Spartan', NULL, 'brand_127.jpg'),
(128, 'Softball Junk', NULL, 'brand_128.jpg'),
(129, 'Score', NULL, 'brand_129.jpg'),
(130, 'Juice Meeting Bar', NULL, 'brand_130.jpg'),
(131, 'Fruit Orama', NULL, 'brand_131.jpg'),
(132, 'Reynolds', NULL, 'brand_132.jpg'),
(133, 'Premier Foods', NULL, 'brand_133.jpg'),
(134, 'A&W', NULL, 'brand_134.jpg'),
(135, 'Cal Fresh', NULL, 'brand_135.jpg'),
(136, 'Chilis', NULL, 'brand_136.jpg'),
(137, 'Denny''s', NULL, 'brand_137.jpg'),
(138, 'Roots of Change', NULL, 'brand_138.jpg'),
(139, 'Cumbum Fresh', NULL, 'brand_139.jpg'),
(140, 'Fat Burger', NULL, 'brand_140.jpg'),
(141, 'DQ', NULL, 'brand_141.jpg'),
(142, 'Sony', NULL, 'brand_142.png'),
(143, 'Canon', NULL, 'brand_143.png'),
(144, 'Nikon', NULL, 'brand_144.jpg'),
(145, 'Example brand', NULL, 'brand_145.');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE IF NOT EXISTS `business_settings` (
`business_settings_id` int(11) NOT NULL,
  `type` longtext,
  `status` varchar(10) DEFAULT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES
(1, 'paypal_email', 'ok', ''),
(2, 'shipping_cost', 'ok', '10'),
(3, 'shipping_cost_type', '', 'product_wise'),
(4, 'currency', '', '1'),
(6, 'shipment_info', '', '<p><span style="line-height: 17.1429px;">&nbsp;</span></p>'),
(7, 'currency_name', '', 'Dollar'),
(8, 'exchange', '', '80'),
(9, 'paypal_set', '', 'ok'),
(10, 'paypal_type', '', 'sandbox'),
(11, 'faqs', '', '[{"question":"asdad","answer":"<p>asdada<\\/p>"},{"question":"asdasd","answer":"<p>asdada asdad<\\/p>"}]'),
(12, 'cash_set', '', 'ok'),
(13, 'stripe_set', '', 'ok'),
(14, 'stripe_secret', '', ''),
(15, 'stripe_publishable', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`category_id` int(11) NOT NULL,
  `category_name` longtext,
  `description` longtext,
  `digital` varchar(10) DEFAULT NULL,
  `banner` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `data_brands` longtext,
  `data_vendors` longtext,
  `data_subdets` longtext
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `description`, `digital`, `banner`, `data_brands`, `data_vendors`, `data_subdets`) VALUES
(1, 'Automobile', NULL, NULL, 'category_1.jpg', '41:::Chevrolet;;;;;;40:::Ford;;;;;;39:::Nissan;;;;;;38:::Audi;;;;;;44:::Hyundai;;;;;;45:::BMW;;;;;;46:::Marcedes-Benz;;;;;;47:::Mitsubishi;;;;;;51:::Toyota;;;;;;52:::Honda;;;;;;54:::Volvo;;;;;;50:::Lamborghini;;;;;;55:::Porsche;;;;;;48:::Suzuki;;;;;;56:::Dunlop;;;;;;57:::Yamaha', '3:::Tom', '[{"sub_id":"1","sub_name":"Car","min":0,"max":0,"brands":"41:::Chevrolet;;;;;;40:::Ford;;;;;;39:::Nissan;;;;;;38:::Audi;;;;;;44:::Hyundai;;;;;;45:::BMW;;;;;;46:::Marcedes-Benz;;;;;;47:::Mitsubishi;;;;;;51:::Toyota;;;;;;52:::Honda;;;;;;54:::Volvo"},{"sub_id":"2","sub_name":"Racing Car","min":0,"max":0,"brands":"41:::Chevrolet;;;;;;40:::Ford;;;;;;39:::Nissan;;;;;;38:::Audi;;;;;;45:::BMW;;;;;;46:::Marcedes-Benz;;;;;;47:::Mitsubishi;;;;;;50:::Lamborghini;;;;;;51:::Toyota;;;;;;52:::Honda;;;;;;54:::Volvo;;;;;;55:::Porsche"},{"sub_id":"3","sub_name":"Luxury SUV","min":46545,"max":140825,"brands":"41:::Chevrolet;;;;;;40:::Ford;;;;;;39:::Nissan;;;;;;45:::BMW;;;;;;47:::Mitsubishi;;;;;;51:::Toyota;;;;;;54:::Volvo"},{"sub_id":"5","sub_name":"Chopper Bike","min":13150,"max":79560,"brands":"39:::Nissan;;;;;;45:::BMW;;;;;;48:::Suzuki;;;;;;52:::Honda;;;;;;56:::Dunlop;;;;;;57:::Yamaha"},{"sub_id":"6","sub_name":"Racing Bike","min":36000,"max":48000,"brands":"45:::BMW;;;;;;52:::Honda;;;;;;57:::Yamaha"},{"sub_id":"63","sub_name":"Private Air","min":775000,"max":4800000,"brands":"40:::Ford;;;;;;39:::Nissan;;;;;;38:::Audi;;;;;;46:::Marcedes-Benz;;;;;;47:::Mitsubishi;;;;;;55:::Porsche"}]'),
(4, 'Women fashion', NULL, NULL, 'category_4.jpg', '8:::Lucky Brand;;;;;;10:::Victoria''s Secret;;;;;;11:::Dior;;;;;;13:::Priscess Purse;;;;;;14:::En''or;;;;;;15:::Jlo;;;;;;9:::The Crystal Bride;;;;;;6:::Brighton;;;;;;7:::Tanishq;;;;;;16:::The Vested Interest;;;;;;12:::Bucket Feet;;;;;;19:::Elle;;;;;;100:::Gucci;;;;;;101:::eternal love;;;;;;102:::Calvin Klein;;;;;;17:::Polo;;;;;;18:::Rolex', '1:::Lavinia Mckee;;;;;;5:::Youn', '[{"sub_id":"8","sub_name":"Party Dress","min":250,"max":299,"brands":"8:::Lucky Brand;;;;;;10:::Victoria s Secret;;;;;;11:::Dior"},{"sub_id":"9","sub_name":"Women Secret","min":12,"max":25,"brands":"10:::Victoria s Secret;;;;;;13:::Priscess Purse;;;;;;14:::En or;;;;;;15:::Jlo"},{"sub_id":"10","sub_name":"Sleeping Dress","min":13,"max":180,"brands":"10:::Victoria s Secret;;;;;;11:::Dior;;;;;;14:::En or;;;;;;15:::Jlo"},{"sub_id":"11","sub_name":"Beauty & Health","min":7,"max":8999,"brands":"8:::Lucky Brand;;;;;;9:::The Crystal Bride"},{"sub_id":"34","sub_name":"Bridal Attire","min":350,"max":350,"brands":"6:::Brighton;;;;;;7:::Tanishq;;;;;;9:::The Crystal Bride;;;;;;13:::Priscess Purse"},{"sub_id":"35","sub_name":"Formal Dress","min":150,"max":280,"brands":"8:::Lucky Brand;;;;;;11:::Dior;;;;;;15:::Jlo;;;;;;16:::The Vested Interest"},{"sub_id":"36","sub_name":"Women s Shoe","min":49,"max":55,"brands":"11:::Dior;;;;;;12:::Bucket Feet;;;;;;14:::En or;;;;;;15:::Jlo;;;;;;19:::Elle"},{"sub_id":"37","sub_name":"Fragrance World","min":160,"max":500,"brands":"7:::Tanishq;;;;;;10:::Victoria s Secret;;;;;;11:::Dior;;;;;;14:::En or;;;;;;15:::Jlo;;;;;;100:::Gucci;;;;;;101:::eternal love;;;;;;102:::Calvin Klein"},{"sub_id":"39","sub_name":"Women s Time Zone","min":125,"max":125,"brands":"15:::Jlo;;;;;;16:::The Vested Interest;;;;;;17:::Polo;;;;;;18:::Rolex;;;;;;19:::Elle"},{"sub_id":"40","sub_name":"Casual wear","min":130,"max":130,"brands":"7:::Tanishq;;;;;;8:::Lucky Brand;;;;;;15:::Jlo;;;;;;17:::Polo"}]'),
(5, 'Men fashion', NULL, NULL, 'category_5.jpg', '22:::Aigner;;;;;;25:::Hudson;;;;;;26:::Omega;;;;;;27:::Breitling;;;;;;30:::Giorgio Armani;;;;;;17:::Polo;;;;;;23:::Adidas;;;;;;24:::Asics;;;;;;33:::Cognac;;;;;;35:::Nike;;;;;;20:::Baume & Mercier;;;;;;21:::Pepe Jeans;;;;;;31:::Castillo;;;;;;37:::Puma;;;;;;18:::Rolex;;;;;;29:::Axe;;;;;;34:::Project Vision;;;;;;63:::Apple', '3:::Tom', '[{"sub_id":"27","sub_name":"Formal Dress","min":112,"max":120,"brands":"22:::Aigner;;;;;;25:::Hudson;;;;;;26:::Omega;;;;;;27:::Breitling;;;;;;30:::Giorgio Armani"},{"sub_id":"28","sub_name":"Men s shoe","min":75,"max":135,"brands":"17:::Polo;;;;;;23:::Adidas;;;;;;24:::Asics;;;;;;33:::Cognac;;;;;;35:::Nike"},{"sub_id":"29","sub_name":"Casual Dress","min":15,"max":45,"brands":"20:::Baume & Mercier;;;;;;21:::Pepe Jeans;;;;;;23:::Adidas;;;;;;31:::Castillo;;;;;;37:::Puma"},{"sub_id":"30","sub_name":"Men Watch","min":685,"max":799,"brands":"17:::Polo;;;;;;18:::Rolex;;;;;;23:::Adidas;;;;;;29:::Axe;;;;;;31:::Castillo;;;;;;34:::Project Vision;;;;;;63:::Apple"}]'),
(16, 'Example category 1', NULL, NULL, 'category_16.', '', '', '[]'),
(17, 'Example category 2', NULL, NULL, 'category_17.', '', '', '[]'),
(18, 'Example category 3', NULL, NULL, 'category_18.', '', '', '[]'),
(19, 'Example category 4', NULL, NULL, 'category_19.', '', '', '[]'),
(20, 'Example Digital', NULL, 'ok', 'category_20.', '', '', '[]'),
(12, 'Web Development', NULL, 'ok', 'category_12.jpg', '', '', '[{"sub_id":"64","sub_name":"HTML","min":0,"max":0,"brands":""},{"sub_id":"65","sub_name":"CSS","min":0,"max":0,"brands":""},{"sub_id":"66","sub_name":"php","min":38,"max":38,"brands":""},{"sub_id":"67","sub_name":"wordpress","min":0,"max":0,"brands":""}]'),
(13, 'Graphics design', NULL, 'ok', 'category_13.jpg', '', '', '[{"sub_id":"72","sub_name":"Logo design","min":0,"max":0,"brands":""},{"sub_id":"73","sub_name":"3D Design","min":20,"max":20,"brands":""},{"sub_id":"74","sub_name":"Web element","min":0,"max":0,"brands":""},{"sub_id":"75","sub_name":"Printing solution","min":26,"max":26,"brands":""}]');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('626eb08de16a00fd14f58befbef5638e6995b6db', '::1', 1476398797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437363339383739373b);

-- --------------------------------------------------------

--
-- Table structure for table `contact_message`
--

CREATE TABLE IF NOT EXISTS `contact_message` (
`contact_message_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `message` longtext,
  `timestamp` varchar(20) DEFAULT NULL,
  `view` varchar(10) DEFAULT NULL,
  `reply` longtext,
  `other` longtext
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_message`
--

INSERT INTO `contact_message` (`contact_message_id`, `name`, `subject`, `email`, `message`, `timestamp`, `view`, `reply`, `other`) VALUES
(1, 'Barrett Shepard', NULL, 'zape@gmail.com', '', '1444834552', 'no', NULL, NULL),
(2, 'aasdfs', 'aaaa', 'amit@gmail.com', 'aaaaa', '1469697073', 'no', NULL, NULL),
(3, 'aaa', 'aaaa', 'amit@gmail.com', 'aaaa', '1469697207', 'no', NULL, NULL),
(4, 'aaa', 'aaa', 'akibtanjim@gmail.com', 'aaaa', '1469697281', 'no', NULL, NULL),
(5, 'aa', 'aaa', 'aaa', 'aaaaa', '1469697490', 'no', NULL, NULL),
(6, 'aasdfs', 'aaa', 'amit@gmail.com', 'aaaaa', '1469702141', 'no', NULL, NULL),
(7, 'aasdfs', 'aaaa', 'akibtanjim@gmail.com', 'aaaa', '1469702304', 'no', NULL, NULL),
(8, 'aaa', 'aaa', 'amit@gmail.com', 'aaaa', '1469702377', 'no', NULL, NULL),
(9, 'aa', 'aaa', 'amit@gmail.com', 'aaaa', '1469702519', 'no', NULL, NULL),
(10, 'aaa', 'aaaaaaaaaaaaaa', 'amit@gmail.com', 'aaaaaa', '1469702546', 'no', NULL, NULL),
(11, 'aaa', 'aaaaa', 'akibtanjim@gmail.com', 'aaaaaa', '1469702614', 'no', NULL, NULL),
(12, 'aaa', 'aaaaa', 'akibtanjim@gmail.com', 'aaaaa', '1469702701', 'no', NULL, NULL),
(13, 'aasdfs', 'aaa', 'akibtanjim@gmail.com', 'aaaaaa', '1469702813', 'no', NULL, NULL),
(14, 'aasdfs', 'aaa', 'akibtanjim@gmail.com', 'aaaaa', '1469702857', 'no', NULL, NULL),
(15, 'aaa', 'aaa', 'aaarnob1', 'aaaaa', '1469702988', 'no', NULL, NULL),
(16, 'aaa', 'aaa', 'amit@gmail.com', 'aaaaa', '1469703183', 'no', NULL, NULL),
(17, 'aaa', 'aaa', 'amit@gmail.com', 'aaaaa', '1469703210', 'no', NULL, NULL),
(18, 'aaa', 'aaa', 'amit@gmail.com', 'aaaaa', '1469705865', 'no', NULL, NULL),
(19, 'a', 'a', 'amit@gmail.com', 'a', '1469705951', 'no', NULL, NULL),
(20, 'aa', 'aaaa', 'amit@gmail.com', 'aaaa', '1469706769', 'no', NULL, NULL),
(21, 'Ciara Ware', 'Quae porro ea possimus nesciunt beatae sint officiis nostrum recusandae At debitis accusamus rerum praesentium iusto reprehenderit alias culpa', 'labov@yahoo.com', 'Est sit, quidem dolore assumenda ut repellendus. Minus id sunt, odio magna eos, aute quia qui minim.', '1473304147', 'no', NULL, NULL),
(22, 'Tom', 'check', 'demovendor.tom@gmail.com', 'message check', '1475561140', 'no', 'checked', NULL),
(23, 'Geoffrey Bass', 'Laborum mollit et voluptas explicabo Quo similique', 'jusakos@hotmail.com', 'Dolorum tempore, nesciunt, nisi atque expedita distinctio. Nesciunt, natus exercitationem vel mollitia.', '1475693105', 'no', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE IF NOT EXISTS `coupon` (
`coupon_id` int(11) NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `spec` varchar(1000) DEFAULT NULL,
  `added_by` varchar(300) DEFAULT NULL,
  `till` varchar(30) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `currency_settings`
--

CREATE TABLE IF NOT EXISTS `currency_settings` (
`currency_settings_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) CHARACTER SET utf8 NOT NULL,
  `exchange_rate` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency_settings`
--

INSERT INTO `currency_settings` (`currency_settings_id`, `name`, `symbol`, `exchange_rate`, `status`, `code`) VALUES
(1, 'U.S. Dollar', '$', '1', 'ok', 'USD'),
(2, 'Australian Dollar', '$', '1.3163', 'ok', 'AUD'),
(5, 'Brazilian Real', 'R$', '3.2953', 'ok', 'BRL'),
(6, 'Canadian Dollar', '$', '1.3199', 'ok', 'CAD'),
(7, 'Czech Koruna', 'Kč', '24.212', 'ok', 'CZK'),
(8, 'Danish Krone', 'kr', '6.6675', 'ok', 'DKK'),
(9, 'Euro', '€', '0.89079', 'ok', 'EUR'),
(10, 'Hong Kong Dollar', '$', '7.7587', 'ok', 'HKD'),
(11, 'Hungarian Forint', 'Ft', '275.38', 'ok', 'HUF'),
(12, 'Israeli New Sheqel', '₪', '3.7896', 'ok', 'ILS'),
(13, 'Japanese Yen', '¥', '101.86', 'ok', 'JPY'),
(14, 'Malaysian Ringgit', 'RM', '4.1369', 'ok', 'MYR'),
(15, 'Mexican Peso', '$', '19.389', 'ok', 'MXN'),
(16, 'Norwegian Krone', 'kr', '8.2509', 'ok', 'NOK'),
(17, 'New Zealand Dollar', '$', '1.3689', 'ok', 'NZD'),
(18, 'Philippine Peso', '₱', '47.872', 'ok', 'PHP'),
(19, 'Polish Zloty', 'zł', '3.8453', 'ok', 'PLN'),
(20, 'Pound Sterling', '£', '0.75898', 'ok', 'GBP'),
(21, 'Russian Ruble', 'руб', '64.936', 'ok', 'RUB'),
(22, 'Singapore Dollar', '$', '1.3645', 'ok', 'SGD'),
(23, 'Swedish Krona', 'kr', '8.5133', 'ok', 'SEK'),
(24, 'Swiss Franc', 'CHF', '0.97461', 'ok', 'CHF'),
(26, 'Thai Baht', '฿', '34.91', 'ok', 'THB');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE IF NOT EXISTS `general_settings` (
`general_settings_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES
(1, 'system_name', 'dcsd s'),
(2, 'system_email', 'admin@shop.com'),
(3, 'system_title', 'dcsd s'),
(4, 'address', ''),
(5, 'phone', ''),
(6, 'language', 'english'),
(9, 'terms_conditions', '<p>terms and conditions</p>'),
(10, 'fb_appid', ''),
(11, 'fb_secret', ''),
(12, 'google_languages', '{}'),
(24, 'meta_description', ''),
(25, 'meta_keywords', ''),
(26, 'meta_author', 'ActiveItZone'),
(27, 'captcha_public', '6LdsXPQSAAAAALRQB-m8Irt6-2_s2t10QsVnndVN'),
(28, 'captcha_private', '6LdsXPQSAAAAAFEnxFqW9qkEU_vozvDvJFV67yho'),
(29, 'application_name', ''),
(30, 'client_id', ''),
(31, 'client_secret', ''),
(32, 'redirect_uri', ''),
(33, 'api_key', ''),
(44, 'contact_about', '<p>about ndhsafhasfoiashfasf</p>'),
(39, 'contact_phone', '022555'),
(40, 'contact_email', 'activesupershop@gmail.com'),
(41, 'contact_website', 'www.activeitzone.com'),
(42, 'footer_text', '<p>Your Footer Text</p>'),
(43, 'footer_category', '["1","4","5","12"]'),
(38, 'contact_address', 'niketon'),
(45, 'admin_notification_sound', 'ok'),
(46, 'admin_notification_volume', '7.47'),
(47, 'privacy_policy', '<p>Privacy Policy</p>'),
(48, 'discus_id', ''),
(49, 'home_notification_sound', 'ok'),
(50, 'homepage_notification_volume', '7.36'),
(51, 'fb_login_set', 'no'),
(52, 'g_login_set', 'no'),
(53, 'slider', 'no'),
(54, 'revisit_after', '2'),
(55, 'default_member_product_limit', '5'),
(56, 'fb_comment_api', ''),
(57, 'comment_type', 'google'),
(58, 'vendor_system', 'ok'),
(59, 'cache_time', '1440'),
(60, 'file_folder', 'jfkfkiriwnfjkmskdcsdfasaa'),
(62, 'slides', 'ok'),
(63, 'preloader', '13'),
(64, 'preloader_bg', 'rgba(74,0,94,1)'),
(65, 'preloader_obj', 'rgba(255,255,255,1)'),
(66, 'contact_lat_lang', '(40.7127837, -74.00594130000002)'),
(67, 'google_api_key', ''),
(68, 'physical_product_activation', 'ok'),
(69, 'digital_product_activation', 'ok'),
(70, 'data_all_brands', '41:::Chevrolet;;;;;;40:::Ford;;;;;;39:::Nissan;;;;;;38:::Audi;;;;;;44:::Hyundai;;;;;;45:::BMW;;;;;;46:::Marcedes-Benz;;;;;;47:::Mitsubishi;;;;;;51:::Toyota;;;;;;52:::Honda;;;;;;54:::Volvo;;;;;;50:::Lamborghini;;;;;;55:::Porsche;;;;;;48:::Suzuki;;;;;;56:::Dunlop;;;;;;57:::Yamaha;;;;;;8:::Lucky Brand;;;;;;10:::Victoria''s Secret;;;;;;11:::Dior;;;;;;13:::Priscess Purse;;;;;;14:::En''or;;;;;;15:::Jlo;;;;;;9:::The Crystal Bride;;;;;;22:::Aigner;;;;;;25:::Hudson;;;;;;26:::Omega;;;;;;27:::Breitling;;;;;;30:::Giorgio Armani;;;;;;17:::Polo;;;;;;23:::Adidas;;;;;;24:::Asics;;;;;;33:::Cognac;;;;;;35:::Nike;;;;;;20:::Baume & Mercier;;;;;;21:::Pepe Jeans;;;;;;31:::Castillo;;;;;;37:::Puma;;;;;;18:::Rolex;;;;;;29:::Axe;;;;;;34:::Project Vision;;;;;;63:::Apple;;;;;;6:::Brighton;;;;;;7:::Tanishq;;;;;;16:::The Vested Interest;;;;;;12:::Bucket Feet;;;;;;19:::Elle;;;;;;100:::Gucci;;;;;;101:::eternal love;;;;;;102:::Calvin Klein'),
(71, 'data_all_vendors', '1:::Lavinia Mckee;;;;;;3:::Tom;;;;;;4:::Paprocki;;;;;;5:::Youn');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
`word_id` int(11) NOT NULL,
  `word` longtext NOT NULL,
  `english` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `Bangla` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Spanish` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Arabic` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `French` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Chinese` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`) VALUES
(1, 'visit_home_page', 'Visit Home Page', 'দর্শন হোম পেজে', 'visita la página de inicio', 'الصفحة الرئيسية زيارة', 'visite page d''accueil', '访问主页'),
(2, 'profile', 'Profile', 'প্রোফাইলে', 'perfil', 'الملف الشخصي', 'Profil', '轮廓'),
(3, 'logout', 'Logout', 'প্রস্থান', 'cerrar sesión', 'خروج', 'se déconnecter', '登出'),
(4, 'manage_languages', 'Manage Languages', 'প্রত্যেক পরিচালনা', 'gestionar idiomas', 'إدارة اللغات', 'gérer langues', '管理语言'),
(5, 'add_language', 'Add Language', 'ভাষা যোগ', 'agregue un texto', 'إضافة اللغة', 'ajouter la langue', '添加语言'),
(6, 'successfully_added!', 'Successfully Added!', 'সফলভাবে যোগ করা হয়েছে!', '¡Agregado exitosamente!', 'وأضاف بنجاح!', 'Ajouté avec succès!', '添加成功！'),
(7, 'back_to_language_list', 'Back To Language List', 'ফিরে ভাষা লিস্টে', 'volver a la lista de idiomas', 'العودة إلى القائمة لغة', 'Retour à la liste des langues', '回到语言列表'),
(8, 'really_want_to_delete_this_language?', 'Really Want To Delete This Language?', 'সত্যিই এই ভাষা মুছে ফেলতে চান?', 'Realmente desea eliminar este idioma?', 'حقا تريد حذف هذه اللغة؟', 'voulez vraiment supprimer cette langue?', '真的要删除这个语言呢？'),
(9, 'settings_updated!', 'Settings Updated!', 'সেটিংস আপডেট!', '¡Ajustes actualizan!', 'ضبط تجديد!', 'Paramètres mis à jour!', '设置更新了！'),
(10, 'do_you_really_want_to_delete_this_language?', 'Do You Really Want To Delete This Language?', 'আপনি কি সত্যিই এই ভাষা মুছে দিতে চান?', 'es lo que realmente desea eliminar este idioma?', 'هل حقا تريد حذف هذه اللغة؟', 'voulez-vous vraiment supprimer cette langue?', '你真的要删除这个语言呢？'),
(11, 'saving..', 'Saving..', 'সংরক্ষণ ..', 'ahorro..', 'إنقاذ..', 'économie..', '保存..'),
(12, 'dashboard', 'Dashboard', 'ড্যাশবোর্ড', 'tablero', 'لوحة القيادة', 'tableau de bord', '仪表板'),
(13, 'products', 'Products', 'পণ্য', 'productos', 'المنتجات', 'Produits', '制品'),
(14, 'physical_products', 'Physical Products', 'শারীরিক পণ্য', 'productos físicos', 'المنتجات المادية', 'produits physiques', '实物产品'),
(15, 'category', 'Category', 'বিভাগ', 'categoría', 'فئة', 'Catégorie', '类别'),
(16, 'brands', 'Brands', 'ব্র্যান্ড', 'marcas', 'العلامات التجارية', 'marques', '品牌'),
(17, 'sub-category', 'Sub-category', 'উপ-বিভাগ', 'subcategoría', 'الفئة الفرعية', 'sous-catégorie', '子分类'),
(18, 'all_products', 'All Products', 'সব পণ্য', 'todos los productos', 'جميع المنتجات', 'tous les produits', '所有产品'),
(19, 'product_stock', 'Product Stock', 'পণ্য স্টক', 'stock de productos', 'الأسهم المنتج', 'stocks de produits', '产品库存'),
(20, 'digital_products', 'Digital Products', 'ডিজিটাল পণ্য', 'productos digitales', 'المنتجات الرقمية', 'les produits numériques', '数码产品'),
(21, 'all_digitals', 'All Digitals', 'সব সাংখ্যিক', 'todos los elementos digitales', 'جميع digitals', 'tous les digitals', '所有位数七段'),
(22, 'sale', 'Sale', 'বিক্রয়', 'venta', 'تخفيض السعر', 'vente', '拍卖'),
(23, 'discount_coupon', 'Discount Coupon', 'ডিসকাউন্ট কুপন', 'cupón de descuento', 'كوبون الخصم', 'coupon de réduction', '折扣券'),
(24, 'ticket', 'Ticket', 'টিকিট', 'boleto', 'تذكرة', 'billet', '票'),
(25, 'reports', 'Reports', 'রিপোর্ট', 'informes', 'تقارير', 'rapports', '报告'),
(26, 'product_compare', 'Product Compare', 'পণ্য তুলনা করুন', 'comparar producto', 'مقارنة المنتج', 'produit comparer', '产品比较'),
(27, 'product_wishes', 'Product Wishes', 'পণ্য শুভেচ্ছা', 'deseos de productos', 'رغبات المنتج', 'souhaits de produits', '产品的愿望'),
(28, 'vendors', 'Vendors', 'বিক্রেতারা', 'vendedores', 'الباعة', 'vendeurs', '供应商'),
(29, 'vendor_list', 'Vendor List', 'বিক্রেতা তালিকা', 'lista de proveedores', 'قائمة الموردين', 'liste de fournisseurs', '供应商名单'),
(30, 'vendor_payments', 'Vendor Payments', 'বিক্রেতা পেমেন্ট', 'pagos a proveedores', 'مدفوعات البائعين', 'le paiement des fournisseurs', '供应商付款'),
(31, 'vendor_packages', 'Vendor Packages', 'বিক্রেতা প্যাকেজ', 'paquetes de proveedores', 'حزم بائع', 'forfaits fournisseurs', '供应商封装'),
(32, 'vendor''s_slides', 'Vendor''s Slides', 'বিক্রেতার স্লাইড', 'diapositivas de proveedores', 'الشرائح البائع', 'Les diapositives de fournisseurs', '供应商的幻灯片'),
(33, 'customers', 'Customers', 'গ্রাহকদের', 'clientes', 'الزبائن', 'les clients', '顾客'),
(34, 'messaging', 'Messaging', 'মেসেজিং', 'mensajería', 'الرسائل', 'Messagerie', '消息'),
(35, 'newsletters', 'Newsletters', 'নিউজলেটার', 'boletines de noticias', 'النشرات الإخبارية', 'bulletins', '新闻简报'),
(36, 'contact_messages', 'Contact Messages', 'যোগাযোগের বার্তা', 'mensajes de contacto', 'رسائل الاتصال', 'messages de contact', '联系人的邮件'),
(37, 'blog', 'Blog', 'ব্লগ', 'Blog', 'مدونة', 'Blog', '博客'),
(38, 'blog_categories', 'Blog Categories', 'ব্লগ বিভাগ', 'categorías del blog', 'فئات بلوق', 'catégories de blog', '博客类别'),
(39, 'all_blogs', 'All Blogs', 'সব ব্লগ', 'todos los blogs', 'جميع بلوق', 'tous les blogs', '所有博客'),
(40, 'frontend_settings', 'Frontend Settings', 'ফ্রন্টএন্ড সেটিংস', 'ajustes frontend', 'إعدادات الواجهة', 'paramètres frontend', '前端设置'),
(41, 'slider_settings', 'Slider Settings', 'স্লাইডার সেটিংস', 'configuración del control deslizante', 'ضبط المنزلق', 'paramètres de curseur', '滑块设置'),
(42, 'layer_slider', 'Layer Slider', 'লেয়ার স্লাইডার', 'deslizador capa', 'طبقة المنزلق', 'couche curseur', '层滑块'),
(43, 'top_slides', 'Top Slides', 'শীর্ষ স্লাইড', 'top diapositivas', 'أعلى الشرائح', 'top diapositives', '顶部幻灯片'),
(44, 'display_settings', 'Display Settings', 'প্রদর্শন সেটিং', 'configuración de la pantalla', 'اعدادات العرض', 'paramètres d''affichage', '显示设置'),
(45, 'home_page', 'Home Page', 'হোম পেজে', 'página de inicio', 'الصفحة الرئيسية', 'page d''accueil', '主页'),
(46, 'contact_page', 'Contact Page', 'যোগাযোগের পৃষ্ঠায়', 'pagina de contacto', 'صفحة الاتصال', 'page de contact', '联系方式页面'),
(47, 'footer', 'Footer', 'পেয়াদা', 'pie de página', 'تذييل', 'bas de page', '页脚'),
(48, 'theme_color', 'Theme Color', 'থিম রঙ', 'color del tema', 'اللون موضوع', 'couleur du thème', '主题颜色'),
(49, 'logo', 'Logo', 'লোগো', 'logo', 'شعار', 'logo', '商标'),
(50, 'favicon', 'Favicon', 'ফেভিকন', 'favicon', 'فافيكون', 'favicon', '图标'),
(51, 'fonts', 'Fonts', 'ফন্ট', 'fuentes', 'الخطوط', 'polices', '字体'),
(52, 'preloader', 'Preloader', 'preloader', 'preloader', 'تحميل مسبق', 'preloader', '预载'),
(53, 'site_settings', 'Site Settings', 'সাইট সেটিং', 'configuración del sitio', 'إعدادات الموقع', 'les paramètres du site', '站点设置'),
(54, 'general_settings', 'General Settings', 'সাধারণ সেটিংস', 'Configuración general', 'الاعدادات العامة', 'réglages généraux', '常规设置'),
(55, 'third_party_settings', 'Third Party Settings', 'তৃতীয় পক্ষের সেটিংস', 'ajustes de terceros', 'إعدادات طرف ثالث', 'paramètres de tiers', '第三方设置'),
(56, 'build_responsive_pages', 'Build Responsive Pages', 'প্রতিক্রিয়াশীল পৃষ্ঠাগুলি বিল্ড', 'crear páginas de respuesta', 'بناء صفحات استجابة', 'construire des pages sensibles', '建立反应灵敏的网页'),
(57, 'set_default_images', 'Set Default Images', 'সেট ডিফল্ট ইমেজ', 'imágenes predeterminadas conjunto', 'صور مجموعة افتراضية', 'images ensemble par défaut', '设置默认图像'),
(58, 'business_settings', 'Business Settings', 'ব্যবসা সেটিংস', 'entornos de negocios', 'ضبط رجال الأعمال', 'les milieux d''affaires', '商业环境'),
(59, 'activation', 'Activation', 'সক্রিয়করণ', 'activación', 'تفعيل', 'activation', '激活'),
(60, 'payment_method', 'Payment Method', 'মূল্যপরিশোধ পদ্ধতি', 'método de pago', 'طريقة الدفع او السداد', 'mode de paiement', '付款方法'),
(61, 'currency_', 'Currency ', 'মুদ্রা ', 'moneda ', 'عملة ', 'devise ', '货币 '),
(62, 'faqs', 'Faqs', 'প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী', 'Preguntas frecuentes', 'الأسئلة الأكثر شيوعا', 'faqs', '常见问题解答'),
(63, 'staffs', 'Staffs', 'কর্মীরা', 'personal', 'الموظفين', 'états-majors', '员工'),
(64, 'all_staffs', 'All Staffs', 'সমস্ত লাঠি', 'todos los personales', 'جميع الموظفين', 'tous les états-majors', '全体员工'),
(65, 'staff_permissions', 'Staff Permissions', 'স্টাফ অনুমতি', 'permisos del personal', 'أذونات الموظفين', 'permissions du personnel', '工作人员的权限'),
(66, 'language', 'Language', 'ভাষা', 'idioma', 'لغة', 'la langue', '语言'),
(67, 'manage_admin_profile', 'Manage Admin Profile', 'অ্যাডমিন প্রোফাইল পরিচালনা', 'administrar el perfil de administración', 'إدارة الملف الشخصي ل admin', 'gérer le profil administrateur', '管理管理配置文件'),
(68, 'activate', 'Activate', 'সক্রিয় করা', 'activar', 'تفعيل', 'activer', '启用'),
(69, 'SEO_proggres', 'SEO Proggres', 'এসইও proggres', 'proggres SEO', 'proggres كبار المسئولين الاقتصاديين', 'proggres SEO', 'SEO proggres'),
(70, 'online_tutorial', 'Online Tutorial', 'অনলাইন টিউটোরিয়াল', 'tutorial en línea', 'البرنامج التعليمي على الانترنت', 'tutoriel en ligne', '在线教程'),
(71, 'checkout', 'Checkout', 'চেকআউট', 'revisa', 'الدفع', 'check-out', '查看'),
(72, 'deleted_successfully', 'Deleted Successfully', 'সফলভাবে মোছা', 'borrado exitosamente', 'حذف بنجاح', 'supprimé avec succès', '成功删除'),
(73, 'cancelled', 'Cancelled', 'বাতিল করা হয়েছে', 'cancelado', 'تم الالغاء', 'annulé', '取消'),
(74, 'cancel', 'Cancel', 'বাতিল', 'cancelar', 'إلغاء', 'Annuler', '取消'),
(75, 'required', 'Required', 'প্রয়োজনীয়', 'necesario', 'مطلوب', 'Obligatoire', '需要'),
(76, 'must_be_a_number', 'Must Be A Number', 'অবশ্যই একটি সংখ্যা হবে', 'Tiene que ser un número', 'يجب أن يكون رقما', 'doit être un nombre', '必须是一个数字'),
(77, 'must_be_a_valid_email_address', 'Must Be A Valid Email Address', 'একটি বৈধ ইমেইল ঠিকানা আবশ্যক', 'Debe ser una dirección de correo electrónico válida', 'يجب أن يكون عنوان بريد إلكتروني صالح', 'doit être une adresse e-mail valide', '必须是一个有效的E-mail地址'),
(78, 'save', 'Save', 'রক্ষা', 'salvar', 'حفظ', 'enregistrer', '保存'),
(79, 'product_published!', 'Product Published!', 'পণ্য প্রকাশিত!', 'publicó producto!', 'المنتج نشر!', 'produit publié!', '产品发表！'),
(80, 'product_unpublished!', 'Product Unpublished!', 'পণ্য অপ্রকাশিত!', 'producto inédito!', 'المنتج غير منشورة!', 'produit inédit!', '产品未公布！'),
(81, 'product_featured!', 'Product Featured!', 'পণ্য বৈশিষ্ট্যযুক্ত করা হবে!', 'Producto Show!', 'المنتج المميز!', 'produit vedette!', '产品特色！'),
(82, 'product_unfeatured!', 'Product Unfeatured!', 'পণ্য unfeatured!', 'producto sin rasgos!', 'المنتج unfeatured!', 'produit unfeatured!', '产品unfeatured！'),
(83, 'product_in_todays_deal!', 'Product In Todays Deal!', 'আজকের মধ্যে পণ্য মোকাবেলা!', 'producto en el actual reparto!', 'المنتج في اليوم التعامل!', 'produit aujourd''hui face!', '产品在今天的交易！'),
(84, 'product_removed_from_todays_deal!', 'Product Removed From Todays Deal!', 'পণ্য আজকের ডিল থেকে সরানো!', 'producto retirado de hoy trato!', 'منتج إزالة من صفقة اليوم!', 'produit retiré de la retransmission de ce deal!', '产品从今天的交易中删除！'),
(85, 'slider_published!', 'Slider Published!', 'স্লাইডার প্রকাশিত!', 'deslizador publicada!', 'المنزلق نشرت!', 'curseur publié!', '滑块公布！'),
(86, 'slider_unpublished!', 'Slider Unpublished!', 'স্লাইডার অপ্রকাশিত!', 'deslizador inédita!', 'المنزلق غير منشورة!', 'curseur inédit!', '滑块未公布！'),
(87, 'page_published!', 'Page Published!', 'পৃষ্ঠা প্রকাশিত!', 'página publicada!', 'الصفحة نشرت!', 'page publiée!', '公布的一页！'),
(88, 'page_unpublished!', 'Page Unpublished!', 'পৃষ্ঠা অপ্রকাশিত!', 'página inédita!', 'الصفحة غير منشورة!', 'Page inédite!', '页未公布！'),
(89, 'notification_sound_enabled!', 'Notification Sound Enabled!', 'নোটিফিকেশন সাউন্ড সক্রিয়!', 'sonido de notificación activado!', 'صوت الإعلام تمكين!', 'notification sonore activé!', '通知声音启用！'),
(90, 'notification_sound_disabled!', 'Notification Sound Disabled!', 'নোটিফিকেশন সাউন্ড অক্ষম!', 'sonido de notificación habilitado!', 'صوت الإعلام تعطيل!', 'notification sonore désactivé!', '通知声音禁用！'),
(91, 'google_login_enabled!', 'Google Login Enabled!', 'গুগল লগ-ইন সক্রিয়!', 'Google entrada activado!', 'جوجل تسجيل الدخول تمكين!', 'google connexion activé!', '谷歌登录启用！'),
(92, 'google_login_disabled!', 'Google Login Disabled!', 'গুগল লগইন অক্ষম!', 'Google entrada habilitado!', 'جوجل تسجيل الدخول تعطيل!', 'google connexion désactivé!', '谷歌登录禁用！'),
(93, 'facebook_login_enabled!', 'Facebook Login Enabled!', 'ফেসবুক লগ-ইন সক্রিয়!', 'Facebook login activado!', 'الفيسبوك تسجيل الدخول تمكين!', 'facebook connexion activé!', 'Facebook登录启用！'),
(94, 'facebook_login_disabled!', 'Facebook Login Disabled!', 'ফেসবুক লগইন অক্ষম!', 'Facebook login habilitado!', 'الفيسبوك تسجيل الدخول تعطيل!', 'facebook connexion désactivé!', 'Facebook登录禁用！'),
(95, 'paypal_payment_disabled!', 'Paypal Payment Disabled!', 'পেপ্যাল ​​অক্ষম!', 'el pago de PayPal habilitado!', 'الدفع باي بال تعطيل!', 'paiement paypal désactivé!', '支付宝付款禁用！'),
(96, 'paypal_payment_enabled!', 'Paypal Payment Enabled!', 'পেপাল পেমেন্ট সক্রিয়!', 'el pago de PayPal activado!', 'الدفع باي بال تمكين!', 'le paiement par PayPal activé!', '支付宝付款启用！'),
(97, 'slider_enabled!', 'Slider Enabled!', 'স্লাইডার সক্রিয়!', 'deslizador activado!', 'المنزلق تمكين!', 'curseur activé!', '滑块启用！'),
(98, 'slider_disabled!', 'Slider Disabled!', 'স্লাইডার অক্ষম!', 'deslizador habilitado!', 'المنزلق تعطيل!', 'curseur désactivé!', '滑块禁用！'),
(99, 'cash_payment_enabled!', 'Cash Payment Enabled!', 'নগদ পেমেন্ট সক্রিয়!', 'pago en efectivo activado!', 'الدفع نقدا تمكين!', 'paiement en espèces activé!', '现金支付启用！'),
(100, 'cash_payment_disabled!', 'Cash Payment Disabled!', 'নগদ পেমেন্ট নিষ্ক্রিয়!', 'pago en efectivo habilitado!', 'الدفع نقدا تعطيل!', 'paiement en espèces désactivé!', '现金支付禁用！'),
(101, 'enabled!', 'Enabled!', 'সক্রিয়!', 'habilitado!', 'تمكين!', 'activée!', '启用！'),
(102, 'disabled!', 'Disabled!', 'অক্ষম!', '¡discapacitado!', 'معاق!', 'désactivée!', '禁用！'),
(103, 'notification_email_sent_to_vendor!', 'Notification Email Sent To Vendor!', 'ই-মেইলের বিক্রেতা পাঠানো!', 'correo electrónico de notificación enviado al proveedor!', 'إشعار البريد الإلكتروني أرسلت إلى بائع!', 'courriel de notification envoyé au fournisseur!', '通知电子邮件发送给供应商！'),
(104, 'working...', 'Working...', 'কাজ করছে ...', 'trabajando...', 'العمل ...', 'travailler...', '加工...'),
(105, 'no', 'No', 'না', 'no', 'لا', 'non', '没有'),
(106, 'name', 'Name', 'নাম', 'nombre', 'اسم', 'prénom', '名称'),
(107, 'icon', 'Icon', 'আইকন', 'icono', 'أيقونة', 'icône', '图标'),
(108, 'publish', 'Publish', 'প্রকাশ করা', 'publicar', 'نشر', 'publier', '发布'),
(109, 'options', 'Options', 'অপশন', 'opciones', 'خيارات', 'Options', '选项'),
(110, 'language_enabled', 'Language Enabled', 'ভাষা সক্রিয়', 'idioma habilitado', 'لغة سكريبت', 'langue activée', '语言启用'),
(111, 'language_disabled', 'Language Disabled', 'ভাষা অক্ষম', 'idioma desactivado', 'لغة تعطيل', 'langue désactivé', '禁用语'),
(112, 'edit_language_list', 'Edit Language List', 'সম্পাদনা নতুন ভাষাটি তালিকায় আগে', 'lista de idiomas de edición', 'تحرير القائمة لغة', 'modifier la liste des langues', '编辑语言列表'),
(113, 'successfully_edited!', 'Successfully Edited!', 'সফলভাবে সম্পাদিত!', 'editado correctamente!', 'بنجاح تحريرها!', 'édité avec succès!', '编辑成功！'),
(114, 'set_translations', 'Set Translations', 'সেট অনুবাদের', 'traducciones conjunto', 'تعيين ترجمة', 'traductions set', '译文集'),
(115, 'edit_language', 'Edit Language', 'সম্পাদনা ভাষা', 'editar idioma', 'تحرير لغة', 'modifier la langue', '编辑语言'),
(116, 'edit', 'Edit', 'সম্পাদন করা', 'editar', 'تحرير', 'modifier', '编辑'),
(117, 'delete_language', 'Delete Language', 'ভাষা মুছতে', 'eliminar el lenguaje', 'حذف اللغة', 'supprimer la langue', '删除语言'),
(118, 'select_language', 'Select Language', 'ভাষা নির্বাচন কর', 'seleccione el idioma', 'اختر اللغة', 'Choisir la langue', '选择语言'),
(119, 'word', 'Word', 'শব্দ', 'palabra', 'كلمة', 'mot', '字'),
(120, 'translation', 'Translation', 'অনুবাদ', 'traducción', 'ترجمة', 'Traduction', '翻译'),
(121, 'translate', 'Translate', 'অনুবাদ', 'traducir', 'ترجم', 'Traduire', '翻译'),
(122, 'save_all', 'Save All', 'সব সংরক্ষণ করুন', 'salvar a todos', 'احفظ الكل', 'sauver tous', '保存全部'),
(123, 'saving', 'Saving', 'রক্ষা', 'ahorro', 'إنقاذ', 'économie', '保存'),
(124, 'updated!', 'Updated!', 'আপডেট!', '¡actualizado!', 'تحديث!', 'actualisé!', '更新！'),
(125, 'really_want_to_delete_this_word?', 'Really Want To Delete This Word?', 'সত্যিই এই শব্দ মুছে ফেলতে চান?', 'De verdad quiere eliminar esta palabra?', 'حقا تريد حذف هذه الكلمة؟', 'voulez vraiment supprimer ce mot?', '真的要删除这个词？'),
(126, 'delete', 'Delete', 'মুছে ফেলা', 'borrar', 'حذف', 'effacer', '删除'),
(127, 'home', 'Home', 'বাড়ি', 'casa', 'الصفحة الرئيسية', 'domicile', '家'),
(128, 'subtotal', 'Subtotal', 'উপমোট', 'total parcial', 'حاصل الجمع', 'Sous-Total', '小计'),
(129, 'close', 'Close', 'ঘনিষ্ঠ', 'cerca', 'أغلق', 'Fermer', '关'),
(130, 'faq', 'Faq', 'অনবরত জিজ্ঞাসিত প্রশ্ন', 'Preguntas más frecuentes', 'التعليمات', 'FAQ', '常问问题'),
(131, 'login', 'Login', 'লগইন', 'iniciar sesión', 'تسجيل الدخول', 's''identifier', '登录'),
(132, 'registration', 'Registration', 'নিবন্ধন', 'registro', 'التسجيل', 'enregistrement', '注册'),
(133, 'customer_registration', 'Customer Registration', 'গ্রাহক নিবন্ধন', 'registro de clientes', 'تسجيل العملاء', 'enregistrement des clients', '客户注册'),
(134, 'vendor_registration', 'Vendor Registration', 'বিক্রেতার নিবন্ধন', 'la inscripción de proveedores', 'تسجيل البائعين', 'l''inscription des fournisseurs', '供应商登记'),
(135, 'what_are_you_looking_for', 'What Are You Looking For', 'আপনি কি খুজছেন', 'qué estás buscando', 'عما تبحث', 'que cherchez-vous', '你在找什么'),
(136, 'select', 'Select', 'নির্বাচন করা', 'seleccionar', 'اختار', 'sélectionner', '选择'),
(137, 'all_categories', 'All Categories', 'সব ধরনের', 'todas las categorias', 'جميع الفئات', 'toutes catégories', '所有类别'),
(138, 'product', 'Product', 'পণ্য', 'producto', 'المنتج', 'produit', '产品'),
(139, 'vendor', 'Vendor', 'বিক্রেতা', 'vendedor', 'بائع', 'vendeur', '供应商'),
(140, 'compare', 'Compare', 'তুলনা করা', 'comparar', 'قارن', 'comparer', '比较'),
(141, 'item(s)', 'Item(s)', 'বস্তু (গুলি)', 'artículos)', 'العناصر)', 'articles)', '项目（S）'),
(142, 'homepage', 'Homepage', 'হোমপেজে', 'página principal', 'الصفحة الرئيسية', 'page d''accueil', '主页'),
(143, 'all_sub_categories', 'All Sub Categories', 'সব সাব আরও', 'todas las subcategorías', 'جميع الفئات الفرعية', 'toutes les sous-catégories', '所有子类'),
(144, 'featured_products', 'Featured Products', 'বৈশিষ্ট্যযুক্ত পণ্য', 'Productos Destacados', 'منتجات مميزة', 'produits présentés', '特色产品'),
(145, 'todays_deal', 'Todays Deal', 'আজকের চুক্তি', 'oferta del día de hoy', 'صفقة اليوم', 'la retransmission de ce deal', '今天的交易'),
(146, 'all_brands', 'All Brands', 'সব ব্র্যান্ডের', 'todas las marcas', 'جميع العلامات التجارية', 'toutes les marques', '所有品牌'),
(147, 'all_vendors', 'All Vendors', 'সব বিক্রেতারা', 'todos los proveedores', 'جميع البائعين', 'tous les fournisseurs', '所有厂商'),
(148, 'blogs', 'Blogs', 'ব্লগ', 'blogs', 'بلوق', 'blogs', '博客'),
(149, 'store_locator', 'Store Locator', 'দোকান লোকেটার', 'localizador de tiendas', 'فروعنا', 'localisateur de magasin', '商店定位器'),
(150, 'contact', 'Contact', 'যোগাযোগ', 'contacto', 'اتصال', 'contact', '联系'),
(151, 'more', 'More', 'অধিক', 'Más', 'أكثر', 'plus', '更多'),
(152, 'latest_products', 'Latest Products', 'সাম্প্রতিক পণ্যসমূহ', 'últimos productos', 'آخر المنتجات', 'derniers produits', '最新产品'),
(153, 'more_categories', 'More Categories', 'আরো বিভাগ', 'más categorías', 'المزيد من التصنيفات', 'plus de catégories', '多个类别'),
(154, 'today''s_deal', 'Today''s Deal', 'আজকের চুক্তি', 'La oferta de hoy', 'صفقة اليوم', 'l''offre d''aujourd''hui', '今天的交易'),
(155, 'quick_view', 'Quick View', 'তারাতারি দেখা', 'Vista rápida', 'نظرة سريعة', 'aperçu rapide', '快速浏览'),
(156, 'search', 'Search', 'অনুসন্ধান', 'buscar', 'بحث', 'chercher', '搜索'),
(157, 'latest', 'Latest', 'সর্বশেষ', 'último', 'آخر', 'dernier', '最新'),
(158, 'featured', 'Featured', 'সুগঠনবিশিষ্ট', 'destacado', 'متميز', 'en vedette', '精选'),
(159, 'discount', 'Discount', 'ডিসকাউন্ট', 'descuento', 'خصم', 'remise', '折扣'),
(160, 'add_to_wishlist', 'Add To Wishlist', 'চাহিদাপত্রে যোগ করা', 'añadir a la lista de deseos', 'إضافة إلى سلة', 'ajouter à la liste de souhaits', '加入收藏'),
(161, 'add_to_cart', 'Add To Cart', 'কার্ট যোগ', 'añadir a la cesta', 'أضف إلى السلة', 'ajouter au panier', '添加到购物车'),
(162, 'out_of_stock', 'Out Of Stock', 'স্টক আউট', 'Agotado', 'إنتهى من المخزن', 'rupture de stock', '缺货'),
(163, 'visit', 'Visit', 'দর্শন', 'visitar', 'زيارة', 'visite', '访问'),
(164, 'recently_viewed', 'Recently Viewed', 'সম্প্রতি দেখা', 'visto recientemente', 'شوهدت مؤخرا', 'vu récemment', '最近浏览过的'),
(165, 'most_viewed', 'Most Viewed', 'সর্বাধিক দেখা', 'mas visto', 'الأكثر مشاهدة', 'le plus regardé', '最受关注'),
(166, 'our_available_brands', 'Our Available Brands', 'আমাদের উপলব্ধ ব্রান্ডের', 'nuestras marcas disponibles', 'علاماتنا التجارية المتاحة', 'nos marques disponibles', '我们现有的品牌'),
(167, 'email_address', 'Email Address', 'ই-মেইল ঠিকানা', 'dirección de correo electrónico', 'عنوان البريد الإلكتروني', 'adresse e-mail', '电子邮件地址'),
(168, 'subscribe', 'Subscribe', 'সাবস্ক্রাইব', 'suscribir', 'الاشتراك', 'souscrire', '订阅'),
(169, 'categories', 'Categories', 'বিভাগ', 'categorías', 'الفئات', 'Catégories', '类别'),
(170, 'useful_links', 'Useful Links', 'উপকারী সংজুক', 'Enlaces útiles', 'روابط مفيدة', 'Liens utiles', '有用的链接'),
(171, 'contact_us', 'Contact Us', 'আমাদের সাথে যোগাযোগ করুন', 'Contáctenos', 'اتصل بنا', 'Contactez nous', '联系我们'),
(172, 'address', 'Address', 'ঠিকানা', 'dirección', 'عنوان', 'adresse', '地址'),
(173, 'phone', 'Phone', 'ফোন', 'teléfono', 'هاتف', 'téléphone', '电话'),
(174, 'website', 'Website', 'ওয়েবসাইট', 'sitio web', 'موقع الكتروني', 'site Internet', '网站'),
(175, 'email', 'Email', 'ই-মেইল', 'correo electrónico', 'البريد الإلكتروني', 'email', '电子邮件'),
(176, 'all_rights_reserved', 'All Rights Reserved', 'সর্বস্বত্ব সংরক্ষিত', 'todos los derechos reservados', 'كل الحقوق محفوظة', 'tous les droits sont réservés', '版权所有'),
(177, 'terms_&_condition', 'Terms & Condition', 'বিধি - নিষেধ এবং শর্তাবলী', 'términos y Condiciones', 'الشروط والأحكام', 'termes et conditions', '条款和条件'),
(178, 'privacy_policy', 'Privacy Policy', 'গোপনীয়তা নীতি', 'política de privacidad', 'سياسة الخصوصية', 'politique de confidentialité', '隐私政策'),
(179, 'product_added_to_cart', 'Product Added To Cart', 'পণ্য কার্ট যোগ', 'Producto añadido al carrito', 'وأضاف المنتج إلى سلة التسوق', 'produit ajouté au panier', '产品加入购物车'),
(180, 'added_to_cart', 'Added To Cart', 'কার্ট যোগ', 'Añadido a la cesta', 'إضافة إلى العربة', 'ajouté au panier', '添加到购物车'),
(181, 'product_quantity_exceed_availability!', 'Product Quantity Exceed Availability!', 'পণ্যের পরিমাণ প্রাপ্যতা অতিক্রম!', 'cantidad de producto excede la disponibilidad!', 'كمية المنتج تتجاوز توافر!', 'quantité de produit dépasse la disponibilité!', '产品数量超过供应！'),
(182, 'product_already_added_to_cart!', 'Product Already Added To Cart!', 'পণ্য ইতিমধ্যে কার্ট যোগ করা হয়েছে!', 'producto ya ha añadido a la cesta!', 'وأضاف المنتج بالفعل إلى السلة', 'produit déjà ajouté au panier!', '产品已添加到购物车！'),
(183, 'product_added_to_wishlist', 'Product Added To Wishlist', 'পণ্য লিস্টে যোগ', 'producto que se añade a la lista de deseos', 'وأضاف المنتج إلى سلة', 'Produit ajouté à la liste de souhaits', '产品加入心愿'),
(184, 'wished', 'Wished', 'কাম্য', 'deseado', 'تمنى', 'souhaité', '希望'),
(185, 'wishing..', 'Wishing..', 'তবেই ..', 'deseando..', 'متمنيا ..', 'souhaitant ..', '希望..'),
(186, 'product_removed_from_wishlist', 'Product Removed From Wishlist', 'পণ্যের তালিকা থেকে সরানো', 'producto retirado de la lista de deseos', 'المنتج إزالتها من سلة', 'produit retiré de la liste de souhaits', '从产品的愿望清单中移除'),
(187, 'product_added_to_compared', 'Product Added To Compared', 'পণ্য তুলনা যোগ করা', 'producto que se añade a la comparación', 'وأضاف المنتج مقارنة', 'Produit ajouté au rapport', '产品附加值比较'),
(188, 'compared', 'Compared', 'তুলনা', 'comparado', 'مقارنة', 'par rapport', '相比'),
(189, 'working..', 'Working..', 'কাজ ..', 'trabajando..', 'العمل ..', 'travailler..', '加工..'),
(190, 'product_removed_from_compare', 'Product Removed From Compare', 'পণ্য তুলনা থেকে সরানো', 'producto retirado de comparar', 'منتج إزالة من المقارنة', 'produit retiré de comparer', '从对比产品中删除'),
(191, 'compare_category_full', 'Compare Category Full', 'বিভাগ পূর্ণ তুলনা', 'comparar la categoría completa', 'مقارنة فئة كاملة', 'comparer la catégorie complète', '比较全品类'),
(192, 'product_already_added_to_compare', 'Product Already Added To Compare', 'পণ্য ইতিমধ্যে তুলনা যোগ করা', 'en el producto ya añadió comparar', 'وأضاف المنتج بالفعل للمقارنة', 'produit déjà ajouté à comparer', '产品已添加到比较'),
(193, 'product_rated_successfully', 'Product Rated Successfully', 'পণ্য সফলভাবে রেট', 'producto puntuado', 'المنتج تصنيفا بنجاح', 'produit évalué avec succès', '产品额定成功'),
(194, 'product_rating_failed', 'Product Rating Failed', 'পণ্য রেটিং ব্যর্থ', 'Puntuación producto falló', 'فشل تصنيف المنتج', 'Evaluation du produit a échoué', '产品等级不合格'),
(195, 'you_already_rated_this_product', 'You Already Rated This Product', 'আপনি ইতিমধ্যে এই পণ্য রেট', 'pero ya has puntuado este producto', 'كنت تصنيفا بالفعل هذا المنتج', 'vous avez déjà évalué ce produit', '您已经评价过此产品'),
(196, 'you_already_subscribed', 'You Already Subscribed', 'আপনি ইতিমধ্যে সাবস্ক্রাইব করা', 'ya suscrito', 'كنت قد اشتركت بالفعل', 'vous êtes déjà inscrit', '你已经订阅'),
(197, 'you_subscribed_successfully', 'You Subscribed Successfully', 'আপনি সফলভাবে সাবস্ক্রাইব', 'se ha suscrito con éxito', 'كنت قد اشتركت بنجاح', 'vous avez souscrit avec succès', '你成功订阅'),
(198, 'you_already_subscribed_thrice_from_this_browser', 'You Already Subscribed Thrice From This Browser', 'আপনি ইতিমধ্যে এই ব্রাউজার থেকে তিনবার সাবস্ক্রাইব করা', 'ya suscrito por tres veces de este navegador', 'كنت قد اشتركت بالفعل ثلاث مرات من هذا المتصفح', 'vous êtes déjà inscrit trois fois à partir de ce navigateur', '你已经订阅三次从这个浏览器'),
(199, 'logging_in..', 'Logging In..', 'লগ-ইন ..', 'iniciar sesión..', 'تسجيل الدخول..', 'Se connecter..', '在登录..'),
(200, 'you_logged_in_successfully', 'You Logged In Successfully', 'আপনি সফলভাবে লগ', 'inició la sesión con éxito', 'قمت بتسجيل الدخول بنجاح', 'vous vous êtes connecté avec succès', '你登录成功'),
(201, 'login_failed!_try_again!', 'Login Failed! Try Again!', 'লগইন ব্যর্থ! </font><font>আবার চেষ্টা কর!', '¡error de inicio de sesion! </font><font>¡Inténtalo de nuevo!', 'فشل تسجيل الدخول! </font><font>حاول ثانية!', 'échec de la connexion! </font><font>réessayer!', '登录失败！</font><font>再试一次！'),
(202, 'you_registered_successfully', 'You Registered Successfully', 'আপনি সাফল্যের সাথে নিবন্ধিত', 'se registró con éxito', 'قمت بتسجيل بنجاح', 'vous avez enregistré avec succès', '你注册成功'),
(203, 'registration_failed!_try_again!', 'Registration Failed! Try Again!', 'রেজিস্ট্রেশন ব্যর্থ হয়েছে! </font><font>আবার চেষ্টা কর!', '¡registro fallido! </font><font>¡Inténtalo de nuevo!', 'فشل في التسجيل! </font><font>حاول ثانية!', 'échec de l''enregistrement! </font><font>réessayer!', '注册失败！</font><font>再试一次！'),
(204, 'submitting..', 'Submitting..', 'জমা ..', 'sumisión..', 'تقديم..', 'soumission..', '提交..'),
(205, 'email_sent_successfully', 'Email Sent Successfully', 'ইমেল সফলভাবে পাঠানো', 'correo electrónico enviado con éxito', 'ارسال البريد الالكتروني بنجاح', 'E-mail envoyé avec succès', '电子邮件发送成功'),
(206, 'email_does_not_exist!', 'Email Does Not Exist!', 'ই-মেইল অস্তিত্ব নেই!', 'correo electrónico no existe!', 'البريد الإلكتروني غير موجود!', 'email n''existe pas!', '电子邮件不存在！'),
(207, 'email_sending_failed!_try_again', 'Email Sending Failed! Try Again', 'ই-মেইল পাঠানো ব্যর্থ! </font><font>আবার চেষ্টা কর', 'correo electrónico no ha podido enviar! </font><font>Inténtalo de nuevo', 'إرسال البريد الإلكتروني فشل! </font><font>حاول ثانية', 'email envoi a échoué! </font><font>réessayer', '电子邮件发送失败！</font><font>再试一次'),
(208, 'logging_in', 'Logging In', 'লগ-ইন', 'iniciar sesión', 'تسجيل الدخول', 'Se connecter', '在登录'),
(209, 'adding_to_cart..', 'Adding To Cart..', 'কার্ট যোগ ..', 'añadir a la cesta ..', 'مشيرا إلى السلة ..', 'd''ajouter au panier ..', '添加到购物车..'),
(210, 'product_removed_from_cart', 'Product Removed From Cart', 'পণ্য কার্ট থেকে সরানো', 'producto retirado de la compra', 'المنتج إزالتها من سلة', 'produit retiré du panier', '从产品的购物车中移除'),
(211, 'the_field_is_required', 'The Field Is Required', 'ক্ষেত্র প্রয়োজন বোধ করা হয়', 'El campo es obligatorio', 'مطلوب مجال', 'le champ est obligatoire', '现场要求'),
(212, 'enter_a_valid_email_address', 'Enter A Valid Email Address', 'একটি বৈধ ইমেইল ঠিকানা লিখুন', 'Introduzca una dirección de correo electrónico válida', 'أدخل عنوان بريد إلكتروني صالح', 'Entrez une adresse mail valide', '输入一个有效的电子邮件地址'),
(213, 'applying..', 'Applying..', 'আবেদন ..', 'aplicar ..', 'تطبيق ..', 'application ..', '应用..'),
(214, 'coupon_not_valid', 'Coupon Not Valid', 'কুপন বৈধ নয়', 'cupón no válido', 'القسيمة غير صالحة', 'coupon pas valide', '优惠券无效'),
(215, 'coupon_discount_successful', 'Coupon Discount Successful', 'কুপন ডিসকাউন্ট সফল', 'cupón de descuento con éxito', 'قسيمة خصم ناجحة', 'coupon de réduction réussie', '优惠券折扣成功'),
(216, 'favored', 'Favored', 'বিশেষ সুবিধাপ্রাপ্ত', 'favorecido', 'مفضل', 'favorisé', '青睐'),
(217, 'successful_login', 'Successful Login', 'সফল অনুপ্রবেশ', 'acceso exitoso', 'نجاح تسجيل الدخول', 'Connexion réussie', '登录成功'),
(218, 'login_failed', 'Login Failed', 'লগইন ব্যর্থ', 'error de inicio de sesion', 'فشل تسجيل الدخول', 'échec de la connexion', '登录失败'),
(219, 'sign_in_to_your_account', 'Sign In To Your Account', 'আপনার অ্যাকাউন্টে সাইন ইন করুন', 'Iniciar sesión en su cuenta', 'تسجيل الدخول إلى حسابك', 'Connectez-vous à votre compte', '登录到您的帐户'),
(220, 'password', 'Password', 'পাসওয়ার্ড', 'contraseña', 'كلمه السر', 'mot de passe', '密码'),
(221, 'forget_password', 'Forget Password', 'পাসওয়ার্ড ভুলে গেছেন', 'contraseña olvidada', 'نسيت كلمة', 'mot de passe oublié', '忘记密码'),
(222, 'email_sent_with_new_password!', 'Email Sent With New Password!', 'ই-মেইল নতুন পাসওয়ার্ড দিয়ে ডেকে পাঠিয়েছি!', 'correo electrónico enviado con la nueva contraseña!', 'تم إرسال رسالة إلكترونية مع كلمة مرور جديدة!', 'email envoyé avec le nouveau mot de passe!', '电子邮件与新密码发送！'),
(223, 'forgot_password', 'Forgot Password', 'পাসওয়ার্ড ভুলে গেছেন', 'Se te olvidó tu contraseña', 'هل نسيت كلمة المرور', 'mot de passe oublié', '忘记密码'),
(224, 'sign_in', 'Sign In', 'প্রবেশ কর', 'registrarse', 'تسجيل الدخول', 'se connecter', '签到'),
(225, 'this_field_is_required', 'This Field Is Required', 'ঘরটি অবশ্যই পূরণ করতে হবে', 'este campo es requerido', 'هذه الخانة مطلوبه', 'Ce champ est requis', '这是必填栏'),
(226, 'signing_in...', 'Signing In...', 'সাইন ইন...', 'iniciando sesión...', 'تسجيل الدخول...', 'Connectez-vous...', '登录中...'),
(227, 'new_password_sent_to_your_email', 'New Password Sent To Your Email', 'আপনার ই-মেইল পাঠানো নতুন পাসওয়ার্ড', 'nueva contraseña enviada a su correo electrónico', 'كلمة المرور الجديدة إرسالها إلى البريد الإلكتروني الخاص بك', 'nouveau mot de passe envoyé à votre email', '发送到您的邮箱的新密码'),
(228, 'login_failed!', 'Login Failed!', 'লগইন ব্যর্থ!', '¡error de inicio de sesion!', 'فشل تسجيل الدخول!', 'échec de la connexion!', '登录失败！'),
(229, 'wrong_e-mail_address!_try_again', 'Wrong E-mail Address! Try Again', 'ভুল ই-মেইল ঠিকানা! </font><font>আবার চেষ্টা কর', '¡Dirección de correo errónea! </font><font>Inténtalo de nuevo', 'الخطأ عنوان البريد الإلكتروني! </font><font>حاول ثانية', 'Adresse e-mail mal! </font><font>réessayer', '错误的电子邮件地址！</font><font>再试一次'),
(230, 'login_successful!', 'Login Successful!', 'সফল লগইন!', '¡Inicio de sesión correcto!', 'تم الدخول بنجاح!', 'connexion réussie!', '登陆成功！'),
(231, 'SUCCESS!', 'SUCCESS!', 'সাফল্য!', '¡ÉXITO!', 'نجاح!', 'LE SUCCÈS!', '成功！'),
(232, 'reset_password', 'Reset Password', 'পাসওয়ার্ড রিসেট করুন', 'restablecer la contraseña', 'اعادة تعيين كلمة السر', 'réinitialiser le mot de passe', '重设密码'),
(233, 'account_not_approved._wait_for_approval.', 'Account Not Approved. Wait For Approval.', 'অনুমোদন না অ্যাকাউন্ট. </font><font>অনুমোদনের জন্য অপেক্ষা করুন.', 'cuenta de que no esté aprobado. </font><font>esperar la aprobación.', 'حساب غير معتمدة. </font><font>الانتظار للموافقة عليها.', 'compte pas approuvé. </font><font>attendre l''approbation.', '占未获批准。</font><font>等待批准。'),
(234, '24_hours_stock', '24 Hours Stock', '24 ঘণ্টা স্টক', '24 horas de stock', 'الأسهم 24 ساعة', '24 heures Stock', '24小时股票'),
(235, '24_hours_sale', '24 Hours Sale', '24 ঘণ্টা বিক্রয়', '24 horas venta', '24 ساعة بيع', '24 heures vente', '24小时销售'),
(236, '24_hours_destroy', '24 Hours Destroy', '24 ঘণ্টা ধ্বংস', '24 horas destruyen', '24 ساعة تدمر', '24 heures détruire', '24小时破坏'),
(237, 'total_vendors', 'Total Vendors', 'মোট বিক্রেতারা', 'vendedores totales', 'مجموع الباعة', 'vendeurs au total', '总供应商'),
(238, 'pending_vendors', 'Pending Vendors', 'বিচারাধীন বিক্রেতারা', 'proveedores pendientes', 'الباعة في انتظار', 'fournisseurs en attente', '未决的供应商'),
(239, 'vendor_stattistics', 'Vendor Stattistics', 'বিক্রেতার stattistics', 'stattistics proveedores', 'stattistics بائع', 'stattistics fournisseurs', '供应商stattistics'),
(240, 'category_wise_monthly_stock', 'Category Wise Monthly Stock', 'বিভাগ জ্ঞানী মাসিক স্টক', 'categoría de saldos mensuales sabia', 'فئة الأسهم الشهري الحكمة', 'catégorie encours mensuel sage', '明智类股票每月'),
(241, 'category_wise_monthly_destroy', 'Category Wise Monthly Destroy', 'বিভাগ জ্ঞানী মাসিক ধ্বংস', 'categoría sabia destruir mensual', 'فئة الحكمة تدمير شهريا', 'catégorie sage mensuel détruire', '类别明智每月破坏'),
(242, 'category_wise_monthly_sale', 'Category Wise Monthly Sale', 'বিভাগ জ্ঞানী মাসিক বিক্রয়', 'categoría de venta mensual sabia', 'الفئة بيع الشهري الحكمة', 'catégorie vente mensuelle sage', '类别明智每月销售'),
(243, 'category_wise_monthly_grand_profit', 'Category Wise Monthly Grand Profit', 'বিভাগ জ্ঞানী মাসিক গ্র্যান্ড মুনাফা', 'categoría sabia gran beneficio mensual', 'فئة الحكمة الربح الكبير الشهري', 'catégorie sage mensuel grande profit', '明智类盛大每月利润'),
(244, 'cost', 'Cost', 'মূল্য', 'costo', 'كلفة', 'Coût', '成本'),
(245, 'value', 'Value', 'মূল্য', 'valor', 'القيمة', 'valeur', '值'),
(246, 'loss', 'Loss', 'ক্ষতি', 'pérdida', 'خسارة', 'perte', '失利'),
(247, 'profit', 'Profit', 'মুনাফা', 'lucro', 'ربح', 'le profit', '利润'),
(248, 'manage_categories_(_physical_product_)', 'Manage Categories ( Physical Product )', 'বিভাগ (শারীরিক পণ্য) পরিচালনা', 'administrar las categorías de productos (física)', 'إدارة الفئات (منتج مادي)', 'gérer des catégories (produit physique)', '管理类（产品实物）'),
(249, 'add_category_(_physical_product_)', 'Add Category ( Physical Product )', 'বিভাগ (শারীরিক পণ্য) যোগ', 'Añadir categoría (producto físico)', 'إضافة فئة (منتج مادي)', 'ajouter la catégorie (produit physique)', '添加类别（产品实物）'),
(250, 'create_category', 'Create Category', 'বিভাগ তৈরি', 'crear la categoría', 'إنشاء فئة', 'créer la catégorie', '创建类别'),
(251, 'banner', 'Banner', 'নিশান', 'bandera', 'راية', 'bannière', '旗帜'),
(252, 'edit_category_(_physical_product_)', 'Edit Category ( Physical Product )', 'সম্পাদনা বিভাগ (শারীরিক পণ্য)', 'editar categoría (producto físico)', 'تحرير فئة (منتج مادي)', 'modifier la catégorie (produit physique)', '编辑类（实物产品）'),
(253, 'really_want_to_delete_this?', 'Really Want To Delete This?', 'সত্যিই এই মুছে ফেলতে চান?', 'Realmente desea eliminar este?', 'حقا تريد حذف هذا؟', 'voulez vraiment supprimer ce?', '真的要删除吗？'),
(254, 'category_name', 'Category Name', 'বিভাগ নাম', 'nombre de la categoría', 'اسم الفئة', 'Nom de catégorie', '类别名称'),
(255, 'category_banner', 'Category Banner', 'বিভাগ ব্যানার', 'Categoría bandera', 'فئة راية', 'catégorie bannière', '类别旗帜'),
(256, 'select_category_banner', 'Select Category Banner', 'বিভাগ নির্বাচন করুন ব্যানার', 'seleccione la categoría de la bandera', 'حدد فئة راية', 'sélectionnez la catégorie bannière', '选择类别旗帜'),
(257, 'manage_brands_(_physical_product_)', 'Manage Brands ( Physical Product )', 'ব্রান্ডের (শারীরিক পণ্য) পরিচালনা', 'gestionar marcas de productos (física)', 'إدارة العلامات التجارية (منتج مادي)', 'gérer les marques (produit physique)', '管理品牌（产品实物）'),
(258, 'add_brand_(_physical_product_)', 'Add Brand ( Physical Product )', 'ব্র্যান্ড (শারীরিক পণ্য) যোগ', 'añadir la marca (producto físico)', 'إضافة العلامة التجارية (منتج مادي)', 'ajouter la marque (produit physique)', '加上品牌（产品实物）'),
(259, 'create_brand', 'Create Brand', 'ব্র্যান্ড তৈরি', 'crear la marca', 'إنشاء العلامة التجارية', 'créer la marque', '创造品牌'),
(260, 'edit_brand_(_physical_product_)', 'Edit Brand ( Physical Product )', 'সম্পাদনা ব্র্যান্ড (শারীরিক পণ্য)', 'editar marca (producto físico)', 'تحرير العلامة التجارية (منتج مادي)', 'modifier la marque (produit physique)', '编辑品牌（产品实物）'),
(261, 'brand', 'Brand', 'তরবার', 'marca', 'علامة تجارية', 'marque', '牌'),
(262, 'brand_name', 'Brand Name', 'পরিচিতিমুলক নাম', 'nombre de la marca', 'اسم العلامة التجارية', 'marque', '品牌'),
(263, 'brand_logo', 'Brand Logo', 'ব্র্যান্ড লোগো', 'logotipo', 'شعار العلامة التجارية', 'logo de la marque', '品牌标志'),
(264, 'select_brand_logo', 'Select Brand Logo', 'নির্বাচন ব্র্যান্ড লোগো', 'seleccione logotipo de la marca', 'حدد شعار العلامة التجارية', 'sélectionnez la marque logo', '选择品牌标志'),
(265, 'manage_sub_categories_(_physical_product_)', 'Manage Sub Categories ( Physical Product )', 'সাব আরও পরিচালনা (শারীরিক পণ্য)', 'administrar las categorías sub (producto físico)', 'إدارة الفئات الفرعية (منتج مادي)', 'gérer les sous-catégories (produit physique)', '管理子类别（产品实物）'),
(266, 'add_sub-category_(_physical_product_)', 'Add Sub-category ( Physical Product )', 'উপ-বিভাগ (শারীরিক পণ্য) যোগ', 'añadir sub-categoría (producto físico)', 'إضافة فئة فرعية (منتج مادي)', 'ajouter des sous-catégories (produit physique)', '添加子类（实物产品）');
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`) VALUES
(267, 'create_sub_category', 'Create Sub Category', 'সাব বিভাগ তৈরি', 'crear sub-categoría', 'إنشاء فئة فرعية', 'créer la sous catégorie', '创建子类别'),
(268, 'edit_sub-category_(_physical_product_)', 'Edit Sub-category ( Physical Product )', 'সম্পাদনা উপ-বিভাগ (শারীরিক পণ্য)', 'editar subcategoría (producto físico)', 'تعديل فئة فرعية (منتج مادي)', 'modifier la sous-catégorie (produit physique)', '编辑子类（实物产品）'),
(269, 'sub_category', 'Sub Category', 'সাব বিভাগ', 'subcategoría', 'الفئة الفرعية', 'sous catégorie', '子分类'),
(270, 'sub-category_name', 'Sub-category Name', 'উপ-বিভাগ নাম', 'Nombre de subcategoría', 'اسم الفئة الفرعية', 'nom de sous-catégorie', '子类别名称'),
(271, 'sub-category_banner', 'Sub-category Banner', 'উপ-বিভাগ ব্যানার', 'subcategoría bandera', 'الفئة الفرعية راية', 'sous-catégorie bannière', '子类的旗帜'),
(272, 'select_sub-category_banner', 'Select Sub-category Banner', 'নির্বাচন উপ-বিভাগ ব্যানার', 'seleccionar una subcategoría de la bandera', 'حدد فئة فرعية لافتة', 'sélectionner la sous-catégorie bannière', '选择子类的旗帜'),
(273, 'manage_product_stock', 'Manage Product Stock', 'পণ্য স্টক পরিচালনা', 'gestionar stock de productos', 'إدارة المخزون المنتج', 'gérer des stocks de produits', '管理产品库存'),
(274, 'destroy_product_entry', 'Destroy Product Entry', 'পণ্য এন্ট্রি ধ্বংস', 'destruir entrada de producto', 'تدمير دخول المنتج', 'détruire l''entrée du produit', '销毁产品入境'),
(275, 'add_stock_entry_taken!', 'Add Stock Entry Taken!', 'যোগ স্টক এন্ট্রি নেয়া!', 'añadir la entrada Stock tomada!', 'إضافة إدخال الأوراق المالية اتخذت!', 'ajouter l''entrée en stock pris!', '采取增加股票入门！'),
(276, 'add_product_stock', 'Add Product Stock', 'পণ্য স্টক যোগ', 'añadir el producto Stock', 'إضافة الأسهم المنتج', 'ajouter des stocks de produits', '增加产品库存'),
(277, 'destroy_entry_taken!', 'Destroy Entry Taken!', 'ধ্বংস এন্ট্রি নেয়া!', 'destruir entrada tomada!', 'تدمير دخول اتخذت!', 'détruire l''entrée prise!', '摧毁采取入口！'),
(278, 'create_stock', 'Create Stock', 'স্টক তৈরি', 'crear stock', 'إنشاء الاسهم', 'créer un stock', '创建库存'),
(279, 'ID', 'ID', 'আইডি', 'CARNÉ DE IDENTIDAD', 'هوية شخصية', 'ID', 'ID'),
(280, 'product_title', 'Product Title', 'পণ্য শিরোনাম', 'título del producto', 'عنوان المنتج', 'titre du produit', '产品称号'),
(281, 'entry_type', 'Entry Type', 'এন্ট্রি টাইপ', 'tipo de entrada', 'نوع دخول', 'Type d''entrée', '条目类型'),
(282, 'quantity', 'Quantity', 'পরিমাণ', 'cantidad', 'كمية', 'Quantité', '数量'),
(283, 'note', 'Note', 'বিঃদ্রঃ', 'Nota', 'ملاحظة', 'Remarque', '注意'),
(284, 'reduced_quantity_will_be_added.', 'Reduced Quantity Will Be Added.', 'কমে পরিমাণ যোগ করা হবে.', 'se añadió una cantidad reducida.', 'وستضاف خفض كمية.', 'quantité réduite sera ajoutée.', '减少量将增加。'),
(285, 'added_quantity_will_be_reduced.', 'Added Quantity Will Be Reduced.', 'যোগ পরিমাণ হ্রাস করা হবে.', 'cantidad añadida se reducirá.', 'وسيتم خفض الكمية المضافة.', 'quantité ajoutée sera réduite.', '添加量将减少。'),
(286, 'rate', 'Rate', 'হার', 'tarifa', 'معدل', 'taux', '率'),
(287, 'total', 'Total', 'মোট', 'total', 'مجموع', 'total', '总'),
(288, 'reason_note', 'Reason Note', 'কারণ নোট', 'razón por la nota', 'السبب مذكرة', 'raison Note', '原因笔记'),
(289, 'monetary_loss', 'Monetary Loss', 'আর্থিক ক্ষতি', 'pérdida monetaria', 'فقدان النقدية', 'perte monétaire', '金钱上的损失'),
(290, 'manage_categories_(_digital_product_)', 'Manage Categories ( Digital Product )', 'বিভাগ (ডিজিটাল পণ্য) পরিচালনা', 'administrar las categorías de productos (digital)', 'إدارة الفئات (المنتجات الرقمية)', 'gérer des catégories (produits numériques)', '管理类别（数码产品）'),
(291, 'add_category_(_digital_product_)', 'Add Category ( Digital Product )', 'বিভাগ (ডিজিটাল পণ্য) যোগ', 'Añadir categoría (producto digital)', 'إضافة فئة (المنتج الرقمي)', 'ajouter la catégorie (produit numérique)', '添加类别（数码产品）'),
(292, 'edit_category_(_digital_product_)', 'Edit Category ( Digital Product )', 'সম্পাদনা বিভাগ (ডিজিটাল পণ্য)', 'editar categoría (producto digital)', 'تحرير فئة (المنتج الرقمي)', 'modifier catégorie (produits numériques)', '编辑类别（数码产品）'),
(293, 'manage_sub_categories_(_digital_product_)', 'Manage Sub Categories ( Digital Product )', 'সাব আরও পরিচালনা (ডিজিটাল পণ্য)', 'administrar las categorías sub (producto digital)', 'إدارة الفئات الفرعية (المنتجات الرقمية)', 'gérer les sous-catégories (produits numériques)', '管理子类别（数码产品）'),
(294, 'add_sub-category_(_digital_product_)', 'Add Sub-category ( Digital Product )', 'উপ-বিভাগ (ডিজিটাল পণ্য) যোগ', 'añadir sub-categoría (producto digital)', 'إضافة فئة فرعية (المنتج الرقمي)', 'ajouter des sous-catégories (produits numériques)', '添加子类（数码产品）'),
(295, 'edit_sub-category_(_digital_product_)', 'Edit Sub-category ( Digital Product )', 'সম্পাদনা উপ-বিভাগ (ডিজিটাল পণ্য)', 'editar subcategoría (producto digital)', 'تعديل فئة فرعية (المنتج الرقمي)', 'modifier la sous-catégorie (produit numérique)', '编辑子类（数码产品）'),
(296, 'manage_product_(_digital_)', 'Manage Product ( Digital )', 'পণ্য (ডিজিটাল) পরিচালনা', 'gestionar producto (digital)', 'إدارة المنتجات (رقمي)', 'gérer le produit (numérique)', '管理产品（数码）'),
(297, 'add_product', 'Add Product', 'পণ্য যোগ করুন', 'añadir producto', 'إضافة منتج', 'ajouter le produit', '增加产品'),
(298, 'create_product', 'Create Product', 'পণ্য তৈরি', 'crear productos', 'إنشاء المنتج', 'créer un produit', '创建产品'),
(299, 'back_to_product_list', 'Back To Product List', 'ফিরে পণ্যের তালিকাতে', 'Volver a la lista de productos', 'العودة إلى قائمة المنتجات', 'Retour à la liste des produits', '回到产品列表'),
(300, 'download_failed!', 'Download Failed!', 'ডাউনলোড ব্যর্থ হয়েছে!', '¡Descarga fracasó!', 'التحميل فشل!', 'Échec du téléchargement!', '下载失败！'),
(301, 'image', 'Image', 'ভাবমূর্তি', 'imagen', 'صورة', 'image', '图片'),
(302, 'title', 'Title', 'খেতাব', 'título', 'عنوان', 'Titre', '标题'),
(303, 'view_product', 'View Product', 'দৃশ্য পণ্য', 'Ver el producto', 'المنتج رأي', 'produit Aperçu', '查看产品'),
(304, 'successfully_viewed!', 'Successfully Viewed!', 'সফলভাবে দেখা!', 'éxito vistos!', 'ينظر بنجاح!', 'vu avec succès!', '成功查看！'),
(305, 'view', 'View', 'দৃশ্য', 'ver', 'رأي', 'vue', '视图'),
(306, 'view_discount', 'View Discount', 'দৃশ্য ছাড়', 'Ver descuento', 'خصم عرض', 'vue rabais', '查看优惠'),
(307, 'viewing_discount!', 'Viewing Discount!', 'ছাড় দেখছেন!', 'visualización de descuento!', 'عرض خصم!', 'visualisation de réduction!', '查看优惠！'),
(308, 'download', 'Download', 'ডাউনলোড', 'descargar', 'تحميل', 'Télécharger', '下载'),
(309, 'edit_product_(_digital_product_)', 'Edit Product ( Digital Product )', 'সম্পাদনা পণ্য (ডিজিটাল পণ্য)', 'edición producto (producto digital)', 'تحرير المنتج (المنتجات الرقمية)', 'produit d''édition (produits numériques)', '编辑产品（数码产品）'),
(310, 'manage_sale', 'Manage Sale', 'বিক্রয় ও পরিচালনা', 'gestionar la venta', 'إدارة بيع', 'gérer la vente', '销售管理'),
(311, 'sale_code', 'Sale Code', 'বিক্রয় কোড', 'venta código', 'كود بيع', 'Code de vente', '销售代码'),
(312, 'buyer', 'Buyer', 'ক্রেতা', 'comprador', 'مشتر', 'acheteur', '买方'),
(313, 'date', 'Date', 'তারিখ', 'fecha', 'تاريخ', 'date', '日期'),
(314, 'delivery_status', 'Delivery Status', 'প্রসবের অবস্থা', 'estado de entrega', 'حالة التسليم', 'statut de livraison', '邮寄状态'),
(315, 'payment_status', 'Payment Status', 'লেনদেনের অবস্থা', 'estado de pago', 'حالة السداد', 'statut de paiement', '支付状态'),
(316, 'admin', 'Admin', 'অ্যাডমিন', 'administración', 'مشرف', 'administrateur', '管理员'),
(317, 'full_invoice', 'Full Invoice', 'পূর্ণ চালান', 'factura completa', 'فاتورة كاملة', 'pleine facture', '全额发票'),
(318, 'delivery_payment', 'Delivery Payment', 'ডেলিভারি পেমেন্ট', 'el pago de entrega', 'دفع التسليم', 'paiement à la livraison', '货到付款'),
(319, 'sales', 'Sales', 'বিক্রয়', 'ventas', 'مبيعات', 'Ventes', '销售'),
(320, 'manage_coupons', 'Manage Coupons', 'কুপন পরিচালনা', 'administrar cupones', 'إدارة القسائم', 'gérer des coupons', '管理优惠券'),
(321, 'add_coupon', 'Add Coupon', 'কুপন যোগ', 'añadir cupón', 'إضافة قسيمة', 'ajouter coupon', '添加优惠券'),
(322, 'create_coupon', 'Create Coupon', 'কুপন তৈরি', 'crear cupón', 'إنشاء قسيمة', 'créer coupon', '创建优惠券'),
(323, 'code', 'Code', 'কোড', 'código', 'رمز', 'code', '码'),
(324, 'added_by', 'Added By', 'দ্বারা যোগ করা', 'añadido por', 'أضيفت من قبل', 'ajouté par', '通过添加'),
(325, 'status', 'Status', 'অবস্থা', 'estado', 'الحالة', 'statut', '状态'),
(326, 'coupon', 'Coupon', 'কুপন', 'cupón', 'كوبون', 'coupon', '优惠券'),
(327, 'manage_ticket', 'Manage Ticket', 'টিকেট পরিচালনা', 'gestionar la compra de entradas', 'إدارة تذكرة', 'gérer billet', '管理票'),
(328, 'back_to_ticket_list', 'Back To Ticket List', 'ফিরে টিকেট লিস্টে', 'volver a la lista de entradas', 'العودة إلى قائمة تذكرة', 'Retour à la liste de billets', '回票名单'),
(329, 'from', 'From', 'থেকে', 'de', 'من عند', 'de', '从'),
(330, 'subject', 'Subject', 'বিষয়', 'tema', 'موضوع', 'assujettir', '学科'),
(331, 'view_profile', 'View Profile', 'প্রোফাইল দেখুন', 'ver perfil', 'عرض الصفحة الشخصية', 'Voir le profil', '查看资料'),
(332, 'new', 'New', 'নতুন', 'nuevo', 'جديد', 'Nouveau', '新'),
(333, 'view_contact_ticket', 'View Contact Ticket', 'দৃশ্য যোগাযোগের টিকিট', 'billete de vista de contactos', 'تذكرة رأي اتصال', 'billet vue de contact', '查看联系人票'),
(334, 'view_ticket', 'View Ticket', 'দৃশ্য টিকিট', 'Ver Ticket', 'عرض تذكرة', 'vue billet', '查看门票'),
(335, 'product_sale_comparison', 'Product Sale Comparison', 'পণ্য বিক্রয় তুলনা', 'Comparación de la venta de productos', 'مقارنة بيع المنتج', 'la comparaison des produits de la vente', '产品销售比较'),
(336, 'product_sale_comparison_report', 'Product Sale Comparison Report', 'পণ্য বিক্রয় তুলনা প্রতিবেদন', 'producto informe de comparación venta', 'المنتج بيع التقرير مقارنة', 'vente de produits rapport de comparaison', '产品销售比较报告'),
(337, 'manage_stock_report', 'Manage Stock Report', 'স্টক রিপোর্ট পরিচালনা', 'gestionar informe de existencias', 'تقرير إدارة المخزون', 'gérer rapport sur les stocks', '管理库存报告'),
(338, 'get_stock_report', 'Get Stock Report', 'স্টক রিপোর্ট পেতে', 'obtener informe de existencias', 'الحصول على تقرير المخزون', 'obtenir rapport sur les stocks', '获得股票报告'),
(339, 'product_wishes_report', 'Product Wishes Report', 'পণ্য রিপোর্ট শুভেচ্ছা', 'producto desea informe', 'يرغب المنتج تقرير', 'produit souhaite rapport', '产品希望报告'),
(340, 'manage_vendors', 'Manage Vendors', 'বিক্রেতারা পরিচালনা', 'manejar a los proveedores', 'إدارة البائعين', 'gérer les fournisseurs', '供应商管理'),
(341, 'display_name', 'Display Name', 'প্রদর্শন নাম', 'mostrar nombre', 'اسم العرض', 'Afficher un nom', '显示名称'),
(342, 'vendor_approval', 'Vendor Approval', 'বিক্রেতার অনুমোদন', 'la aprobación del proveedor', 'موافقة البائع', 'l''approbation des fournisseurs', '供应商认可'),
(343, 'approval', 'Approval', 'অনুমোদন', 'aprobación', 'موافقة', 'approbation', '赞同'),
(344, 'pay_vendor', 'Pay Vendor', 'বেতন বিক্রেতা', 'proveedor de pago', 'بائع الأجر', 'salaire fournisseur', '付供应商'),
(345, 'pay', 'Pay', 'বেতন', 'paga', 'دفع', 'Payer', '工资'),
(346, 'e-mail', 'E-mail', 'ই-মেইল', 'e-mail', 'البريد الإلكتروني', 'email', '电子邮件'),
(347, 'manage_vendor_payments', 'Manage Vendor Payments', 'বিক্রেতা পেমেন্ট পরিচালনা', 'gestionar los pagos a proveedores', 'إدارة مدفوعات البائعين', 'gérer les paiements des fournisseurs', '管理供应商付款'),
(348, 'amount', 'Amount', 'পরিমাণ', 'cantidad', 'كمية', 'montant', '量'),
(349, 'upgraded_vendor_package', 'Upgraded Vendor Package', 'আপগ্রেড বিক্রেতা প্যাকেজ', 'paquete de proveedor actualizado', 'حزمة بائع ترقية', 'paquet fournisseur amélioré', '升级包的供应商'),
(350, 'view_payment_details', 'View Payment Details', 'দৃশ্য পেমেন্ট বিবরণ', 'Más información del pago', 'عرض تفاصيل الدفع', 'afficher les détails de paiement', '查看付款细节'),
(351, 'check_details', 'Check Details', 'বিস্তারিত পরীক্ষা', 'comprobar los detalles', 'التحقق من التفاصيل', 'vérifier les détails', '查看详细信息'),
(352, 'membership_payments', 'Membership Payments', 'সদস্যপদ পেমেন্ট', 'pagos de membresía', 'مدفوعات عضوية', 'paiements d''adhésion', '会员费'),
(353, 'upgraded_membership', 'Upgraded Membership', 'আপগ্রেড সদস্য', 'membresía actualizado', 'عضوية ترقية', 'adhésion améliorée', '升级会员'),
(354, 'manage_vendor_package', 'Manage Vendor Package', 'বিক্রেতা প্যাকেজ পরিচালনা', 'gestionar paquete de proveedor', 'إدارة حزمة بائع', 'gérer ensemble des fournisseurs', '管理供应商封装'),
(355, 'add_vendor_package', 'Add Vendor Package', 'বিক্রেতা প্যাকেজ যোগ', 'añadir paquete de proveedor', 'إضافة حزمة بائع', 'ajouter package de fournisseur', '加上厂商包'),
(356, 'create_vendor_package', 'Create Vendor Package', 'বিক্রেতা প্যাকেজ তৈরি', 'crear paquetes de distribuciones', 'إنشاء حزمة بائع', 'créer un paquet de fournisseur', '创建包的供应商'),
(357, 'seal', 'Seal', 'সীল', 'sello', 'ختم', 'joint', '密封'),
(358, 'price', 'Price', 'মূল্য', 'precio', 'السعر', 'prix', '价钱'),
(359, 'for', 'For', 'জন্য', 'para', 'إلى', 'pour', '对于'),
(360, 'lifetime', 'Lifetime', 'জীবনকাল', 'toda la vida', 'أوقات الحياة', 'durée de vie', '一生'),
(361, 'edit_vendor_package', 'Edit Vendor Package', 'সম্পাদনা বিক্রেতা প্যাকেজ', 'editar paquete de proveedor', 'تحرير حزمة بائع', 'package de fournisseur d''édition', '编辑供应商封装'),
(362, 'days', 'Days', 'দিন', 'días', 'أيام', 'journées', '天'),
(363, 'membership', 'Membership', 'সদস্যতা', 'afiliación', 'عضوية', 'adhésion', '籍'),
(364, 'manage_product_(_physical_)', 'Manage Product ( Physical )', 'পণ্য পরিচালনা (শারীরিক)', 'gestionar producto (física)', 'إدارة المنتجات (المادية)', 'gérer le produit (physique)', '管理产品（物理）'),
(365, 'current_quantity', 'Current Quantity', 'বর্তমান পরিমাণ', 'la cantidad actual', 'الكمية الحالية', 'quantité de courant', '当前量'),
(366, 'add_product_quantity', 'Add Product Quantity', 'পণ্যের পরিমাণ যোগ', 'añadir la cantidad de producto', 'إضافة كمية المنتج', 'ajouter la quantité de produit', '增加产品数量'),
(367, 'quantity_added!', 'Quantity Added!', 'পরিমাণ যোগ করা হয়েছে!', 'cantidad añadida!', 'وأضافت الكمية!', 'quantité ajoutée!', '加入量！'),
(368, 'stock', 'Stock', 'স্টক', 'valores', 'مخزون', 'Stock', '股票'),
(369, 'reduce_product_quantity', 'Reduce Product Quantity', 'পণ্যের পরিমাণ কমাতে', 'reducir la cantidad de producto', 'تقليل كمية المنتج', 'réduire la quantité de produit', '减少产品数量'),
(370, 'quantity_reduced!', 'Quantity Reduced!', 'পরিমাণ কমে!', 'reduce la cantidad!', 'كمية خفضت!', 'quantité réduite!', '数量减少！'),
(371, 'destroy', 'Destroy', 'ধ্বংস', 'destruir', 'هدم', 'détruire', '破坏'),
(372, 'edit_product', 'Edit Product', 'সম্পাদনা পণ্য', 'edición del producto', 'تحرير المنتج', 'produit d''édition', '编辑产品'),
(373, 'product_details', 'Product Details', 'পণ্যের বিবরণ', 'detalles del producto', 'تفاصيل المنتج', 'détails du produit', '产品详情'),
(374, 'business_details', 'Business Details', 'ব্যবসার বিবরণ', 'datos de la empresa', 'تفاصيل العمل', 'détails d''affaires', '商家详情'),
(375, 'customer_choice_options', 'Customer Choice Options', 'গ্রাহকের পছন্দ অপশন', 'opciones de elección del cliente', 'خيارات اختيار العملاء', 'options de choix du client', '客户选择的选项'),
(376, 'unit', 'Unit', 'একক', 'unidad', 'وحدة', 'unité', '单元'),
(377, 'unit_(e.g._kg,_pc_etc.)', 'Unit (e.g. Kg, Pc Etc.)', 'ইউনিট (যেমন কেজি, পিসি ইত্যাদি)', 'unidad (por ejemplo, kilogramo, PC, etc.)', 'وحدة (مثلا كجم، وأجهزة الكمبيوتر وغيرها)', 'unité (par exemple kg, pc, etc.)', '单位（例如公斤，PC等）'),
(378, 'tags', 'Tags', 'ট্যাগ', 'etiquetas', 'علامات', 'Mots clés', '标签'),
(379, 'images', 'Images', 'চিত্র', 'imágenes', 'صور', 'images', '图片'),
(380, 'choose_file', 'Choose File', 'ফাইল পছন্দ কর', 'Elija el archivo', 'اختر ملف', 'choisir le fichier', '选择文件'),
(381, 'description', 'Description', 'বিবরণ', 'descripción', 'وصف', 'la description', '描述'),
(382, 'if_you_need_more_field_for_your_product_,_please_click_here_for_more...', 'If You Need More Field For Your Product , Please Click Here For More...', 'যদি আপনি আপনার পণ্যের জন্য আরো ক্ষেত্রের প্রয়োজন, আরো জন্য এখানে ক্লিক করুন ...', 'si necesita más materia para su producto, por favor haga clic aquí para obtener más ...', 'اذا كنت بحاجة الى مزيد من المجال للمنتج الخاص بك، الرجاء الضغط هنا لمزيد من ...', 'si vous avez besoin de plus le terrain pour votre produit, s''il vous plaît cliquez ici pour plus ...', '如果你需要更多的领域为您的产品，请点击这里查看更多...'),
(383, 'add_more_fields', 'Add More Fields', 'আরো ক্ষেত্রের যোগ', 'añadir más campos', 'إضافة المزيد من الحقول', 'ajouter des champs', '添加更多的字段'),
(384, 'sale_price', 'Sale Price', 'বিক্রয় মূল্য', 'precio de venta', 'سعر البيع', 'prix de vente', '销售价格'),
(385, 'purchase_price', 'Purchase Price', 'ক্রয় মূল্য', 'precio de compra', 'سعر الشراء', 'prix d''achat', '购买价格'),
(386, 'shipping_cost', 'Shipping Cost', 'প্রদান খরচ', 'costo de envío', 'تكلفة الشحن', 'frais de port', '运输费'),
(387, 'product_tax', 'Product Tax', 'পণ্যের কর', 'impuesto sobre los productos', 'الضرائب المنتج', 'taxe sur les produits', '产品税'),
(388, 'product_discount', 'Product Discount', 'পণ্য ছাড়', 'descuento de producto', 'خصم المنتج', 'une réduction du produit', '产品折扣'),
(389, 'color', 'Color', 'রঙ', 'color', 'اللون', 'Couleur', '颜色'),
(390, 'add_more_colors', 'Add More Colors', 'আরো রং যোগ', 'añadir más colores', 'إضافة المزيد من الألوان', 'ajouter plus de couleurs', '添加更多的色彩'),
(391, 'if_you_need_more_choice_options_for_customers_of_this_product_,please_click_here.', 'If You Need More Choice Options For Customers Of This Product ,please Click Here.', 'যদি আপনি এই পণ্যের গ্রাহকদের জন্য আরো পছন্দ অপশন প্রয়োজন, এখানে ক্লিক করুন.', 'Si usted necesita más opciones de elección para los clientes de este producto, por favor haga clic aquí.', 'اذا كنت بحاجة الى مزيد من الخيارات المفضلة للعملاء من هذا المنتج، يرجى الضغط هنا.', 'si vous avez besoin plus d''options de choix pour les clients de ce produit, s''il vous plaît cliquez ici.', '如果你需要更多的选择选项本产品的客户，请点击这里。'),
(392, 'add_customer_input_options', 'Add Customer Input Options', 'গ্রাহকের ইনপুট অপশন যোগ', 'añadir opciones de entrada del cliente', 'إضافة خيارات مدخلات العملاء', 'ajouter des options d''entrée du client', '添加客户输入选项'),
(393, 'next', 'Next', 'পরবর্তী', 'siguiente', 'التالى', 'prochain', '下一个'),
(394, 'previous', 'Previous', 'আগে', 'anterior', 'سابق', 'précédent', '以前'),
(395, 'reset', 'Reset', 'রিসেট', 'Reiniciar', 'إعادة تعيين', 'réinitialiser', '重启'),
(396, 'product_has_been_uploaded!', 'Product Has Been Uploaded!', 'পণ্য আপলোড করা হয়েছে!', 'producto se ha subido!', 'وقد تم تحميل المنتج!', 'produit a été téléchargé!', '产品已上传！'),
(397, 'upload', 'Upload', 'আপলোড', 'subir', 'تحميل', 'télécharger', '上载'),
(398, 'field_name', 'Field Name', 'ক্ষেত্র নাম', 'nombre del campo', 'اسم الحقل', 'nom de domaine', '字段名'),
(399, 'customer_input_title', 'Customer Input Title', 'গ্রাহকের ইনপুট শিরোনাম', 'Título de la entrada del cliente', 'عنوان مدخلات العملاء', 'Titre de l''entrée à la clientèle', '客户输入标题'),
(400, 'add_options_for_choice', 'Add Options For Choice', 'পছন্দ জন্য অপশন যোগ', 'añadir opciones para elegir', 'إضافة خيارات للاختيار', 'ajouter des options pour le choix', '增加对选择题的选项'),
(401, 'option_name', 'Option Name', 'বিকল্প নাম', 'nombre de la opción', 'اسم الخيار', 'nom de l''option', '选项名称'),
(402, 'details_of', 'Details Of', 'বিস্তারিত', 'detalles de', 'تفاصيل', 'les détails de', '细节'),
(403, 'tax', 'Tax', 'কর', 'impuesto', 'ضريبة', 'impôt', '税'),
(404, 'tag', 'Tag', 'ট্যাগ', 'etiqueta', 'بطاقة', 'Étiquette', '标签'),
(405, 'colors', 'Colors', 'রং', 'colores', 'الألوان', 'les couleurs', '颜色'),
(406, 'product_color_options', 'Product Color Options', 'পণ্য রঙ অপশন', 'Opciones de color del producto', 'خيارات لون المنتج', 'options de couleur du produit', '产品颜色选项'),
(407, 'add_colors', 'Add Colors', 'রং যোগ', 'añadir colores', 'إضافة الألوان', 'ajouter des couleurs', '添加颜色'),
(408, 'requirements', 'Requirements', 'প্রয়োজনীয়তা', 'requisitos', 'المتطلبات', 'exigences', '要求'),
(409, 'add_logo', 'Add Logo', 'লোগো যোগ', 'añadir el logotipo', 'إضافة شعار', 'ajouter logo', '新增标志'),
(410, 'choose_logo', 'Choose Logo', 'লোগো নির্বাচন', 'elegir el logotipo', 'اختيار شعار', 'choisissez logo', '选择标志'),
(411, 'add_images', 'Add Images', 'ইমেজ যোগ', 'añadir imágenes', 'إضافة الصور', 'ajouter des images', '添加图片'),
(412, 'if_you_need_to_add_video_for_your_product_,_please_click_here...', 'If You Need To Add Video For Your Product , Please Click Here...', 'যদি আপনি আপনার পণ্যের জন্য ভিডিও যোগ করার জন্য প্রয়োজন, এখানে ক্লিক করুন ...', 'Si es necesario agregar video para su producto, por favor haga clic aquí ...', 'إذا كنت بحاجة إلى إضافة الفيديو للمنتج الخاص بك، الرجاء الضغط هنا ...', 'si vous avez besoin d''ajouter de la vidéo pour votre produit, s''il vous plaît cliquez ici ...', '如果您需要添加视频为您的产品，请点击这里...'),
(413, 'add_video', 'Add Video', 'ভিডিও যোগ', 'Añadir video', 'إضافة فيديو', 'ajouter de la vidéo', '添加视频'),
(414, 'upload_video', 'Upload Video', 'আপলোড ভিডিও', 'subir un video', 'رفع فيديو', 'Télécharger une video', '上传视频'),
(415, 'choose_video_file', 'Choose Video File', 'ভিডিও ফাইল প্লে', 'Elija el archivo de vídeo', 'اختيار ملف الفيديو', 'choisir le fichier vidéo', '选择视频文件'),
(416, 'choose_sharing_site', 'Choose Sharing Site', 'শেয়ারিং সাইট চয়ন', 'elegir sitio para compartir', 'اختيار موقع مشاركة', 'choisir le site de partage', '选择分享网站'),
(417, 'choose_one', 'Choose One', 'একটা পছন্দ কর', 'elige uno', 'اختيار واحد', 'choisissez-en un', '选一个'),
(418, 'youtube', 'Youtube', 'ইউটিউব', 'Youtube', 'موقع YouTube', 'Youtube', 'YouTube的'),
(419, 'dailymotion', 'Dailymotion', 'Dailymotion', 'dailymotion', 'ديلي موشن', 'dailymotion', '位DailyMotion'),
(420, 'vimeo', 'Vimeo', 'Vimeo', 'vimeo', 'فيميو', 'vimeo', 'VIMEO'),
(421, 'link', 'Link', 'লিংক', 'enlazar', 'صلة', 'lien', '链接'),
(422, 'product_file', 'Product File', 'পণ্য ফাইল', 'archivo del producto', 'ملف المنتج', 'fiche produit', '产品文件'),
(423, 'compressed', 'Compressed', 'সঙ্কুচিত', 'comprimido', 'مضغوط', 'comprimé', '压缩'),
(424, 'maximum_size', 'Maximum Size', 'সর্বাধিক আকার', 'talla máxima', 'أكبر مقاس', 'taille maximum', '最大尺寸'),
(425, 'if_you_need_to_add_requirements_of_this_product_for_customers_,please_click_here.', 'If You Need To Add Requirements Of This Product For Customers ,please Click Here.', 'যদি আপনি গ্রাহকদের জন্য এই পণ্যের প্রয়োজনীয়তা যোগ করতে হবে, এখানে ক্লিক করুন.', 'Si es necesario agregar requisitos de este producto para los clientes, por favor haga clic aquí.', 'إذا كنت بحاجة إلى إضافة متطلبات هذا المنتج للعملاء، الرجاء الضغط هنا.', 'si vous avez besoin d''ajouter des exigences de ce produit pour les clients, s''il vous plaît cliquez ici.', '如果需要添加本品的要求，为客户，请点击这里。'),
(426, 'add_product_requirements', 'Add Product Requirements', 'পণ্য প্রয়োজনীয়তা যোগ', 'añadir los requisitos del producto', 'إضافة متطلبات المنتج', 'ajouter des exigences de produits', '增加产品的要求'),
(427, 'remove', 'Remove', 'অপসারণ', 'retirar', 'إزالة', 'retirer', '去掉'),
(428, 'video_options', 'Video Options', 'ভিডিও অপশন', 'opciones de video', 'خيارات الفيديو', 'options vidéo', '视频选项'),
(429, 'choose_an_option', 'Choose An Option', 'একটি বিকল্প নির্বাচন করুন', 'Escoge una opción', 'إختر خيار', 'choisis une option', '选择一个选项'),
(430, 'share_link', 'Share Link', 'শেয়ার লিংক', 'compartir enlace', 'رابط المشاركة', 'lien de partage', '分享链接'),
(431, 'i_want_to_add_video_later', 'I Want To Add Video Later', 'আমি পরে ভিডিও যোগ করতে চান', 'Quiero añadir vídeo más tarde', 'أريد أن أضيف فيديو في وقت لاحق', 'je veux ajouter de la vidéo plus tard', '我想在以后添加视频'),
(432, 'update_product_file', 'Update Product File', 'আপডেটের পণ্য ফাইল', 'archivo de actualización del producto', 'ملف تحديث المنتج', 'fiche du produit de mise à jour', '更新产品文件'),
(433, 'i_want_to_change_video_later', 'I Want To Change Video Later', 'আমি পরে ভিডিও পরিবর্তন করতে চান', 'quiero cambiar de vídeo más tarde', 'أريد أن تغيير الفيديو في وقت لاحق', 'je veux changer vidéo plus tard', '我想以后更改视频'),
(434, 'i_want_to_remove_existing_video', 'I Want To Remove Existing Video', 'আমি বিদ্যমান ভিডিওটি সরিয়ে ফেলতে চান', 'Quiero eliminar el vídeo existente', 'أريد أن إزالة الفيديو موجود', 'je veux supprimer la vidéo existante', '我想删除现有的视频'),
(435, 'invoice_for', 'Invoice For', 'জন্য চালান', 'factura para', 'فاتورة', 'facture de', '发票'),
(436, 'invoice_no:', 'Invoice No:', 'চালান নং:', 'factura no:', 'رقم الفاتورة:', 'facturera pas:', '发票号码：'),
(437, 'date_:', 'Date :', 'তারিখ:', 'fecha :', 'تاريخ :', 'date :', '日期：'),
(438, 'client_information', 'Client Information', 'ক্লায়েন্ট তথ্য', 'información del cliente', 'معلومات العميل', 'informations client', '客户信息'),
(439, 'first_name', 'First Name', 'প্রথম নাম', 'nombre de pila', 'الاسم الاول', 'Prénom', '名字'),
(440, 'last_name', 'Last Name', 'নামের শেষাংশ', 'apellido', 'الكنية', 'nom de famille', '姓'),
(441, 'payment_detail', 'Payment Detail', 'পেমেন্ট বিস্তারিত', 'detalles de pago', 'تفاصيل الدفع', 'détail du paiement', '付款明细'),
(442, 'due', 'Due', 'কারণে', 'debido', 'بسبب', 'dû', '应有'),
(443, 'payment_date', 'Payment Date', 'টাকা প্রদানের তারিখ', 'fecha de pago', 'تاريخ الدفع', 'date de paiement', '付款日期'),
(444, 'payment_invoice', 'Payment Invoice', 'পেমেন্ট চালান', 'factura de pago', 'فاتورة الدفع', 'facture de paiement', '付款发票'),
(445, 'item', 'Item', 'পদ', 'ít', 'بند', 'article', '项目'),
(446, 'unit_cost', 'Unit Cost', 'ইউনিট খরচ', 'coste unitario', 'تكلفة الوحدة', 'coût unitaire', '单位成本'),
(447, 'sub_total_amount', 'Sub Total Amount', 'সাব মোট পরিমাণ', 'importe total sub', 'المبلغ الإجمالي الفرعي', 'montant total sous', '子总额'),
(448, 'shipping', 'Shipping', 'পাঠানো', 'Envío', 'الشحن', 'livraison', '运输'),
(449, 'grand_total', 'Grand Total', 'সর্বমোট', 'gran total', 'المبلغ الإجمالي', 'somme finale', '累计'),
(450, 'address_line_1', 'Address Line 1', 'ঠিকানা লাইন 1', 'Dirección Línea 1', 'العنوان الأول', 'Adresse 1', '地址栏1'),
(451, 'address_line_2', 'Address Line 2', 'ঠিকানা লাইন 2', 'línea de dirección 2', 'سطر العنوان 2', 'Adresse Ligne 2', '地址行2'),
(452, 'zipcode', 'Zipcode', 'পিনকোড', 'código postal', 'الرمز البريدي', 'code postal', '邮政编码'),
(453, 'print', 'Print', 'ছাপা', 'impresión', 'طباعة', 'impression', '打印'),
(454, 'marker_location', 'Marker Location', 'মার্কার অবস্থান', 'ubicación del marcador', 'علامة المكان', 'emplacement du marqueur', '标记位置'),
(455, 'city', 'City', 'শহর', 'ciudad', 'مدينة', 'ville', '市'),
(456, 'ZIP', 'ZIP', 'জিপ', 'cremallera', 'ZIP', 'ZIP *: FRANÇAIS', '压缩'),
(457, 'payment_details', 'Payment Details', 'পেমেন্ট বিবরণ', 'payment details', 'بيانات الدفع', 'détails du paiement', NULL),
(458, 'coupon_title', 'Coupon Title', 'কুপন শিরোনাম', 'coupon title', 'عنوان القسيمة', 'Titre de coupon', NULL),
(459, 'valid_till', 'Valid Till', 'পর্যন্ত বৈধ', 'valid till', 'صالح حتى', 'valable jusqu''au', NULL),
(460, 'coupon_discount_on', 'Coupon Discount On', 'কুপন ডিসকাউন্ট', 'coupon discount on', 'قسيمة خصم على', 'coupon de réduction sur les', NULL),
(461, 'coupon_code', 'Coupon Code', 'কুপন কোড', 'coupon code', 'رمز القسيمة', 'code promo', NULL),
(462, 'discount_type', 'Discount Type', 'ছাড় টাইপ', 'discount type', 'نوع الخصم', 'Type de réduction', NULL),
(463, 'discount_value', 'Discount Value', 'ডিসকাউন্ট মূল্য', 'discount value', 'قيمة الخصم', 'valeur de réduction', NULL),
(464, 'user', 'User', 'ব্যবহারকারী', 'user', 'مستخدم', 'utilisateur', NULL),
(465, 'phone_number', 'Phone Number', 'ফোন নম্বর', 'phone number', 'رقم الهاتف', 'numéro de téléphone', NULL),
(466, 'creation_date', 'Creation Date', 'তৈরির তারিখ', 'creation date', 'تاريخ الإنشاء', 'date de création', NULL),
(467, 'ticket_from', 'Ticket From', 'থেকে টিকিট', 'ticket from', 'تذكرة من', 'billet de', NULL),
(468, 'date_&_time', 'Date & Time', 'তারিখ সময়', 'date &amp; time', 'التاريخ والوقت', 'date et heure', NULL),
(469, 'reply_message', 'Reply Message', 'উত্তর বার্তা', 'reply message', 'رسالة الرد', 'message de réponse', NULL),
(470, 'successfully_replied!', 'Successfully Replied!', 'সফলভাবে বললেন!', 'successfully replied!', 'أجاب بنجاح!', 'répondit avec succès!', NULL),
(471, 'reply', 'Reply', 'উত্তর', 'reply', 'الرد', 'répondre', NULL),
(472, 'refresh', 'Refresh', 'সতেজ করা', 'refresh', 'اعادة تنشيط', 'rafraîchir', NULL),
(473, 'company', 'Company', 'কোম্পানির', 'company', 'شركة', 'compagnie', NULL),
(474, 'postpone', 'Postpone', 'মুলতবি করা', 'postpone', 'تأجيل', 'remettre à plus tard', NULL),
(475, 'approve', 'Approve', 'অনুমোদন করা', 'approve', 'وافق', 'approuver', NULL),
(476, 'total_sold', 'Total Sold', 'মোট বিক্রি', 'total sold', 'مجموعه تباع', 'total vendu', NULL),
(477, 'paid_by_customer', 'Paid By Customer', 'গ্রাহকের দ্বারা প্রদান করা', 'paid by customer', 'المدفوع من قبل العميل', 'payé par le client', NULL),
(478, 'paid_to_vendor', 'Paid To Vendor', 'বিক্রেতার দেওয়া', 'paid to vendor', 'تدفع للبائع', 'payé au fournisseur', NULL),
(479, 'by_admin', 'By Admin', 'দ্বারা অ্যাডমিন', 'by admin', 'بواسطة admin', 'by admin', NULL),
(480, 'cash_on_delivery', 'Cash On Delivery', 'প্রদানোত্তর পরিশোধ', 'cash on delivery', 'الدفع عند التسليم', 'paiement à la livraison', NULL),
(481, 'due_to_vendor', 'Due To Vendor', 'বিক্রেতার কারণে', 'due to vendor', 'بسبب بائع', 'en raison de fournisseur', NULL),
(482, 'select_payment_method', 'Select Payment Method', 'নির্বাচন পেমেন্ট পদ্ধতি', 'select payment method', 'اختار طريقة الدفع', 'Sélectionnez le mode de paiement', NULL),
(483, 'your_card_details_verified!', 'Your Card Details Verified!', 'আপনার কার্ডের বিবরণ যাচাই!', 'your card details verified!', 'تفاصيل بطاقتك التحقق منها!', 'vos coordonnées de carte vérifiées!', NULL),
(484, 'pay_with_stripe', 'Pay With Stripe', 'ডোরা দিয়ে দিতে', 'pay with stripe', 'دفع مع شريط', 'payer avec bande', NULL),
(485, 'datetime', 'Datetime', 'তারিখ সময়', 'datetime', 'التاريخ والوقت', 'datetime', NULL),
(486, 'membership_to_upgrade', 'Membership To Upgrade', 'সদস্যপদ আপগ্রেড করার', 'membership to upgrade', 'عضوية لرفع مستوى', 'membres pour mettre à niveau', NULL),
(487, 'method', 'Method', 'পদ্ধতি', 'method', 'طريقة', 'méthode', NULL),
(488, 'details', 'Details', 'বিস্তারিত', 'details', 'تفاصيل', 'détails', NULL),
(489, 'maximum_products', 'Maximum Products', 'সর্বাধিক পণ্য', 'maximum products', 'منتجات القصوى', 'produits maximales', NULL),
(490, 'timespan', 'Timespan', 'timespan', 'timespan', 'الفترة الزمنية', 'timespan', NULL),
(491, 'package_seal', 'Package Seal', 'প্যাকেজ সীল', 'package seal', 'حزمة ختم', 'fermeture de l''emballage', NULL),
(492, 'select_package_seal', 'Select Package Seal', 'নির্বাচন প্যাকেজ সীল', 'select package seal', 'حدد حزمة ختم', 'select joint package', NULL),
(493, 'manage_vendor_slides', 'Manage Vendor Slides', 'বিক্রেতার স্লাইড পরিচালনা', 'manage vendor slides', 'إدارة الشرائح بائع', 'gérer les diapositives des fournisseurs', NULL),
(494, 'button', 'Button', 'বোতাম', 'button', 'زر', 'bouton', NULL),
(495, 'click_to_check_link', 'Click To Check Link', 'লিংক চেক করতে ক্লিক', 'click to check link', 'انقر فوق التحقق من الرابط', 'cliquez pour vérifier le lien', NULL),
(496, 'slides', 'Slides', 'স্লাইড', 'slides', 'الشرائح', 'diapositives', NULL),
(497, 'manage_users', 'Manage Users', 'ব্যবহারকারীদের পরিচালনা', 'manage users', 'ادارة المستخدمين', 'gérer les utilisateurs', NULL),
(498, 'total_purchase', 'Total Purchase', 'মোট ক্রয়', 'total purchase', 'شراء مجموع', 'achat total', NULL),
(499, 'users', 'Users', 'ব্যবহারকারী', 'users', 'المستخدمين', 'utilisateurs', NULL),
(500, 'send_newsletter', 'Send Newsletter', 'নিউজলেটার পাঠাতে', 'send newsletter', 'إرسال الرسائل الإخبارية', 'envoyer la newsletter', NULL),
(501, 'e-mails_(users)', 'E-mails (users)', 'ই-মেইল (ব্যবহারকারী)', 'e-mails (users)', 'رسائل البريد الإلكتروني (المستخدمين)', 'e-mails (utilisateurs)', NULL),
(502, 'e-mails_(subscribers)', 'E-mails (subscribers)', 'ই-মেইল (সদস্য)', 'e-mails (subscribers)', 'رسائل البريد الإلكتروني (مشترك)', 'e-mails (abonnés)', NULL),
(503, 'from_:_email_address', 'From : Email Address', 'থেকে: ই-মেইল ঠিকানা', 'from : email address', 'من: عنوان البريد الإلكتروني', 'à partir de: adresse e-mail', NULL),
(504, 'newsletter_subject', 'Newsletter Subject', 'নিউজলেটার বিষয়', 'newsletter subject', 'النشرة الموضوع', 'bulletin d''information sous réserve', NULL),
(505, 'newsletter_content', 'Newsletter Content', 'নিউজলেটার বিষয়বস্তু', 'newsletter content', 'محتوى النشرة الإخبارية', 'contenu du bulletin', NULL),
(506, 'sending', 'Sending', 'পাঠানোর', 'sending', 'إرسال', 'envoi', NULL),
(507, 'sent!', 'Sent!', 'পাঠানো হয়েছে!', 'sent!', 'أرسلت!', 'envoyé!', NULL),
(508, 'send', 'Send', 'পাঠান', 'send', 'إرسال', 'envoyer', NULL),
(509, 'view_contact_message', 'View Contact Message', 'দৃশ্য যোগাযোগের বার্তা', 'view contact message', 'رسالة رأي اتصال', 'message visite de contact', NULL),
(510, 'view_message', 'View Message', 'দৃশ্য বার্তা', 'view message', 'رسالة رأي', 'vue un message', NULL),
(511, 'message', 'Message', 'বার্তা', 'message', 'الرسالة', 'message', NULL),
(512, 'date_time', 'Date Time', 'তারিখ সময়', 'date time', 'التاريخ والوقت', 'date heure', NULL),
(513, 'message_from', 'Message From', 'থেকে বার্তা', 'message from', 'رسالة من', 'message de', NULL),
(514, 'reply_contact_message', 'Reply Contact Message', 'উত্তর যোগাযোগের বার্তা', 'reply contact message', 'الرد رسالة الاتصال', 'message de réponse de contact', NULL),
(515, 'view_original_message', 'View Original Message', 'মূল বার্তা দেখতে', 'view original message', 'عرض الرسالة الأصلية', 'voir message original', NULL),
(516, 'manage_blog_categories', 'Manage Blog Categories', 'ব্লগ বিভাগ পরিচালনা', 'manage blog categories', 'إدارة الفئات بلوق', 'gérer des catégories de blog', NULL),
(517, 'add_blog_category', 'Add Blog Category', 'ব্লগ বিভাগ যোগ', 'add blog category', 'إضافة فئة بلوق', 'ajouter la catégorie de blog', NULL),
(518, 'create_blog_category', 'Create Blog Category', 'ব্লগ বিভাগ তৈরি', 'create blog category', 'إنشاء فئة بلوق', 'créer la catégorie de blog', NULL),
(519, 'edit_blog_category', 'Edit Blog Category', 'সম্পাদনা ব্লগ বিভাগ', 'edit blog category', 'تحرير الفئة بلوق', 'modifier la catégorie de blog', NULL),
(520, 'blog_category', 'Blog Category', 'ব্লগ বিভাগ', 'blog category', 'الفئة بلوق', 'catégorie de blog', NULL),
(521, 'manage_blog', 'Manage Blog', 'ব্লগ পরিচালনা', 'manage blog', 'إدارة بلوق', 'gérer le blog', NULL),
(522, 'add_blog', 'Add Blog', 'ব্লগটি যুক্ত', 'añadir el blog', 'إضافة بلوق', 'ajouter le blog', NULL),
(523, 'create_blog', 'Create Blog', 'ব্লগ তৈরি', 'crear el blog', 'إنشاء بلوق', 'créer un blog', NULL),
(524, 'back_to_blog_list', 'Back To Blog List', 'ফিরে ব্লগ লিস্টে', 'Volver a la lista de blogs', 'العودة إلى قائمة بلوق', 'Retour à la liste des blogs', NULL),
(525, 'edit_blog', 'Edit Blog', 'সম্পাদনা ব্লগ', 'editar el blog', 'تحرير بلوق', 'modifier le blog', NULL),
(526, 'blog_title', 'Blog Title', 'ব্লগ শিরোনাম', 'Titulo de Blog', 'عنوان المدونة', 'Titre du Blog', NULL),
(527, 'summery', 'Summery', 'গ্রীষ্মের বৈশিষ্ট্যপূর্ণ', 'veraniego', 'صيفي', 'd''été', NULL),
(528, 'author', 'Author', 'লেখক', 'autor', 'مؤلف', 'auteur', NULL),
(529, 'manage_layer_slider', 'Manage Layer Slider', 'লেয়ার স্লাইডার পরিচালনা', 'gestionar deslizador capa', 'إدارة طبقة المنزلق', 'gérer la couche curseur', NULL),
(530, 'create_slider', 'Create Slider', 'স্লাইডার তৈরি', 'crear deslizador', 'إنشاء المنزلق', 'créer curseur', NULL),
(531, 'slider_list', 'Slider List', 'স্লাইডার তালিকা', 'lista deslizador', 'قائمة المنزلق', 'liste de curseur', NULL),
(532, 'slider_serial', 'Slider Serial', 'স্লাইডার সিরিয়াল', 'serie deslizador', 'المنزلق المسلسل', 'curseur série', NULL),
(533, 'successfully_serialized!', 'Successfully Serialized!', 'সফলভাবে ধারাবাহিকভাবে!', 'serializado correctamente!', 'تسلسل بنجاح!', 'sérialisé avec succès!', NULL),
(534, 'slider_serial_saved!', 'Slider Serial Saved!', 'স্লাইডার সিরিয়াল সংরক্ষিত!', 'deslizador serie grabada!', 'المنزلق مسلسل حفظ!', 'Curseur série sauvé!', NULL),
(535, 'choose_your_slider_style', 'Choose Your Slider Style', 'আপনার স্লাইডার শৈলী চয়ন', 'elija su estilo slider', 'اختيار نمط التمرير الخاص بك', 'choisissez votre style de curseur', NULL),
(536, 'play', 'Play', 'খেলা', 'jugar', 'لعب', 'jouer', NULL),
(537, 'choose', 'Choose', 'পছন্দ', 'escoger', 'اختار', 'choisir', NULL),
(538, 'enter_preview', 'Enter Preview', 'প্রিভিউ প্রবেশ', 'introducir previsualización', 'دخول المعاينة', 'entrer aperçu', NULL),
(539, 'creating_slider..', 'Creating Slider..', 'স্লাইডার তৈরি ..', 'la creación de corredera ..', 'خلق المنزلق ..', 'création curseur ..', NULL),
(540, 'slider_added!', 'Slider Added!', 'স্লাইডার যোগ করা হয়েছে!', 'deslizador añadió!', 'وأضاف المنزلق!', 'Curseur ajouté!', NULL),
(541, 'select_background_image', 'Select Background Image', 'নির্বাচন ব্যাকগ্রাউন্ড ইমেজ', 'seleccione la imagen de fondo', 'صورة خلفية مختارة', 'sélectionner l''image d''arrière-plan', NULL),
(542, 'select_image', 'Select Image', 'নির্বাচন ইমেজ', 'seleccionar imagen', 'اختر صورة', 'sélectionner l''image', NULL),
(543, 'font-color', 'Font-color', 'ফন্টের রং', 'color de fuente', 'لون الخط', 'couleur de la police', NULL),
(544, 'background_color', 'Background Color', 'পেছনের রং', 'color de fondo', 'لون الخلفية', 'Couleur de fond', NULL),
(545, 'manage_top_carousal_slides', 'Manage Top Carousal Slides', 'শীর্ষ মদ্যপানোৎসব স্লাইড পরিচালনা', 'gestionar los mejores diapositivas carousal', 'إدارة أعلى الشرائح إحتفال صاخب مخمور', 'gérer les diapositives de Carrousel top', NULL),
(546, 'add_slides', 'Add Slides', 'স্লাইড যোগ', 'añadir diapositivas', 'إضافة شرائح', 'ajouter des diapositives', NULL),
(547, 'create_slides', 'Create Slides', 'স্লাইড তৈরি', 'crear diapositivas', 'إنشاء الشرائح', 'créer des diapositives', NULL),
(548, 'edit_slides', 'Edit Slides', 'স্লাইড সম্পাদন', 'editar diapositivas', 'تحرير الشرائح', 'diapositives modifier', NULL),
(549, 'slide_banner', 'Slide Banner', 'স্লাইড ব্যানার', 'bandera de diapositivas', 'راية الشرائح', 'slide bannière', NULL),
(550, 'select_slide_banner', 'Select Slide Banner', 'নির্বাচন স্লাইড ব্যানার', 'seleccione la bandera de diapositivas', 'حدد راية الشرائح', 'select slide bannière', NULL),
(551, 'button_color:', 'Button Color:', 'বোতাম রঙ:', 'botón de color:', 'زر اللون:', 'bouton couleur:', NULL);
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`) VALUES
(552, 'button_text_color:', 'Button Text Color:', 'বোতাম টেক্সট রঙ:', 'botón Color del texto:', 'زر لون النص:', 'bouton couleur du texte:', NULL),
(553, 'button_text', 'Button Text', 'বোতাম টেক্সট', 'botón de texto', 'زر كتابة', 'bouton de texte', NULL),
(554, 'button_link', 'Button Link', 'বোতাম লিংক', 'botón de enlace', 'رابط زر', 'lien de bouton', NULL),
(555, 'slides_logo', 'Slides Logo', 'স্লাইড লোগো', 'logotipo de diapositivas', 'الشرائح شعار', 'diapositives logo', NULL),
(556, 'choose_home_page_style', 'Choose Home Page Style', 'চয়ন হোম পৃষ্ঠা শৈলী', 'elija el estilo página de inicio', 'اختيار نمط الصفحة الرئيسية', 'choisissez la page d''accueil de style', NULL),
(557, 'updating..', 'Updating..', 'হালনাগাদ করা ..', 'actualización ..', 'تحديث ..', 'mise à jour ..', NULL),
(558, 'home_page_updated!', 'Home Page Updated!', 'হোম পেজে আপডেট!', 'página de inicio actualizada!', 'الصفحة الرئيسية تجديد!', 'page d''accueil mise à jour!', NULL),
(559, 'update_home_page', 'Update Home Page', 'আপডেটের হোম পেজে', 'actualización de la página de inicio', 'تحديث الصفحة الرئيسية', 'mise à jour la page d''accueil', NULL),
(560, 'change_home_page_items', 'Change Home Page Items', 'পরিবর্তন হোম পেজে আইটেম', 'artículos cambiar la página principal', 'البنود تغيير الصفحة الرئيسية', 'changement page d''accueil articles', NULL),
(561, 'really_want_to_delete_this_logo?', 'Really Want To Delete This Logo?', 'সত্যিই এই লোগো মুছে ফেলতে চান?', 'Realmente desea eliminar este logotipo?', 'حقا تريد حذف هذا الشعار؟', 'voulez vraiment supprimer ce logo?', NULL),
(562, 'top_slider', 'Top Slider', 'শীর্ষ স্লাইডার', 'top slider', 'كبار المنزلق', 'top slider', NULL),
(563, 'home_banners', 'Home Banners', 'হোম ব্যানার', 'banderas de casas', 'لافتات المنزل', 'bannières à domicile', NULL),
(564, 'search_section', 'Search Section', 'অনুসন্ধান অধ্যায়', 'sección de búsqueda', 'قسم البحث', 'section de recherche', NULL),
(565, 'category_wise_products', 'Category Wise Products', 'বিভাগ বিজ্ঞ পণ্য', 'productos de la categoría sabios', 'فئة المنتجات الحكيمة', 'catégorie produits sages', NULL),
(566, 'special_products', 'Special Products', 'বিশেষ পণ্য', 'productos especiales', 'منتجات خاصة', 'produits spéciaux', NULL),
(567, 'top_carousel_slider', 'Top Carousel Slider', 'শীর্ষ ক্যারোসেলে স্লাইডার', 'deslizador superior carrusel', 'كبار المنزلق دائري', 'top carrousel curseur', NULL),
(568, 'choose_categories_(max_10)', 'Choose Categories (max 10)', 'চয়ন বিভাগ (সর্বোচ্চ 10)', 'elegir categorías (máximo 10)', 'اختيار الفئات (حد أقصى 10)', 'choisir les catégories (max 10)', NULL),
(569, 'number_of_todays_deal_(_to_show_)', 'Number Of Todays Deal ( To Show )', 'আজকের চুক্তি সংখ্যা (দেখানোর জন্য)', 'número de hoy oferta (para mostrar)', 'عدد من صفقة اليوم (إظهار)', 'nombre de retransmission de ce deal (montrer)', NULL),
(570, 'updating', 'Updating', 'হালনাগাদ করা', 'actualización', 'تحديث', 'réactualisation', NULL),
(571, 'category_menu_updated!', 'Category Menu Updated!', 'বিভাগ মেনু আপডেট!', 'menú de categorías actualizado!', 'القائمة فئة تجديد!', 'menu de la catégorie mise à jour!', NULL),
(572, 'update', 'Update', 'হালনাগাদ', 'actualizar', 'تحديث', 'mettre à jour', NULL),
(573, 'after_slider', 'After Slider', 'স্লাইডার পর', 'después de deslizador', 'بعد المنزلق', 'après curseur', NULL),
(574, 'select_banner_image', 'Select Banner Image', 'নির্বাচন ব্যানার ইমেজ', 'Seleccionar imagen de la bandera', 'اختر صورة لافتة', 'sélectionner l''image de la bannière', NULL),
(575, 'banner_updated!', 'Banner Updated!', 'ব্যানার আপডেট!', 'bandera actualiza!', 'راية تحديث!', 'banner mis à jour!', NULL),
(576, 'parallax_title_for_search', 'Parallax Title For Search', 'অনুসন্ধানের জন্য লম্বন শিরোনাম', 'Título de paralaje para la búsqueda', 'عنوان المنظر للبحث', 'Titre de la parallaxe pour la recherche', NULL),
(577, 'parallax_image_for_search_section', 'Parallax Image For Search Section', 'অনুসন্ধান বিভাগের জন্য লম্বন ইমেজ', 'imagen de paralaje para la sección de búsqueda', 'صورة المنظر لقسم البحث', 'l''image de parallaxe pour la section de recherche', NULL),
(578, 'search_section_updated!', 'Search Section Updated!', 'অনুসন্ধান অধ্যায় আপডেট!', 'sección de búsqueda actualizada!', 'قسم البحث تحديث!', 'section de recherche mis à jour!', NULL),
(579, 'featured_products_(_show_/_hide_)', 'Featured Products ( Show / Hide )', 'বৈশিষ্ট্যযুক্ত পণ্য (প্রদর্শন করুন / আড়াল)', 'productos destacados (mostrar / ocultar)', 'منتجات مميزة (عرض / إخفاء)', 'produits phares (show / hide)', NULL),
(580, 'number_of_products_(_to_show_)', 'Number Of Products ( To Show )', 'পণ্য সংখ্যা (দেখানোর জন্য)', 'número de productos (para mostrar)', 'عدد من المنتجات (لاظهار)', 'nombre de produits (pour montrer)', NULL),
(581, 'choose_product_box_style', 'Choose Product Box Style', 'পণ্য বক্স শৈলী চয়ন', 'elija el estilo caja del producto', 'اختيار المنتج نمط مربع', 'choisissez le style boîte produit', NULL),
(582, 'featured_section_updated!', 'Featured Section Updated!', 'বৈশিষ্ট্যযুক্ত অধ্যায় আপডেট!', 'sección contenidos actualiza!', 'القسم المميز تحديث!', 'section sélectionnée mis à jour!', NULL),
(583, 'vandor_(_show_/_hide_)', 'Vandor ( Show / Hide )', 'vandor (প্রদর্শন করুন / আড়াল)', 'Vandor (mostrar / ocultar)', 'فاندور (عرض / إخفاء)', 'vandor (afficher / masquer)', NULL),
(584, 'parallax_title_for_vendors', 'Parallax Title For Vendors', 'বিক্রেতাদের জন্য লম্বন শিরোনাম', 'Título de paralaje para los vendedores', 'عنوان المنظر للبائعين', 'Titre de la parallaxe pour les vendeurs', NULL),
(585, 'parallax_image_for_vendors', 'Parallax Image For Vendors', 'বিক্রেতাদের জন্য লম্বন ইমেজ', 'imagen de paralaje para los vendedores', 'صورة المنظر للبائعين', 'l''image de parallaxe pour les vendeurs', NULL),
(586, 'number_of_vendor_(_to_show_)', 'Number Of Vendor ( To Show )', 'বিক্রেতার সংখ্যা (দেখানোর জন্য)', 'número de proveedor (para mostrar)', 'عدد من بائع (لاظهار)', 'nombre de fournisseurs (pour montrer)', NULL),
(587, 'vendor_section_updated!', 'Vendor Section Updated!', 'বিক্রেতার অধ্যায় আপডেট!', 'proveedor actualiza la sección!', 'قسم بائع تحديث!', 'section de fournisseur mis à jour!', NULL),
(588, 'sub-categories_(promotional)', 'Sub-categories (promotional)', 'উপ-বিভাগ (প্রচারমূলক)', 'subcategorías (de promoción)', 'فئات فرعية (الترويجية)', 'sous-catégories (promotion)', NULL),
(589, 'color_preference_:', 'Color Preference :', 'রঙ পছন্দ:', 'preferencia de color:', 'تفضيل اللون:', 'de préférence de couleur:', NULL),
(590, 'title_color:', 'Title Color:', 'শিরোনাম রঙ:', 'color del título:', 'عنوان اللون:', 'Titre de la couleur:', NULL),
(591, 'add_new', 'Add New', 'নতুন যোগ', 'añadir nuevo', 'اضف جديد', 'ajouter de nouvelles', NULL),
(592, 'home_categories_updated!', 'Home Categories Updated!', 'বাড়িতে আরও আপডেট!', 'Categorías Inicio actualizadas!', 'فئات الوطن تجديد!', 'catégories de maison mis à jour!', NULL),
(593, 'blog_(_show_/_hide_)', 'Blog ( Show / Hide )', 'ব্লগ (প্রদর্শন করুন / আড়াল)', 'el blog (mostrar / ocultar)', 'بلوق (عرض / إخفاء)', 'Blog (show / hide)', NULL),
(594, 'parallax_title_for_blog', 'Parallax Title For Blog', 'ব্লগের জন্য লম্বন শিরোনাম', 'Título de paralaje para el blog', 'عنوان المنظر لبلوق', 'titre parallaxe pour blogue', NULL),
(595, 'parallax_image_for_blog', 'Parallax Image For Blog', 'ব্লগের জন্য লম্বন ইমেজ', 'imagen de paralaje para el blog', 'صورة المنظر لبلوق', 'l''image de parallaxe pour blogue', NULL),
(596, 'number_of_latest_blog_(_to_show_)', 'Number Of Latest Blog ( To Show )', 'সর্বশেষ ব্লগ সংখ্যা (দেখানোর জন্য)', 'número de último blog (para mostrar)', 'عدد آخر بلوق (لاظهار)', 'nombre de dernier blog (montrer)', NULL),
(597, 'blog_section_updated!', 'Blog Section Updated!', 'ব্লগ অধ্যায় আপডেট!', 'sección del blog actualizado!', 'قسم بلوق تحديث!', 'section blog mis à jour!', NULL),
(598, 'special_products_(_show_/_hide_)', 'Special Products ( Show / Hide )', 'বিশেষ পণ্য (প্রদর্শন করুন / আড়াল)', 'productos especiales (mostrar / ocultar)', 'منتجات خاصة (إظهار / إخفاء)', 'produits spéciaux (afficher / masquer)', NULL),
(599, 'brand_(_show_/_hide_)', 'Brand ( Show / Hide )', 'ব্র্যান্ড (প্রদর্শন করুন / আড়াল)', 'marca (mostrar / ocultar)', 'العلامة التجارية (عرض / إخفاء)', 'marque (show / hide)', NULL),
(600, 'number_of_brand_(_to_show_)', 'Number Of Brand ( To Show )', 'ব্র্যান্ড সংখ্যা (দেখানোর জন্য)', 'Número de marca (para mostrar)', 'عدد من العلامة التجارية (لاظهار)', 'nombre de marque (montrer)', NULL),
(601, 'brand_section_updated!', 'Brand Section Updated!', 'ব্র্যান্ড অধ্যায় আপডেট!', 'sección de la marca actualizada!', 'قسم العلامة التجارية تحديثها!', 'section de la marque mis à jour!', NULL),
(602, 'banner_published!', 'Banner Published!', 'ব্যানার প্রকাশিত!', 'bandera publicado!', 'راية نشرت!', 'bannière publié!', NULL),
(603, 'banner_unpublished!', 'Banner Unpublished!', 'ব্যানার অপ্রকাশিত!', 'bandera inédita!', 'راية لم تنشر!', 'bannière inédite!', NULL),
(604, 'section_published!', 'Section Published!', 'অধ্যায় প্রকাশিত!', 'publicada sección!', 'القسم نشرت!', 'section publié!', NULL),
(605, 'section_unpublished!', 'Section Unpublished!', 'অধ্যায় অপ্রকাশিত!', 'sección inédita!', 'قسم غير منشورة!', 'section inédite!', NULL),
(606, 'category_wise_banners', 'Category Wise Banners', 'বিভাগ জ্ঞানী ব্যানার', 'categoría banderas sabios', 'فئة افتات الحكيمة', 'catégorie bannières sages', NULL),
(607, 'title_for_vendor_section', 'Title For Vendor Section', 'বিক্রেতার বিভাগের জন্য শিরোনাম', 'título para la sección de proveedores', 'عنوان الباب بائع', 'titre pour la section de fournisseur', NULL),
(608, 'contact_address', 'Contact Address', 'যোগাযোগের ঠিকানা', 'dirección de contacto', 'عنوان الإتصال', 'Adresse de contact', NULL),
(609, 'contact_phone', 'Contact Phone', 'ফোনে যোগাযোগ', 'teléfono de contacto', 'رقم الهاتف', 'Numéro du contact', NULL),
(610, 'contact_email', 'Contact Email', 'যোগাযোগের ই - মেইল', 'Email de contacto', 'تواصل بالبريد الاكتروني', 'Email du contact', NULL),
(611, 'contact_website', 'Contact Website', 'যোগাযোগের ওয়েবসাইট', 'sitio web contactar', 'اتصال الانترنت', 'site de contact', NULL),
(612, 'contact_about', 'Contact About', 'সম্পর্কে যোগাযোগ', 'contactar con respecto', 'الاتصال حول', 'contacter à propos de', NULL),
(613, 'footer_settings', 'Footer Settings', 'পাদচরণ সেটিংস', 'configuración pie de página', 'إعدادات تذييل', 'paramètres de bas de page', NULL),
(614, 'footer_category', 'Footer Category', 'পাদচরণ বিভাগ', 'categoría de pie de página', 'فئة تذييل', 'catégorie footer', NULL),
(615, 'footer_text', 'Footer Text', 'পাদচরণ', 'texto de pie de página', 'نص تذييل', 'texte de pied de page', NULL),
(616, 'choose_theme', 'Choose Theme', 'থিম নির্বাচন', 'escoge un tema', 'اختيار موضوع', 'choisissez le thème', NULL),
(617, 'theme_updated!', 'Theme Updated!', 'থিম আপডেট!', 'tema actualizado!', 'موضوع تحديث!', 'thème mis à jour!', NULL),
(618, 'upload_logo', 'Upload Logo', 'আপলোড লোগো', 'logo Subir', 'تحميل شعار', 'télécharger logo', NULL),
(619, 'select_logo', 'Select Logo', 'নির্বাচন লোগো', 'Selección logo', 'حدد شعار', 'sélectionnez logo', NULL),
(620, 'all_logos', 'All Logos', 'সমস্ত লোগো', 'todos los logotipos', 'كل الشعارات', 'tous les logos', NULL),
(621, 'place', 'Place', 'জায়গা', 'lugar', 'مكان', 'endroit', NULL),
(622, 'admin_logo', 'Admin Logo', 'অ্যাডমিন লোগো', 'logotipo de administración', 'شعار المشرف', 'administrateur logo', NULL),
(623, 'successfully_selected!', 'Successfully Selected!', 'সফলভাবে নির্বাচিত!', 'seleccionado correctamente!', 'اختيار بنجاح!', 'choisi avec succès!', NULL),
(624, 'change', 'Change', 'পরিবর্তন', 'cambio', 'تغيير', 'changement', NULL),
(625, 'homepage_header_logo', 'Homepage Header Logo', 'হোমপেজে হেডার লোগো', 'logotipo de cabecera página de inicio', 'الصفحة الرئيسية شعار رأس', 'page d''accueil logo header', NULL),
(626, 'homepage_footer_logo', 'Homepage Footer Logo', 'হোমপেজে ফুটার লোগো', 'Logotipo de pie de página página de inicio', 'الصفحة الرئيسية شعار تذييل', 'page d''accueil logo footer', NULL),
(627, 'successfully_logo_uploaded', 'Successfully Logo Uploaded', 'সফলভাবে আপলোড লোগো', 'logo subido con éxito', 'بنجاح شعار تحميلها', 'avec succès logo téléchargé', NULL),
(628, 'select_favicon', 'Select Favicon', 'নির্বাচন ফেভিকন', 'seleccione favicon', 'حدد فافيكون', 'sélectionnez favicon', NULL),
(629, 'favicon_updated!', 'Favicon Updated!', 'ফেভিকন আপডেট!', 'favicon actualiza!', 'فافيكون تحديث!', 'favicon mis à jour!', NULL),
(630, 'choose_font', 'Choose Font', 'ফন্ট পছন্দ', 'elegir la fuente', 'اختيار الخط', 'choisissez la police', NULL),
(631, 'font_updated!', 'Font Updated!', 'ফন্ট আপডেট!', 'fuente actualizada!', 'الخط تحديث!', 'police mis à jour!', NULL),
(632, 'preloaders', 'Preloaders', 'preloaders', 'precargadores', 'preloaders', 'preloaders', NULL),
(633, 'preloader_color', 'Preloader Color', 'preloader রঙ', 'el color preloader', 'اللون تحميل مسبق', 'couleur de préchargement', NULL),
(634, 'preloader_background', 'Preloader Background', 'preloader পটভূমি', 'fondo preloader', 'خلفية تحميل مسبق', 'preloader fond', NULL),
(635, 'preloader_updated!', 'Preloader Updated!', 'preloader আপডেট!', 'preloader actualiza!', 'التحميل المسبق لتحديث!', 'Preloader mis à jour!', NULL),
(636, 'social_links', 'Social Links', 'সামাজিক লিংক', 'vínculos sociales', 'الروابط الاجتماعية', 'liens sociaux', NULL),
(637, 'system_name', 'System Name', 'সিস্টেমের নামের', 'nombre del sistema', 'اسم النظام', 'le nom du système', NULL),
(638, 'system_email', 'System Email', 'সিস্টেম ইমেল', 'correo electrónico del sistema', 'نظام البريد الإلكتروني', 'email du système', NULL),
(639, 'system_title', 'System Title', 'সিস্টেম শিরোনাম', 'título de sistema', 'عنوان النظام', 'titre du système', NULL),
(640, 'homepage_cache_time', 'Homepage Cache Time', 'হোমপেজে ক্যাশে সময়', 'tiempo de caché página de inicio', 'الوقت مخبأ الصفحة الرئيسية', 'temps de cache page d''accueil', NULL),
(641, 'minutes', 'Minutes', 'মিনিট', 'minutos', 'دقيقة', 'minutes', NULL),
(642, 'downloadable_product_folder_name', 'Downloadable Product Folder Name', 'ডাউনলোডযোগ্য পণ্য ফোল্ডার নাম', 'nombre de la carpeta descargable producto', 'اسم مجلد المنتج للتحميل', 'produit téléchargeable nom du dossier', NULL),
(643, 'admin_notification_sound', 'Admin Notification Sound', 'অ্যাডমিন নোটিফিকেশন সাউন্ড', 'sonido de notificación de administración', 'صوت الإعلام المشرف', 'administrateur notification sonore', NULL),
(644, 'admin_notification_volume', 'Admin Notification Volume', 'অ্যাডমিন বিজ্ঞপ্তি ভলিউম', 'volumen de notificación de administración', 'حجم إخطار المشرف', 'volume de notification admin', NULL),
(645, 'Volume_:_', 'Volume : ', 'ভলিউম: ', 'volumen: ', 'الصوت : ', 'Le volume : ', NULL),
(646, 'homepage_notification_sound', 'Homepage Notification Sound', 'হোমপেজে নোটিফিকেশন সাউন্ড', 'sonido de notificación página de inicio', 'صوت الإعلام الصفحة الرئيسية', 'son de notification page d''accueil', NULL),
(647, 'homepage_notification_volume', 'Homepage Notification Volume', 'হোমপেজে বিজ্ঞপ্তি ভলিউম', 'volumen de notificación página de inicio', 'حجم الاخطار الصفحة الرئيسية', 'volume de notification page d''accueil', NULL),
(648, 'captcha_settings', 'Captcha Settings', 'ক্যাপচা সেটিংস', 'configuración de captcha', 'إعدادات كلمة التحقق', 'paramètres captcha', NULL),
(649, 'social_login_configuaration', 'Social Login Configuaration', 'সামাজিক লগইন configuaration', 'configuaration entrada sociales', 'configuaration تسجيل الدخول الاجتماعي', 'configuaration de connexion sociale', NULL),
(650, 'product_comment_settings', 'Product Comment Settings', 'পণ্য মন্তব্য সেটিংস', 'configuración de comentarios de productos', 'إعدادات المنتج تعليق', 'paramètres produit de commentaire', NULL),
(651, 'google_map', 'Google Map', 'গুগল মানচিত্র', 'mapa de Google', 'خريطة جوجل', 'Google Map', NULL),
(652, 'save_captcha_settings', 'Save Captcha Settings', 'ক্যাপচা সেটিংস সংরক্ষণ', 'guardar la configuración de captcha', 'حفظ الإعدادات كلمة التحقق', 'enregistrer les paramètres de captcha', NULL),
(653, 'public_key', 'Public Key', 'সর্বজনীন কী', 'Llave pública', 'المفتاح العمومي', 'Clé publique', NULL),
(654, 'private_key', 'Private Key', 'প্রাইভেট কী', 'llave privada', 'المفتاح الخاص', 'clé privée', NULL),
(655, 'facebook_login_settings', 'Facebook Login Settings', 'ফেসবুক লগইন সেটিংস', 'configuración de usuario de Facebook', 'إعدادات تسجيل الدخول الفيسبوك', 'paramètres de connexion facebook', NULL),
(656, 'google+_login_settings', 'Google+ Login Settings', 'গুগল + লগইন সেটিংস', 'la configuración de acceso a Google +', 'إعدادات تسجيل الدخول جوجل +', 'paramètres google + de connexion', NULL),
(657, 'type', 'Type', 'আদর্শ', 'tipo', 'اكتب', 'type', '类型'),
(658, 'none', 'None', 'না', 'ninguna', 'لا شيء', 'aucun', '没有'),
(659, 'facebook_comment', 'Facebook Comment', 'ফেসবুক মন্তব্য', 'facebook comentario', 'الفيسبوك تعليق', 'facebook commentaire', 'Facebook的评论'),
(660, 'disqus_comment', 'Disqus Comment', 'Disqus মন্তব্য', 'comentario Disqus', 'هارد تعليق', 'Disqus commentaire', 'disqus评论'),
(661, 'google_comment', 'Google Comment', 'গুগল মন্তব্য', 'google comentario', 'جوجل تعليق', 'google commentaire', '谷歌评论'),
(662, 'discus_ID', 'Discus ID', 'চাকতি আইডি', 'Identificación de disco', 'رمي القرص معرف', 'discus ID', '铁饼ID'),
(663, 'fb_comment_id', 'Fb Comment Id', 'FB মন্তব্য আইডি', 'fb comentario Identificación', 'أف ب تعليق معرف', 'fb commentaire id', 'FB评论ID'),
(664, 'google_map_api_settings', 'Google Map Api Settings', 'গুগল ম্যাপ API সেটিংস', 'configuración de un mapa de Google API', 'جوجل إعدادات خريطة المعهد', 'google map paramètres api', '谷歌地图API设置'),
(665, 'api_key', 'Api Key', 'API কী', 'Clave API', 'مفتاح API', 'clé API', 'API密钥'),
(666, 'add_page', 'Add Page', 'পাতা যোগ কর', 'añadir página', 'إضافة صفحة', 'ajouter une page', '添加页面'),
(667, 'create_page', 'Create Page', 'পাতা তৈরি করুন', 'Crear página', 'إنشاء الصفحة', 'créer une page', '创建页面'),
(668, 'back_to_page_list', 'Back To Page List', 'পিছন পাতা লিস্টে', 'volver a la lista de la página', 'العودة إلى القائمة الصفحة', 'Retour à la liste de la page', '返回页面列表'),
(669, 'page_name', 'Page Name', 'পৃষ্ঠার নাম', 'Nombre de la página', 'اسم الصفحة', 'Nom de la page', '网页名称'),
(670, 'preview', 'Preview', 'প্রিভিউ', 'avance', 'معاينة', 'Aperçu', '预习'),
(671, 'edit_page', 'Edit Page', 'সম্পাদনা পাতা', 'editar página', 'تعديل الصفحة', 'modifier la page', '编辑页面'),
(672, 'page_title', 'Page Title', 'আমার স্নাতকের', 'Título de la página', 'عنوان الصفحة', 'titre de la page', '页面标题'),
(673, 'parmalink', 'Parmalink', 'মাহবুব', 'Permalink', 'الرابط الثابت', 'Permalink', '永久链接'),
(674, 'number_of_page_parts', 'Number Of Page Parts', 'পৃষ্ঠা যন্ত্রাংশ সংখ্যা', 'número de piezas de la página', 'عدد الأجزاء الصفحة', 'nombre de pages pièces', '页数件'),
(675, 'lets_start_to_create_your_page', 'Lets Start To Create Your Page', 'আপনার পৃষ্ঠা তৈরি করতে চলুন শুরু করা যাক', 'Empecemos a crear su página', 'يتيح البدء في إنشاء صفحتك', 'laisse commencer à créer votre page', '让我们开始创建你的页面'),
(676, 'parts', 'Parts', 'যন্ত্রাংশ', 'partes', 'أجزاء', 'les pièces', '部分'),
(677, 'select_size', 'Select Size', 'নির্বাচন আকার', 'selecciona el tamaño', 'أختر الحجم', 'sélectionnez la taille', '选择大小'),
(678, 'one-fourth', 'One-fourth', 'এক চতুর্থাংশ', 'un cuarto', 'ربع', 'un quart', '四分之一'),
(679, 'one-third', 'One-third', 'এক-তৃতীয়াংশ', 'un tercio', 'الثلث', 'un tiers', '三分之一'),
(680, 'half', 'Half', 'অর্ধেক', 'mitad', 'نصف', 'moitié', '半'),
(681, 'two-third', 'Two-third', 'দুই-তৃতীয়াংশ', 'dos tercios', 'ثلثي', 'deux tiers', '三分之二'),
(682, 'three-fourth', 'Three-fourth', 'তিন-চতুর্থাংশ', 'tres cuartos', 'ثلاثة ارباع', 'trois quart', '四分之三'),
(683, 'full', 'Full', 'সম্পূর্ণ', 'completo', 'كامل', 'plein', '充分'),
(684, 'select_type', 'Select Type', 'নির্বাচন টাইপ', 'seleccione tipo', 'اختر صنف', 'sélectionner le genre', '选择类型'),
(685, 'content', 'Content', 'সন্তুষ্ট', 'contenido', 'محتوى', 'contenu', '内容'),
(686, 'widget', 'Widget', 'উইজেট', 'Reproductor', 'القطعة', 'un widget', '小部件'),
(687, 'product_categories', 'Product Categories', 'পণের ধরন', 'Categorías de Producto', 'أصناف المنتجات', 'catégories de produits', '产品类别'),
(688, 'advance_search', 'Advance Search', 'অগ্রিম অনুসন্ধান', 'Búsqueda avanzada', 'بحث متقدم', 'recherche avancée', '高级搜索'),
(689, 'special_blogs', 'Special Blogs', 'বিশেষ ব্লগ', 'blogs especiales', 'بلوق الخاصة', 'blogs spéciaux', '特殊的博客'),
(690, 'not_more_than_4_columns!', 'Not More Than 4 Columns!', 'অনধিক 4 কলাম!', 'no más de 4 columnas!', 'لم يكن أكثر من 4 أعمدة!', 'pas plus de 4 colonnes!', '不超过4列！'),
(691, 'popular', 'Popular', 'জনপ্রিয়', 'popular', 'شعبي', 'populaire', '流行'),
(692, 'deals', 'Deals', 'প্রতিষ্ঠান', 'ofertas', 'صفقات', 'offres', '交易'),
(693, 'page_code', 'Page Code', 'পাতা কোড', 'código de la página', 'كود الصفحة', 'code de la page', '网页代码'),
(694, 'page_tags', 'Page Tags', 'পাতা ট্যাগ', 'etiquetas de página', 'علامات الصفحة', 'balises de page', '标签页'),
(695, 'column', 'Column', 'স্তম্ভ', 'columna', 'عمود', 'colonne', '柱'),
(696, '', '', '', '', '', '', ''),
(697, 'most_sold', 'Most Sold', 'সবথেকে বেশি বিক্রিত', 'más vendidos', 'الأكثر مبيعا', 'les plus vendus', '大部分销往'),
(698, 'product_image', 'Product Image', 'পণ্য ইমেজ', 'Imagen del producto', 'صورة المنتج', 'image du produit', '产品形象'),
(699, 'digital_logo_image', 'Digital Logo Image', 'ডিজিটাল লোগো ইমেজ', 'imagen del logotipo digitales', 'صورة الشعار الرقمية', 'logo image numérique', '数字标识图像'),
(700, 'category_image', 'Category Image', 'বিভাগ ইমেজ', 'imagen de la categoría', 'صورة الفئة', 'catégorie d''image', '类别形象'),
(701, 'sub_category_image', 'Sub Category Image', 'সাব বিভাগ চিত্র', 'imagen de la categoría sub', 'صورة الفئة الفرعية', 'Image sous catégorie', '子类别形象'),
(702, 'brand_image', 'Brand Image', 'প্রতিকি ছবি', 'imagen de marca', 'صورة العلامة التجارية', 'image de marque', '品牌形象'),
(703, 'blog_image', 'Blog Image', 'ব্লগ ছবি', 'blog de imágenes', 'صور بلوق', 'blog image', '博客图片'),
(704, 'banner_image', 'Banner Image', 'ব্যানার ইমেজ', 'banner image', 'صورة لافتة', 'image de la bannière', '横幅图片'),
(705, 'user_image', 'User Image', 'ব্যবহারকারী ইমেজ', 'imagen de usuario', 'صورة المستخدم', 'image de l''utilisateur', '用户图像'),
(706, 'vendor_logo_image', 'Vendor Logo Image', 'বিক্রেতার লোগো ইমেজ', 'imagen del logo del proveedor', 'بائع صورة الشعار', 'fournisseur image du logo', '供应商的logo图片'),
(707, 'vendor_banner_image', 'Vendor Banner Image', 'বিক্রেতার ব্যানার ইমেজ', 'imagen Bandera proveedor', 'بائع راية صورة', 'image de la bannière de fournisseur', '供应商横幅图片'),
(708, 'membership_image', 'Membership Image', 'সদস্য ইমেজ', 'imagen de miembros', 'صورة عضوية', 'image de l''adhésion', '会员图像'),
(709, 'slides_image', 'Slides Image', 'স্লাইড ইমেজ', 'imagen diapositivas', 'صورة الشرائح', 'l''image des diapositives', '幻灯片图像'),
(710, 'select_default_image', 'Select Default Image', 'নির্বাচন ডিফল্ট ইমেজ', 'Seleccionar imagen predeterminada', 'الصورة الافتراضية مختارة', 'image par défaut, sélectionnez', '选择默认图像'),
(711, 'product_image_updated!', 'Product Image Updated!', 'পণ্য ইমেজ আপডেট!', 'la imagen del producto actualizado!', 'صورة المنتج تجديد!', 'image du produit mis à jour!', '产品形象更新了！'),
(712, 'digital_logo_image_updated!', 'Digital Logo Image Updated!', 'ডিজিটাল লোগো ইমেজ আপডেট!', 'imagen del logotipo digital actualizada!', 'صورة الشعار الرقمية تجديد!', 'logo image numérique mis à jour!', '数字标识图像更新！'),
(713, 'category_image_updated!', 'Category Image Updated!', 'বিভাগ ইমেজ আপডেট!', 'la categoría imagen actualizada!', 'الفئة صورة تجديد!', 'catégorie d''image mis à jour!', '类别图像更新！'),
(714, 'sub_category_image_updated!', 'Sub Category Image Updated!', 'সাব বিভাগ ইমেজ আপডেট!', 'imagen de la categoría sub actualiza!', 'صورة الفئة الفرعية تجديد!', 'Image sous catégorie mise à jour!', '子类图像更新！'),
(715, 'brand_image_updated!', 'Brand Image Updated!', 'ব্র্যান্ড ইমেজ আপডেট!', 'actualiza la imagen de marca!', 'صورة العلامة التجارية تجديد!', 'image de marque mis à jour!', '品牌形象更新了！'),
(716, 'blog_image_updated!', 'Blog Image Updated!', 'ব্লগ ইমেজ আপডেট!', 'imagen blog actualizado!', 'صورة بلوق تجديد!', 'l''image de blog mis à jour!', '博客更新的形象！'),
(717, 'banner_image_updated!', 'Banner Image Updated!', 'ব্যানার ইমেজ আপডেট!', 'imagen Bandera actualiza!', 'راية صورة تجديد!', 'banner image mise à jour!', '横幅图像更新！'),
(718, 'user_image_updated!', 'User Image Updated!', 'ব্যবহারকারী ইমেজ আপডেট!', 'Imagen de usuario actualizada!', 'صورة المستخدم تجديد!', 'image de l''utilisateur mis à jour!', '用户图像更新！'),
(719, 'vendor_logo_image_updated!', 'Vendor Logo Image Updated!', 'বিক্রেতার লোগো ইমেজ আপডেট!', 'imagen del logo del proveedor actualiza!', 'بائع صورة شعار تجديد!', 'fournisseur image du logo mis à jour!', '供应商的logo图片更新！'),
(720, 'vendor_banner_image_updated!', 'Vendor Banner Image Updated!', 'বিক্রেতার ব্যানার ইমেজ আপডেট!', 'imagen Bandera proveedor actualiza!', 'بائع راية صورة تجديد!', 'image de la bannière du fournisseur mis à jour!', '供应商横幅图像更新！'),
(721, 'membership_image_updated!', 'Membership Image Updated!', 'সদস্য ইমেজ আপডেট!', 'imagen actualizada de miembros!', 'صورة عضوية تجديد!', 'image de l''adhésion mis à jour!', '会员图像更新！'),
(722, 'slides_image_updated!', 'Slides Image Updated!', 'স্লাইড ইমেজ আপডেট!', 'Imagen diapositivas actualizado!', 'الشرائح صورة تجديد!', 'l''image des diapositives mis à jour!', '幻灯片图像更新！'),
(723, 'manage_activation', 'Manage Activation', 'সক্রিয়করণ পরিচালনা', 'administrar la activación', 'إدارة التنشيط', 'gérer l''activation', '管理激活'),
(724, 'business_related', 'Business Related', 'ব্যবসা সংক্রান্ত', 'relacionado al negocio', 'الأعمال التجارية ذات الصلة', 'lié aux affaires', '业务相关'),
(725, 'physical_product_activation', 'Physical Product Activation', 'শারীরিক পণ্য অ্যাক্টিভেশন', 'la activación del producto físico', 'تنشيط المنتج المادي', 'activation physique du produit', '实物产品激活'),
(726, 'physical_product_enabled', 'Physical Product Enabled', 'শারীরিক পণ্য সক্রিয়', 'producto físico habilitado', 'تمكين منتج مادي', 'produit physique activé', '实物产品启用'),
(727, 'physical_product_disabled', 'Physical Product Disabled', 'শারীরিক পণ্যটি অক্ষম', 'producto físico desactivado', 'منتج مادي تعطيل', 'produit physique désactivé', '实物产品禁用'),
(728, 'digital_product_activation', 'Digital Product Activation', 'ডিজিটাল পণ্য অ্যাক্টিভেশন', 'la activación de productos digitales', 'تنشيط المنتج الرقمي', 'l''activation du produit numérique', '数码产品激活'),
(729, 'digital_product_enabled', 'Digital Product Enabled', 'ডিজিটাল পণ্য সক্রিয়', 'producto digital habilitada', 'تمكين المنتجات الرقمية', 'produit numérique activé', '数码产品启用'),
(730, 'digital_product_disabled', 'Digital Product Disabled', 'ডিজিটাল পণ্য নিষ্ক্রিয়', 'producto digital desactivado', 'المنتجات الرقمية تعطيل', 'produit numérique désactivé', '数码产品禁用'),
(731, 'vendor_system_activation', 'Vendor System Activation', 'বিক্রেতার সিস্টেম সক্রিয়করণের', 'activación del sistema del proveedor', 'تفعيل نظام بائع', 'l''activation du système du fournisseur', '供应商系统的激活'),
(732, 'vendor_system_enabled', 'Vendor System Enabled', 'বিক্রেতার সিস্টেম সক্রিয়', 'Los vendedores de sistemas habilitado', 'تمكين نظام بائع', 'système de fournisseur activé', '供应商的系统中启用'),
(733, 'vendor_system_disabled', 'Vendor System Disabled', 'বিক্রেতার সিস্টেম নিষ্ক্রিয়', 'Los vendedores de sistemas deshabilitada', 'تعطيل نظام بائع', 'système fournisseur désactivé', '供应商系统禁用'),
(734, 'payment_related', 'Payment Related', 'পেমেন্ট সম্পর্কিত', 'el pago relacionado', 'دفع ذات الصلة', 'paiement connexes', '支付相关'),
(735, 'paypal_payment_activation', 'Paypal Payment Activation', 'পেপ্যাল ​​অ্যাক্টিভেশন', 'la activación del pago paypal', 'تفعيل الدفع باي بال', 'activation de paiement paypal', '支付宝付款激活'),
(736, 'paypal_payment_enabled', 'Paypal Payment Enabled', 'পেপাল পেমেন্ট সক্রিয়', 'el pago de PayPal habilitado', 'تمكين الدفع باي بال', 'paiement paypal activé', '支付宝付款启用'),
(737, 'paypal_payment_disabled', 'Paypal Payment Disabled', 'পেপাল পেমেন্ট নিষ্ক্রিয়', 'pago PayPal no disponible', 'الدفع باي بال تعطيل', 'paiement paypal désactivé', '支付宝付款禁用'),
(738, 'stripe_payment_activation', 'Stripe Payment Activation', 'ডোরা পেমেন্ট অ্যাক্টিভেশন', 'la activación del pago de la raya', 'تفعيل دفع شريط', 'activation de paiement de bande', '条纹支付激活'),
(739, 'stripe_payment_enabled', 'Stripe Payment Enabled', 'ডোরা পেমেন্ট সক্রিয়', 'el pago de la raya habilitado', 'دفع شريط تمكين', 'paiement de bande activée', '启用条纹付款'),
(740, 'stripe_payment_disabled', 'Stripe Payment Disabled', 'ডোরা পেমেন্ট নিষ্ক্রিয়', 'el pago de la raya desactivado', 'دفع شريط تعطيل', 'paiement de bande désactivé', '条纹支付禁用'),
(741, 'cash_payment_activation', 'Cash Payment Activation', 'নগদ পেমেন্ট অ্যাক্টিভেশন', 'la activación de pago en efectivo', 'تفعيل الدفع نقدا', 'activation de paiement en espèces', '现金支付激活'),
(742, 'cash_payment_enabled', 'Cash Payment Enabled', 'নগদ পেমেন্ট সক্রিয়', 'pago en efectivo habilitado', 'الدفع نقدا تمكين', 'paiement en espèces a permis', '启用现金支付'),
(743, 'cash_payment_disabled', 'Cash Payment Disabled', 'নগদ পেমেন্ট নিষ্ক্রিয়', 'pago en efectivo desactivado', 'الدفع نقدا تعطيل', 'paiement en espèces désactivé', '现金支付禁用'),
(744, 'manage_business_settings', 'Manage Business Settings', 'ব্যবসা সেটিংস পরিচালনা', 'administrar la configuración de negocio', 'إدارة إعدادات الأعمال', 'gérer les paramètres d''affaires', '管理业务设置'),
(745, 'cash_payment', 'Cash Payment', 'নগদে টাকা প্রদান', 'pago en efectivo', 'دفع نقدا', 'paiement en espèces', '现金支付'),
(746, 'paypal_payment', 'Paypal Payment', 'পেপ্যাল', 'Pago PayPal', 'دفع باي بال', 'Paiement PayPal', '支付宝付款'),
(747, 'paypal_email', 'Paypal Email', 'পেপ্যাল ​​ইমেইল', 'correo electrónico de payPal', 'البريد الإلكتروني باي بال', 'paypal email', '贝宝电子邮件'),
(748, 'paypal_account_type', 'Paypal Account Type', 'PayPal অ্যাকাউন্ট টাইপ', 'paypal tipo de cuenta', 'باي بال نوع الحساب', 'paypal type de compte', 'PayPal帐户类型'),
(749, 'stripe_payment', 'Stripe Payment', 'ডোরা পেমেন্ট', 'el pago de la raya', 'دفع شريط', 'paiement de bande', '条纹支付'),
(750, 'stripe_secret_key', 'Stripe Secret Key', 'ডোরা গোপন চাবি', 'clave secreta de la raya', 'المفتاح السري الشريط', 'clé secrète bande', '条纹密钥'),
(751, 'stripe_publishable_key', 'Stripe Publishable Key', 'ডোরা প্রকাশযোগ্য কী', 'publicable clave de la raya', 'شريط مفتاح للنشر', 'stripe clé publiable', '条纹发布的关键'),
(752, 'currency_name', 'Currency Name', 'মুদ্রার নাম', 'nombre de la moneda', 'اسم العملة', 'nom de la monnaie', '货币名称'),
(753, 'currency_symbol', 'Currency Symbol', 'মুদ্রা প্রতীক', 'símbolo de moneda', 'رمز العملة', 'symbole de la monnaie', '货币符号'),
(754, 'shipping_cost_type', 'Shipping Cost Type', 'শিপিং খরচ টাইপ', 'Tipo de coste de envío', 'الشحن نوع التكلفة', 'Type de frais de port', '运输成本类型'),
(755, 'product_wise', 'Product Wise', 'পণ্য জ্ঞানী', 'producto sabia', 'المنتج الحكمة', 'produit sage', '产品明智'),
(756, 'fixed', 'Fixed', 'স্থির', 'fijo', 'ثابت', 'fixé', '固定'),
(757, 'shipping_cost_(If_fixed)', 'Shipping Cost (If Fixed)', 'শিপিং খরচ (সংশোধন তাহলে)', 'coste de envío (Si fija)', 'تكلفة الشحن (إذا الثابتة)', 'frais de port (Si fixe)', '运输成本（如果固定）'),
(758, 'shipment_info', 'Shipment Info', 'চালানের তথ্য', 'Datos de envío', 'معلومات الشحن', 'Information d''expédition', '发货信息'),
(759, 'question', 'Question', 'প্রশ্ন', 'pregunta', 'سؤال', 'question', '题'),
(760, 'answer', 'Answer', 'উত্তর', 'responder', 'إجابة', 'répondre', '回答'),
(761, 'add_more_FAQs', 'Add More FAQs', 'আরো প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী যোগ', 'añadir más preguntas frecuentes', 'إضافة المزيد من الأسئلة الشائعة', 'ajouter plus de FAQs', '添加更多的常见问题解答'),
(762, 'manage_payment_methods_&_shipment', 'Manage Payment Methods & Shipment', 'পেমেন্টের &amp; চালান পরিচালনা', 'administrar métodos Pago y envío', 'إدارة وسائل الدفع والشحن', 'gérer les modes de paiement et l''expédition', '管理付款方式及发货'),
(763, 'payment_methods_settings', 'Payment Methods Settings', 'পেমেন্টের সেটিংস', 'configuración de las formas de pago', 'ضبط وسائل الدفع', 'paramètres Modes de paiement', '付款方式设置'),
(764, 'paypal_settings', 'Paypal Settings', 'পেপাল সেটিংস', 'ajustes paypal', 'إعدادات باي بال', 'paramètres paypal', '贝宝设置'),
(765, 'stripe_settings', 'Stripe Settings', 'ডোরা সেটিংস', 'la configuración de la raya', 'إعدادات شريط', 'les paramètres de bande', '条纹设置'),
(766, 'shipment_settings', 'Shipment Settings', 'চালানের সেটিংস', 'Parámetros de distribución', 'ضبط شحنة', 'les paramètres d''expédition', '出厂设置'),
(767, 'currency_settings', 'Currency Settings', 'মুদ্রা সেটিংস', 'configuración de moneda', 'إعدادات العملة', 'paramètres de devise', '货币设置'),
(768, 'exchange_rate', 'Exchange Rate', 'বিনিময় হার', 'tipo de cambio', 'سعر الصرف', 'taux de change', '汇率'),
(769, 'default', 'Default', 'ডিফল্ট', 'defecto', 'الافتراضي', 'défaut', '默认'),
(770, 'exchange_rate_updated', 'Exchange Rate Updated', 'বিনিময় হার আপডেট', 'tipo de cambio actualizado', 'سعر الصرف تحديثها', 'taux de change mis à jour', '汇率更新'),
(771, 'currency_published', 'Currency Published', 'মুদ্রা প্রকাশিত', 'la moneda publicada', 'العملة المنشورة', 'monnaie publié', '货币出版'),
(772, 'currency_unpublished', 'Currency Unpublished', 'মুদ্রা অপ্রকাশিত', 'la moneda no publicado', 'عملة غير منشورة', 'monnaie inédite', '货币未公布'),
(773, 'syncing..', 'Syncing..', 'সিঙ্ক ..', 'la sincronización ..', 'المزامنة ..', 'la synchronisation ..', '同步..'),
(774, '!', '!', '!', '!', '!', '!', '！'),
(775, 'sync', 'Sync', 'সুসংগত', 'sincronizar', 'مزامنة', 'synchroniser', '同步'),
(776, 'manage_faqs', 'Manage Faqs', 'প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী পরিচালনা', 'gestionar faqs', 'إدارة الأسئلة المتكررة', 'gérer faqs', '管理常见问题解答'),
(777, 'manage_staffs', 'Manage Staffs', 'কর্মীরা পরিচালনা', 'gestionar el personal', 'إدارة الموظفين', 'gérer le personnel', '管理人员'),
(778, 'add_staff', 'Add Staff', 'স্টাফ যোগ', 'añadir personal', 'إضافة الموظفين', 'ajouter du personnel', '增加员工'),
(779, 'create_admin', 'Create Admin', 'অ্যাডমিন তৈরি', 'crear administrador', 'إنشاء المشرف', 'créer administrateur', '创建管理员'),
(780, 'role', 'Role', 'ভূমিকা', 'papel', 'دور', 'rôle', '角色'),
(781, 'edit_admin', 'Edit Admin', 'সম্পাদনা অ্যাডমিন', 'edición de administración', 'تحرير المشرف', 'modifier administrateur', '编辑管理'),
(782, 'sddress', 'Sddress', 'sddress', 'sddress', 'sddress', 'sddress', 'sddress'),
(783, 'Manage_roles', 'Manage Roles', 'ভূমিকা পরিচালনা', 'administrar roles', 'إدارة الأدوار', 'Gérer les rôles', '管理角色'),
(784, 'add_role', 'Add Role', 'ভূমিকা যোগ', 'añadir papel', 'إضافة دور', 'ajouter rôle', '添加角色'),
(785, 'create_role', 'Create Role', 'ভূমিকা তৈরি', 'crear papel', 'إنشاء دور', 'créer rôle', '创建角色'),
(786, 'back_to_role_list', 'Back To Role List', 'ফিরে ভূমিকা লিস্টে', 'volver a la lista de papel', 'العودة إلى قائمة دور', 'Retour à la liste de rôles', '回到角色列表'),
(787, 'edit_role', 'Edit Role', 'সম্পাদনা ভূমিকা', 'edición papel', 'تحرير الدور', 'modifier rôle', '编辑角色'),
(788, 'permissions', 'Permissions', 'অনুমতি', 'permisos', 'أذونات', 'autorisations', '权限'),
(789, 'manage_SEO', 'Manage SEO', 'এসইও পরিচালনা', 'gestionar SEO', 'إدارة كبار المسئولين الاقتصاديين', 'gérer SEO', 'SEO管理'),
(790, 'settings', 'Settings', 'সেটিংস', 'ajustes', 'إعدادات', 'paramètres', '设置'),
(791, 'social_network_reach', 'Social Network Reach', 'সামাজিক নেটওয়ার্ক নাগালের', 'alcance de la red social,', 'الوصول إلى الشبكة الاجتماعية', 'la portée du réseau social', '社会网络覆盖'),
(792, 'alexa_traffic_metrics', 'Alexa Traffic Metrics', 'আলেক্সা ট্রাফিক মেট্রিক্স', 'métricas de tráfico de Alexa', 'مقاييس المرور اليكسا', 'alexa métriques de trafic', 'Alexa的流量指标'),
(793, 'alexa_traffic_graphs', 'Alexa Traffic Graphs', 'আলেক্সা ট্রাফিক গ্রাফ', 'gráficos de tráfico de Alexa', 'الرسوم البيانية المرور اليكسا', 'graphes de trafic alexa', 'Alexa的流量图'),
(794, 'search_index', 'Search Index', 'খোঁজের', 'índice de búsqueda', 'فهرس البحث', 'index de recherche', '搜索索引'),
(795, 'alexa_traffic_rank', 'Alexa Traffic Rank', 'আলেক্সা ট্রাফিক র্যাঙ্ক', 'rango de tráfico Alexa', 'اليكسا رتبة المرور', 'alexa rang du trafic', 'Alexa排名'),
(796, 'manage_search_engine_optimization', 'Manage Search Engine Optimization', 'সার্চ ইঞ্জিন অপ্টিমাইজেশান পরিচালনা', 'gestionar la optimización de motores de búsqueda', 'إدارة محرك البحث الأمثل', 'gérer l''optimisation des moteurs de recherche', '管理搜索引擎优化'),
(797, 'keywords', 'Keywords', 'কীওয়ার্ড', 'palabras clave', 'الكلمات المفتاحية', 'mots clés', '关键字'),
(798, 'revisit_after', 'Revisit After', 'পরে পরিদর্শন', 'después de revisar', 'إعادة النظر بعد', 'revoir après', '后重温'),
(799, 'sitemap_link', 'Sitemap Link', 'সাইটম্যাপ লিংক', 'mapa del sitio,', 'رابط خريطة الموقع', 'lien sitemap', '网站地图链接'),
(800, 'admin_login_logo', 'Admin Login Logo', 'অ্যাডমিন লগইন লোগো', 'logotipo de inicio de sesión de administrador', 'المشرف شعار تسجيل الدخول', 'admin login logo', '管理员登录标识'),
(801, 'home_top_logo', 'Home Top Logo', 'হোম শীর্ষ লোগো', 'top logo casa', 'المنزل أعلى الشعار', 'accueil top logo', '家顶级标志'),
(802, 'home_bottom_logo', 'Home Bottom Logo', 'হোম নীচে লোগো', 'logo inferior', 'منزل أسفل الشعار', 'fond de la maison logo', '家庭底部标志'),
(803, 'manage_profile', 'Manage Profile', 'প্রোফাইল পরিচালনা', 'administrar el perfil', 'إدارة الملف الشخصي', 'gérer le profil', '管理个人资料'),
(804, 'manage_details', 'Manage Details', 'বিবরণ পরিচালনা', 'gestionar los detalles', 'إدارة تفاصيل', 'gérer les détails', '细节管理'),
(805, 'profile_updated!', 'Profile Updated!', 'প্রোফাইল আপডেট!', '¡Perfil actualizado!', 'تحديث الملف الشخصي!', 'Profil mis à jour!', '个人资料已更新！'),
(806, 'update_profile', 'Update Profile', 'প্রফাইল হালনাগাদ', 'actualización del perfil', 'تحديث الملف', 'mettre à jour le profil', '更新个人信息'),
(807, 'change_password', 'Change Password', 'পাসওয়ার্ড পরিবর্তন', 'Cambia la contraseña', 'تغيير كلمة السر', 'changer le mot de passe', '更改密码'),
(808, 'current_password', 'Current Password', 'বর্তমান পাসওয়ার্ড', 'contraseña actual', 'كلمة السر الحالية', 'Mot de passe actuel', '当前密码');
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`) VALUES
(809, 'new_password*', 'New Password*', 'নতুন পাসওয়ার্ড *', 'nueva contraseña*', 'كلمة السر الجديدة*', 'nouveau mot de passe*', '新密码*'),
(810, 'confirm_password', 'Confirm Password', 'পাসওয়ার্ড নিশ্চিত করুন', 'Confirmar contraseña', 'تأكيد كلمة المرور', 'Confirmez le mot de passe', '确认密码'),
(811, 'password_updated!', 'Password Updated!', 'পাসওয়ার্ড আপডেট করা!', '¡Contraseña actualiza!', 'تم تحديث كلمة السر!', 'Mot de passe mis à jour!', '密码更新！'),
(812, 'update_password', 'Update Password', 'আপডেটের পাসওয়ার্ড', 'Actualiza contraseña', 'كلمة التحديث', 'mise à jour le mot de passe', '更新密码'),
(813, 'password_mismatched', 'Password Mismatched', 'পাসওয়ার্ড সাথে অমিল', 'la contraseña no coinciden', 'كلمة المرور غير متطابقة', 'mot de passe dépareillés', '密码不匹配'),
(814, 'incorrect_password!', 'Incorrect Password!', 'ভুল পাসওয়ার্ড৤!', '¡contraseña incorrecta!', 'كلمة مرور غير صحيحة!', 'mot de passe incorrect!', '密码不正确！'),
(815, 'language_name', 'Language Name', 'ভাষার নাম', 'Nombre del lenguaje', 'اسم اللغة', 'Nom de la langue', '语言名称'),
(816, 'language_icon', 'Language Icon', 'ভাষা আইকন', 'icono de idioma', 'رمز لغة', 'icône de langue', '语言图标'),
(817, 'select_language_icon', 'Select Language Icon', 'ভাষা নির্বাচন আইকন', 'Icono de selección de idioma', 'رمز لغة حدد', 'Icône de sélection de la langue', '选择语言图标'),
(818, 'secret', 'Secret', 'গোপন', 'secreto', 'سر', 'secret', '秘密'),
(819, 'application_name', 'Application Name', 'আবেদনের নাম', 'Nombre de la aplicación', 'اسم التطبيق', 'Nom de l''application', '应用名称'),
(820, 'client', 'Client', 'মক্কেল', 'cliente', 'زبون', 'client', '客户'),
(821, 'client_secret', 'Client Secret', 'ক্লায়েন্ট সিক্রেট', 'el secreto de cliente', 'سر العميل', 'secret client', '客户端密钥'),
(822, 'redirect', 'Redirect', 'পুনর্নির্দেশ', 'redirigir', 'إعادة توجيه', 'réorienter', '重定向'),
(823, 'key', 'Key', 'চাবি', 'llave', 'مفتاح', 'clé', '键'),
(824, 'visit_my_homepage', 'Visit My Homepage', 'আমার হোমপেজে যান', 'visite mi página de inicio', 'زيارة موقعي', 'visiter ma page d''accueil', '访问我的主页'),
(825, 'membership_type', 'Membership Type', 'মেম্বারশিপ টাইপ', 'tipo de membresía', 'نوع العضوية', 'Type d''adhésion', '会员类型'),
(826, 'membership_details', 'Membership Details', 'সদস্য বিবরণ', 'detalles de la adhesión', 'تفاصيل العضوية', 'les détails d''adhésion', '会员资料，'),
(827, 'membership_expiration', 'Membership Expiration', 'সদস্য মেয়াদপূর্তির', 'vencimiento de la suscripción', 'انتهاء عضوية', 'expiration de l''adhésion', '会员到期'),
(828, 'total_uploaded_products', 'Total Uploaded Products', 'মোট আপলোড পণ্য', 'productos totales cargados', 'مجموع المنتجات التي تم تحميلها.', 'produits totaux téléchargés', '总上传产品'),
(829, 'uploaded_published_products', 'Uploaded Published Products', 'আপলোড প্রকাশিত পণ্য', 'productos publicados subidas', 'منتجات المنشورة التي تم تحميلها', 'produits publiés téléchargés', '上传发布的产品'),
(830, 'vendorship_timespan', 'Vendorship Timespan', 'vendorship timespan', 'intervalo de tiempo vendorship', 'vendorship زمنية', 'vendorship timespan', 'vendorship时间跨度'),
(831, 'remaining', 'Remaining', 'অবশিষ্ট', 'restante', 'المتبقية', 'restant', '其余'),
(832, 'paid_by_customers', 'Paid By Customers', 'গ্রাহকদের দ্বারা দেওয়া', 'pagados por los clientes', 'المدفوعة من قبل العملاء', 'payés par les clients', '由客户支付'),
(833, 'due_from_admin', 'Due From Admin', 'অ্যাডমিন থেকে কারণে', 'por admin', 'بسبب من المشرف', 'en raison de l''administrateur', '应收管理'),
(834, 'payment_settings', 'Payment Settings', 'পেমেন্ট সেটিংস', 'la configuración de pagos', 'إعدادات الدفع', 'paramètres de paiement', '付款设置'),
(835, 'upgrade_package', 'Upgrade Package', 'আপগ্রেড প্যাকেজ', 'paquete de actualización', 'حزمة الترقية', 'package de mise à niveau', '升级包'),
(836, 'manage_your_product_stock', 'Manage Your Product Stock', 'আপনার পণ্য স্টক পরিচালনা', 'gestionar su stock de productos', 'إدارة المخزون المنتج الخاص بك', 'gérer votre stock de produits', '管理你的产品库存'),
(837, 'select_category', 'Select Category', 'বিভাগ নির্বাচন করুন', 'selecciona una categoría', 'اختر الفئة', 'Choisir une catégorie', '选择类别'),
(838, 'choose_product', 'Choose Product', 'পণ্য চয়ন', 'elegir el producto', 'اختيار المنتج', 'choisir le produit', '选择产品'),
(839, 'manage_public_profile_slider', 'Manage Public Profile Slider', 'সর্বজনীন প্রোফাইল স্লাইডার পরিচালনা', 'gestionar deslizador perfil público', 'إدارة المنزلق ملفه الشخصي', 'gérer le profil curseur publique', '管理的公众形象滑块'),
(840, 'home_page_style', 'Home Page Style', 'হোম পৃষ্ঠা শৈলী', 'estilo de página de inicio', 'أسلوب الصفحة الرئيسية', 'la page d''accueil de style', '主页风格'),
(841, 'manage_site', 'Manage Site', 'সাইট পরিচালনা', 'administrar sitio', 'إدارة الموقع', 'gérer le site', '管理网站'),
(842, 'vendor_images', 'Vendor Images', 'ভেন্ডর চিত্র', 'imágenes de los proveedores', 'الصور مورد معين لل', 'images fournisseurs', '厂商图片'),
(843, 'social_media', 'Social Media', 'সামাজিক মাধ্যম', 'medios de comunicación social', 'وسائل التواصل الاجتماعي', 'média sociaux', '社交媒体'),
(844, 'SEO', 'SEO', 'এসইও', 'SEO', 'كبار المسئولين الاقتصاديين', 'référencement', '搜索引擎优化'),
(845, 'select_images', 'Select Images', 'চিত্র নির্বাচন করুন', 'seleccionar las imágenes', 'صور مختارة', 'sélectionner les images', '选择图片'),
(846, 'suggested_width', 'Suggested Width', 'প্রস্তাবিত প্রস্থ', 'ancho sugerido', 'عرض المقترح', 'largeur suggérée', '建议宽度'),
(847, 'height', 'Height', 'উচ্চতা', 'altura', 'ارتفاع', 'la taille', '高度'),
(848, 'cover_photo', 'Cover Photo', 'প্রচ্ছদ ছবি', 'foto de cubierta', 'صورة الغلاف', 'photo de couverture', '封面照片'),
(849, 'select_photo', 'Select Photo', 'ছবি নির্বাচন করুন', 'seleccione Foto', 'اختر الصورة', 'select photo', '选择照片'),
(850, 'manage_payment_receiving_settings', 'Manage Payment Receiving Settings', 'পেমেন্ট পাওয়ার সেটিংস পরিচালনা', 'administrar la configuración de recepción de pago', 'إدارة إعدادات دفع المتلقي', 'gérer les paramètres de réception de paiement', '管理支付接收设置'),
(851, 'upgrade', 'Upgrade', 'আপগ্রেড', 'mejorar', 'تطوير', 'surclassement', '升级'),
(852, 'maximum_product', 'Maximum Product', 'সর্বাধিক পণ্য', 'máxima del producto', 'الحد الأقصى المنتج', 'produit maximale', '产品最大'),
(853, 'about', 'About', 'সম্বন্ধে', 'acerca de', 'حول', 'sur', '关于'),
(854, 'oops', 'Oops', 'ওহো', 'Uy', 'عفوا', 'Oops', '哎呀'),
(855, 'the_page_you_requested_was_not_found', 'The Page You Requested Was Not Found', 'আপনার অনুরোধ পাতা পাওয়া যায় না', 'la página solicitada no se ha encontrado', 'الصفحة المطلوبة غير متوفرة', 'La page que vous avez demandée n''a pas été trouvée', '未找到您所请求的页面'),
(856, 'back_to_home', 'Back To Home', 'বাড়িতে ফিরে যাও', 'de vuelta a casa', 'العودة إلى المنزل', 'de retour à la maison', '返回首页'),
(857, 'browse', 'Browse', 'ব্রাউজ', 'vistazo', 'تصفح', 'Feuilleter', '浏览'),
(858, 'sort_by', 'Sort By', 'ক্রমানুসার', 'ordenar por', 'ترتيب حسب', 'Trier par', '排序方式'),
(859, 'price_low_to_high', 'Price Low To High', 'মূল্য কম থেকে', 'precios de barato a caro', 'السعر على ارتفاع منخفض', 'prix croissant', '价格从低到高'),
(860, 'price_high_to_low', 'Price High To Low', 'মূল্য থেকে কম', 'Precio mayor a menor', 'السعر الاعلى الى الادنى', 'prix décroissant', '价格高到低'),
(861, 'oldest', 'Oldest', 'প্রবীণতম', 'más antiguo', 'أقدم', 'la plus ancienne', '最老的'),
(862, 'newest', 'Newest', 'নতুন', 'el más nuevo', 'أحدث', 'le plus récent', '最新'),
(863, 'sold_by_:', 'Sold By :', 'বিক্রিত :', 'vendido por :', 'تم بيعها من قبل :', 'vendu par :', '所售 ：'),
(864, 'price_:', 'Price :', 'মূল্য:', 'precio:', 'السعر :', 'prix :', '价钱 ：'),
(865, 'discount:_', 'Discount: ', 'ছাড়: ', 'descuento: ', 'خصم: ', 'remise: ', '折扣： '),
(866, '_available', ' Available', ' সহজলভ্য', ' disponible', ' متاح', ' disponible', ' 可用的'),
(867, '_add_to_wishlist', ' Add To Wishlist', ' চাহিদাপত্রে যোগ করা', ' añadir a la lista de deseos', ' إضافة إلى سلة', ' ajouter à la liste de souhaits', ' 加入收藏'),
(868, '_compare', ' Compare', ' তুলনা করা', ' comparar', ' قارن', ' comparer', ' 比较'),
(869, 'sold_category_of_vendor', 'Sold Category Of Vendor', 'বিক্রেতার বিভাগ বিক্রি', 'categoría vendidos del proveedor', 'فئة بيعها من المورد', 'catégorie vendu du vendeur', '供应商出售类'),
(870, 'recent', 'Recent', 'সাম্প্রতিক', 'reciente', 'الأخيرة', 'récent', '最近'),
(871, 'our_vendors_location', 'Our Vendors Location', 'আমাদের বিক্রেতারা অবস্থান', 'nuestra ubicación vendedores', 'البائعين لدينا موقع', 'notre emplacement des fournisseurs', '我们的供应商的位置'),
(872, 'search_vendors', 'Search Vendors', 'অনুসন্ধান বিক্রেতারা', 'proveedores de búsqueda', 'الباعة البحث', 'les fournisseurs de recherche', '搜索厂商'),
(873, 'go', 'Go', 'যাওয়া', 'ir', 'اذهب', 'aller', '走'),
(874, 'our_vendors', 'Our Vendors', 'আমাদের বিক্রেতারা', 'nuestros proveedores', 'موردينا', 'nos fournisseurs', '我们的供应商'),
(875, 'message_sent!', 'Message Sent!', 'বার্তা পাঠানো!', '¡mensaje enviado!', 'تم الارسال!', 'message envoyé!', '消息发送！'),
(876, 'incorrect_captcha!', 'Incorrect Captcha!', 'ভুল ক্যাপচা!', '¡CAPTCHA incorrecto!', 'كلمة التحقق غير صحيح!', 'Captcha incorrecte!', '验证码不正确！'),
(877, 'about_us', 'About Us', 'আমাদের সম্পর্কে', 'sobre nosotros', 'معلومات عنا', 'à propos de nous', '关于我们'),
(878, 'contact_form', 'Contact Form', 'যোগাযোগ ফর্ম', 'Formulario de contacto', 'نموذج الاتصال', 'formulaire de contact', '联系表'),
(879, 'sending..', 'Sending..', 'পাঠানোর ..', 'enviando..', 'إرسال..', 'envoi..', '发送..'),
(880, 'send_message', 'Send Message', 'বার্তা পাঠান', 'enviar mensaje', 'إرسال رسالة', 'envoyer le message', '发信息'),
(881, 'enter_valid_email_address', 'Enter Valid Email Address', 'বৈধ ই-মেইল ঠিকানা লিখুন', 'introduzca la dirección de correo electrónico válida', 'أدخل عنوان بريد إلكتروني صالح', 'entrez l''adresse e-mail valide', '输入有效电子邮件地址'),
(882, 'message_sent_successfully', 'Message Sent Successfully', 'বার্তাটি সফলভাবে পাঠানো', 'Mensaje enviado con éxito', 'الرسالة أرسلت بنجاح', 'message envoyé avec succès', '消息发送成功'),
(883, 'incorrect_information!Check agian', 'Incorrect Information!Check Agian', 'ভুল তথ্য! চেক ইন করুন', 'información incorrecta! Llegada', 'معلومات غير صحيحة! تحقق في', 'des informations incorrectes! Arrivée', '不正确的信息！入住'),
(884, 'this_filed_is_required!', 'This Filed Is Required!', 'এই মামলা দায়ের করা প্রয়োজন বোধ করা হয়!', 'Este campo es necesario!', 'هذه المقدمة هو مطلوب!', 'ce dépôt est nécessaire!', '该申请要求！'),
(885, 'frequently_asked_questions', 'Frequently Asked Questions', 'সচরাচর জিজ্ঞাস্য', 'preguntas frecuentes', 'أسئلة مكررة', 'Questions fréquemment posées', '经常问的问题'),
(886, 'not_a_member_yet_?', 'Not A Member Yet ?', 'এখনো সদস্য নন ?', 'No eres miembro todavía ?', 'لست عضوا بعد ؟', 'Pas encore membre ?', '还不是会员？'),
(887, 'sign_up_now!', 'Sign Up Now!', 'এখন সাইন আপ!', 'inscribirse ahora!', 'أفتح حساب الأن!', 's''inscrire maintenant!', '立即注册！'),
(888, 'forget_your_password_?', 'Forget Your Password ?', 'আপনার পাসওয়ার্ড ভুলে গেছেন ?', 'Olvidaste tu contraseña ?', 'نسيت كلمة المرور ؟', 'Mot de passe oublié ?', '忘记密码 ？'),
(889, 'sign_in_with_facebook', 'Sign In With Facebook', 'ফেসবুকে সাইন - ইন করুন', 'Iniciar sesión usando Facebook', 'قم بتسجيل الدخول باستخدام الفيسبوك', 'Connectez-vous avec Facebook', '请用facebook'),
(890, 'sign_in_with_google', 'Sign In With Google', 'গুগল সাইন ইন', 'inicia sesión con Google', 'تسجيل الدخول مع جوجل', 'connectez-vous avec Google', '在与谷歌'),
(891, 'submit', 'Submit', 'জমা', 'enviar', 'عرض', 'soumettre', '提交'),
(892, 'already_a_member_?_click_to_', 'Already A Member ? Click To ', 'ইতিমধ্যে সদস্য? </font><font>ক্লিক করুন', 'Ya eres usuario ? </font><font>haga clic para', 'عضوا فعلا ؟ </font><font>انقر ل', 'Déjà membre ? </font><font>cliquez pour', '已经是会员 ？</font><font>点击'),
(893, 'as_customer', 'As Customer', 'গ্রাহক হিসাবে', 'como cliente', 'كما العملاء', 'en tant que client', '为客户'),
(894, '_or_', ' Or ', ' অথবা ', ' o ', ' أو ', ' ou ', ' 要么 '),
(895, 'sign_up', 'Sign Up', 'নিবন্ধন করুন', 'Regístrate', 'سجل', 's''inscrire', '注册'),
(896, 'as_vendor', 'As Vendor', 'বিক্রেতা হিসাবে', 'como proveedor', 'كما بائع', 'en tant que vendeur', '（作为卖方）'),
(897, 'registering..', 'Registering..', 'নিবন্ধনের ..', 'registrarse ..', 'تسجيل ..', 'enregistrement..', '注册..'),
(898, 'register', 'Register', 'নিবন্ধন', 'registro', 'تسجيل', 'registre', '寄存器'),
(899, 'already_a_vendor_?_click_to_', 'Already A Vendor ? Click To ', 'ইতিমধ্যে একটি বিক্রেতা? </font><font>ক্লিক করুন', 'ya un vendedor? </font><font>haga clic para', 'بالفعل بائع؟ </font><font>انقر ل', 'déjà un fournisseur? </font><font>cliquez pour', '已供应商？</font><font>点击'),
(900, 'not_a_member_yet_?_click_to_', 'Not A Member Yet ? Click To ', 'এখনো সদস্য নন ? </font><font>ক্লিক করুন', 'No eres miembro todavía ? </font><font>haga clic para', 'لست عضوا بعد ؟ </font><font>انقر ل', 'Pas encore membre ? </font><font>cliquez pour', '还不是会员？</font><font>点击'),
(901, 'back_to_login', 'Back To Login', 'প্রবেশ করতে পেছান', 'atrás para iniciar sesión', 'العودة لتسجيل الدخول', 'retour connexion', '回到登录'),
(902, 'reset_compare_list', 'Reset Compare List', 'তালিকা তুলনা রিসেট', 'restablecer la lista de comparación', 'إعادة تعيين قائمة المقارنة', 'réinitialiser la liste de comparaison', '复位对比清单'),
(903, 'choose_a_product', 'Choose A Product', 'একটি পণ্য চয়ন', 'elegir un producto', 'اختيار المنتج', 'choisir un produit', '选择一个产品'),
(904, 'my_cart', 'My Cart', 'আমার ট্রলি', 'mi carrito', 'سلتي', 'mon panier', '我的车'),
(905, '1', '1', '1', '1', '1', '1', '1'),
(906, 'orders', 'Orders', 'আদেশ', 'pedidos', 'أوامر', 'ordres', '命令'),
(907, '2', '2', '2', '2', '2', '2', '2'),
(908, 'delivery_address', 'Delivery Address', 'সরবরাহের ঠিকানা', 'dirección de entrega', 'عنوان التوصيل', 'adresse de livraison', '邮寄地址'),
(909, '3', '3', '3', '3', '3', '3', '3'),
(910, 'payments_options', 'Payments Options', 'পেমেন্ট অপশন', 'opciones de pago', 'خيارات الدفع', 'Options de paiement', '支付选项'),
(911, 'cancel_order', 'Cancel Order', 'আদেশ বাতিল', 'cancelar orden', 'الغاء الطلب', 'annuler la commande', '取消订单'),
(912, 'place_order', 'Place Order', 'জায়গা অর্ডার', 'realizar pedido', 'أمر مكان', 'Passer la commande', '下订单'),
(913, 'my_profile', 'My Profile', 'আমার প্রোফাইল', 'mi perfil', 'ملفي الشخصي', 'mon profil', '我的简历'),
(914, 'wishlist', 'Wishlist', 'ইচ্ছেতালিকা', 'Lista de deseos', 'مفضلة', 'Liste de souhaits', '愿望清单'),
(915, 'unit_price', 'Unit Price', 'একক দাম', 'precio unitario', 'سعر الوحدة', 'prix unitaire', '单价'),
(916, 'change_choices', 'Change Choices', 'পরিবর্তন পছন্দ', 'opciones de cambio', 'خيارات التغيير', 'choix de changement', '变化的选择'),
(917, 'shopping_cart', 'Shopping Cart', 'বাজারের ব্যাগ', 'carrito de compras', 'عربة التسوق', 'Panier', '购物车'),
(918, 'coupon_discount', 'Coupon Discount', 'কুপন ডিসকাউন্ট', 'cupón de descuento', 'قسيمة خصم', 'bon de réduction', '优惠券折扣'),
(919, 'enter_your_coupon_code_if_you_have_one', 'Enter Your Coupon Code If You Have One', 'যদি কেউ থাকেন আপনার কুপন কোড লিখুন', 'introduzca el código de cupón si usted tiene uno', 'إدخال رمز القسيمة إذا كان لديك واحدة', 'entrez votre code de coupon si vous en avez un', '输入您的优惠券代码，如果你有一个'),
(920, 'apply_coupon', 'Apply Coupon', 'কুপন প্রয়োগ করুন', 'Aplicar cupón', 'تطبيق القسيمة', 'Appliquer Coupon', '申请优惠券'),
(921, 'postcode/ZIP', 'Postcode/ZIP', 'পিন কোড / জিপ', 'código postal / postal', 'الرمز البريدي / الرمز البريدي', 'code postal / ZIP', '邮编/ ZIP'),
(922, 'ship_to_different_address_for_invoice', 'Ship To Different Address For Invoice', 'চালান জন্য বিভিন্ন ঠিকানায় জাহাজ', 'nave a otra dirección para la factura', 'سفينة إلى عنوان مختلف عن فاتورة', 'navire à l''adresse différente pour la facture', '船到不同的地址发票'),
(923, 'paypal', 'Paypal', 'পেপাল', 'paypal', 'باي بال', 'paypal', '贝宝'),
(924, 'stripe', 'Stripe', 'ডোরা', 'raya', 'شريط', 'bande', '条纹'),
(925, 'invoice_paper', 'Invoice Paper', 'চালান কাগজ', 'el papel de la factura', 'ورقة الفاتورة', 'facture papier', '发票纸'),
(926, 'invoice_no', 'Invoice No', 'চালান নং', 'factura no', 'رقم الفاتورة', 'facturera pas', '发票号码'),
(927, 'client_information:', 'Client Information:', 'ক্লায়েন্ট তথ্য:', 'información del cliente:', 'معلومات العميل:', 'informations sur le client:', '客户资料：'),
(928, 'first_name:', 'First Name:', 'প্রথম নাম:', 'nombre de pila:', 'الاسم الاول:', 'Prénom:', '名字：'),
(929, 'last_name:', 'Last Name:', 'নামের শেষাংশ:', 'apellido:', 'الكنية:', 'nom de famille:', '姓：'),
(930, 'peyment_details_:', 'Peyment Details :', 'peyment বিবরণ:', 'peyment detalles:', 'تفاصيل PEYMENT:', 'détails peyment:', 'peyment详细信息：'),
(931, 'payment_status_:', 'Payment Status :', 'লেনদেনের অবস্থা :', 'estado de pago :', 'حالة السداد :', 'statut de paiement :', '支付状态 ：'),
(932, 'payment_method_:', 'Payment Method :', 'মূল্যপরিশোধ পদ্ধতি :', 'método de pago :', 'طريقة الدفع او السداد :', 'mode de paiement :', '付款方法 ：'),
(933, 'invoice', 'Invoice', 'চালান', 'factura', 'فاتورة', 'facture d''achat', '发票'),
(934, 'billed_to', 'Billed To', 'বিল', 'facturado a', 'وصفت ل', 'facturé à', '付款人'),
(935, 'shipped_to', 'Shipped To', 'বিক্রী', 'enviado a', 'تم شحنها إلي', 'expédiés à', '运到'),
(936, 'order_date', 'Order Date', 'অর্ডারের তারিখ', 'fecha de orden', 'تاريخ الطلب', 'date de commande', '订购日期'),
(937, 'order_history', 'Order History', 'অর্ডার ইতিহাস', 'Historial de pedidos', 'تاريخ الطلب', 'Historique des commandes', '订单历史'),
(938, 'downloads', 'Downloads', 'ডাউনলোড', 'descargas', 'التنزيلات', 'téléchargements', '下载'),
(939, 'edit_profile', 'Edit Profile', 'প্রোফাইল সম্পাদনা', 'Editar perfil', 'تعديل الملف الشخصي', 'modifier le profil', '编辑个人资料'),
(940, 'support_ticket', 'Support Ticket', 'সমর্থন টিকেট', 'boleto de apoyo', 'بطاقة الدعم', 'ticket de support', '支持票'),
(941, 'change_profile_picture', 'Change Profile Picture', 'প্রোফাইল ছবি পরিবর্তন', 'cambiar foto de perfil', 'تغيير الصورة الشخصية', 'modifier la photo de profil', '更改资料图片'),
(942, 'profile_picture_saved_successfully!', 'Profile Picture Saved Successfully!', 'প্রোফাইল ছবি সফলভাবে সংরক্ষিত!', 'foto de perfil guardado correctamente!', 'الصورة الشخصية المحفوظة بنجاح!', 'photo de profil enregistré avec succès!', '资料图片保存成功！'),
(943, 'edit_failed!', 'Edit Failed!', 'সম্পাদনা ব্যর্থ হয়েছে!', 'edición no!', 'تحرير فشل!', 'edit a échoué!', '编辑失败！'),
(944, 'try_again!', 'Try Again!', 'আবার চেষ্টা কর!', '¡Inténtalo de nuevo!', 'حاول ثانية!', 'réessayer!', '再试一次！'),
(945, 'save_changes', 'Save Changes', 'পরিবর্তনগুলোর সংরক্ষন', 'guardar cambios', 'حفظ التغييرات', 'Sauvegarder les modifications', '保存更改'),
(946, 'profile_information', 'Profile Information', 'জীবন তথ্য', 'información del perfil', 'معلومات الملف الشخصي', 'Informations sur le profil', '档案信息'),
(947, 'last_7_days', 'Last 7 Days', 'গত 7 দিনে', 'Los últimos 7 días', '7 أيام الماضية', 'les 7 derniers jours', '过去7天'),
(948, 'last_30_days', 'Last 30 Days', 'শেষ 30 দিন', 'últimos 30 días', 'أخر 30 يوم', 'les 30 derniers jours', '最近30天'),
(949, 'wished_products', 'Wished Products', 'আকাঙ্ক্ষিত পণ্য', 'productos deseados', 'منتجات تمنى', 'produits souhaités', '希望产品'),
(950, 'user_since', 'User Since', 'ব্যবহারকারী থেকে', 'usuario desde', 'مستخدم منذ', 'utilisateur depuis', '用户自'),
(951, 'last_login', 'Last Login', 'গত লগইন', 'último acceso', 'آخر تسجيل دخول', 'Dernière connexion', '上次登录'),
(952, 'contact_no', 'Contact No', 'যোগাযোগের নম্বর', 'póngase en contacto con ningún', 'رقم الاتصال', 'contactez pas', '联系方式'),
(953, 'your_wishlist', 'Your Wishlist', 'আপনার ইচ্ছা তালিকা', 'tu lista de deseos', 'سلة المفضلة', 'votre liste', '您的愿望清单'),
(954, 'availability', 'Availability', 'উপস্থিতি', 'disponibilidad', 'توفر', 'disponibilité', '可用性'),
(955, 'purchase', 'Purchase', 'ক্রয়', 'compra', 'شراء', 'achat', '采购'),
(956, 'available', 'Available', 'সহজলভ্য', 'disponible', 'متاح', 'disponible', '可用的'),
(957, 'your_order_history', 'Your Order History', 'আপনার অর্ডার ইতিহাস', 'su historial de pedidos', 'تاريخ طلبك', 'historique de vos commandes', '您的订单历史记录'),
(958, 'your_downloads', 'Your Downloads', 'আপনার ডাউনলোড', 'sus descargas', 'برامجك', 'vos téléchargements', '您的下载'),
(959, 'downloading..', 'Downloading..', 'ডাউনলোডিং ..', 'descargan ..', 'تحميل ..', 'téléchargement en cours..', '下载..'),
(960, 'download_permission_denied', 'Download Permission Denied', 'ডাউনলোড অনুমতি অস্বীকার', 'Descarga permiso denegado', 'تحميل تم رفض الإذن', 'téléchargement permission refusée', '下载权限被拒绝'),
(961, 'personal_info', 'Personal Info', 'ব্যাক্তিগত তথ্য', 'información personal', 'معلومات شخصية', 'Informations personnelles', '个人信息'),
(962, 'change_your_profile_information', 'Change Your Profile Information', 'আপনার প্রোফাইলের তথ্য পরিবর্তন', 'cambiar la información de su perfil', 'تغيير معلومات الملف الشخصي', 'modifier vos informations de profil', '更改您的个人信息'),
(963, 'address 1', 'Address 1', 'ঠিকানা 1', 'Dirección 1', 'العنوان 1', 'Adresse 1', '地址1'),
(964, 'address 2', 'Address 2', 'ঠিকানা ২', 'dirección 2', 'العنوان 2', 'Adresse 2', '地址2'),
(965, 'skype', 'Skype', 'স্কাইপ', 'Skype', 'سكايب', 'skype', 'Skype的'),
(966, 'google_plus', 'Google Plus', 'গুগল প্লাস', 'google plus', 'جوجل بلس', 'google plus', '谷歌加'),
(967, 'facebook', 'Facebook', 'ফেইসবুক', 'Facebook', 'فيس بوك', 'Facebook', 'Facebook的'),
(968, 'info_update_unsuccessful!', 'Info Update Unsuccessful!', 'তথ্য আপডেট অসফল!', 'información de actualización sin éxito!', 'معلومات تحديث تنجح!', 'Info mise à jour échoue!', '信息更新不成功！'),
(969, 'info_updated_successfully!', 'Info Updated Successfully!', 'তথ্য সফলভাবে আপডেট!', 'información actualizada correctamente!', 'معلومات محدثة بنجاح!', 'Renseignements mis à jour avec succès!', '信息更新成功！'),
(970, 'change_your_password', 'Change Your Password', 'আপনার পাসওয়ার্ড পরিবর্তন করুন', 'cambia tu contraseña', 'غير كلمة المرور الخاصة بك', 'changez votre mot de passe', '更改您的密码'),
(971, 'old_password', 'Old Password', 'পুরাতন পাসওয়ার্ড', 'Contraseña anterior', 'كلمة المرور القديمة', 'ancien mot de passe', '旧密码'),
(972, 'new_password', 'New Password', 'নতুন পাসওয়ার্ড', 'nueva contraseña', 'كلمة السر الجديدة', 'nouveau mot de passe', '新密码'),
(973, 'confirm_new_password', 'Confirm New Password', 'নিশ্চিত কর নতুন গোপননম্বর', 'confirmar nueva contraseña', 'تأكيد كلمة المرور الجديدة', 'confirmer le nouveau mot de passe', '确认新密码'),
(974, 'password_change_unsuccessful!', 'Password Change Unsuccessful!', 'পাসওয়ার্ড পরিবর্তন অসফল!', 'cambio de contraseña incorrecto!', 'تغيير كلمة المرور غير ناجحة!', 'changement de mot de passe échoue!', '密码修改成功！'),
(975, 'password_changed_successfully!', 'Password Changed Successfully!', 'পাসওয়ার্ড সফলভাবে পরিবর্তন!', '¡Contraseña cambiada con éxito!', 'تم تغيير الرقم السري بنجاح!', 'Le mot de passe a été changé avec succès!', '密码修改成功！'),
(976, 'all_messages', 'All Messages', 'সব বার্তা', 'todos los mensajes', 'جميع الرسائل', 'tous les messages', '所有消息'),
(977, 'create_ticket', 'Create Ticket', 'টিকিট তৈরি', 'crear un billete', 'إنشاء تذكرة', 'créer billet', '创建票'),
(978, 'ticket_subject', 'Ticket Subject', 'টিকেট বিষয়', 'en su asunto', 'تذكرة الموضوع', 'sujet du ticket', '单主题'),
(979, 'comment', 'Comment', 'মন্তব্য', 'comentario', 'التعليق', 'commentaire', '评论'),
(980, 'creating...', 'Creating...', 'তৈরি ...', 'la creación de ...', 'إنشاء...', 'la création ...', '创建...'),
(981, 'ticket_created_successfully', 'Ticket Created Successfully', 'টিকেট সফলভাবে তৈরি', 'ticket creado con éxito', 'تذكرة إنشاؤها بنجاح', 'ticket créé avec succès', '票成功创建'),
(982, 'ticket_creation_unsuccessful', 'Ticket Creation Unsuccessful', 'টিকেট সৃষ্টি অসফল', 'la creación de tickets sin éxito', 'إنشاء تذكرة ناجحة', 'création de billets infructueuses', '单创建不成功'),
(983, 'create', 'Create', 'সৃষ্টি', 'crear', 'خلق', 'Créer', '创建'),
(984, 'your_message', 'Your Message', 'তোমার বার্তা', 'tu mensaje', 'رسالتك', 'votre message', '你的信息'),
(985, 'replying...', 'Replying...', 'জবাব ...', 'respondiendo ...', 'الرد ...', 'répondre ...', '回复...'),
(986, 'reply_sent_successfully', 'Reply Sent Successfully', 'উত্তর সফলভাবে পাঠানো', 'Respuesta enviada con éxito', 'الرد إرسالها بنجاح', 'réponse envoyé avec succès', '回复发送成功'),
(987, 'unsuccessful', 'Unsuccessful', 'ব্যার্থ', 'fracasado', 'غير ناجح', 'infructueux', '不成功'),
(988, 'vendor_public_home', 'Vendor Public Home', 'বিক্রেতা পাবলিক হোম', 'casa pública proveedor', 'البيت العام الباعة من', 'accueil du public fournisseur', '供应商的众家'),
(989, 'member_since', 'Member Since', 'সদস্য থেকে', 'Miembro desde', 'عضو منذ', 'membre depuis', '会员自'),
(990, 'vendor_rating', 'Vendor Rating', 'বিক্রেতার রেটিং', 'calificación de proveedor', 'تصنيفهم', 'Note fournisseur', '卖方评级'),
(991, 'about_vendor', 'About Vendor', 'বিক্রেতা সম্পর্কে', 'sobre el vendedor', 'حول بائع', 'à propos de fournisseur', '有关供应商'),
(992, 'find_location', 'Find Location', 'অবস্থান খুঁজে', 'encontrar la ubicación', 'العثور على الموقع', 'trouver l''emplacement', '找到位置'),
(993, 'filters', 'Filters', 'ফিল্টার', 'filtros', 'مرشحات', 'filtres', '过滤器'),
(994, 'vendor_featured_product', 'Vendor Featured Product', 'বিক্রেতার বৈশিষ্ট্যযুক্ত পণ্য', 'proveedor del producto ofrecido', 'بائع المنتج المميز', 'fournisseur produit vedette', '供应商的特色产品'),
(995, 'added_to_wishlist', 'Added To Wishlist', NULL, NULL, NULL, NULL, NULL),
(996, 'all_category', 'All Category', NULL, NULL, NULL, NULL, NULL),
(997, 'by', 'By', NULL, NULL, NULL, NULL, NULL),
(998, 'sold_by', 'Sold By', NULL, NULL, NULL, NULL, NULL),
(999, 'last_updated', 'Last Updated', NULL, NULL, NULL, NULL, NULL),
(1000, 'review(s)', 'Review(s)', NULL, NULL, NULL, NULL, NULL),
(1001, 'add_your_review', 'Add Your Review', NULL, NULL, NULL, NULL, NULL),
(1002, 'view_details', 'View Details', NULL, NULL, NULL, NULL, NULL),
(1003, 'related_products', 'Related Products', NULL, NULL, NULL, NULL, NULL),
(1004, 'full_description', 'Full Description', NULL, NULL, NULL, NULL, NULL),
(1005, 'additional_specification', 'Additional Specification', NULL, NULL, NULL, NULL, NULL),
(1006, 'reviews', 'Reviews', NULL, NULL, NULL, NULL, NULL),
(1007, 'color_:', 'Color :', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_list`
--

CREATE TABLE IF NOT EXISTS `language_list` (
`language_list_id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `db_field` varchar(300) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language_list`
--

INSERT INTO `language_list` (`language_list_id`, `name`, `db_field`, `status`) VALUES
(1, 'English', 'english', 'ok'),
(2, 'বাংলা', 'Bangla', 'ok'),
(3, 'Spanish', 'Spanish', 'no'),
(4, 'Arabic', 'Arabic', 'ok'),
(5, 'French', 'French', 'ok'),
(6, 'Chinese', 'Chinese', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE IF NOT EXISTS `logo` (
`logo_id` int(11) NOT NULL,
  `name` longtext
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`logo_id`, `name`) VALUES
(2, ''),
(3, ''),
(46, ''),
(58, ''),
(60, ''),
(62, ''),
(69, ''),
(70, ''),
(71, ''),
(72, ''),
(73, ''),
(74, ''),
(75, ''),
(76, '');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE IF NOT EXISTS `membership` (
`membership_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `timespan` varchar(50) DEFAULT NULL,
  `pay_interval` varchar(50) DEFAULT NULL,
  `product_limit` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`membership_id`, `title`, `price`, `timespan`, `pay_interval`, `product_limit`) VALUES
(1, 'Silver', '300', '30', '', 10),
(2, 'Platinum', '3500', '30', '', 50),
(7, 'Gold', '2000', '30', NULL, 25);

-- --------------------------------------------------------

--
-- Table structure for table `membership_payment`
--

CREATE TABLE IF NOT EXISTS `membership_payment` (
`membership_payment_id` int(11) NOT NULL,
  `vendor` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `details` longtext,
  `membership` int(11) DEFAULT NULL,
  `method` varchar(30) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_payment`
--

INSERT INTO `membership_payment` (`membership_payment_id`, `vendor`, `timestamp`, `amount`, `details`, `membership`, `method`, `status`) VALUES
(6, 3, 1474278958, 3500, '{"mc_gross":"43.75","protection_eligibility":"Ineligible","address_status":"confirmed","payer_id":"QXCY8C6X8J4VG","tax":"0.00","address_street":"1 Main St","payment_date":"03:04:24 Sep 19, 2016 PDT","payment_status":"Pending","charset":"windows-1252","address_zip":"95131","first_name":"Active","address_country_code":"US","address_name":"Active IT","notify_version":"3.8","custom":"6","payer_status":"verified","business":"kadir_bm@yahoo.com","address_country":"United States","address_city":"San Jose","quantity":"1","verify_sign":"A6Fyo.RG2CmUHAdbJ1HeGZnSj3AWAuYRD2vHV92buB9WYMNNbxSvf6Un","payer_email":"system@supershop.com","txn_id":"6PN17817M0416733P","payment_type":"instant","last_name":"IT","address_state":"CA","receiver_email":"kadir_bm@yahoo.com","pending_reason":"unilateral","txn_type":"web_accept","item_name":"","mc_currency":"USD","item_number":"","residence_country":"US","test_ipn":"1","handling_amount":"0.00","transaction_subject":"","payment_gross":"43.75","shipping":"0.00","ipn_track_id":"26ff7ba5f0ef"}', 2, 'paypal', 'paid'),
(7, 5, 1474568814, 300, '{"mc_gross":"3.75","protection_eligibility":"Ineligible","address_status":"confirmed","payer_id":"QXCY8C6X8J4VG","tax":"0.00","address_street":"1 Main St","payment_date":"11:41:38 Sep 22, 2016 PDT","payment_status":"Pending","charset":"windows-1252","address_zip":"95131","first_name":"Active","address_country_code":"US","address_name":"Active IT","notify_version":"3.8","custom":"7","payer_status":"verified","business":"kadir_bm@yahoo.com","address_country":"United States","address_city":"San Jose","quantity":"1","verify_sign":"A.Z5yEeSJElINVLnLNYfrb750vgiAJdLRn38Ub6I-sD-cMvsd25mBIx-","payer_email":"system@supershop.com","txn_id":"1W646161MB662172C","payment_type":"instant","last_name":"IT","address_state":"CA","receiver_email":"kadir_bm@yahoo.com","pending_reason":"unilateral","txn_type":"web_accept","item_name":"","mc_currency":"USD","item_number":"","residence_country":"US","test_ipn":"1","handling_amount":"0.00","transaction_subject":"","payment_gross":"3.75","shipping":"0.00","ipn_track_id":"ef0d66381cdd0"}', 1, 'paypal', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
`page_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `parmalink` varchar(100) DEFAULT NULL,
  `content` longtext,
  `parts` longtext,
  `tag` longtext,
  `fixed` varchar(10) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`page_id`, `status`, `page_name`, `parmalink`, `content`, `parts`, `tag`, `fixed`) VALUES
(11, 'ok', 'new page1', 'new_page1', NULL, '[{"size":"3","type":"widget","content":"<p><br><\\/p>","widget":"product_categories,advance_search,special_products"},{"size":"9","type":"content","content":"<h2><span style=\\"font-family: inherit; color: rgb(255, 0, 0); vertical-align: super; font-weight: bold;\\">This is new page<\\/span><\\/h2>\\r\\n<p>Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur?<\\/p>\\r\\n<img class=\\"img-responsive\\" src=\\"data:image\\/jpeg;base64,\\/9j\\/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP\\/sABFEdWNreQABAAQAAAA8AAD\\/4QMqaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI\\/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjUtYzAxNCA3OS4xNTE0ODEsIDIwMTMvMDMvMTMtMTI6MDk6MTUgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QjQxNjQ1RTM3MTE1MTFFNjk4NDhBQTQ5RUREM0E4QjgiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QjQxNjQ1RTQ3MTE1MTFFNjk4NDhBQTQ5RUREM0E4QjgiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCNDE2NDVFMTcxMTUxMUU2OTg0OEFBNDlFREQzQThCOCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCNDE2NDVFMjcxMTUxMUU2OTg0OEFBNDlFREQzQThCOCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI\\/Pv\\/uACZBZG9iZQBkwAAAAAEDABUEAwYKDQAAOJ0AAEtcAAB8gQAAybX\\/2wCEAAYEBAQFBAYFBQYJBgUGCQsIBgYICwwKCgsKCgwQDAwMDAwMEAwODxAPDgwTExQUExMcGxsbHB8fHx8fHx8fHx8BBwcHDQwNGBAQGBoVERUaHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fH\\/\\/CABEIAggBhQMBEQACEQEDEQH\\/xADuAAABBQEBAQAAAAAAAAAAAAABAAIDBAUGBwgBAAMBAQEBAAAAAAAAAAAAAAABAgMEBQYQAAEEAQIFAwIGAwACAwEAAAEAEQIDBBASICExEwUwIhRAMkEjMyQVBlBCNEM1YEQWJREAAQIDAwkFBgUCBQQDAAAAAQACESEDMUESECAwUWFxIjIEgZFCUhNAobHBciPhYoIzFNGSUPBDUyTxomMFczREEgACAQIHAQEAAAAAAAAAAABQESGAAQAQIGBwkGGgcRMBAAIBAwMEAgMBAQEBAAAAAQARIRAxQVFhcSCBkaEwsfDB0eFA8VD\\/2gAMAwEAAhEDEQAAAfRdMyDgIIAINIHJuBJkECBAQQIECBAgQIECBAhIaEgQAECBAgQBpAgRSTq6ZNy2grO1ScmE85lbPR6HA5kdKFj4d\\/KrUklBYBKh9ISFiAgAIIEBBAgTACBAgQIECBAgAIQBMeMIoEzDpJNbFSkcHtlCqYEQwqQSNWIp2V7Od6yHiNFjaJ7mthogYxCTEAAA4CD07EudFxpzSBzHAgAEAAQAYOWkQrNc256FPEFTuZXEY8nfBMe1VThTQW2JHPZ7a\\/N09Bm3gwK6qQJEkii6qNsEpJYuiqbaLWk1uZvUca++T6SAsQIECBAgQMB4IKIcaLtWsRyy4c5jax9skDmUk4wIXgIuZjbT5OreyqQGsrzUiJBEKrdWnSS6HDW3ncLGhUq8i46qsNJzqbZvoQIECBAgQIEEYR5kllSjiye2DEctvOw5jbx9sQDmom6ssBfQ4OZnTS5Ovfzb2Rp1s6kCUC1WbrUWUbmGrEwhpU+hz06b+vHf0i7UuYgLEAYUIECBAySLmp+6r6rlEusawiRpnbFEzI2yQpqVmzORXl3UPHzzqzwdu9m3gBwRT0PaLVZlantQ7eehAhj0661ww3Zz6jo5rly4ADmNZTjW3eT0IECCOSHBv2INFy4usFgkrTOyEIsvbJ7UtDamuCC3FTOsDQHm925m5EOZBnT2PEWQUQs3cbim2DtOWq660wy8zE9D7vPuaSgQIEDRkRBAgQAEAZSDmxdULDEbznahDO2xcxzUVy0CFyLKObdWuLt3cyQAOvFOE9hZXalT089K0VWWl+sqOe7Nr53HaljPpHf5uhtmgQIECBAgQIECBAGUGufc9RLxnKqJxV2V98oROagajZIK9FuT52izx9u7m5QaOtDcDwDMLRb2dWstIR1M9LTkRU+xxmO9bJ9718Ox1YIECBAgQIECBAgQNZnNYOuXU46ZDl2mdlVWJq75wqRSqBDG84XjOUOcbtcvXvZuQGsqjlRPIylg2dVz61MtK1CysFQS+Xt5U1sSdtty7PZzytIECBAgQIECBAgazKc4m\\/P1XP0Y9S+821OUKzckGtCNOh5uqwGfpln64c63pYdW5DIMBUSIUDWV4ubn2z40dpNfDWW3nTXOaqbGtAnqb59Xqwt6wgQIECBAgQIECBrMipx+jm6nl6cqoFZxMjTG2UTlyubPTf5+h7MzXKnphz1PR5uraluCcLYRBUQJY59s\\/PWrNaGuWbj0TbHO9FM5LvLOCDfMug7+S1pIY1DgcCBAgQIECBjMqoyejl6fl7KDmveTwKqjvhTeehl0Qjs8\\/VZpV9uZtZ87Re5+vVglDTTsshDOls5d2p5EbWHCsrRvB6GeN0WOKdnlG4GpcanZhh9O+F6PlTYPs+Do1aRBAgQIGoLK7WfUYm2HW8\\/VUFT0wcnC3Q6OXMI1I2hKyM+m3Rc043E861uc3fPKNZbEdGiqgar4ax5aUZqtdxBi+nd3M05w5fo30+bPQ5ixxE+iu9GPm3t8rOrztzK+p4Orbw2mVITE3ggpE0dIZqo8jHvPtcenKqKt4JGfVVNuXlTn0StldOVGpdVNOB+pFFd\\/5X0GffPh93j9Aunby6XOMzzPRdoqKvI7NLlrEolTl1rGg65ZUOKtXzlN1RLU0fY8k6c8g6bWpFW89YGow1Mtb2W0F48N2+Zaw79rHbOrPrMOvH25s54ibqGmTcc8s5njpGuZl0PjWDr8vv8Aoyz1r1vjfR44YPrfNzLa5nrozpQ8X2rPdlma6N3b24gyHexni7TSRxk+Xr0\\/LhX6U5rQ9Dycfq4oB81nh1Wm+vKYyVAHJGpRxG3Doc\\/pdPnrSvPp+fr53fkquLE3FOnKdE83ExZQZpy1tK6mvF03ZyYuO3d+f7e1j1qo826fOxtuXrOfq0uD2oPRnpNccbfZ6UcLCZq3Ubu4s8zkNfizhtrSYunxuW6OKKdo4x2t419aaKQUlzy2WsGd53Pr2T36iaoC7PPo5HXlqtXAequbT59tjznLo3KmrQyQkOqGlBO\\/G3ofN6O3pPkPT53Q5bdTl6WV2XLuX3FStK\\/Liuvo0c85oiJLAyt\\/LnV10uvDmX5ee8W1QSkcim6pcy\\/1YZvNvHnowfa1r1klIXaxvxd8+YFQXQbRgdk8tz1mcliWFTkmNFoJhNyLK09rw9GjccXpydOelkdFz7OcFOdZ7WdCxM08sZpMDK8qM9rXVq5eMjzplMdDAeSKYTQjSNDYctLs726mCm13EbcVWFEHw9nRee+zz4fndNXnoICZQnJG1CGUkHeZdvfTrz9vJ6Lol7HSaWWWTpu6J2XnHJxcVphSzrl55u326Wzz+f5+a8TRNKkqGtiWUlSfajirGi7bS+lyKYu5jbi7xponk17XDetz8l5ncyWkIABBAkIZEh7616vTuELPMcfTXSqptNd3HDDq9554tdGfzY62zxuc5lcvY6dlx48CvOYAQgLACQGEHNRocLuLfRxNRrus9eO0xqIsIv2uU9Lmxefdo2JtBqaBICetldzO6rL83LrvRx0tVz8ne2kXb036vPCqnmdPQ3NUMs9iIxiudOTsr7ZRcm\\/NouEMIQBABAWBDEOZ3jnbUwNdxlryOuNdzbTvsk2yiYgAIA0UEAG3ydr5pAQIEABDArTJ16aL1uE4i2qZLQqKM1XkN8OrXa8V3TzrXT5rAaAGwTWNGAaJgBPW5ujTlMa3ufoxt+dNTzU6rM2iEHA9MgQIEL2Wl7LUAgQOBAAIUE69PiL7Y3qJNa1EnWQ4nTODMr0LrnRWO6\\/LQBgEgQIECBA1leaszTXOjjtma4oJlSRwXZlSzcEU8JU3tEUo\\/ScN5E0BBAQQIKqbW8vPXiOnq6OnGh4JDWQIkrz6p36ARImvx05DAAAg4CABgALWV35UbXQZbc3pjVERuqIdTGFl46FDhlDGuuV9hGoAggIIECDLmr7OYxz5Xr9LpabgaDQaiIdE5HXOidjZVF+ZFWAFIDWRAGFgRCDQ28dtRQ1nUZbcxphQFeVaQ6O0YosnHQg1VKmmvTJ1lBAQQIECCAdWSxS5ZnM36HR25ERhCORKFOhKu6+PZw9ba5li9HDD0cpB4mMgZGxNRhCELnax6NSZhZ1We3P3hludGL2Fpz22OaiBOQBOkyvaF0s2gQEEBAAQyZq7U0Tbn4XL79XSXcqRQ8UgmBQTkrybmPTtc3Tm6c9Tr4mpFo0g1A05lFVWc1mtrHo0JWPS2p0hrKm4vTW3nvla5UEMFMOKdHLTtJbwQECCBAgiHlw9a5zMNc9S97Yt3k9UVKio4qNa1TlvPocZ66la8\\/0mpUO\\/zY5TgktMcoLk1WHi65ZiNfHe6lzzUS00nnM56CLsTpXuYAAi3BNas3rpoABAggQIM2ae1cpZWGlVGnlXlirmPR5rPTmaVhmppnPJe59fQIIOfpPP0N7eGNTEEjlNNZZlpPD2xy5d+NZiecc0J13qiyRvzZmn2NQ4AMzemm8ACAggIIEGRNX6l7rFjY4S+H5qzmfT5L\\/VnXbtOdXSKM10PFv6fz0B189Y3N9w0HgmJDgIVmq8lNmftlzmuOPh0dUloOdBVmzWzYkEYC9NSgAQiCGQQIIQoTWlUxRdWXVxqjF8Jc8f6HLY3m\\/vHazOnm+S3m1zb+scmjwxsOtTev0cTxIECBAgjQQzQx98uc2wxcOjsM62BSDpTWprAEU0OfLSKafUytPCSk8EDAz5bwvWqmdyE5OGuRz7cFvny3dy3emOn7MO84dXI4fpibl29a5NHMxo6sjHfc0w19uVAAaCQ5kQShiMpaZ85plzcadnjpuskCoi\\/pCGkEdmajiqedoHtEADwfSm0mYT2Zi3umeRx68thvw\\/Xz4HTz6\\/dl03Rj13LpJL4nonW4t\\/T+anszo25bDv6nfg09MUCAAgIRsIYgUdM8PXLks77aL6GaCKUvV1hwyDk7EuUKoNGocYywgAcK3akFl4739MMXj34PHo430OPN0z2\\/Qx0ujPeyNLOuO0O24N+7xp4Uc9K1bbN8qBAgAICEQODLDH2ywdMuQy17NraSmjSBVpXMqHjQOTIJqYuQzabtWTHqUg0+aledLC7W2eXw9PA8vRyvo8uLvht92Oz1ZaMGjlXJ1XqHn79FDcFaLc1YuUCAAkECENIBmio6Rk1FeKLLF5FXbx01bQGBJNw3pkLkN1auzzGtqEaTSnzMLqrVR4g5NOP4+g9mHlnocm525b3Thr5U6Xyjr1HwPS2OnDCw6+h6eJo5bgggaAAgmNEWUWoUubqdiXRpCoA9jm2s6NyYAg4HAgo8W9THSrorAS3MoS0nijbtiasqWXRzHH0bfVh4j6fJvdmO10462VNTzstel+V9qrnqc30\\/sedq9fO+pfSQmgAQIGtOHScxhh3GVF6d526mMH47bCsJkCIjQEMzh6c7k3rsjBgAGtJM1IT0XMmk43Ntq6x456\\/Bq92PQ75dDheUFvi6dT571Kboct19HL7vk9RrG9SKAwAgKI6T06TnFtYydIWveU9ZodJX2GWwTcBAiIIMPy+2DK30iwtFhBzUrTmoM7x5rOy019I8k9jgu92HSa59Jz1yRffeb0s8ruzY0a1Dx77XscHPd3N2FxtA0GoQAGMe1m1NRrPVVxBxFcRsYP0PHVAgIICNBlcPTWyuCLhilLlczXMlKSlLSKXOZa5GemszzL2POm78ejvPpsa4sr1vyOzO4ujGy2aGlUSZk\\/scnKa595cWnIBAGmMcilSr1OXUrl6K9LR2xmqIWui5+lAgIIECAjQECEc1BnVfO4s6bFCXILAz1jSqFcP6vCvR59pz1ONcdT9V8H0I4rD5+iMOh6eaLK5Klnp8\\/L1Pb64TNISAMAQqg5pXGXz9N+Sbp57YgO\\/lq0YE4CMoI0BBAQQIECAgkIGs+bB6Utw29uHQ6T0fPXPld5896dzbLE5uiBPoernn1jC8vs2vV463Xlkuet0wAkwAgrjTWbefL49Wwlsa4zVAC\\/h0IEBYUBhQgQEECGQQIECGgcL5wHfhgIOzLe2jp8KxMde28H0tTq58Xm3rTXQdPPZ1nnvO7NXTC56vNnaxLUXrzAIAAVBrM0yws9tXTHUlmlG41efqAEECAgBkSBAgQ0hMIJCYU42fOVLZiqYWt40OrLrsTAw37PwPS1urnyOfetL3ejCzrMEVl+X06\\/fzS+nzyVI1wawCQGbazO0xxs9tPTG8J86AWhlugQJCYkIAMiAyCERoEhAQQEfzxrFweZLubxN1RtzNfl29B+d9TW6ufMx1rzezthY1ktYXlde31c8nVnD1Z2dudl4pgCWNo2UNcLXP1VbzgqXy2zWvOhAAQQIECG5CAAhpCBAkICBDxDecSlDDv9MTbzcFPx7ei\\/PelqdOGdlrWmtnbGa5LVfk1by3f9Pmr9UWdIZ0cYBBLG0bKWmVvm6aGmMVIDgT16QaIkBApoECBAQIyJJpoCIEaF5YacUrano9EHWZA1uDo9I8fsv7Z0MtKed7G2M2kuZT87aHl01fX5GduSbk35Y9MEE0bxhS0xt83XQ2wbUvVVpq9pmAIJMocBVFCGBlBCYHjQQoQ0ghwVvzRtqNLog6yyX1XmdXofDvPcUsdc\\/PTZ2xmuS1n+T0qXp+nyu9HCKas6xS6OSREsbRTWbUaWWmZcaA3J47nX5twgsSEBBzCBYhQsQX7T2MCqgA5pzOZpeO6qOXe2iTWWw\\/QeDo7Hh3e1Rx1zMtdnbCxpLhZXjdlnfK73YzelzwS7dzDrzsvGWN0VS0xn5umpti9qWazUa+W0bHNBDgIFhAgQAQjlacCEGnAgLXK0\\/G6bJehtD9Zcn6fy10fn9QiqOGuTjrtbY2dIEPP8vptdOVrpyl9PANWGmNV+jilz3SqlpjPz9NbbB9JydWKt8fSAQwgAAANGAIFiqbW+UrEDEECCCMPD9jGC9pMuqEnqPLfX43T5OihhrkY7be2Fm5bi6XDvZ3zsdOcnpYSVMzQCvtyuKE6ZumNzn6M240lUyeAi3zbBiaKaBwPaIOQ4ZEgkpXtJfRmwIENNEPH+mOcZbuZdkyT23i1voj59c3i6cjHbZ2xs1DOeq\\/Nra6cpdZm9LnluXgAjqItcVGmXpne598y411Us1gC2MNUBQASHAkwgAAaNqAxWT6ZwgUOYmOFwWy872nQuX7TSxr2Hj16CGZeXxdWPz77W2Fipg5NIsru9mDqHehjPcTtIGBm6ZnO6Ar4Z4nMA44d3n1AwgAQLAmwADQA0xMcJNXaiUCBYUZc75Bvx3bx4XTy2cb9i4dbsiCtlpz\\/H27WmNm4p8GyC924oD35Xtcng1GDaqBezdOTR0mjLcwhXpLk6QhoPBzCIscCBwPaIiBGgAmoaCGERHRWW3nvdwZvVzNzfrXl9cgSsc1m8nVqTNmoo+fvLpN\\/uwCc3dhM5hyqOKoazS6c7sOtBcuag0xzIAPNsUFD2EEBAtNTQEC0QAICCCuNIaxk9cK0yNuXQ0iHN7MQE3A4BFScu80qpx6aPbjDnUMXF6HMoogAciv14s3zhRqiosYywmwDy6uAgWFNNECCAjckKSGhNE0AxA8poeQ6xNN97GvT5650EuvM8HDIOBY2zj2nuLOuaHVx0XfhBLqY29Dglaz+\\/no6Tvys5kTLAMTs8+hBJuYhBMjQIQGmiBBA0EJgAI2TFecVOLS9hx6bGetZTFrzkCATYxoXOTWXXOBiZI1IwJtBmZLJII3OB347YqAo27YQpnl3QOBqGg5hAiQIACBMc0kRgxgApkMrLopDd080uetVxuzVdqIGIFSAaNoOQRyg6XIiZOcUqVlTMgbQ3qyosqMsocnJydAAiIIZAiexgISAAgIAEDQQBDAZO9ea827eFwWoruMNp03y5GkmkOTcDxNBwNGESBNUtG8m05lai2jH6M2NtQ8LXJ0JD2JBY1MMSCBBoBDmBD2BCBAgch8XWHyxMTWrFblSQINTeEiJs3K0GBqNus0hpqRpAgmuDSs0s\\/aM608ImXOPoEOVojARjINBwFDQc0mkmWESltAJvQ5CVVWo87IS6Q1CTQLN282oYksay1EcVU6JdScx4EHObOksl3tsmJ43Tmy0wLfF0xICb2kCZGmhlEjlzEnLUuaAOBqcSZASxLiVWxMGIcVS0CDkSZuQHIZk5bQYkQbpjRYgApGWLkIu65shwDzOzGBn\\/2gAIAQEAAQUC3BPwOtyf\\/BBFTX+tf3utyflblQhAZ1a+fUvn1L51SObBHNio5kFDIgULAt63retydbluW4Lcty3LctydOnTp06dbluW5bk6dOty3LctyiXU1Oa\\/13NM2hd5d72XX5Vst9yMshb713b13r0J2lCwhDOY4+XKSFpXdkhcVXcu6y+QV8gr5a+YvmL5oXzgvnhfOC+cEMx0L3UZOgFtW1bVtW1bVtW1bVtQitqEVkFoC97m9uQWlAkg7l7u1tCEAjAKUAtgQgFGsKdYa2PvwghpILahFMiFZo6DyMqphShlPI5dYryq5Kt3qVHUetl\\/p1f8AWPtyB7xDkRyb2MgipaBQCmOV49+GhpJfiNZhEKbqjFFUSOUYBTpBA8VDbEW42VXBUx5j05Lcol1l\\/pUP838MnrVIkEcv9G0IXaJUoEGPWCmFePfhhAJlIJuYCZMpohYlIlc3OcVsVuyI7tU4+Wg+LUYyjDqOF+KWkVk\\/p1D91+GV1o6Hp\\/poAmVg57VAIwdZFPuxENCEyATJlMJliQaso9WXk78ikeKhK1eVnCvK8Hd3MKAQGjaFHduHDPpzUXWR9lP\\/AFfhk9aOkun+jJkOSlM6AKARCyeuIObIDhZSCEHMQwd57v3AU9qjaRXnjHzZeJl2L6uJvRyPsp\\/6fwyetPSXT\\/xganQKAUlkg7sMIBCKI1bSaxovIqv7gf3qvjZNEXxiLLY5OEd+Ril4+qVf9tP\\/AE\\/hf1q6S6N+WY6kp0CoKSyfuxENDoAmUumRaywIEUWFUczl1+2c\\/Zui84xlHyW2kYAa7HO2XqlX\\/Zjf9H4Xdaxybk3skUyKmu3ImNE1WCFJZP3YYQCCkVu5hMrByNHcv5Abnn4+T17u5Ri88WEhE+Q8nkYksWd+Xd493h0rLx9Q9Lz7MT9dX\\/dH7Tcy+TLdoVTVvshTALtxV9YCksge\\/DimTIwdDGXaZMpjlRW0rT7IH2YUdtVHKvHk2PmeyGQY5Q8XBlgD8vHO5U+rLpf+lh\\/rK2LqH22QcdgbWROmPLbZCcUZBXTdSWR9+Gn0gFtUxpLTMtERj7vjUckZbKsSDU+UyZlYlYhkY8I9\\/H9ltPKcTzdOFvCBf0ZdL\\/0sP9VTHKHQ9P8AxlP7odDylCwP3AjJ1JZJ92GpSVZdV6TPJ0HQk5fu2Q7fxo5MBZ8aRVmUbR2b3xbW8hbIVGNZeoct\\/syMqyM5+Tt3xyLprDJ7XE+lk+V5\\/K8fJ7ij0j9v4bvy5zZd8boXxa2ZUrrN8brFC1WZAVl26zGnGMbL4qrICquQnysJXICRIrnZKOOI12VZFtXYry6RPHyYW+MwI4GT47Nx4IQl5GPkOz28drK48l1hlXW92rGnNU0SisawbYTcJ1uGt8zEfNg0LRNZUvy\\/Gf8ASVdIhRl7N\\/LuezJlylYXxrijLlKwCZvDfKJJGRNU0XzvqpjVHJ8fXsopO6pQn7XdWz\\/Mc9zNrskLMiumOVjVdvyteFZLHOPOOVdi41+Hg1zl2js8jvhbhR20yLZWHZujmeOolbj48Yq2AgoXjdC8r5U1ZlWNC+xqri25WxceR3QPj5q2G6OFDblLI6RPKT7W\\/b5OQHsm5x7GUsnl3N85fbi87a4DtzMYXbRu8jVZfTvFMY51eyGe1ePmC2Ntu1d2ixRyI5GXDx88FXZ2DRHIoGPVZVZl5sxhu3jKbah8rEhsMqzzzD78Utk5lkYRjmQfKyhsjdLfiydMphjEcp2bIwzYtZnQAz8juW+MLylLliH90s2e1UkFSHs2\\/trsGZOQJVyhYVKySqsYyu9tNphOPlZbLsycp439gw7R3gra6ra\\/KYpw7e9YvC7lkR3K22ELfJ32QRxL7Mm2fesy8zEwMWm6WdLCzLnyZfIVdddWZbYL83EmTdK3fkY0\\/wBx5i\\/8zvMbLyVGfOnK2EeSBR8nzpz95yLyYDLsCtyrdvdk\\/h5K4+zxpPy15STHHmwtvj294+HKMNnl4wUWToFbuTrcUZJ1j+QysdeI8nXmDMwqcrGyMe3Hu8TIzuyPtMh3ac3NyFiePuos+F2K8qmXmI9s4MMadVcZTp242PnfH5wyMS4xsosJuyCK4Z2V3crcVvW9dwruld0qFxjL5RIlJGRIHXwpc3H2+L\\/7F5j7ov25RsXb\\/aHy3tyso2SM06dPxY2TZjX4mTXkUeT8fXl1eEE6s+26qQmIGzMj8bEGDmXG+HluxZO+4X5EqJW21ZNfjMj5EJZhn5Cor5GyWFH2+TBGC6CkgdXToFOnUQ58KGOR9niP+srzH31j2Tj7W\\/IuxxEWBMmTaMmTJkyZf1vJ2w7lZjfZCV+Vd21O1oePorsWb4+7Ihdg5EAfKXjIHblhxzY2YFF9mMvDG6JrA7XS7EINWdSbMMJ0eIa1nn4frk\\/Z4f8A6yvMfdV9tg9n\\/wBfPmwJf0GTJl4WqRyiq\\/bf5WoVzrsIr8fXfkVy\\/eXjysjmWT8xPKyp097Ky8qVd+PKmimeJDxlQ2x95uxOdd2LZfVOuUJMmW1MmTJk2jKPXwwWV9nhv+ory33V\\/bYPy3\\/bZWDKS\\/ipr+Lmv4yxfxtq\\/jbV\\/G2r+NuX8dcsP+u5WVX\\/APks5S\\/q\\/lAqfH5uJi7s3ZKd0sbMhkZHhJS2k324NFfkMilUZ9ORgeOyPKXWnKnstyf3dNouuzIV0+NBeJEoyxu+K52BZtdgy9sltktskxTFMUxXPWPXw45ZYO3wwIyivKQMpVVljUTHt\\/kyqiuxFdiK+PFfGivjRXxor40V8WKhCMIcR5rP8Xi5c7\\/FGjDpNuYvHZsq6rLRca4XXquNFK7NMjOrYvJYdlefVXVCBtqrVETkr+MrX8XWv4utfxda\\/iq1\\/FQX8VBfxMF\\/EQX8PBfxEHxsYVKdW4YlOy8q+vdKFS7fJvabwvkBDJivkRXyIrvxXfC74WN7vRpJJzCDLxuRXfHI+XbZV40BfkRB+MquzWpmS8tifkCuZFNMICq3t2OE4ThOE4TxXtXtXtXtXtUmf\\/Wo\\/mKyTGElI+1\\/YbLFO2wL5FiGRYhkTXyZr5U1XddZOqsVV8eRJoQDVZUvzfDtLG6Ltyku1BdutOpwkVC6cIVFBWdDml\\/nL5y+cvnr56+evnr+QX8iv5EKq\\/uGdjRw7N15WdPbKN5AnmFvky7XxgsqhlsW1MtqZeCxOfoSO+3a5zSPieG5Yo0K2xRtipSmzBR5KKn0lF1sQrXZRpXbWxbEYIxW1YQ53dPH\\/wDSV5Ae6sI0jZ2I9rfyyi42rYVsK2KuiVtlVcaq+O6eyuiKlNl5EbPBeJf40dCQvyluqCNhUu5u2rGrnYuxVEWw9+1NoWR13Ilb1hS53HlgSbJJXkB7h7TCwSrf8uQKsCjFbUI89oXiMfn6F0t9tQaOQfyPPe3wPiBI0RgV2iuwUMcLtQCMIq0VAVSjZCHtMeYyIe7amTBbQjELthzUFKKmm54ivPIX9rIu8jtsyb+4hLcaq9lb\\/lSCnBRgti2cxXKcq64118ds9ldcU3ty4e7y9MJ49PjsSqObl0Y1UvNsD5u4o+V8jOkeRzSYnMlG+vdLxJEpwr5VHlfFwa5LaUAmRUILtK3H5XUlGJBxVf0u\\/UzZtbBzCn7z+l\\/4tilWhUjBdtYNLH0MkvKkaGXct8n\\/ANUSvJT3eGhVOyoU0hbmnRXZsjtU7xs\\/r0nvjBXw2mfOFe2cZVFdqS7MlLHKGPJCqaljzMb8W1SxbN1VZiremVyszj+ZjfoVj3H9LeOyy2pkyFbmMdsfQPulWGjIrGh+Zlc\\/JZdnbw\\/Kjb4LHkBWTAET3KvGjOXx47Z17V\\/Wy\\/kQFZAGERTGNdse+y2ratq2ptLIgrsxV1YCtHtzwyyec8KL48a1I+zm3BXFh6Fs9sYhBXD8uitpW\\/8AsvLybx3mZ7vEUspMDVW5wcW5jVIRy4CK\\/rhH8oNKoCmW7bOMhKPFJbVlhoWfb5Iq8ufHf80QiPa3PUdZSuC+TYhlRXfgu9Ut0TrOW0ScqA5\\/hdNlV06+Q83NqvLT\\/Yxkxq95xqmWJOAhbadvkJAy\\/rYB8sNPJWxoj5HIsqGLKXd9DyEim9vkoe2xeM\\/5oKXThj3Ap1ErathTFNpvsCEpFbVGLI9MjnZSGhTzv83Z+48nJ4LEA7WOsewNdP2Z8gT\\/AFSH70aZ8DKjJ2\\/DwB+TxHTPdGXt8hzjYefiz+3h0mU\\/PRkOSjOK3wUwCmK5rdFe0rYtgQeKiUynHdOMVi86\\/MTfIz5PkLDD1RLLDu53T9mUef8AVamxxplAmOTg0ZGRxnTN\\/TmPZ5B+3aZP41\\/j12re6f3bihJOnTp06givw7dbduDitGMggJbjIgVyBN0tlWONtGTV3B5HHnCawX29sSGLAq77cjr4KrteLTqfMunTp06fWRW5ZXOJj7crbEZGLGynAgY08wY2c2W1bCua5rnrWDt4eSCu+yuJ3eUlIePu9lEIuvPYb+LWFH8tUbWv6ZMDKZzPjWUX03x8nmHHzosZQ5wAcbStpW0pkxXNMmWRHk3t8qxhVCPx6jtHVADe0WdPwclyWTZOM7M2+uP8vMIeZqQ8xUh5StDyNaPkIhSz6yo3VTGVDdj+QkY4lO4zzS+EOmDJqwAqotHI6eMr7\\/mbCZT90ZZVk8kePyahXXyUeScpynPFf0DbfI1gwll2iGFUZUihHHXNmjoyZMmTLKiDOdW5HEC+GvhBfBiv48L+PKHjpN8KyKxMcRPlpft8f9Ww7ot7cMDZS6jH25dgjH+s0nt2xYlEcrBGVnyszx3gPE+Uq8jjehkyiK5m013G9msKxrLe0LrFK+Td6x9qZMmTJtLpPa\\/AyZMhErmtpfycbDXj\\/f8AiQsYPTie4N7PKTY+Ko7Ph8iKKB2qUdsp04+Vg+Pxcnx0\\/FeSq8hi81zXNc1zTlc1lO3eEISvhJbwFG07RZNSnNbpPxzwpEywr12cwIzmELghaEJjQSXVALy1hM6DKNjubg06P0cH7yvIfmX2tE3jkdJUd3HwpgwA2X5NV\\/ibcTLpyqHTp0+jq4OuzGUcnHjCMJQ2fIrVEISEsasr4kGf0uaNdZRxcYo+PoXwJL4uSF27ooErIrNuUe1GvvVRllAd6DbMEB5O19n7yct19o9s+o64\\/wBpr7V5G4WFrrYXeHvpyKr6nTp9HUua\\/C8xYzr3nHq20s34f6sm+hPQCJnGAazlGuQ2YMqQTdRtxraoeYqk85\\/baOY60fbZHfXhHbUYRtDKk1+LuZMmTJlNDpnD8oRsJxrbFVDaOaf6MKe03QVvSg+zBnWD3KNuFKqPl8dHpd1HWn7VnQNeRCUitosjEY+XDEGTVXuW5bluQ9ynyWSfbZMxWL7oRKP0k\\/06wq6+WQQqYw\\/j8KcYz7tcq5\\/+zo6\\/hegFT9qvp7tOJbygVMRIjLcGTJltUYqYV8HFuHcVi1GEIoraGdOnTp0\\/qs6bZb3eVknNE\\/yIHnXZFumZSvwuUVV9qCsq251e2cAGUeRPBBW9C7yUyhMrcW7voOn0dOnTp06dOnXm6ez5Uy0xxy94UCqmlm0r8LlBV9NL224suSPXqNYK1f7HpNAIvp3F3V3F3Su4V3FvK3lbitxW5OnTp06dOnX9pH\\/9E6Y\\/6cgFAgLxo3+QrGlyj1r6aZR9lXUqSiVLWtXENuG78JSAQnFGcG5bWKYpimTJkyZNwRgSu1JdspuD+10eyXVUfaRzX9er3ZERpco9a\\/t0ySqvuKl0CIeO0raFBXAsIyEz0td8es7LqzsflyXJclyXtXtXtXtXtXtR0jZFu5FGxc0xTFMv7JXA+Jkuap6SZwv6zT+20uQ61fbpZzVHU6DqpDStWdD1\\/AxBVY2qRm23nsrW2K2hbVtW1bUwTBck0UyGrcH9mD+JkUVjBlzeMCv6v\\/66UWKv0p+1S+2fWlFD7R9yI0rKsR6\\/goqRDJ06dbgt4Xciu6F3V3V3FvK3SUZunTreFvC3rerBVZDy2BPBywCVjjbL8qUpFf1hx42UdwV+lH2qXSXWroofpjrpLrWrQto3fhasWFcqrqK9n+v5q22rt2rtTXZmuxJdiS7JXaK7ZW1bVFgqzGQIDcP9glYfKsqIyIATyCwsYY2IpLIRWP8AapI9axyUPs1n0rKtKM\\/d+FhWH+jfZEV\\/6cbp063Lcty3lfImU54f7Ti7kwCxiw2+0zG3weVPJ8cxTLJDI9aPtKPU9Y9FR7aI8zoQjPZbKab3f6ziSoboiW4py3yK18mC+TBfJivkxXyQvkr5CN8l3ZrfNPJPJPNfmKDSDJtcsA2SxMNeQie9Ydx8fDGsy8TGoxKty3q8b4f7U\\/aU\\/MffpQXpiOSJAVvkpvVbOc5FH7n9u7nGRRkVv5pwnTLkmTFbVsW0LaEwXLViu7Yu7Ndy1dyxSLgleV\\/7ZVGSjVZuhEwgJFb5LcrQ06uhPJ1XzkyKrEIg2wRsdOFk1iSq6kos\\/wDp+I02p4J4p4Llo4W4Lct63J1uW4rctxW5HbJdEFZJoQL4x5rD8fXly\\/8Az2CFT4zHqydAtskanjT0n9v4xrAjIEIkoghcly05qzdFfJmvkTMgTtssMVC9dyS38DaMCm15LlwNo6Jde0gwEoUW20o52e39ejP4dkuUndclyXJPFBnuPtorbWdaZSp0dAHScNh5b4vtvVblGJX+urrcFuit4ThOE4Trct63ret4W9bgjIuJFZ\\/j7Y5MqMhePp7GDJWcqzYQe4t63rvsjlKN+PJS8hQjnlfNJQyAV3V3lIiS3RdwvajGExZCULI\\/ZcypIUpcv9U2hW1bUybhHVinKc6OdOYUhN7+4Kqv7DmSA8\\/WVlecjdCdgc2Izkt0l+YttiaxNatuQmvQhcvzUJXITsQskoSCYoOr6BZGv9O9VoFf66cuI8fJMmXNHc21o2NOruTCnYScKPdyRElClCqK7a7a7RCECV20QFt5towQiuiPNRlMISKMijB1aIuIhbU2ogu2FsXJMuSHAFyT6cly05L8J1xKs8XiTkPB4qxcDHx5bYpo6ckAEIh+QTLZFGECu3FbQtsVsC2Lau2hBOq1l46DLaE3KQ5oHg3Jy7lHRithXbW2KYLbBMEzLmg6IO3tljEldoxDrcnXNc1F1J1GRB56Oubh0Ey6KCHRR6SKthtIT+0hwnToBEa80Atq2le5e9bCtqNa2ramKIkERYVWJ7JQZe1HaVyZAJmQTFMubbZJpJkYppppLaougCmUekwtoInWYS5t\\/9oACAECAAEFAv8AGjgITJuJ06dOn4HTp06dOnTp06dOnTp06dOnTp06dOn9JkyZNoyZbU3ANHT+k6f64o+puTp0\\/wDgSj6Z+k3IfQFH0jwNrH1Sio\\/QEI+keFkyj19QoxUfoZesUE+g+uKPqfjoyKKh9efRKKCKPDD6A+k63cB4G4xoOiiFLQfQS9GWo1PoSOoQ1COkVH1gpdPQlqNTxk6S0GkQu2olSGg9cKXT1j6LaQDplEJkYqWoUQhBSj6YR9BtW0bQoJuCWhQQi5ZlGDKXVHkbNAoqATooxTcTIRRCCPqsiiVvUeYITaSPNAIQQQXTT8VYVFDSuXIlPoy2LYtqMdBpNBS0HEE6dOq9JdNIyBR0OkUzIl9HQC5oaXdQNatX4jFbdJIKWkeDapDhiWW5GaITp1GWkzygohQGgQCdNrJHWtOidH4GToyTo6HSPDLp6BCZtHUlAc0yJTp+alpuRR1CdPo63LchJbkTwnQcDKZ9JkE7I6hbkCmAQTI9dR6oR9GXpmKZbUOmgTrboeqI4D6gUtDxFP6skNHTrboAivxP0J0Og4DzXbXbXbXbXbXbXbXbRDatzR1dMm5ybWKJQR1ZMm9IoI6BNq6dOty3Lcty3Lcj6DoT0lFE6umR1gVuW5bluTp06dOnXJSQUtI8DegfTdc030h0Og4Sn+g3cxxj1zodBq2h4j6eznHjHAPTkgjoOE\\/RD0TJEqvp6R0P08iyBdD0Zx0h6ckPqJc0eQEyo2OUy2ratq28H48ToalD6jb7p6V9WTaR1knUtAdXTp06dOnRQR+ndT0qUdHdbNZ8APphH6YldVJFVIamSdOrPXijofRdOnT+hKKiFLrJVaQ56SQ0nqdI+kNT6LeqepVelXQooaT1OkfSCPqMm9Hdr+MOiq6I6FT1kiPTCOrfR7eCuWleh0Kl10PqBHgPpnQoaBHSR5aQ0q0OhUrmMZgqyTFD6m0reV3F3F3F3FvW9b13VIKXRA6VaHSZR0lYSapIfQt6FvXRuBkyIUVLgrR1tPLSUVvYxL+s6f0p9fRbhr6HW5HUhUn129I1LtFbJLmnTp+E6hQ6HWwqWpi4qKBfibiJToesy2BdoLsrtlbTodGQUeh0dS+46xRixhJvUI0H1MCjoUCjqNAq5f4aGth9sdDoNLggVEvoOIfWw1t+0aHQaSi4rKhJuMocT\\/Tw1s6DQ6DWcfdD3CHLQcBQ1H041hrb9sdDoNbulB4ygjoODatq2ratqZMmTJkyZN6UNb\\/tGh0Gt5UOAalBHQJ0+jrcty3Bbgty3Lcty3Lcty3J063Lcty3IHWGt+p0GtpUOM8bp06f1mTJkNY62jU6DWSr4RoUNQmTJltW1bVtTJkyZN6Y1hrJSGh0GkuhVfGUNRwOnTp0\\/oPo6dOnTp0+kVyRUijz0Og0mioaDgCKCb1nTp06f0B0URqdJhHQaT0joOAKSGo+ifiidInQlFPpLQaS6oaR6cDp0\\/C2j+u\\/AU6qARW5kS+shoOAIqPTR9T9bX04pBBHSKZFBblu0jL6\\/cy7hXcJ4SNJdEIojRuGB0b6tkdBxSCmoR1MdG4Yl\\/q3To6DjMObLam4W1B+sCZbU3C6dOnTp0\\/A\\/BEt9ceN\\/Vj9U63ldxbjxOn9UIcB9Rk30BOhQ9aJ+jZMmTcDfTFDX\\/\\/aAAgBAwABBQL\\/ABIR4wf8iFuW5OnTp1uT8J9Vvrx6rJkybU\\/XR9QcJ\\/wA9can68euESnU+NvqAh6wTJkRyP1w9X8EENZfXD1CooaBOipfQD0tq2ptB6ktJdSiUEfoCo+jHWWg9EayRRQTaFSR9YqOh446y0HpRCKOhQUtT65UevoDWWg9Rk\\/ocmmUD6ZUeIp06dAolEp0Co81PkdyGsdBoEyPWSdHkgjoVOaKBQlxutyBUlHiOoT6SOgQCNO5TjtlAp9IjkgmQKAOg6LcgpaFWcG5dxdxb0Jp1JEqtFQ0khqyZEIIBMrNIHmualAxUU6imTaGTraU6C5rmuhKKCKuQKPE6EkZoqtFQ0mhruTooaOphMhFRmCmRCsg2lY1rCcMOSATramX4MjpLpcgEyI0dPqEy2qCko6T4RxNrGRCjJ0eaMWUENNoClN1uddF1UlzTjgn0km0ZMtq2oxW1DUKSjpLhA9KJbQh1EcxpFbguSYBRi6AZSPMDlrZ09SKko6S4AfUr4SVGS3hbF+JDFlLgsHL1IoqOh4I+pDqionQEL8NnIMoragiNBpIeqEUNDwAret63ret63ret6B1fkLE+joJuZixmAmTIIIqGsuvqFDQ8DJkyZMmTJltQ9ASZCxHkpQXTQp9Ktbx6Dp06dRRUdJeoPS2P6Fcuekw49UaH6bchx29QX1I9MIqOh1f0APTBQ47RyplrZ19IIqOh1bQfQBCDIcZUSyfS7r6QRQ0PpD0wnUdXTp9Z9apIq3p6QRQ0P0r8op063hdxdxdwruFbuA9OJk2sUUPpyOUdJ8B4azoRoyZMtqZMtqZBFD6YIoaT4H1GrlEenJDVvowplDoFPgbUcDenJD02TJk3oBFBRVmh0Go1qDoKfpH1H9MI6RVmh4RrAoKZ9I+s\\/ogo6DpPqpcAQ1ioWGI9KSGr+kENJaSQ0GjazGkuAcA9Q8ITptWTcJ0PAEyjrLSXAEK3BiQqoOPoR6MQtq2LYti2LYti2lMVHqOCXAENIhlYEfoX9CGj+gVHglwRQ0BTOD6xHpx6ekOA8EENQVMfUia3hbhoybijwHgihqCxnwOnTp06fQ8B9Z1uK3ldxbwnGg0dFHgHQalPyPpHQaH6k8B4DpJHRv8IdY9ZaDQ6QPJHQ8IR1P1R1r6nQaHQFjMI8ToI6nVvpzrDqdBodQeR5I6S4IqSGh+qOsOp0HDFT1PBFSQ0PBuW5bluW5bluW5bluTp06dOnTp06Gp1r6nQcMEeCesVJDQpk2m0raVtWxbFsWxbFsW1bVtW1bVtW1bVtW1Nqda9RwwUuOKPE30b8B1idRodQpcMxpBSQ0KBTp06dOnTp0\\/0B4AdBodAgpcJ0ipIaHVvVbRkyZMmTangGg0Og0Oh4JqCKfUeu3pHhiUNDoNDoeCQUEU2o+vjoeKXXgA0biZMmTJtW9WCZWniidDxS\\/wMdLevFE8B1KbUj60aM62BbG4QdBo\\/oEfWOtxUdDxBBSOoPGfq9qZDQ8b8Tf4EoSW9GX\\/AMFP1e1bU3+FdP8AQN\\/i3+q\\/\\/9oACAECAgY\\/AusdjpCybZFEXRIiL4SRF65qORF8KPzcbFX3FeoX2tT\\/2gAIAQMCBj8C6wvRCZCLrE6mSnJkFnYe8MbGhWIxhkPB08OLcapa\\/dwXJP5Df\\/\\/aAAgBAQEGPwL\\/AA05gdrMBktVq5larVarf8DGQ5kX9gFgVmdNWq1Wq1Wq2ai4w9taPaoC1Sbid7lcFMNeFB\\/Afd7EU32oA85m8\\/LIE46giXSefcmUKs6dWVJ23V7CU32mJsZPtyhNxyBdPsmoscHDYi8W0yHj9JQeLHT9gKb7T9WZRNBmMlzoj9KdWqUvTJkn0+pqOayEaTBIGKYDa0ewt9ohrylupuSdyxYSfKAhRe3k8W9PoHwmHsLfaI6shTtvD3DJUYwweRwxsX3KjWDY2SfGBa3\\/AFBYQf6Iv1mPsLfaA42vn2KCefzQ7kazOdjm1O61YxvHam1LlsWBnO+Y+aafC5Q9gGYfYw3WZrYAtycT5iuwtPYmjsRox2sUKYxN1k2HVBGrWMXQ7IIs1TagdOUM3DDPjo3VNcmr6jPcEXG1xLinbY\\/BVN\\/yQC9Y2tQfCZH3Oy8bk4IOvHA7sWHTlDdmxzbckNHBf5sRc7mMfehT2RKMbZ96xPkLUcP7bZO3mxRtHkVTDy+GO9PHhfHvb+CBUdemKG7JH2SaOxPPhHDHUhDlmsInVhjcLg0bVUqc2IQYO1dRgqD0KQDGU6YiS834rAqbOtODpgMdSwRNsBeUZE9O+LpDlcbjvTcA+2HDi3ontChda3d+CiiA8wWHGVznvTY6IqGilmxNgmSo69ebFfmKY1ohVq2DfeUKdECpTxYapjCetOwPOClwuImYRgcOtGhVrf8ADcHOGGONrhZE6071\\/wBsHC0M5zD57F\\/HAwUapLPTjB+ITPanUademfQ4vUdzQb4Wwu1ldK1hcXNfj6rwyhZtT6DAQ8N9T8Ex\\/m+c04C1nEPmiBeJItB2KOSGrQTM8vZmHIUc2SiAms8TjAL+PSdxgRfUvmsRqPxeaXwRi7EBeoi7LA8omdwTS6QZEna78FFr8LXj7lTU3YqfT9OweiWxc8Ow8MYcJ161j\\/lfxqb2QLXAFxA1bV07qVUBjmBtcmMyzlxATDl0\\/wDIH8Sh0zosBi0POsRVL0ninQfHDVbxydzRjr1r1Ood6LIwYBM1J6rmBVqNKqS+qXYHcvFS5z2kqGPHUdTiXbCJe9Nb5YJo88W962tMEamHiNpUFEK1cKmrFNTyjfl7Mw55y0jqeETrQhHgPK1YanCTYdag3JJR8xn9LV6bzAvt+k2DtKqdB1DHsbXBYzUMMwe1Or1fv0gz7nTtbzd\\/ejS\\/jF+CBczDygiRiYr+bS\\/47Hw9V44nwNzE2FSpTx08NP1xF8L1R\\/8AV9K0VHNEK9V3hZa7tKZWqirCoMIov8DWX7oomm\\/ja2pgpj\\/yGMP7VixwaOBmLmAFwCa0WXoEWsc34qs3bFAnJarUMsswI5OzLvTsmJQObFQUYoB\\/26l8bO9RFhvRbUaHg2goGkT6NTljcdS5pp73GR4Wx1qdjuEbkHVHFtEOaXwE3QsCoUKeGFSdTFI4Ram1eidjpibOpe\\/EN0Niq0qvU0KJeMGBoxO7XI9DSYKgp\\/ueqbzOW1Pd0gNIU2Rrtxkvf+VpNybUeyjQoBsWy4sFllsyoVOpHrV\\/tFzWxGDFw7op1WpyNxVWBksMOGCNUNgLl1EbnNaE5u8dxRfrb70BqEHhWqGQTVuSRRmoRVqtyn6cgQTl2ZJXaH7T4DymY7kQ4YareZnzCdSffY4XG4o0qog4e8awmUxy0wXHbFM3kJhwepBw4NcE\\/E5oqNnTrPAaMVhpm6aZWr1g1lKNRzG2RQruh1LcWKlTH5jzON8FEj0XMj6TIcRhr3r1KkPVeMDWtEmnb811VasG9Q4ltOm4CAdEco2RVJ9RoohjP5NdrdkmQRADeIfdpGYbUccU9kCi0uxYDAm6WpVY+KtHsaE522KLvAb9U1VcLHGWfHPO7I3IVBQitmibWp8zbtYvCZVZyvEQsJk8Tpv1H+hVVjxhexpiDrCk6MeIfNNxftxg\\/wCm9N6Nv3OlINT1TzARtAQezB6bGinTqPMqlOF4VCg3CJQPUs4tgaqnQAQ6mQe6J4iLS4+UL+I8Mcym0Fz3iOPcFR6fC2lTwtqU4yETGHZKa6ttR2Os6o2k12wifZJVxi9KhRcwx87m8MESb04Xxd71E32p\\/lxN+OnduyNQRXZpatFx5SHNGw2+9RxBAUgH1HcpNkdXbYnOJMGuwPaZwRJYCNapNqj1+lbOjXdIA3sdFVKNV7GFjo9G6MIt8pCPTUOnI9Qg42nhbc5dT6bGj0xgbEEvJEu1M6vraf3KbYkG3\\/J1Kr1Fbpx6nT8rDZEiXxTKzzH+RVcam0AXbAVXbW\\/+u9h9M3EgSO9AjUnE24kIKq3EG+MR\\/LPTu+nI1BFfpR0jqg5KbDi24rBkp1DIMOLuEU9vg6geu0\\/Vz\\/BcUfTFusD5hV6fTu+0LaOtsY8F0UG0XBsXB33hCq2FwuITG0G+v07pVagBxR+SdSxPo8UGlog0C44l6PV1fWaaYjQw+KwEG4uKf0tHDh4m1NZItPyCp9NBpZSpEVXuti44yGjWnNDHRpECnitxPFqw3XJ1kyhGOG4XlPYRzCAicIGpFjpOaYO0zvpyNQRXZonPD20wDAYr1+\\/S96lgducqlP0iKmBzy4T4zYBDUAmx6d7n4A52Fsp3KsTSe17wWMaQYmUXe5dO\\/wBNwr0WQcIGOCOB47sJQxAtaRB0QRzKn07X\\/feMdbDdikBvX8WnVxDnpVSJg3s3LqHU2CjWYIPLRfdCFqDi9x6amzjFRs3HULzO9N6h7Hfy6jzB5PCHCQGHZGxCqPTbUDAeqBE3OuEFWq9W8BjiY2yLtXdBNa2t6lSq4Yn3nCJAaoBHDzQsTZRcQIjUoksaFD1C9x8DAqkQeIxB2KxWKxWaJ305GwQyQ2aCxWIMbYM+abH7bx42gRnrKAbUDnYg3EWgOw+UJrmuZSNE\\/wDKNMwc5vmhCRTyT\\/JwRc54MS1vhbG8kp\\/VekxlSkYB+PhjbHD4ip2WvNkTr3qoHNxNdTdPbcuHjOGGyKDhIhNLf26rQ5jtetfc7yVhhDF\\/pt53f0C9Oq3CWzYyEgN6sVisVisVisVisVisUMkdmmL7hIaF7+1UGG7FUP6G\\/wBV\\/Ih6dbpm8ThY8EcpTsLMNN3NTjIkXnWgah\\/SFhxQGpTOLYpRe4+UKdHCy9xtgqVWh\\/8Amlh\\/Ib+xCJDfpE+8rhbCNpvO8oarDpuzStYzmcYBNpjw6DDe5fUVXd\\/s0He8RVko5JrlUwFCmIDWucko06rsYMuxYdXsB3ZQiNC7qnXcNP5nQ7BIJo1L\\/wBjWH+24fJfqOZFxUGCKtDVCewnMjs0rt2QZCuzPbTbzOMAm02crBAaDaZDI86pLqjrAHvC\\/UVcrVapmKkFwhAuN+Q4jhA7SVJs9Znpt4yNyFdme7qD9LPmdDC5uQXYz+KcPO9g\\/wC5H6syeWLyAEHA4riRrCDu\\/TsOtNFyGxQTl2ZwY210k1jeVogNAXX3ZIJouaF0lB4xNfWaC3sJWGmwtFsIlVagDj6VQUztihCnI2EkALhwp9Rr2jBaId6\\/ctvIh7lx1sP\\/AG\\/1Ki4++Kdh\\/wBtuMfmaSI9ymoG0aZm9N3KOQrszjUO5vz0IbqUcjt8F0Df\\/I539rfxyOqf7vVR9xTMOqai5423nuCgwRjKFg7kwgQlxHVh1qJYao22dwWAUcI\\/KAupZeQ10xDZkFQbnIqIMdefbmsTd2Urszg3Qk5DsUVQ\\/JSe7vICr1PKx39F0g81YnuEE4RhG0IkznrlIL7bf1mQWJ8ap7mrkA3FSTon\\/SPuORwNhChHFrvXpspEAguL5AdukahuzMObHQ7TZldrNmQ\\/logd7vwVQectb7\\/wXQ\\/W\\/wCCOxTnsQxxf+RsgO1R9JgG0kqBpN70+6Upps7abxldRFgm3cViFoURo2rsQ0ERMKbQphXq1W5fgonKAVFdSdQpt9xPzVJmsl3cF0bNrz8MkrBaVEyheVI49yjhI7lylRA5ab\\/llZXMbcPYde5UKnhdUa0w1FYfDhid+hAzBoJKIEDszuYrjnmQ1WoLqna6sP7QAsPkZ8ZrpW6mE97skTZGakSB71ry13+WmB3u\\/DLK2PKbDG5ehVEDYGOtlYvUhD1JgbLtCMwaPWuUqcs8wsQCxedznd7lXftgOySw\\/wC20M7sm0OkvmpnL1FXzvDR+kfjlbsOLuVOo6T6ZDgRfsOzRHLMKIU9LyjJzHtVqkooC8Ko\\/wArSe4KnsaPgnfmmm1HWVBP6hkcBbFWTvjbk35KGt8ah\\/UcrvoQdu0nEo7EWo5I+wg3KvC0jD\\/cYJ\\/5WoBF4H7cHZHOujBR8SkghTba8ho7V6GDHRpAMlzSCxUnR1i9dH5eI1Nxknm6QHchu0gC7EYZBoQGuIlco4oqZ9ymfcuYKZarWd6jAEbCpslvQMYFPhOz4hVNsu8ptirsLhxU3ShsyHf8lKz4ZIKj5aUXn9H4pzj4jFepTOF41IOfzgWr0XENNOEzfFEaidJK1YQoutOWGgGsBW5slarVf3rE6MdUZJg8zx7kE8a2ke7Id9qEbQoqN9y6rqjf9tnxOWXantfOnUi1w2Jr2n73T1PTMZhzY\\/ML1mDC8Sqs1O\\/odCVwrimrFZo3aC1TUkw+Gm745h1xW0K1YfeunbfU+479U8sVA2GYKqUHcbJHUuqZQf8AuUi+gSPHTnA9iFVnC8Sq0\\/Kf6atDPJYpaOIcFKB7V+13LiaR2aBlIWAY3b7lHwlBO+o\\/Fe9RPag2xCn5nYY7zBMpixozJfuNmz5hO3TTT4fkVTr9G0HpqXBUHiMTE+p8jcm16Ri13eDeDt0E1EKawhRgrNLNgPYv2wpYm9q4aveF4XLlKsVQ+GQ7lzNGE6xev3Gw3hVYTGMwKhsXCUCm4WH1A9uDfGSdslmvqDkewx3oNPYVxCTxxC6civ5XSjH0VT96jq\\/zcU2tROKm+bToJrYsQCl7KZRlYjBsJnh1ZZ2nUueG8FSqj3qhUqvBZilg4jGwSROs5r2WYmkJtMniaYdygZanI0qgjGRBsIVOiGw6Gv8A6nlqk37IS0ByYHezvLRAFzoAb8pnBTcexq5j2tKa4OEg7DdPDIZ7areV9v1BA+C\\/XFQNoscq\\/SVAWvZKrSdqNjgdRuXo15+lKnV87Lu0X6AQUT7M76T8EMpdDibWhivgWWd4XO1ScO8Ki64nPcy+1u8LCcnqAceu+GrQhQPs0Nae29pI7jlNPW8O90MkwFRh5hoIDldx\\/wBUHWG9Q16Ae09QLnOxjc6eZOOSgB5tAXeIAgHYof4Ew+akPcTldvVmSn+WJ0BQyDPHtPT9RqJpntmMp3qzJVf5Ww7zoDvQzIZZZBLLiwxRhTy2q3SSzX4jAtc0s+qNmWG5XdmSvUvxgHdD2IZJqRgubJf7GboVGQU7ck78hJkE\\/wD+U\\/BbM4oZRu9gtVqtzLFZk255p1GY6bpOaUaPgPFSOthVyMT\\/AJCtUIKyGKq5fDRN3Z4ygkTvRuyWKxWKzQ2bitt4z64dYIBn0wlBazqW8oxaSFBo71So+RvFvMzkjoW7s8ZQjPTxEioQnnUOoFsCxwvgJx3BCfcpxhrUYnDtUAY61TL\\/AN2n9t\\/ZYe7LDQMA1ZpbDaDmwyQyWFWFWLlXKuVcq5VZnbRaM1h8oI\\/u\\/wCi\\/ZZHcsAhTptmG69q\\/cnqTadep6VI21IQnq7V6VFpDYxJMyTtKsVikJjQM3ZhbTZhhe61ReSTtyBDNnm2aKIMCFauZWq1AxjkP5gDBTGKEtqDGmMZYTtTWepHAAO5W5LVG454aDIK1Wq1Ymni1ZgzrFYrM+zOn2KGQu8oJ7lSNsWgxG1QXUVa\\/iqFrYXBslGLvchV5i3k3682CmioC1QyWrZrVyllxtG9WBDhy2KzOnlsU7MkYaCSc3zAjvCIa8tuhE2qB6h\\/en1HGPqP+FuQe\\/tzwsRtyxb3ZOEdmZOxbLkMss61Wq3Q8qsyWKyai1PdRaXMcYwFyP23dyoU78MTvM8j33NHzz2ve6AHh2qUXKTFqVyuyWT1qYnlwnvWFwgQdBZo7VPNiETFVHaguLpmGAuJCi+g4HY4IUaNMsBc3E5xuBuhkvyWKxWKxcqsyWKxbFYphTMMsfGLCtvtOIDeE8Sg5pVqnYmNuBxHsyTy2ZluZerVCBK5VCEsuLv0FuW1W5LMtmhLob\\/6omLmm8gqJfUPaFwtttJMct2SxWKxbFyqzJarFYrMspKduTG3tzNh0luS3LJW5IRRmoz2qRUcWS1XqzQXqclPLrObEcpywzJ58VJWKbVYp5kVzIa71svUM+Ssz7ctuZAqGT\\/\\/2gAIAQEDAT8hhSCSyWREpKwf\\/NUqVKlSpUqVKlQaNpAwn24GUlYaEDq5RB6GEZ7mdglHMB1lOsTC+msrpVlJSUlJWVlZWVlZWUlJSUlZWVlJSV1RUQLHVhs1ZUlcoEYxjGDsaZGYnKuIdKbsTN2i12JS56N3mgG2PaI14D7lytyrmNOZXqSvUncI9U0DrQgUNDv0aaVZWUlZWJmWVlEsGJe8wwRkiiCkrzaVqUtpY2j0Zb2nTy2xCNkCiAgaG7QJxQMRiusrCVbQbzCtD\\/YfhHQ\\/2WbcFJT9RlB6+YAGcfuWrR2\\/jcehUR7s24TJWdQMCHEOZUOZhmdpBBDRbFoETGhjg2hbwTMx4g9HiFYrESBOWNE3PlhcQePp3mfhPBP1X0jVKPyW2YGo5ydszjFSZkUzJUsBmYJvNJCDMDoTgwOi6SQ4QSyGCv8A4EBZef0SyFHppYlVvqlx2PEFuvSufJB6wf1MyoRUhS5etPVtlY05wO\\/zOM3IZOXjUGZezbDYM9Fgxi8xYoaTnoEOGgzl+crmGP5iAoc0v9Q2drhDbzNYP9Si57YxYTPVUUeFqb5xLRXQPaWMwStWydxXq22RKzrTfg+ycdMTu+NJBoNgRIGjhlBRGDSpEzAgTZp1\\/WgGBtgmx4CWem\\/tuOFl1wlZFeAX7uCWYM7Ga6B56xWF2261Mm\\/VWB6UuURJuQ\\/dOEEiTn41FSoJUGdAtMRnMvoTTMCEJiIhrLEmXaA+YIS76eyw4gpAN75d6zXWEChUWPhdsqgP0DuBzcNz7T5Y\\/NsizmfvThDAkZ+NGslZ0zSkK9O1gjfoIYmdAjGGsDmfwNCpxN\\/92jOhRMKYadTAfDO1SvFlFBOZh7P+Rnsr3lhWCgdDc\\/qGTs2f2T+Y2\\/Nsiyllez6EEvilJBK0CWubdc7n4mBZs0EiwSgiovDS3L6S5rn2lqrH1iV8gv4uc9L\\/AJWbzl8ov8YVDgT7Ro5Z7XaZfyzhW63Y\\/UrsVCihTYg5Yftsff8AM9k\\/LvTJTLwM4ih0IVxnKKu794awqdiGbTszBJt0hSmqnuxO2GgAxv8AC5ZQB6kDcBJ0KwfEFfKWIvb7jy5zrdb+4XYtru8Mzl4g3vZ3tj2mb9K\\/nzCws759n1Cvy48x4rk\\/Luz6rDK7TMdAEZwuahQmWbkJL5lCqQPMv02gxpI0DLWGMUIMox3B4II6OP47x8hH4KSnWX87OvSyd2\\/xMod1ERnWPFmF9e0zypwN+\\/atmDe+Ycmdj3I+74\\/lzDSHDWf0wKny8ymkjzD2fh3Z9BlZXaKrQ78v6xYlmkBJLYLJI0bkFYixAlSh0VaNCFDey5teXpL30\\/C\\/8hm5ynyrxDueeXOHeOwuoOzD1c1C8OwGwZPyby45wkMNHBVXgmEC2cOMiqbKeIy87Lbx+lXQzJJfeWg8FwHIw3cg4cU95x7oIs4Mw6bhmXgx94Bu+6ZAtqHqaSyEUg+xKXoH9zZN08xYS85X+e8qSi\\/SKsRxZAUhBmV7sFzKkiZ6DsDrMI2GylPwy85mzmIw4qLbcbeZezO0b5diWURl3Hc\\/YzPvjEJ1PYJu4QLygOVtQ3Vr0I7bKisOIB2brPRGK3cI7qYZHfXkVcWAhRgCWLa+XWxLjYDIqa7mfmdZp2QbE6uLlAbDHs\\/1L0H6PYe896EVgNYU3HLMwDtKzawG5LIg0h0sEDpRGVG5QjrDXufubIC1zqpbPi\\/7iGSHC4gBYWmoLRyuZNJ1lIqyjb3mCEyi14fqeBJkz+0M9owLB+czAIrQ1MFwUf8A2c+dpchTB1S32Mpw9oXPYvXiJ0ZVRmG53HMVspzyGshReAiByrCCqVqdszI8Hz6j5auA4leKdwMOjsg1lrOEveFYFsM3CFyoQTY+hFZ0GnloWrDuqNupg7EsrYr7MfcURcy\\/jaHgmUOvWZTxCPqgLnkTcrPSAbMx7qkq3JihSASWcFG1eyK0LmYvtMR3\\/uO0WRMk6TJ9pfPnf7l2XARhwHPidVLIXCVPWFOOJdWmx4uUUi0Z9p1zh6G11viBl+Q5jwYEop17w8\\/\\/AGNf2l629\\/yPtnC6KZAS7OvBARJVUuD61PapvyIzN8FmGNzA6EUxokO6DEOWXezPG8Cu8e1Au7m4oSnNMbilIaNi\\/iNo4PEKhG4wtWCDY1wC\\/wDMfcFu+qPBTm1ywzYKd7xKd2L+PaHa7Yvf\\/uj2zJpljWXEvq3RxnG7mJXw6A0N5xLyJLbeCYVtAPbAcP5uO0WL3rBkqZdo\\/wA0leKHQdRHjmVBxeYM8+spvY2eYj7ipvvb\\/cFaeh\\/G897oS69vJBR8llpb356kLrVHvILyaPEW7gh9hgr1q4Nj71OdOJ7M0cVi87xI2Thja6qrXWIwOx5R7YvaAOrdU5gDfljBKRtVQXrwTLzLLOLkb7BngyzEuy8uslmN7HSba4HqHVd2hqHkoA1krBfF3FJ\\/1k\\/2BxTQd7pnTvC9jX3iIGbP236l7SxN1YlcOgjcIYybCOoB5hRTbiC02MRlIhW0sifCMJf4Y7aCNDNy8TexfMZnkio+JWvE34q0ZKt9Wjl5Mz7v6m6U+8V+vr0hrUZ7wtjxOHc624G6MfiupqwAhBeD4ksxXhySs37xy6JuUrLgcJvBaGswW4m1Bz8SzINaq83Ko4I5ovrI66e3pLZEMgszmUPhAfSY2dfgO6d18GtD6oBjWt0EXrBXmAGHRSluw6W4n\\/1BAzmpYQ3oVNtlSOmu\\/wBhWJjn2gruVRv3mPeU4zfGPanMziLRlXtmf8e8dp9qYFShZaZb+HSEuH3ROAg6l9F5gxYMZvDPgm52SODfeB1HuOJj9f8Apz9hPOm0Pa+nMBh3gHxS4NO6V2LOV8YgnLYYXAt7gJ8zK+xQ3N3+YFO+54VflOMk5QyI+HIccwfg1Cgy4KlMSBG4MegT1Rr0CjrMOCJh26ldaifH6jLukq91mBt4XmhFaHcIWjl\\/xQS5ixFqOopHCbJSS1n6pl\\/DvNkHyy6H004ZdYgaTQDUYtqGs10Uwo9k44eZZbLpU2O5UylUS2gsOfvNMauFVGqvziC5c9MLpi7EJgapvFfpjK\\/AY20Og3vB5rgd045b5iAGKBu4povdFxs8rhvsLjec+KNy7EZhCW29XxC8qLYBbDF9XkuAviYosOp3jG1y0FLQuC1G5mZlpUd5hxR+ifyO+j78Mvop1xhUXVUo1qU0UicV9BPlL9pfpZLqxp30ZL7EHjZG8ov2YfMtdmK2eDt+iXkizb1MDhfrDYTYpsK2yrYhT61CE046N8mY8RBsGuQFpXeVCcl1u09RKD+C4ze4P0TjgEJ5jiS6kgzWKKwGXtLXcyHiFqtXiWt6Nnd79CAZvGK96c77sG22LuenXXkVGDORYq9kd\\/zb6K+5CakMNj0J2Y9GdqdmdmdidmYYqKt+arao8Sfz2iGHep\\/YS2qgWWBFrpe7DIcCbK2F84upiVr9WxrqD3nK0AUGjW\\/wbiLeG0Cxv0al2phvIHi03maD13PpbbdZXlChWtqgc+N5i\\/GIpuDcg\\/EclV0qXZw4TcXc3JpbOLY9uIpYO9OMaMrkDeqMQLBVM2b2HWtyeH5HsV7ysoTGF+2KTiq2v7jjSs2bXfZrad9O6ncTvp2Z2GdiV0SnpEekOM30RicS0T+HR3iaOYGlKnZnbnbnZnZnZ0VjRk7QFKGj+3QlvEF6xZbKCsjo5lKC2ozfcJXEyougk0Lku9rh6aMbhjsDeKi3GJxjn1hDdlFLu8DNvTC7yhwLUzL3fWKWxFi6Jaha2pqmjus5xB3BZmwR9psAV6Zlpt75+8HtN4Hsyl3ZXoQ1+l4h6WPQxheljpe6dsbGFaWaFELZgKCr\\/tNkLxQisRFpXHtOslfM6qd6dyHUndndi\\/8AsDmPoI6WBbsZY7eb\\/wAQU94PLX2l\\/OlfwLrZIcOsxOMUpp0ZUkfx3hXALYS+0wiWuvqMnINv0RaKXG+HKjxOZgWTvX8kDETu9nssr4nnQOe4mWW93tHZ5j6rdL9As8KWQDJ2hZYMypzdo+5vjDqTqJ1cOrMm8yFGPuzLQCr6vL7sfXiW7XtzPYg\\/nxDzt3nqiiAlOHrjd6srozLnE6QDYSrIvabaHsCHfGGPiUyZi8UpJQo2dF9OJesy+Zvv\\/wBg6PEvGby3TSFialIjU1vbjE6f20KVcxw0U2HaWC1KK1oJI2acA4t5\\/wCR8616r9P4dx4CFf6JeLc\\/x\\/iCIrZzE+8y5Xllmy+2CJyL2yzcrRzyXmZhOMf5FYJzKbn5hI6h9Ri2GgWQcvF6xdLQWf5PfRfKxCJSp00UES8IPQLJeptVrsd\\/YzBuontf7+C8T+5f8mc7RenNPY\\/1gW+b3yX9yjeVB9\\/lFOidB+I23OVcSpUOlejHsxT9ylo4vEpBYmPcHaG43lIQsSkDMEUIlnEY6Nz1HBSAwLOs3nSI5xorEZW9WcNEEF6\\/zvb8OFdM88w7HnLMBusf2+oqD\\/6D+phvGydDMOJa5dE6bMqdv6jIw5WoNcdQ6g94EDbaHEgMpEzNtHpTpsTjkoYIGcQFSkimYcYHlTE5QWy4jaLuF6NzP4PGijentjSN\\/ap78+0\\/gGi\\/f8Fcdnmy5DruxshyV8ywzTFO7ggdV65BG0tubg3ve4OttyNi2nipYFAGmH3Nnl6Kv3glrUYrgDWS8CMPGSsAD7LZfXHQBe5BcjRzdz7t\\/qdr0V1VcuWuZZQYYnhbMrAcMdJe2GuJa3C507zcb94A0CW8zYmPiRP4+83FBjD8U\\/n7REC4Wii4PBv+z+vw1vtm+Wb\\/AEYIqGIKDg\\/GWT\\/9bBFLsZfBM3ZDLy\\/3KRWCM9qd\\/EX2AKZydIYme0dZinswwWcGYtyst7eI69HF\\/VC\\/eKfVlE+m4bl1XIobTFE28J43Z9oIhloYPR6MvYIX7QViIfn2lenaOCQNLAiz3m\\/wb5kO5EZcjZmiYsHxTeaDAYmVAFrCM4\\/Cu7soJQdi39xqtu20+4K7\\/dS6O3UeUp+53pOLGIGLnp2s4lCVKF0HI8tsTH6\\/8csz\\/e5zEULV6J\\/csOD1vc+JTcideFx00watA+8vPHj\\/AIEQalSsmA5W8RMBKSkpKaGRQyQFSYsK3uRwKrxCExKGdpe+x6OZkG7t4\\/CCHYjYIcTYuj7omZ22gt\\/+tsdZ\\/YMmKlyWfCIW7HG+8XMbs7n7gOD8V+QsRVO\\/Ar9FT4zH\\/EbsDMAMZgqA2Ab8P9RS4M9Y8xySxf6RyQttvrFwFSxSZGfElAxnCwmZObW5lAlpzCZPiBbo6k5ae8OcH3+oJ0veyGyL76jbu8O8sWW8y3wm1oQ+pBfchfQKkd1E+A+2F\\/J8J7xhl8GvLt\\/qFQK\\/w3N5z4fOCWdBsFibQOt1X0zGjaXzTVl9BaFm8vQboTS3H2vtcvyVg3uo1uLBlxcw2ljbN2IZL2R59o2V5uzn0A3iNMBjneRsYq+\\/iA7X3OPiHIR7bg1tZ4nQEQy7HpAJ1IQnF1iotSPtENuuZZXk9kS8cQ+7GdP74\\/yMwju9ERZlfZ\\/5Ic\\/Bd5ztiWHt\\/c2Fj3TWAmLSHYSo0Tbo1Z3+m8vLsp0BP\\/r0VK0OZxFkrHWVSvjlUjmjIx6dQNGSC3jRvE72es6Z+k5cHNYjyvdj9ytpHwykIcTbkhJiZRVVE1fOIh2oVOb\\/ALn9E6AHwkJ0F14W\\/bOT6mzFop7S9d7RYMpL1L2E\\/wAIR\\/pqEZwvwz\\/Yarw3hnNyT8DzCqle9EmnA4mUQjRC4oJuJXSHNLtQ0ycs94t+nEu6OfMsFo+IbGw7LK74+of6iRRfJ\\/koMPO066czOEbPePYVVvuTNOW+cmXfezby3DWrKew\\/JmbswtdCDtFRFTwvM3G+cSpt90wXU3giqh+QfqDoxnRfb\\/ybOkRSVlZXQJLIEpUZVL6SutvguUQCmFQ6YqWE5b3iFJui8AjXQEUwGAPfMcNTMbN8Qqp7USkwHTMYNdnHzAE3H3OALNdj+8QzhD4KgdxiFn5v2pp+mEobuv8Aan+4Oy93U6PWdostlU358SxP3awPtmMUC2Coa4fEopPgHk3IScK3Wr67wiG1Y7f\\/AFD\\/ADNolk7070epL9dCtQ2UKwKByQVELik7Ib2ZB1nbaayyVAIEVAjXLLm5XPiQhwu98GUgy9WUOF9qmz921E4+Ca0NYTNGgs3qfDiCgtmuJkgW3ON6OdF0OYUITnljP0FVKyMfEM9Zzv4VMTYjB\\/G0Yjku5sjrl63KteRPYYv4TeKT5M3w3Dg\\/zrK50IAq6V+7jIb5lAJ174ntA+7\\/ALibFczsTtRhbLZb00vtGtYVlMpFNrm4lqtCp0I13e0rcT+NQDpKQ1BJvdfsRwEOzvE9NNaeJOjAU27ZYiw92UNuhtZ7k5lf\\/wAeLKeCchfdOYDtMis2U4gpyOa5OpKrNkuNXsHHiCG2Dfx6mgCpYXkgOj\\/jDUo9yFPxud4ng4LtHXekMzaUfS2cdQ2nfTExCpiNXCqlw71iN+dTCCEF1xCUKVAbkssTccS+kkikpKIS+jXsSricaVqBXpKWPYyuATSV9yU+N\\/UsqoFZdE+SGY6Kfc+MMfWt38wuGxYRNlXRvjqTBNF7n+daAmUsnJ1j2v0V5jvK3bsps9xlg8uU6L2yq8TbzNnK\\/wBuUSE1azm2l9EXFDwvS8q8OsI2VaLYekJUoie6eowOTA7lIdjPsXU6vQpgkr3ih7QJ9wWtkEu4GPYbIA\\/42ljHe37Q3kdMt7nScIHpl\\/CdYdiWHtg\\/Uvg1iAOHMXH+2\\/0lYdNPeBzRrOzggsneY5F0Vk6LJOw2XA9EdHlKkaiKB7Sppx0ltht2lvCE7JvuZSWS\\/TmZmZcfc0JuheMfqI3+C37iW9f8tp2B2a\\/ct5q+f1Bbo8xwjSl614mPvcm17pQjlHagiWwmznib84r+5d2PXDE6LYFR6cYLm66PZY9rei8hn7lkGlpbUMRnScGl+d5aCl9p4+ZtQ5jlAoTklmjgV3cU\\/wANmVfX\\/YHojhPQL0GKCCdGUFJbeYMXyw49kDKVFOkR0lQJUNLly5cuXL0uXGnfMBRgtfUVtKIDg3UvBfacSQBOxxDLLkBeJdF431XtcT0nlH7hd1uMk2WatiPbo\\/cF6CY2YojYl7pibngpyd3nMG5XFuP+QZVgbsj9jEIWlbdjR0YIrKSkpKTExDeU2SD6wQGGzYYuDZigmypmZ\\/Pcubo7uS2AXoJeu0aWYViMkzPsB2K3wpT\\/AMbAUV9CzcUIZbnE0RO3NmbTBBW09y\\/JmCjXS\\/hiJy1m5v51iARxLylb0WvmICX2XkvTaEtLy0vMk6MdpHwOIygzOHTf4Mfjvh3w\\/KK0mCu3SGxefuXYAPfV9mSDVCjlr9wAEvaQpJeC75Rm1GRmZibE4nubfi+dpmc3HeU7cbRQCgHaN5dLbhUu\\/MrK6ycReY1JvG0GKnJ2AuAqbq5SUlNFJSKMJTKZTMypUqVKlSmTbB95dnHyUP6lKBsEuIxWv5AX9pSWvZzO9qsh\\/cKSKeKboQcw5goaKcEY\\/YM\\/YnJ6ZHXxHssmFy\\/0s65euyNIalZCOYJ1MzrZWvb13MHtov1gXloKPs\\/sF\\/sswYjbH25zcRMAnDEwdxmSGzftBCBvN02YQguTwAW5KO7kjtB8oJ6DbNs4TYm6J0mFxONFpfpOxO1LemAtLy2paWltAlHKV8CXPMzxMWv\\/AO5czy7y82EqofPB8JK4bQb6WzCEpLt+2NK4sQ7pRMM6XNkBky2hjsiTemsJfm6eiq88pfrLTynlqMHs0EyYTGpIv0cfuHS488S3CYYjHBnEvedJjH8u2nxOUUPDQ3lgOwhuSxDc8IHeaZTmD2RyxccmNiIYEYdx4l8oQ3JSPI0Ll5ynAPWHnPFldEpG0CPbjSvNp7kxYRtDSrxP8i3B8hYObq49Ft78EpgbRsRYN1ubTfC57C7LftgabWKHhoPPSOx5g36OIdkNpmvrpy1g7JewmDiOZadud+KnrHiK0+cr1lOul3JXXFSrm6t4NKlJRKNN82Su91\\/csa2MPSJozczMGwEVIxu4SoAxXm4xav8A4pivZOJsYOZsaKu5jQHDNk+ugweulhUs0HiLCLjL3iNAsq9SnX0TR68r0njLx207UIZxyJSIJ2mdqU6SnSA6DuYkQSN3XjF9zZjOD5S5XKccEBxD7\\/3AKvQzmWd5Ce1EwvME2zmLGM2odV9FDhHQ15TlAqJILLwlrekai8l7yyFoFJ13C3KK8pZ\\/1P5mHTPmHZndJXyQ6xO4S\\/WeUQZswtgAIXVhHeZly9OsqTgD2G3MqVh4f9RxeGiJQuCW\\/wBRtseDhAnuFuuY+WFwf6mybtRZDSo0j4EqiI6G+8zCgfEwHeXjGtiynNzrEElehcuXL9AacxmsARENmUFD+NydqC6Z0wFiMyvkwW43gs8hiLkbTWq8d2bhLc3u\\/O2Zfebd+kzk5R3eV5juTZT6QA85szCOZTMOFwtrms6VE4isuvcDLjaOCcIi1pipOB43g21vtEYdKHfzvI8H2lP\\/AKi44Qg\\/El12EGmfBiY95knbZi6D+R4lNFEs6TfXTHsv6pECve1gAlSPBfs5gYKdj+paPqUh0C7MuWZTAdtOeSeaeSN3TPHJFuHs0NlMhDbS5xR3um7PtLsbqcnw2i7qFGKJgRNFqFfpg+6IZv2lOIDeVANo9uW2+Z8YS7ehXVPeV3jYcJP9eI7WCbxm7mPVEv2x58Su2FwN4A0kC+gA97jEKYaHdUDWRbXNKlnHvVhym\\/OY5cPmU47PnpFi9IV3tpOWCmBbxBNB1l4g2gPvibKodmdI\\/MBqU3HJ\\/sobrWYIanvDoRu2PeM2jtOqFdu8xZw8Q2LdsQywp59yEugTq2lq2fedxLxa9p1TEtpCN2VMsm7mblUfcdd4K5eFey5mDJshYtp8sth5loFiFT\\/ZQxHibTt5tArqVvKHj6mOBJbb9ssd5ZL2e8sVwTCTHpMMjIsEHPLy95lS66x2LV5Zu\\/hw95nsx4PiWnHvUsdLixlHZtMGS+ZRgVe8rY04GJ0\\/Ms4\\/M\\/tCd5bWHE6hb5nBv7w4FB1nY5PiHT+jNvohSqCoZ0y6yuZZx9xVxxoR3hXiDTGSG0eTpDwVl\\/IQ7dpgqHJmjPabIO7s+4BHfS+wF7s4UYc2MD+OINkMMw6anjMH\\/ItnneV95\\/Ur15bHQjvop0OY245jVf6PxK3q8bktWOeWKMvtANstiTEc8uU0pu99oKc1C2zYgIDclfaYmCX3jA5BM3LtO57TpYveYqudD5lSdu0MtmNWqWXXd3jtWlekf9kpEp+0ebmdujGHF5icp3LnZvLliLwg\\/Ov3HxMswBt8JSK2mUpL\\/wDyNkQcNnEUDJu39s6ifH7lrFXdhuvhNybeZWsfaXeD2Y5bQ\\/xfWGAxJ0anBfmP\\/Y5D1n8mgzNuMEA2\\/Eup0lb+L6xM94Z3+4OKonxEOxU7N53Q+nMtvxG64lSu2idjKNvtKN2OsasuI7Tc47TL1YV\\/IdYrcDOJyYO3MArsVttmFNtbMPupU5k5sLQ6ohVe+xUqjgi+8tvl5me33nufMef7xRwPe5RsfudevvQ8dwQfFxs4UfRFbi4XZ8yja32mfBB2By\\/1LU4GGY3UTvpZ+cDrfmI85OZwq5iu8HO8L6wG9oeJRglaHmY536Rp22lVA6qYjrKdZXCUKY1nHW9yCk0TziG0Qn1LBTCgOe7LaPqOcT63uy3KDtOR9\\/8AJ2BMzZ8xysUb5glgUck67DzB4y7wDa8diHlGgMZdmszB3dZdzPBmdqH830LJY\\/r4jMlM6COUhfA5\\/wCxmLEm8RfeXv2hbXeV0gPMbLild5WBaRHUwNkUe51iYijpE7SndFHAQBwSx4qDsxL7b6Swzv8A1K9kKoErDdkn6d4Kd3ossV8vq\\/UGO2qwV3h4JRsWdZisUI7ShZ0rvOGy1KAbUSicMWZowLhGvNyq7r0LmxcclICtmJfYr2nU79ohnJ\\/N4toFdH+S8bb8f7mD91Nzcnm3hFjOW+8qI8S2tmYcxQc7dd5WsGI5HWcnwy20zwe8FzYT+Yl+sqevpO\\/bOx7Sm8Be0xZt4Id1GkZZZrFG0SVBe3+z+5sj8\\/5HCiG4EWbv1Kco71BJi0W1Kgrt7THnEFMMqi4Y8uIrGm6viblCOLZlaeFy14J05gO9vSVwXtB1v6J2PuLbt76OKezh27TK+vE5ObiruvZmK5hljDL\\/APJZ5TFHsS2tvqVvqOy\\/8uG0GYVl3xKXK4ruXBdntOa060fMUAolcznOYECrgVUirkQUpbvFtnJ3jQVRKlS+R+GVZv7Ny1qiYsYmy4scpfyIbVeGHn8sr4PadeZyC3KuYZeqW35ecwc2dwih4gizmWGYYg48M+W5\\/9oACAECAwE\\/Ibly\\/wD8dhB0Wt+hKlarH04tmZf\\/AKgAAAF6Xow0qIvpStDLoVoRkUJSUlks9ePWVKlSvxh+CtR6VSpXpX0s6EP\\/AMKuXL9L9IyoEPx3EkV+g159FSvzJqSV6Cs1v8ht9fOpo+jD6L+FWgGgUVU0qV6L9ZIKPzMIuPxl0vOpRlab9av\\/ADMJs\\/FYw1c6MdDs\\/wDAmh+JhHWR9IegdUWJebjEjvFT+cm3Q0PU6Vwj6FaKlaXiLopdkOjuzDaOgfzEGNDQJWpFq4R\\/EFxBmybIbRNLzplj8\\/drGly\\/SvQ\\/iURbihtOiEtjTeNtzKnTdD\\/zBjGJAgfhLUu29C2WbbxctG31lWEsLoEcthV+MrQ8eutFRIRWhNOWhNKmMrE6Zhl24m8wPugrroXcGTSNKg1oz0n1LsSV6Nugem\\/RcNGJbEWYeJvIeipdps7zlcsCeYd7lbjMGyLXDibtusPoARUTKQEToVHA1BjQxNblxRh0MosFrQThZBMRF6MqDbfWG4b04Ey5meIm8PhLVRU2ZxyiG+myVNvQNA0SXEejbrXUtKNGVKl6U0GNJF0ubCC3QszBKzBWwsTdiZ+JslUS7IcwSpUdGtuEUSiAMNFpbQeoqEGq5el6XAd4wMZhabZRAQB4lpUyxHwJdwKlS234gKI7m+VosaCL0W0VOsWDFh6C4MuBnDF9V6touIWR4iVT0l4h5iCAz3CZ5hTMbhxMUnbRII+k9A6iCoR0I6XE01pUqVKlSpUqXZJaWC5lAVFxZvFKky3hvRzAlCG85dQglSpUqVpUqGla5qIwNHRG341rTZNtQhTM2RsQBmDEHzAgJ4rRhKla1+A0noGGipKSnqJbSWTEzio7xrhMHtMIAgccT9TqixQUw0ItLSmVKlSvQax0MYD8bAVt\\/gKTLmVUshGJayoJM6M3RlL6NSVlZWVlZSXqtupfQqVKlaVKj\\/CQjqcSyWRiaB+YTbqfUXLly5cX8DCV73rp6DD116HCbdTA0D6Fy5cX4lgy\\/mbPTemMdVj8NSvUTLl6L8zCJFubfW6Vy6OLly\\/TcvWTZoaV+B\\/CwlBZWubfWwmK4TfX4a9AwIaP\\/gdbeaBkCKhMwnZemuhKdEpqGAypfouMLS9Zl+m\\/S\\/hYaFIPEJuQbKEbmEKS4tB5jtLyLL9DYIrpWofguX+M0Ye3oBzOge8Bu50SGXpQQPxGk40WXpf5nWshy6TfFjQ4YnnLrSNkvR3g1B\\/BWp403fgbl9akv0mlhiUGdaN4aDoENo8ei\\/kmM3fhdFei2D6Llxxvhw+gGCcejtjBj8JrMT8hcG5UqV6N0SE3gV6AYGjf6Ar+WdGK0r0VK9NXK0qVKi7l4hBzLCunpzVVoP1+KpXqBKly9Lly5c57aJvRaFiuKtMiO2mL6Qm2IpxNhlI9INzZ6r0uXL9TL\\/AlmheWntloSv2l+kBzvMN62Q05R0EwRW3GzJLEwq7NJKlSpUqVKlQJU40qV+MVK0VKlaLRNG2EN9Nuh1yaZezBUuJQsh+E0vQ0r1r1K3L9VStGG60PSLi9GhhZDP4jRNK0VK\\/Ay7xj2Ig3PShl\\/ihmCDXy0qvsf3Kl6EqVK0VKlQjqNml\\/kTHpxm9DGdPGgtlS02nolI7Xp7DgqWadmDoephrB\\/wCpgi0WJY3oTWlj4i+blmIS6\\/CyoP8A6CLEWLCE9vWaXui1ZtK3rOqoESH\\/AJaiQm6NSofi08elxUpwyxBsg\\/hCPpXLly5foqVKlSpUqVK0r0Ugz8fgtfZvGWcxOLtD1l20UvSpUqVKlSpX4L9OzUytH8EHrFFOIsIPqdmplfiB6yspKaKlSpUqV6NsTRZfgXBN5GcaP0+zR6lMrKSmtVlZWVlZWV\\/A\\/v12aMWA7wPXXMOYzjQfRImhFly\\/oFy5cuXrUr0V6Ac+i6W+uuZQ5jDV+jdtDH0ICU1a6lJRMa16ahzowVpXXRS+reWkRhtqPo3Wy5fqBcv0jUrL0VlfRyxpi6maGnq3j0Oz0PSI4aBGXpUqVKlaYl+kyRv1V6KqbTJuVOX06zGDTb6FTqLjU6X+YlpcuXLlzglSjErE6ENOhYK1MUO8MZgPS39DcvVei5fpr1XL0XLlxS8oXC7x4sxVbpcuPQXMN9TY1QQI6DR9df8AjVwkcRz6KnQsS4bYaDKiY2lyjR9dy\\/Xf4a9Itmk4D6bCoaVQQlEVj6VuJX\\/rJKTfFm70VKnJHiV5Y6dKEYZeg\\/8AoV+ispoZu9FaVEewl4aNapcaa1MG\\/wAN\\/wDguM3R0ib0uXKyvoFNFyyX\\/wDgEYdGLS5fpXL9J6KZTG+lZcvS\\/Rety5fquOiqX7SzeXLly5cYYuXLl+qoal+Jf4CvwVcdL9JmCKpct0PSQNCLLdSOtempUrTMplal5aJq2h6b0SVC9KZUqV6DQ0KoN6f\\/2gAIAQMDAT8hqVKlSvRUqVKlSpUqVKlSpUqVK1qVK0qVKlSpUqVKlStRNElaVLPXUqVKlSvw1pWlaVKlSpUqVKlSpUqVKgRlaulxB6ySD0Kg0qVKlSpUqVKlStFf+NZcv8Lh6L\\/Af+nz+QfjHoshlxf\\/AE36p+I0uXoB0NNR\\/M\\/+Bw\\/Eei3GZhlYNmPqMPXf5z8oaViOlyhjLvWX\\/wCYjpPxEdbolHYv3j4qO0P52Do\\/iNZqem4Q0Lj2gzUDiYQtNkF\\/nZu0dePQEIZaaz0X6QlQSqdLqnZjxoY\\/m2RZ0dFl6sOdRqPwCEZum4hzOmMJRow\\/P2Td6VaX6a1HrCGhunVAtjmOhcRm2P5tus7a8ak3arUeoLlabEd4wRXzLvbeNwlxZWZXkmX8ltgz6eItJJ6QDLL4GVlqnchK1E5m6PVhzGAdkuNy2OJyS7nQ6FuJdfH1IJWW6N2iy4TiGVB0ELMkGFWiCF1ROozLzJX8+tXeocGxrqrZmX1m22WJcorMm2ZzdOIZiwzElwRLRg1rKPHjSs6OLTiPqyBTpUXvLibbvWNVu\\/cWJsmbDDxLESinE2ZBM3C7TmCi\\/wBQ5O0BmK8zYvbEFOpt9IDejCOpMnX3axpxoLaFBjFstOrN8w6BcO04e0qZrhKltrxAqYdoNwLHc2pl4veI7zAwYl3Q5mGNBtoHPocY1LlsEzlING\\/VWl4jN2gQIytFSpsMp94NjLFTd401PYShQb4hdw7yjDiCYm0C0MTc88H9xxS7jqZuio6LFNBUEqGtv9FJUR0a9daWrm+SV5RSDTNvnaJeYWWH6GByZlpcs9oaq\\/VVGEqVE0r0G70q0glSpUqVKlSpUqPFaJjxBxcuVZ3QDJdcw3IBM7TPQsWkd50Q40HOlkVKlSpUCVKlSpUSDTu9UyvVUrSpUGjZMEHEFT3g1l9R3nEEBqxWd5TdvBGH29G4qVKlSpUqVKlSpUrV3+pV6wKSks1wg+Y3l0whVUr4ShzZA7cw4wcOCYFRKzaxY1wUuXL\\/AAkU36OXF\\/H\\/AIUV+GDfAlO69pd2ibLiwXLaZe2jGolMzMzMzLZbLS0tLRaN+ggSpX4T+FmC+kYYl6Z15fPpSpUqVKlSpUqVAjN+o9B6wr8BKuAqu82aXLl60BW8oXrQ16KlStKlSoNG7WMvUaVKlSvxwy5m31326Swh9Pety5cuXHp3ejX\\/AIQjMpdm317JeGZZIMH0\\/wDD96mhDQfhNDWY3Zs0v0C9NytYFh9Vy9L9OuKMNK0YQ\\/G6YuG5cmO8ZPbL9tJmp3jDEuy4LRpUrRlQh0V6FUT\\/AMRHTaQx0XqukplQJU4IbytlarpDjKtI0qMfTUqVK\\/II6m1nM3x02jNwdZLIhv8AkPOlaq\\/8LzLNI5m+OjCKgegNlxsRK\\/EcQ5hD1kK\\/IhhhxD6JzofTRVoOPyCH4TRfprWoYszgm2LOm\\/QjD0KmC8mSXPj8kg\\/ivRf4ZZ0whXo3fhCgNsPyhoQOly\\/W3SpuhtFiZ7ysTJhtLLHStvrqvR0Gv9vxXrPQtSpWpUqEJugaN5sS7hqFCpuIb6Kz0DV5yb5o5jv+CpUqPqV+A0lZX0ZUG6VW+hv0T1TBRDOGHiR77tLLly5cuXLly5cN9F0PwtkHRcuXpcuCSs3fgHMWommGvxMxAjoVrfrH4F6XKejfqTdHrZGvMT8NSoS4suXL\\/Cku7MalaVqNWbtSHEevhIIkqPrAuKDmBKm781p3tLw0LNFiXCN3oVD6SWByMN6pXqDQb6H\\/ANoQUQhqGmbr4hrRt63QixP\\/AGDY9Yup0iG3MFS4eZWlSvQjFmDH\\/wAxqdFj65nJyQXokuXL0L0d0Gb6KlSpUqVrcuXL\\/M2PP4Jd9ZmmWh59WM6CVAly5cuXLly9K\\/G+mza8+iY674dRfqnnVcv8XxaWl5aXl5aXl5bQtd2p9IdTn0xzLl65b0MNCzUry0tLS0t+R5+HrH0HUTZDVL0xKaDRgRJTWvzXL0L\\/AORByeg3aP8AGwi5ctmdLly\\/Rf4F3qt2oR31Fnot2s1VpUqVKlSvQmitFvSVekEw9eNe70CnzocNC6K1uXL9VSpX\\/gOD8ObvRYapoTVX5qlSpXoTRNAhKhFfomjpl6VMTVUr8AKlaKlempUrWoJWNdcQgQNaH0uNd34H8t\\/grSpUEIJub+mwjAlTZrlor\\/3hhEJvrpJyPTQx1MDKl\\/8A4MInem2BNvqUM4PSX6GCv\\/NUqVraXmyE2ypUrStNul61or0Prr\\/yCRY1Fuly9KZUqVKlStKlSpWr\\/wCojSah669N6PoxoPTUr01K0rSpUqV6ibSjKynH\\/huOjH0H5i\\/Ua0ypUrSoaCJ+R0T\\/AMGJcuXpehpf4l6XL0uX6mEdf\\/\\/aAAwDAQACEQMRAAAQkFmWxySyQEkkklDb\\/wAkqSeImie+TOuZ0Oaa\\/wB9m222SCH0fszct1aTgNQBR3smyTfxLImyJp6EOcrBqLPRP4a+KA7BJJJKJLtZXtI2GlABX8KCbp\\/oJJJJTafjEU0cZf2z9XZ++GUtJIJJI7BdkqEg8799RP8ATqkxTqymqSSqEPs+MunPd1yaA9jSBqSSGSSWEDSKsRUni\\/yej8c6dBSSSSSSQqdzXhUZHJUR2zkIUuKSSSSSSiTx1HoAckS0KIK7X7NySSSSSUe4zCA1fXMjp9wlDrNISSSSSSAXTjwhehCAK45v6BbN6mCSSSUrRpGOqllAHUkLLUp\\/EYLySSSaOp1uKW7\\/AA5Ao\\/zdR2COX4dsXGVAypL\\/AIPToVXnOCNZEIazvBkAodZLampzsaE55sLSYiLzoXPjVtbYcJuT9BeRDZlnGArFSMK71fi\\/zMPOkM4xZ\\/b8I9v+aDTiWLvVUXhmyOJfIZ4Itg2cnhX4v6N74YWqjJ5QHWrqeBJ7MWBeYTbjdgzmy\\/PW7M+OiWpQj4RSCNf+9jMw6NXazQxelHReWjB7BefHygQLKt+rJPu8No3V1iMMyGkU+unYoWRpbJbkC6JXQjsNJfuSNnxpCIvVJbpOSMxQ27LQAvKSl89PXYuHZZvaJwylykY5u2T\\/ALp5QYTdeyzf+HplBPQHRMXwl7Fx86SlIiWfecsnUWzpf4zbaH\\/KQ9RR5m2z\\/wCO8bCu6HmiUXmdO\\/nstvL8tl\\/9ZvNkkDrHbH4VklhMGMw8sll8K30\\/wW0wLoogoWDHyxkTt3ktYxVV+jmoNIkkklgRXhKwNerkfwYO+\\/7+5XklMNgyNIHPkb+slHeXMVIAOEuktEIOsc+0TlQuBOCJd2WJrVwklopICS2MlknPsNNQpT7b8gIgBFsB5juJgUErjGemihiPbRgyU\\/2HA1176Mo\\/DABrk4UUbAhYUC0vQ3UtdAntoI3\\/AOW+1uCzx\\/oISa5wsuiYr\\/vveS7Q5S1ru1k1LLLPmXtf99fkQemjs6xjV27pzbWKl41db7\\/rsh+gLUE9EaGqM3dibmM9GGz7Pk2w9nSMLTkiuPb2HNrav\\/zVrv8AbbkKbIwBP6lv77fQBoa7Xef9mgdUey1M4bgVxc7c1LmBGm6eFAXNDFsSxaavOr4yQ4zWWbfDtG0bbkZCi0Jfqv52Ti\\/sktFtbYOn0tZXNaD9DdcWp605phisbjLg46CaMgqiXeTQ\\/inBXG3\\/AMh8kIdZhiee0PDjF3HoPN6YO3IRYpucYIWravuXWu8Xv7z2Rv3shfb227bu3d3nR9n+AfM8yRMb0U+m9Xly+ztK1y3\\/AK+eFERSkJYPxnqOS6gYJljz7LnAthvasrL4T3YhEvreu54iIojKDXULMem5PrN2evRuwx8Mx2rUZrRQs3IrZLbcGKol6BaNeMCrRYUJNndGh2b4kWYRJrBy9GBYLZL3U0HxNE1Zt8ONf34CTvnCSkR35QHjfJrH+0cuPAzE8Ll8EXSCnLf5M0mvjUtwi2nIPqmr5jdHzIMY6JQk6baDPxoKalByqnw0ZIY2EJpA1y55dwwSxv2UvjDxeXLG\\/wB8TOQlT\\/e9GYnA6GGEYESlX\\/\\/aAAgBAQMBPxATmX8zq53Z3YDmU8wfmA8wO8JWmJiUSiUSiUSpRKlSpUqUSiUSkpKSkpKyspKSsr0hW+YcMJ70+wg\\/i6QDvDqTed5USNgYui34lAVEwrrFTZsPmcUPvLGz5gQo8MCMkMs3aMdFOAkvUZYLp8Q03uTuzv6fdndh153J3PTddyd2d2dyd6d+d6MGPdlYCU61DdeIu7nBBENloWWWnMAbvifM1MCRoecr9y5ZQUXfLMkP3FNv3GYxr9osK98zHGG8FFB5htEHm5XM\\/mHB80tou+7GDh1cgpzUBAjwpbsEwBLbrpEFpibhDkgf9yVf6QX+ky7ko7PmINz5iNCfM5SU8YqZJ4ynSeAlepOo\\/U7h8TtR6E7EqYJTZIUZCA8G7mMfuVKJ23Z4jPhjKYSYob7wTTen9TZ3uuNV1GZBBrDacErxOnZnHPiMDGGxTEfBygODMpECC3K3uUJy6CsHurgS1Yd3BONNBfzcrLcxK6FZhBQgCvVvAJuIWzcxvYtQYzC7q79h3hte1I3YHkekFVsLfpBhKlZ\\/AlzJnaCJZoqfxGC68p7MoW5cAUq2HbHDK\\/HRy7TL4iS\\/WDWfMmC7T7c2o1DC3MIgo0RorDtxbSgKZoDKrQQBwpuLM+DZ5hcCLXr4g095xvUoxFBrboHWsEKbYug9THa6cIWW5Dw6SoxmM9w4PxtLkHsNxRf7hUDfEooyvM+3GM3G4zMi58Uza0c6JGfTEVCTCmEJeXaZ2MRCXKRA8Qs1FtNqBoN2CEsLlXx79nZfw5jsl1PH+jAFBQp95ZXN\\/wBlKzINYqUNHonMhg6X1DJ7zdJWeRZD5RUAMJtaZhYw6iYFdFrQEdvUoigPmUF1hxblYnwQ4O8zJV5kr66wc5ghXEoCMQ4mK1HomconLcvTW0wl4jHaWES+i+k3I1452mCGS3KjB8wC7sV23fca\\/oPYqCU1wfNMLJgsDESuVRN0yFmXdUWd0lMeBQ7RLRkLqJRiWb1hU9nlcMlG9LRxXJtL0X6QupNmqVCb7jm06fBDa8ypvVmPlTriJM5GJY\\/gIy25eYpINFGJm10maOekYvVjpGGY419dVG5EK6HtzKU1ADisSwngfdMeJA33ZwLz0r3qZsrKWsXvv4jlQN5iNFqC72y30CphCl5t3JzMeBu0Coa7kRQ2QYehBjZcA9JDMxVUELJkcU8cp8UV90+1LPKlGftMcoOjJEdIdIFQ9TWI5VFvjE7MybSiPePESV2hBzERkGPeZTshjy7QX0\\/6SbgyDuB\\/cW85x\\/X9SoHzFfZh4FMzE\\/ycUJSxXmXXK6oAYhMNkU5nh2Wz6IYj5Opx+ZVF0xY6E18EtT3n3J8ynBXP9wLjpCFV4ntYXZSUGSIQgPagMmlXWbSHEvI99DFN9GluwaxzniZ8EqPAwc9d4i3ZYs64f6hcbKXgUTcUUKD\\/ADGh0W2QclT\\/ACWlLQ5vN9s\\/MNl3AaExTTAKr90YQGbAHS4JbcXQ9VtBs\\/Lvz41gTbfbc4eJlXvDB3hE9U2HevuVBDLEqJtDdgJV+BqBRR+6LFt7ZjpnaNm8veUIpPNRSKjbkmIYqoF2x7hp2A2wpnar4Cj6JglpT2rQfDFGUm30QfUAhbCXqd\\/YmXQsu9Kw9ob3MD1ZX\\/No6v60VsEMr2N5gp9UXMmnOHd6w2eGj50vzLtxSvZxKZu2g\\/0\\/ldQ8UGXTfM\\/MdviUDpcJQ5jluk3jVzD6FAgXdlgzZKC3nYYA43alBQSE0g3Bn4lgJRPMKoCKq6xLzMAwxCqCsdqgg4snRkPLBwguOmZ+ajV\\/Dwr7FIS2w5wDA8zECGD2T77cy1nI0HJcObPgn920RSQBrS4FuQ+aQzSWixV7n6gmO8\\/ubADYXwGIxb0K7Xk9n8v0IJGf9\\/zNvxLgbjcNiVwyEanJfslwvSVSFbUAaFCoiwFyWwS6MqclssK\\/iEAyoeYgZcyiQ2jGVHaMWuJYygDs48xXsmx9fbOnhQOjj3fUuNszcRQPED10Rjlap+YBEYwd8g9gSsvFh7nAeY64wTG6Lu2ChNssrXOkyBWkqYLp7S5Ylca17JyHiojBTgpod39\\/4mUg04Kn3GGbSAWPgzvx60JyIPa8fhYWdIJxsnUfc2\\/E4SFy9bgHwSuX8ZlbiHfFwNKllYlUBjrKTY8zN15gXvpK\\/rHfFx1BlpztANFwdgmDgtgRty0xl\\/hCHwVJyGge5+8HeC4QCr+UYuOt4oTSK3LfJGYPCNhRRRuG532iO4gssscWlqVVEoz4Eyp4LFzUAti2PHCRsg8qjDypuuLU4GUC9sw8subzuTLyHxxA5vegNdnvY9pSBZV5Ez808VL9Zu9u\\/wAwQNcDCmDcFVYwji78L49K7bisH1Epiu5ljLghPNhmf4o2PEV8QAwLIF8LMcvhxBpnaDdsKXFtZYLfMGWUb5gwKFb3EZiYajkjAIeYQFhWwbquI8aHdyp2WhL3Lhv7ktABvhl+ud0InxhodVzGwgRQ6ujnxE45SmUStsi6YIum1SwlkU0pwLMwQCLgoOEW5u130lhzMjDGjIG1olxeLOFbrV6O1W+IaZGKSGS2ku3jtCxiM20ZU3x0Jm6AltrgKaBjCYHYO1ct7cuPzOUtV0KJ7KIzzkD3p8Fcwx3Fq8J0O0pEnRiB3htwuXESGUcTN2whzBYIbwTLMxneAmGLRFJNniKKhwxU3CyII7EiUsX6JsCAlwkt5gAl4ZgW3C+01JRj8V3OfhVRht3CJr6xddxgYtE7THEmU0QUgxnRXKroBcaHFJZYETQYacTdlOwDueD8pYDUqkc1QeHac\\/d20dAZOIpnWIyVC09C\\/koRExVsG5\\/W5ZQ9RWrdJLQDljdvRLFqmIUzaTnIWBRHpYPiicRT6tvNwFesSO6xD2OCFQAD2ALmLzc7on7RZUBFLbapwln\\/AGFY8AFNt2MwQOzDLiGyLuqB1mxIaBSW4DxcQk7u3op7vMVRWe8ZH4iWMlGxdy9xiAF2VXmwdZZid3WXqE5jEGEGNy23CF0D0XNijyNxDimbIjpTi+ZYiUR5mZuxTFks0aZPeEj3tUEgYUz1j9Up6oalx3L+oQDcji9v9sAsc4mDVRFVwSkdpA0cAtuAYsCw21lA\\/uVIK2YlKSmmG1H9zaeMplpVb2WOCsodqiysLsMynDVwjypu9TcjvQPexvPd1T\\/SISp5MMS5qyl4e\\/tFooy+AKDsrO5gjRFYymjuG9YHdgJGk5wb007hZHrJZqChZyFiFXZqKQ3NrEuOEqAFlCHeQawx8aAt8JtkyJBcBltKl\\/Lu3zTC2mjtlwlN52uZVFK+uI8kCGCWfWw4qM+xvFTbBMYo39iGjBBw3UntCwUpQfZcLJ+XcjDLB3dZYsCLYuO8LzzFzsXiDiqWTiAERXJDC1hutpSrB1W4uSK6wziuoGTMFS7JmzVr9Srq8n5j9UZo5uCp2DHeGnafZfuObtLh9CKLgAoQZQC1O5EC4JWKGympSW3REUAwIS5NOSjYzgvOQ4DVgvjCH7mc0rPOLPImfBwbHoVSu5cHQaCbzuKsrmvERf8AqtgzykBVRh7J3YCpC5igtHfrCGaeY2l2X4pdo2Qg1CdxYOzEyfMRi0+k1G6W99ZGANG8hai6h1TYCsyel2w88qaIKZWmjLTZiGe9Ch1KG16jLMnB8eFhC8ByC5hTYyJhl88uLjjnTgV6BuWyTN9zS8F1dMwF274yXC+8UYgkOMHd90YR5BOaueW0HbBLPYcSjbxuSkF1OJTFT55hQC9v0lbU2IdF9t3aKMfBdtRe4b2I+JMRNueZtDTaXoAh+qVW6tf1EA6ShGR1TyuPvvBoSq3gdZYL7ylXyrszAf8A6gGLKAu+0vKuOrsIi73MyoEbr0C64D4QRoASq2hHN3AcqYwkMvN\\/sDksjI8tbs5Df\\/k5huKIC0eYxVlw6he6OdlRtYD68E2AMADH27pr3VsKZhqG7lrSUsziuIooxVd4mMuNdR84JUZZRhVwWjm4HlSQ62+FZbtpUo5FYU3OHFLxDoAB7sXTbGL2PMtY+pb99yOtguZ1fjRYcZoEfnYGLwfkYfVs4XhXv2lO0HNkI9exMDFdsSAG+a5nUe8WXZ5XCGCpTU5JXFPMGQpesOJO8HzJW9wbmFcHCwcEcCSwOk3nqjEy\\/VEh3hV\\/ESt5OY1rUWdlhau7D9pQtfEQDanwio4JymZkc1e8cd7i4zozf0XgiW75Twns19ytnlvg8pKK9kgyu\\/U2Pe3jy9ioyCzfDI3IWOEiNhTQZu2b0OAnQY5ols2mQ9BXsAKc5eiEKllBBZs8XFOOLlGlAeSpeAzqHwy6vhIkD2mGFtxFDpcQOXwNhm5uACqzAKGW94HeVDtMyxCgdBZiB\\/ECIAA4pwDlhw7Zm9pb+ZavFh0pfqJmjtGS+CZO0A+QrzvDSrSgvgNiBGCyXGY5MRYvmClmYy2Ou9AKHS43RJHVu6K1L9E94X6g+wgDd\\/2ltjDb6qMhSoi5a2LTFm8WXvbEMtoucbztRVTwnIqRKniELPeHAblQV8wa8A6FKCyMQwYc1LQSzJ5dEwlAwvSJgtOB6t73UsMTFPAxZxbN9sQqlgEciO1nc9oRmG\\/hLyKXQ4gLHOslGvBYwrMb2QBu2HmOgtoR5UIKChSyq3viG1FhSqb2oIOCpU0liaowDC4Mdec1mZt3+djOH4hjjcD\\/AMlf4iSuTcsOBeZgExZdMBi4m77wm5imPKVbDDCZMxw8wJCHSqobQ95nXulq12hs9oFp6\\/1MVxiAfybks\\/g4hGJHLcSj5lEQ40qJRKuhSdye7rrfbJ2EYP8AkfMCBgngEA6QEbkoXKh0KVxBlBKOhMBVGM4cwrN+ZGWbFE09VbRb9GrSPryMrTaV8qD9ISnaOqPjMTjBKiHKuFvhpQwXVkApaXiYAagY63eZMWaZlyqPXXab0NdstXEWWhHdx9AOyNldgbbTc5oO4bMONpQE4sHr0YgxAtgIgptUCwzOR+g09NPJ0gekT0lOkB0nZhWVlPEqEJY4KjDOkz\\/d+oruyNntBn9U8xge2fufNj9QyBbgdl9xPlB7KI7KPWzvojziXObZI6wW+Emtt4T4DGVwWbZD2mQlNJwYyUjukWtIoLMobS7hdSjG2rAhU1Qpyo5TJdUAyCAHI7o4zTpGcBzIzxx9szQKHdNmPiVfEuQrWY3j2Ywu70KTqQ7DFQdr+MKNm3GMbw7wRzsjIopuy3c6ximqgPSlneUJWkJJnlKH9ktWzVWFrQDH7iNDDWy2\\/L0hWUhaoBSRXgSikkoIO6EWrLHrOB4dVQiJLX8aZDusq2qp\\/wDCn\\/yJ\\/wDAiO\\/wR634n\\/xp3fxO8+I9V8TqHxE2n4ijZVmIULG0x9WI2e0KRdK5RU2jXMNfudN0\\/U3kGKcINwi3CdnHoYdLMeyBRrwHdm0wQ5d\\/cczvoQwknVvmJvybPJ4hiy3Ash9wA+zMZtIjAVUC2XW+CI2xbxv9W+t3WcaGUtjtSq57YluLO7wUhyK4Lllc25SjNuaU8xtmTcdcWsHfurlzKawbo1e+GVAqRZwbPLkGExERoHs6+0YylKpFF4oQrmWeaBZ8fHA8IlSil9bIbyc7NdIldIUHzNm1THvFn9UV\\/hOEPiK\\/wjOHxHjHwTonwRbhXiO4fERwrxBwyO2kEDLtibOgx+iEFLtiCDcQmCeMiu0I7wxHGHR\\/Mv4fMV\\/1D\\/6p2U6kSzryHgxqOsDRvhFJ6JToBbMFJVHhSj8EsEG62Lt9uVSccYIntHqO2ItIfFdimThgjw6CoAF5T\\/iPDicACNGxibhzuw5gXlxah0Oj3lbwVVBLhZZ1Q3OTh2Yvu0AbiwMAgo\\/dvvlo6SsVKt6iz3YWx8bALXwYFRSyWdI9udknbJ2CZNiX0EvpI9kFNoQNjDd9JRTf\\/U\\/VEIo1M7whe0rvSkBqWdr4hOTE7qBd3zDcqhhWloXfm6F7G72jG1be+8\\/fJN0IZ8SptEgZignReDl\\/1CKzIfi4Gg26bmnK7VCbEswug+covYiTZZbJUyNr7y3gFebQvvE9Y5wi1hGBFHsbxJaJQEeMWdWQVZRp5gIFsGajqieSnm93zKFsCl9s\\/wDERZmlvXAygyX7xzFZ8x6WOtypyvmHb9wjZgdjcegwPDLmqYdh0mMNLC3bBY2e0ttuYUOd4Ws3tOEbxuJRA8QgXiU8Tsx6EKt1FdohfYPjbCyrhqI7QLSpuXb2By92CM2CDnNf3QKFUVZrDmCEdv0ASgoc4hYF4+pkA0tqcxHYHGKCO0VAD3Ykv3BTOztFEhTbEuHdMwPMl\\/DHyCGc8\\/8AYLtl42S110FObJcKou9YKbynnMvMsFzFOWAIE5uXu7hvZiEHiH4MbPaZHxcFLhj8F4\\/c2VeX1BA5IRPMeRqmAjHuWJVy3XayKeAHqDd7rLLgaBA05lxaXvcj7MwLqwftlTg2XZu9hkkvDFskLFI5M8SjdL7v8m+o8Wy3VV93mWBxXQ3ReTuG70uOFJpaHMJtcnYpHb5Zpx0fZiCgZjA6mDyl3KmnK+7t7QidmPbePTheKl4ipWmY1iLNQgNtoVP3DraAVguXSFXxLTVSfDANLHXMWLib7u+o8o4fTK5+X1ALMVcoS7SvSJyNpaY4ndAj6P45jCGhqFy4Szekvf8A1AWDcdD\\/AOR1D1cRFcHcEtwXgMXYjlpVlttiIeCq5emIPkMhd92NwFWtZhzZRRe3dhkB715ePiWoJhxuDYgsicIHbPMzKogAwUNhyRGqsB2dmVnXaUx3jRtAOSCCEJeMBgKt7l4aepLncINtVGC2wW0DD0gUc1MtAHHiGcK\\/yVKw7LV7xUCh2OzFov8A0TkkqsYwj8kSDEyBCIx36cl2GYWVA7lbrussd9DQdegTV1xHxvH3NeTnlZsiav0meNYtWn4QllQtAPjYeIoYayF+l6Q010Kgwh3ZaLN3LI3a9ow8RA+\\/ZBKegcCcgQNGS5TveeID\\/ox8Q4bI6Ie7UohSqwMcuHgQ3wQ5Dpjk1byCC66Kx3h1vnvmz7mYw98IvF4ly68xbMRMRjX4RlczJXYlLudg28zEkCHRTtPACFaIbaQr1wCGpWwTJJzDaSaZGsWoTYgBUZI1Zt7sF6LmHpvxgq\\/lsQ7XaC0buIollJWKxaz23iyhkHYV\\/MMbtt9x+iE9hp3UHv2ipZRob5GbFK3yysEIsLsAFU+YpmxpeM1Fp1JiDLqAyMFDIvbvEGihqzW\\/2dlpPMBCG9I\\/mD5QJQWRfDY0TAmAYB4Wr3jXvNpWg0wgIYNtr2OGKaozYHAFmIfjeZtV8Q25XBhhWTpLiW9oQInFZnjWI1KYjdgJKp0\\/uVZYrPMoSqblnUnD8Nd6qVeIa7QxHYqDtOgjgGOU2VbXWvTYZdjLLlzZXiCCu7LYuOgcbpTRso725fMLawZ2J9XNmXlk\\/ZJmme8rx+4DGpRFolqeRk7TYkTqYCm5+iN0HIOQnAIPb+SypL2Mp5hGVumu3DLHqEKFuu9iyGwIFKiDIbd3WBUooEwtrDHjeEgI7glN7tB7QfxDIUKvfXhsRxtBO0OnHow6EA4iEGWZuBm6BdghvUqKnuQsfQ1MjpEERN3WAPzSeUPqWzE4gXGMsPs\\/6jF4gdZfSba1LLYkO7zPfJWDtM8sV3Rw28EvpNOCcVmDY3hOj+nhDNueQ+qKtAGJ1Mn3AGUwSi0Di8QWFsh5G7X6G\\/MKW6UBb08H2xe5uAVKC+D2jyp3QqA5zeNywXSnLB1PeEt\\/wKYOyCqWINZ1MC9B7Nk5YDh5NzsxRrP3Hke5AD1WAlFcLFK3isdiUnTRudVgEzXYmIm8OxtKwaimgUdJRvSx6PhZAL6iE\\/2Icq74J81EU3O2APhUeCrcH9hP1lIF7Z6VmeSXLlx1\\/wDBN0ju6X0jE8QZlwLHboVyLRqpkK4YWJU2e2kkKC3ReEhJjPBP48zx2w6JkhoCMLRbYF4FcRjs2KXijYe0EjFyWiG1v2RausiPi3BKS2uBpHe+DxDzbilHJ+4WZ6yro94FsQ2OUvDSA2UTbupEb4rXVNNcub1tFjxVS2rFYiQmW55gG+hKlOGJbS81\\/UR0aIAdpXuM6e0G5UqNHKGMpwxvZsspOoOzLgbRhGjfeo3bF8l28pTo3uQqzR8P3ExD9Vj6ZRsId7Pu4MWewUJ8cx+iIYTmEQ+Y8OoCdt39QCcjsL1BFNuBXdi3QNexv7hW2H90P0TreU5\\/5JFOPmGORu20wVt3j6Ri1tXjkr2lgcA1TIw87Qa2upT3grFbUobPKWipiLjK\\/WhUCGHbL+Vjh4ZyzoPrxzvhsi0Bc2YgZ6592tEQwBoWRDEkGTenolW8UQxOuUarfEOazRZOSxMwJbG8VtCAZSIsq5cdfMVhbtAZw\\/I6MAaB9DL7lXCPP2WEu4KzC3yp9IC3fZJ\\/UOBx0grq853f7gZWq3Mj\\/k+\\/B3IjF2hT5DFrbY9ISiWAYis95mr9EQbJfAAPkmVfB1ivu8TJXh26xaOoAbejYrrHoote4zzlrEMlJfDms7hDUJWLHCNf9iPuaB7t7x082rz0gZTGSr5iBFJoZrTYgiB3+YIgmzt6FIN6BCozFXMqj2veNKF0ERFV4GW4Q4ByJG8Aq6lzQlJESjfadyDyMTqJXrPOB2jhxMm8OVbwP7hdRute8EmGvf8AuLlgqNBL7kIsJeDZ+ZlRwYMj5YaDHNV48ogQvF2Ku+ESNEATDcsJmGDZ1W5mZpaFVYH5Io03a+oN8rLAXJm9oGJhDasUn0kUg88MdJWqgs7t7vQ5iLjFqXVx2PaWBWC1LBA2nJVoVt22HpOnLZcZmMmL3Yb9hK5SoTfQ55unIW6nw7\\/uVX03NaZVZ1UQN4dvd6QPIlK4LLikHEdQgBNlrF1kCHaJmivzG4gZdUC0ctSuw7XMWLXvVTn8SxVLDHZjN7IR5EajA23dcS1i1L2tGDihsWidesbZ5GOnaKyjmtvmK1g8j37wsUFq+uDaALOTOeYLq0UMWqj3mZCjTuly3ACy6ZZ\\/TSZ8Bvhwxy2kAKSisizPMRQvxGDY2K6pb\\/GI20KHVhKDgx5RTFN5KwPTrMS6tKdNn7iyLrzYfFGnFsd1QF+kygRnUPR4CBcQbDyHuHiGASCiNDYkuMy4\\/Kv6hEuE25snaaQGhdyPUiryXAJsTBgqAKmQi7sPFzZAWIb+IZ87O9xiWlW17zFRVJurpX9QPBBI9GAeCV8gs6IlUwOPlBkzWYFTdr7AxHqbMIzuu0MBAApprxLPUcLHtmMuwWxcZ4xcSAa7WNnxAnOuSXrtVTbm9wR6NmOZWXS0q3naXGwFFqDMl71CIAsRSkV8XL0GnQx4iBS4ksm+Bs9oHlF\\/EHYWTfcdg+IpZcI5y3Drc24jq6CG6vEuJNlNyh4xBtTXSzM9xRvGHfIn1MPLxKhylb9mzBLq+SgNcO5WIt4CvQTNMjx8RYhYedmqKRtljvv+oEYljRuTtTtRQhW8kEEPKV3gi\\/GY2SUPBiUew05raYhOZqV2AqHBoqyd+bS3qdxT+mimxO3Owl+kRl5OTrvUlfCDeTEJAFsocMZdseIqtld6nRPFSrNPDEAuw60sOd7gFf7i1UGwy\\/cbzgrlG1mqcXOdaF8J\\/iypOM+0dXKm8Agw8gPLKO0SGxQwo9+kVUzKi7s+OXKFVG1W7Q1MJZyxnq9Iq603nmPc\\/aFVWNoisa6MMNR1EHj6JzSBy60d0HaEOXZLJay7Phs2KhG5Ec09zuC9nIxTA2\\/plkWXSqTNRvCopOYvi73FBVVV9Y8EpvvMplO5OgQVDebzBczzOCPdOxUF0lHEy52h1tAuhkf6ZU7xLsJxTN8QDzAXtMNiF3lvUCWu3Y6QEbDuhUbxkO0uP2WQxrZ3ppH7Mal7dpR7hGEGRnwiLTrKnr\\/3GIoAcLHbBP8ASBWys7mOzGyGVz0jJOCA3bw6s\\/RCUKy47SgCgyVhd1mWBYKS3mwOmydYtrm5ItjbosTZGWgfHcvY3tzBQzgsBZXUc8h3GIcX3IGJ1fc\\/jMIcymkFO75lzlXfaXQVUMuA6EqnOLKYgCIdCAKmYzG2czmDbeFdJjpBIllQZSANy4UFQG7fFxPwABn3CHK3G5H4cxFHTeofKVEtUvkuK3d9mYRSLyMt1sgUHDeFVDOxLGqwjuLadi2VgWji5\\/xjWnNHpVzhqewbERAW8Wrq5u7bRDzE3FAb0O5KgiVFrfG\\/mX2MVgIAMxiiKOwPqi1YyYxoB4YoLrephfsizuRFFpc8gRs945KbR2EsfmmIHDBSOmMiBYoHLbuho4sPyx3PcxEMR3lO8JKtjV3cwMKbm32lQBEjbI4HMeRXlmLFK4O0lxgSyyKkKuhODMN5ZyTvEIIzMzKioIuKcnRyS0yW9n+oZ7ld58pdZbbBPAWGr0QBPuTmvVO32H9wsK7eiifKUHcHD6am3FJYIifJgIqjKd9LsSF\\/ryTlfDtDNhuIVorpTFeYNpV5u7ELYFWCg6qsSDmZmdy7m6Y5BGibYI9oh0KOZANTsJl9KVNghRtnCMptG1h9Gtg4d7hkgF38Nt7ciM9CU5dKMIkQqjgt242Q\\/wDlMPzX\\/DWw+rcB1WKxFQMdoVW8veHVFCQQHeVaLLDmExfGCeKV4\\/y52GgBvZ+Z1D7m3Z+YqwyyUgICUlNSyUmEQUDyL\\/cewKIgZF+7aJqu6d5ystMXKywxgo95TDBhMMymQZP+RVeqaV9FnZELdTZwuXAojVnptHiCrKaiT2nrO6lp4lClJhrrTsry1QvZlTSqV2C0TuuHHrGhueeq5JY8ELYnOwlkNZsuFawTBYW5GIKJk15m1Qdx2gRA0LagiaDDCVdHQsY1N4OkUGCV3uJesXMxvfpBHmX3l95ctlyyWS5ZotFje3PjmEkfBkp2AYJe3dOHxGbqbHjtCF0BuxjYytQDboKPJxyB70+NjBHvhKoBFCxSZlB6QHxDblSh+bSKi+YWl1AoMJpy32jdtF5cgFPHJ6zaCEFgee5wISsO0A4XKiZEQDHOMBp21LYZnSzTYsmiYl7XUwV1Sx9neC6Dc8s36ZceuiNDMvN9C+kphcpgU520YmJiYmNLNCYjC7CU6wWAxQvXOWVN4GxD9wCtlwN+F7EeUxC6ZSM\\/cQ1QmHW447ocOXi4u5RY+JTeAGlOWF2uKoZaHmu8tJzBFbw6bN+73ThUNW4G4xaWzkv51hiz8hlrNyEEVcah\\/cQUTaPQlYiWPOV3vlBbWxBx1zuBTqugMtOHXW2gaEDWxquCzed6d6HUgQKWloagubI+IU\\/uVLs4e83DiDADn+Mv152CDFCluOLvTey2esXXarA3NsJSEy41i+2Np++ZTn+ZafOgDaIIjTwxGGg0bARPH3S6DAYJ1XsgVQ2Dc8kYxxTR9Swg8MXUVlxvymMdYLVK1WKh5w7zIr6QuLwzMIrk37k95fee8uWS4QonlvPKece6W6wfLF9ZfrF9YdWHPBom5mGcKnNqZSCgi2MvWOijvjrL1yZubqqPuCWgLpKriiviBEsqxiMkVscnfbHEe8MZo2fM+jFmLEMReTgR95CZnsAO9RxVfsfeG+qUxsw7kubz9k\\/fANvYZknaZKi5YWkNKlSiV1YTswm7D5h0E7JDtRcpCoV1cNpYW7wV3nel4qdydNhRvL9WH+nUY\\/pZYpwLv5goHcuCUoWAUXwMxDTMAEDi63zLg5BkBd95UC3O5pX+2YhBt0Sw8xfFFHieApDlVgnKlZ7D7xEdIcOLh8y5idIi2eZeqMypCqNEuN2hpe72CMdn4mwM1tNxZnwzvLBxDpztQkPoIJsIcyTxTGKpy+J5gSoFHVxOtVxYtJ2zFJHEoMt45hd0lw1KVvGRr4EwWd6jswqqOTCQRNhsFHztGy5MjzvmFyudsdS5YBaz0QK+IMOkI2x9qWQHCzilcbPsBqVjoXMibbuAntHnyjhcN+jwxFRoTCXCZLeXP1BGr9V9Zam9j4ldoBpluxUSZMzKi2i1fcZWKwteA5Zv83BG5e8u+0hTtYK391RJlX2gFWvaL\\/4TyIbgo1Cqla35ISwLQVW8eK\\/CHbK9WWVd3dlyHUCHMkxg14riPskKwUgdsXzOJpS1Ue7mZmBIbrNX7y7Fgi9hvbO8ZdBpz3i7\\/Zcy8SJxMYGe6WyvEIvoX8ZiA62Zn9BFhjknUP1EOwzAQinbB8yp+yGrdyDm6zMu0SyVe5CG9LoZcCESnpK0L1Tzze8Kebwf7ByhPCofWZR3nVR\\/qC6kICQQAcz+ZgW4+ZcA7N7SgrFNk5g1AKiKh5Ick7UqtiGyqqbWeVQmwIoYWdzzN9AWFuxBsSlTfDle8sa1oG93bP3C\\/CXhMrsQvbr2sJhrrjeYtuy+3T2gQ68E+zHJdoq+RT3YMHeVL3iy8Rqju\\/og9ofkgUS75O3mb2cm8DNPMsfNJcK2+syHaLHI3l3c+YZWm29zF7HPvL+PeedSr\\/uIb\\/aI8PmJQPZPzF9knWZbfNgxgvzBMge0N4Am1EL0Q3P3DZ6wm1Hw3KIdBTvvEucOOuwIPcI89HhlhoiRscSqV5ukpC02UYXZg1J1Uwi7PmEAKqtgu3hBCrR0Vdrghf3kngY\\/iEoquVfP\\/ZbIlJhO8OXiLR8wPgix4isuFt9oiU4uNHFwxubf+iZh2HQ5mdDGd9+ZRdm8a208REjLi4h8UvQxbeWwCiKkO5EXtQN5C8jKfkVcQZLpEMOdVqcxeI52hyIjFoL4Ys5flcJZ\\/wBzA1Gj9gQ5dvaWOXxEZUt8g9E5JR2Xg8XxGhUDpHnW14gjmU53iestePeFatMO5s29p3QXa6w7HTCBoKSO1FLt3m9ODi2OLdIigdHnsB7xCr6yite9EDGY49Djy6z7ZteYFr2l7jPGC\\/lj+koI7MBIyYPiUvcDt3e0oZM8zaKwdB7TOtyspPhiGkvCsjk9pvCy4HUFuyMfWyICKqVPgreC8y3aDRmfKBHtA9InaeUaZuecKAdfudJvrFpDh\\/mR5IkPpkLyQtuEcQW8kvgVC+ktXws7Jo4I6LIbfLtQb0YzmK9o3I5FuKGYCSq0BsUgUWKpJsIM28lKZ5Dl9yHBUiVJd73Gyb1Y9R2gaHeGi9pjTL+1R8EzDrDTLoJwwkiwid1arbvzLM8hfo0Q7zd5H3L\\/AC1ao6Dw4YaW85sSFa5bWyCq1iswPNU7TErabxZLgdwcu85DeH\\/zOexisP3N8BMbG\\/zFD7VTPTb5IX4PvZUW19GKbUeTKG2PyzAUiYzMrT+5sF6J\\/ccaoDcwfESDR1QbYE2Ax8y3FrdVSP8A3mMLcLt3ydVAscyt4YFu3CSpxagGlB08MjdW8AZ9o9VTQwuXIZKdpVVJ3GkMZWG4x1AjAXUA4NshfroErUNhRWA2jfMLEHylD3f4GVFbXKB2WRYJau7MDHQIuSMpul+0lVfUf6gMtNw4ZYNKIcEnQ4fcB8Wh7a6BsHiWXNiG6avMW7G2cxxl3bm5Uee9whsONmdL4XzKjh0FMAsPDeXHJd3pF0lqukuGrTsQAhW8uIAlBbG0MNMMJXOBsBvAIbveFlovzDDQHeddHiAFli4YZw4zBbgR9911XSCVPbKMf6PETgSpaFWeZmq6twMfMDW62uNm4vjhUQ04MlwNpvEBKC8b8XGhUSlujoBGqL7kq8vLE52EjCTd9os2Nb0H3CIP1WAfEUGNNxbQWJddNjl\\/aYZwuUq4LQhE6CYdDLsGy4U4gowM5bjBAc0PlDSnuAMebiV5N9EtVHmFl25EN8aOn9y6i46VKWKTAjsDJGLhjmB3Sm+kF2ovxNuBv2jEDlnDhYvmL2eUUlBdlrxGRsHN94pTSg7FQ51POPmOPg6XKhaMYzb7to1qnrhuF2PbcMCo9CAfocRotCuGv9g2B22KqKbmeMV8Q0B9gX1DiIE0OaR5Eh2pKbJZ+4KhF5C3xPaY0BVFNIMNUQ41VB3h5Hh0qu\\/ArsSxDXNQbVeSLmktCUVRuHEXfaKqCBxzE7K3woxzVzpMfxcjlBsy0LK6BIsBoQeyssSv092ASPnneyKKdkp81Al2sPc94mtV1bgdibedoUB1Dm6feACkurGybPgggQ6D47w+xNtdHrjrLb9apy94MZ3ArRFqVzjNwWyWqbjXB9SxXuwBsX5SlXisKvmVvb4zDa7tsXfwRUNCxSo\\/UHQIikLTXmD84W\\/jMoLAoMHhJ3MNoN029qQ89ouxDsWQ95aAMlRFqWLAYNlccRw3WF0N\\/uXpbHTcviGWL2RDtdfziAof5vMtaP8AOksFOO7B7NcQ3Gw0rSuiS+Y3BhA+2VdqgltYLFM8pTLI2GJxQsvzLqulq3eDvfawLCtCsRHt+gZpQnlGBRb2GHiHU5+ZZVFe1QLZQHMDsJfUimVnDCveCRcfqRcOPNun+zKEKSrHiWBLu5DxAARVMlb3EImOwPuceIVbC4UIicPeWWpXAp74hbuYY8HxDFCpgXh4uMptPIynI+IqgV4UF\\/uHvsc0sUCX2uXGvb4cfMBPBSS9vdt2gXKrxtHAlZwU4hRGuOIAXRd95bXYOLKiVwAKy3raL7h5A4PglIibrRm75yQuWpwNZ+IPbbfKIVnNcF4ibGxsR39oG5LMGHPWLthaG+ZkHJjL43gLoNbLG\\/zzlm8LPliAowVVpTou3jpARXMFuHCdSMTVFn3L2E0niFtdRBwN3iJIMebIWQ+L55e7FhYBsXR93MjmzfNQe9wuSqhXRXiZHjG6p+2KwtXhO33NgYdF3LJs8y05KDgqDabOAP3RTKPddc+KIvtHQB9lxO1HAZjfMrDZ7PvMaRYbUDUK8WdXYcPuUtAXW4+Gs\\/uPttTbpbCgDAUWGl8TCxeQ8Mf3AlEKS0R2C8PEoMOOh9OZeF23qyAW74tHvAJOVlNvab9HxpYMNDN\\/sqUUWWUcM78wC8DesvdLidCeKVX5hZsNOu1TpsO4n\\/Im+d1Kpcg8hxAaVlzzKNX0jkFr6xFy2VGgYaobzXMwHNuruH4hu1Y1Zc1jaEraOh8RJcKt7DB6OzbdcNrIWFbZhchRzJh\\/Z1ge3KVRl77+IFoZSJx55vMs4SGxpQrsyoHRiR3ROyF0GubgrpMrClFs7CUrpvQqI5LbD+oES3uT\\/UoLw9cJmzRbZ19EE0qeTMHjw2fogbBKz+8x2MaK3e0Zmr1QWAuB4ocfLLwu3LeYLJO2LXPhlJROKO\\/WWRcKF7HQwGGDju8sQAp1tyXsy\\/Y+8Grtd4p46SwFUUPCbidYhJWOG8Qd7F4iBW2f5vOCy+WIwJldhUAKrDlmvH+QaDM7Vgmypk73mybIRbvunmI5LB0N4i2FcO3mAOXUbtgSwru\\/5MouXiWdam9+JUDKxSvCbgDsbMwQoCulZi7AAWjana43cBsXUXcB7iYlCj7Kb17QsFVkpXpvGjLq00cW9yYQ0rDJdV0blGUgmW0dK2ZZ2mgUpy9Z6sMp2B7xfIEeoF1pvnMWgfvtO1tEGtMG264xMFWqMfbLFYPUGPMYs8ZQT26ROtzD+qpgb8gWHPaoOizgCne4I2TYAcd4AXuDNpfsFZjvG9RDPQuGY0UhRMG+CbPpwAXhSBRQXfGXyiNyV2VHHfEERRVVbbbKV1UYUKz0R5lLIPiomJXAyDmotBGeTH1M4v7VBrDu5udZ9t\\/EVgKOrcg8orhav+4YJnVpWIRKz3D+5arV9tMuswcDv8Qo0A4ra5ghDdVmG+ihqyhBMrNWpaf1NtwPLn7gFoPN5PaJhdFb2e8Uvpje\\/iB4S8tGZYEFOOvtCli+W2oK1vcbb74I2KZOasw42mK68Kv9S8haw8bZjl22wef4HrFy1TYUy0iS7A1wvdV4j4SVpuLPFw42GNUNH1AlAmypghPBN717xJFjIm3usomfj\\/jMQEANlJYyB2B2hbIjay7jmAGbx\\/dSgtjuXeYaq7G6fmKU1F2CnOSI0tva1XPfeBoC3sr+lle1uI\\/3CtpLwLzFFZNjSpvoeSzD2yzMgHvvycrkgZeTuxSBS9+qvhDgpA3bJdYSDCW37S2d8F5upW0wFsHM994WACy81i2ALUorKf1EBRJvWPiFDRFxSpAyl5Bw8TBKOGLtggUwpKaK6QzpwYTD4iZYoMnUmJbeWTxUcwuyUMuzUOQpfvC+8q3ehGrsSz5VWDao0WiuhWIqMAWsHiPEy4avneVNCQwiXFVAbyKC432ldBllDBhxFJmw5seEXoi1dAPpLYQig4Xna5etfF\\/4idrvsTJord1\\/sUqg4Y4AUN7T\\/UQ6DoRW0b3naSDP6gvRy63DjTUv2NcLvENgy32IFZI5WX3CZdLsrzPiFxZ9h9zFlNUm94JaWb2pbxiBEtDjl8QsVG7f8EdAvJ0mUZpw4uzwy+NuycW7D6ip2LyuV3XwSmruFwm2GWLu7cWkekHAdC3iFVJbwNsd5SWl+TUwBV7BGlCvdgVheBVLEt+8QJG66V\\/cHcl\\/07lSlYl1YIHfMHEHoLGOYi8ywq\\/aoiKeG\\/3DKLsVTkVBRC58\\/UeCAUBFYF2yE7+aIoU5GKcVDQ9zBeLY4FQLRe7xib4qotpzKIiWqbTo7dY1hENi7ivr7IURzrB4LPu5WzAUpKTJvYvjpUNgqdLLguiu9jMRPQUwd9woNe7G7RdXgKrzFI8t6P6jcoDpl8rC2w0o0nLA3K1C594HAWc5d\\/8AINRzYdr8xHMQMBWfeLRAOMqxWw67iAqw8sqBZniUKtndMSqjiN\\/1KKZWtyTg9ip\\/\\/9oACAECAwE\\/EK6ly4SpWl\\/hvW9L0uXpel+q5ely4otBlMWLN8rJeKl4OA6KRYODl4KGgvLS0tLS3\\/gAAdZWVlZSZS5fSxtGupDMHFS8tLy8vgcxJoolSKahFrFn0EWQqARqYmIoiJWDeoekElSoEqGmNDRqVmBAlRJWipV6Q0xKiIxSJAhpRGS8LTfmbI4m+bJUr8FQNXbUhpWfQ+g1V0uOoHQI4l7XEYRcSmsy4054JX4mmkCLjtONRBzouXplGjKj6KpUSOtatkTOg1mSMUl5lI6Dov8ADtmzRdoaG84hvoNQwRJUCLlDUuDoSBAhAgR8SoxVzmNRK72TKolh7oQ0K0GOcW\\/SLIiPQxhobziE51IegoRKzoEY6VCBHbSHMdiEpMPaZ8SthXn8qoR1DQnOhCHoqXdBNGMNCBrmDkQjljA1vDbEWSewfmISk9AnMdRgx0qPE3xNR0IGm8xZrSavwZvDrHBwlEwzNoYj8xN0GjdE0cxYMGLUEgY2Io8Q5iQJloa6AmEZWLmYp9GojG2Jb0QmEG8xVTLD8pN+p36FKXHVSRLlaG6bNFSoS4lytKMT5n6lhcMbkdVj7wqYlkcx2VFiun5SbGo4wjfpUuZEIvQI7TdL0XRdCMZTLRMIf0m3MTAhZLNfEC0x\\/GJlOsckaFjzfXSowfwk3aw5l6VmEUeZkTJoVQiYhzKgTnRhiKRQd2AHERK3hLKeTKKU29pctNv5mW3+Vx7kQg8TmWSwI+TFWSGbEpH13qGZdp51rMCMtpSZ4UJIxQBl2lBZtozwHSgZjgOWCv2hCbbbyvWIdO\\/+TYS3dcwptuQpY4JYhVFTKCrzAtbsw3+obs6ShqUjABUJGe4hKlR1NhHYlWCLRYxMysyswYyNxjvAR3BwXbBKUsGTBBoZV8dv+6rhMVwQfr9y9tbp379jTRfa7cd4h5NpuZF\\/EreSy4B3Q2foV52g8YztEt+ZUwwxEDFjMQxG8eCdZLmIJtGsoYCDHDmVaLtIJeY0j6Ca5mZklW7MTMK32b+5dnjptXatMauATL3kvqULqOabwB1wdxtC1Tb4lJRRnaMXfs6QlbDk5\\/71ZdFmMZ\\/uBWDv89WNS+WYwlx3SM1S5e4suo7IuZazLM02CWMcWhYZYwl5gLMeS5aEIiQ5WKtG02EslbxEMjTKtO5HGLYe+isYJdVxD0welQTcATd2VBVOrL\\/P3KPLPeIYCjiCpOdMZU4MdI75fDOFCCGgARgBiCOWPEcami3l5jvL3G3LM+JZUWMMDLwYwThnrzLmdmcDeEbJxdZQHaW2Qnbu\\/naHUMuJmpjv\\/kBo5bspUNiANjnxHrlH\\/UPdwFdyXmH6QviA1KQS+jeDh1JeLZAsyMd0LCKLGijSZZSAbnG21XUfQI0xBtuRrDaEhI6CMrG9T39VMK3cRQa\\/nSFnlshDkiy+5Lf8\\/wCRyHlAoDJotbmCGiOgy9FaLGixZcyto261BzoKpW9CR\\/ACKuSCcNzelOIgl94neQiz4cw7EGnfsxFZj6iM00TGziLMYqJ577xAR\\/CESYNFk0xwhNF4YxhUxWEOYMaGGZJUdWNul6V66goOrCbsNQVENnC5bLiPc4i2czcYt7zHcU03xMRAKgzDiLvRUrRUqVKgSpU3TYaduvfDnQKJ3J3IjrPOW6y\\/WL6x60J07zyTy+oUmyrr+e8aXtjvMYdS5tBlwFW3DFG0RoZUlRRVwA4dH86ywW3D57E3MJUSiWNR6HeJqOeYiWE7TOwztS\\/SWlpaUyomjZBKDS4jTPKzBy0vLS0tLS0a5isufRWtRkO9Sygx2gMRW9pgVi\\/4\\/Uwh\\/uexmBiUARi9vWARBiWV8yspK6l2p2tR7MehCOSYyjodGkMvMFodRWpVj8OTMHMdAN42oc1DK2XHehxET0qNhlQDaJKZTMzMzMzMzMy2Wx4ii0PEUGXmNMVep7WWN\\/gcM8QLisuLHvKJRL6ROsNiMOkdCs0xMTExAJSUTExrV6UU0dsuXodDg\\/C5YhtFCXTB00HXGhuK1dYM6Muwl6XqGlag0bNFFovCYJmI6XDH4VRDOV1E6LMS4rLXmLFVBmJvZlHR9AuDLl6l64iptiXGjpcWGjKi4\\/CrYMQFNghCNmGE0r0Um2WU+8Fx0+o\\/WpDQJWhFamyDUECo7ZzH0M2\\/CqIZdKidxvxCYOSiDVZ8RohiAi6ivJN220C8sp6sOkqPChKZfQ\\/IR0Bgy5hoWsGMLQoQMWLmc+k\\/jTKuMycJgmIdWKb2VNOIbS2cAbw0rDE4EaQVsjF52TOBJhXA6SKwYYwqiGC6DiPEI6VmXLlxh\\/EcsGIQhO8BRNi4N3qseINlisPeYIptt9fEEMEulAOi7xK0Rgj67i5imbojEyaLm70MD8KqGjXTKDHd3ho+JU5TJ0lERuy9IY+gbHmddrxALdsBIhuPMpoapLFksL9bCDeLMxIxRcuc+hleTaHSgYGEgarEghGqWYzCtjv2xbEzLxHUssGDdjAol16TJHWWYWwrOrxbA7xNp6dpcDQMzfMiD0FZ9LUNySoKUyoSiPzN4EJvSJupYvb9TMkqTvLgp+YlmWZIFRXBpUDsgTeV26+mtBlxTdBWjPKjLb9Dq2goHO+O0NUNserQiBW0G4qSpSneKtm0sr5ZdspO+dEfKM6EzRYiw0qbDzfxAK7n4GVAzN0eItRis6KlStSozecxCySgbSjpK3OuVmWEx8zDwm25XaB\\/MrR4TRTfFiZLRTLFjoypUqVK1DQRvil6FaG6VjFkp6HluwpNggYjkSlsoI+6UMbxYe5xHT8QgreuITlHTvihCFn5gFu\\/3P5Uz\\/GElNmv1FY8QcS5cuXKSyU0FoM41Jtl7qLLl6VqIhTHHmBZW\\/iXG\\/1CioIMwbWGKmQfeDcB7swUvLwwNGPR\\/wB2mT8IqUIxmNyEGIUVumpxH6mBb6SGOEqd0k9\\/\\/kHHmDiUlJTRWU9IgjGok3zEqHpqg6EbwctL6GLQ0AEcsVyMx4PchvN7zFFmDUoXj\\/koYEoKQ5UL5P8ApCsMOT3Is+i5egugbjcVtBgG8oxExK0VKlEqVLR7fGgYMGVKgFgqwwvmJeIsDAzDUGKvdHFzFVLSur+oKdOMxaV35gxdCm\\/6g5g36MQ1cEiMqF4D8UoTdBbU+8S\\/+Juge0xhAWCMpjYgR5oicziKw8Tam2d47Sz3mrxLENmT+yKGbwCAi8ko+jmrKQkAkoalSO7QalL9VemoncIjcRG1nvOowXIy5uiJuMRGpfoztPxPrEpS+kBWIsCKRh0OMQWRNNsIrlPOH\\/pHH+Bs6TjJHZKlSpUqYGlMQVuXbwURczn\\/AMNStGKwYBnDTFxcwLgks+pYLNAm2UDqiXiPJ\\/8AIYF7TohC5cuXLjCDh0k3kq5X\\/jSMdBitqGmLfaJAVuRvqO03QJtm0Uxt+x\\/LjjsG3rf+QbuZ2j41vR1Hc40YJRFfpv13Lly5cuYly46AVFle0VN45R2TfoOYE2aXPPjz\\/MS07TG\\/ltBsNtEb9TwyyOyCUmmyXKSmpSVKlfiAFRioN2Bpked+oYbQ5lQQhLNN3\\/X7h145p1im4\\/r2ipjvEqVK074stEioqzd+ABUuXLZbLi6LZbLZmKxozE+ZaJKPIlEDE36zQi\\/NPxMjrmCDB4JW3DXfN0GgwPoK9ZSUlJSUlPSEUlZWVlZSVgAaMwfmB0hRPfKPuGG0Gm2EJi8P3MJPETDxBlxUqVoeYi2ghmJnhMk787s7s70734Faqrr+E8J4TwmQRNN7zGLEs6z9PRBm3Q3lh5lxjxEw8QlSMElstzD0jVo9ArzrDUo6QBCbS2W6htKlRctCSKIqJOZERjATi4HouEaZ6RWm5m2bDxKhMFat03tCSHKaKwEYUldKsrqVCAO0rQGtaNh2iVpsPeW7YiwXZMk8TBccTjVslyrvYgyaTxHh4ImdKm5WndHjTbFo3y8tLdZbqy0vLy2W6BGVkEJWUNapKyvG8K6VcyLzcFOY+KlFa4mI0OmyXMA7w24mBFxNvwQ1sK6aboWqaMtKzpIdCkolxWUlZTpKdIPSVtElSpWgFCIHmKisMaSW4G0V3Voqx99CTZLlgO03Ssjgmz4PTgjrXKPOm\\/S5cWLL9LoRppXl5aDgpzJSWuplcrYNUo1TzmXlhTtLlTnWuUFxUTCYA6EPRUI0meJcCSkczy9NDL0qEVKhoXBQE8JbXuxKTdjsvcv6ITDBpbxOcGmE2Lc1suT3hucDQr8BDTcGWQVFN0qCVAlQGVK0VKiSpUqUSj0rUtmZmMuKJ0sl++YHK9orL1mYXNpljZmyUp7Q0A0FGYYBwQu2Y\\/KpQ5hqlxFhhvrWlykpL0JZpei5cvS\\/Q0lQFYxlQLiJ9PibKQY6nchTDvNyFmjKyhu8SFcvzOWOlaVrb8RtMNCMuXDOtQlR0plajL1DSoQHidrUlFMqVqf7pinVncU3RJRmNhDdphh30XKWyGL55joSpWgEqOmJet+lJUvRcxKhzM7hG26BhMxlaKZZMwRZcB+06rPnAHGlsAZNBUuJcQxZoa3L9AYa3qMNNpel6Eb4xJ3ndi+srywkSVlYaAmVlNBETGSdFDtKlSx2YNwjE1zrcvQhF9Fxgx0vRLhQ7MvMRMEcR0LHRZ0alzOiaKYkG95m3jI2FxCXrQ6SF0XLiwUtly8FouZl6LUYVwtiGA0xXiLEW9BzlEpbhzh2yiRpBlzECoRUXWWO0E430US4MuEuXCbl1FgsBYLrCKXGJcKixWWxKhRTvADmWG2lb0XtGDaCoyYjLLLXoK3lYPMtlSptBMEd5tlDKPfVQ0wtlQ64mmeIDLQcvBekpTtaFS0YJRSJAainvCDTMRJTHEU50RGiX6TBklLxO0Q0bm8rpKxAdCTbpRWQxZp\\/\\/9oACAEDAwE\\/EL+nklSof+B4AKlegV+QABqDEyk4l7CkqbZely5cuLKuEHoxiiYlSpUqVK0VorRX5wAeiCIjDRekXGgEDAysoQILL1YSAu0vLS8tLS0tLS0tLQUvE\\/G6spjqrmyXLlwZcuWy\\/TB0XLgwY6Bc6kTERVYgVptj\\/wCBl6FnEdR1fUECJK1vSkuEYb1DYId6Lo\\/krW4xjpxo6Aly46PM2aXCDrcGLMmXDQarXSA3IS9\\/KECDOjHRjOJem8YOl6ZI8Sowhpeq6Rly5v02RAGz0jSW1ctIr01AhPUQuY6MYxnGo1FvS4ZU3zZLlwh6hNiG730X4hu7MMyzcxEFeq0v8TGMZxovqbI8xY1IR9Bo2ysO2fuMIGJsrgnV2OlQ\\/n2Sx9B2lYieitTBmbNH0mMGGcfEvR7IxuniMXCVEyY4qX+d4i0bIRMakiSyWmqKgzNmiwdAy5c3dDAlSeIfJGYNgsPnKw3MRSxYnMgp\\/OXS6DRtWl6LfCXLhVcWb5s1PTdDnxDTXSorEz\\/hzLFK3FLTtKgmUG6bvzb0csECyJK1o5QLJgsqVMVRJum313MFEuzOMmfunsEraN5g7w2MdF7zIGC4GKlfl3NBguCO0uFhlgJhA4izJGPM2RYPouQAYiYJdBEs3lcf3BoNusMx5frxA2pf8b9CPYO8zFd5s0naiOQRRjLd41X4bjiqWG0vEHGpBcGoizBMErY30gQN2AS6q5M396VhEiyzaGeyAbuxEjsNY\\/z\\/AGJwyxCkP6d4Qu\\/ecqU57bReyUd\\/+\\/zaFVsHEeY4WoqWcXriYZ6SwjlynDLCoLpfo3SNcOViO5ZWRsRYlwlQcYjxKJjiaE3vMqUJseOXlhNtX5\\/5KNp3vfk3eyIBG0Wyq3WcIc\\/r\\/sI9uIxbxxB7Adzi4LNTw\\/xiUXI+oo3tmNtoxoMm+f57EaI4OPO3mowNFF6W77SpgbDmG0EguGNYYFuRmKGZbvKsKIHFy4XHiXSymWkvGiwjWUOsRUoO8Gy2dPqQwDpKzbegfbt5IzOurc7h5ibYIiwEwDo+2OQcRj3MnvDGw8N\\/zxG\\/i\\/8AktszxW3WWyrFw8sXR+okFhw5\\/wAerAsCuT+5YdZlbDibLDVMC94kJdMrRLhqbIhiPUaotmGiOtdN4mCcSoaEGAMoj3ME9zC2qjVe6YheT\\/ZeswWi4tjuzfc3LwSgVBJRV1BzV7OlxRlcgr+XGAO3zj4Ir42oOgvWp8f\\/AGOEyV2Hd\\/W0bQhvM81nz5l+WVZzv\\/nWYbNzhBUYxYPFMLmAIssriGOdRpFI1QspgWxKIITQMkwCXjSJWijfoQxW9BLmWOnEDBgcQhwRrEePuiu5kVGhRa3C78+0F2Kqfz+olDPZ8On+xNk5b\\/z+MoMRb8+I8l3r1K5YAAe6+YpbhNnsYT5jRfWDLAsjzvqQCMM9AMDA0hSXJWQBoNTbBoFsCyYZaoqV5d4SEqJElQNCRCEaBsMGh3jIt4xvvFaa3iE2jZLcbs3Rwy2Cnn\\/IRZ49ng6s3mHoaqZFW6euP76RLhj9\\/wDuZVkW1j3yyqJivmBifviXKlRgV6QBo2iuDW3QjpVdSaTqz0XaoRI2SQPYmGZUUrmbvnzKQLO\\/D1v+pUyOdyuYJs\\/pmCG\\/8P5mCldfWPC7uYjbkT4jvNx3jklj2zodU6Vm0VBQ0NXo2\\/W5cwJKlSpUDUrUbI40JclrHrK8toKvUD0xz2j3DB7PPv1nVDjMWXh+\\/qXHkDjonQlFZFt2OP8AYI2F\\/wCQbkr9JxEtQ2lnDVrTX8L+yIINBzCO2uvPGB6SnSV6SsNIq2SmZhcreIACL8f8gjEzejAfD\\/cOhLr\\/AGJZioiWMiHYZXx\\/kMaoU25z1e8HKeLuHGZdBsfzeUlKA\\/nzLFXRioouN8xmIespKSkslkuXLly4656KGE4JxE\\/g\\/iWoJDj8Dq6uP\\/YYvrMkz2FmeLl8DfgOry+AggNh7X98TobRBj\\/6RQphvEhNlP7laLQVV++jU1FwsmnOi+aE15huCtNjouM2SyXLl+i5c3+IpbUI9+02AZvFdGNAb1GG4PCIxusbxLcv3jFqWhyZ+JRoTqU0VlZWVnSgh0b9KTiGIsypelkUgXglCj8AzCyoDHlDHdpepaedA4a3QBHJGEuehlSpUtotAlpaWlfoG7QZvtEZvqVDUs1Z\\/DsRiD43TdCW8SnmVGAGf0lwuMnjnUKftLmdAy9Q0T0xb4Zm2VjBnQdEnaBR+AWxQWSLSo6brmZlQWjs\\/qN039cygMgxrzKC9f0laVDRl63mbNDpizfBqFjRNCxTKJOT8OBGC3gZgXkU3KykZtBS0zABbLlNvnJ\\/ZMGdsWvmVGMY6lxgc6+6KiLFCziMBUEGsK\\/AGgYmxu1CSu1QwCNQ7XpB8LDNvvG+gER6fEVyHtNwXMyNQm5AkOZ48laWEghz0qiO8MtUZ1SQJxKlSoECH4To5CK0eY5fiCGgIkIqwrUA+YlRilXztMYvzvpVFRYLQKm8AwRK9GabtPMNpeJWgkk\\/E2Iy1GEc8x\\/MQLB3jv4aaalcmIFGJbfQXEqKkSL7MQy+X4ElGmJpHMLGgOPQIb\\/iNUBBRP3f1LjDUCMXTEs2i6ijN+lSn9jCqY6p\\/CyzRFcGIkDW4M3SzeV6xUtLSnUNFi1Li+Yi44iBmZZuIkwIrTGbIGZbVWa2v46d2V2hUeb\\/ABbYYY5slRnGlSoGlGGDEMxBlQB4iOJcWFsMwwCk\\/VBVpgHbRw4Yqim70QtTj47y+hyWTEn4iog3pxQdKgampSIOIBiUWwekuXHMSDTADMBUSgOhPoS07Y1EhvFgm3Xe+K+ZnuBQ8dzv+PZBBGw129SyXLlxY6FgupALEFDEsAnCAY6XCcrm0ju8cRzN0rFTEtv203y0M6mJqqCK3PwLou5sjzo7aUaLS8v6CSMzKLhAY0qByzHgghTtBSk3ltGSyEZYnTOnGXoYbgA3S+P+RmjU7jxXkzDQH83mK8xMypUqVKlMYvLDDi4BcdpdS5RZWVKlelApeZbsQ6X3KEzzcOlYgws2hIjgGGAIsO0NmNVBRw6DaEIzNAA6EYd87xl2FnbCYuexFz6BaX0X0rjhFCM4IMVM2S31ul3dGkrARLLImJvRDgEP0iYiYdFk1C5ePMsJctsdyXj0\\/jHQJn\\/MR29dGlJXKDuS0VyS5AZTouXLlstlsoEr0XLixHSeJ3TNZzHaOY6VAwICDd0NSrZQslQirlJElSvUwuKiMVaTSqVK03lSoAUk5FwSC2yMXGFyoxtFmBYNwKm586XOgmY6Fxm6bsP+zOD1\\/qVWMODMGvSNtVI2EsI3hCkSU+q5fpA2WA8oFvTDqgTqTrJR1gAI5wTdJveZa5nmBBbkpPfMdMGM3ReIHxKVm5EsiXvGVaXLly5dBUVQsR0RWwJWPUS\\/RWlSpXpJUYW8QGAw5lIdCPMeIzfKh6Iw2xuIqsjnJKr1NalaDpTJpCVuI4lzEomPXcv8JCMMbuEcT10G82RZu0Jnv+jBWv8A4ljEtdw1pzorUEFTmJHi\\/DDX4c61KlSpWlaVLiizbLdIMI8mnmKM3aVHDnxOFK0SmnQaYlda6d8suAzFLDlg1LS0tLS0pi+kLly5cuXpcGXOMZaR\\/E0O8UdpujGbruf\\/ABAqcQmRvEslLSLFlzZBZqid4GBKV6g3hqVKlSpUqVK0qbtCLMK0G5FHfTsm+MZehxZLW4TmUkiJhl6bI8SzSy4CAlYnhHtl+k8YvpBMtL6Vk7s78NAetHqaBBfWOjcNNrRmD2uKMcdpujGYENjAzLzElb0Oq7IWsQm3R1xF04J2odDRdPOvodyC6y\\/WX6xfWFeZXrE9ZXrKdYDrK9Z04S5uIaDK9otTN8dKKiy0XnSpTGhpJfTHTEZUZehmOdnSqVoqVKlSvRfouUldFul+hWp1i+iM6VDUeITmDpQ90qbJtm1og4iRWqvW8ZfpLS8voXC1qMXLly0uECK9LhKN8+hv0FiLEcE3POt8abZsg0b4Yk2Skr1gVKlQGKGXltC8vLQcaaKyZIS0uO96ibtN8eJv03fMdcqbQsMqj3rASIly\\/QLlszKlehsJWty9LjdsuIizeGCpcsy0E3SoMQ2jzCb3ouzkzNsFzNpdBRF\\/GuEqVGH0SpWpcWbS87aCs0YSpcJuhDicTN0yHvHW5Za2lkKR1AqXLS8tLS3owZTRdMRDHQqVoPLBHY+IHHRyV+2eEt3gG2pZNnQ5hAxGGEFPzHQFiwfQHR0vW5cuXL0XFlw1cwiiUlJQVBKV3BhSDslAVUoiGmM5IczJoxhSGYlK8wUK8TMsyQ1fRUtlOjpnWpXpuDMSokaqNRBHA\\/8AxPJ8wqx99CKEuIDHeSbo4y7RVuCwHSHpUZNXQPRcuYldJcvSyXK0SVK0rQYzaFJ3Etk6G\\/MTEsgkuccyS3DS5bhjvCsMytBcdaMPQwdbYa0aXqeoEdwnZYQBo4PRKJSBUww3ZZoslXzCaQpsy2WxWGzMSow9YJWlaJpUqJq+g3lCGNOkXpABtNhUvRaZ0hyxLy8vLQJbQ2iiY0Nxh6LlkrSpWlaV6qgSpUCIMwIN7IS2ZoSpUzLgmoGXUvQOi4MQjFELj0mgwJUqUlJRKSiEIhoVKlSpWgXKORKesoMNcyokCBZGe8zDS2WxYsIUJvg9FzRISpUqVK1UJTpKS3SCy2WwzMSku42QlZ1KnlLuYhxEQnaYgECNSiVpvGMJuhmVurBvW4MNLixYpEIMVOZSHTpS4aLriUuFI25lsPRUHroalJSLqXFjGXN2mqRK0\\/\\/Z\\" data-filename=\\"category_4.jpg\\" style=\\"margin: 10px; width: 517px;\\"><p><br><\\/p>","widget":""}]', NULL, NULL);
INSERT INTO `page` (`page_id`, `status`, `page_name`, `parmalink`, `content`, `parts`, `tag`, `fixed`) VALUES
(10, '0', 'new page2', 'new_page2', NULL, '[{"size":"3","type":"widget","content":"<p><br><\\/p>","widget":"product_categories,advance_search,special_products"},{"size":"9","type":"content","content":"<p><\\/p><p>Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.<br><\\/p><img src=\\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAgAAAQABAAD\\/7QCEUGhvdG9zaG9wIDMuMAA4QklNBAQAAAAAAGccAigAYkZCTUQwMTAwMGFhNzAzMDAwMDBjMGIwMDAwYmYxMDAwMDBkNjEyMDAwMDkxMTQwMDAwMjkxYTAwMDBjYTIyMDAwMDI1MjUwMDAwODIyNzAwMDA5ODI5MDAwMDJhMzgwMDAwAP\\/iAhxJQ0NfUFJPRklMRQABAQAAAgxsY21zAhAAAG1udHJSR0IgWFlaIAfcAAEAGQADACkAOWFjc3BBUFBMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD21gABAAAAANMtbGNtcwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACmRlc2MAAAD8AAAAXmNwcnQAAAFcAAAAC3d0cHQAAAFoAAAAFGJrcHQAAAF8AAAAFHJYWVoAAAGQAAAAFGdYWVoAAAGkAAAAFGJYWVoAAAG4AAAAFHJUUkMAAAHMAAAAQGdUUkMAAAHMAAAAQGJUUkMAAAHMAAAAQGRlc2MAAAAAAAAAA2MyAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHRleHQAAAAARkIAAFhZWiAAAAAAAAD21gABAAAAANMtWFlaIAAAAAAAAAMWAAADMwAAAqRYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9jdXJ2AAAAAAAAABoAAADLAckDYwWSCGsL9hA\\/FVEbNCHxKZAyGDuSRgVRd13ta3B6BYmxmnysab9908PpMP\\/\\/\\/9sAQwAJBgcIBwYJCAgICgoJCw4XDw4NDQ4cFBURFyIeIyMhHiAgJSo1LSUnMiggIC4\\/LzI3OTw8PCQtQkZBOkY1Ozw5\\/9sAQwEKCgoODA4bDw8bOSYgJjk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5OTk5\\/8IAEQgBLAJYAwAiAAERAQIRAf\\/EABoAAQEAAwEBAAAAAAAAAAAAAAABAgMFBAb\\/xAAZAQEBAQEBAQAAAAAAAAAAAAAAAQIDBAX\\/xAAZAQEBAQEBAQAAAAAAAAAAAAAAAQIDBAX\\/2gAMAwAAARECEQAAAdtxy9nhWUosACKguNElElhMpS0qgksjRhs1oFAVKAAAUACyoABFEWAVFglElEWEWEWEWAAAHqy15Z1mlqpSoKiLZSAgEokpWWIyY1LENWG2WamcMbYSgAABQALCUAAACVUWCUSURYRYRYRYRYAAbctSa9F0Zy7WGRkmQylsQEqEohSAABWKolqYTMmubFa5sGpshrZwxtigAAUIBZRFVFgAlEBFhFhFhFhJlCLADKXGWZYjfs8uxr0XVnGxiMkFQlRVIEQSGUUBAKlEqyKIoxmYwmyGE2StbZDW2QwZSIoCgAEoiiAiwSiSiSjFYRYQFxtmpkoWrLbDLGmTAbGGNm2+ZHpmgbro3FtIAACLBRQAFACFGLKViyGMzhgzGubIYTZiuKwKIsAIokokyhJSSUYrCKJam1WVZkqqLRGQwuUTDXvxs1KiZY5GzLXE3NdM2GYACBVSgCvRL52eFiyoAAJRSJVTHOLrx24RiFASiKIEiwiwiwkyhJRlM8M9FmQymSqyCgtTFRMcsUatls0rJdlZJiyhgzhhsmJs3+j6Tn2+T0+vwaxsuN3zoPR9T8f0OPo9fD07rm2XrwAAAiglssCY5424Y54xApRFEBFiJRJRioxUbNW\\/VnpLMluUyFUVUVaxWExyxjWkudurLYmNJbZ3861+v2\\/Oef1dHj9D57ePrvb4vbz6+DndPjXOvq+D6TePle16tudfM9Pk\\/VWcHw9Xj7593n\\/RY8+vL9OrfL4uR9fxunPk54fS9OPj9O35\\/h6etyO\\/ss+WL6fHJlLMJnF1zPEIWoLEKgILAQQhd+vZjnerJVuUpbKmSUtixLiTBrQLFg3NW2J9L85lz6fYcD29Lz+v4zV9t8t38276X5\\/6Dn2+U5\\/T8XTj1foPn\\/oOfbjfJ97y656\\/tflPq5rkcTucaz6\\/n9Dk8e\\/yftuXr8P2Gtt8nu+X+p+T+s3z42vraprV0fIl4WuZ+jyYzKb5YzNWrHdgaZnrVlrs1uZbdZ8+Prh456sDRN2EYTKLFLvmUlwmUFCqRlhTNhiZa0sirmBQGWI9W\\/n\\/AF+OnyXu+mvDvfne98TnXZ+h+S+q3jkcz63ly+Tv\\/PfQr814\\/Z4+vDd9X8p9XjpyeR1+Qn1ujfr4+n5f1\\/QuvBzfd8Tz67vtPjOv14bfm\\/u3Pr8F6PtdOsfJenyejv5smFTJBccoatPo89uFVrLfo2JtuDUzYDLFUw17oaJtxms1kuCxCxagqBjZcxVzAAJRFEVNbccJjp5ul52ufu1+bZZu8fq2Y6adXsxufD6ssbLrzS+X3a90fVcjr8nze7gZzL0ePm+vfNZkLnHdjc9J5PZjGvfjd80uJctQ33RTPRnrmmUyumUqbS3MmRcVGLKJjM4slkuMsSossALmLBKJKIsAAAAAJQlFuzVD15+Gp7sfJsNuWGcvu8Ex5dscq68ICLBYGGyGGcoKSZjVNkNWO3CaZY5NZWZGWeGVlAlEWEmUrCWZuMLkNYAABUoiyIogIoiwAAAAAASxZVlz26avpy8hPVjo2omzJNDdgYLAACoMotYYbNZjlhlnpnlhkuVlSgrGGcxFYhjcSQ1ipbkBZRKIoixQIsiKIACKIolAACSlmUs1lYAiSqlDZs89T1XyZJvxxzswm+GnHbrjBhgvox1bFwZSazy15S7MsMqySolEURRrwuuypdYqVKlFgoAAAIpZKIsiKIAAAABLFZTLOiiKIogoqACiZQbM9CzfjrysmO3I889Ml8zfguOWMl23XkZsaVKVBoh04lWCgAoAAKRRCkWCURRFGK0xURkMWUIpVJSiKIsAACgAAABQWDJiTKBMc8SWJcmNXJis1WLm69mUvme\\/PN5ePRwb0btW3fP1+2dzzerhMfk97+w8f1HExjj9bk\\/X758J8v6Mev6HPl\\/VcOHykr6Hk57nenyfY9GXp63jvzvQ5HX+p8udblfWY1yns1ce+iev2HyUs9nh0T2ZZ14celqmvB6tvnrf7\\/B9HjXiw7fzPH0+2\\/Off6fJTfOvl9mv1fLcvR37wfd5+vt5\\/wBH857PJh4vRyHToXy9z5\\/1Obn2Pmu\\/zu1s1+j2eT3TqebyezyN23U53P8Ao\\/ne3CTKdOUUaRcvN6fOen18jLHTqYc1N+xp3b5djq8D3eb1bdGMx06\\/Lz8W+fh+v+Q7u+fyt69x7cPo+F7uHm4Y+j4\\/n+zzL5PtdzofK7\\/I09Xi9v6XzJ9X8r2MXTp9zHbxdXzyXipfX4Of1OblNdPXzssdOlo8Xrs2fRfOdbGuh5dc8\\/q29Xieg5swnq8fX+e7nj5enk9TPZ5uvS+c6vK9nj8\\/P6XKvbqdD57Z4PpfTfKbr38PV3+fb6\\/D9Dwei8vs8mroNTf8\\/wBLm9OCV14xRolUIUIsFBUFsFBUFAsJQoAAACURYJQBFEqFSqsRUoAAAAsq0AIAsolUURlCKP\\/EAC8QAAEEAQMDAgUFAAMBAAAAAAEAAgMEEQUSFBATMyBgITAyNEAVIiMxUAYkNXD\\/2gAIAQAAAQUC\\/Kd7EHrd7LPvzKz7Mz7MygfZgKB9m5WVlZWVlZWVlZWfYmEER6h7GI9QKz7FI9A9GUD81sEjg5paf8Q\\/gEegLHyGxPcpI3ReqAB0y1HArj+v8M\\/gAojqPTjrpw\\/nWqH+fPp+IX6m1otW33CPgP8ADP4BQKIz0HVrXOdHSC4sKdTjK7beTDWZC5WKrJ32qscMFOJs7uDEhEXWWVIwJQwXODEVZrRwQxAPfw41YhEckdMLixKWn1a0vLKYXFiT6bCpY3RO\\/HP4B6Ar+\\/RQjxGn6vGHxanA9VZf+zDahmep7UNc3rtearpnkTIwx2cKb\\/1lqn2dY\\/vWBme9XgdBZisdL8fw\\/tQRCJk8zII\\/1Yk1522GSxiVn5B+cfkUnboE\\/TWgy1yw7BjTWATrVxmwI2rT\\/MtTsurxdh0iqwhky1X7Kt5FflMNSGEYYO28HIlbvi0\\/+R6vVH2nNoECtXML1Z\\/bc+XhYWFj8Yn1hYUcr4XQ3YZejmhwsx9mXT\\/MtV+4Wn+Zat5lD5Vqn2dbyLVPs2\\/SoRiInA0c\\/uT5oozyq65VdcqurMjZLvrPUJvXCwtq2rHz8rKz8gIHK7LnNfFlad3WTLViA6h5lqFd0hMbwKHmWq+ZQ+Vap9nW+tTRiaLsyRqCu57lqMvaqUXdp61CnyWuqbEK7SuF+2ONrPkFHqFlZ9WFj8msNsBAKAAT3tjbNMbdqN\\/ae1wc1akcVNO8i1XzKHyrVPs6\\/wBae9rB0e9sbbM5uz4+FW2B6Jm7oonZb6yj6B\\/g9yeNfqFwI6jcKPdndHtaPgUO7ETeuBSz2rAY58Q5N5EzyvQJBdZu5fJalbB8JFqvxpRT2YWnULhTxNYcxoasogOTXzwr9QuBHULhT5LcyjbtHXKz1KPoH+NlB5QkW5pWAtqx6YfKtU+zb9PXHzcrP+fkoPK7iy0ratvRh2vdqsLTb1COxA36fYmShIV3AstK7bSu2PZQJQeVvC\\/aVtWPZW4oSLcCvgVtWPmH\\/eDyt6yFgLasenKys+wsrctyyFhbUWog+yMrcs9NoWxbVj2RlZ64W1bVj2RlZ9sudtXcXcXeXfUcm\\/pBD3jwSjSwhTyuCVPD2egpEg1mgms1pNUBcI46clclclGchckdW0iRwSuCVwSuCerpMHururvrkJjtzVDWMrOCUamEKRK4JUjO2+Nu9\\/CKbWa4is0nijM1YxMT3bW8oLkoWco2MKOfe5MbvfwiuEVwiuEVLVMbPW1gcu3EuzGV2ol2o0Ghki076z\\/Ur7OWkxastR\\/tDx1YnzST15BNJXkMzfB0a0vk7bwq0ZY4tVuHsTdGH+N1qMRm9HiS22KEODmdGsjQjZjsswYo02GFxh8So+B\\/9SGWSD\\/j75OQrX3Fbz6qcUKdeUx1oHsnqwuZJd8CseGKNz1237qrNqkiEohaWWlB5pJBG2W0yN5uNzJbjjnt+D1zEhV3FzMfHCAZt+GVp31zOLQS54jijhMTiRqP9oeOtYaxWZ2SzPt\\/yt8HSGXtT85yinfKtxCvzCSfpH9EVR7bQrTCrxLDlWa+Ot0ke4SR42AZLvpcGgjGFS8Er3b3tEwiHZDTuFr7it59TIFKtc2MrSxixXsdx93wKz4algwrnHEcjpEZNoif3Lig80rO5EKc3FnryySOq2HK34PXKwvTWysWJkGzhYsKPudKswhLrUL136671ZMtxMFqYTdBcZtjbSjeBTD81N5uMx0NR+eNKm15muc204cR\\/VttgbzGLmMXMYuYzrJE5zw2do2TYxYW2ymbtqr2WxRusQOJnrld6uhcjAmfvkidskmsQzRsFNjY+HGon1YnWLLZI1K3fHxJFxpVHDYjUkNiVQVnxyKN21\\/LYuWxcti5bFNYbJH\\/APGv\\/8QAKBEAAQQABAYCAwEAAAAAAAAAAQACAxEEEhMhECAwMTJRBUAiQVBw\\/9oACAECEQE\\/Af8AUKv+EyLMLT25TxhcBspqJ+2eLG5jSyNCe1qAA7JzWlRsBCETQmsbZUjQHBGJpQYwKSIVYUbMxWRjU6JpGyr6d8kbspRAcFJHlUPipT+Sh8VK8g0oDYUvcI9lmN8IhQTmA90ABspfLlrqnljZmKbGWnupD+KhO1KSO91D4qbyUHZTeQ4aItOdQUT\\/ANJzMy0j7R5BwPCuiTzAkdlrOTnFyBI7LVchIQi6015b2WYuO6PZargi8ngJXBaruUdK1f0dfpDon6lKuiOgfr0qVco5yfuUq4WrV8t\\/StWrVq1atWrVq1avktWrV8ALWmUIkRRUUTXNsrRZ6UsTWtsKBgddrDYaOZ1HZNjaSduGC+MGIGZxoJ\\/xjWGsyljyGlAwOu0YowtKPhkKEZTm5VC0OdutFnpCFnpUM9IxtsClicOyJwA3tTNDXbLC4czvyhTfEMj3D1PhtJN3KMLAtONTNDXbcoeKQkCcbKikaGUStVntSyNLKBWHcG3awuIjicXOKY8Amzww2Lw7BllFp+Lw5OwWIeHmwoHBt2s0ftB8Y\\/fBprus4T3AqFwDt1qs9rVZ7V\\/naL25gbWKnbK5uU7BTOBdssJM2I25SYzCHwap5mOFNTe6LmH9q4\\/amcC7b+T\\/AP\\/EACsRAAICAQIFAgUFAAAAAAAAAAECABEDEiEEEBMxQUBQBRQiMlEgIzBhcP\\/aAAgBAREBPwH\\/AFC69ibJURrHPKDMV165m0iamMUtDfmKTHYgw5CYWNCIxIgyGF2iZPBjvpmpjFyEd5fp3WxASsR7mTvMfaZPumNdplmPsYJQrlkO8DEQ7xO3p3bSIzgjtEG8yjeI9bTJ90xdpl7zH2PLqmooszIvmK1Tqf16gi50hAoEIBnSEKAwCoVBmkAQd50xAtcigM6Y\\/nqV6Cp0vRj2Yeov2m5fKpXtt1NYmscsmRg1CJrbzMeRi1GZnK1UyuyeYvEOTXLPxPTNAR\\/ihU7LMbjIoYTM5XtBkdhYnUflqE1iA3MrFRtFdj5mUvjarl\\/TcVmKlrjcQ4mJiw3mRwi2Y3xAqPtnCcX8x4ow9oMrk1NWSYmLDf8ASVmgwTIjFpoeY0YNvMyk1UyqW7CLhe7PLNhdjamPwfEFtmmJNC6ZmUntP3PxCHPjkwuaDAtTKCRtNDTQ0r6KighSKhwuZiBA3mRNYqPwuYrWqcNgfHvkNmN2ihx4n1\\/iYgQN\\/af\\/xAA4EAABAwIDBQYDBwQDAAAAAAABAAIRAxIQITEiMkFRcRMzYXKBoVBikQQgI0JgkrEwgpCiJHDh\\/9oACAEAAAY\\/Av8AK9IYocIP6CyYULuP3mg6YX8Wn9Any4Uun3pGq\\/EpOn5UGhtlMe\\/xy1okrbd9Fu+6ykLspnOFc0u9cGucXSOSdUBdkiHE6cFvPTqTPy8VnLl2IyGS1ci8SmjgVq5MYySXLbP0W77qaZ9Cowhokrbd9Fu+62SQod8Pv4nAhlNzxzUOupn5l2z9C6VZTfLgJ0wAqvtnwT6dOpLjHA81\\/bg9w1eZOA6twd1H8qn1GExmFa5+1yGa\\/DfPhh2o9cPm4ovqHJZfZ9nzK5vqDwRaUQdRl8OA5ZYE0voVttjAn5cKXRaI+XABm+\\/IK6o4k+KZ5hg7qP5VPzDCo9u9oFLsyg9moQPNPbzCb4Z4MhwDW8Fq1EyIIweOefw65nqOai613J2EESFbwOYR8uFLpgfLhQ9cGeYYO6hU\\/MMHdR\\/KGDB4BSv7cIfUY3qYXf0v3hd\\/S\\/eF39L94UscHC3UH4dcBIWYVgJNPlywo8816YMewSW6hSWEDxCPlwo+uDPMMHdR\\/Kp9Rg6meKtc0qXCG4PPE7ITHHTjg0jfatppC0V1hhZfDmdFmFkIRc8wArxuDJqa\\/kg5pkHBx8Qv7cKPrgzzDB3UKn1GEuMDTEueQGhCMqTdMBTqmOR+49vMfD\\/w6hHgtKZ9FoxvQKazy5RhNF8eC3af0VtSA3kAppmCu+\\/1CBrPujTLCRqFlV\\/1CsqVJb0Cp+YYO6j+UAx8jk5btMeims8u+5+FVMctVu0z6LSmPRbdZ0chko+PM8wwd1H6Ja7kVHZ1foEabWVATzH6Izx0\\/wAP+nutPdae6OWBExC3ws6gWVVpW+EM5nCbwoNdkqDWYCs6zApvGOnut33W77rOmQtPfEG8LfH0W+Pot8fRb4+mMLT3WnutPdae6Bwuuhb4WdVoWVQLfCLeSDea3wobWYVArMJUdsyVddOBctPdbvuoDJWbI6q2MA3mt8LfC3wt8K66f6G7eeARLaJj8uvrKdFITdELaohvM5rP7Mcs3DPRODRAgGPTB\\/TCqGskXMtEajio+zHLtIEYMwHROcM7TLk8vLASSYLs1UOR468EPLjaBJW6UCWmT4KCFA0OYxb0THiXXm0Qt1xN9gHMoVKjHtkxbxVw0InGXMLh+Y8l3GcZ5nlwQIpA5SV3OfAZ5of8fZJDdTkeKbh64AfaWbHZuL5G6eCcwT2dueD0zqqsIvYN5paEAHMuzGTvBU3GIujIo4OWyJVtplFoaesK1zZVh1EjBnVXO0RaQTDLz0Qa2nUe4tugcEyiZud7I\\/0BmU5zi520BvFaOIPzHPou7dHnPJMNroceDijAg8c598H9EIiSVa5rM\\/mV1KjTafBbUXeCZgOic2nStNTIkulOL6W3pIcqgs4W65IeXG\\/ktxqygeq2YCAbozLFvROeY7NpLmDxKbSNJj9SdqIKYHVGwxkSc5TWVN5ojHJxy8Uy4nNsyXFRa+fF5yW1TdBjVzkRDtMtsrZEDD1UNt9VFSnTLR8yikxjZUp6Z1VS5tw5TCtp04bTBdmZlB7KUHM7yY23885mUcHJ0AZrcH1Vxi3+VJgNCL+ZODOqew\\/mEKqDBrVIGvBNhjWW6VA7OE+pLby+63\\/1H+gIWy+3oUfxTnrtLKqRHzLvnfuKPaPLvXAkg5raY4ruiu6KhrHJsA5YRa5BzaLpCv7F0zKL+ydJMqLXY6tW81XNqAFQawhatxAtct1y3XLdct12JIhQ2qQPByA7TIcJXfO\\/cV37v3FC4yeeFpBUmmZXdFd0VAa5Fw4prjwRpvY4tKc0UXbQgo20XZiFc2k6VaAcC0cVq1bzVsVQFt1QUHEjAHkt1y3XLdct1yLQD\\/03\\/8QALBABAAIBAgMHBQEBAQEAAAAAAQARIRAxQVFhIDBAcZGh8FCBscHx0WBw4f\\/aAAgBAAABPyHwDow2\\/wCRH6kPCDL7Dpr6gQ8NejElSpUqV9MIIuXL8NUqVKlSpUqVK+k3CB1PEVKlSpUqVKlSvo5WAwh4ypUqVKlSpUqVK8e61CU6Iy5fd3L8DUqVKlSpUqVKleLdalSpUFhp1ldFZTtBXiKlSpUqVKlfQKlStHIyvTMtly4\\/G1KlSpUr6DUqDwZXk7JjQp46pUSJ4V72oNYdpxyVqqlnLQXRZ3t2Vekuw6ngEieEHZO5SDXlOIaVpsmESViVWYrLYOIM3u9ajgIOQX2t8c6FK2FfdqKw+AY+DHYO7ZRLMkcdrUwlGm4l5fk0YI5\\/zCLl6iglDIwqup0RiX1XS5XWGg8Ax8IdTu3RXAFkTsAdg4QxbLyg6\\/7pxZ+c3HEEkQoKVloOYNFiXAVd0reoJgFo\\/sH+S1dFlcCYdTmtQSCqN+cd56p\\/kSO4m6R23ZWJ\\/bP8mYTaGUrdeUYd3qlBYYIiopNzQ6xJWtF5QU7vVAsj6kpBvsmz4k6EO7dVEx2AYv8AjoEWNVQHyjf2Ax6yywlvfDMX5kC5j76X6BsyfxNnBhVwdIKXm\\/Jpx4AfaojchPkOmnznJPl3HRYsUIPzyiS+NxsQJqZvsT7aGE8mPLDZXGGCst0r6H1YZ2eZy\\/EzXOG4U4xWzyYWO67StalR7+9GDQ7ti7A1BvURN2rRkgHPK8pQl\\/CUUIDjN\\/yaEV5\\/zCxh5j8mm6bWcjiwZcfFWxlPg6fCck+c56JBVLOS4nEIyrNiz3CN2FzrzkNt0MxtZcWUYlsTAhoaTYnYVKiRI6XCFte0p7bHQ7pe2DUyjG57mbR+OO\\/uicybjOiqPu35NBfn\\/wAyq4T3D8mhvyP0htPjOenznMg+Jx0+c5IYVLE3C9oTLYLm1eK\\/WhJa5A+w44YZEoMo7NRIkEdFFpUpERhlcrsp27l6GHuCqFBvvKxDwzSgSRtZPJoJ8XtxHT6v9aZtgA3plD040T3z8mntf00+M56fOck+O56bYJ35R4AuIWMMJHe+Og32P7jNqGzyaBUuDfE5TYeekwRaGRAd1O4QkHYOGhfYSMMJq9yse6GpSHds\\/ebIPmQGg8hCq75YiJDoeXONSbsnSFg2CaOZ8GO29X5NPb\\/pp8Zz0+c5k+e56AzWFnrrvVUWOAdjePWBKQi0GH2ej2OZChK9ly5cuX287K5cvRImr2L7Fx7w2n\\/cejDe+Zf6Ziz4niwgr3B2PtBUEqVs2++4ftB6v63\\/ANl5mttCbMPV1cbPh9p5KxCvTQEtJYzhOfDhM+e5KvwQ0Phehp\\/Ck5BLC6mOOuH\\/ALCle2OB9oDQaAKZig8\\/D3mx++f+zYvKv\\/ZgPsC9tbXL0EXLim+HYHcOjHxQjjBQOJCC7ZipY7PxnPT5zmTalSomo1vsJK0vQw7whoQ7pj44LjBQLuQko7MVKgsXQLUshPL\\/AEjZiGyrfzm13DGHYqVElR0IandMfoQXGBg2yc3HMoZVFV3NSu0kqJKhCGhL7lj9GBswW8E3J1J0sWSu9qJHQh2bly5cuXq\\/RjsAcYnEhvpW0xlZK7i5cdFwYQ7tj9FO4FICHPB5ZGFytV7CYwgw7t+jHeCOMHAyyIYwkBwmYMGJKhBh3LH6MeAGQkLMMUiZcljsjL7axfrNsHCbNKREYvMwYMuX2GUSiUSiUSpUrvKlSpUqVKlEolEolSiUSiUSiVK8RbLaL1qVpcuXL\\/4\\/Gxd9Z5T1nlRhwR5MVdiuujEGi9p\\/OiGxnUn48T+dHZT5GgzcHKUmeRczphxaitIcmIq0Ve2qB2xT4f5KbfD0hNkc2z9TodW5yL27HOcRL1lnQx1nkR5UPRh6MYJq9KTOVVU\\/jT8toBaTmE\\/jS5W+aU21beJ5fSloNyG50kYMEoTkilmnCtMWXU6H48pX4f5LOQ5Df6lumXJV+oJit9dMwVarn8yfzp\\/On86M2acKldtPL2cvrjy94pbuY0aD0JdDhTZszu5lFUBuPXjzxL9oluX6z9+U+zZksOnsEtat4rAMaw3FL1toWEvJ5aezdYIPdS9ZWHMqxcbt3DW4+B01uCRwHGNSzssxNpCsnEbN8dxLlSCHRy1oarxlKAY7lgGloEZLlHeFBEE+A2r3jxl8pj5mCsrInAORC5PyBedc5wZvjLcnO+xUyCBm5wD+vLWbPmjTGBqErRS7Ost4sg4Dw095+tMawTAe8wLaq5uo5DsSUbQ+mbmzM90aexlyrXlB6OGqpR5swHrELg9Mkd7imsbWC5eUXZMhsRSWRGWHnAAxdjFtrnvz89wYAB3B3jFo2JWF59JTG2UOEcXL1tlsLSrI5xb3MbGYPbxsX1lHrLtf7t9PYIIscREKdM1vmU61s2rnE5gbx7N1hd5BgAvhMX0uIGsDUazbgvrVPgdNWIAqxcxO870pfnK+tO6bC+XtDAGS8Srija3nVekiNK5UFD6qbmdxli2I70749pUZkqb8tW9PgrZGs5v7zbyekrFUrBFLst1cBnXeBUvn\\/kvMIXZ1jdvHl7wmnKTTb80HlgCxb3Dik2bnnML8C1RTx85SjjPefrTGjYb6jnGEBMWFGInu2NnG0V\\/dltHlPdGns5XmPPMIDOQqPKFoWXgbP4mUyc8pjyhh6agW0li6dw8Aesy5UKSjpH1MR8m3oivzTuMgGOcvL7b2lz95mYCBQoBFRWUBkPC01o9pSsSuaTaY6+PrOF8fWUQBbiyJlvoMLYrhLEgstvPrMtHGN59YoxbjPH1i2NiuGqU+8wLBLqYEWN7xvWP1A6\\/drsACuE+AT4BPgEaH9GqhUecIAXBAizU5i2ib9ZpMCAB+Om70Gtt3iJF1u\\/GZB+P3ivx\\/cGBBg2gHkOaGaUXCbmKCAKG8cPWbGFkrePWAhBsrde8Xlq8dHSA80\\/tM+d\\/8lrkdy8fiBUScLo\\/EQpC9tAfyK58A0D4BPgEADWt\\/\\/G\\/\\/2gAMAwAAARECEQAAECvkdfz20we\\/iDo1fCENPAPqww89yJGGJJJJAAAD2XTTy4ry3qv6gPIIAFPAPLwxzz0JEHJJJJJAAEDm2oWX2+342nmu+SZf5CNvg108dDEDJJJJNIAI96H1pr7QY\\/0nvikcRPlhJJDkwVTGMDJGGiLJDEpfA62\\/L06Igkv7wTVANw5Pho30NMJjomln27YYc6rhktnKiKVigl+WdJlK\\/wA4Td1xcgJLIueefd87u\\/pZvttWyIa4hxwFQCKvX67plfRf7KI6dtuutMDjLuCQDnN4euLX90dd6\\/tz7FY0GLMIpYq5JsIrDDd4VHWBw\\/OqXTnStzToPt6xFBf2GubUL1NHzZbdOsbLHzyzhq9VtRX0Py2ree+ipJaS3dgZtlTaMVbL7M8lHGCSOtvMQ7+h8Q7RW6KAwoB1dI6fZ4PV6OZp7f08sMOODQs17lGmU1G3jKqJ32AZ6ZSIn332xyao7Lf+89889TUwqorbzzxxj2oz9I5q55In2lHHQyaooLPOMMPiQWpjRmPXQrkpheAtW88TBlm0EEEHByaI44I48T\\/PMIxI8PO30kpS4Fvs4ZFkboY7gAgRywHn3HXxTBDQwzAQz32XzfZWNoW2afZh2nn1mNIMCyEtdTEZBHP9KcTx89IhHmRYoGUPFIl2XLg8LaLmICQo3J9poLbWH83\\/AIIfwLfzQERtRMmyOSvCCCCCS2aCyl4mb\\/8A\\/wAu4J\\/+tUCQz\\/\\/EACkRAAMAAQMDAwMFAQAAAAAAAAABESEQMVEgMEFAobFhcYFQwdHh8PH\\/2gAIAQIRAT8Q7L\\/R4TSl9RdJ2m+mlL6RCek62+zSlL6CE6Lq+9SlL6Jo21nYTYJUaaw+wn6KG3UqhiorVQ23HoXZXaXYYT18k9kSprkUTYKG3uWrQ4bao1REwQoiUMJFpi2XggjSLrFjZOPrhCEJ03Sj1UXV7EExiVOoahy0MgGMb0zRmPMosrIhs5GdCmBFUITRaGUpUQgxPS6t0rcmXCwEJqKZJutW3tAxLqirMXWxvk4YgzueohNEEJ9EMI4Op7dBug5rDcoxXExz1m4BqBvCxDedMBRuG66XpPrZAy233YQVTo2ajRb0vWj6tdT49EiIalIz1QQ1WsIQmj1+hQuloMtlohKiQk6qQH6FC7EQ005QmEUj6WxWVlZWVlZWVlZWVlZWVlZWViYrkrkrkrkrkrkrkrkrkrkrkrkrMlYm5K5K5K50Y0Qq7r3\\/AIGPz8lhCKjP5Gn+zGVGfyYdsg4rhffPuKxzPq9Gni3L99h5k+P9TNxvEbRr3YnOJe70TUmmvf8Ag8ljUTY0JPA0f9DCvyZ9ps9xNXd9XgRvCW5xmEAngSnJXy9kuf8AeRQqOce+4tKnUIkp8iKte7Po\\/IhJPHSoiaOD8CmtClkf3oHLI\\/syzNizLif5DQW7pjLLZp5XmbrFyNWNeFfnIgA+pNA4q0Ld7hcfwJcDk2mNQI+lf3GoEW4ypIjv3\\/JZNcEKVeVysfur+BYrp+W38ZY34UOkrfI\\/rDcFJtceope9Sn\\/\\/xAAqEQEBAQABAwMDAwQDAAAAAAABABEhECAxQEFhMFFxgbHBUJHh8KHR8f\\/aAAgBAREBPxD6J\\/R9t9Xn9Iz0eWei3szpvoMs9GcfUR5MO9dtt656PN651Z4Emz1UiQGHu2230YSdOYlnm5wyTBoHiyo3FDH5JjsF1ZHOybAD5t\\/mTyATe\\/bbfpB1ybIkIXicxykemN0wBA6IakcTJ4ZEfiI4krWbm22222ObLLm23szqHbmJYrymTkhqXPVPi65TGS4T4C8NNkMAzjs3oNtts5J2b0DuEY9HxMDjAuzmsZwvMwll4JXmDx6ctAwYWWWfSLXQGfV3ohMsju3jvyyTqPcPRMNtpZZ3JPZttvQehZ7dejhssbbZe8PRP0hdHHUTtwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsOnFhYWFh0QNbL2vi\\/aHTZ0nEBftN9v9IknFyRFma\\/Qkq6eWjADU9+f8XjLYMVHE4fiRNX9uiTmXwQ+FoZ\\/wCWlHN+lv5s\\/iQnj8F4K0MdV74Psb\\/iEI4Pb2\\/T+ZoksUefxf7cSF+7sJVUZ+5+8EMZihBmAxlFxJtn7fOwWHHThS++wBPPxyffOP8Aqxxzn\\/P3f1YkxvQPx6MXF8n7zeTZse8G6DLupa+TP4lKt9rOAs2PebE4+zLgB\\/HD+eP4Z52nHHgP7Hnj+0FYQ+EMgEdg9\\/UZZ6D\\/xAAqEAEAAgEDAgYCAwEBAQAAAAABABEhEDFBUWEgMHGBofCR0UCx8cFQ4f\\/aAAgBAAABPxAYMIeC5fhfC2R3qDRjtN3\\/AKJCDL8p0Y6cRU14GM2Td\\/KrSv4qg6XL8h0ZUSJKiTqQi5vHQLdFeI8u\\/wCDXmqKDrcuXL0DwOtStElQhFxSyMsuur+S+GtK8vqwGEkkXLhAgaL4KlSvBUrRam+hhhll02XQryjza0rSvAkqV4mCGX6AwdBDRleCtXW9Fl3A1qVHQdB02XXV4jza8mtK8LGXUbdoiigwZcvxVNosXVZdwPIqVqMMuvZdO0p8mta8NeBPAkqVqouoJtE3QHwJcuXLly5cWXL1AuB5RrUryQFl0qlee6VK0fCpVwIQagETmAhDuSm87hO9KdZTrEdZTrC3QH8KpUqVE1GHUMMV5tStK0qVKlStAgQIECVK8DYXoRci0lM9U7ktDKWGleC\\/4NSpUqVK8IMMV5NStGVpUqVEiaVAgQIQgQIEqVoYq5CLyDWoVG7JbvMlQR1rxXL8k8dSpWh1Anl1pWtSokSCoENCBAgQJUCVKjadSR6ZHVY6ywvBjnJvKkUEtS63lnhvxD2WWKljtbmLy7gV5Ny9alRNQSvIrSpUrSpUrStCoaBBAgQJUCVKlSwjunMGnDEjCQ3RhZjJMM7ly+KKgTohZT1L1A\\/LiFOdAF+NK8FKjkjzWa+JVSqzI+cCPn4nfg8h1uXoxIII+XWtSpUrSYQggQIEqVCVK0YYjriGYBUslKlTMolUhZ1I9CIj2gNEBCzZ0H8wq\\/hMsDAwdFRPAcJtCaoMih7pXzNzgOOI8KOn07aHk1pWly4wQRPDXkVqyoYMwgQQIENAgSqjKiaiPO2gBRgol6I6TQIA5xxh78\\/EEUvuf3w\\/PgVY+YFjQnpyD3zmMAKwEpR4DpotXZEEW82MTxxRmR4HeUJPVA3YcjAozEoH8kYMOYoHsEdkGCyFLpb6zehBTpoFTKHB3iCgad1Omg2QLAVSr2DrCFh7Qe\\/M22Trk\\/uXqQzdv6P7iMlUhSOm1QAIQcoYw92Bos9Wz+4q6Ft\\/+nzDxq\\/TEqVoxIkT+AwWQ5hqEIQ0NHR0rMqO+0QLN5VapUF0HoGq\\/I\\/GjljYAOd1n4gC0bbr2WfmpZpS4WjbY6do+tTBQQWwG6aX10HPDfYxwCd3qRyg2GNu6bjQDXizkAPj5ZVZza2os5tonUsbE01fDRbioOQasPWn4gk90vqKKPRjwA2g++U130oQKV8rA+zR79oXAt2BzKgER73T0IiXFALR2A5ZZ77igzrVg9L94Nsxoq6B\\/cCmqdziSEtpI9EaYxUSMMCJpcuXpcuXLly5cvQsGhWghCBDQ0YxQw7xzq6gGJWj6FY9M2fCaJa9pY7EcdvmZJHZS16JiYJKgPBAumMNn\\/NFhpfpABNtIZsHKLqMBylgesZ5Hr092fR2GsxJ9XDRUQEW6APtd+03STuCrzOJGK5OR7JibbAHokJQuh9UxApCBXtt81pXy6bbXnHY\\/uAsR2f1Hc+UOUcP9\\/nQ7wU\\/ulPyRJUqMOoBLrS70C+kXEIhG5el+AbiU6CEGDB0uXG5ROEi34XUQYhMKilKwf8AHoypQ2lh32dvZBvJtABBQLGWRVvDvXJ7frUR9h7JYVHN0gb2a\\/vnAHafUdGq7KfWmguWfgowm9Gewm4Yl6EG+4A\\/OgwT2MTqCz6Z\\/wBn0z\\/s+2f9lVImGbXcxzKiaVHwDcdKGAwCVY0bRXEBnQgos4lSoxNIIS5mFwYCVI6NnyFcIzH6gS3OO0eaI3Epjt7lWiYejNFd9LjZqfL81BE8Y\\/K\\/5o2\\/moUUnWk27x\\/Sy0A\\/Opj7\\/rBsT6zo1GfRdGj2VXwu24+yDN+TAd3AxfSXTT2h\\/wB0JFKby4cehb7Q2mWzuKv239tKMVlcBqv4Y\\/8AsvKQ3sr87McsLoFxKTN0hXvHbJLl+BNSMCBEGYoRWWMqJAhPEHpKYxIPAaXLlsoi8p3Yx9gD1sv+wOi+wysK6UQ2vWuglUWWZpujqufx0gESXBzsT8QUBWjCaYlUH4xnt3SPt+sGxPrOjUd9l0aPhdyoFUfKGpsUtdBF5QmMvlnV+D3gHjVQ89JPDwnD359dxvJtqht4U3tGoz7amsaRFx1QgTCOVKlpLaaMa8BJN3gIuXLCMLzG731s+UJgaPkl\\/ggLauUU\\/JGAqsX8AwexCYiJNzMoAlah6pY995km9dvxWUS0B2psy27949sO2YYdkTgltVTiW\\/VKLDNXsOhNiUjEpXSNkWuyl8LKEOWU2ZB3I6nH9DQ09mIHETZPodw7XCFz1V+WSySrXHpCg\\/EF0tDkRGAAFtSJ0C1e0oe52fgzC92\\/7FL4RuaKujhZ6yn3VL0NYaUkmyO4ECBFNkSVKlSpWg8ASvEuleZUo6aWk2ZTkLitqdIGOzILbMd4SpUqVPqOjUd8eU6ErBjAJFKOkQOCYQdE0FEFIVhpHegIEOdNSpUqVElRPAEvyKlfwrZsKm7t6RcmDHZTA8XFHEMlHW5BHEUIjmlID4wIoLsnjpDQ9vDUCtBcETDStLpFS851AgaSVKlSokqV55Ur+Jc2lTcWyYyJsARykCmw3L4VXkugaGiXoOgcvADQQPiT+EV5la14XQm6k6sJw9A2AR7icNFHEryRl6OgM5i0ENL8QGGP8BUqV\\/ArRhAglaWmzNvUFzTblTiE6GZwkUcSvFcB4SsiihDxXo6F51eGv4DDQaMY67Is5K4bsnQY7SdGCiziJUWtFpCMpmTdHWkoMNalSpUqLFFz\\/ArRNKlea6Gg8FSpUqVKhZNmUPvHbw6HQr9mD2nMI0cjp2S3aWJhoKDDw1Kijl\\/wqlaVK8ivA6BB4aleCpUqVKgpszlp1tATpTjCM2xHaR40R5NCoOgQPjrGXBly\\/wCFUqVK8p0CBK82pUqVoFswW8F3gkoYpxETosRmHGqmhcuXAPE7U7U7U7E7Ep0lJSUSiUSiUSiUSpUqUSkp0lJSU6SnSU6TtTtTtTtSvSdqdqdqdqdqV6QHSASiVKlEolEolEolQJUrSpUqVKlSptAuZ3pZ5l3mWxzEdIgl1CCLS3guX\\/GrzD+TUrS2XGJEla34L5pk3ptXbvC33\\/1Gv1f1EfS\\/qJPr\\/qXCloYtfwaPaQs2uf6n9xgLbtAfMycFvW6\\/DP8AU\\/uUw2pVKqv3oViAavzEwG0kA+lxyVbmR7LMdxu0GvzDKJRTyfnVYOJr6qCbB90ZyhXACtgMjbKHzAzX2e2otAKl8X7z\\/Sfuf6T9z\\/SfuKNkXu\\/euV7DLXi+k+n\\/AOIk+7+oB9f9QT7\\/AOpxIbq70PClWJ2n+7houHbZfzBbVtYH5n+5\\/ccJaBBV4uOIuoRdQRDAtV4+YCS80l+Bgt5aDK+1zP8Aiqot9KuDAkFEb6W5g3V1zoR2P5RkV1WviH79YXzBWFbJeqL6SooQeQLqf6Wf7H9z\\/Y\\/uf7H9wREwoy7a0VKleBAnsMpnKt2CnqIQQBcUo6g2aqrXtKlLmcLFFeDmjvKiqJRBhNL3YGavriF4oZcQFCuUVBzaqhDGEFRKAuatd9PoOsYUWBo7wKtdm93T730qOkMlFPuBn8afQ9tGiGENfiDQxLjW5zu4YDBqFdI13NiENQXYPFr0nF6dWHgYsq9pU6SC+R2lL+2yOim7NxcRpkIUB6kAJc7cXSel7asYkJRvtCEoJ1T67HMo2Js7puqu7GoyC5l3i6qi7uWv0LN6SzUCvtEJwDZxbfAgzLRZMOjaIW3tdS8SiuBWlmOLcW9oiymZSFFa2Svm+mIpWnm+ghvFW22vLefGf7dSXsDaDbR7vS6hvAvlEa42AcksFScqJLdlyf5p8B\\/SfS7RMVVI1hIkCkoJiuK7bOYAJhPGBdd+eIcKBWpuxqfZddMfSf2RBmrYLq0D5Ql6O2B9aiCDGZLzkLfUviYKgHI4R4YjdrHWhzp8LFN4BbizRfvAIGaUtht3eCKdA\\/ZYyd+xENcRDgbmLqPD4FXgv\\/vYBSqvrUAnkUhb2Bmxu8xemtEtJoUwV3G2IX4CB2VGiuxQO+8LfgDZdYbuUr8RvgjsZGCkf6emn2HWV5zFwKBXfHQ94OYxaC\\/FDzGYIUrPeLuG8Yjo2cVYXt7z6Htp0l449ozMKJ4Ao6u9xSthTaKKbh3h0hElqDs7+8ND26mFRRtvNQpnmQhqgF5M1XTEdFjtBajuM3XLZriHcF6Lm7rv09GXOC2QNsgu9YL9daOz\\/VOzgAeuziomC5yJQDOP1AsBWWt3yKoaLwd4IxZiyFiv0rUw6nhmF10uMOwxyjqg6NhcxQUlq9ApgjJQy3BQS4QLW8KN3dtDewLfRO13tLfBAZB7olHur860dtQ3FltnsfMydkVj0XVesUT3LPlb2AhLhBxtc+A\\/pPpdonYCok48LqIqEnQu7RRl2mGp+pUyClD3uOhKgxLxgUT7Lroq9J\\/ZK0uC74BvHe6\\/EXCoo5AyLw5c9MQ+Ew2Qh2Kwwd0jNcaVQBSN3ik271KRQSdwtXxp8DKut0cKYfzAsmY7XA9htMv8X4bCTL2Y+Cs5aePTVsVLHsuH3l+PHTndnmv1P9YFKormmy3DrPXGJQdYqHQDYllOPthL1r320D0gMcZ7sdZClqxe\\/MsOINlVZ7xYCcNrrv8A9MTWcDDb7sLlkOObro9tHm6Ko6PWEF3KsdVMb24eMpu6w3iowW4qb2g5K0MUPnXChVfoQfAeq\\/8AIYItjsdNsnaLhBQeZ6lo5sR6\\/pqqkTSdBPqftPvftPvftEhuCfV6gh0UJvYOk2mlEnoEdIApUNkOGUKAq1MkS3kJAwJmEvVy6EC6sSs+8oebZVtFQlkO1H9RuVu13ms8+p\\/MNTYFYH5jeCENxgJdAMm5lZt6kLpsyPaJyozdVuDs9obFwEFikLwuECqvwBcAqYiCsProXwgHZvAmw36cTHXzMJojMEp600uFGVZdZ1oyhO7CJvInTQh0FBu6Q+wawg9QENKwytKlaX478F\\/+eQ0PIqVKlSvOP\\/NPOqVp\\/9k=\\" data-filename=\\"14194443_1070473696339690_314768881_n.jpg\\" style=\\"margin: 10px; width: 600px;\\"><p>Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.<br><\\/p><p><\\/p><p><img src=\\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAgAAAQABAAD\\/7QCEUGhvdG9zaG9wIDMuMAA4QklNBAQAAAAAAGccAigAYkZCTUQwMTAwMGFhODAzMDAwMGMyMGQwMDAwNTIxYTAwMDA1ZjFkMDAwMGE2MjAwMDAwNjgyOTAwMDBiODNiMDAwMDEzM2UwMDAwNjk0MTAwMDBkODQ0MDAwMGM2NjcwMDAwAP\\/iAhxJQ0NfUFJPRklMRQABAQAAAgxsY21zAhAAAG1udHJSR0IgWFlaIAfcAAEAGQADACkAOWFjc3BBUFBMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD21gABAAAAANMtbGNtcwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACmRlc2MAAAD8AAAAXmNwcnQAAAFcAAAAC3d0cHQAAAFoAAAAFGJrcHQAAAF8AAAAFHJYWVoAAAGQAAAAFGdYWVoAAAGkAAAAFGJYWVoAAAG4AAAAFHJUUkMAAAHMAAAAQGdUUkMAAAHMAAAAQGJUUkMAAAHMAAAAQGRlc2MAAAAAAAAAA2MyAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHRleHQAAAAARkIAAFhZWiAAAAAAAAD21gABAAAAANMtWFlaIAAAAAAAAAMWAAADMwAAAqRYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9jdXJ2AAAAAAAAABoAAADLAckDYwWSCGsL9hA\\/FVEbNCHxKZAyGDuSRgVRd13ta3B6BYmxmnysab9908PpMP\\/\\/\\/9sAQwAIBgYHBgUIBwcHCQkICgwVDgwLCwwZEhMPFR4bIB8eGx0dISUwKSEjLSQdHSo5Ki0xMzY2NiAoOz86ND4wNTYz\\/9sAQwEJCQkMCwwYDg4YMyIdIjMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMz\\/8IAEQgBLAJYAwAiAAERAQIRAf\\/EABsAAAIDAQEBAAAAAAAAAAAAAAABAgMGBQQH\\/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAECAwQF\\/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAECAwQF\\/9oADAMAAAERAhEAAAHSjZEsZXKSGIGhiJzhVdJxMZBEgAAiSgSaJEXMgmAAFcPRCYqgRtASJhyIxaClKa1uYJwUTZCINMmIySiZJSEptEG0ABGURMxzIuQQsptBMKrYxLIxYRsQypkkAAANkXJTA4o9Eqp0vICARRJRcglIhJkAABgAAMCMonjblpWuTnCKiiUUTAhEiJBoEg2iIyRKDiQBDQ0okyMhhIgWFYTgWFZJibCuZWWqIOKBsJhkAkQRIiDmlE3OMqyCimcpOCYAMAABoYAmESAIIuuVCPTetTrZCMoiY5iIwBMABNETJIGEkRGClFJmhEhTI3RYlKouSkRrtgSdaJDZFSgWEZFSCYAAACaIkiBdXPLSsjlDfHWyyAbC3FB9D6\\/yX00t9TfH7OGsQdbACAQkSrmJVSsmDzyhaJQtqCMohKDQ0El5PZkdM+iuCdHJ3nwA79ubE633YT156bNeT08\\/U1ZKJrlJDcQkJEiEivlPLdHLpLsrZam2gLm6\\/XKqUWkRiCmyoCYAAkpxKg0DTmJ4PdfM9KQA3yJdfV4a\\/PF9CzsxnwNs7vp3yvdYa6I5PJx11qw1F67+OAuNs8xoaz6a5ZU0RhrNKbc83pzvBNCObnb02hh7JbLD6jK7cwBvzJdbtc3ZkTU8HTLyAbYezXYbYcnZ7Hx\\/LTTRGWrtXWmTvNNLjdjPWTCtstxfX5O\\/zT2+LsZ6apQlydyckJgABUBMDLUqsIIbExHPwOrynRiBZem073i9vF1nL6mIvXgAdfMbXF77DXG+KdutPOdW6s8Q6XOtVejzlo+mZD2Lm2y4HTjodfg93zbqu3Jw4dAdWB0+ft8dPHwunzOjjAtNd66rOH0TP9vIb8\\/mA6+I02a0fL15xKzbCB7JVv4S+jTI93hEfQIcyzh9LJIO\\/wAw1WW2\\/L2XzK8Om1ABGJNRZAlYFZEZFjaQBIxPG9Hn6+cnAmNPHNFLe7wheoHQrazf833cu\\/i92b49q\\/Q6vmNd4+k4TwmmYBeuo6Er+Xo+fAdXP6voPzf6FhrXgOpydKAem0dbWULl2yVQeh5hdSJ7lXIKXtqC+YL256+jUV08ndT7c\\/z9MdnViVemtyaNcQC1NZ5OnnOTt5wHbw37rJazg9CRCdNaywIuUiBYEK51ReLTmikgE7yFHtz5iAOzmB6vO+Ue8nnfB+zc+qtsvofUs7czBevndWAHStXn2bfo4a\\/OfPr8htmWV9CW39Dnyb\\/LV6fN28xpc1KsxAtD1nD3HPtbx+tm5pyAO3gIy0uHRmVrrM9cf6ddbS\\/E7E6qaczOOPd5wHQrbnS2Xqw6cJHp8zp5C+jpUvsMFr8XTQA6ObQaHn9TzvTiTkmDkgAEAeeE4xKclMKU7olNkSsVtvmuufgA6cPT9ExW85ehSmZ3qnJCruUPlBdT38hssbOlvqFXz7yZ6dHmBtiaDP7TPTQjhz64PkaLO9eABapOGgpbtdacObeOL2GH6eVAdPJ7dhnNF5\\/pNE63rLKy3wdDx2rigPQ8w2mLtx23nhynnppbUHRymkzey5uvy5ftcXXEsr9xtL4T4vQEAJoAQAEYRsrpTO6q2dsqXW1pGcF8v+neDSvzg31l6czU12Y6gEAAAcszjfqvN1z+dGtlemS6Os6ud\\/lq+hK0YL6AvZWzrnCs5\\/JbDH9GIBpT0bvj6Pl3ZErPmxm78emWPWvtvXzdVrHe6KYlKJEmzJcr6Byt+fKHdstTO+rXezPT52bJ2rkty7s9sdyvofgvli+\\/1+lW9dqKXYFbiAE0AB5lOJK7zo9lcLSsuriYyrlC5wnEoaBNDByFGaIyiRKU6phWV2JA88xYo2TFdd2YtXgeMOrA9\\/i22WnQtnPDWqckOJKYi5O1YyAAaFJqSjJJLK5RMpVuIm6BLCJJ1uYsgmTt87RZWQlcQnnogAQAAeeyhk4TmRknEltLLq1NECSjSUqhW2JGLycLJiM4SVQkiVbgOTotAJA0EPnH0zk3phjZXXrxteSy0mokS0Ibg5i1qV6KNrraqVrKGnaqkgkKURBSjMzQ0FdhCoZNkxoQRSxMdtNlZYFbIAAR5WSIgF0qpQbYmElYVubWgrK4uEbomM83VrjqHlWaaGYUxpzM1zGmll5Ginm2aV8nq0SUaqW9MvM6WsjZVrQXgnavun4fKdiuUIm98SGuWkfi9+Grj5+dMdNea+9Qfgl0Vn3LQQ4SNA89I75nxHdSdZaoLUvXmieyPhmn2Sg63tQ6XQAIDzSgIvrhaRlKtNiRE2eD28rbDiczqZ7R2NIXed7vp5XU4nV5Pc6dfmifac2VNegUeea8b5n9OxHfz8g93s3jinRrPL9T+W\\/SuW3X8HSfJbMej0ZDl02l3M8fTlmPd4Nh28nE53ohau7wmox1Lj6mrM3t+bbhvkuMzt4+pvPmv0bl6bMxqcpTXMMc+ih9LDpnb3bfO4cNVtcX6nPvOjy+nbLwRuOrz\\/F5+jVavLh0fGnUK6XF6VM6bokBRIAeUbIuQK2oLYRtI8zq+TXDhZzvc619H6s3oeD3Pdxe3wuryO5ndjlef06DQ+2uvB8+x51sMh2oczt8\\/wBt3z7175avpYfo1nJfTfmP1A7NN9vHbx\\/Nvqnz3own4PPHfC\\/6JltDy9Pz3o83Q9HPqsB9K8\\/J1fMel7OD28n03J2Z7O8O1xvfenO+gfP9jW2hyusyuHR4NDhp5+psVj+jjtqfVy7eHj9+A1eM7cdv1OV0ern8fo4nU6eG6PnUWnz\\/AF+WLaT0+eHL2xspsmLE1WwAecQNAAIZGQevy+Gap0kW9b8nnT2eN21MHU+ceLSPqh8rlD6kfKw1nzPRrojOmileM2aNmc+rZnb89vSIwmOS1fOtX51Pt+jo5+15+74Off5zsOdp9c8D6O9yr05dfZ7ETnPBsOXMc+zb+vO\\/y\\/ue6rSmxyWo42O2GfUL7ct9N01us8phn4fP13056D3r35xjS6rs8+ELUjzu2+t9TKw4PS81vnsvWwaAA8xFgpApQsJCAk0RjKBIixJsjdWAgFdGZUrYkitFrrkW2UM9EaoDHYRcPSOEokhMim8dIV3QtEANKNqUSi2NZrba0SRExcnCE5SiomTVOLTIrnMCaggIlRlGZpVi1pCdbJAFDABAIYWQmTYEY3BSnWRcvQedqIBeNS8wAAADQScUTcZEyIeiddgAFcnVWZiM7SlRXaPRSrkVXuuJsjIiYDVpGpAxREnWIsdTJCUTGarmLxEBAki4ygBrRQsgTQFAIajMVgDlT6UU3OgvIySq1MZVWASJWz8YAAAAAwABDaB21WErvPcWABVb5oOqM4K2REzIlZsUJEJxhZOUJJm6yEyIBEiWRqtFko1IvBQckJkBWSE6rQIWlE5IAR\\/\\/xAAvEAABAwIEBgICAgIDAQAAAAABAAIDBBEFEBIgExQVITAxMkEiMyNCNEAGJDVD\\/9oACAEAAAEFAtllbwAWVvBfO20tyuvrIbtK7K6ur\\/6AWkIW2fFe8rr2vjnZW8Flp8F9lvA5qvldWuv6\\/wBbKy7K6ur+Cysuyvu0q2fpA7LFWKtn8f8ASvnbxn1nbu\\/K6ur+O++yA7uQOyyuVYq2RQPkvnfO+y3lPrMe\\/ZPv\\/RttCIstSurHI+hs9K61Ludt9ozvnZW87vS+yLL+o\\/2PeVggbq2fpA3y1IKwXbxAIm6Hr\\/UceyA0r2nn\\/WuvasNh\\/FXvnfvpVlbMhA+ABE3yHqWVkMZxlq6wF1oLrYXW2oY1EmYpSvTXNePETkBpTjdN9nufrdNUNgHUl1FdRXUl1JDEWJtXC9A322Vt7vwBxJl+osUddG57pg0iVshBvstvARObfWMSd98M8kDqGvbVD73XzAsnFFem7Lq+dW7VU74p3wmGYTNVt91clALEn2hyZ+zh6mNis61ldXVyUNwCOxqxF+utzsVbZFIYZYZRLH4PSd6QHd572NtxOkE3OV7K4208vDlHcX3WVs8SdefKlbqn+rodzYK28C6O2+kPdrflRU3GIookaGIqvoeA3PCn3hqMRgp3vxsJ2MzldWql1WqTcXqAo8ZYVDNHM0rEK+SKfqVSmYpUNdTzsnjvc9ldVVY2mBxOpJ6jUplfUufUS3o86Sl1jlI06hjKnhML86Z2qF1fEEcRK5+Zc7OhXThDEZVHiMZTXBwyqXa6nLD2EvsVbxet1a\\/h0eeGstFlihAoM8J\\/XVv4lXuhmfBJBOJ48VH\\/AG8sMfZ2T3tiZNKZpcqSHiSV34szp26YssRPfOJ2ij301Q6F7XamyP0R54ey0R9jw\\/Hfiz\\/48mC76VumFehiVaKh2Q7mhZoprG7YXuTaGRy6dIn0UrF6zwp6xdudC61R9LFKi7smt1OpIOHHXOvU5RjVK34p8jY2zSmaXK13TNLaG6DHuQpZiuUlTons2UJLoq46KXL2qdumJfHO67lWz+I34m\\/VV5Ndpc3F9LXYxIpquao2UcBkka3RG6lY+RsDGqwCM0TEaqlCq3MdVZYW1Ysz\\/qZU5tO0\\/jU1HLwElxyoafU4dlI7XJlG\\/hv6iU7EJSnyOkOdFCXvc27eUjDmsaF2CM0QUlRTludALQ4k\\/OFuqYNLW5WKsrAbPSO8BTv4k\\/ggpnSugg4TZZY4WS4xZPxCqenSPduw5miKtbro8mmz4DeKvqOPPlDHxHwxiOOodop\\/ATZQUzpXRsEbZamOFSYg8p08rle+6nBEVa69TlQj+bUu+dsrZAAIneGqqfw6XZZWKEbimUcj1FhthHE2M1tU2lZLK+Z+ViuE8p0L2tyjF307dMBbqZ6OT6rh0OdBT2CxB1os7hXCuvyKbTSvUNA0JoDRV1WjZdWcUWuGcLdUzLBkjtcmWHR9lYrsu6sPFa6DbZYu\\/TS5DuaWhaWclEhSRhNp4wg0AFWVdNx6rKlpjM6OhjahAwHGCGRZUbdU7RaM9mVDdNRkTfOlh4kjBpasQdebK2oxULNPJxhCljCELArAZSP0Rk3OVNSGdMo42rhsCrjepyoheaoeW0+dG0Nh7rTvO0C6AtnjD71GUDdUsYszMK6d8c8M08FSzxQKuquanyw1l3r27Em6a3Y0ajR0\\/DjRU7tc+VK3VOvezSq7tSZ0duA71LWRQiR5kkyw5tmYi\\/8AhyYNT4m6Y\\/Ba2QRQbtrZOJWZYezVMBstkRcSsMU2TXuYebqLElxzw1mmIIlYsP5dmH0+twsGqV2iLPDx3VlpVsgVVN4lPm172IzSuGykZaHEnEzZUgvUD14SMgr7ZonxSKxWGQ28GI0XERBacg0lMpHmMtIVkxpc6kj0Qk5Yq3+HOGPiPp4+EzKpaXU57K4V1Rx6Igu2wiy9qqpix2fco072surhRNMkjBZlcwiourrD4jfxNKsCtBByvldSUzJVyEaFBEE1gYN3pezNQxyrpSGFBR0UbU1oAfRRucaCIJlHHHsxN7W0+dBT2HtXV1a6dRsceQiTaSNp0q2VlbYWgqSga8nDSm4YFHRxxowh7eQiIOHxNUdPHE35J8DJEKCLSKCK3DDRZDxXQerAogjO\\/i9Zf2Q+Lsmo+1dHJzg1tTOaifKli4kjBparK3mfcFqb3RPf+3\\/zcQRqsrhaiu6Bsg5XV\\/ARbYEHLsUWnILVv9L7X9sj7TfRNkUCtauFitT2yaNTqOnDGW8V877NRXdWVvD9ZDeHELsUQRsug5WBWkjO+7+ysnekT3tdfEIL1k92lj3F78qGlLnN7bhmdl\\/Gd31l9+AOK\\/FyItsutXh\\/sgneiU0XX1sstKkoGvd0xqZhrAmMDdt13KbnoJWhaQtI2X2jyjxA9uxRyPgHyVu6b6LkGouWqyP5BWVtgF0fyX0rruVpVgrofLIevu3Yene943W2d8xv+shlddij2QY4jhuXDcuG5OaW5dgpMapY5OvUyGO0y69TLrlPYY3So47AV1qnXWqddapl1unXXKZU+I09ScuI25nYmSt1FWunVtNG9lfTyPmrIoD1GnJDS5S6YWOxSnahitOVTVMc47qWZkLeqUajqYagZVFYylXV4F1eBdXgXVoF1aBdXgXV4F1eBNsUew4zVxmrmWo1bFzrEypZI7wA2VgcvS+8r2GIzPih41QRzdQZzPUtTZHOweLu3GpCzD6CjhgpOGxcNi4bFw2LhsWPMaMP2tcWuppOLEG3U0ZeZHPpkCHCnfqU0ohgJuaRrnTYh\\/lM+fH5eimnkqJFZYaXCW6xKoM1SqCQsnAuFjGy1zHh8jg7DXWkjfE5UJvC+3DCKKKKbfWGnSh4Nat2V19rFf1RzBlKP31GHvqlJAafCofjjn+DB\\/jCvpnPmqI5qSOojhpW1UL39RpdWP8AfDemVhNRST0jmYTWyRx0NTLJFSTzyvaWPw1t4Hd0AGrEG8Wlp6gwugd\\/NisvZYXAqp+urgF5sUBFCqLgl\\/JxERUjYnVM3L0ysoXaZovziPvF9lO2yjdrYp4RNGRY0H6H\\/Hh9jEnQo065e6dHolYSGPb28Wq605XWK\\/qp44jTEsNRV1s1OXSunwiD4Y7\\/AIE1+kwGk6fH\\/wCNUf8Al1VO2HDXcp0ms1dAr+a6ZiTXPwkU4paqrqOV\\/wCQSsbhy9nD\\/wBHxXtGMvbI3RJRS\\/nUS8aeJmuSNogpvZom6p5afiwT074HqmrZKcxSNmZis2qUC5qINNGqJ2qBYv7wywqXwtMXJxcRzGGKK12sJUfcVP8Ak0H6HHS0TMyJROUtxK0\\/j6Yh47gojtiEEk0PKVK5CqE3J1RWh0eDQ\\/HHP8GH\\/FcyZUlEGUbqSB0ekaen0urH+2G12JBtLUVU9U44pWmOFwxCpxivjnasN\\/Rw0AAnfHEY9FSDbLDYbvr3aaJYW28ge1ylhbIK6jEAVBPwoHuL3tOkvrZZIlhT7x2WMewbLU5a3KB+oRxBo0NCkcyFpN3UH6ZP1XRmjXFjAdJDZ08aklYXtl\\/EuLsm+S9lI97UKmsceaqiZqqoZJK57sLh+GMNdJQUFZDPScWNcWNcWNcWNcWNY89rsP2jucO\\/Rk744pHeJNGp1JDoZjDtNKsKbZr5HGYV1SE+V8pAupP44UynkeOTlRFjhj9Myxr3mCWmPEXAOxIWlmfM5UH6Jf03V1dXRKj\\/AGNA0rUVe\\/jsrJ9RVsPN165uuXNYgpJKyobG2zJP5BUYVZ\\/THLpj10t66Y5dMculSLpbl0ty6U+3SnrpT1BhRD4Y+GzJxsJYhLEcNfemoHCa1lW0wqWdMeqODgx1OG6nnDpEMOkKp8ODVV0Ie4Yc+9PFw4+yqqDXJT0T45fqupuYbyMq5GVchMunzLkJV0+VdPlXT5VRwmOJ7NTJKWYO5aoXLVC5aoXKzqGllEgHZ3xQ\\/HwgK2w9husE5Hvk0BE3Ka0Im5yur5OdZAXXyJ7BgyG\\/urFWKsrBdl2z7qysFZAKyt4j6tkNtswr5BX7D16V1Yobmi5PcmzVq36rIdyTdD8QPyORQ77LKysVZaVbwjYMr7zsB3DMK2sk3WnO+dl6z9D4DffMIm6aNno7LrUE8929vBbK+8HcfF9lBeyV2zLVZAXPoZsCJ0+UIbCLgXtkXBFxKDSgLZevNfL0dp2fX1s95BFqDrL3mTZAXARza26LtPmG\\/Uibq10BsO\\/3tui5e87q+w+EDO69Nc0WtYNNwj8j2RP45D27sP8AQGz21NG8+gV9HO6v22O+LfeX1sd2X0Py2f\\/EAC0RAAEEAQMDBAEEAgMAAAAAAAEAAgMREBIhMQQTIBQwQVEiBTJAYUJSYIKh\\/9oACAECEQE\\/AfKvcs\\/8lJoLW5a3LuOQk+0Dftyv0N2Xef8Aa7z\\/ALXfem9R\\/shv5SzFpoJkz3Opb+zJxgRp0dYiReAu4F3AtQKJrlaxkuAWsLqTuBgdOPlSQ6RYx052pGZg+V6hi9QxNeHcYkNuK6cfl7T+UMPNDESoldsogjDt24bwiawwfKlNvKiFvGJ3U2sQ7MJQiefhenenNLeU0kGwnGm3jphtftHnGt2A20Ngu4Au6nOvBG2I+E82UBa4GASDYXdf94jiLls0I9Q34Xqf6T5C\\/lNFmlOaZiIUweLhXgdhhrbXbCDBh7rKAtdsJ4opvOQawwUpjTMRw6hZXp2oRMGHvLio49aHTsUlB2ygFvXUngICz5Ou8ViTjDBt4tdSMiJtR84dzhos46k8DDBTQMv\\/AGnEUuhO6j6x0w5KmNvUIt\\/k47eDm6l2vEstdtBgC7aArD+cAUMSRB6HTtxatWnwgmwvT\\/2hG2qC9OE1oaKRgBNpkQYgfeHkTWGD5yVflatXi\\/c04ATh5uba7flSr2x7Ieg4IkLUrCtWrV4DSeF23\\/WNTVqbjW1A2i4DnNYpVjuN+13GfaEjDsD7PUmozS\\/Sd+ob88Lrp4ZIBp5tFNjc79oXp36b+bqkIJT\\/AIlHIwzqyx+l\\/CmOi1C2za\\/dIp3G6TY2kcofiEbduod246ToxINb+FN0UWnbZdlo2UjNKcdlpKLHKJpDx7PUAmM0v0l+icWKXXRwsgGmrtHhdC8dssP3fNJ3XRtk\\/wC1\\/wDlKPrW1T75tTP1yF32rwMTja055LQEwaGKEfknRB6c0xupSO\\/FBwDaUJQUEJlaHNcndPKBepOYb2Kk22TuEx98rUPtMrUN\\/ZOHGz40qVIDDhYpNhN7p4JbQUUZbyuzIOF2Dy5OjLiu236TYyHWgo5HRm2lP6qZ4ola3rdFuy9LIvSyKLpnteCVQ\\/kndaVpC0hU1bYJ\\/mj3z\\/Nv2Tx4f\\/\\/EACsRAAEEAAUDBAMAAwEAAAAAAAEAAgMREBITITEEIFEiMDJBFEBhBSNSYP\\/aAAgBAREBPwHuv2h\\/6drbdS02rSatJqMPhEVz2jujbmK0mLSYtFidB474ogRZTomgWtvZiG94OlopstmjhMEGOK0XLRciwjlNFmgtI4hhK0yoBteBnKjlzbYTjdCJxWg5aDkWlvODBTVOfT7UY2R2GDG27CY\\/SzBq1WoOB4wYKfg\\/5Jos4SO+lGKapDTcIW73hLu8BGRoWu1NcHcIixSAs1hOd69puww02oCk5waiS4oROK0P6msDcAfVeEvKjbQTjQXJwIvlabfGD5A1buKEDlof1MYGpxoWoRbsJDbu0djdzg9+VaxRlcrUbaCc7KjKVGSRZTzTcS2zhI6yohbsJJcpoLXcjK44MYGhSSZEZnJl5d1MaaoB9o7exeEQ3wkPq7XtzIQ+UBSmO2DPjg91DCAfeDzbsW\\/IYSR50IPOE5+lEKapT6faY\\/KtZHsbJl2WsE6Qlayc7NhH8cHGzgyQtRndhSpUmykcrW\\/iMhuytcousoTEBOkLkfdCPc0WcJHfWI7iqVKsKVfojsa7KtVHEYZgs3tu9mlWGi\\/wtF\\/haL\\/C0n+FpP8AC0n+EQRynPa35Fa0f\\/WGR3hZHHDI7wiKKDXHhD+4ZSqKylZSrWU+Fld4WR32PZg3eF1nwUTXByiHrCc7fdZ1nHlQOAZuszebWYLqvpcqX\\/HiRmaPldP\\/ALA1TuptL4xqBoq06VwPCd6ihTdlPs5N5UklbBGctFo9dPfK6XqdZv8AUArCDgnuGQq0e+Cg8LrBbeVEXF26i+YUw9VrTJCMfhRNORoC0nVS09w1dV9YdOd6TYw1xKec71MfQmymMprhI1Rt9Sc0lwKnG1pvKk2cnuAHCPUMvhdEcxzAUEE5vhZU68pwPeMAmnKbREZ+1UflUzyo5WMFL8hi\\/IYppQ\\/jBhym06cVsmEB1lSyB3C1ozyj1A4amytaFqP8p8gc2kDRRc08oaYR6fprukHsaKCDl+QxfkRqTqGFpAWY\\/sgrOs6zlWVfbeI\\/XdxgAVsFz213Dn9ci1VInGrVdo47G89n\\/8QAPRAAAQIDBQYDBgUDAwUAAAAAAQACESExAxASIEEiMDJRYZETQHEEM1BicoEjQlKhohTB0QUkklNjguHw\\/9oACAEAAAY\\/AvhU\\/KdM3T4VXJNU8pMql8Rll8FPnY5YhUyR+CHz0RdJTzxG9ifLG+HmpXUyxHkInzPW6HwKuSI3pe8wAUrE917n+S9x\\/Je4\\/kvcH\\/kp2T1xlv1BRaQR03vVdN1OZ5L3X7r3X8l7r+S91\\/Je6\\/dTY5cUPXfYoyUgSuFyDQx01Q0itnTLLeWdn99xis3ELCRC013fXeO6S3EjLkojeBv6je2CEeSiojyD+kslMrXtqEHDcxNckNwSdETz3PQ55KZyBvIXjyRKc7mY3zVFReI2muSCLHRLhoAtix7lSawLib2XE3sphh+y\\/EsyPRY2ODv7XeFZwEKlcQ7KJwu6QQtP2yc3nRcQHSC4x2QHifsnHWmTE5UuhpkCkCVKzH3K\\/KPsuL9lUdlMNK22lqi0xF7z1vLt5DNaHmIZI3v65bV3zZw9hmmOCjzbeW3l7qBOedcjGDIL2DIT03Hy6qKc7kMkd31zsZzMbwhdEoWdnwN155CdYKikFS6mTCrN32zeA2g4r4XEche0IXYnGARd2vAULpNvmMp6yyDdddxh\\/SIXgqHg\\/wAls2TR6lbb5chkCgowipC6dowfdbVsyPqnmzm28lR1Dr2oIv10RJqb8Ruc7mb8UF7v91INCi50cmMqCjBSF07RvdHaBysZ972hDPM9t293M7kSUFitXQChY2f3cvekfTJbT3H1OaOqtB0jeCgoA7DaXgIBPPTdRNFALaM+QWw0NU7Q5wndJXxyzMFId1M3T3E1aO6ZqKioouQgEDV5oEX2jonJRYiJXgXOHTIGjidkxG4N5nPJpXJRdVQXh2Z2tTyy8JW0IXtCmnO5m\\/FdyXPfhn6nZIuVFRUVLpp50EhlElZsGpjeEF6q0HzZ4XBvIXhvNTVFRUvc\\/kFE1vxOoqKiIGgvinnpkGq5eRYz9IvCGYnpmjaPAWICDQIC+KAudDXLBRveeu6dkELqxPIJzzqb8SDeZvaEBvZ5bV3WG7cw6G+LXEHooeM\\/uokxOSKipUTHdMsSoXOdyGQuzuGTZcR6FQNo4\\/fKJRQbyF48mWuF+I7jxW8SgRkc7CZBTBvi5UuY7kcgChe4CqndAV3OJolk2RFYyDeAEAi7Q3lx8nMKiooDPE1UFS7oqIhRuxEZMB4iZZMRyxIupuZqSqpm6CjC7EGrQLCVGCjhQgN7\\/lcjvom45gp1yFxoEX6aZIDyMNEYooRCmVBDndIKMkevkuR3cTeV0y9b5hUXgN\\/8r4KOvkqqvluSnm5HcRyRRvkpXQvJAoEXOqb8RUPhXRcjvzkldBueN2I0Ut3NSVfgMpb3rkjopXdc\\/RdMklPNVVUFT4HKV0YKioqKJEryBjf1aFwWvYI7Fr2C4LXsFDBadgpstewXBadguC07LgtOwXBa9guC17BcFr2CwtJDuTr5lQFFW8tc4xHRBjXGJ6IB5qoYz2Ulie8D1Ui53oFMP7I+G4GF2O0fBq947sVGydGF7cYccXJcNp2XDaLgtOy4LRcFp2XBadlwWnZcFp2ujoqFUKoVR0EJOUBEeu62e2ezDHYY8kT4lpAVmj+Paf8AJDFa2oj1WIuJdGp9U30RA\\/M6Cs4MbEtiTCq4G9lwN7Lgb2XA3suBvZCDQNsaZg4VCBXRbCHjDZOqiDEIg6Jz+QUTVDCsJ\\/KIIeq8V6x2jom+S0UI7LJXQ532P3yQUXENWzaA+oWF4gbgSjmEOaG62prZnlsVa2UDF6Ks3te0bAE0bMmJB\\/um+iH1qz+gLCLURTnWVvgAPHyVmbW3xR\\/PzTmNtBFoiVh8UIH5wmfgHbogLazLY0Qe2xkeoT7NlkcbOIJ1lZ2ZL21CLHVBgUI0XRRTtSJr5dQpUcIptkNZm7EVau+ZNVnyxXQtTD1UgohPfrpe09ULrL75Mf4gOkGRUZ\\/cQuLTXQqBuKO2JKBcIri\\/YrjHZN\\/EbtUTBijGcUDUKI3e0pTUrrFWtraNLsBEgYJ2FpE+asm2ZEPDBovEfxH\\/ACgE36wtmvhhWniQ8X91bfWP7L2X1KBsmzMMRQ4PE\\/eKs8X\\/AFJKx\\/pccZYsFaL2dlv79zmifNWFn\\/u7V\\/68WyFZO\\/K5gDl7b7Zq\\/h\\/+9VEoKdbiNE5vIoNOic\\/sgETyEbgixygac7qxZyQc0yKFkKNqoJj+twusvui8iTGxTWBrXNY4xlGPZOayxhC0ES6NOiLsDwXYuEHZ\\/wAL2htjEFjsNYlDHAmInBNtAwYcJMeStPW4nkuE91hwGP1BQNnOnEE7ZPzbYUSyv\\/cCs5QhLiiUABvtpcwrM2Yjh0Xuno\\/gPgp2T1he2BjT7oeiH1hWf0BHD\\/p4baH8wXhWwjiMSE2zNnstoFhhLksXhBD6wvZv6W3\\/ABG1h6IOtrQuIosBt3QUfbfacEGycrP2ewfiYyrudwgFM3FR\\/UpXYlaekLoogOBhVTCxjnc4mjUXuqSoheG6GH0uhdY\\/e7iPdcTu6LdiPzEzXCA7WCojaGSJNTc70udtSPRVJ0hRe8OuiG3Bw1mm4HSxUQlv5KzDRWqbKB5YCmktl9BRDWy+go+Jxf8Au6IEmuirOD2ghsCCaLjb3XG3uuNvdcbe64290IOB2xrnF5TX8jcAmhNbzddiTrQEgkxkvfOUXuLj1uFnqZm6ICooFQusfvkiDAr8RkeoWzZ9yovN7\\/TMPVCSotN9CzwkdQqWfZUZ2XCzssD8IbrAIYlh0WxRarVarVarW7VRmtVqpqGQtdQqVFEodEI1FLoFRYIel8XLE0TugqIuZqg64GcWqiouFUvoqKBCLeYWyJKgVAqBUQiLjdDe9VLPTJE0F8XU3ETdC+GeipdUKq1VFQLTJTyEDvP77zC1QqdzNQG8qq3Q+CQFFhHCpbqA4ioCvkehzw85HXcgLC2ihu\\/mPk5\\/Aj13PTd9FL4YNxJc1PcxUVHcnp5U9N6PJRU8n\\/\\/EACgQAQACAQQBAwMFAQAAAAAAAAEAESEQMUFRYSBxgZGh8DCxwdHx4f\\/aAAgBAAABPyH0W00HGl+gt2m+5gP99dnpKPQO5MmzfvKc4js0qt5tWGR8RbdQXYnkCY8XL8YPEezPZ9ZbzoJW0tl+ZvKlejmDpYcy6uNEOBKdH7TK7gab6IIYt7cS1U7aU6aa36RsB7\\/or0qeX6AIvM8sy2bG6mCwL5m03Xvg3iVN0w2+qK7qUlpmFSzqKutMt1PJmHmW9DvAtxoDrqS3BLTGql13KnKWbsD76OTMyuzS\\/VUqBmD6r9JR+pk0+hFsXLqo9mU4ltMR1z6BlvRiX1KXTVAbpL9XGYoeGXRZu1AGlxBtMUdK9NStLNF6GjbRd6VcIr9Hv5jzHnTO20o95yYh3MWaisXMaOmfQ1xrWmJcp9C5cXEtcEBLuyWbqhgjSxGJE1RXBAsRL4NKlTE9kt7ly5cFHBrY1t+q7jzHnVNtSVi2XLNvJm6OfmXLmfWR9qmNa0vMv0YOZnY0dykoTZeqW4IA0QRKrxpGWJVyyXLly\\/Rg4JY\\/abGjtBqFcfo8T+518ejuPMzIWpANv\\/Eu69syHSGz7aVKr9GtPEK2frqwZ8zwIHJqAcfXW+GBVm0KNU0qOWMTzgPBrkhZLl+rkdp8DW\\/fTKXEQdtf4nm\\/j2nkfn2nk\\/n2nZ+D2jNp7IxsLPsQClcq9OfmcT\\/s\\/uHHx6F0XMA5\\/wCI6r\\/UO7qZDqJueCJWp7e7Cfh\\/mfl\\/iV\\/D+pT8v6lOV+faJ2HtmYgu6wgCyXZnfifMvrWH1DeJlYDlXiFoN2Et3+3B6Hk1KMqWsVHDbAuyUP3jl1eW712ZdpZ7egxJ7f7f3+hb28nDMcVs4+I\\/unE\\/7P7hx8asLcqbl\\/4lvtNxPu6PGpoZlTx3B+hvy5raDW9zrQkDmKcS5etScAlDa5lHvZ7Gt0N1wNJnCLVjACxM4BBXv6rPaLg29HKeOVPo8yKNx9DxUs5kqnE\\/7ocfEuLN5tA+wHUdxxOBMHgRoL7RS5fRpUrTiwLjO7q9UbnSEefQxewxUpD6pethzLXZM\\/4IA2Prr+Jd6+1oYESRKPEZUOPXYirB6aK7BbEV3bVndkAVSER5V16CCuImW9RchfM\\/2L1ivB7T5b4xD76JiPOu57dZ\\/KcfLF9IRQu5\\/nYfQOVSEzn74qxmHFxUOlVsf3jxBdDU\\/wAzFSAXLWDzop86uCHvdzx4TgplgbttdsywPUZpv2qcefJFtoF+P0TkL3MPtntUVDyO5A5E5Nem8D41AEs3YE\\/7+iFscab8+nb3neFH59bLS3QH19AqOt1V7eugsOO5z5ZSVnravYYucabZ\\/bNytbdGrguxGe7nWro7YYvGpd6l1dp4f\\/Qg85bIRDZh3G4xbbdOJ7mlwPEWPeP39F6hbNlGitdpcpP2Pj\\/daJ5lN0URADdYzFvfk1FB3EMOmK5K2bqzlk8bDLyiKRKTVs8CWfPqqjucNKZOX3dasAhAplnVBGv10mJaM6RHDg2HRqIndYyB1cQNZvqb3\\/M4SonwTpvv0DxdoHZZqqwdsqfiJZMrxDJjRJL2CebpvAPI2jrc2LdDeXAcF\\/LVjdxjjnr8cRR9YGY5vjHoVqxcIOIRNNtbDgBPvUGDWngZVG+tcPeNc0BybR9tbZ5gsC9iHtjl2lrrUFiUNcTzsOtALVxOgwB87Vyyp+dVotlZccQJTkiBYIu8h7zYz8IMONrxHCX1eVr7mQgSpzUSyVbMu7ugLdiUdj1FQA278EVucvMuXKlUW625dp0Oqe36JFA9yFA8Q8w7Wjj+iO5D1D9xE9X7ndROS\\/azr4iYDfE3zYfJ5dUEIYCdg4foj7uoeGusEBMVb86bGHbln7OWopWq+\\/p3Q7YLhWJVrvHVc+kb+YCbdN9i5hsQf9Ys8kANioheyZ\\/P7eg2zFvTm+idtjr39FLLdM8ybM5zDREf4pT0il4P9tRthhsHMDWr3elXCc2VEsOtbc46PBy6hbUxdnStvReYnmlfP0gbgj+1JypFcFacAqtrbptKO1vtDbS7FegwVsCt55AHUFrmYMH2nZQ8yuAuUt2jogGx6FvHE2K1Dl2i3BKiF7tO0vtH4aig7gIt9IttmwmY4ILKhsVcW1t\\/jNQWMQEsuBIYEYNz4\\/30MpfjQPFq1WluxRqxYxKYY0obWGZyhyHLBVInBZtBh\\/xS83LgOSM7Wm3TaPQF7IbYwwVBGrpXBNt2zV2l8WuiBxAwG7l8+tcE40DFxbj+2AMa0ztb8utTle8SrlTaLE8Zc60LbetiRL2dK0yG3L8QSfRDredZX0JlqwHMLhgPpURzCBGWUQT6atanxAxNktlrAhG18off0cKl9mgHYWG6tbxcww7\\/AM9fKrCOKx+iuOYOWK5fn6Jx49GTMYvjGtAzGdSpUqUlSxOKm+Mxr5Akqi+wRaEnK+ix7TYpriWlYfvmPc19NSeJ4JLnlIfRsiWsswhNaWkYferPR+yeStK6fQdveYpd5infb4vX2ZGUD9Ebl2xmLxN2x7QD6OItqx37lPUE4Y5p9a1H+09kvCHzrsJLhmQAidCfJLdMEFO8qcB1LEWhwRzL\\/EfQgsEa5131hMtYM8xMuVRCspZVWFKjLg0+OZds2myM8jwa7QtpFByy+NpQ5nkhuYHLDkPvO0yncrCl1crqGT9AbimMV5j475j4LQUgdHpGrzaZ26SqNepaIHY4Ecyz3LBpcolkuWuHMdIORRL2MrArSPbjgnXjjglXvvKzDPMh7ahbUxlmOBPZLajh4JfgSlUS44ZnqW0V5ht\\/cryQGhfvFyafEE1eXZEWBGK2qUO6s3IGPATiQf3WWS2wmMt7QqUUR\\/RHxCDMbnTOK\\/iP7RqioQ7QzAr1rUDsPBN4Q4mYvB+83h42hvNj7x1Jw3lwOpll3eWU3NpcZKhtYy8bD0aqWMSnKpniDgfRTK8XM+0+XTMtjmVAyXGAY8IRKr5jyUDxU3EDtl00adsxS9s3ETNIIUljxPA+bjbQt7S6C\\/Kd6WETN36C5cQMK8Ti9G1X7z\\/BlfzkJxo02h29V1A7C7Eu69l3oRdrfh3LsuftTmKh28QVueXU7m0pyTLZ0o0xrlfsaqA5hOkBla3MdsomJbLmWmdG+2m8oKgVa7oUN4zWl6VW0vRlxcY7K9fkTphxN9cG\\/voIa46ZR\\/TGMdLs4h3llaXBp6eZvmfx0Mlc7E+VOIV+oWBlFKF8xbnZN1SyLZiiHcWa2t03gIKIMRpcvXM0DV7TJL96fNSpk50dONKv\\/INL9F8YMx3Br9AbQh30Z0MEJejvpY9uoIKH4dK0N5fU\\/b95uziWZZ778Ediu9zdm+R7ElKix+8zel5l3xBMyMx\\/30XuFA6AE5194mV7cdKT2h3ORiVOXxBvDud\\/3TN6Wy0qZI51MuNJEmdMdx8TiVcoN5UVnrJe3WjHY6YeQ6YUMlabNblkuXMrMKeI4IUT\\/ibaJODacxqMdGiC2RZPl5lQkBrcv\\/czowNomzfO8CUJewg3dAuIknLpUYm\\/vhWIqruUhalGF4mZ8aG8ZtN5U3RZvOJeqiexPiUi3aG+JXbMH18dCPeHJBBW50w5FumFFJUAcnmNP9p+Jn4mB\\/KQykwqtBusogAqhX3ZyZvofeDVvfhvPxj+Zijy\\/wCkI\\/iPmN7J1\\/0n+S\\/ufin8yrb8DzA\\/yPvPwj+Z423UsuLiGMh8R2RPZE1K+8plXwBB53iX\\/XTkxwTYzj1BFmLgFZVqrwjCiMhC91Gq8h\\/ZHMH3H9zs7A4SVYbMeJSxtX37aBKVWU2JPee8b3orHiP\\/AAn9z\\/GP7n+I\\/uf5B\\/cLv4H9z\\/Mf3P8AIf3P8h\\/cVqOItzdIRq25tG0+CWG\\/gEQ5JEwyHxLg2X6uUWTeK\\/KP08QyzP4aHJLpydMa1yu7aBq+4tROMBYFpt4FlvJO65C2GqYbGqn7b\\/xBhxl2Uk\\/zE\\/zE\\/wAxP8xP8xG5rePB9SM0ljHV3qZq4G7MgJ1N8i0HiGTJskW\\/n2VXvEdLTaygmY2yWj\\/L+ZfHvAFyIYO2MEcBwe2lumKh4d5ev6RHmwvfnSlHG+UDe8qp+3\\/HWoIAKuwT2I3dgMg6oloP7mjoLxTKBu+fUfe3CBwYrjR8evb3hYoU75meSnTNnG\\/TOjhnKOzP3P7EULII8FT7lihiVAwu4GSL4sx7\\/HPwxg60H7EaVTw19ZUdAQMV\\/NwQ84\\/h4SHvLd67pr6xATY1J7MAAtLzNv43jBnc3H5jRarLKz6x2jcUE+suIN4qxB0qsXsxEKqzBWx2CCWM8EPw0+JRHLgI1WAMpc\\/FWlBVOqFVK55gCbBf0dBWr4dk2QZRKDgqle+KrbvFALzoEWHVmksn87ehSF5atUpKF2cz6afwdBiJgRpl6VLJ1lOJijSqcMoUIblLKNyYvqmSu+6WKnHzUuP4RCBYAfMUCfcgMQ036b0qVDEpgL88yyZV+5NmOjP3P7EwwwclKhm1DaoPU8i0WqKZoqB41T8F0wN5dLqi\\/tBkN+rPhWln5zuV2Qr7p5+amxbJ9ec02ZdZhfDfEwuwWDs3gatVg6DvivEJfHs2qf1DBqkp0wqiWuVjPJU75cTqLa3LEAUjmK7zEqdxavadTL9EYnubRL4Wxd2JSuAQKT5igF4aC4Lmf8TCULl7uX3SgHMWs2jZlt8TDPyvaUPKcu2g\\/eOfBu0rrbJysxypg02b9t7xL5VFZMaDGPl3MMB1XAy58\\/tKgEYDLvL74lLpEhctglMPebE+QWIZHGcczzGg8BVzvcB6DChPjuWIM10M5d5l4y6pwXjJ5wQoNDKo5N6jME7TwTHUdnoqV6bTI0yrh8kXIZWue4bwEQodzuXrIzdRrW6KLJfsPJT9sn4zpl8RbiPiJCEJRg9uIjPvNtAZPPOJw5rVup311bX0gAhQVB7MqrwB69p7JBAfEB1X2v6xNTZQDnb7scJndzY0uZBreFm7mbIRV7EsTsLjtelaUSPaW+75OM4108kOgOzKdIutDStN+4LF8u8xR3CN81oBHuRzn2n8IlqUvemVPu8uYqAsDZnvHUzNrcfxvA67qrwoVWtvEr4V48sZlaWs2Z960oedvdf9XOMOKDZfPmKqWVudZ6ixj4ETOxzqPnuBi4TeNutA78fpm0tkkmSoLs8T7IRMFRLmT6lR46F5qz9413qhkq8Jtr0Ryqkvb8YsGamKCf4ef4ef4ef4ef4eFT20eD6ggG7Cntai4dgVPzo4HM8gEpf\\/AJGlqopsNlXMCo+due9fERUS\\/wDXJpakk8n6Rn3Bpl53hxRPsv4a3DLgyJKAHmVNw7hkk6ODRFMRvRnrsOgy9lN\\/Nu4gF1+WdQPiFF\\/oXL0tNkKETBkZkra3\\/LD8\\/wDzEC7Ts\\/7gy8tiq5nigNpmsz4gq2FwaLxRgt1JdwJ5366MzGPGppRD7sAzr77DMghyFbJMbIpkvameLGFDl4gLtHskTMiRcy\\/mUXUE6FyuiVqpdsfEFDmZiyqrWTzPpo\\/GTwzyJ5UJnuDXBgwRWE+U\\/wAaf4U\\/yp48WMQ3KiQV7EC9orW29Ny9bNDh0qtjLbxNrs5e5iDW0ujiLObnvPElFCeDEogiqGaTShxOO5lqmIQgi4B8xHB2DaMqbyvOmDf49FSo713K5qWc\\/pPFXzKf9J+ElHtPd+ulb19E90yjxGl4ZTolOtLmOpR1KOpR1KOpRpv8y3t7ROHbh6ip9BWhKNFiOS96Dl2\\/eWul2uYzpOjPCXSnM3bcEW3EVd3VAqY20Qn8mW4A+Iq76XBlwY0QZI8AgLIMsMGhss3IqXqFxce5ANkS15jCVrpKom9SjSq0GXUtzrxFFrP6HZpvEvDvw9y7DvpXp7NaD\\/rDgB3hUwj7zGE7JgieM6feCWNbNDMpIP4SKbw9313o8su5jLlSg9OOt6GyrzLKNpa1mIJ3Nyc7ZlYqc\\/EdveXnxNmZZ1KS\\/Q5xNmWY9WzVLI7dW84v07QeZlb1AqWjuPN2O8KVbFQ2iXvH3My3tMBKMBLzrypdfdmfm9x6\\/Q41IsHMXosiYHLUXmeAI7OxA2fWbk3VBj6Mx20J\\/UupbLlJvjQu\\/Ts9C03whgHoshlpQfDEM78JsKxMZGtC5YLzCBceI6X7cDdhChnjx6ybzj07IOYelJtmLAtkE8suXipZCMFumXL+kuFVLxN1Sq0Zd7zyJQQwKnfvoFbfrbvZc38ujaVm8nVxoCa2uXh4euIg0zGiN7iZNMyO06IlCW7aGyds2TbZHL63Tj0kN\\/SDM5aA3fqNo6tMHtP4zZGNmCIfQ1ZbcIfKbOi8xwobENtXSVvZfMxX9Ho\\/\\/9oADAMAAAERAhEAABAQDRxjeub\\/ALBNXf8AgyDWE6asnYum65zOJKHAEADEBEtXSA26QT\\/sjUVYEusTT7s8Su0guiEICGGGOKSZbTowJz8hhQYgzWLKqeVRWji8xljGNCPDIPLMQVbnpIsoAo+gytT2Irj+ZD77K7EiokMDX9QJJAQSlqdQqjwpWkKLToCjg+ne2EfIx3gDLHr6JHDAQIsgqA9sAiwDSwawoJwR9aiofAksNP2HomBMPNvOigoAUQSAe+ARrAlaQH\\/7DX4zF\\/r6x\\/IxFGBFCmlcQniuH+h2yULyQQgofOEB2femHuxuM9JIOM0tgFQpANM6QsI0A4AgdsPAivAPOhv8\\/wCqghQSgd4RqxIgMegAvOoSaoUMNNBHnS7zq+6TcpOhxQAYpy7OqddANYeASrkFyqZqOK+AggsjK9oOQqhwAJrQTcUF5Fg2OGpLNFE5oHl6DGQpBR9iFzCGCgQbasSDnBjXLbdqbcnoDJKGLsudZrpBX9u0qpiBx9vFQTxGhXjRvX8bBEmOMPuITqKBPDTQofurESgIKqBPeiLQgGvGSyLxDYctJnuEuFmtYfqFoK9QDpLKoEqxGIIJTr+wywJs0WqpYFODpRHwDMFlyAAhwgriDBCBJLiTCCCDAzjowiQKBKpN\\/g4euTAzzKpybRCKYxBAACRQCBDzbagOPZ0CoGWAcNsrgBwZhROvQhyRAAAQAQwDwAFdVMODYASIQA37JQDST\\/\\/EACoRAQACAQQCAAQHAQEAAAAAAAEAESEQMUFRIGEwcYGRQFChsdHh8MHx\\/9oACAECEQE\\/EPEGHwSaVAih\\/I3aV+Su34zOz3T3T2ReEEY8V1dXs3M\\/2Cf7BAeY90PtECzzrgLbyrb4+CsDQktiCzRZSJZdfNowBeiM50UpgjRLYAuU8m49xZo61xoB9kE7m5L0t0tv18J3SC2oQV96DKwbYaO6QabI8ujsypcW5zpeJTND7LoGbtMfIi9CCoWnppS+3wnaYNNz2RVyxniEqI+1HoRTTpsdFdJhCXKil3UW22c6IvCq2xO3BL6wQvaK4isptKPtMR3pWPE8jULjsdN\\/PdByq2iUcR3RCrMCghskYlNRQhzpStl570O+hzLNtIoFsvTtHfQQG9sCDYTOdTLCgCBRR4pZaHbR1XSo+DhlmYcERWw5MWCn4Zh8TgKB06ZAljFSjFVtmGF56lB68hbEHMvQoB3AorVah5y\\/emV7hmjX3mI0UFagm1uWSkpGNlEFzBluPM9rCI2jq28ukyzNXnkgy\\/Bag5ZdStF0qXFttl+Wq0Ny6l3BgxMpoviWgvEN4eRKgNx6xE3nOwLuXOLi8RdezPmgAUau0YKpeIEzoRg1LJcC9Hx5VLreWTgYnmC2iO4d0TtKSkpLubWuIFq+2marIk0pHbMo5gCyLUqijk20tAYqWiUWzDFe4im4g0+Q6IjD\\/wBIC47rX89oKUKrA239RYYWqtb0XU4B6Bva+q+m\\/qIIYM7MLcplOkUbIIyrnr+oSZ9P+TMuIfqRHVLURWm9okZeDqAXPoMHcy2b6v8AMcgS3jZiWJj2nS\\/aLScyuobeYILf7IwQGLUO97TEOmqrSrd5uRiFULA+6+McXE9CgrFZODPf6SpWxmHf02waurLXzlJeL13npFTx\\/iZT6ywvUDzvM0Zi0O41W7KFIpVwTFZxV\\/zcvS31f91EL7nMNLNssJlBt+0aP6fxGyLfaGIGfMrtLgWBUclTMtlsUsvLyjS\\/gZaVEW4xFYsWv1hvktuKjF15A3cwxM2l\\/WP2gRVxE2xlE+R958n7yiqiUcfhzM2ipWqI1cQOBLbibaJxKgQjt+H3aKQFhjEN5VxIqypXjs\\/DjUtYFa3WjeKkqNEXMqEPG\\/\\/EACkRAQACAQMDAwMFAQAAAAAAAAEAESEQMVEgQWFAcbGBkaEwweHw8dH\\/2gAIAQERAT8Q6VIr9EYKZcQWWS5n0dSuq+m4by8616d676DfU9PcNCeOeGeGH3R3XQqDU21Ot2ni+Z4vmPBMFuIjT1jG9JdPPUtStLHoWgIdBpiGCWEIUTYkXSFEw6F2REtZmaLWDEFWKdAC8zsUPDHwzblaVBKKc9ZL0qvzFYxyxi8aYiEVLpb6iCUwKtDSmGgUUTtZUksXRniNESd7Z7sAtQ7krdFw6V9F1BQRBKZ44AogmZcHvPAQ5Q5Zp9w0FFmQd2DcwvzMCioAqA4ACiG0ZZXIWM3xA94ta7yw4TM8aXL0q99VqCk02xPBGd423g3O8AWzs9Blgwg2XCBe2mANiUPjRaCPaCb0wFaJQiAPMXtiJB3TE8zEwqKxbb6QKxo8NLr8aXKXL0GyyUqiXlAFEwDmBFY02rd0zOi0dWCPOmEjTDG3AoomYip8yh9QZzHaVoja7xXEStuoXFFsk4CeyS\\/ERW6XhaLi3aC0EQUEplpaEk1lHjCR2O08Ea5ggqVo7Q2X14ZUroFxdiVcvMdoGi1QAKJUV13ytK1Fy0vCKlIhlYiU9TLmGXreJVy81B3ga52I44IlbdVnRCVhqdY79dSmWltBc2jyob8edrs7QqbOHvB2gfc0wXaoAsGoGcS4hkGCWFgQoQFwTwTxTwTwQC0arUl4IlnUmhBP9wy46K3+IrXapZfzM9W8pdXiru5R\\/KZg7sSLCp5ZTP3\\/AGiAp2jw6Pbs+3D+IW13M\\/vMM7x+wQnPKExuaywgGWs5jUMV9yX5n++JnaHij\\/YTWUN\\/+w7IXbzlxgDB94M9aScf5CdLez44inKqn5cTB5NrhxuK\\/Nx7um1TdBSyohO9\\/WK9tTxW82fX+2lL5Qg9\\/wCsxpttKkcyiG3EulYmc8QKbEwI2pkX3lgbRrW5xivf6y6oBX1d\\/tUqoSlKfMFx8wiw+Y24qZHWg3lQUbyp4xCxH0nm\\/b+Z5\\/2\\/mZKX6T3578ZDYaUvCJZa4a2CGhFah+JRplRzek5YhWMLoQdiKs\\/Nr5hDCEESe7Ku8TjLLnf060XLlWZRloJGaoy5cGWqLpuPTqKipSy4GoMshmUlQGGddr1AoLiOoBHhEgEqBcA2IJEj0n\\/\\/xAAoEAEAAgEDAgYDAQEBAAAAAAABABEhMUFRYXEQgZGhscEg0fDh8TD\\/2gAIAQAAAT8Q8QXQuD7V3gN24aQS5SWuhKd2Ud4EoL0JqFcOBg7stu1yz1n1\\/eZP4r65nHtX1+p\\/f3DP5v74nPvf3+4lvb\\/esU6Y8ROuO8C29Z\\/f3M\\/uf+zUrW\\/7+InBTtUNoJqaj+6y4rK86esCmF1biArRFKhSbQvpiEReE3LB58dUGWMid5WUXW4I04HQfcC9R9Y3082UVMmtuJpnWUmC73Lyig7RG9npNWmNpSGNgteKbk0sSyAx11u0ajRG8UbLOhLLU1quYkW5rXp4CxEtak1BklIljw1ZlDDVlDUB6MESxsYNoMFu+kD2vvMBiXOiZ7SuVnYmZt1d4ery22GABQAdvmd\\/f7ntXt+yfxX1Pv3\\/AEz+b+4oatd\\/uPE9Yp38BOh5w9LXpADQr+9yfx\\/bzj2r6\\/U\\/v7ifz\\/bTn3v7\\/c\\/uf+xOYA0muly9UQ86M4FKxiGcEhXVlcBFpgyqqM176\\/qCQNVNCU2SdCXunWKeaOmIg3avT9sdgDrqxU2qzJT5pKdLd5qFBFKobZviWO9wRocoAjTL0CFlrFt+IO0paogGpZhqvQhGdLdzM7qy00z0ja8tTiVTTHO0rwrtZgkbrE7XONweyus0gKBZO4ZcpLdiZ3ZRMyvARQE2luGffO\\/frPrFu3ee1e37J08yvqemfR\\/TEnX77xTpjwIJ1x3gXlzt3n6\\/u5OPavqfxX9if39wzn3v7\\/c\\/uf8AsrF8H9UoPK\\/KO\\/n8THtPxKxKnylW16TSK1UdoAYFahBVAKG8T67r2JVoX2jsY7TfOrKNatmekQ1RTvKrVrvOpL2MrmVKqONmvXeLYujxqKN77S+wO83VsOTANXG3eGGatekCjxqS\\/CgfUczVQtppjLtNn9EfsFeWXLgWIKk0fZlFwd\\/BFNlm5K8528KhBFBqhKtLYraiarVfDk9f3Pr2\\/ZFNWO31HgRWp8BaC5yt8VvABgrbP3PrXp35n8V9cz+K+p8f3ozn3v7\\/AHK7\\/f8ApA02\\/tpgMG1+dx+EfZPs+JfBrT8RUhqvEbFpRsRy1CsuYo9g\\/wB\\/u8GyqzS8x1F0bwzW0dIgEG3ZmVxBmt5bxL7O0rwu8zQo9b8VVZtBO0sb32ltgJZqsN0AJfiW5eTzG84HEo5uXKVm3RxvAAGhEOxL88Z7ygvl0ZUTjzOZ56BxBrWniB0zNlQ5ZUIIsavpOj1R6TtKRm0HY2hzBsGqvPghKcX6QRyeAmuA16QBqW\\/2SemfR7cM\\/m\\/ueuPU78k\\/ivqffv24Z\\/N\\/cp\\/f+8yq9zG0NSsZPiGh2PmbeX3H7fM+yavN9R1mrX6jnrkgUObu462M2bHX9RV1aw2wxmXlDYzoPWWtWVMakSi7O1+OjcRdpZxMm6CWOXtMrdVwSrhCVmFFe8MU1H2jZqYdGXAWLqeQg4E118ACsGdICJgHQiigxWcaeCOp5nMfzscSwGu5FDVmhZjIEWkWbquzMwJZvCrCXV1OC2L2ojybldpeW+JGgEWzStHEz7Xj2Ji0f3M9SvU\\/ZK2rrR8k9M+j+mdeMW7d5649u0++N+0pfPnfvCsOumvDHUdH5jr5viGvd8IaHY+Zt5fcdHs\\/Mft8xfL5IIZq38zFs5tmA1i8+5jZrUDOtQjiLe8VNxGVtZq1ilT4MGmtoVeWus3lc47xS8ZlcS0pJebbaRrQL04eFwSjDLA4cEofIxrYx0miXef1mXV8jBNNIZbnzN07U4hWC8VengoasoWV4Zrn2Tb6RCcvOsze\\/nMxDcbkM7XuJGVP5EmmPeIuBoeDx6M9RiFbAbs4s6FPlb5n\\/DwE2eij63DEm0jejC2o6th30jkY0sp5llecePWBjuJHR7N+U+j4ho7HzHeN\\/wCbT5PhDQ7HzNvL7i4fP5gF31+ZrB1+YXz\\/ALhlBhYPuYPFibt1XMut0sxWOqxxXl+I8RXh1IGq10eYiM2JYm\\/gmUdpURydcnLwTopKnOHWwwaoGyO14YO8o\\/SPgX2flpACCJhHWaOyNX0zBqPKISh3WVe0E9IDXMANCXLlxyVAS6U16xCYLYYEbFm0B9WXtL0\\/1HVJV9D3mkGJUo13u8nrGpujA1vHcpGF0NkYiXl38E3NZc6Qcn58AOsu0FDQ8VkdYzggBvyfH\\/gCWRYN900YFANbcjno+Jq9nxPofMd43\\/m3gDby+ZsdvuVD\\/bxV\\/cxpl8jzgGswsHQcsVoLuXd6xCo2Vcxn1dY4lb7c1MacESJuShsUY2d3vLW9doUlju1PI197\\/wDAavZlZfqJzHRdVxAN4TedC4MyqzEo0N9fEuHWO6vtOFnMurC42j0Y25ahfyniWpFrIJg5CmzVntLWZcPXX9sZcOpxDstPEHo3OguZRbbWX8rNuBqy00B+C0TC2\\/RBn3XxBWguX6ehNCXc\\/B6ljh1NzzIwlhU+n3HV7xv5\\/XgKAeXzMPl9xv8AnWYNvkc5mnBeU0HLETLlFd2GHeYCMtdHaYDoV5zGwHDllyrvBOswuvfwUlZo9IOCIXYLmqyF3W\\/F6gF2nUfRmiB\\/Bttup+GCysSyNzQimXAWOqt2hr3vLr2Mpoj3yZV6t+FPuM3dX8V41qrM4QmlE3a4IDREN0j0hph3c\\/mlB5sAbZqxfwvrltwBcdG0Hdb8QMsdYDTUcR0BPKYawqGhbQ\\/gz14B6wAfahV5LWjSZZdLQD2B+YtjL3+5HMdm\\/cCc9xIVTdUezEDpan0afmFF7oHPY1IFLrj84WFpDJLxeApmOv7u0EOXA28zSaz9snJuJe\\/QarQIG8XWUkADpDabomgOeB8xaf0WHrc\\/u\\/qDIxsZ6TKEF1LZ9r8VY8Fyn25mFFexHNWxUNMoq\\/G1U1MksJDgGasA9431hPgE072rfLNVLofqiFzBTt63wY2Qdj\\/t7QcOWLY+NZtp9jA+PHlWonGzvNit\\/BX4vUesZ5icRb8alby1ocShmvWCvhfELalEjKeJJXzPo\\/A\\/gqvQfeUQ2Ouho9g\\/N8LS7YPCbkwr16B3PWECIIyaop9Hip2ZKmi8jwcQG\\/x1m4mi2NgOx4ko3cQ\\/6FS7YPl8W0dQJUqlhw1LlGVmO2PFU+0xNl6Xmsf+FCNercdzrFjELiWHxhERLVtfBaTwSiRnKPVkCqmjcbSrWR3VK8UBl8UoCNboz26xeJaVK8prtLUxe0pzbvLwa4dBX86eLh7iBSU1CHha0UB1Zkso2V1Z0Nu74qLqqmrgEddo8borZqxoMjpDhqvpMVwQ29FRyyKR1HxLctihLnVZ9E+\\/HMGBBt+S\\/DV7Bh12eTXu9PEN7VhuKsykX3TV\\/fi55dNoekkwmwhfeBF5Gq8Buwk1OxNDxJexekffbUBtZMJrgMx7cbwfafJBrs8oUrg1H4UcQVC4VOL3t9h8RD6gTDtYQEEsZ3LiLFiKGrNEzOMHMLts9o6wFUZWAnDoPvtEq5u9XmVRLCUcEvAZdCWq3qylL0vMG4MU5cvk8QTG1Tox1FCrK3DoXdGh9Khy1wPbNfO\\/wTDqFxDhii+seKSrAQwnjpAhoFQzMAYI+7FiNoD2Ib8OsowW+t+LFRyY62xgzOQ0DZ9+Oe9aRm6BKojS5u6fvyiFXFaq6vi2AmSyLQAHpEddM7Ljxc8e46ykKKcv9R0dNJe7XtOLaqwdjbxBkwS1UOh4lvBVVHpCs5IDpV0gtl9QT0zrmJ1FYBb9o6teC0ngik4shXmlH2PvxYMvVFY4YuLQW+kChLGLNrvUPjZAF47sGvpy4Ii0vBTJlZrWOR\\/UvLCNr6I0lri1vbmV1izBHWWna4lsGu5Xfywx7V\\/4ArQKweql4hYHDBCg4bGVwBliRtjbo8h+46sGwU8zPvLPMa2fL8QVA1YSgLkKHWF\\/Dt49KF95UXucy+VbqcfwHY8X6JeYaQazNsgg9XB8\\/wDilTlaDWI\\/BsgKxRLTAMZPNx5xVNof8KKN0dSl6EujOVf4pR7BKoimsomgWdat918cs1iXHoFoKLgvCGa8BXTPp+4oX0wywmsp1t0GCA0Q6RgjQto9oy3A8UaDglR2YoaRBwahzLVrLuqLvEWjybSrWhtmWD3T8DQC9if8aD6ehE6yOkeMR2nSZ0hnDnUBJFOV5ehGATquBwGx4s0rylZqGjEdIBC058UM3inhS5gtYZvqVHR1SPho3FoO9Dmr\\/Dz6eKGNWCGW0slUZQgr82vUP9T8M9e9P4E4BdlGa74VCQ2uCGmIzmChVxpHbkTH7Dr8RGpG1W18FBa0QZR7Ka5O5EQSiwd\\/HHVg2y+YVsckVdd96vjeO2uF9OeBbBi+pLPpC\\/uB0leh\\/pzFbC+XL+BYNGhz1iiavASnpDryxzEasqBbAb15bHbwpxoAnmPv4nF3VLBlLzOh9JrwO0ovZSpExxHcg281MliKrYJdSqGwlY7tvn401AyN4tTWauFxHmho4FfPs8aTVgkLQYeIG\\/YTB1CTstnz45PNXQPFrbllDwBtKgorM\\/db+K8bf7oe0LGldz2CUUx6E+h0BoA6CbQoqghGCN3OxF1JI7r4LRXaAbC+DaAy5OkxLuxD4USc6vz45yMBiGU1S1u4+\\/Gyg1cEB0w06JQrpYtgXJzK5t+TmC3eWvZKZnLTTvGXTiOaUNWUkFc\\/7K3\\/AL1lbe3+S8GrHCfoPFKm8wTzSB9nMxwEpeDG4QLtlU58o5Y3m7dNJaiqyHY4iKtVt8bohwXm4fqPMBRN9gZZcg4uUtVeLvTp43WaFmYfC5xEVlQEfMz7VXil9R\\/E+7VK1QawLaUJW8zFYsXQwfHjfKsMwg2PSOF0eZVuMdQyzptD1dtbguIyVdnillSxGsZqIB0XmVVBmGtvq7QhxZjQt0PDaUgq12y4U2PYftPHDl02QAWDQ\\/8AFq6vqRwznSGjoDLWNNjiWtA9XnACgFNOD9T+\\/mVmt\\/7aViv70lUWsybYPjxtksGalgEAYMf3oymle31KJz\\/e0369\\/uUMVAbLSEhip3IXh8zx63mK9pYnbMfWNNRClfN\\/AUTIo6xYFbB45mLK3fd15ggWGvXDf3+I9FS8wALq0rJjjwAq6J3rEVVXV18TVWtwscS\\/IhgVRORmiaxE02yTMb6JDuvAHI3Xt+DtoutlvSPFnVNPlL5dfHOhuqUVkNdB5aQjbmpYS\\/QeJ3BQ2x6GQ0f\\/ABHQ+UDJUOU2joaQjoLQ5MMHzcpLaeH9zfr6P+zp9fU26ep\\/kd3p\\/wBlxvdNmeozrvSKUXPSYaR0smnT2\\/7OnwfU26ev\\/J197+58vl\\/jK9P7aEc9g9YNSFc19TiLgPUHi1TvlFjkwFXbEamWogz\\/AI0GTdk0S5o1ehD4Al1IlGWjQ4lK5znix\\/R+AcXbKlCkvwb8AULrSNe0QuK1Gf8ASimA4hW0EahvKhWmhKCxk7xF40jGX3fxib\\/9og5qJHuK2ho+KgtQOsdvDgxFkBWFQiqkCdZ0vrGItyiZUYNIFjReCgK9p0XrETW+hmYQfZfEFYhs3qKh5\\/8ACx5XFG7WaWrMWnTgE1cf3vMKOOHTWIw46OSdfl+5djzMrMi3QekAtK9PWE6A4w\\/7OnrR9Tbp6n+Tr739zfr6P+wP+f5A6iYPKYAWZT5ekqRolp3\\/AMmIBdI3SU3t3mgNM016ET0NJRBlo1g6QAOOlnocwKC2T1f1NGlbAmCNypVuxWAZNpnCHY0Favx5+KANWUHMFkooKSWMOUU6dosIljzH4LekB1MLvJ0iAEA2gKhe8p7vSc5XnOtIk\\/xA4BZ6JoyXYjcoe6OnTcR7o9rZSKNcwgsm9S7cGFGsQlYFukcEx60+kTETQqagMmKKuZtgXFjFdIOsqHcQuofYAQIlUrXpMCqo2\\/8ACmTZMXMz6tUgCU\\/lsxTWeCFMlnJNb85gC1ekHog2esHv5\\/TN979H\\/Z09aPqbdPU\\/ydfe\\/ub9fR\\/2BjvKF77e0oAW6ny9Jlqt3q8\\/5MukE3doXJCZrXoInYAqGhNDuTJOUzMdlY8WU9HuhqQ630VKKUtp08AA2HaAay2VGzt6H33fG80hzCOAFNQsVaorVgIAaRW9GZlmuIHZQB0qEA1PaV0hwPaUma9J2CKvWBUmlLi0tWNFxwuBk6wTwCGh0ijAGmkXyIGqdQhehLhBzgAlY9Y6JqlECxWpY1KQDemTCmAFYqIKscwcOesKt57EqYDRMJf5rYK9GBVWIK7yh2nYNKm8FksHTIjBQ4d\\/HkxZWeCBayNk8EWyaQtBXKaekETFV6n+R6+Vv3HXr6PrvN+vTD6TbEQeuxKAG6Pl6RdzNi5f5N\\/7rNa6Y+Ihd+43f5mCzKYDYziZvp94OHeBhLZQ1YiWqZ1Hbyxu5bVdXvGZU9GI1h2QCdB7TC2gbj+F8vEx1VVEVSHqJBa5gCXFjGkcjDVbroyjkL7yzeUOrOhflAb1qNcjcs6j6Skbo2akBGjCmWDQq6iaGFNYg0lGZL1ld9YBEDSekEvTDGzZ5wxyy9y4d7GKPNFJPSTtr8xKEXXISzbLilwxLU4wwBytG80HYT+94gveoCyJgOO+eT+4nSPA\\/uMOLE1ImF2zBbEjf1OFrWSCWErpp6QygcxoUcZ9JnAI0NzFWpu9Xn\\/IZXT940CrRNSUd8vV6RUy2irgYHB+5oK6U5iIbOWyq7zVESne9uk3HFRYdDbtDItJ1vab9vAUFhE5vq8vgCqC2ZpxizWDQYMS4wxczMy9meUG5Qwbb3BLzU81dWCHHlBHd2i3qQq8LsmZdr3gWfKUJpcxxk7THLjeWIRVhW5ntBbD2ShziYOYLWk7Qb1uusLe3eWXrQecSUtrE4POUHU+UqG9cJ+epMqcRkWbmQlYehOnrBktjrskf3MQ9UnPnFIFKdWSIUGOQ8n9wR6PDHLiIntPiY1sXnMJbiSul0AgIL4+oAiqgPmZUTyXbq\\/qKmVPLLPUo95fZFGn9RbIU6roR4ATmlf20bK7sxmKGrEJTAR0I0AlUN0fFCrZ1ZvstOXiHyLV2CFXRsvDL8ErKDvA6Fw0AnoJYm5BvQwUKtrWiABBbrBN4+Vp3xEtVNzd9o01R5CIECUNXzDGZz2dmFgOb3iLNbg6kZyHoSs6yhYoymqV5TLVoIQlacMDb3iHaU1lIf5ERVaOksxGobE3BviWTc6Sh5MP5GkOVrvNjZNxlOs7gMBirux6yvMrE4YZ8\\/1NB4Rh+otBcGdThnld5XYuKXZ6TuGFS2gfeMsf7WWKF806d\\/WPmV1d4LDyvzN4hqzO8hU1j6IuKffvGLx56zfFOUDdCK6s2SYJfga5aGUlnXFuf9YQ1lgaPaIXekd1faGJ6EylPbM02zy5i1XbwZioUoXTvM1fxLI4o6se0GqTCWZCtq1mSNET1jSAxyEC7DVjPSZCmhMXu9KmWRBWC\\/WCam\\/OWjFxV5IKwqUYcyno8qjZm+0p3lmynnEObJVqtdopv94rW56zXA6CeYivqjwLh2PyqJSmi5jkvhmjMsw2mLxM003MhAY3HbezHKlW+8KzACWLi6Ax0T+InB7EJoE1RGocDfJKGwLRQBv0m6SgBOEL7wPyNxdk4GashsbZlrrN2pNpSGxkksVOghWi+aZN4ocdg8DBufBZ5QUo+vgpTnHEphe9uABj1W94ByWBFS1vUXRDrMs7zHTGVkE10I+iqFB8TUIsOF1tBwBAAW+UKIcrMCBGgeXMcqx4PuJ5ptR7KZzkIGx0roxZBdH+pmrdFQvoq2AFbl\\/wRUBWqZL3ltZB3hg0JOKKNVhd2nMS2ebEbk9iqLWhg2YI3ILJsRKFQY4tAcF4YT2AnTONSZCrwYPuUiorJhz6wmQDiik4cxwKQ40ON4CsTSAU15xv4FlAO2FlEw5b3EDluuIADf8AIsLnUgypy1IaxSrq0K4Us3hq6xzMegspGKXcJbJreqgMXtrK8R0vbpbtKwioBgHS48ERMtmiW6QrroQmnVjgWv1i62xHN7R54QnbPhBbXbODafz31P576n899T+e+p\\/PfUoWipD5P5NvOM5EZqqAsyBuiVIU2Osc0gDldTcgQBtFjA8ik6vH1Ky3Y2wOgPWo2xJG66y+LYvBK8EKuahQ+kE8mXrFl+voesUUnUw8DYgK0CxEt9KPYFMHWpaNDWbtCGyJ7cnrjy8LjQil8f8AYleoWW6zJlqtrmSuU9\\/CDO6NCagWrBQt3nrhg9YkeeC3nbEerReg5Hfw+A2koe6kYqsSlZlfwCA0KT7xabajGCFnzn4Pjeoa2VKj2ITKp8+J1JbsQzpepB8wue2fjwoGAGUyN\\/BFmEsDYXt3iJtE0Gy795ZXthjaEvuzbz2DpAcI1XAVjgoLaCrLVKYAzM61mKC83XnACagmFtV40zxHpMQEM0uzF8w3BKt8VUOUpRYmqR41bDDQbW6GGtaw4grYUdaCjEQyuwhYg2lFG8s+mEe0C8qtButata4g+3gBoaSzEoSAt57RBZ94oKHc\\/wBWMOxYNN3tcJov7HU6wPBpOE0+o47apODHuv0mrPRZcqpsNdBo9iYJjVbI+h4WEB2i89oh0yYQjGkuwS64JaavB+\\/KIkVNq7sDijRM00AHs4lpsOs8bQ5Na51xca2aWPOQvxXBbO7wXfXScBwKib+AMQpdWdr\\/AGB9bBwmseCNOZhQsA3MoSgPoL5ZMOekQq0RoC0aG9nrEN6x3gXVuMaRGp9xORFcYLHLHEC0J2lWOORrzCKAVQR4OdpURJ0EcalW1uSjBpLvP4U4lrBQkWsUTclDyPgfuNiQ7QBpSvDNCFPXwoY5gQsYRycrdxxe8QN6ByRNfKHoSKhghiIKdFSK5EFFaLV\\/oI6ennNa+x\\/tz+1zH9nlCa1CZ+W3EFQ2tVczrWvSp\\/x6tfLWdYaLwqrNXV18XMROPWFSa6LdSipXUOUgMAGeFa3EaHloIZeyLyjwX3eUqvNX2I4BSjVXeEO7oxMCoTs9TL9VvOHXSHkTVWteaY9C2k7LKevzHu3HHAwe0My7EZoWR7Fx9RCsMAqTSFkV01t3hTy4DU6+Fnk51gfB9oYZAP8AZkyDFzNPI+WMYtVTXcMeyfsIKCajENzhpmWFFneEKR01yXM6BYoL+7Q+cscsohg2tAZ0luShMN3FqoVbEWPjmFyqLLQdFEoRYyEFxyq7ECo31E2yXWDYKZVWWqp7F3sd+0ALT72\\/vDu7TKjhqZxnEyckrIFkLHN6VrNgg1BaAR1cBXE1uupZYuBVWfaMSw7oFHAtTzhR1VSZLJFXuNZrgatCy7GvEMjktKvaVuLwsvqVMJVVt+BIJiXLly\\/aDclXls4nz5j2YzU1IxHXTIQyc6QevTDHdnMzr2g45nXygUcHSBxeQ0lhIs3EGry9DsoaLXETJpY2FKFo5c3HAVJVLFFnFEW5y4C+u8xETjLGlU3rAKM6\\/wBgqGOEgoDRjoI0l1QIEpLIIeaDXYigjDFdNB1oNLfNzMFMlprDSG5KLCPVDKL3otXdenhYsap4CJdkyhAcZ13jK6pQij+cw\\/BF4pVbonhlHzhyyr8lejIUOdfC3RoxNfCalsm0TgV3qGRonPt4Bh6IvoebL1BP1W5TlZZZGqdVgRw3r5eDl5UqAhM3kl6nUjoleqwWa5heBtCzSyTXfeU4QSgcjOHrECNcFTq2pd8xB8WjWuuVt21mO2HBdGlerAQAmqlvQ53l+geQrc2\\/Ebdx8UOqVw1aLgNaHQwxzjozLFKvN5bazQUi2C94alUS0khVgo0C06aMsgRgsLtdrD0MZggfuaj20aDSZ7QFoRGHn8bly5czGgbfKOsmDVzW0Py6glKsBWnnxFYqNIyQ5VrcSul3mOQgYoGhVs3em0CUm1QBCkaSZ2Mw\\/bFXQKFHeoy4oLvaLuA\\/mL+XaF5J4IDY7Ywz+A+5\\/Afc\\/gPufwH3P4D7lowVJa6P5CHaUEF00B40A1SVaao6f6DwEq1QGCkFh4VXjoL814EEoC1gmzzFlOpLGB0F7wsNYF2u3EAgqxg2qT6ND1z5eHXZARMkHZHA7JCWeR8TIQY0gRHfwdzsiyhsKRgpico9zSWnQ0qPSaTbTKHoeBMpanEGh5Q6vxOIK3W15zUH1UizRF5GVezmIbbs\\/C\\/HTVqUNIplQTWVtpM+Ux04LElrHIXohWEeG8dwELFRMbCo2Da4g4lHU+UoYhUbXvzAUzF2CdL1n6mC8Pc\\/UqrE7n6nT9Z+p0\\/WfqUA2xZaH1KdfJD9RrwDun6mCAuRb7Q4PUfqCbeo\\/Uw7TyQd9DxNi8iglyQMl1KOoHFwpbWJNcHtM1MtWBdX30jaoauJTLSkYkqLoo9JXhMIDBA7GaMElpFXWCqDaWpvLMbbV3JqlnlCXNUcXMfVYggqwgYpKUU3V3jpE3V6TrvSC6LHIzvic4ec\\/wCAnVPKDJKkAG6x7AZoWWViB0LhNs\\/6b9x\\/3n7i37H7i2vov7hmwqQ\\/uYS2oSxdUV0LY1Llm4+PtKHWWdMeAXLRy6QJbYAWtQWDt4WAWYxWRz3YSiEOlq\\/ULGh6RL3q9al9C3NEtbW4NimCIucl5gLZ6MoQKDYmgVBoSvUHyjgeolauxEci9tIHQmFg0ty\\/UyABoFaEumh6SnB6QjYgsLTlC0IifEsOllTC0oLMsaSnRiu2M9ko48HMRwekRsErrVS74Yg5HWrhurtBu09QSjU\\/VH\\/ImNC\\/KAl8zvNhp51s4g7GWt\\/kVB5NvdikdXXEDsPSUOk8pb+qIbPSCDRDJIW2ek6D0jwPSPA9I8D0nQPSM0lOGhBdUPGr1hmbJybuI+hVp45YNhyh2Vic9ZgPER0G6FrUEKsNB3fojQ6UIY7EV72xLVRLOB6QyXHeZV0hpCrkDSFaMGk4Y4MQwYKnduCmpcfvyjQi4Dq7sAANZOh0n0lCuVwYLwdMWpomXaLdx3oRaWsS1pBgPBQ5IgiN4uPDIpiDZ7S810KsamF80a9oqLXGqsdRK2CUDKjbK6GhEoEu030uFCrQNGJRg1ssi9RCqiEtoaieViXLjnCWWvhFx6S7zL8X8NAIljrH4TW2cToZ7+ADxciQDYhZDPGrRBNWgyG3aJx1Rt0mNbKXlANVrszY9QgBgAgty6RMrggW0CpSFCHELeWLblgtWhu8QTCigNYPHBY9uhN7dfxGEYHWELYGkBnHAMLr\\/gufc9GPaX4DN4LvAlhXtKDZZDdlC8Crs0lXCSOQN4lWUdGkNwCXrN4ZqhAlKpX98y6y92IUCvKAB2wQuAdGXLlU49INTSoqw01DOFVtL\\/H5vEqnyeIVowtRYgaJfhcuXBpeYlh21jwLKWzIBOvRd\\/0QLOApm7vneZACw0z5RKLEesAULlqx6XWC6lDW4IC03YtgGNo0TFt8OGFp6BDwDyU4JatuV\\/KsXNLQm2YwJjmaNuHiSuiekqJWcMuXMCNuCCUvQICIsLGZcZ5RqhyaMAvHaDUzB4lXpmJnTSZd1lM0td6zLNTWqlmmRu6Sae20yNcfT\\/Y5Ed\\/qVNXvU0D0jgVq40Vbe0tJ\\/mAAmjL\\/AA0u\\/i6QEd0C21CX4odYEeDw1GjA4lWNKkbEFZflBITTc1PE73kS2auQXpC+xNZX3xZ8ERPQHQ6wzWBQ4cvViqqtrq\\/kN3SK9ni1g1Lt8CqHZ+F5W5isnTSak0cEYwxztM+9x0l6TkqJcFA4g18p6QStHZhHgQvv2hc6LR1mm6eqASxrvKw4vN8ygHd0iaqmXFmWWXcyqmkjRSiDOTOjHw6uk18JQPSCt8\\/xhlLm857x+BQWes0GJd+OyLRbiC9wcEwqbLsO8ztAaBoRbgROiKurLA5hgoPA39U8QYZxpGrymLhcQGKKl3EDSx8FtomINWEzNhcwIyxxGG1dAYioEMJ2OsSitrq\\/kZZqrYjgPEeBrHRFDxDwJmh0CnXvLiKyraGCgoPC4S4ryiUAsSlNI11y5D3l1Q6\\/eajxiYFNzMVUHRgDVRlLV4HnLls0RwL3mEmgzE95piU2YjYvk0hEBnEF9VPwHsKlTbV8PSWVlryTQowcHj\\/\\/2Q==\\" data-filename=\\"14194298_1070473683006358_1783009617_n.jpg\\" style=\\"margin: 10px; width: 600px;\\"><\\/p><p><\\/p><p>Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.<\\/p><p><br><\\/p><p>Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.Repudiandae laborum impedit, fuga. Labore autem aut libero quo omnis deserunt pariatur? Ipsam iste eligendi est, nulla consequatur voluptas voluptas suscipit ut omnis et vitae ad omnis quia consequatur, quod culpa, aute recusandae. Nesciunt, pariatur? Sapiente anim quis nostrud qui labore ut asperiores elit, nesciunt, perferendis distinctio. Doloremque iure dolor optio, vero et enim dolorem autem iste ullam et labore in aliqua. Laboriosam, dolorum voluptatem irure molestiae aliquam.<br><\\/p><p><\\/p>","widget":""}]', NULL, NULL);
INSERT INTO `page` (`page_id`, `status`, `page_name`, `parmalink`, `content`, `parts`, `tag`, `fixed`) VALUES
(12, 'ok', 'Documentation', 'Documentation', NULL, '[{"size":"3","type":"widget","content":"<p><br><\\/p>","widget":"product_categories"},{"size":"9","type":"content","content":"<h3><span style=\\"background-color: transparent; color: rgb(0, 0, 0); font-family: Roboto; font-size: 14.6667px; font-weight: 700; text-decoration: underline; white-space: pre-wrap;\\">Structure &amp; Information of Important Common Elements<\\/span><\\/h3><ol style=\\"margin-top:0pt;margin-bottom:0pt;\\"><li dir=\\"ltr\\" style=\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\"><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Header<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"> <\\/span><\\/p><\\/li><\\/ol><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-indent: 36pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">We can divide the header into three major parts.<\\/span><\\/p><ul style=\\"margin-top:0pt;margin-bottom:0pt;\\"><li dir=\\"ltr\\" style=\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\"><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Top Header:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"> Top header contains the options for \\u201cLanguage Change\\u201d, \\u201cCurrency Change \\u201d, \\u201cFAQ\\u201d, \\u201cCustomer Login\\u201d, \\u201cCustomer Registration\\u201d &amp; \\u201cVendor Registration\\u201d.<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"><br class=\\"kix-line-break\\"><br class=\\"kix-line-break\\"><\\/span><\\/p><\\/li><li dir=\\"ltr\\" style=\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\"><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Middle Header:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"> Middle header contains admin uploaded &amp; selected \\u201chome page header logo\\u201d, \\u201csearch bar(product &amp; vendor based search)\\u201d, \\u201ccompare button (from where user can moved the all compared product list page)\\u201d &amp; \\u201ccart button(from where customer moved to checkout page.)\\u201d. &nbsp;<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"><br class=\\"kix-line-break\\"><br class=\\"kix-line-break\\"><\\/span><\\/p><\\/li><li dir=\\"ltr\\" style=\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\"><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Bottom Header:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"> Bottom Header contains the link for \\u201cHome page\\u201d, \\u201cAll categories(with all sub categories in dropdown)\\u201d, \\u201cFeatured product\\u201d, \\u201cToday\\u2019s deal\\u201d, \\u201cAll brands\\u201d, \\u201cAll vendors\\u201d, \\u201cStore locator\\u201d, \\u201ccontact\\u201d &amp; \\u201cMore(Admin created custom responsive page will be shown on dropdown)\\u201d. <\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"><br class=\\"kix-line-break\\"><br class=\\"kix-line-break\\"><\\/span><\\/p><\\/li><\\/ul><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">Technical Directory:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"> If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">Your project\\/application\\/views\\/front\\/header\\/header1.php<\\/span><\\/p><p><b style=\\"font-weight:normal;\\"><br><\\/b><\\/p><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">Logo upload directory<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"> :<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"> admin &gt; frontend settings &gt; Display settings &gt; logo &gt; upload logo &gt; change home page item &gt; top slider<\\/span><\\/p><p><b style=\\"font-weight:normal;\\"><br><\\/b><\\/p><ol style=\\"margin-top:0pt;margin-bottom:0pt;\\" start=\\"2\\"><li dir=\\"ltr\\" style=\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\"><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Product Box<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"> <\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"><br class=\\"kix-line-break\\"><\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">We designed three different types of \\u201cproduct box\\u201d for the frontend design to the aspection of making anyone\\u2019s site eye catching and to make difference which will reduce the necessity of custom design. One\\u2019s don\\u2019t need to have any coding knowledge for changing the design and structure. All three designed product box contain the same informations and data for better understand. Please follow the step by step instructions : &nbsp;<\\/span><\\/p><\\/li><\\/ol><ul style=\\"margin-top:0pt;margin-bottom:0pt;\\"><li dir=\\"ltr\\" style=\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\"><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Product Image:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"> This part for product image.After hovering the image \\u201cquick view\\u201d button will appear(where customer can view the short description of the &nbsp;product). <\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"><br class=\\"kix-line-break\\"><br class=\\"kix-line-break\\"><\\/span><\\/p><\\/li><\\/ul><ul style=\\"margin-top:0pt;margin-bottom:0pt;\\"><li dir=\\"ltr\\" style=\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\"><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Product Title:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"> Admin \\/ vendor uploaded product title has been shown is here. Click on product title ones can visit the product detail page.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\"font-weight:normal;\\"><br><\\/b><\\/p><ul style=\\"margin-top:0pt;margin-bottom:0pt;\\"><li dir=\\"ltr\\" style=\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\"><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Product Price:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"> Admin \\/ vendor fixed product sale price will be shown in here &nbsp;(discounted amount should be deducted &amp; viewed in a smart graphics).<\\/span><\\/p><\\/li><\\/ul><p><b style=\\"font-weight:normal;\\"><br><\\/b><\\/p><ul style=\\"margin-top:0pt;margin-bottom:0pt;\\"><li dir=\\"ltr\\" style=\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\"><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Add to Cart:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"> While customers \\/ users take a approach to purchase the chosen product they should click on \\u201cadd to cart\\u201d button for adding in the cart list.Cart list is available in the header(right top part) from where anyone can be moved to check out page with login. <\\/span><\\/p><\\/li><\\/ul><p><b style=\\"font-weight:normal;\\"><br><\\/b><\\/p><ul style=\\"margin-top:0pt;margin-bottom:0pt;\\"><li dir=\\"ltr\\" style=\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\"><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Product Compare:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\"> <\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">For the same category wise product user can add the products in compare list by clicking on \\u201ccompare button\\u201d. Compared products showed in the top right part of the header.From here anyone can visit the compare page.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\"font-weight:normal;\\"><br><\\/b><\\/p><ul style=\\"margin-top:0pt;margin-bottom:0pt;\\"><li dir=\\"ltr\\" style=\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\"><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Product Wish:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\"> <\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">Any user can wish their products while they are logged in.Wished product log has been listed into the user profile.The wishlist button is available in the top header(right) part from where user can look upon his\\/her wished product list.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\"font-weight:normal;\\"><br><\\/b><\\/p><ul style=\\"margin-top:0pt;margin-bottom:0pt;\\"><li dir=\\"ltr\\" style=\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\"><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Vendor Name:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\"> <\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">Vendor &nbsp;name will be shown in here.By clicking on the name ones can visit the vendor\\u2019s public profile.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\"font-weight:normal;\\"><br><\\/b><\\/p><ul style=\\"margin-top:0pt;margin-bottom:0pt;\\"><li dir=\\"ltr\\" style=\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\"><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Out of Stock:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\"> <\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">If any product crossed the stock limit the product will be unavailable and the \\u201cout of stock\\u201d sticker viewed on the product box.<\\/span><\\/p><\\/li><\\/ul><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"> <\\/span><\\/p><ul style=\\"margin-top:0pt;margin-bottom:0pt;\\"><li dir=\\"ltr\\" style=\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\"><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Product Discount:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\"> <\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">&nbsp;Any discounted product will have the \\u201cDiscount sticker\\u201d with the limitation of discounted amount or discounted percentage.<\\/span><\\/p><\\/li><\\/ul><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">Admin directory :<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"> admin &gt; frontend settings &gt; Display settings &gt; home page &gt; select home page &gt; change home page item &gt; featured product\\/category wise product &gt; choose product box style.<\\/span><\\/p><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Technical Directory:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\"> <\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left: 36pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#ff0000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">product box<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">.<\\/span><\\/p><p><b style=\\"font-weight:normal;\\"><br><br><br><\\/b><\\/p><ol style=\\"margin-top:0pt;margin-bottom:0pt;\\" start=\\"3\\"><li dir=\\"ltr\\" style=\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\"><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Sidebar section : <\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">Sidebar section contain the most advance search options like as category, sub category, brand and price range. Bottom of this section holds the special products such as popular, latest &amp; today\\u2019s deal products.<\\/span><\\/p><\\/li><\\/ol><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Technical Directory:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\"> <\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#ff0000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">product box<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">. <\\/span><\\/p><p><b style=\\"font-weight:normal;\\"><br><\\/b><\\/p><ol style=\\"margin-top:0pt;margin-bottom:0pt;\\" start=\\"4\\"><li dir=\\"ltr\\" style=\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\"><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Footer<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"> <\\/span><\\/p><\\/li><\\/ol><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"><span class=\\"Apple-tab-span\\" style=\\"white-space:pre;\\">\\t<\\/span><\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">There are two parts of the footer.<\\/span><\\/p><ul style=\\"margin-top:0pt;margin-bottom:0pt;\\"><li dir=\\"ltr\\" style=\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\"><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Footer Top<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"> <\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">Top footer contains some options such as footer logo,subscription box categories links, page links, contact details,social media links.All elements sorted in four columns.Category &amp; text in footer has been managed by admin.<\\/span><\\/p><\\/li><\\/ul><ul style=\\"margin-top:0pt;margin-bottom:0pt;\\"><li dir=\\"ltr\\" style=\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\"><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Footer Bottom <\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">: <\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">This portion contains the \\u201cdeveloper authority name\\u201d,\\u201dterms &amp; condition\\u201d,\\u201dprivacy policy\\u201d and \\u201cpayment gateway logo\\u201d<\\/span><\\/p><\\/li><\\/ul><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">Admin directory :<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"> admin &gt; frontend settings &gt; Display settings &gt; footer.<\\/span><\\/p><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Technical Directory:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\"> <\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#ff0000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">product box<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">.<\\/span><\\/p><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\"><br class=\\"kix-line-break\\"><br class=\\"kix-line-break\\"><\\/span><\\/p><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Structure &amp; Information of Home page<\\/span><\\/p><p><b style=\\"font-weight:normal;\\"><br><\\/b><\\/p><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">Home page : <\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">We designed two most conspicuous and absolutely customizable types of home with the utmost experience of qualified user interface perception for representing your eCommerce in a distinctive aspection.We splat the whole home page into several parts such as Layer slider , home top part , advance search area, featured product area, category wise products(for home page 1), category wise banner(for homepage 2), latest blogs (home page 1), special products (Latest products, Most sold, Most viewed product).All of these very specific portions is easily editable with having the options of enable\\/disable.<\\/span><\\/p><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">Admin directory : <\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">admin(login) &gt; frontend settings &gt; display settings &gt; home page &gt; choose homepage &gt; change home page items.<\\/span><\\/p><p dir=\\"ltr\\" style=\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\"><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\">Technical Directory:<\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\"> <\\/span><span style=\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p><span style=\\"font-size: 14.6667px; font-family: Roboto; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\"font-size: 14.6667px; font-family: Roboto; color: rgb(255, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\\">product box<\\/span><span style=\\"font-size: 14.6667px; font-family: Roboto; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\\">.<\\/span><br><\\/p>","widget":""}]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
`permission_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `codename` varchar(30) DEFAULT NULL,
  `parent_status` varchar(30) DEFAULT NULL,
  `description` longtext
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `name`, `codename`, `parent_status`, `description`) VALUES
(1, 'staff', 'admin', 'parent', ''),
(2, 'edit', 'admin_edit', '1', ''),
(3, 'view', 'admin_view', '1', ''),
(4, 'delete', 'admin_delete', '1', ''),
(5, 'banner', 'banner', 'parent', ''),
(6, 'edit', 'banner_edit', '5', ''),
(7, 'view', 'banner_view', '5', ''),
(8, 'delete', 'banner_delete', '5', ''),
(9, 'brand', 'brand', 'parent', ''),
(10, 'edit', 'brand_edit', '9', ''),
(11, 'view', 'brand_view', '9', ''),
(12, 'delete', 'brand_delete', '9', ''),
(13, 'business settings', 'business_settings', 'parent', ''),
(14, 'edit', 'business_settings_edit', '13', ''),
(15, 'view', 'business_settings_view', '13', ''),
(16, 'delete', 'business_settings_delete', '13', ''),
(17, 'category', 'category', 'parent', ''),
(18, 'edit', 'category_edit', '17', ''),
(19, 'view', 'category_view', '17', ''),
(20, 'delete', 'category_delete', '17', ''),
(21, 'contact message', 'contact_message', 'parent', ''),
(22, 'edit', 'contact_message_edit', '21', ''),
(23, 'view', 'contact_message_view', '21', ''),
(24, 'delete', 'contact_message_delete', '21', ''),
(25, 'site settings', 'site_settings', 'parent', ''),
(26, 'edit', 'site_settings_edit', '25', ''),
(27, 'view', 'site_settings_view', '25', ''),
(28, 'delete', 'site_settings_delete', '25', ''),
(29, 'product', 'product', 'parent', ''),
(30, 'edit', 'product_edit', '29', ''),
(31, 'view', 'product_view', '29', ''),
(32, 'delete', 'product_delete', '29', ''),
(33, 'report', 'report', 'parent', ''),
(34, 'edit', 'report_edit', '33', ''),
(35, 'view', 'report_view', '33', ''),
(36, 'delete', 'report_delete', '33', ''),
(37, 'role', 'role', 'parent', ''),
(38, 'edit', 'role_edit', '37', ''),
(39, 'view', 'role_view', '37', ''),
(40, 'delete', 'role_delete', '37', ''),
(41, 'sale', 'sale', 'parent', ''),
(42, 'edit', 'sale_edit', '92', ''),
(43, 'view', 'sale_view', '92', ''),
(44, 'delete', 'sale_delete', '92', ''),
(45, 'slider', 'slider', 'parent', ''),
(46, 'edit', 'slider_edit', '45', ''),
(47, 'view', 'slider_view', '45', ''),
(48, 'delete', 'slider_delete', '45', ''),
(49, 'stock', 'stock', 'parent', ''),
(50, 'edit', 'stock_edit', '49', ''),
(51, 'view', 'stock_view', '49', ''),
(52, 'delete', 'stock_delete', '49', ''),
(53, 'sub category', 'sub_category', 'parent', ''),
(54, 'edit', 'sub_category_edit', '53', ''),
(55, 'view', 'sub_category_view', '53', ''),
(56, 'delete', 'sub_category_delete', '53', ''),
(57, 'user', 'user', 'parent', ''),
(58, 'edit', 'user_edit', '57', ''),
(59, 'view', 'user_view', '57', ''),
(60, 'delete', 'user_delete', '57', ''),
(61, 'newsletter', 'newsletter', 'parent', ''),
(62, 'language', 'language', 'parent', ''),
(63, 'page', 'page', 'parent', ''),
(64, 'Discount Coupon', 'coupon', 'parent', ''),
(65, 'vendor', 'vendor', 'parent', ''),
(66, 'membership', 'membership', 'parent', ''),
(67, 'SEO', 'seo', 'parent', ''),
(68, 'Membership Payments', 'membership_payment', 'parent', ''),
(69, 'blog', 'blog', 'parent', NULL),
(70, 'slides', 'slides', 'parent', NULL),
(71, 'category_digital', 'category_digital', 'parent', NULL),
(72, 'edit', 'category_digital_edit', '71', NULL),
(73, 'delete', 'category_digital_delete', '71', NULL),
(74, 'view', 'category_digital_view', '71', NULL),
(75, 'sub_category', 'sub_category', 'parent', NULL),
(77, 'edit', 'sub_category_edit', '75', NULL),
(78, 'delete', 'sub_category_delete', '75', NULL),
(79, 'view', 'sub_category_view', '75', NULL),
(80, 'sub_category_digital', 'sub_category_digital', 'parent', NULL),
(81, 'edit', 'sub_category_digital_edit', '80', NULL),
(82, 'delete', 'sub_category_digital_delete', '80', NULL),
(83, 'view', 'sub_category_digital_view', '80', NULL),
(84, 'digital', 'digital', 'parent', NULL),
(85, 'edit', 'digital_edit', '84', NULL),
(86, 'delete', 'digital_delete', '84', NULL),
(87, 'view', 'digital_view', '84', NULL),
(88, 'product', 'product', 'parent', NULL),
(89, 'edit', 'product_edit', '88', NULL),
(90, 'delete', 'product_delete', '88', NULL),
(91, 'view', 'product_view', '88', NULL),
(92, 'sale', 'sale', 'parent', NULL),
(93, 'email_tracing', 'email_tracing', 'parent', NULL),
(94, 'widget', 'widget', 'parent', NULL),
(95, 'display_settings', 'display_settings', 'parent', NULL),
(96, 'banner', 'banner', 'parent', NULL),
(97, 'captha_n_social_settings', 'captha_n_social_settings', 'parent', NULL),
(98, 'business_settings', 'business_settings', 'parent', NULL),
(99, 'ticket', 'ticket', 'parent', NULL),
(100, 'default_images', 'default_images', 'parent', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`product_id` int(11) NOT NULL,
  `rating_num` int(11) NOT NULL DEFAULT '0',
  `rating_total` int(11) NOT NULL DEFAULT '0',
  `rating_user` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sub_category` int(11) NOT NULL,
  `num_of_imgs` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sale_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `purchase_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `add_timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `featured` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tag` longtext COLLATE utf8_unicode_ci,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `front_image` longtext COLLATE utf8_unicode_ci,
  `brand` longtext COLLATE utf8_unicode_ci,
  `current_stock` int(11) DEFAULT '0',
  `unit` longtext COLLATE utf8_unicode_ci,
  `additional_fields` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_view` int(11) NOT NULL DEFAULT '0',
  `background` longtext COLLATE utf8_unicode_ci,
  `discount` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `discount_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tax` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `tax_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `color` longtext COLLATE utf8_unicode_ci,
  `options` longtext COLLATE utf8_unicode_ci,
  `main_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `download` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `download_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deal` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_of_downloads` int(11) NOT NULL DEFAULT '0',
  `update_time` longtext COLLATE utf8_unicode_ci,
  `requirements` longtext COLLATE utf8_unicode_ci,
  `logo` longtext COLLATE utf8_unicode_ci,
  `video` longtext COLLATE utf8_unicode_ci,
  `last_viewed` int(200) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`) VALUES
(2, 0, 0, '[]', 'Harley Davidson Fatboy', '{"type":"admin","id":"1"}', 1, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 5, '1', '22000.00', '18000.00', '2000', '1472849201', '0', 'honda,rapsol,bike', 'ok', '0', '52', 0, 'pc', '{"name":"null","value":"null"}', 3, NULL, '', 'percent', '7', 'percent', '["rgba(252,151,0,1)","rgba(0,0,0,1)","rgba(255,0,0,1)","rgba(28,25,173,1)"]', '[{"no":"0","title":"Condition","name":"choice_0","type":"radio","option":["New","Used"]}]', '0', NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, 1476166863),
(4, 0, 0, '[]', 'Lexus Harrier 2016', '{"type":"admin","id":"1"}', 1, '                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 3, '1', '99000.00', '88000.00', '5000', '1472849819', 'no', 'SUV,toyota', 'ok', '0', '51', 100, 'pc', '{"name":"null","value":"null"}', 3, NULL, '', 'percent', '15', 'percent', '["rgba(5,5,5,1)","rgba(255,255,255,1)"]', '[{"no":"0","title":"Condition","name":"choice_0","type":"radio","option":["New","Used"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1476162318),
(7, 0, 0, '[]', 'Sleeping dress', '{"type":"admin","id":"1"}', 4, '                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 10, '3', '50.00', '35.00', '', '1472906912', '0', 'women,sleeping dress', 'ok', '0', '10', 0, 'pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '', 'percent', '["rgba(245,175,234,1)","rgba(255,255,255,1)","rgba(0,0,0,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"multi_select","option":["XXL","XL","M","S"]},{"no":"1","title":"Condition","name":"choice_1","type":"single_select","option":["New","used"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(8, 0, 0, '[]', 'Apple Watch 2', '{"type":"admin","id":"1"}', 5, '                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 30, '2', '799.00', '650.00', '', '1472940213', '0', 'apple,apple watch', 'ok', '0', '63', 0, 'pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '', 'percent', '["rgba(255,70,103,1)","rgba(243,255,100,1)","rgba(16,212,94,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(9, 0, 0, '[]', 'Sports kades', '{"type":"admin","id":"1"}', 5, '                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 28, '2', '135.00', '120.00', '', '1472940538', '0', 'shoes,man shoes,nike', 'ok', '0', '35', 0, 'pc', '{"name":"null","value":"null"}', 0, NULL, '', 'percent', '', 'percent', '["rgba(128,202,255,1)","rgba(64,29,204,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(11, 0, 0, '[]', 'Diamond set', '{"type":"admin","id":"1"}', 4, '                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 11, '5', '8999.00', '6500.00', '', '1472941717', '0', 'diamond,diamond set', 'ok', '0', '', 0, 'pc', '{"name":"null","value":"null"}', 2, NULL, '', 'percent', '', 'percent', '["rgba(255,255,255,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1475769790),
(12, 0, 0, '[]', 'Party Dress', '{"type":"admin","id":"1"}', 4, '                                                                                                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 8, '2', '299.00', '180.00', '', '1472942092', '0', 'party dress', 'ok', '0', '8', 0, 'pc', '{"name":"null","value":"null"}', 6, NULL, '', 'percent', '', 'percent', '["rgba(0,0,0,1)","rgba(10,179,168,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"multi_select","option":["XL","M","S"]},{"no":"1","title":"Type","name":"choice_1","type":"radio","option":["Long","Medium","Short"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1476273997),
(14, 0, 0, '[]', 'Bridal Gown ', '{"type":"admin","id":"1"}', 4, '                                                                                                                        <p><span style="text-align: justify;">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</span><br></p>', 34, '1', '350.00', '320.00', '9.99', '1472985919', '0', 'bride,bridal dress', 'ok', '0', '9', 0, 'pc', '{"name":"null","value":"null"}', 1, NULL, '2', 'percent', '', 'percent', '["rgba(247,172,172,1)","rgba(252,239,239,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"single_select","option":["46","50","54"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(15, 0, 0, '[]', 'Perfume', '{"type":"admin","id":"1"}', 4, '                                                                                                                        <p><span style="line-height: 17.1429px; text-align: justify;">Lorem Ipsum</span><span style="line-height: 17.1429px; text-align: justify;">&nbsp;</span><span style="line-height: 17.1429px; text-align: justify;">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</span><br></p>', 37, '1', '160.00', '130.00', '', '1472987794', '0', 'perfume,women', 'ok', '0', '11', 0, 'pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '', 'percent', '["rgba(196,1,1,1)","rgba(1,153,163,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"single_select","option":["Small","Big"]},{"no":"1","title":"Fragrance ","name":"choice_1","type":"multi_select","option":["Rose","Aqua","Sun Shine"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(16, 0, 0, '[]', 'Leather Belt Watch', '{"type":"admin","id":"1"}', 4, '                                                                                                                        <p><span style="line-height: 17.1429px; text-align: justify;">Lorem Ipsum</span><span style="line-height: 17.1429px; text-align: justify;">&nbsp;</span><span style="line-height: 17.1429px; text-align: justify;">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</span><br></p>', 39, '2', '125.00', '110.00', '5.1', '1472990285', '0', 'watch,women''s watch', 'ok', '0', '18', 0, 'pc', '{"name":"null","value":"null"}', 3, NULL, '', 'percent', '', 'percent', '["rgba(0,0,0,1)","rgba(110,72,0,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1476167977),
(17, 0, 0, '[]', 'Formal Women Blazers', '{"type":"admin","id":"1"}', 4, '                                                                                                                        <p><span style="line-height: 17.1429px; text-align: justify;">Lorem Ipsum</span><span style="line-height: 17.1429px; text-align: justify;">&nbsp;</span><span style="line-height: 17.1429px; text-align: justify;">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</span><br></p>', 35, '3', '150.00', '120.00', '', '1472990598', '0', 'formal dress,dress', 'ok', '0', '16', 0, 'pc', '{"name":"null","value":"null"}', 9, NULL, '', 'percent', '', 'percent', '["rgba(61,61,61,1)","rgba(209,0,0,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"single_select","option":["XXL","XL","L","M","S"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1476167985),
(18, 0, 0, '[]', 'Long Sleeve Frock ', '{"type":"admin","id":"1"}', 4, '                                                                                                                        <p><span style="line-height: 17.1429px; text-align: justify;">Lorem Ipsum</span><span style="line-height: 17.1429px; text-align: justify;">&nbsp;</span><span style="line-height: 17.1429px; text-align: justify;">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</span><br></p>', 40, '3', '130.00', '100.00', '', '1472992208', '0', 'dressw,casual', 'ok', '0', '17', 0, 'pc', '{"name":"null","value":"null"}', 3, NULL, '', 'percent', '', 'percent', '["rgba(0,0,0,1)","rgba(237,0,0,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"single_select","option":["Large","Medium","Small"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1476167789),
(23, 0, 0, '[]', 'Dior Addict', '{"type":"admin","id":"1"}', 4, '                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 37, '4', '399.00', '210.00', '', '1473023965', 'no', 'dior,perfume,active super shop', 'ok', '0', '11', 0, 'pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '', 'percent', '["rgba(255,232,174,1)","rgba(255,174,232,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(24, 0, 0, '[]', 'Gucci Guilty Intense', '{"type":"admin","id":"1"}', 4, '                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 37, '4', '500.00', '400.00', '', '1473026104', '0', 'gucci,perfume,woman perfume', 'ok', '0', '100', 0, 'pc', '{"name":"null","value":"null"}', 3, NULL, '', 'percent', '', 'percent', '["rgba(255,255,255,1)","rgba(255,250,126,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1476162313),
(25, 0, 0, '[]', 'Calvin Klein Sheer Beauty', '{"type":"admin","id":"1"}', 4, '                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 37, '2', '350.00', '250.00', '', '1473028314', 'no', 'calvin ,perfume', 'ok', '0', '102', 0, 'pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '', 'percent', '["rgba(255,255,255,1)","rgba(245,206,106,1)","rgba(245,175,175,1)","rgba(123,223,255,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(26, 0, 0, '[]', 'Pink Cotton bra ', '{"type":"vendor","id":"1"}', 4, '                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 9, '3', '12.00', '10.00', '', '1473042324', 'no', 'bra,women', 'ok', '0', '10', 0, 'pc', '{"name":"null","value":"null"}', 2, NULL, '', 'percent', '', 'percent', '["rgba(250,143,207,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"single_select","option":["XL","M","S"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1475769185),
(35, 0, 0, '[]', 'Formal Short Dress', '{"type":"admin","id":"1"}', 4, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages<br></p>', 35, '1', '280.00', '240.00', '', '1473077524', 'ok', 'dress,office dress', 'ok', '0', '11', 0, 'pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '', 'percent', '["rgba(27,115,73,1)"]', '[{"no":"1","title":"Size","name":"choice_1","type":"multi_select","option":["XXL","XL","L","M","S"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(36, 0, 0, '[]', 'Party Wear', '{"type":"vendor","id":"1"}', 4, '                                                                                                                                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages<br></p>', 8, '1', '250.00', '210.00', '', '1473078320', 'ok', 'party dress,dress', 'ok', '0', '8', 0, 'pc', '{"name":"null","value":"null"}', 4, NULL, '', 'percent', '', 'percent', '["rgba(250,12,12,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"multi_select","option":["XXL","XL","L","M","S"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1476179405),
(37, 0, 0, '[]', 'Short Night Wear', '{"type":"admin","id":"1"}', 4, '                                                                                                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages<br></p>', 10, '1', '180.00', '150.00', '5', '1473148774', '0', 'sleepig dress,night dress', 'ok', '0', '10', 0, 'pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '5', 'percent', '["rgba(220,157,222,1)","rgba(10,10,10,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(49, 0, 0, '[]', 'Slim Fit Casual Shirt', '{"type":"vendor","id":"3"}', 5, '                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 29, '1', '45.25', '34.35', '4', '1474484600', 'no', 'casual shirt,casual men''s shirt,men''s shirt,men;s casual shirt', 'ok', '0', '31', 45, 'pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '2', 'percent', '["rgba(190,221,236,1)","rgba(254,222,222,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"single_select","option":["Small","Medium","Large","X-Large","XX-Large"]},{"no":"1","title":"Sleeve","name":"choice_1","type":"single_select","option":["Half","Full"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(50, 0, 0, '[]', 'Cotton T-Shirt', '{"type":"vendor","id":"3"}', 5, '                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 29, '1', '21.99', '15.25', '3.35', '1474485084', 'no', 'men;s t-shirt,t-shirt,mens shirt', 'ok', '0', '20', 50, 'pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '2', 'percent', '["rgba(70,91,139,1)","rgba(89,134,133,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"multi_select","option":["Small","Medium","Large","X-Large","XX-Large"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(51, 0, 0, '[]', 'Tri-Blend V Neck T-Shirt', '{"type":"vendor","id":"3"}', 5, '                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 29, '1', '19.91', '11.11', '2.36', '1474485737', 'no', 't-shirt,mans t-shirt,men''s t-shirt', 'ok', '0', '37', 25, 'pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '3.35', 'percent', '["rgba(72,77,150,1)","rgba(48,114,93,1)","rgba(127,89,89,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"single_select","option":["Small","Medium","Large"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(52, 0, 0, '[]', 'Long-Sleeve Double Color Shirt', '{"type":"vendor","id":"3"}', 5, '                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 29, '1', '15.00', '9.56', '2.50', '1474487371', 'no', 'man''s shirt,mens shirt,shirt', 'ok', '0', '23', 18, 'pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '1.25', 'percent', '["rgba(55,48,48,1)","rgba(132,32,32,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"single_select","option":["Small","Medium","Large","X-Large"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(53, 0, 0, '[]', 'Dinner Suit', '{"type":"vendor","id":"3"}', 5, '                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 27, '1', '112.00', '85.00', '5', '1474488409', 'no', 'suit,formal dress,dinner jacket,dinner suit', 'ok', '0', '30', 10, 'pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '5.25', 'percent', '["rgba(0,0,0,1)","rgba(255,255,255,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"single_select","option":["42 long","42 Short","46 Long","46 Short"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(54, 0, 0, '[]', 'Custom Suit Set', '{"type":"vendor","id":"3"}', 5, '                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 27, '1', '120.00', '100.00', '5.25', '1474488963', 'no', 'suit,suits,vest', 'ok', '0', '22', 15, 'Set', '{"name":"null","value":"null"}', 2, NULL, '2', 'percent', '6.25', 'percent', '["rgba(0,0,0,1)","rgba(255,255,255,1)","rgba(0,92,255,1)"]', '[{"no":"0","title":"size","name":"choice_0","type":"single_select","option":["Small","Medium","Large","X-Large","Tailored"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1476274295),
(57, 0, 0, '[]', 'Classic Business Shoe', '{"type":"vendor","id":"3"}', 5, '                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 28, '1', '80.00', '65.00', '3.26', '1474490663', 'no', 'formal shoe,business shoe,shoe,mens shoe', 'ok', '0', '17', 20, 'Pair', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '3.25', 'percent', '["rgba(25,25,25,1)","rgba(185,88,38,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"single_select","option":["8","9","10","11"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(58, 0, 0, '[]', 'Retro Utility Lace-Up Work Shoe', '{"type":"vendor","id":"3"}', 5, '                                                                                                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 28, '2', '75.00', '60.00', '5.50', '1474491506', 'no', 'work shoe,mens shoe,shoe', 'ok', '0', '24', 25, 'Pair', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '3.25', 'percent', '["rgba(53,34,34,1)","rgba(145,29,29,0.97)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"single_select","option":["10","11","12","13"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(61, 0, 0, '[]', 'Soft Silicon Sports Style Watch', '{"type":"vendor","id":"3"}', 5, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 30, '1', '750.00', '700.00', '8.30', '1474493199', 'no', 'mens watch,apple watch', 'ok', '0', '63', 100, 'Pc', '{"name":"null","value":"null"}', 1, NULL, '10', 'amount', '6.25', 'percent', '["rgba(227,241,119,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(62, 1, 5, '["3"]', 'Aluminium Case Sports Style Watch', '{"type":"vendor","id":"3"}', 5, '                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 30, '1', '685.00', '620.00', '5.25', '1474493497', 'ok', 'watch,mens watch,apple watch', 'ok', '0', '63', 80, 'Pc', '{"name":"null","value":"null"}', 2, NULL, '10', 'amount', '6.35', 'percent', '["rgba(138,221,236,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1476005346),
(63, 1, 5, '["3"]', 'Stylish Clear Watch', '{"type":"vendor","id":"3"}', 5, '                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 30, '1', '699.00', '650.00', '5.25', '1474493703', 'ok', 'watch,rolex', 'ok', '0', '18', 50, 'Pc', '{"name":"null","value":"null"}', 2, NULL, '', 'percent', '5.25', 'percent', '["rgba(44,62,142,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1476005351),
(65, 0, 0, '[]', 'Blue Net Bra & Penty', '{"type":"vendor","id":"5"}', 4, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 9, '1', '18.25', '11.26', '2.35', '1474572288', '0', 'bra,net bra', 'ok', '0', '10', 30, 'pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '1.50', 'percent', '["rgba(0,9,142,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"single_select","option":["32A","32B","32C","34A","34B","34C","36A","36B","36C"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(66, 0, 0, '[]', 'Printed Balconette Bra', '{"type":"vendor","id":"5"}', 4, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 9, '1', '24.62', '15.35', '3.25', '1474572767', '0', 'bra,printed bra', 'ok', '0', '13', 35, 'pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '1.50', 'percent', '["rgba(244,237,237,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"single_select","option":["34A","34B","34C","36A","36B","36C","38A","38B","38C"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(67, 0, 0, '[]', 'Ultra Thin Net Bra & Penty ', '{"type":"vendor","id":"5"}', 4, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 9, '1', '19.56', '13.20', '2.30', '1474574005', '0', 'bra,net bra,ultra thin bra', 'ok', '0', '14', 30, 'Pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '1.50', 'percent', '["rgba(142,148,173,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"single_select","option":["34A","34B","35A","35B","36A","36B"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`) VALUES
(68, 0, 0, '[]', 'Printed Satin Robe', '{"type":"vendor","id":"5"}', 4, '                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 10, '1', '19.25', '12.36', '2.36', '1474575090', 'ok', 'sleeping dress,night dress,night robe', 'ok', '0', '11', 20, 'Pc', '{"name":"null","value":"null"}', 2, NULL, '', 'percent', '2.25', 'percent', '["rgba(45,44,44,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1475760092),
(69, 0, 0, '[]', 'Floral Lace Nighty ', '{"type":"vendor","id":"5"}', 4, '                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 10, '1', '12.99', '8.20', '1.20', '1474575691', 'ok', 'lace nighty,sleeping dress', 'ok', '0', '15', 30, 'Pc', '{"name":"null","value":"null"}', 4, NULL, '', 'percent', '1.05', 'percent', '["rgba(0,0,0,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1475754442),
(70, 0, 0, '[]', 'Makeup Kit', '{"type":"vendor","id":"5"}', 4, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 11, '2', '6.92', '3.35', '', '1474576941', '0', 'makeup brush,makeup kit', 'ok', '0', '8', 25, 'Set', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '', 'percent', '["rgba(203,202,195,1)"]', '[{"no":"0","title":"Set","name":"choice_0","type":"single_select","option":["4 pcs","6 pcs","8 pcs"]},{"no":"1","title":"Type","name":"choice_1","type":"single_select","option":["Wool","Nylon"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(71, 0, 0, '[]', 'Red Velvet Lipstick & Nail Color', '{"type":"vendor","id":"5"}', 4, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 11, '1', '13.35', '10.25', '', '1474577843', '0', 'lipstick,nail polish,nail color', 'ok', '0', '8', 50, 'Set', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '', 'percent', '["rgba(211,0,0,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(72, 0, 0, '[]', 'Yoga Wear', '{"type":"vendor","id":"5"}', 4, '                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 11, '1', '11.30', '8.90', '', '1474578783', 'no', 'yoga dress,yoga wear', 'ok', '0', '8', 10, 'Pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '', 'percent', '["rgba(68,68,68,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(73, 0, 0, '[]', 'High Heel Top Belt', '{"type":"vendor","id":"5"}', 4, '                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 36, '1', '49.33', '38.32', '3.25', '1474580020', '0', 'shoe,party shoe,womens shoe', 'ok', '0', '12', 15, 'Pair', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '2.20', 'percent', '["rgba(244,20,20,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"single_select","option":["10","11","12","13"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(74, 0, 0, '[]', 'Crystal Pencil High Heel', '{"type":"vendor","id":"5"}', 4, '                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 36, '1', '55.25', '41.38', '3.25', '1474580224', 'no', '', 'ok', '0', '11', 20, 'Pair', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '2.50', 'percent', '["rgba(208,15,124,1)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"single_select","option":["8","9","10","11"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(75, 0, 0, '[]', 'Medium Booster Heel', '{"type":"admin","id":"1"}', 4, '                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 36, '1', '49.99', '39.63', '2.52', '1474580982', 'no', 'shoe,party shoe', 'ok', '0', '14', 20, 'Pair', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '1.50', 'percent', '["rgba(224,39,39,0.86)"]', '[{"no":"0","title":"Size","name":"choice_0","type":"single_select","option":["8","9","10","11"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(76, 1, 5, '["3"]', 'BMW Super car', '{"type":"vendor","id":"3"}', 1, '                                        <p><span [removed]="" justify;"="">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 3, '1', '46545.00', '43567.00', '455', '1474721278', 'no', 'car,bmw,luxury suv', 'ok', '0', '45', 10, 'Pc', '{"name":"null","value":"null"}', 3, NULL, '', 'percent', '15', 'percent', '["rgba(217,217,217,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1476005564),
(77, 1, 5, '["3"]', 'Super luxury Car', '{"type":"vendor","id":"3"}', 1, '                                        <p><span id="docs-internal-guid-c79edabb-5c4c-3f82-8b4b-045482ca5abb"><span [removed]="text-align: justify;">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></span></p>', 3, '1', '68599.00', '58378.00', '6850', '1474722202', 'no', 'car,super car,luxury car', 'ok', '0', '41', 15, 'Pc', '{"name":"null","value":"null"}', 4, NULL, '', 'percent', '20', 'percent', '["rgba(28,28,28,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1476020299),
(78, 1, 5, '["3"]', 'Mercedes Benz SUV ', '{"type":"vendor","id":"3"}', 1, '                                                                                                                        <p><span id="docs-internal-guid-c79edabb-5c4c-3f82-8b4b-045482ca5abb"><span [removed]="text-align: justify;">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></span></p>', 3, '1', '140825.00', '131772.00', '1072', '1474722247', 'no', 'car,super car,luxury car', 'ok', '0', '51', 20, 'Pc', '{"name":"null","value":"null"}', 3, NULL, '', 'percent', '25', 'percent', '["rgba(227,219,219,1)"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1476005586),
(79, 1, 5, '["3"]', 'Sikorsky turbine Helicopter', '{"type":"vendor","id":"3"}', 1, '                                                                                <p><span [removed]="" justify;"="">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 63, '1', '2250000.00', '1734589.00', '158900', '1474790384', 'no', 'privet plane,helicopter,private helicopter', 'ok', '0', '47', 5, 'Pc', '{"name":"null","value":"null"}', 2, NULL, '', 'percent', '20', 'percent', '["rgba(201,21,21,1)","rgba(0,0,0,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1476005583),
(80, 0, 0, '[]', 'Hughes UR-Path Helicopter', '{"type":"admin","id":"1"}', 1, '                                                                                <p><span style="text-align: justify;">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 63, '1', '775000.00', '558900.00', '58900', '1474791921', 'no', 'helicopter,privet helicopter,private jet', 'ok', '0', '39', 10, 'Pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '19', 'percent', '["rgba(250,230,49,1)"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL),
(81, 0, 0, '[]', 'Bombardier Global Air Jet', '{"type":"admin","id":"1"}', 1, '                                                                                <p><span style="text-align: justify;">Lorem Ipsum</span><span style="text-align: justify;">&nbsp;</span><span style="text-align: justify;">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 63, '1', '3750000.00', '3234690.00', '157690', '1474792372', 'no', 'private jet,private air,private plane', 'ok', '0', '46', 5, 'Pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '18', 'percent', '["rgba(245,245,245,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(82, 0, 0, '[]', 'Gulfstream G550 Air Jet', '{"type":"admin","id":"1"}', 1, '                                                                                <p><span style="text-align: justify;">Lorem Ipsum</span><span style="text-align: justify;">&nbsp;</span><span style="text-align: justify;">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 63, '1', '4800000.00', '4467490.00', '145780', '1474792870', '0', 'private plane,private jet,private air', 'ok', '0', '46', 8, 'Pc', '{"name":"null","value":"null"}', 2, NULL, '', 'percent', '25', 'percent', '["rgba(237,237,237,1)"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1475880938),
(83, 0, 0, '[]', 'BMW S15700', '{"type":"admin","id":"1"}', 1, '                                                                                <p><span style="text-align: justify;">Lorem Ipsum</span><span style="text-align: justify;">&nbsp;</span><span style="text-align: justify;">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 5, '1', '13150.00', '11670.00', '1190', '1474793746', '0', 'chopper bike,bike', 'ok', '0', '45', 12, 'Pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '8', 'percent', '["rgba(255,255,255,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(84, 0, 0, '[]', 'Harley Davidson VRSCF Bike', '{"type":"admin","id":"1"}', 1, '                                                                                                                        <p><span style="text-align: justify;">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 5, '1', '45000.00', '42879.00', '1500', '1474795772', 'no', 'chopper bike,bike', 'ok', '0', '56', 25, 'Pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '12', 'percent', '["rgba(46,46,46,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(85, 0, 0, '[]', 'Harley Davidson Iron 883', '{"type":"admin","id":"1"}', 1, '                                        <p><span style="text-align: justify;">Lorem Ipsum</span><span style="text-align: justify;">&nbsp;</span><span style="text-align: justify;">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 5, '1', '79560.00', '74590.00', '1800', '1474796674', 'no', 'chopper bike,bike', 'ok', '0', '56', 18, 'Pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '12', 'percent', '["rgba(46,45,45,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(86, 0, 0, '[]', 'Strike Racing Bike', '{"type":"admin","id":"1"}', 1, '                                                                                                                                                                                                        <p><span style="text-align: justify;">Lorem Ipsum</span><span style="text-align: justify;">&nbsp;</span><span style="text-align: justify;">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 6, '1', '48000.00', '45000.00', '1800', '1474798951', '0', 'racing bike,bike,bmw', 'ok', '0', '45', 16, 'Pc', '{"name":"null","value":"null"}', 2, NULL, '', 'percent', '5', 'percent', '["rgba(255,255,255,1)","rgba(247,250,82,1)","rgba(0,0,0,1)"]', '[{"no":"0","title":"Condition","name":"choice_0","type":"single_select","option":["Used","New"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1476020316),
(87, 0, 0, '[]', 'Yamaha Racing Bike', '{"type":"admin","id":"1"}', 1, '                                        <p><span style="text-align: justify;">Lorem Ipsum</span><span style="text-align: justify;">&nbsp;</span><span style="text-align: justify;">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 6, '1', '44000.00', '41000.00', '', '1474799812', 'no', 'racing bike,yamaha', 'ok', '0', '57', 10, 'Pc', '{"name":"null","value":"null"}', 1, NULL, '5', 'percent', '', 'percent', '["rgba(240,126,21,1)","rgba(255,255,255,1)","rgba(255,7,7,1)"]', '[{"no":"0","title":"Condition","name":"choice_0","type":"single_select","option":["Used","New"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(88, 0, 0, '[]', 'Faster Racing Bike', '{"type":"admin","id":"1"}', 1, '                                        <p><span style="text-align: justify;">Lorem Ipsum</span><span style="text-align: justify;">&nbsp;</span><span style="text-align: justify;">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 6, '1', '36000.00', '33890.00', '1800', '1474800321', 'no', 'racing bike,honda,bike', 'ok', '0', '52', 25, 'Pc', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '5', 'percent', '["rgba(0,0,0,1)","rgba(255,0,0,1)","rgba(255,247,55,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(89, 0, 0, '[]', 'Super Racing Bike', '{"type":"admin","id":"1"}', 1, '                                                                                                                                                                <p><span style="text-align: justify;">Lorem Ipsum</span><span style="text-align: justify;">&nbsp;</span><span style="text-align: justify;">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 6, '1', '45000.00', '42000.00', '', '1474801360', '0', 'bike,racing honda,honda', 'ok', '0', '52', 10, 'Pc', '{"name":"null","value":"null"}', 2, NULL, '10', 'percent', '', 'percent', '["rgba(255,255,255,1)","rgba(0,0,0,1)"]', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1476269484),
(98, 0, 0, '[]', 'Classified php script', '{"type":"admin","id":"1"}', 12, '                                                                                                                                                                <p>&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>                                                                                                                                                ', 66, '3', '38.00', '38.00', '0', '1475924525', 'no', 'php,classified ', 'ok', NULL, NULL, 0, NULL, '{"name":"null","value":"null"}', 8, NULL, '', 'percent', '', 'percent', NULL, NULL, '0', 'ok', '98_27cf69cb8ee8f1eaf47c_asdasdestghfjktgsseruyhxrityik.zip', NULL, 0, '1476352505', '[{"index":0,"field":"php version","desc":"<p>php 5.0<\\/p>"}]', 'digital_logo_98.jpg', '[]', 1476350431),
(99, 0, 0, '[]', 'Colored Solution', '{"type":"admin","id":"1"}', 13, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>                                                                        ', 75, '3', '26.00', '20.00', '0', '1476001190', 'ok', 'printing solutioncolor,color', 'ok', NULL, NULL, 0, NULL, '{"name":"null","value":"null"}', 2, NULL, '', 'percent', '', 'percent', NULL, NULL, '0', 'ok', '99_c04a03c2506a4ba12d38_printing solution.zip', 'ok', 0, '1476360456', '[{"index":0,"field":"Package","desc":"<p>Full<\\/p>"}]', 'digital_logo_99.jpg', '[]', 1476001368),
(100, 0, 0, '[]', '3D Impact', '{"type":"admin","id":"1"}', 13, '                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>                                    ', 73, '5', '20.00', '19.00', '0', '1476002821', 'ok', '3d design,design ', 'ok', NULL, NULL, 0, NULL, '{"name":"null","value":"null"}', 3, NULL, '', 'percent', '', 'percent', NULL, NULL, '0', 'ok', '100_c7e6cd571a7ca96492c3_3d design.zip', NULL, 0, '1476273286', '[{"index":0,"field":"Color","desc":"<p>Multiple<\\/p>"}]', 'digital_logo_100.jpg', '[]', 1476381822);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE IF NOT EXISTS `product_type` (
`product_type_id` int(11) NOT NULL,
  `name` longtext,
  `price` longtext,
  `status` longtext,
  `details` longtext,
  `defaults` varchar(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`product_type_id`, `name`, `price`, `status`, `details`, `defaults`) VALUES
(7, 'Monthly Special', '100', 'ok', '{"s_for":"30-day","f_for":"7-day"}', NULL),
(8, 'Default', '0', 'ok', '{"s_for":"7-day","f_for":"0-day"}', 'ok'),
(9, 'New', '20', 'ok', '{"s_for":"14-day","f_for":"7-day"}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
`role_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `description` longtext
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `name`, `permission`, `description`) VALUES
(1, 'master', '', 'Master Admin. Adds Admin. Provides account roles.'),
(5, 'Product Manager', '["13","17","21","37","41","45","49"]', 'Manages Products'),
(4, 'Accountant', '["9","13","17","21"]', 'Accountancy and Support'),
(6, 'Manager', '["5","13","29","33","37","41","57","63"]', 'Manager of Active Super shop');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
`sale_id` int(11) NOT NULL,
  `sale_code` longtext,
  `buyer` longtext,
  `product_details` longtext,
  `shipping_address` longtext,
  `vat` longtext,
  `vat_percent` varchar(10) DEFAULT NULL,
  `shipping` longtext,
  `payment_type` varchar(100) DEFAULT NULL,
  `payment_status` longtext,
  `payment_details` longtext,
  `payment_timestamp` longtext,
  `grand_total` longtext,
  `sale_datetime` longtext,
  `delivary_datetime` longtext,
  `delivery_status` longtext,
  `viewed` longtext
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
`slider_id` int(11) NOT NULL,
  `elements` longtext,
  `status` longtext,
  `title` longtext,
  `style` varchar(20) DEFAULT NULL,
  `serial` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `elements`, `status`, `title`, `style`, `serial`) VALUES
(2, '{"images":[],"texts":[{"name":"text_1","text":"WELCOME","color":"rgba(255,255,255,1)","background":"rgba(0,0,0,0)"},{"name":"text_2","text":"YOUR SHOP NAME","color":"rgba(255,255,255,1)","background":"rgba(0,0,0,0)"},{"name":"text_3","text":"SHOP TITLE","color":"rgba(255,255,255,1)","background":"rgba(0,0,0,0)"}]}', 'ok', 'Welcome 2', '1', 2),
(4, '{"images":[],"texts":[{"name":"text_1","text":"Introducing ","color":"rgba(33,38,51,1)","background":"rgba(0,0,0,0)"},{"name":"text_2","text":"Active Super Shop","color":"rgba(101,3,199,1)","background":"rgba(0,0,0,0)"},{"name":"text_3","text":"Multi-vendor CMS cersion 1.4","color":"rgba(167,0,181,1)","background":"rgba(0,0,0,0)"}]}', 'ok', 'Welcome Slider', '1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `slider_style`
--

CREATE TABLE IF NOT EXISTS `slider_style` (
`slider_style_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` longtext
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_style`
--

INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(1, 'WELCOME TYPE 1', '{\n   "full_slide_style":"data-ls=\\"slidedelay:6500;transition2d:all;transition3d:15;\\"",\n   "background":"bg",\n   "images":[\n\n   ],\n   "texts":[\n      {\n         "element":"h1",\n         "show_name":"WELCOME",\n         "name":"text_1",\n         "style":"top:30%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:50px;",\n         "data_ls":"offsetxin:0; durationin:2500; offsetxout:0; durationout:2500; showuntil:1;",\n         "color":"#ffffff",\n         "background":"rgba(0,0,0,0)"\n      },\n      {\n         "element":"h1",\n         "show_name":"YOUR SHOP NAME",\n         "name":"text_2",\n         "style":"top:50%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:100px;  white-space: nowrap;",\n         "data_ls":"offsetxin:0; durationin:2500; delayin:500; offsetxout:0; durationout:2500; showuntil:1;",\n         "color":"#ffffff",\n         "background":"rgba(0,0,0,0)"\n      },\n      {\n         "element":"h1",\n         "show_name":"SHOP TITLE",\n         "name":"text_3",\n         "style":"top:70%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:40px; white-space: nowrap;",\n         "data_ls":"offsetxin:0; durationin:2500; delayin:1200; offsetxout:0; durationout:2500; showuntil:1;",\n         "color":"#ffffff",\n         "background":"rgba(0,0,0,0)"\n      }\n   ]\n}'),
(2, 'WELCOME TYPE 2', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:4500;transition2d:24,25,27,28,34,35,37,38,110,113;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Image 1",\r\n         "name":"ase",\r\n         "style":"top:20px; left:50%;width:220px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:4600; easingin:easeOutQuad; fadein:false; rotatein:-10; offsetxout:0; durationout:1500;"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"WELCOME TO",\r\n         "name":"text_1",\r\n         "style":"top:260px; left:50%; text-align: center;  font-weight: 300; width:300px; height:60px; font-size:30px; line-height:60px; border-radius:5px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; scalexin:0; scaleyin:0; offsetxout:0; offsetyout:top; durationout:750; durationin:1000; fadeout:false;",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"YOUR SHOP NAME",\r\n         "name":"text_2",\r\n         "style":"top:340px; left:50%; text-align: center; font-weight: 300; width:500px; height:100px; font-size:40px; line-height:100px; border-radius:5px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; scalexin:0; scaleyin:0; offsetxout:0; offsetyout:bottom; durationin:1000; durationout:750; fadeout:false;",\r\n         "color":"#ffffff",\r\n         "background":"#8D00B0"\r\n      }\r\n   ]\r\n}'),
(3, 'SLIDER TYPE 1', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7000;transition2d:76,77,78,79;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Product Image 1",\r\n         "name":"circle_1",\r\n         "style":"top:35%; left:60%;width:200px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:750; delayin:1500; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; showuntil:1; easingout:easeInQuart; fadeout:false; "\r\n      },\r\n      {\r\n         "show_name":"Product Image 2",\r\n         "name":"circle_2",\r\n         "style":"top:35%; left:60%;width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:750; delayin:3000; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; showuntil:1; easingout:easeInQuart; fadeout:false; "\r\n      },\r\n      {\r\n         "show_name":"Product Image 3",\r\n         "name":"circle_3",\r\n         "style":"top:35%; left:60%;width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:750; delayin:4500; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; easingout:easeInQuart; fadeout:false; "\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_1",\r\n         "style":"top:105px; left:30px; text-align: center; font-weight: 300; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5;",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px; left:85px; font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_2",\r\n         "style":"top:155px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:500; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px; left:85px; font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; delayin:500; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_3",\r\n         "style":"top:205px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:1000; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:left; delayin:1000; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_4",\r\n         "style":"top:255px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX;  border-radius:100px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:1500; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5;",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; delayin:1500; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_5",\r\n         "style":"top:305px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:2000; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; delayin:2000; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE 1",\r\n         "name":"product_title_1",\r\n         "style":"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:450; delayin:1750; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; showuntil:51; easingout:easeInQuart; scalexout:3; scaleyout:3;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE 2",\r\n         "name":"product_title_2",\r\n         "style":"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:0; durationin:450; delayin:3250; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; showuntil:51; easingout:easeInQuart; scalexout:3; scaleyout:3;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE 3",\r\n         "name":"product_title_3",\r\n         "style":"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:450; delayin:4750; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; easingout:easeInQuart; scalexout:3; scaleyout:3;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(4, 'SLIDER TYPE 2', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:4500;transition2d:105,106;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:100px;left:80px; white-space:nowrap; width:220px;",\r\n         "data_ls":"offsetxin:left;durationin:1500; delayin:1400; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:100px;left:180px; white-space:nowrap;width:220px; ",\r\n         "data_ls":"offsetxin:left;durationin:1500; delayin:1200; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "style":"top:100px;left:280px; white-space:nowrap; width:220px;",\r\n         "data_ls":"offsetxin:left;durationin:1500; delayin:1000; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_3",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:20px;left:700px; font-weight:300; font-size:40px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:1000; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURe 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:2300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:2800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 6",\r\n         "name":"product_feature_6",\r\n         "style":"top:350px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:3300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_1",\r\n         "style":"top:107px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_2",\r\n         "style":"top:157px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_3",\r\n         "style":"top:207px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_4",\r\n         "style":"top:257px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_5",\r\n         "style":"top:307px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_6",\r\n         "style":"top:357px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:3000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      }\r\n   ]\r\n}'),
(5, 'SLIDER TYPE 3', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:105,106;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:100px;left:580px;width:220px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:right;durationin:1500; delayin:1400; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:100px;left:680px;width:220px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:right;durationin:1500; delayin:1200; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "style":"top:100px;left:780px;width:220px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:right;durationin:1500; delayin:1000; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_3",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:20px;left:80px; font-weight:300; font-size:40px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:1000; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_1",\r\n         "style":"top:107px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_2",\r\n         "style":"top:157px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_3",\r\n         "style":"top:207px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_4",\r\n         "style":"top:257px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:2300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_5",\r\n         "style":"top:307px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px;left:116px; font-weight:300; font-size:30px; white-space:nowrap;",\r\n         "data_ls":"offsetxin:0;delayin:2800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_6",\r\n         "style":"top:357px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:3000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 6",\r\n         "name":"product_feature_6",\r\n         "style":"top:350px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:3300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(6, 'SLIDER TYPE 4', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:105,106;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "name":"long_1",\r\n         "style":"top:60px;left:578px;width:200px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; ",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "name":"semi_long_1",\r\n         "style":"top:170px;left:800px;width:200px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; ",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "name":"square_1",\r\n         "style":"top:265px;left:1020px;width:200px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; ",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h1",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:20px;left:50px; font-size:50px; font-weight:300; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:3000; delayin:500; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; bottom; 0; offsetxout:0; rotatexout:90; transformoriginout:50; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:1000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:1500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:2000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:2500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 6",\r\n         "name":"product_feature_6",\r\n         "style":"top:350px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:3000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 7",\r\n         "name":"product_feature_7",\r\n         "style":"top:400px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:3500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(7, 'SLIDER TYPE 5', '{\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:73,102;\\"",\n   "background":"bg_apple",\n   "images":[\n      {\n         "name":"long_1",\n         "style":"top:50%; left:50%;width:200px; white-space:nowrap;",\n         "data_ls" : "",\n         "show_name":"IMAGE"\n      }\n   ],\n   "texts":[\n      {\n         "element":"h6",\n         "show_name":"PRICE",\n         "name":"price",\n         "style":"top:55%; left:39%; durationin:500; delayin:600; fadein:false; rotatein:30; durationout:500; fadeout:false; slidedirection:fade; slideoutdirection:fade; scalein:0.1; scaleout:0.1; font-weight:300; box-shadow:0px 2px 8px -2px black; padding-top:5px; padding-right:20px; padding-bottom:5px; padding-left:20px; font-size:30px; color:#ffffff; background:#B816B2; border-radius:5px; white-space:nowrap;",\n         "data_ls" : "",\n         "color":"#ffffff",\n         "background":"#b816b2"\n      },\n      {\n         "element":"h6",\n         "show_name":"PRODUCT TITLE",\n         "name":"product_title",\n         "style":"top:45%; left:36%; durationin:500; delayin:500; fadein:false; rotatein:-30; durationout:500; fadeout:false; slidedirection:fade; slideoutdirection:fade; scalein:0.1;scaleout:0.1; font-weight:300; box-shadow:0px 2px 8px -2px black; padding-top:5px; padding-right:20px; padding-bottom:5px; padding-left:20px; font-size:30px; color:#ffffff; background:#760093;border-radius:5px; white-space:nowrap;",\n         "data_ls" : "",\n         "color":"#ffffff",\n         "background":"#760093"\n      }\n   ]\n}'),
(8, 'SLIDER TYPE 6', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:73,102;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:100px;left:100px; width:250px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:3000; delayin:1500; rotateyin:90; transformoriginin:left; 0; offsetxout:0; durationout:750; rotateyout:90; transformoriginout:left; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:100px;left:400px; width:250px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:3000; delayin:1500; rotateyin:-90; transformoriginin:right; 0; offsetxout:0; durationout:750; rotateyout:90; transformoriginout:right; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h1",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"font-family:Roboto;top:25px; left:192px; font-weight:100; text-align:center; width:340px; font-size:40px; border-radius:5px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:2500; delayin:2000; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; bottom; 0; offsetxout:0; rotateout:-90; transformoriginout:left; ",\r\n         "color":"#34009d",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":" DUMMY TEXT 1",\r\n         "name":"dummy_text_1",\r\n         "style":"top:50px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:2300; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 2",\r\n         "name":"dummy_text_2",\r\n         "style":"top:90px;left:800px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:2700; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 3",\r\n         "name":"dummy_text_3",\r\n         "style":"top:150px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:3000; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 4",\r\n         "name":"dummy_text_4",\r\n         "style":"top:190px;left:800px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:3400; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 5",\r\n         "name":"dummy_text_5",\r\n         "style":"top:250px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:3700; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:290px;left:799px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:4100; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 7",\r\n         "name":"dummy_text_7",\r\n         "style":"top:360px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:4400; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 8",\r\n         "name":"dummy_text_8",\r\n         "style":"top:400px;left:799px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:4800; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(9, 'SLIDER TYPE 7', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:73,102;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:50px; left:50%;width:278px; white-space:nowrap;",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"IMAGE"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 1",\r\n         "name":"dummy_text_1",\r\n         "style":"top:80px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 2",\r\n         "name":"dummy_text_2",\r\n         "style":"top:140px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 3",\r\n         "name":"dummy_text_3",\r\n         "style":"top:200px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 4",\r\n         "name":"dummy_text_4",\r\n         "style":"top:260px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 5",\r\n         "name":"dummy_text_5",\r\n         "style":"top:320px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:380px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:50%;left:900px; font-weight:100; text-align:right; padding:15px; font-size:40px; line-height:37px; font-family:roboto; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:2500; delayin:3250; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; top; 0; offsetxout:0; durationout:1000; rotatexout:90; transformoriginout:50; bottom; ",\r\n         "color":"#fff",\r\n         "background":"#11008b"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:505px;left:983px; font-family:; flower; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;delayin:3500; skewxin:60; scalexin:1.5; offsetxout:-50; durationout:1000; skewxout:60; scalexout:1.5; ",\r\n         "color":"#d9482b",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(10, 'SLIDER TYPE 8', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7000;transition2d:76,77,78,79;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:120px; left:42%;width:180px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:120px; left:58%;width:180px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "style":"top:50px; left:50%;width:200px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"long_1",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 1",\r\n         "name":"dummy_text_1",\r\n         "style":"top:80px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 2",\r\n         "name":"dummy_text_2",\r\n         "style":"top:140px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 3",\r\n         "name":"dummy_text_3",\r\n         "style":"top:200px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 4",\r\n         "name":"dummy_text_4",\r\n         "style":"top:260px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 5",\r\n         "name":"dummy_text_5",\r\n         "style":"top:320px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:380px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:50%;left:900px; font-weight:100; text-align:right; padding:15px; font-size:40px; line-height:37px; font-family:roboto; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:2500; delayin:3250; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; top; 0; offsetxout:0; durationout:1000; rotatexout:90; transformoriginout:50; bottom; ",\r\n         "color":"#fff",\r\n         "background":"#11008b"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 7",\r\n         "name":"dummy_text_7",\r\n         "style":"top:505px;left:983px; font-family:; flower; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;delayin:3500; skewxin:60; scalexin:1.5; offsetxout:-50; durationout:1000; skewxout:60; scalexout:1.5; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}');
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(11, 'WELCOME TYPE 3', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:8000;transition2d:4;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Image 1",\r\n         "name":"ase",\r\n         "style":"top:45%; left:45%;width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:1500; delayin:3000; rotateyin:90; transformoriginin:right 50% 0; offsetxout:0; durationout:1500; showuntil:1000; rotateyout:-90; transformoriginout:right 50% 0;"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"p",\r\n         "show_name":"Introducing",\r\n         "name":"text_1",\r\n         "style":"top:40%; left:50%; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:50; durationin:750; easingin:easeOutBack; skewxin:-50; offsetxout:-50; durationout:600; showuntil:1500; easingout:easeInBack; skewxout:50;",\r\n         "color":"#C505BD",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"Your Shop Name",\r\n         "name":"text_2",\r\n         "style":"top:50%; left:50%; font-weight: 300; font-size:50px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:-100; durationin:750; delayin:250; easingin:easeOutBack; skewxin:-50; offsetxout:100; durationout:600; showuntil:1500; easingout:easeInBack; skewxout:50;",\r\n         "color":"#8D00AF",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"your Shop Slogan",\r\n         "name":"text_3",\r\n         "style":"top:47%; left:690px; font-weight: 300; font-size:35px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:1500; delayin:3000; rotateyin:90; transformoriginin:left 50% 0; offsetxout:0; durationout:1500; showuntil:1500; rotateyout:-90; transformoriginout:left 50% 0;",\r\n         "color":"#8D00AF",\r\n         "background":"rgba(1,1,1,0)"\r\n      }\r\n   ]\r\n}'),
(12, 'SLIDER TYPE 9', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:9500;transition2d:5;timeshift:-3000;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Image 1",\r\n         "name":"semi_long_1",\r\n         "style":"top:120px; left:300px; width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:100; durationin:2000; delayin:1000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;"\r\n      },\r\n      {\r\n         "show_name":"Image 2",\r\n         "name":"semi_long_2",\r\n         "style":"top:120px; left:200px; width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:100; durationin:2000; delayin:2000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;"\r\n      },\r\n      {\r\n         "show_name":"Image 3",\r\n         "name":"semi_long_3",\r\n         "style":"top:120px; left:100px; width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:100; durationin:2000; delayin:3000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h1",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"text_1",\r\n         "style":"top:60px; left:800px; font-weight: 300; font-size:50px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:50; durationin:3000; rotateyin:60; transformoriginin:right 50% 0; offsetxout:-50; durationout:3000; rotateyout:-60; transformoriginout:left 50% 0;",\r\n         "color":"#730091",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"h2",\r\n         "show_name":"BIG SALE",\r\n         "name":"text_2",\r\n         "style":"top:120px; left:801px; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:-50; durationin:3000; delayin:500; rotateyin:-60; transformoriginin:left 50% 0; offsetxout:50; durationout:3000; rotateyout:60; transformoriginout:right 50% 0;",\r\n         "color":"#FA6BF3",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"h3",\r\n         "show_name":"$99",\r\n         "name":"text_3",\r\n         "style":"top:200px; left:850px; font-weight: 300; font-size:120px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:4000; delayin:2000; rotateyin:450; transformoriginin:left 50% 0; offsetxout:0; durationout:500; easingout:easeInBack; rotateyout:90; transformoriginout:left 50% 0;",\r\n         "color":"#730091",\r\n         "background":"rgba(1,1,1,0)"\r\n      }\r\n   ]\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE IF NOT EXISTS `slides` (
`slides_id` int(11) NOT NULL,
  `button_color` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `text_color` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `button_text` varchar(300) NOT NULL,
  `button_link` varchar(500) NOT NULL,
  `uploaded_by` longtext NOT NULL,
  `added_by` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slides_id`, `button_color`, `text_color`, `button_text`, `button_link`, `uploaded_by`, `added_by`, `status`) VALUES
(3, '', '', '', '', 'admin', '{"type":"admin","id":"1"}', 'ok'),
(4, '', '', '', '', 'admin', '{"type":"admin","id":"1"}', 'ok'),
(14, '', '', '', '', 'admin', '{"type":"admin","id":"1"}', 'ok'),
(15, 'rgba(0,151,143,1)', 'rgba(255,255,255,1)', 'Browse', 'http://developers.activeitzone.com/activesupershopv1.4/', 'vendor', '{"type":"vendor","id":"3"}', NULL),
(16, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{"type":"vendor","id":"3"}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE IF NOT EXISTS `social_links` (
`social_links_id` int(11) NOT NULL,
  `type` longtext COLLATE utf8_unicode_ci,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`social_links_id`, `type`, `value`) VALUES
(1, 'facebook', 'http://facebook.com/'),
(2, 'google-plus', 'http://google.com/'),
(3, 'twitter', 'http://twitter.com/'),
(4, 'skype', 'http://skype.com/'),
(5, 'pinterest', 'http://pinterest.com/'),
(6, 'youtube', 'http://youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
`stock_id` int(11) NOT NULL,
  `type` longtext,
  `category` longtext,
  `sub_category` longtext,
  `product` longtext,
  `quantity` longtext,
  `rate` longtext,
  `total` longtext,
  `reason_note` longtext,
  `datetime` longtext,
  `sale_id` varchar(30) DEFAULT NULL,
  `added_by` varchar(50) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `type`, `category`, `sub_category`, `product`, `quantity`, `rate`, `total`, `reason_note`, `datetime`, `sale_id`, `added_by`) VALUES
(1, 'add', '6', '15', '42', '50', '140.00', '7000', '', '1474202947', NULL, NULL),
(2, 'add', '6', '13', '41', '80', '220.00', '17600', '', '1474205403', NULL, NULL),
(3, 'add', '3', '19', '45', '10', '400.00', '4000', '', '1474273237', NULL, '{"type":"vendor","id":"2"}'),
(4, 'destroy', '3', '19', '45', '3', NULL, '3', '', '1474273259', NULL, '{"type":"vendor","id":"2"}'),
(5, 'add', '7', '24', '46', '50', '170.00', '8500', '', '1474279907', NULL, '{"type":"vendor","id":"3"}'),
(6, 'add', '7', '23', '47', '25', '8.00', '200', '', '1474283137', NULL, '{"type":"vendor","id":"3"}'),
(7, 'add', '7', '25', '48', '35', '6.00', '210', '', '1474284193', NULL, '{"type":"vendor","id":"3"}'),
(8, 'add', '5', '29', '50', '50', '15.25', '762.5', '', '1474485138', NULL, '{"type":"vendor","id":"3"}'),
(9, 'add', '5', '29', '49', '45', '34.35', '1545.75', '', '1474485156', NULL, '{"type":"vendor","id":"3"}'),
(10, 'add', '5', '29', '51', '25', '11.11', '277.75', '', '1474485808', NULL, '{"type":"vendor","id":"3"}'),
(11, 'add', '5', '29', '52', '18', '9.56', '172.08', '', '1474487386', NULL, '{"type":"vendor","id":"3"}'),
(12, 'add', '5', '27', '53', '10', '85.00', '850', '', '1474488421', NULL, '{"type":"vendor","id":"3"}'),
(13, 'add', '5', '27', '55', '15', '101.00', '1515', '', '1474489704', NULL, '{"type":"vendor","id":"3"}'),
(14, 'add', '5', '27', '54', '15', '100.00', '1500', '', '1474489715', NULL, '{"type":"vendor","id":"3"}'),
(15, 'add', '5', '27', '56', '25', '85.00', '2125', '', '1474490017', NULL, '{"type":"vendor","id":"3"}'),
(16, 'add', '5', '28', '57', '20', '65.00', '1300', '', '1474490674', NULL, '{"type":"vendor","id":"3"}'),
(17, 'add', '5', '28', '58', '25', '60.00', '1500', '', '1474491530', NULL, '{"type":"vendor","id":"3"}'),
(18, 'add', '5', '28', '59', '20', '65.00', '1300', '', '1474492165', NULL, '{"type":"vendor","id":"3"}'),
(19, 'add', '5', '30', '61', '100', '41.00', '4100', '', '1474493210', NULL, '{"type":"vendor","id":"3"}'),
(20, 'add', '5', '28', '60', '20', '75.00', '1500', '', '1474493219', NULL, '{"type":"vendor","id":"3"}'),
(21, 'add', '5', '30', '62', '80', '620.00', '49600', '', '1474493510', NULL, '{"type":"vendor","id":"3"}'),
(22, 'add', '5', '30', '63', '50', '650.00', '32500', '', '1474493879', NULL, '{"type":"vendor","id":"3"}'),
(23, 'add', '4', '9', '65', '30', '11.26', '337.8', '', '1474572304', NULL, '{"type":"vendor","id":"5"}'),
(24, 'add', '4', '9', '66', '35', '15.35', '537.25', '', '1474572782', NULL, '{"type":"vendor","id":"5"}'),
(25, 'add', '4', '9', '67', '30', '13.20', '396', '', '1474574151', NULL, '{"type":"vendor","id":"5"}'),
(26, 'add', '4', '10', '68', '20', '12.36', '247.2', '', '1474575119', NULL, '{"type":"vendor","id":"5"}'),
(27, 'add', '4', '10', '69', '30', '8.20', '245.99999999999997', '', '1474575712', NULL, '{"type":"vendor","id":"5"}'),
(28, 'add', '4', '11', '70', '25', '3.35', '83.75', '', '1474576989', NULL, '{"type":"vendor","id":"5"}'),
(29, 'add', '4', '11', '71', '50', '2.88', '144', '', '1474577860', NULL, '{"type":"vendor","id":"5"}'),
(30, 'add', '4', '11', '72', '10', '8.90', '89', '', '1474578795', NULL, '{"type":"vendor","id":"5"}'),
(31, 'add', '4', '36', '73', '15', '38.32', '574.8', '', '1474580033', NULL, '{"type":"vendor","id":"5"}'),
(32, 'add', '4', '36', '74', '20', '41.38', '827.6', '', '1474580235', NULL, '{"type":"vendor","id":"5"}'),
(33, 'add', '4', '36', '75', '20', '39.63', '792.6', '', '1474580993', NULL, NULL),
(34, 'add', '1', '3', '76', '10', '43567.00', '435670', '', '1474721288', NULL, '{"type":"vendor","id":"3"}'),
(35, 'add', '1', '3', '77', '15', '58378.00', '875670', '', '1474722264', NULL, '{"type":"vendor","id":"3"}'),
(36, 'add', '1', '3', '78', '20', '131772.00', '2635440', '', '1474722788', NULL, '{"type":"vendor","id":"3"}'),
(37, 'add', '1', '63', '79', '5', '1734589.00', '8672945', '', '1474790400', NULL, '{"type":"vendor","id":"3"}'),
(38, 'add', '1', '63', '80', '10', '558900.00', '5589000', '', '1474792233', NULL, NULL),
(39, 'add', '1', '63', '81', '5', '3234690.00', '16173450', '', '1474792382', NULL, NULL),
(40, 'add', '1', '63', '82', '8', '4467490.00', '35739920', '', '1474792879', NULL, NULL),
(41, 'add', '1', '5', '83', '12', '11670.00', '140040', '', '1474793757', NULL, NULL),
(42, 'add', '1', '5', '84', '25', '42879.00', '1071975', '', '1474796354', NULL, NULL),
(43, 'add', '1', '5', '85', '18', '74590.00', '1342620', '', '1474796688', NULL, NULL),
(44, 'add', '1', '2', '86', '16', '45000.00', '720000', '', '1474799085', NULL, NULL),
(45, 'add', '1', '6', '87', '10', '41000.00', '410000', '', '1474800049', NULL, NULL),
(46, 'add', '1', '6', '88', '25', '33890.00', '847250', '', '1474800332', NULL, NULL),
(47, 'add', '1', '6', '89', '10', '42000.00', '420000', '', '1474801376', NULL, NULL),
(48, 'add', '2', '62', '90', '45', '61897.00', '2785365', '', '1474802601', NULL, NULL),
(49, 'add', '2', '17', '92', '55', '42000.00', '2310000', '', '1474803009', NULL, '{"type":"vendor","id":"3"}'),
(50, 'add', '2', '62', '91', '10', '65000.00', '650000', '', '1474889590', NULL, NULL),
(52, 'add', '4', '10', '69', '0', '8.20', '0', '', '1475390469', NULL, NULL),
(53, 'add', '2', '18', '93', '10', '350.00', '3500', '', '1475483558', NULL, NULL),
(54, 'add', '2', '18', '94', '10', '350.00', '3500', '', '1475485603', NULL, NULL),
(56, 'add', '2', '18', '96', '100', '350.00', '35000', '', '1475498670', NULL, NULL),
(59, 'add', '1', '3', '4', '100', '88000.00', '8800000', '', '1476007723', NULL, NULL),
(60, 'add', '1', '2', '1', '50', '120000.00', '6000000', '', '1476007803', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE IF NOT EXISTS `subscribe` (
`subscribe_id` int(11) NOT NULL,
  `email` varchar(600) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`subscribe_id`, `email`) VALUES
(1, 'akibtanjim@gmail.com'),
(2, 'lashik7@gmail.com'),
(3, 'lashik7@gmaill.com'),
(4, 'lashik7@gmhaill.com');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE IF NOT EXISTS `sub_category` (
`sub_category_id` int(11) NOT NULL,
  `sub_category_name` longtext,
  `category` longtext,
  `brand` varchar(2000) NOT NULL DEFAULT '[]',
  `digital` varchar(10) DEFAULT NULL,
  `banner` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `sub_category_name`, `category`, `brand`, `digital`, `banner`) VALUES
(1, 'Car', '1', '["41","40","39","38","44","45","46","47","51","52","54"]', NULL, 'sub_category_1.jpg'),
(2, 'Racing Car', '1', '["41","40","39","38","45","46","47","50","51","52","54","55"]', NULL, 'sub_category_2.jpg'),
(3, 'Luxury SUV', '1', '["41","40","39","45","47","51","54"]', NULL, 'sub_category_3.jpg'),
(5, 'Chopper Bike', '1', '["39","45","48","52","56","57"]', NULL, 'sub_category_5.jpg'),
(6, 'Racing Bike', '1', '["45","52","57"]', NULL, 'sub_category_6.jpg'),
(8, 'Party Dress', '4', '["8","10","11"]', NULL, 'sub_category_8.jpg'),
(9, 'Women Secret', '4', '["10","13","14","15"]', NULL, 'sub_category_9.jpg'),
(10, 'Sleeping Dress', '4', '["10","11","14","15"]', NULL, 'sub_category_10.jpg'),
(11, 'Beauty & Health', '4', '["8","9"]', NULL, 'sub_category_11.jpg'),
(27, 'Formal Dress', '5', '["22","25","26","27","30"]', NULL, 'sub_category_27.jpg'),
(28, 'Men''s shoe', '5', '["17","23","24","33","35"]', NULL, 'sub_category_28.jpg'),
(29, 'Casual Dress', '5', '["20","21","23","31","37"]', NULL, 'sub_category_29.jpg'),
(30, 'Men Watch', '5', '["17","18","23","29","31","34","63"]', NULL, 'sub_category_30.jpg'),
(34, 'Bridal Attire', '4', '["6","7","9","13"]', NULL, 'sub_category_34.jpg'),
(35, 'Formal Dress', '4', '["8","11","15","16"]', NULL, 'sub_category_35.jpg'),
(36, 'Women''s Shoe', '4', '["11","12","14","15","19"]', NULL, 'sub_category_36.jpg'),
(37, 'Fragrance World', '4', '["7","10","11","14","15","100","101","102"]', NULL, 'sub_category_37.jpg'),
(39, 'Women''s Time Zone', '4', '["15","16","17","18","19"]', NULL, 'sub_category_39.jpg'),
(40, 'Casual wear', '4', '["7","8","15","17"]', NULL, 'sub_category_40.jpg'),
(63, 'Private Air', '1', '["40","39","38","46","47","55"]', NULL, 'sub_category_63.jpg'),
(64, 'HTML', '12', '[]', 'ok', 'sub_category_64.jpg'),
(65, 'CSS', '12', '[]', 'ok', 'sub_category_65.jpg'),
(66, 'php', '12', '[]', 'ok', 'sub_category_66.jpg'),
(67, 'wordpress', '12', '[]', 'ok', 'sub_category_67.jpg'),
(72, 'Logo design', '13', '[]', 'ok', 'sub_category_72.jpg'),
(73, '3D Design', '13', '[]', 'ok', 'sub_category_73.jpg'),
(74, 'Web element', '13', '[]', 'ok', 'sub_category_74.jpg'),
(75, 'Printing solution', '13', '[]', 'ok', 'sub_category_75.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
`ticket_id` int(11) NOT NULL,
  `time` varchar(30) DEFAULT NULL,
  `from_where` varchar(100) DEFAULT NULL,
  `to_where` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `view_status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `time`, `from_where`, `to_where`, `subject`, `view_status`) VALUES
(1, '1475585594', '{"type":"user","id":"3"}', '{"type":"admin","id":""}', 'check', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_message`
--

CREATE TABLE IF NOT EXISTS `ticket_message` (
`ticket_message_id` int(11) NOT NULL,
  `time` varchar(30) DEFAULT NULL,
  `from_where` varchar(100) DEFAULT NULL,
  `to_where` varchar(100) DEFAULT NULL,
  `ticket_id` int(11) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `view_status` varchar(100) DEFAULT NULL,
  `message` longtext
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_message`
--

INSERT INTO `ticket_message` (`ticket_message_id`, `time`, `from_where`, `to_where`, `ticket_id`, `subject`, `view_status`, `message`) VALUES
(1, '1475585594', '{"type":"user","id":"3"}', '{"type":"admin","id":""}', 1, 'check', '{"user_show":"ok","admin_show":"ok"}', 'check ticket'),
(2, '1476180432', '{"type":"user","id":"3"}', '{"type":"admin","id":""}', 1, 'check', '{"user_show":"ok","admin_show":"ok"}', 'example ticket'),
(3, '1476180432', '{"type":"user","id":"3"}', '{"type":"admin","id":""}', 1, 'check', '{"user_show":"ok","admin_show":"ok"}', 'example ticket');

-- --------------------------------------------------------

--
-- Table structure for table `ui_settings`
--

CREATE TABLE IF NOT EXISTS `ui_settings` (
`ui_settings_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ui_settings`
--

INSERT INTO `ui_settings` (`ui_settings_id`, `type`, `value`) VALUES
(5, 'filter_div', 'on'),
(6, 'admin_login_logo', '46'),
(7, 'admin_nav_logo', '18'),
(8, 'home_top_logo', '70'),
(9, 'home_bottom_logo', '76'),
(11, 'fav_ext', 'png'),
(12, 'side_bar_pos_category', 'right'),
(14, 'footer_color', 'purple-1'),
(15, 'header_color', 'purple-1'),
(19, 'parallax_blog_title', 'LATEST BLOGS'),
(16, 'font', 'Roboto'),
(17, 'parallax_vendor_title', 'OUR VENDOR'),
(18, 'home_page_style', '2'),
(20, 'no_of_featured_products', '6'),
(21, 'no_of_vendor', '10'),
(22, 'no_of_brands', '12'),
(23, 'brand_show', 'no'),
(24, 'featured_show', 'ok'),
(25, 'vandors_show', 'no'),
(26, 'blog_show', 'no'),
(27, 'parallax_search_title', 'Search Products'),
(28, 'no_of_blog', '3'),
(29, 'featured_product_box_style', '2'),
(30, 'no_of_todays_deal', '6'),
(31, 'special_products_show', 'ok'),
(32, 'category_slides', 'ok'),
(33, 'home_categories', '[{"category":"4","sub_category":["9","10","11","36"],"color_back":"rgba(245,125,255,1)","color_text":"rgba(255,255,255,1)"},{"category":"1","sub_category":["3","5","63"],"color_back":"rgba(71,4,103,1)","color_text":"rgba(255,255,255,1)"}]'),
(34, 'category_product_box_style', '2'),
(35, 'top_slide_categories', '["1","4","5","16","17","18","19","20","12","13"]');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(11) NOT NULL,
  `username` longtext,
  `surname` varchar(100) DEFAULT NULL,
  `email` longtext,
  `phone` longtext,
  `address1` longtext,
  `address2` longtext,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(30) DEFAULT NULL,
  `langlat` varchar(100) DEFAULT NULL,
  `password` longtext,
  `fb_id` longtext,
  `g_id` varchar(50) DEFAULT NULL,
  `g_photo` longtext,
  `creation_date` longtext,
  `google_plus` longtext,
  `skype` longtext,
  `facebook` longtext,
  `wishlist` longtext,
  `last_login` varchar(50) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT 'default',
  `user_type_till` varchar(200) DEFAULT NULL,
  `left_product_type` varchar(5000) NOT NULL DEFAULT '[]',
  `downloads` varchar(10000) NOT NULL DEFAULT '[]'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `surname`, `email`, `phone`, `address1`, `address2`, `city`, `zip`, `langlat`, `password`, `fb_id`, `g_id`, `g_photo`, `creation_date`, `google_plus`, `skype`, `facebook`, `wishlist`, `last_login`, `user_type`, `user_type_till`, `left_product_type`, `downloads`) VALUES
(1, 'rorurehy', 'Fleming', 'miromumyp@yahoo.com', '+532-55-5730682', 'Fuga Enim necessitatibus proident omnis quis aut voluptatibus iste dolore quis neque adipisicing ut', 'Et ea vitae porro error labore impedit autem voluptates vel voluptas dolores mollitia', 'Voluptatem totam sit in fugiat delectus illo aliquam culpa dolor', '88604', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1474453509', NULL, NULL, NULL, '[]', '1475659729', 'default', NULL, '[]', '[]'),
(2, 'rorurehy', 'Fleming', 'miromumyp1@yahoo.com', '+532-55-5730682', 'Fuga Enim necessitatibus proident omnis quis aut voluptatibus iste dolore quis neque adipisicing ut', 'Et ea vitae porro error labore impedit autem voluptates vel voluptas dolores mollitia', 'Voluptatem totam sit in fugiat delectus illo aliquam culpa dolor', '88604', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1474453555', NULL, NULL, NULL, '[]', '1474453573', 'default', NULL, '[]', '[]'),
(3, 'john Doe', NULL, 'flood8289@gmail.com', '1000452345', 'Demo address  line 1', 'Demo address  line 2', 'Newyork', '1234', '(40.7127837, -74.00594130000002)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1474454007', '', '', '', '["63","100","99","73","71","57","55","82","83"]', '1476179570', 'default', NULL, '[]', '[{"sale":1,"product":"44"}]'),
(4, 'Developer Activeitzone', NULL, 'required', NULL, NULL, NULL, NULL, NULL, NULL, '8cb623db6471', NULL, '107111794830756336948', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50', '1475421685', NULL, NULL, NULL, '[]', '1475421685', 'default', NULL, '[]', '[]'),
(7, 'Zahid Hasan', 'Alvi', 'customer.demo@gmail.com', '+8801867225609', 'Niketon, Gulshan', 'Dhaka, Bangladesh', 'Dhaka', '1219', '(23.7737497, 90.4118585)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1475479276', NULL, NULL, NULL, '[]', '1475497130', 'default', NULL, '[]', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
`user_type_id` int(11) NOT NULL,
  `name` longtext,
  `details` longtext,
  `price` longtext,
  `status` longtext,
  `logo` longtext,
  `product_type` longtext
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`user_type_id`, `name`, `details`, `price`, `status`, `logo`, `product_type`) VALUES
(25, 'Gold', '"20-day"', '0', 'ok', NULL, '[{"product_type":"7","piece":"12"},{"product_type":"8","piece":"5"},{"product_type":"9","piece":"4"}]'),
(26, 'Bronge', '"1-day"', '12', 'ok', NULL, '[{"product_type":"7","piece":"15"},{"product_type":"8","piece":"20"},{"product_type":"9","piece":"3"}]'),
(27, 'Premium', 'unlimited', '10000000', 'ok', NULL, '[{"product_type":"7","piece":"20"},{"product_type":"8","piece":"500"},{"product_type":"9","piece":"2"}]'),
(28, 'New', '"30-day"', '200', 'ok', NULL, '[{"product_type":"7","piece":"50"},{"product_type":"8","piece":"100"},{"product_type":"9","piece":"20"}]');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE IF NOT EXISTS `vendor` (
`vendor_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `company` varchar(500) DEFAULT NULL,
  `display_name` varchar(500) DEFAULT NULL,
  `address1` longtext,
  `address2` longtext,
  `status` varchar(10) DEFAULT NULL,
  `membership` varchar(50) DEFAULT NULL,
  `create_timestamp` int(20) DEFAULT NULL,
  `approve_timestamp` int(20) DEFAULT NULL,
  `member_timestamp` int(20) DEFAULT NULL,
  `member_expire_timestamp` int(11) DEFAULT NULL,
  `details` longtext,
  `last_login` int(20) DEFAULT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `skype` varchar(300) DEFAULT NULL,
  `google_plus` varchar(300) DEFAULT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `youtube` varchar(300) DEFAULT NULL,
  `pinterest` varchar(300) DEFAULT NULL,
  `stripe_details` varchar(500) DEFAULT NULL,
  `paypal_email` varchar(200) DEFAULT NULL,
  `preferred_payment` varchar(100) DEFAULT NULL,
  `cash_set` varchar(20) DEFAULT NULL,
  `stripe_set` varchar(20) DEFAULT NULL,
  `paypal_set` varchar(20) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `keywords` longtext,
  `description` longtext,
  `lat_lang` varchar(300) NOT NULL DEFAULT '(0,0)'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `name`, `email`, `password`, `company`, `display_name`, `address1`, `address2`, `status`, `membership`, `create_timestamp`, `approve_timestamp`, `member_timestamp`, `member_expire_timestamp`, `details`, `last_login`, `facebook`, `skype`, `google_plus`, `twitter`, `youtube`, `pinterest`, `stripe_details`, `paypal_email`, `preferred_payment`, `cash_set`, `stripe_set`, `paypal_set`, `phone`, `keywords`, `description`, `lat_lang`) VALUES
(1, 'Lydia Moran', 'bicyq@yahoo.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Short Frye Associates', 'Lavinia Mckee', '88 South Clarendon Drive', 'Voluptatem et dolores quas et architecto est enim aut est et aut cum et aut aut praesentium sint', 'approved', '0', 1473433365, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(0,0)'),
(3, 'Tom Cruise', 'demovendor.tom@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Dark Lane', 'Tom', '3367 Essex Court Grand Isle, VT 05458 ', '3367 Essex Court Grand Isle, VT 05458 B', 'approved', '2', 1474269533, 0, NULL, 1476871027, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(0,0)'),
(4, 'Lenna', 'lenna.vendor@gmail.com', '0c7886815e256c36d6b96b510b98e75b51083b52', 'Feltz', 'Paprocki', '639 Main St, Anchorage', 'AK', 'approved', '0', 1474372387, 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+1012545688', NULL, NULL, '(61.21620119999999, -149.89960359999998)'),
(5, 'Youn Sijin', 'demovendor.youn@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'DOTS', 'Youn', '2759 Wyatt Street, HINSDALE, New York', '2759 Wyatt Street, HINSDALE, New York', 'approved', '1', 1474568426, 0, NULL, 1477161249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(0,0)'),
(7, 'Tony Stark', 'tonystark.demo1@gmail.com', 'd44b13c956b93718dd0ac1a0c200a5951c6a3e38', 'Brenton', 'Tony Stark', '6649 N Blue Gum St, New Orleans', 'Louisiana, USA', 'pending', '0', 1475065812, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(0,0)');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_invoice`
--

CREATE TABLE IF NOT EXISTS `vendor_invoice` (
`vendor_invoice_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `payment_details` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
 ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
 ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
 ADD PRIMARY KEY (`blog_category_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
 ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
 ADD PRIMARY KEY (`business_settings_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
 ADD PRIMARY KEY (`id`), ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `contact_message`
--
ALTER TABLE `contact_message`
 ADD PRIMARY KEY (`contact_message_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
 ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `currency_settings`
--
ALTER TABLE `currency_settings`
 ADD PRIMARY KEY (`currency_settings_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
 ADD PRIMARY KEY (`general_settings_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
 ADD PRIMARY KEY (`word_id`);

--
-- Indexes for table `language_list`
--
ALTER TABLE `language_list`
 ADD PRIMARY KEY (`language_list_id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
 ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
 ADD PRIMARY KEY (`membership_id`);

--
-- Indexes for table `membership_payment`
--
ALTER TABLE `membership_payment`
 ADD PRIMARY KEY (`membership_payment_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
 ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
 ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
 ADD PRIMARY KEY (`product_type_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
 ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
 ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
 ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `slider_style`
--
ALTER TABLE `slider_style`
 ADD PRIMARY KEY (`slider_style_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
 ADD PRIMARY KEY (`slides_id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
 ADD PRIMARY KEY (`social_links_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
 ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
 ADD PRIMARY KEY (`subscribe_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
 ADD PRIMARY KEY (`sub_category_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
 ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `ticket_message`
--
ALTER TABLE `ticket_message`
 ADD PRIMARY KEY (`ticket_message_id`);

--
-- Indexes for table `ui_settings`
--
ALTER TABLE `ui_settings`
 ADD PRIMARY KEY (`ui_settings_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
 ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
 ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `vendor_invoice`
--
ALTER TABLE `vendor_invoice`
 ADD PRIMARY KEY (`vendor_invoice_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
MODIFY `blog_category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
MODIFY `business_settings_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `contact_message`
--
ALTER TABLE `contact_message`
MODIFY `contact_message_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `currency_settings`
--
ALTER TABLE `currency_settings`
MODIFY `currency_settings_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
MODIFY `general_settings_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
MODIFY `word_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1008;
--
-- AUTO_INCREMENT for table `language_list`
--
ALTER TABLE `language_list`
MODIFY `language_list_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
MODIFY `membership_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `membership_payment`
--
ALTER TABLE `membership_payment`
MODIFY `membership_payment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
MODIFY `product_type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `slider_style`
--
ALTER TABLE `slider_style`
MODIFY `slider_style_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
MODIFY `slides_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
MODIFY `social_links_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ticket_message`
--
ALTER TABLE `ticket_message`
MODIFY `ticket_message_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ui_settings`
--
ALTER TABLE `ui_settings`
MODIFY `ui_settings_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `vendor_invoice`
--
ALTER TABLE `vendor_invoice`
MODIFY `vendor_invoice_id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `user` ADD `country` VARCHAR(100) NULL DEFAULT NULL;
ALTER TABLE `user` ADD `state` VARCHAR(100) NULL DEFAULT NULL;
ALTER TABLE `vendor` ADD `country` VARCHAR(100) NULL DEFAULT NULL;
ALTER TABLE `vendor` ADD `city` VARCHAR(100) NULL DEFAULT NULL;
ALTER TABLE `vendor` ADD `zip` VARCHAR(100) NULL DEFAULT NULL;
ALTER TABLE `vendor` ADD `state` VARCHAR(100) NULL DEFAULT NULL;
INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES (NULL, 'home_def_currency', '', '1');
ALTER TABLE `currency_settings` ADD `exchange_rate_def` VARCHAR(100) NULL DEFAULT NULL AFTER `code`;
INSERT INTO `currency_settings` (`currency_settings_id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `exchange_rate_def`) VALUES (NULL, 'Your Currency', '?', '1', 'no', '??', '');
INSERT INTO `permission` (`permission_id`, `name`, `codename`, `parent_status`, `description`) VALUES (NULL, 'Pay to Vendor', 'pay_to_vendor', 'parent', NULL);
INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES (NULL, 'smtp_host', NULL), (NULL, 'smtp_port', NULL),(NULL, 'smtp_user', NULL), (NULL, 'smtp_pass', NULL);

CREATE TABLE `email_template` ( `email_template_id` INT NOT NULL AUTO_INCREMENT ,  `title` LONGTEXT NOT NULL ,  `subject` LONGTEXT NOT NULL ,  `body` LONGTEXT NOT NULL ,    PRIMARY KEY  (`email_template_id`));

INSERT INTO `permission` (`permission_id`, `name`, `codename`, `parent_status`, `description`) VALUES (NULL, 'email_template', 'email_template', 'parent', NULL);

INSERT INTO `email_template` (`email_template_id`, `title`, `subject`, `body`) VALUES
(1, 'Password Reset Email', 'Password Reset Successful', '<p><span [removed]="font-weight: bold;">Hi [[to]],</span></p><p><span [removed]="font-weight: bold;">You recently requested a new password. We''ve received the request and your password has been changed.</span></p><p><span [removed]="font-weight: bold;">Your account type is : [[account_type]]<br></span></p><p><span [removed]="font-weight: bold;">Your new password is : [[password]]</span></p><p><span [removed]="font-weight: bold;">Thanks,</span></p><p><span [removed]="" bold;"="">[[from]]</span></p>'),
(2, 'Account Approval Email', 'Account Approval Status', '<p><span [removed]="font-weight: bold;">Hi [[to]],</span></p><p><span [removed]="font-weight: bold;">Your account type is : [[account_type]]</span></p><p><span [removed]="font-weight: bold;">Email : [[email]]</span></p><p><span [removed]="font-weight: bold;">Thank you for registering at our site. Your registration must be approved by the administrator and your account has been [[status]]. Please contact with the </span>administration team if you have any further question. Best wishes.</p><p><span [removed]="font-weight: bold;"><br></span></p><p><span [removed]="font-weight: bold;">Thanks,</span></p><p><span [removed]="" bold;"="">[[from]]</span></p>'),
(3, 'Membership Upgrade Email', 'Membership Upgraded', '<p><span [removed]="font-weight: bold;">Hi [[to]],</span></p><p><span [removed]="font-weight: bold;">Your account type is : [[account_type]]</span></p><p><span [removed]="font-weight: bold;">Email : [[email]]</span></p><p><span [removed]="font-weight: bold;">Your Membership Type is [[package]]. </span></p><p><span [removed]="font-weight: bold;">Please contact with the </span>administrator team if you have any further question. Best wishes.</p><p><span [removed]="font-weight: bold;"><br></span></p><p><span [removed]="font-weight: bold;">Thanks,</span></p><p><span [removed]="" bold;"="">[[from]]</span></p>'),
(4, 'Account Opening Email', 'Account Opening', '<p><span [removed]="font-weight: bold;">Hi [[to]],</span></p><p><span [removed]="font-weight: bold;">Thank you for registering at our site </span>[[sitename]]<span [removed]="font-weight: bold;">. </span></p><p><span [removed]="font-weight: bold;">Your account type is : [[account_type]]</span></p><p><span [removed]="font-weight: bold;">Email is : [[email]]</span></p><p><span [removed]="font-weight: bold;"></span></p><p><span [removed]="font-weight: bold;">Password is : [[password]]</span></p><p><span [removed]="font-weight: bold;">Your account is now being reviewed by </span>administration team. Please wait for Admin approval. You will get a  confirmation email soon and after that you will be able to login from here : [[url]]</p><p><span [removed]="font-weight: bold;">Please contact with the </span>administration team if you have any further question. Best wishes.<br></p><p><span [removed]="font-weight: bold;"><br></span></p><p><span [removed]="font-weight: bold;">Thanks,</span></p><p><span [removed]="" bold;"="">[[from]]</span></p>');

INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES (NULL, 'c2_set', NULL, 'ok');
INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES (NULL, 'c2_user', NULL, NULL);
INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES (NULL, 'c2_secret', NULL, NULL);
INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES (NULL, 'c2_type', NULL, NULL);
ALTER TABLE `vendor` ADD `c2_set` VARCHAR(20) NULL AFTER `state`, ADD `c2_user` LONGTEXT NULL AFTER `c2_set`, ADD `c2_secret` LONGTEXT NULL AFTER `c2_user`;
INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES (NULL, 'mail_status', 'mail'), (NULL, 'captcha_status', 'no');

UPDATE `email_template` SET `title` = 'Vendors Account Opening' WHERE `email_template`.`email_template_id` = 4;

INSERT INTO `email_template` (`email_template_id`, `title`, `subject`, `body`) VALUES (NULL, 'Users Account Opening', 'Account Opening', '<p><span [removed]="font-weight: bold;">Hi [[to]],</span></p><p><span [removed]="font-weight: bold;">Thank you for registering at our site&nbsp;</span>[[sitename]]<span [removed]="font-weight: bold;">.</span></p><p><span [removed]="font-weight: bold;">Your account type is : [[account_type]]</span></p><p><span [removed]="font-weight: bold;">Email is : [[email]]</span></p><p><span [removed]="font-weight: bold;"></span></p><p><span [removed]="font-weight: bold;">Password is : [[password]]</span></p><p>Login from here : [[url]]</p><p><span [removed]="font-weight: bold;">Please contact with the&nbsp;</span>administration&nbsp;team if you have any further question. Best wishes.<br></p><p><span [removed]="font-weight: bold;"><br></span></p><p><span [removed]="font-weight: bold;">Thanks,</span></p><p><span [removed]="" bold;"="">[[from]]</span></p>'), (NULL, 'Admins Account Opening', 'Account Opening', '<p><span [removed]="font-weight: bold;">Hi [[to]],</span></p><p><span [removed]="font-weight: bold;">Thank you for joining at our site&nbsp;</span>[[sitename]]<span [removed]="font-weight: bold;">.</span></p><p><span [removed]="font-weight: bold;">Your account type is : [[account_type]]</span></p><p><span [removed]="font-weight: bold;">Email is : [[email]]</span></p><p><span [removed]="font-weight: bold;"></span></p><p><span [removed]="font-weight: bold;">Password is : [[password]]</span></p><p>Login from here : [[url]]</p><p>&nbsp;Best wishes.</p><p><br></p><p><span [removed]="font-weight: bold;">Thanks,</span></p><p><span [removed]="" bold;"="">[[from]]</span></p>');

INSERT INTO `ui_settings` (`ui_settings_id`, `type`, `value`) VALUES (NULL, 'email_theme_style', 'style_1'), (NULL, 'email_theme_style_2', '<div style="margin: 0px 10px; background: #45a9b9; padding: 30px;"><div style="margin: 0px auto; background: #eff7ff; padding: 30px;">[[body]]</div></div>'), (NULL, 'email_theme_style_3', '<div style="margin: 0px 10px; background: repeating-linear-gradient(-45deg, red 0, red 1em, #fffdeb 0, #fffdeb 2em, #58a 0, #58a 3em, #fffdeb 0, #fffdeb 4em); padding: 15px;"><div style="margin: 0px auto; background: #fffdeb; padding: 30px;">[[body]]</div></div>'), (NULL, 'email_theme_style_4', '<div style="margin: 0px 10px; background: #f7f7f7; padding: 30px;"><div style="padding: 30px; background: #76cece; border-radius:5px 5px 0px 0px; box-shadow: 0px -1px 7px #616565; display:block;"><div style="background-image:url([[logo]]); background-repeat:no-repeat; height:80px; width:auto; display:block;"></div></div><div style="margin: 0px auto; background: rgba(255, 255, 255, 0.91); padding: 30px; box-shadow: 0px 3px 7px #616565; border-radius:0px 0px 5x 5px;">[[body]]</div></div>');

INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES (NULL, 'currency_format', NULL, 'us'), (NULL, 'symbol_format', NULL, 's_amount'), (NULL, 'no_of_decimals', NULL, '2');

INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES (NULL, 'vp_set', NULL, NULL), (NULL, 'vp_merchant_id', NULL, NULL);

ALTER TABLE  `vendor` ADD  `vp_set` VARCHAR( 50 ) NULL ,
ADD  `vp_merchant_id` VARCHAR( 500 ) NULL ;
INSERT INTO `general_settings` (`type`, `value`) VALUES ('version', '1.4.7');

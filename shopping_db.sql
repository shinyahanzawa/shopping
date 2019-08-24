-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2019 年 8 月 24 日 01:59
-- サーバのバージョン： 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `cart`
--

CREATE TABLE `cart` (
  `crt_id` int(10) UNSIGNED NOT NULL,
  `mem_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `num` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `delete_flg` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `cart`
--

INSERT INTO `cart` (`crt_id`, `mem_id`, `item_id`, `num`, `delete_flg`) VALUES
(116, 21, 1, 1, 1),
(117, 21, 1, 1, 1),
(118, 21, 1, 1, 1),
(119, 21, 1, 1, 1),
(120, 21, 2, 1, 1),
(121, 21, 1, 1, 1),
(122, 21, 1, 1, 1),
(123, 21, 1, 1, 1),
(124, 21, 3, 1, 1),
(125, 16, 5, 1, 1),
(126, 16, 2, 1, 1),
(127, 21, 6, 1, 1),
(128, 21, 9, 1, 1),
(129, 16, 1, 1, 1),
(130, 16, 8, 1, 1),
(131, 16, 7, 1, 1),
(132, 16, 1, 1, 1),
(133, 16, 1, 1, 1),
(134, 16, 2, 1, 1),
(135, 16, 12, 1, 1),
(136, 16, 9, 1, 1),
(137, 16, 12, 1, 1),
(138, 16, 1, 1, 1),
(139, 16, 12, 1, 1),
(140, 16, 5, 1, 0),
(141, 16, 11, 1, 0),
(142, 16, 1, 1, 1),
(143, 27, 1, 1, 1),
(144, 25, 11, 1, 1),
(145, 25, 11, 1, 1),
(146, 25, 11, 1, 1),
(147, 25, 11, 1, 1),
(148, 25, 11, 1, 1),
(149, 25, 11, 1, 1),
(150, 25, 11, 1, 1),
(151, 25, 11, 1, 1),
(152, 25, 11, 1, 1),
(153, 25, 11, 1, 1),
(154, 25, 11, 1, 1),
(155, 25, 11, 1, 1),
(156, 25, 11, 1, 1),
(157, 25, 11, 1, 1),
(158, 25, 11, 1, 1),
(159, 25, 11, 1, 1),
(160, 25, 11, 1, 1),
(161, 25, 11, 1, 1),
(162, 25, 11, 1, 1),
(163, 25, 11, 1, 1),
(164, 25, 11, 1, 1),
(165, 25, 11, 1, 1),
(166, 25, 11, 1, 1),
(167, 25, 11, 1, 1),
(168, 25, 11, 1, 1),
(169, 25, 7, 1, 1),
(170, 25, 8, 1, 1),
(171, 25, 8, 1, 1),
(172, 25, 8, 1, 1),
(173, 25, 8, 1, 1),
(174, 25, 8, 1, 1),
(175, 25, 8, 1, 1),
(176, 25, 8, 1, 1),
(177, 25, 8, 1, 1),
(178, 25, 8, 1, 1),
(179, 25, 8, 1, 1),
(180, 25, 8, 1, 1),
(181, 25, 8, 1, 1),
(182, 25, 8, 1, 1),
(183, 25, 8, 1, 1),
(184, 25, 8, 1, 1),
(185, 25, 8, 1, 1),
(186, 25, 8, 1, 1),
(187, 25, 1, 1, 1),
(188, 25, 3, 1, 1),
(189, 25, 1, 1, 1),
(190, 25, 9, 1, 1),
(191, 25, 2, 1, 1),
(192, 28, 1, 1, 0),
(193, 28, 3, 1, 0),
(194, 28, 1, 1, 0),
(195, 25, 1, 1, 1),
(196, 25, 6, 1, 1),
(197, 25, 1, 1, 1),
(198, 25, 10, 1, 1),
(199, 25, 8, 1, 1),
(200, 25, 9, 1, 1),
(201, 25, 9, 1, 1),
(202, 25, 9, 1, 1),
(203, 25, 9, 1, 1),
(204, 25, 9, 1, 1),
(205, 25, 7, 1, 1),
(206, 25, 6, 1, 1),
(207, 25, 10, 1, 1),
(208, 25, 11, 1, 1),
(209, 25, 12, 1, 1),
(210, 25, 1, 1, 1),
(211, 25, 11, 1, 1),
(212, 25, 6, 1, 1),
(213, 25, 4, 1, 1),
(214, 25, 1, 1, 1),
(215, 25, 9, 1, 1),
(216, 25, 9, 1, 1),
(217, 25, 1, 1, 1),
(218, 25, 7, 1, 1),
(219, 34, 10, 1, 1),
(220, 34, 10, 1, 0),
(221, 25, 10, 1, 0),
(222, 25, 6, 1, 0),
(223, 4, 9, 1, 1),
(224, 4, 10, 1, 1),
(225, 4, 1, 1, 1),
(226, 4, 11, 1, 1),
(227, 4, 6, 1, 1),
(228, 4, 1, 1, 1),
(229, 4, 5, 1, 1),
(230, 4, 6, 1, 0),
(231, 6, 12, 1, 1),
(232, 5, 1, 1, 1),
(233, 5, 1, 1, 0),
(234, 8, 1, 1, 1),
(235, 8, 8, 1, 0),
(236, 8, 8, 1, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `category`
--

CREATE TABLE `category` (
  `ctg_id` tinyint(3) UNSIGNED NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `category`
--

INSERT INTO `category` (`ctg_id`, `category_name`) VALUES
(1, 'Vegetables'),
(2, 'Fruit'),
(3, 'Drink');

-- --------------------------------------------------------

--
-- テーブルの構造 `item`
--

CREATE TABLE `item` (
  `item_id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `detail` text NOT NULL,
  `price` decimal(10,3) UNSIGNED NOT NULL,
  `image` varchar(50) NOT NULL,
  `ctg_id` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `detail`, `price`, `image`, `ctg_id`) VALUES
(1, 'Onion', 'The number of chromosomes is 2n = 16. The optimum growth temperature is around 20 ° C, and although the cold is strong and freezing damage is hardly observed even at the freezing point, growth failure occurs when the temperature is higher than 25 ° C.', '180.000', 'tamanegi.jpg', 1),
(2, 'Carrots', 'It is roughly divided into two types, a long and short Eastern variety and a thick and short western variety, and both have been cultivated as medicine and food for a long time.', '250.000', 'ninjin.jpg', 1),
(3, 'Green pepper', 'Green pepper itself is one of the varieties of red pepper, and the fruit is thick and contains no capsaicin.', '150.000', 'pi-man.jpg', 1),
(4, 'Eggplant', 'Unique varieties are grown in various parts of the world. There are some exceptions such as Kaga Kyoko, but in Japan, they are longer or longer in the south, and smaller in the north.', '220.000', 'nasu.jpg', 1),
(5, 'Mandarin orange', 'It is a typical fruit in Japan, and it can be easily peeled and eaten with bare hands like bananas, so in winter there are many sights of mandarin orange on a pot.', '300.000', 'mikan.jpg', 2),
(6, 'Apple', 'Those currently grown in Japan are those introduced after the Meiji period. Breed improvement is added in terms of disease resistance, taste and yield.', '140.000', 'ringo.jpg', 2),
(7, 'Grape', 'The leaves are as small as 15-20 cm, with cuts on both sides, with spikelets.', '400.000', 'budou.jpg', 2),
(8, 'Strawberry', 'Almost all strawberries distributed as strawberries are Dutch strawberries.', '500.000', 'ichigo.jpg', 2),
(9, 'Cola', 'In addition to these flavors, several cola beverage manufacturers are developing their own flavors by adding their own flavors.', '160.000', 'cola.jpg', 3),
(10, 'Orange', 'Orange juice is a liquid produced by squeezing oranges and is mainly used as a beverage, but it may also be used as a cooking (confectionery) ingredient and may also be used to flavor soft drinks and the like. One orange gives approximately 90 grams of orange juice, which has an orange-specific aroma and flavor (including mainly acidity and sweetness, including bitterness) and color (orange).', '220.000', 'orange.jpg', 3),
(11, 'Coffe', 'Coffee shops (coffee houses, cafes and cafes) serving coffee throughout the world have played a major role in culture as a place to gather artists from various fields such as modern people, intellectuals, literature and art. . Furthermore, it is regarded as important from the economic point of view as it is a primary commodity with a large scale of trade. It is produced in about 70 countries (coffee belt) between roughly the north return line and the south return line, and is exported to the whole world. Since it contains pharmacologically active ingredients represented by caffeine, it is the subject of research from the medical and pharmaceutical aspect.', '350.000', 'coffee.jpg', 3),
(12, 'Mineral water', 'Mineral water is a bottled drinking water that uses groundwater as raw water.', '130.000', 'water.jpg', 3);

-- --------------------------------------------------------

--
-- テーブルの構造 `session`
--

CREATE TABLE `session` (
  `customer_no` int(10) UNSIGNED NOT NULL,
  `session_key` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `session`
--

INSERT INTO `session` (`customer_no`, `session_key`) VALUES
(1, '71tvu1bd4lpopn5c4qc49594po'),
(2, '8mbgdemdnqr9i5mp9kjrq0b9ta'),
(3, '7p5u0bohfphrdfhgibq1mf1ni3'),
(4, '7dbmseo7bio20sebigdqvmnq37'),
(5, 'g1prngoqs74qu4bsp1v2jif1hl'),
(6, 'quk3katfs4lgm8opggt3drkvom'),
(7, 'vhcesceq98ns5lr5qp5jibq0d7'),
(8, '5dnjumsu2denj285d405kk5fo6'),
(9, 'r8honof3ai0uv3mu4hm0nir61m'),
(10, '81kmntncqd1bojt1luph8g3cdg'),
(11, '8u57ec697k63hh6sdpl592ioo3'),
(12, '7283r9956r5aaqeaosh7qff0vc'),
(13, 'ehe6hqv1hhn5ploes1vb6i0bcg'),
(14, 'jbomio6894bcn40q0qj66hjea7'),
(15, '3dc5i2l2n8rapo2pgvbfq7i6hk'),
(16, '5rbfconm0pfo3903l09bv9m7lt'),
(17, 'cur8ciu1e8k534aic7d22gb0ug'),
(18, '4robqrq4453e3lmsf8tep5p9n4'),
(19, 'vf1goi3giv5t9cs5jl38n27rgi'),
(20, '5rt9haspli24qsroj76naf5et5'),
(21, '59h4r0ig9v2d64jqi4mm14of06'),
(22, '8u8j82oe94bovkc5qs6449b2j9'),
(23, 'ov3al7lvb8dnj092n1lpdtnsiu'),
(24, 'kgt19mg066gbuekabso5dd0h0o'),
(25, '39h5817s3n7jsocl67ptdf880p'),
(26, '07nhtefpe266j0npucifauvmfs'),
(27, 'tv6i2b9k9qo37im4q400oo2i9b'),
(28, 'mbrbt6mr19alclbvoq30pdq701'),
(29, 'rbpmb7qbgucnrua9ie93bd1r9i'),
(30, '0oh0qfip80f9mlr2rpe478r4dv'),
(31, 'pt9me44gdmpjlppfk0tgeus6mh'),
(32, '1d75a2nmjh40j3qsasaa00hep2'),
(33, '9433b9da3dkisrkrmgr6agjmft'),
(34, '4obkqetcda9fomiob9b31anfm8'),
(35, '73s9gnnsvok3tep6mvlerlb2jl'),
(36, 'msnq8h74vp78g6p7mnqihjdan3'),
(37, '3mnbmj03sr1i2mhel039f5abl9'),
(38, 'kihgag85on1tcdc5v9604jf6h8'),
(39, '6i0360bvnctup047lpc5ta2m9q'),
(40, 'njarltkq65k0vku29tf6k7n2j5'),
(41, '92kbmoubvrenftavsi3v605fq3'),
(42, 'i8btvkobs3ddl2u5vqrdqdg52k'),
(43, 's4qd8f9vkor1pqjrnk4bkjm92m'),
(44, 'nr26s42ma9gvlq843c7ik47fjc'),
(45, 'jn0g3itagqlmqgsb2g451lb0k4'),
(46, 'ljc353kh4nsuc9r4i91rvqsvbo'),
(47, 'nih7iu8ikh580uadiaus2hfs38'),
(48, '7ccm6vos5ra6pblg3836bi4m4c'),
(49, 'oi752p0e771ls4tfbbk74icjq6'),
(50, 'jdt837552serkrlm78j1jrehq9'),
(51, 'q2ai94mo28jq78pfdb3v7u7d7s'),
(52, 'rqkh8mep7c0unkob96qrrbfdtr'),
(53, 'rr8idvvodfcrgq4acpvmpphk35'),
(54, 'qhd6antftgi3aeqca584vp7f2k'),
(55, 'n5e24csjq0ncb7nm9ndl45pl9k'),
(56, 'jihf8sv1ck8oloufdf5ulp8lon'),
(57, 'ch9ievfa7t684dr58146qehu8k'),
(58, 'd5ag7t639mph0v6v6nsja85gkf'),
(59, 'baso5fgkl4of0j9p30njai6bv9'),
(60, 'jkn7et17c4nlot8cq0dc2giq66'),
(61, '65baon8qbfa9pcj7ake8b1dgf9'),
(62, '77uh8ugm28i9g4t18psn46nqr2'),
(63, 'j3rofg1523qenp3mtkubh91ang'),
(64, 'vqbf45omp8is80rfei9n7nqmad'),
(65, '8fg68m7ljsotrsim4p8h4856q4'),
(66, 'hqh3llko0bvn9rmbtdr6pc9dar'),
(67, 'st7u7q6np3sr8jtt5ckso7mec0'),
(68, 'aa0nmeq2e8vo63c2dcvt47tbmv'),
(69, 'v2cqg286rka2lmpjbsdtv4qa8r'),
(70, 'cjc39q4mbua4inu780b2qfkdkp'),
(71, '87lqopp42p5ere3t49s98aamck'),
(72, '8e9n4v0htnih63oiv5skbg2vuv'),
(73, '03d5e2shb72nq58lqf4gnakg3r');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`crt_id`),
  ADD KEY `crt_idx` (`mem_id`,`delete_flg`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ctg_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_idx` (`ctg_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`customer_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `crt_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ctg_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `customer_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

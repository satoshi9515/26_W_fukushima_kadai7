-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2021 年 7 朁E03 日 01:01
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_kdb`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_course_table`
--

CREATE TABLE IF NOT EXISTS `gs_course_table` (
`c_id` int(12) NOT NULL,
  `c_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `t_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `c_length` int(64) NOT NULL,
  `s_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `cnt_s_id` int(64) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_course_table`
--

INSERT INTO `gs_course_table` (`c_id`, `c_name`, `t_name`, `c_length`, `s_id`, `cnt_s_id`, `indate`) VALUES
(15, 'ものづくり講座', 'akahoshi', 10, '3,4', 2, '2021-06-26 21:16:02'),
(16, 'aa', 'akahoshi', 30, '4,5', 2, '2021-06-26 23:09:45'),
(17, 'ww', 'akahoshi', 10, '3,6', 2, '2021-06-26 23:09:55'),
(18, '福島　聡', 'akahoshi', 6, '3,4,5,6,7,8', 6, '2021-06-28 18:10:08'),
(19, '微分積分', 'akahoshi', 20, '5,6,7', 3, '2021-07-03 00:29:52');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_students_table`
--

CREATE TABLE IF NOT EXISTS `gs_students_table` (
`s_id` int(12) NOT NULL,
  `s_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `s_account` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `s_mail` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `s_pw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `s_life_flg` int(1) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_students_table`
--

INSERT INTO `gs_students_table` (`s_id`, `s_name`, `s_account`, `s_mail`, `s_pw`, `s_life_flg`, `indate`) VALUES
(3, '赤星', 'akahoshi', '', 'yumi', 0, '2021-05-16 16:58:26'),
(4, '井上', 'ri', '', 'ru', 0, '2021-05-16 16:58:26'),
(5, '臼井', 'aaa', '', 'aaa', 0, '2021-06-20 00:09:17'),
(6, '江川', 'ccc', '', 'ccc', 0, '2021-06-20 00:09:47'),
(7, '太田', 'hamurinn', '', '1118', 0, '2021-06-20 01:06:53'),
(8, '香川', 'aaaa', '', 'aaaa', 0, '2021-06-20 13:23:01'),
(9, '菊池', 'hoshi', 'ss', 'desu', 0, '2021-06-26 22:04:31'),
(10, '久米', 'hoshi', 'ss', 'desu', 0, '2021-06-26 22:04:36');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_teachers_table`
--

CREATE TABLE IF NOT EXISTS `gs_teachers_table` (
`t_id` int(12) NOT NULL,
  `t_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `t_account` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `t_mail` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `t_pw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `t_life_flg` int(1) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_teachers_table`
--

INSERT INTO `gs_teachers_table` (`t_id`, `t_name`, `t_account`, `t_mail`, `t_pw`, `t_life_flg`, `indate`) VALUES
(3, 'akahoshi', 'akahoshi', '', 'yumi', 0, '2021-05-16 16:58:26'),
(12, '田中', 'tanaka', 'aa', 'aa', 0, '2021-06-26 09:53:19'),
(13, 'ふくしまさとし', 'a', 'fukushima@as', 'aa', 0, '2021-06-26 19:57:48'),
(14, 'fukushima', 'fukushima', 'ああ', 'satoshi', 0, '2021-06-26 20:27:31');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_univ_table`
--

CREATE TABLE IF NOT EXISTS `gs_univ_table` (
`u_id` int(12) NOT NULL,
  `u_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `u_account` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `u_pw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `u_life_flg` int(1) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_univ_table`
--

INSERT INTO `gs_univ_table` (`u_id`, `u_name`, `u_account`, `u_pw`, `u_life_flg`, `indate`) VALUES
(1, 'fukushima', 'fukushima', 'satoshi', 0, '2021-05-16 16:56:02'),
(2, 'aka', 'hoshi', 'desu', 0, '2021-05-16 16:58:26'),
(3, 'akahoshi', 'akahoshi', 'yumi', 0, '2021-05-16 16:58:26'),
(4, 'ra', 'ri', 'ru', 0, '2021-05-16 16:58:26'),
(5, 'aaa', 'aaa', 'aaa', 0, '2021-06-20 00:09:17'),
(6, 'ccc', 'ccc', 'ccc', 0, '2021-06-20 00:09:47'),
(7, 'あかぼし', 'hamurinn', '1118', 0, '2021-06-20 01:06:53'),
(8, 'aaa', 'aaaa', 'aaaa', 0, '2021-06-20 13:23:01'),
(9, '横浜', 'yokohama', 'yokohama', 0, '2021-06-25 22:47:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_course_table`
--
ALTER TABLE `gs_course_table`
 ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `gs_students_table`
--
ALTER TABLE `gs_students_table`
 ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `gs_teachers_table`
--
ALTER TABLE `gs_teachers_table`
 ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `gs_univ_table`
--
ALTER TABLE `gs_univ_table`
 ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_course_table`
--
ALTER TABLE `gs_course_table`
MODIFY `c_id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `gs_students_table`
--
ALTER TABLE `gs_students_table`
MODIFY `s_id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gs_teachers_table`
--
ALTER TABLE `gs_teachers_table`
MODIFY `t_id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `gs_univ_table`
--
ALTER TABLE `gs_univ_table`
MODIFY `u_id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

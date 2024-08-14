-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2024 at 05:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `sp_product`
--

CREATE TABLE `sp_product` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `img` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sp_product`
--

INSERT INTO `sp_product` (`id`, `name`, `img`, `price`, `description`, `type`) VALUES
(1, 'Wave fronnt Surf Shop', 'img/WaveSurf.jpg', 1500, 'Size:M อก20ยาว27', 'shirt'),
(3, 'Wave front Surf Shop', 'img/WaveSurf.jpg', 1500, 'Size:M อก20ยาว27', 'shirt'),
(4, 'The Beatles', 'img/TheBeatles.jpg', 2500, 'Size:Mอก20ยาว28', 'shirt'),
(5, 'Knotfest', 'img/Knotfest.jpg', 1700, 'Size:Mอก19ยาว27', 'shirt'),
(6, 'The Lightning Thief', 'img/TheLightning.jpg', 3000, 'Size:Mอก20ยาว27', 'shirt'),
(7, 'TooL เสื้อวง ', 'img/Tool.jpg', 5500, 'Size:M-L อก20-21ยาย27', 'shirt'),
(8, 'Sons of anarchy', 'img/Sonsanarchy.jpg', 1400, 'Size:Mอก19.5ยาว28', 'shirt'),
(9, 'Dickie ขาต่อ5กระเป๋า สีดำ', 'img/DickieBlack32.jpg', 1500, 'เอววัดจริง32  ปลายขา10 ความยาว45 แก้ไซร์สภาพดี เนื้อผ้าดี  ผ้าแข็งใหม่ สีดำสนิท ', 'trousers'),
(10, 'Dickie ขาต่อ5กระเป๋า สีดำ', 'img/DickieBlack34.jpg', 1500, 'เอววัดจริง34”   ปลายขา10\"    ความยาว43\" สภาพดี เนื้อผ้าดี  ผ้าแข็งใหม่ สีดำสนิท  ', 'trousers'),
(11, 'Dickie ขาต่อ5กระเป๋า สีเทา', 'img/DickieGray34.jpg', 1050, 'เอววัดจริง34”   ปลายขา10”    ความยาว45”    สภาพดี เนื้อผ้าดี  ผ้าแข็งใหม่ สีกรมสนิท  ', 'trousers'),
(12, 'Dickie ขาต่อ5กระเป๋า สีกรม', 'img/DickieBlue.jpg', 1250, 'เอววัดจริง30”    ปลายขา10”   ความยาว43”    สภาพดี เนื้อผ้าดี  ผ้าแข็งใหม่ สีกรมสนิท  ', 'trousers'),
(13, 'Dickie ขาต่อ5กระเป๋า สีเทา', 'img/DickieGray.jpg', 850, 'เอววัดจริง38”    ปลายขา10”    ความยาว46”    สภาพดี เนื้อผ้าดี  ผ้าแข็งใหม่ สีเทาสนิท   ', 'trousers'),
(14, 'Jack Purcell 1980 s (เขี้ยวขี้ม้า)', 'img/Jack1980.jpg', 5500, 'Size:4-4.5(23.5)    เหมาะกับเท้า37~38    Detail :แจ็คเขียวขี้ม้า80’s ซอฟเขียวตะเข็บจม แท้เดิมสภาพดีขอบยางดีเชือกไม่มีนะครับผม ซอฟในชัดเจนบีบกดได้ปกติ ป้ายหลังสึกจางตามอายุการใช้งาน  ', 'shoe'),
(15, 'Converse Jack Purcell made in USA', 'img/ConverseUSA.jpg', 1500, 'Navy Hunter 80s ตัวนี้เป็นตัวเก่าปลายปี80s    Size:7.5~8(26.5~27cm.)    Digital: ตัวนี้เป็นผ้ากํามะยียิ้มลั่นจัดๆ สภาพเกือบมือ1 ป้ายหลังเต็ม ซอฟสอาดชัดเจน หัวบีบกดได้ขอบยาง ไม่มีตําหนิ สะอาดกริบๆ เนื้อผ้าดีมาก 10/10มีป้ายแท็ก  ', 'shoe'),
(16, 'Converse All star Desstock 80s', 'img/ConverseAll.jpg', 11500, 'Color:Spearmint          Size:7.5Over8(26.5~27cm)    Detail:มือ1 พร้อมกล่องตรงรุ่น สภาพรวมๆ10/10สภาพDesstock เต็มทุกเต็มไม่เคยผ่านการใส่ กันชนสวยหัวเล็ก   ป้ายหลังเต็มๆ  ', 'shoe'),
(17, 'Jack Purcell Green 90s', 'img/ConverseJack.jpg', 18500, 'Size8~8.5(27~27.5cm.)    Detail:เขียวตอง สีสด10/10 ป้ายหลสึกนิดหน่อย ตอก994 ซอฟในสะอาดชัดเจน ยิ้มลั่นผ้าใบไม่มีขาด พื้นเต็มๆ    หัวบีบกดได้ ปกติ ขอบยางไม่มีรอยแตก รวมๆ 10/10ครับ ', 'shoe'),
(18, 'Converse Jack Purcell 🇺🇸 3Black 1990’', 'img/JackPurcellGreen.jpg', 18500, 'Size : 7~7.5/26.5 Over 27         Details : สามดำแท้เดิม ตัวบาร์โค๊ดกลางปี 90sยิ้มสวยยิ้มลั่น ขอบยางแตกนิดหน่อยป้ายหลังเต็ม หัวมีลอยงา สีเข้ม10/10 ', 'shoe');

-- --------------------------------------------------------

--
-- Table structure for table `sp_transaction`
--

CREATE TABLE `sp_transaction` (
  `id` int(11) NOT NULL,
  `transid` text DEFAULT NULL,
  `orderlist` text DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `shipping` int(11) DEFAULT NULL,
  `vat` int(11) DEFAULT NULL,
  `netamount` int(11) DEFAULT NULL,
  `operation` text DEFAULT NULL,
  `mil` bigint(20) DEFAULT NULL,
  `updated_at` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sp_transaction`
--

INSERT INTO `sp_transaction` (`id`, `transid`, `orderlist`, `amount`, `shipping`, `vat`, `netamount`, `operation`, `mil`, `updated_at`) VALUES
(3, '1723605156955', '[{\"index\":\"3\",\"id\":\"15\",\"name\":\"Converse Jack Purcell made in USA\",\"price\":\"1500\",\"img\":\"img\\/ConverseUSA.jpg\",\"count\":\"1\"},{\"index\":\"6\",\"id\":\"12\",\"name\":\"Dickie \\u0e02\\u0e32\\u0e15\\u0e48\\u0e2d5\\u0e01\\u0e23\\u0e30\\u0e40\\u0e1b\\u0e4b\\u0e32 \\u0e2a\\u0e35\\u0e01\\u0e23\\u0e21\",\"price\":\"1250\",\"img\":\"img\\/DickieBlue.jpg\",\"count\":\"1\"}]', 2750, 2810, 197, 3007, 'PENDING', 1723605156000, '2024-08-14 10:12:36am'),
(4, '1723605685616', '[{\"index\":\"0\",\"id\":\"18\",\"name\":\"Converse Jack Purcell \\ud83c\\uddfa\\ud83c\\uddf8 3Black 1990\\u2019\",\"price\":\"18500\",\"img\":\"img\\/JackPurcellGreen.jpg\",\"count\":\"1\"},{\"index\":\"1\",\"id\":\"17\",\"name\":\"Jack Purcell Green 90s\",\"price\":\"18500\",\"img\":\"img\\/ConverseJack.jpg\",\"count\":\"1\"}]', 37000, 37060, 2594, 39654, 'PENDING', 1723605685000, '2024-08-14 10:21:25am');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sp_product`
--
ALTER TABLE `sp_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_transaction`
--
ALTER TABLE `sp_transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sp_product`
--
ALTER TABLE `sp_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sp_transaction`
--
ALTER TABLE `sp_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

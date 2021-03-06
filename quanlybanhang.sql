-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 10:25 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlybanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdathang`
--

CREATE TABLE `chitietdathang` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitietdathang`
--

INSERT INTO `chitietdathang` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_time`, `last_updated`) VALUES
(22, 30, 3, 77, 1500000, 1592982303, 1592982303),
(23, 31, 1, 1, 48000, 1592989769, 1592989769),
(24, 31, 2, 1, 56000, 1592989769, 1592989769),
(25, 32, 8, 4, 85600, 1593228398, 1593228398),
(26, 33, 3, 22, 85000, 1593228639, 1593228639),
(27, 34, 1, 1, 48000, 1593228804, 1593228804),
(28, 34, 2, 1, 56000, 1593228804, 1593228804),
(29, 34, 4, 1, 75000, 1593228804, 1593228804),
(30, 35, 19, 1, 120000, 1593654488, 1593654488),
(31, 36, 8, 1, 85600, 1593654750, 1593654750),
(32, 37, 22, 1, 45000, 1593763992, 1593763992);

-- --------------------------------------------------------

--
-- Table structure for table `dathang`
--

CREATE TABLE `dathang` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `note` text NOT NULL,
  `total` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dathang`
--

INSERT INTO `dathang` (`id`, `name`, `phone`, `address`, `note`, `total`, `created_time`, `last_updated`) VALUES
(30, 'minh nhut', '035588', 'an khanh', 'dong goi can than\r\n', 115500000, 1592982302, 1592982302),
(31, 'minh nhut', '0389728084', 'an khanh can tho', 'dong goi can than gium toi ', 104000, 1592989769, 1592989769),
(32, 'Thanh Hung', '0123456', 'C5d, an khanh, ninh kieu can tho', 'dong goi can than gium', 342400, 1593228398, 1593228398),
(33, 'Huu Tam', '01366', 'can tho ', 'lua hang moi gium', 1870000, 1593228639, 1593228639),
(34, 'Ronaldo', '123', 'C???n Th?? ', 'giao h??ng g???p gi??m t??i ', 179000, 1593228804, 1593228804),
(35, 'huynh cong ', '0123466', 'An Kh??nh, C???n Th?? ', 'g???i h??ng m???i gi??m m??nh ', 120000, 1593654488, 1593654488),
(36, 'T???i sao ', '89090900099', 'can tho ', 'dong goi ki ', 85600, 1593654750, 1593654750),
(37, 'linh', '0325231', 'soc trang', 'dong goi can than', 45000, 1593763992, 1593763992);

-- --------------------------------------------------------

--
-- Table structure for table `hanghoa`
--

CREATE TABLE `hanghoa` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `content` text NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hanghoa`
--

INSERT INTO `hanghoa` (`id`, `name`, `image`, `price`, `content`, `created_time`, `last_updated`) VALUES
(1, 'Nh?? gi??? kim', 'assets/img/tt1.jpg\r\n', 48000, '', 0, 0),
(2, 'Ng??y x??a c?? m???t chuy???n t??nh', 'assets/img/tt2.jpg', 56000, '', 0, 0),
(3, 'Con ch?? nh??? mang gi??? hoa h???ng ', 'assets/img/tt3.jpg', 85000, '', 0, 0),
(4, 'Thuy???t t??n t???nh c???u', 'assets/img/tt4.jpg', 75000, '', 0, 0),
(5, 'Chu???c t???i', 'assets/img/tt5.jpg', 125000, '', 0, 0),
(6, 'Chuy???n con ch?? trung th??nh', 'assets/img/tt6.jpg', 45000, '', 0, 0),
(7, 'M???t bi???c', 'assets/img/tt7.jpg', 87000, '', 0, 0),
(8, 'Thi??n th???n sa ng??', 'assets/img/tt8.jpg', 85600, '', 0, 0),
(9, 'G???i em b???ng t??n anh', 'assets/img/tt9.jpg', 74000, '', 0, 0),
(10, 'Ph??ng tr??? ba ng?????i', 'assets/img/tt10.jpg', 65000, '', 0, 0),
(11, 'Ki???p n??o ta c??ng t??m th???y nhau', 'assets/img/tl1.jpg', 70000, '', 0, 0),
(12, 'Hi???u ???ng ????n gas', 'assets/img/tl2.jpg', 125000, '', 0, 0),
(13, 'T??m l?? h???c v?? ?????i s???ng', 'assets/img/tl3.jpg', 110000, '', 0, 0),
(14, 'Sang ch???n t??m l??', 'assets/img/tl4.jpg', 95000, '', 0, 0),
(15, 'Thi??n t??i b??n tr??i-k??? ??i??n b??n ph???i', 'assets/img/tl5.jpg', 150000, '', 0, 0),
(16, 'T??m l?? h???c giao ti???p', 'assets/img/tl6.jpg', 120000, '', 0, 0),
(17, 'Thu???t ?????c t??m', 'assets/img/tl7.jpg', 140000, '', 0, 0),
(18, 'Lu???n v??? y??u', 'assets/img/tl8.jpg', 105000, '', 0, 0),
(19, 'Lu???t y??u ??????ng', 'assets/img/tl9.jpg', 120000, '', 0, 0),
(20, 'T??m l?? h???c ????m ph??n', 'assets/img/tl10.jpg', 155000, '', 0, 0),
(21, 'Gi?? trong chi???n l?????c kinh doanh', 'assets/img/qt1.jpg', 60000, '', 0, 0),
(22, 'Chi???n l?????t ?????i d????ng xanh', 'assets/img/qt2.jpg', 45000, '', 0, 0),
(23, 'V??? tu s?? b??n chi???c Ferrari', 'assets/img/qt3.jpg', 50000, '', 0, 0),
(24, 'B?? m???t t?? duy tri???u ph??', 'assets/img/qt4.jpg', 71000, '', 0, 0),
(25, 'T??? b??? th??i quen gi???m gi??', 'assets/img/qt5.jpg', 180000, '', 0, 0),
(26, 'Nh???ng ????n t??m l?? trong ?????nh gi?? s???n ph???m', 'assets/img/qt6.jpg', 170000, '', 0, 0),
(27, '?????nh gi?? d???a tr??n gi?? tr???', 'assets/img/qt7.jpg', 190000, '', 0, 0),
(28, 'V??? gi??m ?????c m???t ph??t', 'assets/img/qt8.jpg', 37000, '', 0, 0),
(29, 'Nh?? l??nh ?????o kh??ng ch???c danh', 'assets/img/qt9.jpg', 50000, '', 0, 0),
(30, 'L??m ??i???u quan tr???ng', 'assets/img/qt10.jpg', 123000, '', 0, 0),
(31, 'Hi???u ???ng chim m???i', 'assets/img/mk1.jpg', 80000, '', 0, 0),
(32, 'H?????ng d???n qu???ng c??o Google Ads', 'assets/img/mk2.jpg', 164000, '', 0, 0),
(33, 'Marketing du k??ch-truy???n th??ng x?? h???i', 'assets/img/mk3.jpg', 145000, '', 0, 0),
(34, 'H?????ng d???n b??i b???n t???i ??u h??a website doanh nghi???p', 'assets/img/mk4.jpg', 168000, '', 0, 0),
(35, '?????ng b??n s???n ph???m-h??y b??n gi???i ph??p', 'assets/img/mk5.jpg', 128000, '', 0, 0),
(36, 'Quy tr??nh b??n h??ng chuy??n nghi???p', 'assets/img/mk6.jpg', 95000, '', 0, 0),
(37, 'Chi???n l?????c Marketing cho th??? tr?????ng c??ng ngh???', 'assets/img/mk7.jpg', 127200, '', 0, 0),
(38, 'B??? s??ch t??? h???c MBA', 'assets/img/mk8.jpg', 148000, '', 0, 0),
(39, 'Con ???????ng tr??? th??nh Freelancer Writer', 'assets/img/mk9.jpg', 176000, '', 0, 0),
(40, 'Hu???n luy???n k??? n??ng b??n h??ng', 'assets/img/mk10.jpg', 84000, '', 0, 0),
(41, '?????c nh??n t??m', 'assets/img/rl1.jpg', 57000, '', 0, 0),
(42, 'C??ch s???ng', 'assets/img/rl2.jpg', 52500, '', 0, 0),
(43, 'Nh???ng b?????c ????n gi???n ?????n ?????c m??', 'assets/img/rl3.jpg', 92000, '', 0, 0),
(44, 'N??i nhi???u kh??ng b???ng n??i ????ng', 'assets/img/rl4.jpg', 44500, '', 0, 0),
(45, 'S???c m???nh c???a t??nh t??m', 'assets/img/rl5.jpg', 69000, '', 0, 0),
(46, 'T??? h???t c??t ?????n ng???c trai', 'assets/img/rl6.jpg', 76000, '', 0, 0),
(47, 'T??m bu??ng b???-?????i b??nh an', 'assets/img/rl7.png', 58000, '', 0, 0),
(48, 'R??n luy???n k??? n??ng s???ng d??nh cho h???c sinh', 'assets/img/rl8.jpg', 44000, '', 0, 0),
(49, '??i???u v?? ?????i ?????i th?????ng', 'assets/img/rl9.jpg', 68000, '', 0, 0),
(50, 'Thu???t x??? th??? c???a ng?????i x??a', 'assets/img/rl10.jpg', 34000, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `image_library`
--

CREATE TABLE `image_library` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `birthday` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `fullname`, `password`, `birthday`, `created_time`, `last_updated`) VALUES
(1, 'admin', 'Admin', '21232f297a57a5a743894a0e4a801fc3', 123, 123, 1593132573),
(3, 'Minh Nhut', 'Hu???nh Minh Nh???t', 'e10adc3949ba59abbe56e057f20f883e', 925682400, 1593325278, 1593325278),
(4, 'minhhien', 'Hu???nh Minh Hi???n ', 'e10adc3949ba59abbe56e057f20f883e', 867362400, 1593654103, 1593654103);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_library`
--
ALTER TABLE `image_library`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdathang`
--
ALTER TABLE `chitietdathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `dathang`
--
ALTER TABLE `dathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `hanghoa`
--
ALTER TABLE `hanghoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `image_library`
--
ALTER TABLE `image_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD CONSTRAINT `chitietdathang_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `dathang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietdathang_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `hanghoa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `image_library`
--
ALTER TABLE `image_library`
  ADD CONSTRAINT `image_library_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `hanghoa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

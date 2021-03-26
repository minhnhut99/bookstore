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
(34, 'Ronaldo', '123', 'Cần Thơ ', 'giao hàng gấp giùm tôi ', 179000, 1593228804, 1593228804),
(35, 'huynh cong ', '0123466', 'An Khánh, Cần Thơ ', 'gởi hàng mới giùm mình ', 120000, 1593654488, 1593654488),
(36, 'Tại sao ', '89090900099', 'can tho ', 'dong goi ki ', 85600, 1593654750, 1593654750),
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
(1, 'Nhà giả kim', 'assets/img/tt1.jpg\r\n', 48000, '', 0, 0),
(2, 'Ngày xưa có một chuyện tình', 'assets/img/tt2.jpg', 56000, '', 0, 0),
(3, 'Con chó nhỏ mang giỏ hoa hồng ', 'assets/img/tt3.jpg', 85000, '', 0, 0),
(4, 'Thuyết tán tỉnh cậu', 'assets/img/tt4.jpg', 75000, '', 0, 0),
(5, 'Chuộc tội', 'assets/img/tt5.jpg', 125000, '', 0, 0),
(6, 'Chuyện con chó trung thành', 'assets/img/tt6.jpg', 45000, '', 0, 0),
(7, 'Mắt biếc', 'assets/img/tt7.jpg', 87000, '', 0, 0),
(8, 'Thiên thần sa ngã', 'assets/img/tt8.jpg', 85600, '', 0, 0),
(9, 'Gọi em bằng tên anh', 'assets/img/tt9.jpg', 74000, '', 0, 0),
(10, 'Phòng trọ ba người', 'assets/img/tt10.jpg', 65000, '', 0, 0),
(11, 'Kiếp nào ta cũng tìm thấy nhau', 'assets/img/tl1.jpg', 70000, '', 0, 0),
(12, 'Hiệu ứng đèn gas', 'assets/img/tl2.jpg', 125000, '', 0, 0),
(13, 'Tâm lý học và đời sống', 'assets/img/tl3.jpg', 110000, '', 0, 0),
(14, 'Sang chấn tâm lý', 'assets/img/tl4.jpg', 95000, '', 0, 0),
(15, 'Thiên tài bên trái-kẻ điên bên phải', 'assets/img/tl5.jpg', 150000, '', 0, 0),
(16, 'Tâm lý học giao tiếp', 'assets/img/tl6.jpg', 120000, '', 0, 0),
(17, 'Thuật đọc tâm', 'assets/img/tl7.jpg', 140000, '', 0, 0),
(18, 'Luận về yêu', 'assets/img/tl8.jpg', 105000, '', 0, 0),
(19, 'Luật yêu đương', 'assets/img/tl9.jpg', 120000, '', 0, 0),
(20, 'Tâm lý học đàm phán', 'assets/img/tl10.jpg', 155000, '', 0, 0),
(21, 'Giá trong chiến lược kinh doanh', 'assets/img/qt1.jpg', 60000, '', 0, 0),
(22, 'Chiến lượt đại dương xanh', 'assets/img/qt2.jpg', 45000, '', 0, 0),
(23, 'Vị tu sĩ bán chiếc Ferrari', 'assets/img/qt3.jpg', 50000, '', 0, 0),
(24, 'Bí mật tư duy triệu phú', 'assets/img/qt4.jpg', 71000, '', 0, 0),
(25, 'Từ bỏ thói quen giảm giá', 'assets/img/qt5.jpg', 180000, '', 0, 0),
(26, 'Những đòn tâm lý trong định giá sản phẩm', 'assets/img/qt6.jpg', 170000, '', 0, 0),
(27, 'Định giá dựa trên giá trị', 'assets/img/qt7.jpg', 190000, '', 0, 0),
(28, 'Vị giám đốc một phút', 'assets/img/qt8.jpg', 37000, '', 0, 0),
(29, 'Nhà lãnh đạo không chức danh', 'assets/img/qt9.jpg', 50000, '', 0, 0),
(30, 'Làm điều quan trọng', 'assets/img/qt10.jpg', 123000, '', 0, 0),
(31, 'Hiệu ứng chim mồi', 'assets/img/mk1.jpg', 80000, '', 0, 0),
(32, 'Hướng dẫn quảng cáo Google Ads', 'assets/img/mk2.jpg', 164000, '', 0, 0),
(33, 'Marketing du kích-truyền thông xã hội', 'assets/img/mk3.jpg', 145000, '', 0, 0),
(34, 'Hướng dẫn bài bản tối ưu hóa website doanh nghiệp', 'assets/img/mk4.jpg', 168000, '', 0, 0),
(35, 'Đừng bán sản phẩm-hãy bán giải pháp', 'assets/img/mk5.jpg', 128000, '', 0, 0),
(36, 'Quy trình bán hàng chuyên nghiệp', 'assets/img/mk6.jpg', 95000, '', 0, 0),
(37, 'Chiến lược Marketing cho thị trường công nghệ', 'assets/img/mk7.jpg', 127200, '', 0, 0),
(38, 'Bộ sách tự học MBA', 'assets/img/mk8.jpg', 148000, '', 0, 0),
(39, 'Con đường trở thành Freelancer Writer', 'assets/img/mk9.jpg', 176000, '', 0, 0),
(40, 'Huấn luyện kỹ năng bán hàng', 'assets/img/mk10.jpg', 84000, '', 0, 0),
(41, 'Đắc nhân tâm', 'assets/img/rl1.jpg', 57000, '', 0, 0),
(42, 'Cách sống', 'assets/img/rl2.jpg', 52500, '', 0, 0),
(43, 'Những bước đơn giản đến ước mơ', 'assets/img/rl3.jpg', 92000, '', 0, 0),
(44, 'Nói nhiều không bằng nói đúng', 'assets/img/rl4.jpg', 44500, '', 0, 0),
(45, 'Sức mạnh của tĩnh tâm', 'assets/img/rl5.jpg', 69000, '', 0, 0),
(46, 'Từ hạt cát đến ngọc trai', 'assets/img/rl6.jpg', 76000, '', 0, 0),
(47, 'Tâm buông bỏ-đời bình an', 'assets/img/rl7.png', 58000, '', 0, 0),
(48, 'Rèn luyện kỹ năng sống dành cho học sinh', 'assets/img/rl8.jpg', 44000, '', 0, 0),
(49, 'Điều vĩ đại đời thường', 'assets/img/rl9.jpg', 68000, '', 0, 0),
(50, 'Thuật xử thế của người xưa', 'assets/img/rl10.jpg', 34000, '', 0, 0);

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
(3, 'Minh Nhut', 'Huỳnh Minh Nhựt', 'e10adc3949ba59abbe56e057f20f883e', 925682400, 1593325278, 1593325278),
(4, 'minhhien', 'Huỳnh Minh Hiển ', 'e10adc3949ba59abbe56e057f20f883e', 867362400, 1593654103, 1593654103);

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

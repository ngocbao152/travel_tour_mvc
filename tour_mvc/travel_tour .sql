-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2018 at 05:43 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_tour`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `userAdmin` varchar(255) NOT NULL,
  `passAdmin` varchar(255) NOT NULL,
  `emailAdmin` varchar(255) NOT NULL,
  `avata` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `userAdmin`, `passAdmin`, `emailAdmin`, `avata`, `status`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@gmail.com', 'admin.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chitietdat`
--

CREATE TABLE `chitietdat` (
  `MaDat` int(20) NOT NULL,
  `MaTour` int(11) DEFAULT NULL,
  `MaSale` int(20) DEFAULT NULL,
  `NgayDi` date NOT NULL,
  `songuoilon` int(20) DEFAULT NULL,
  `sotreem` int(20) DEFAULT NULL,
  `sotrenho` int(11) DEFAULT NULL,
  `sotienThanhToan` int(11) NOT NULL,
  `xacnhan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitietdat`
--

INSERT INTO `chitietdat` (`MaDat`, `MaTour`, `MaSale`, `NgayDi`, `songuoilon`, `sotreem`, `sotrenho`, `sotienThanhToan`, `xacnhan`) VALUES
(1, 1, NULL, '2018-11-24', 2, 1, NULL, 8000000, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `MaCom` int(11) NOT NULL,
  `MaTV` int(20) NOT NULL,
  `MaTour` int(20) NOT NULL,
  `NoiDungCom` text CHARACTER SET utf8 NOT NULL,
  `Vote` int(11) NOT NULL,
  `reply` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`MaCom`, `MaTV`, `MaTour`, `NoiDungCom`, `Vote`, `reply`) VALUES
(1, 1, 1, 'Các mẫu website bán tour đều có thể cho phép các doanh nghiệp công ty tùy ý cấu hình các tour du lịch về giá cả, thời gian, điểm đến, điểm đi, lịch trình chuyến ...', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `dattour`
--

CREATE TABLE `dattour` (
  `MaDat` int(20) NOT NULL,
  `MaTV` int(20) NOT NULL,
  `ngaydat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dattour`
--

INSERT INTO `dattour` (`MaDat`, `MaTV`, `ngaydat`) VALUES
(1, 1, '2018-11-28 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `khoihanh`
--

CREATE TABLE `khoihanh` (
  `MaNgaykh` int(25) NOT NULL,
  `MaTour` int(20) NOT NULL,
  `ngaykhoihanh` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khoihanh`
--

INSERT INTO `khoihanh` (`MaNgaykh`, `MaTour`, `ngaykhoihanh`) VALUES
(1, 1, '2018-11-29'),
(7, 6, '2018-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `loaitour`
--

CREATE TABLE `loaitour` (
  `MaLoai` varchar(5) CHARACTER SET utf8 NOT NULL,
  `TenLoai` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaitour`
--

INSERT INTO `loaitour` (`MaLoai`, `TenLoai`) VALUES
('1', 'Tour Miền Bắc'),
('2', 'Tour Miền Nam'),
('3', 'Tour Miền Trung');

-- --------------------------------------------------------

--
-- Table structure for table `phanhoi`
--

CREATE TABLE `phanhoi` (
  `MaPH` int(11) NOT NULL,
  `TenNguoiGui` varchar(30) CHARACTER SET utf8 NOT NULL,
  `EmailNguoiGui` varchar(30) CHARACTER SET utf8 NOT NULL,
  `TieuDe` varchar(100) CHARACTER SET utf8 NOT NULL,
  `NoiDung` text CHARACTER SET utf8 NOT NULL,
  `NgayGui` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phanhoi`
--

INSERT INTO `phanhoi` (`MaPH`, `TenNguoiGui`, `EmailNguoiGui`, `TieuDe`, `NoiDung`, `NgayGui`) VALUES
(1, 'Nguyễn Bảo Ngọc', 'nguyenngoc1950@gmail.com', 'Hà Nội - Lào Cai - Sapa ', 'Cho mình hỏi về thời gian củ thể xuất phát ở đâu đc ko ạ?', '2018-11-16 13:21:09'),
(2, 'Trương Văn Dũng', 'tvdung@gmail.com', 'Miền Tây - Sa Đéc - Cần Thơ \r\n\r\n', 'Có hướng dẫn viên nào xinh đẹp trong tour này ko ạ?', '2018-11-16 08:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `MaSale` int(20) NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `tgian` varchar(255) NOT NULL,
  `noidung` text NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gianguoilon` decimal(10,0) NOT NULL,
  `giatreem` int(11) NOT NULL,
  `ngaykhoihanh` date NOT NULL,
  `giokhoihanh` varchar(255) NOT NULL,
  `diemkhoihanh` varchar(255) NOT NULL,
  `ngaythemSale` datetime NOT NULL,
  `slideshow` varchar(255) NOT NULL,
  `startSale` date NOT NULL,
  `stopSale` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`MaSale`, `MaLoai`, `title`, `tgian`, `noidung`, `image`, `gianguoilon`, `giatreem`, `ngaykhoihanh`, `giokhoihanh`, `diemkhoihanh`, `ngaythemSale`, `slideshow`, `startSale`, `stopSale`) VALUES
(1, 2, 'Hà Nội - Lào Cai', '3 ngày', ' Bản Tả Van - Lao Chải đường vào Tả Van quanh co một bên là thung lũng Mường Hoa với những thửa ruộng bậc thang màu mỡ được tổ điểm bởi màu xanh của ngô ', '5bfeb257c2195-slide1.jpg', '7500000', 879678, '1970-01-01', '8:00', 'Sài Gòn', '2018-11-20 06:17:47', '5bfeb0eec0a01-slide1.jpg', '2018-11-13', '2018-11-11'),
(2, 1, 'Hà Nội - Lào Cai ', '2 ngày', ' Bản Tả Van - Lao Chải đường vào Tả Van quanh co một bên là thung lũng Mường Hoa với những thửa ruộng bậc thang màu mỡ được tổ điểm bởi màu xanh của ngô và ', '5bfeb263a96b6-slide1.jpg', '4200000', 546456, '2018-12-18', '8:00', 'Sài Gòn', '2018-11-21 05:49:55', '5bfeb22431d40-slide1.jpg', '2018-11-05', '2018-11-19'),
(3, 1, 'Hà Nội - Lào Cai - Sapaa', '3 ngày', '- Bản Tả Van - Lao Chải đường vào Tả Van quanh co một bên là thung lũng Mường Hoa với những thửa ruộng bậc thang màu mỡ được tổ điểm bởi màu xanh của ngô và lúa.', '5bfeb26fdf9ad-slide1.jpg', '8500000', 3500000, '2018-11-30', '8:00', 'Sài Gòn', '2018-11-25 05:26:29', '5bfeb23157910-slide1.jpg', '2018-11-20', '2018-11-21');

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `MaTV` int(11) NOT NULL,
  `usename` varchar(255) NOT NULL,
  `passTV` varchar(255) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `gioitinh` varchar(11) NOT NULL,
  `emailTV` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `soCMT` int(20) NOT NULL,
  `soDT` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`MaTV`, `usename`, `passTV`, `hoten`, `gioitinh`, `emailTV`, `diachi`, `soCMT`, `soDT`) VALUES
(1, 'ngocbao', 'e10adc3949ba59abbe56e057f20f883e', 'ngocbao', 'nam', 'ngocbao@gmail.com', 'Quảng Bình', 194646574, 366388171);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `MaTinTuc` int(11) NOT NULL,
  `TenTinTuc` varchar(30) CHARACTER SET utf8 NOT NULL,
  `AnhTT` varchar(255) CHARACTER SET utf8 NOT NULL,
  `NoiDung` text CHARACTER SET utf8 NOT NULL,
  `NgayGuiTT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`MaTinTuc`, `TenTinTuc`, `AnhTT`, `NoiDung`, `NgayGuiTT`) VALUES
(1, 'DU XUÂN HỘI AN, VỀ MIỀN KÝ ỨC ', '5bfbab6a25337-a.jpg', 'Trò diễn bài chòi Hội An sử dụng 4 làn điệu chính: Xuân nữ, Cổ bản, Xàng xê, hò Quảng. Chỉ với hai nhạc cụ là trống cái và đàn nhị, nhưng với sự phối hợp ăn ý của các nhạc công, cùng diễn xướng đầy say mê nhiệt tình của các anh hiệu, đêm hội bài chòi khiến cuộc vui náo nức.\r\n\r\nDu xuân Hội An, về miền ký ức bạn sẽ được thưởng thức giọng hát ngọt ngào truyền cảm, ứng đối tài tình qua những câu ca dao, bài thơ, bài vè gần gũi với đời thường, ca ngợi tình làng nghĩa xóm hay phê phán những thói hư tật xấu chính là nét hấp dẫn đối với người chơi bài chòi. Từ tính chất dân gian, mộc mạc như vậy, dần dần bài chòi đã phát triển thành nghệ thuật quần chúng.\r\n\r\nNăm 1996, nhà hát nghệ thuật cổ truyền Hội An thuộc Trung tâm văn hóa - thể thao Hội An ra đời là dấu mốc đưa bài chòi Hội An lên sân khấu biểu diễn. Hai năm sau, không gian diễn xướng của bài chòi Hội An được mang ra phố trình diễn trong chương trình “Đêm phố cổ”. Từ một thú chơi dân dã, món ăn tinh thần của người dân, nghệ thuật bài chòi chính thức được UNESCO công nhận là Di sản văn hóa phi vật thể vào ngày 7/12/2017.\r\n\r\n', '2018-11-26 09:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `MaTour` int(25) NOT NULL,
  `MaLoai` int(20) NOT NULL,
  `TenTour` varchar(100) CHARACTER SET utf8 NOT NULL,
  `tgian` varchar(255) CHARACTER SET utf8 NOT NULL,
  `NoiDungTour` text CHARACTER SET utf8 NOT NULL,
  `AnhTour` varchar(255) CHARACTER SET utf8 NOT NULL,
  `GiaNguoiLon` int(123) NOT NULL,
  `GiaTreEm` int(123) NOT NULL,
  `DiemKhoiHanh` varchar(100) CHARACTER SET utf8 NOT NULL,
  `NgayThem` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`MaTour`, `MaLoai`, `TenTour`, `tgian`, `NoiDungTour`, `AnhTour`, `GiaNguoiLon`, `GiaTreEm`, `DiemKhoiHanh`, `NgayThem`) VALUES
(1, 1, 'Đà Lạt - Đường Hầm Điêu Khắc Đất Sét ', '2 ngày', 'Quý khách tập trung tại Vietravel (190 Pasteur, Q3, Tp.HCM), khởi hành đi Đà Lạt. Trên đường đi Quý khách dừng chân ăn sáng. Tiếp tục hành trình đến Đà Lạt, đoàn dừng ăn trưa tại khu vực Tâm Châu. Đến nơi, đoàn tham quan Nhà thờ Domain De Marie. Ăn tối và nhận phòng khách sạn. Buổi tối, Quý khách tự do tham quan Hồ Xuân Hương, thưởng thức cà phê trong không khí se lạnh của phố núi Đà Lạt. Nghỉ đêm tại Đà Lạt.\r\n\r\n', '5bfec500e39c5-', 8500000, 3500000, 'Sài Gòn', '2018-11-28 05:40:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chitietdat`
--
ALTER TABLE `chitietdat`
  ADD PRIMARY KEY (`MaDat`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`MaCom`);

--
-- Indexes for table `dattour`
--
ALTER TABLE `dattour`
  ADD PRIMARY KEY (`MaDat`);

--
-- Indexes for table `khoihanh`
--
ALTER TABLE `khoihanh`
  ADD PRIMARY KEY (`MaNgaykh`);

--
-- Indexes for table `loaitour`
--
ALTER TABLE `loaitour`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Indexes for table `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`MaPH`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`MaSale`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`MaTV`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`MaTinTuc`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`MaTour`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chitietdat`
--
ALTER TABLE `chitietdat`
  MODIFY `MaDat` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `MaCom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dattour`
--
ALTER TABLE `dattour`
  MODIFY `MaDat` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `khoihanh`
--
ALTER TABLE `khoihanh`
  MODIFY `MaNgaykh` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `MaPH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `MaTV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `MaTinTuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

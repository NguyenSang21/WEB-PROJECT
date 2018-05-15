-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 15, 2018 lúc 07:23 PM
-- Phiên bản máy phục vụ: 10.1.32-MariaDB
-- Phiên bản PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlbhdt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `idHD` int(11) NOT NULL,
  `idNGDUNG` int(11) NOT NULL,
  `idM` int(11) NOT NULL,
  `slMua` int(11) DEFAULT NULL,
  `tongTien` double DEFAULT NULL,
  `tongTienHD` double DEFAULT NULL,
  `ngMua` datetime(6) DEFAULT NULL,
  `tinhTrang` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaimay`
--

CREATE TABLE `loaimay` (
  `idloai` int(11) NOT NULL,
  `tenloai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loaimay`
--

INSERT INTO `loaimay` (`idloai`, `tenloai`) VALUES
(1, 'dienthoai'),
(2, 'maytinhbang'),
(3, 'qui 12312312');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `may`
--

CREATE TABLE `may` (
  `idM` int(11) UNSIGNED NOT NULL,
  `tenMay` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `NSX` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `ManHinh` varchar(150) CHARACTER SET utf8mb4 DEFAULT NULL,
  `HDH` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `CPU` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `RAM` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `CAMERA` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `PIN` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Gia` double DEFAULT NULL,
  `ghiChu` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL,
  `slMatDinh` int(11) DEFAULT NULL,
  `slHienTai` int(11) DEFAULT NULL,
  `slXem` int(11) DEFAULT NULL,
  `ngSX` date DEFAULT NULL,
  `Loai` int(11) DEFAULT NULL,
  `Comment` varchar(2000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `MoTa` varchar(3000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `linkAnh` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `may`
--

INSERT INTO `may` (`idM`, `tenMay`, `NSX`, `ManHinh`, `HDH`, `CPU`, `RAM`, `CAMERA`, `PIN`, `Gia`, `ghiChu`, `slMatDinh`, `slHienTai`, `slXem`, `ngSX`, `Loai`, `Comment`, `MoTa`, `linkAnh`) VALUES
(1, 'iPhone X 256GB', 'APPLE', ' 5.8\", Super Retina', ' iOS 11', ' Apple A11 Bionic 6 nhân', ' 3 GB, ROM: 256 GB', ' 2 camera 12 MP, Selfie: 7 MP', ' 2716 mAh', 34790000, ' Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2017-06-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn1.tgdd.vn/Products/Images/42/114111/iphone-x-256gb-a1-600x600.jpg'),
(2, 'iPhone X 64GB', 'APPLE', ' 5.8\", Super Retina', ' iOS 11', ' Apple A11 Bionic 6 nhân', ' 3 GB, ROM: 64 GB', ' 2 camera 12 MP, Selfie: 7 MP', ' 2716 mAh', 29990000, ' Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2017-05-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb-hh-600x600-400x400.jpg'),
(3, 'iPhone 8 Plus 256GB', 'APPLE', ' 5.5\", Retina HD', ' iOS 11', ' Apple A11 Bionic 6 nhân', ' 3 GB, ROM: 256 GB', ' 2 camera 12 MP, Selfie: 7 MP', ' 2691 mAh', 28790000, ' Giảm ngay 1 triệu HOẶC Phiếu mua hàng trị giá 1 triệu Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội). Giảm ngay 1.000.000đ khi thanh toán trực tuyến bằng thẻ Mastercard (KHÔNG áp dụng Trả góp)', 100, 100, 0, '2017-04-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn4.tgdd.vn/Products/Images/42/114114/iphone-8-plus-256gb-hh-400x400.jpg\r\n'),
(4, 'iPhone 8 256GB', 'APPLE', ' 4.7\", Retina HD', ' iOS 11', ' Apple A11 Bionic 6 nhân', ' 2 GB, ROM: 256 GB', ' 12 MP, Selfie: 7 MP', ' 1821 mAh', 25790000, ' Giảm ngay 1 triệu HOẶC Phiếu mua hàng trị giá 1 triệu Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội). Giảm ngay 1.000.000đ khi thanh toán trực tuyến bằng thẻ Mastercard (KHÔNG áp dụng Trả góp)', 100, 100, 0, '2017-03-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn2.tgdd.vn/Products/Images/42/114112/iphone-8-256gb-hh-400x400.jpg\r\n'),
(5, 'iPhone 8 Plus 64GB', 'APPLE', ' 5.5\", Retina HD', ' iOS 11', ' Apple A11 Bionic 6 nhân', ' 3 GB, ROM: 64 GB', ' 2 camera 12 MP, Selfie: 7 MP', ' 2691 mAh', 23990000, ' Giảm ngay 1 triệu HOẶC Phiếu mua hàng trị giá 1 triệu Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội). Giảm ngay 1.000.000đ khi thanh toán trực tuyến bằng thẻ Mastercard (KHÔNG áp dụng Trả góp)', 100, 100, 0, '2017-02-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn.tgdd.vn/Products/Images/42/114110/iphone-8-plus-64gb-h1-400x460.png'),
(6, 'iPhone 7 Plus 256GB', 'APPLE', ' 5.5\", Retina HD', ' iOS 10', ' Apple A10 Fusion 4 nhân', ' 3 GB, ROM: 256 GB', ' 2x12 MP, Selfie: 7 MP', ' 2900 mAh, SIM: 1 SIM', 21990000, ' Giảm ngay 1 triệu HOẶC Phiếu mua hàng trị giá 1 triệu Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2017-01-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn4.tgdd.vn/Products/Images/42/87839/iphone-7-plus-128gb-hh-400x400.jpg\r\n'),
(7, 'iPhone 7 Plus 128GB', 'APPLE', ' 5.5\", Retina HD', ' iOS 10', ' Apple A10 Fusion 4 nhân', ' 3 GB, ROM: 128 GB', ' 2x12 MP, Selfie: 7 MP', ' 2900 mAh, SIM: 1 SIM', 22990000, ' Giảm ngay 1 triệu HOẶC Phiếu mua hàng trị giá 1 triệu Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2017-01-17', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn4.tgdd.vn/Products/Images/42/87839/iphone-7-plus-128gb-hh-400x400.jpg\r\n'),
(8, 'iPhone 8 64GB', 'APPLE', ' 4.7\", Retina HD', ' iOS 11', ' Apple A11 Bionic 6 nhân', ' 2 GB, ROM: 64 GB', ' 12 MP, Selfie: 7 MP', ' 1821 mAh', 20990000, ' Giảm ngay 1 triệu HOẶC Phiếu mua hàng trị giá 1 triệu Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội). Giảm ngay 1.000.000đ khi thanh toán trực tuyến bằng thẻ Mastercard (KHÔNG áp dụng Trả góp)', 100, 100, 0, '2016-07-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn3.tgdd.vn/Products/Images/42/114113/iphone-8-64gb-hh-400x400.jpg\r\n'),
(9, 'iPhone 7 Plus 32GB', 'APPLE', ' 5.5\", Retina HD', ' iOS 10', ' Apple A10 Fusion 4 nhân', ' 3 GB, ROM: 32 GB', ' Hai Camera 12 MP, Selfie: 7 MP', ' 2900 mAh, SIM: 1 SIM', 19990000, ' Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2016-06-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn4.tgdd.vn/Products/Images/42/78124/iphone-7-plus-32gb-hh-400x400.jpg\r\n'),
(10, 'iPhone 7 256GB', 'APPLE', ' 4.7\", Retina HD', ' iOS 10', ' Apple A10 Fusion 4 nhân', ' 2 GB, ROM: 256 GB', ' 12 MP, Selfie: 7 MP', ' 1960 mAh, SIM: 1 SIM', 18990000, ' Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2016-05-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn4.tgdd.vn/Products/Images/42/87839/iphone-7-plus-128gb-hh-400x400.jpg\r\n'),
(11, 'iPhone 7 128GB', 'APPLE', ' 4.7\", Retina HD', ' iOS 10', ' Apple A10 Fusion 4 nhân', ' 2 GB, ROM: 128 GB', ' 12 MP, Selfie: 7 MP', ' 1960 mAh, SIM: 1 SIM', 18990000, ' Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2016-04-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn4.tgdd.vn/Products/Images/42/87839/iphone-7-plus-128gb-hh-400x400.jpg\r\n'),
(12, 'iPhone 6s 128GB', 'APPLE', ' 4.7\", Retina HD', ' iOS 10', ' Apple A9 2 nhân 64-bit', ' 2 GB, ROM: 128 GB', ' 12 MP, Selfie: 5 MP', ' 1960 mAh, SIM: 1 SIM', 13990000, ' Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2016-03-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn2.tgdd.vn/Products/Images/42/87842/iphone-6s-32gb-vang-dong-1-400x400.png\r\n'),
(13, 'iPhone 7 32GB', 'APPLE', ' 4.7\", Retina HD', ' iOS 10', ' Apple A10 Fusion 4 nhân', ' 2 GB, ROM: 32 GB', ' 12 MP, Selfie: 7 MP', ' 1960 mAh, SIM: 1 SIM', 15990000, ' Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2016-02-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-hh-400x400.jpg\r\n'),
(14, 'iPhone 6s Plus 32GB', 'APPLE', ' 5.5\", Retina HD', ' iOS 10', ' Apple A9 2 nhân 64-bit', ' 2 GB, ROM: 32 GB', ' 12 MP, Selfie: 5 MP', ' 2750 mAh', 14490000, ' Phiếu mua hàng trị giá 500.000đ Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2016-01-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn1.tgdd.vn/Products/Images/42/87846/iphone-6s-plus-32gb-hh-400x400.jpg\r\n'),
(15, 'iPhone 6s 32GB', 'APPLE', ' 4.7\", Retina HD', ' iOS 10', ' Apple A9 2 nhân', ' 2 GB, ROM: 32 GB', ' 12 MP, Selfie: 5 MP', ' 1715 mAh, SIM: 1 Sim', 12990000, ' Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2015-07-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn2.tgdd.vn/Products/Images/42/87842/iphone-6s-32gb-vang-dong-1-400x400.png\r\n'),
(16, 'iPhone 6 32GB', 'APPLE', ' 4.7\", HD', ' iOS 10', ' Apple A8 2 nhân', ' 1 GB, ROM: 32 GB', ' 8 MP, Selfie: 1.2 MP', ' 1810 mAh', 8990000, ' Phiếu mua hàng trị giá 500.000đ Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2015-06-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn2.tgdd.vn/Products/Images/42/92962/iphone-6-32gb-gold-hh-400x400.jpg\r\n'),
(17, 'iPhone 5S 16GB', 'APPLE', ' 4\", Retina', ' iOS 10', ' Apple A7 2 nhân', ' 1 GB, ROM: 16 GB', ' 8 MP, Selfie: 1.2 MP', ' 1560 mAh, SIM: 1 Sim', 5990000, ' Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2015-04-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn.tgdd.vn/Products/Images/42/57240/iPhone-5-l-190x190.jpg\r\n'),
(18, 'Samsung Galaxy Note 8', 'SAMSUNG', ' 6.3\", Quad HD (2K)', ' Android 7.1', ' Exynos 8895 8 nhân', ' 6 GB, ROM: 64 GB', ' 2 camera 12 MP, Selfie: 8 MP', ' 3300 mAh', 22490000, ' Cơ hội trúng xe SH 150i (áp dụng Hà Nội và một số tỉnh miền Bắc). Phiếu mua hàng Samsung trị giá 150.000đ', 100, 100, 0, '2017-07-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn.tgdd.vn/Products/Images/42/106211/samsung-galaxy-note8-1-400x460.png'),
(19, 'Samsung Galaxy S8 Plus', 'SAMSUNG', ' 6.2, Quad HD (2K)', ' Android 7.0', ' Exynos 8895 8 nhân', ' 4 GB, ROM: 64 GB', ' 12 MP, Selfie: 8 MP', ' 3500 mAh', 20490000, ' Cơ hội trúng xe SH 150i (áp dụng Hà Nội và một số tỉnh miền Bắc). Bao da Clear View HOẶC Kính thực tế ảo Samsung Gear VR HOẶC Máy xay sinh tố Philips HR2108', 100, 100, 0, '2017-06-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn1.tgdd.vn/Products/Images/42/91131/samsung-galaxy-s8-plus-hh-600x600-200x200.jpg\r\n'),
(20, 'Samsung Galaxy S8', 'SAMSUNG', ' 5.8\", Quad HD (2K)', ' Android 7.0', ' Exynos 8895 8 nhân', ' 4 GB, ROM: 64 GB', ' 12 MP, Selfie: 8 MP', ' 3000 mAh', 18490000, ' Cơ hội trúng xe SH 150i (áp dụng Hà Nội và một số tỉnh miền Bắc). Bao da Clear View HOẶC Kính thực tế ảo Samsung Gear VR HOẶC Máy xay sinh tố Philips HR2108', 100, 100, 0, '2017-05-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn4.tgdd.vn/Products/Images/42/78479/samsung-galaxy-s8-4-300x300.jpg\r\n'),
(21, 'Samsung Galaxy Note FE', 'SAMSUNG', ' 5.7\", Quad HD (2K)', ' Android 7.0', ' Exynos 8890 8 nhân 64-bit', ' 4 GB, ROM: 64 GB', ' 12 MP, Selfie: 5 MP', ' 3200 mAh', 13990000, ' Cơ hội trúng xe SH 150i (áp dụng Hà Nội và một số tỉnh miền Bắc). Phiếu mua hàng Samsung trị giá 400.000đ', 100, 100, 0, '2017-04-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn4.tgdd.vn/Products/Images/42/103244/samsung-galaxy-note-fe-ha1-200x200.jpg\r\n'),
(22, 'Samsung Galaxy C9 Pro', 'SAMSUNG', ' 6\", Full HD', ' Android 6.0 (Marshmallow)', ' Snapdragon 653 8 nhân', ' 6 GB, ROM: 64 GB', ' 16 MP, Selfie: 16 MP', ' 4000 mAh', 11490000, ' Cơ hội trúng xe SH 150i (áp dụng Hà Nội và một số tỉnh miền Bắc). Phiếu mua hàng Samsung trị giá 150.000đ khi mua Online', 100, 100, 0, '2017-03-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn2.tgdd.vn/Products/Images/42/88397/samsung-galaxy-c9-pro2-300x300.jpg\r\n'),
(23, 'Samsung Galaxy A7 (2017)', 'SAMSUNG', ' 5.7\", Full HD', ' Android 6.0 (Marshmallow)', ' Exynos 7880', ' 3 GB, ROM: 32 GB', ' 16 MP, Selfie: 16 MP', ' 3600 mAh, SIM: 2 SIM', 9990000, ' Cơ hội trúng xe SH 150i (áp dụng Hà Nội và một số tỉnh miền Bắc). Phiếu mua hàng Samsung trị giá 100.000đ khi mua Online', 100, 100, 0, '2017-02-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn2.tgdd.vn/Products/Images/42/88537/samsung-galaxy-a7-2017-hh-600x600.jpg\r\n'),
(24, 'Samsung Galaxy J7+', 'SAMSUNG', ' 5.5\", Full HD', ' Android 7.0', ' MediaTek Helio P25 8 nhân', ' 4 GB, ROM: 32 GB', ' 13 MP và 5 MP (2 camera), Selfie: 16 MP', ' 3000 mAh', 8690000, ' Cơ hội trúng xe SH 150i (áp dụng Hà Nội và một số tỉnh miền Bắc). Phiếu mua hàng Samsung trị giá 100.000đ khi mua Online', 100, 100, 0, '2017-01-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn.tgdd.vn/Products/Images/42/112970/samsung-galaxy-j7-plus-hh-200x200.jpg\r\n'),
(25, 'Samsung Galaxy A5 (2017)', 'SAMSUNG', ' 5.2\", Full HD', ' Android 6.0 (Marshmallow)', ' Exynos 7880', ' 3 GB, ROM: 32 GB', ' 16 MP, Selfie: 16 MP', ' 3000 mAh, SIM: 2 SIM', 7990000, ' Cơ hội trúng xe SH 150i (áp dụng Hà Nội và một số tỉnh miền Bắc). Phiếu mua hàng Samsung trị giá 100.000đ khi mua Online', 100, 100, 0, '2016-07-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn3.tgdd.vn/Products/Images/42/88268/samsung-galaxy-a5-2017-200x200.jpg\r\n'),
(26, 'Samsung Galaxy J7 Pro', 'SAMSUNG', ' 5.5\", Full HD', ' Android 7.0', ' Exynos, 8 nhân', ' 3 GB, ROM: 32 GB', ' 13 MP, Selfie: 13 MP', ' 3600mAh', 6990000, '0', 100, 100, 0, '2016-05-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn4.tgdd.vn/Products/Images/42/103404/samsung-galaxy-j7-pro-hh-200x200.jpg\r\n'),
(27, 'Samsung Galaxy J7 Prime', 'SAMSUNG', ' 5.5\", Full HD', ' Android 6.0 (Marshmallow)', ' Exynos 7870 8 nhân', ' 3 GB, ROM: 32 GB', ' 13 MP, Selfie: 8 MP', ' 3300 mAh, SIM: 2 SIM', 5490000, '0', 100, 100, 0, '2016-03-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn3.tgdd.vn/Products/Images/42/84798/samsung-galaxy-j7-prime-hh-200x200.jpg\r\n'),
(28, 'Samsung Galaxy J3 Pro', 'SAMSUNG', ' 5\", HD', ' Android 7.0', ' Exynos 7570 4 nhân 64-bit', ' 2 GB, ROM: 16 GB', ' 13 MP, Selfie: 5 MP', ' 2400 mAh', 4490000, '0', 100, 100, 0, '2016-01-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn.tgdd.vn/Products/Images/42/77849/samsung-galaxy-j3-2017-2-400x460.png'),
(29, 'Samsung Galaxy J3 LTE', 'SAMSUNG', ' 5\", HD', ' Android 5.1 (Lollipop)', ' Spreadtrum SC7731 4 nhân', ' 1.5 GB, ROM: 8 GB', ' 8 MP, Selfie: 5 MP', ' 2600 mAh, SIM: 2 SIM', 2990000, '0', 100, 100, 0, '2015-05-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn2.tgdd.vn/Products/Images/42/84667/samsung-galaxy-j3-lte-mau-vang-up-1-1-1-200x200.jpg\r\n'),
(30, 'Samsung Galaxy J2 Prime', 'SAMSUNG', ' 5\", qHD', ' Android 6.0 (Marshmallow)', ' MT6737 4 nhân', ' 1.5 GB, ROM: 8 GB', ' 8 MP, Selfie: 5 MP', ' 2600 mAh, SIM: 2 SIM', 2690000, ' Cơ hội trúng xe SH 150i (áp dụng Hà Nội và một số tỉnh miền Bắc). Phiếu mua hàng Samsung trị giá 100.000đ khi mua Online', 100, 100, 0, '2015-01-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn3.tgdd.vn/Products/Images/42/88573/samsung-galaxy-j2-prime-hh-200x200.jpg\r\n'),
(31, 'Samsung E1200', 'SAMSUNG', 'Màn hình QCIF, 1.5 inch', 'Danh b?: 1000 s?, 1 SIM', 'Bàn phím cao su ch?ng b?i', 'H? tr? ch?c nang dèn pin', 'Dung lu?ng pin: 800 mAh', ' 2600 mAh, SIM: 2 SIM', 350, '0', 100, 100, 0, '2014-07-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn2.tgdd.vn/Products/Images/42/56352/samsung-e1200-hh-600x600.jpg\r\n'),
(32, 'iPad Pro 10.5 inch Wifi Cellular 64GB (2017)', 'APPLE', ' 10.5\", Retina', ' IOS 10,  6 nhân', ' Apple A10 Fusion 4 nhân', ' 4 GB, ROM: 64 GB', ' 12 MP và 7 MP', ' 30.4 Wh', 19990000, ' Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2017-07-27', 2, 'Không có Cmt', 'Không có mô tả', 'https://cdn4.tgdd.vn/Products/Images/522/109599/ipad-pro-105-inch-wifi-cellular-64gb-2017-111-200x200.jpg\r\n'),
(33, 'iPad Pro 10.5 inch Wifi 64GB (2017)', 'APPLE', ' 10.5\", Retina', ' IOS 10,  6 nhân', ' Apple A10 Fusion 4 nhân', ' 4 GB, ROM: 64 GB', ' 12 MP và 7 MP', ' 30.4 Wh', 16990000, ' Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2017-06-27', 2, 'Không có Cmt', 'Không có mô tả', 'https://cdn1.tgdd.vn/Products/Images/522/106036/ipad-pro-105-inch-wifi-64gb-2017-321-200x200.jpg\r\n'),
(34, 'iPad Wifi Cellular 128GB (2017)', 'APPLE', ' 9.7\", Retina', ' IOS 10,  2 nhân', ' Apple A11 Bionic 6 nhân', ' 2 GB, ROM: 128 GB', ' 8 MP và 1.2 MP', ' 32.4 Wh', 14990000, ' Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2017-05-27', 2, 'Không có Cmt', 'Không có mô tả', 'https://cdn1.tgdd.vn/Products/Images/522/103406/ipad-wifi-cellular-128gb-2017-432-200x200.jpg\r\n'),
(35, 'iPad Wifi Cellular 32GB (2017)', 'APPLE', ' 9.7\", Retina', ' IOS 10,  2 nhân', ' Apple A10 Fusion 4 nhân', ' 2 GB, ROM: 32 GB', ' 8 MP và 1.2 MP', ' 32.4 Wh', 12990000, ' Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2017-04-27', 2, 'Không có Cmt', 'Không có mô tả', 'https://cdn1.tgdd.vn/Products/Images/522/101836/ipad-wifi-cellular-32gb-2017-321-200x200.jpg\r\n'),
(36, 'iPad Pro 9.7 inch Wifi 32GB', 'APPLE', ' 9.7\", Retina', ' IOS 10,  2 nhân', ' Apple A10 Fusion 4 nhân', ' 2 GB, ROM: 32 GB', ' 12 MP và 5 MP', ' 27.5 Wh', 11990000, ' Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2017-03-27', 2, 'Không có Cmt', 'Không có mô tả', 'https://cdn.tgdd.vn/Products/Images/522/75490/ipad-pro-97-inch-21-200x200.jpg\r\n'),
(37, 'iPad Mini 4 Wifi 128GB', 'APPLE', ' 7.9\", LED backlit LCD', ' Apple A8, iOS 10', ' Apple A10 Fusion 4 nhân', ' 2 GB, B? nh?: 128 GB', ' 8 MP, Selfie 1.2 MP', ' 19.1 Wh, SIM: Không', 9990000, ' Giảm ngay 1 triệu HOẶC Phiếu mua hàng trị giá 1 triệu Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2016-07-27', 2, 'Không có Cmt', 'Không có mô tả', 'https://cdn3.tgdd.vn/Products/Images/522/101993/ipad-mini-4-wifi-128gb-321-200x200.jpg\r\n'),
(38, 'iPad Wifi 128GB (2017)', 'APPLE', ' 9.7\", Retina', ' IOS 10,  2 nhân', ' Apple A9 2 nhân 64-bit', ' 2 GB, ROM: 128 GB', ' 8 MP và 1.2 MP', ' 32.4 Wh', 10990000, ' Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2016-06-27', 2, 'Không có Cmt', 'Không có mô tả', 'https://cdn3.tgdd.vn/Products/Images/522/60683/ipad-mini-2-retina-16g-wifi-12-200x200.jpg\r\n'),
(39, 'iPad Wifi 32GB (2017)', 'APPLE', ' 9.7\", Retina', ' IOS 10,  2 nhân', ' Apple A10 Fusion 4 nhân', ' 2 GB, ROM: 32 GB', ' 8 MP và 1.2 MP', ' 32.4 Wh', 8990000, ' Cơ hội trúng xe SH 150i (áp dụng khu vực Hà Nội).', 100, 100, 0, '2016-05-27', 2, 'Không có Cmt', 'Không có mô tả', 'https://cdn1.tgdd.vn/Products/Images/522/163791/ipad-6th-wifi-128-gb-2-200x200.jpg\r\n'),
(40, 'Samsung Galaxy Book 10.6 inch', 'SAMSUNG', ' 10.6\", TFT', ' Android 6.0 (Marshmallow)', ' Intel Core M3, Windows 10', ' 4 GB, B? nh?: 128 GB', ' Không, Selfie 5 MP', ' 30.4 Wh, SIM: Không', 19990000, ' Cơ hội trúng xe SH 150i (áp dụng Hà Nội và một số tỉnh miền Bắc). Phiếu mua hàng Samsung trị giá 2 triệu', 100, 100, 0, '2017-07-27', 2, 'Không có Cmt', 'Không có mô tả', 'https://cdn3.tgdd.vn/Products/Images/522/163793/ipad-6th-wifi-cellular-32g-2-200x200.jpg\r\n'),
(41, 'Samsung Galaxy Tab A 8.0 (2017)', 'SAMSUNG', ' 8.0\", PLS', ' Android 7.0', ' Snapdragon 425, Android 7.0', ' 2 GB, B? nh?: 16 GB', ' 8 MP, Selfie 5 MP', ' 5000 mAh, SIM: 1 SIM', 6490000, ' Phiếu mua hàng Samsung trị giá 100.000đ Cơ hội trúng xe SH 150i (áp dụng Hà Nội và một số tỉnh miền Bắc).', 100, 100, 0, '2017-06-27', 2, 'Không có Cmt', 'Không có mô tả', 'https://cdn3.tgdd.vn/Products/Images/522/163813/ipad-6th-wifi-cellular-128gb-2-200x200.jpg\r\n'),
(42, 'Samsung Galaxy Tab E 9.6 (SM-T561)', 'SAMSUNG', ' 9.6\", WXGA TFT', ' Android 6.0 (Marshmallow)', ' Spreadtrum, Android 4.4', ' 1.5 GB, B? nh?: 8 GB', ' 5 MP, Selfie 2 MP', ' 5000 mAh, SIM: 1 SIM', 4990000, ' Phiếu mua hàng Samsung trị giá 100.000đ Cơ hội trúng xe SH 150i (áp dụng Hà Nội và một số tỉnh miền Bắc).', 100, 100, 0, '2015-07-27', 2, 'Không có Cmt', 'Không có mô tả', 'https://cdn2.tgdd.vn/Products/Images/522/70322/ipad-air-2-cellular-128gb-10-200x200.jpg\r\n'),
(43, 'Samsung Galaxy Tab A6 7.0\"', 'SAMSUNG', ' 7\", TFT', ' Android 7.0', ' 4 nhân, Android 5.1', ' 1.5 GB, B? nh?: 8 GB', ' 5 MP, Selfie 2 MP', ' 4000 mAh, SIM: 1 SIM', 3590000, ' Phiếu mua hàng Samsung trị giá 100.000đ Cơ hội trúng xe SH 150i (áp dụng Hà Nội và một số tỉnh miền Bắc).', 100, 100, 0, '2017-04-27', 2, 'Không có Cmt', 'Không có mô tả', 'https://cdn2.tgdd.vn/Products/Images/522/102787/ipad-wifi-32gb-2017-43-200x200.jpg\r\n'),
(44, 'Xiaomi Redmi 5 Plus 4GB', 'XIAOMI', '5.99\"', 'Android 7.1 (Nougat)', 'Snapdragon 625 8 nhân 64-bit', '4 GB', ' 2 camera 12 MP, Selfie: 5 MP', '4000 mAh', 4790000, 'Snapdragon 625 8 nhân 64-bit', 1000, 500, 0, '2017-06-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn.tgdd.vn/Products/Images/42/143465/xiaomi-redmi-5-plus-den-3-400x460.png'),
(45, 'Xiaomi Redmi 4X', 'XIAOMI', '5\"', 'Android 7.0 (Nougat)', 'Snapdragon 435 8 nhân', '3 GB', ' 2 camera 12 MP, Selfie: 5 MP', '4100 mAh', 3690000, 'Nano SIM & Micro SIM (SIM 2 chung khe thẻ nhớ)', 100, 100, 0, '2017-06-27', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn.tgdd.vn/Products/Images/42/99145/xiaomi-redmi-4x-400-400x460-1-400x460.png'),
(46, 'Xiaomi Redmi Note 5', 'XIAOMI', '5.99\"', 'Android 8.1 (Oreo)', 'Qualcomm Snapdragon 636 8 nhân', '4 GB', 'Trước 13 MP, Sau 2 MP và 5 MP (2 camera)', '4000 mAh', 5690000, 'Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi Direct, Wi-Fi hotspot', 100, 100, 0, '2018-05-05', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn.tgdd.vn/Products/Images/42/153953/xiaomi-redmi-note-5-pro-400x460.png'),
(47, 'OPPO F7 128GB', 'OPPO', '6.23\"', 'ColorOS 5.0 (Android 8.1)', 'MediaTek Helio P60', '6 GB', 'Trước 25 MP, Sau 16 MP', '3400 mAh', 9990000, 'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt', 100, 100, 0, '2018-05-04', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn.tgdd.vn/Products/Images/42/158464/oppo-f7-128gb-den-400x460.png'),
(48, 'OPPO F3 Plus', 'OPPO', '6.0\"', 'Android 6.0 (Marshmallow)', 'Snapdragon 653 8 nhân 64-bit', '4 GB', 'Trước 16 MP và 8 MP, Sau 16 MP', '4000 mAh', 7490000, 'Mở khóa bằng vân tay, Mặt kính 2.5D\r\nMở ứng dụng nhanh bằng vân tay, hình vẽ', 100, 100, 0, '2018-05-01', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn.tgdd.vn/Products/Images/42/92569/oppo-f3-plus-1-1-400x460.png'),
(49, 'OPPO F5 6GB', 'OPPO', '6.0\"', 'ColorOS 3.2 (Android 7.1)', 'Mediatek Helio P23', '6 GB', 'Trước 20 MP, Sau 16 MP', '3200 mAh', 8990000, 'Mở khóa bằng khuôn mặt, Mở khóa bằng vân tay', 100, 100, 0, '2018-05-05', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn.tgdd.vn/Products/Images/42/142106/oppo-f5-6gb-a-2-400x460.png'),
(50, 'Huawei Nova 3e', 'HUAWEI', '5.84\"', 'Android 8.0 (Oreo)', 'HiSilicon Kirin 659 8 nhân', '4 GB', 'Trước 16 MP, Sau 16 MP và 2 MP (2 camera)', '3000 mAh', 6990000, 'Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt', 100, 100, 0, '2018-05-31', 1, 'Không có Cmt', 'Không có mô tả', 'https://cdn4.tgdd.vn/Products/Images/42/154260/Slider/-nova3e.gif');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ngdung`
--

CREATE TABLE `ngdung` (
  `idNGDUNG` int(11) UNSIGNED NOT NULL,
  `Username` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Pass` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `hoTen` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `ngSinh` date DEFAULT NULL,
  `gTinh` varchar(6) CHARACTER SET utf8mb4 DEFAULT NULL,
  `SDT` int(11) DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Loai` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `ngdung`
--

INSERT INTO `ngdung` (`idNGDUNG`, `Username`, `Pass`, `hoTen`, `ngSinh`, `gTinh`, `SDT`, `email`, `Loai`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Malia Sela Pace', '1981-08-13', 'nam', 153486825, 'Mal.PACE2641@yahoo.com', 'Admin'),
(2, 'jaxsoew9720', 'X3O9E2E7M3', 'Jaxson Whitley Ewing', '1968-02-09', 'nữ', 319346267, 'Jax.EWI7978@live.com', 'Admin'),
(3, 'coltonmercer9152', 'Z7C1O8D6C2', 'Colton Aubrie Mercer', '2000-01-03', 'nữ', 486123686, 'Colt.MERCER8325@gmail.com', 'Admin'),
(4, 'broope1851', 'N2X0Z1U7G6', 'Brooklynn Teagan Pena', '1960-02-20', 'nữ', 405428879, 'Brookly.PEN6692@mail2web.com', 'Admin'),
(5, 'sahumphre9161', 'R9T3W2B8N4', 'Sara Roma Humphrey', '1971-12-30', 'nữ', 511042515, 'Sar.HUMPHR5391@live.com', 'Admin'),
(6, 'mamcgow6586', 'G5T4P2P9Q6', 'Macey Nicoll Mcgowan', '1986-02-01', 'nam', 154038049, 'Mac.MCG8251@gmail.com', 'KhachHang'),
(7, 'kamdehorto5303', 'C2O7Z9L6W6', 'Kamden Arly Horton', '1978-05-29', 'nữ', 24988351, 'Kamd.HORT9658@yahoo.com', 'KhachHang'),
(8, 'sidon8335', 'V1G0R7H2A0', 'Sidney Mackenzie Oneil', '1979-04-13', 'nữ', 514678464, 'Sidne.ONEIL6998@mail2web.com', 'KhachHang'),
(9, 'augustlind4714', 'W0U4W5F3Y0', 'Augustus Nalah Lindsay', '1976-07-11', 'nam', 66311850, 'August.LIN6369@live.com', 'KhachHang'),
(10, 'willrober2329', 'W3R6J4V7Q8', 'Will Jamea Roberts', '1989-05-21', 'nữ', 104917876, 'Wil.ROB2171@mail2web.com', 'KhachHang'),
(11, 'viobu7862', 'M1H9E1W5S3', 'Violet Aubrie Burns', '1968-08-26', 'nam', 157643077, 'Viol.BUR9892@gmail.com', 'KhachHang'),
(12, 'hustou3047', 'P2T8M1Y4H5', 'Hugo Jadyn Stout', '1970-05-22', 'nam', 243528169, 'Hu.STO5087@live.com', 'KhachHang'),
(13, 'jaxtkell3256', 'F5P6C2P2F1', 'Jaxton Ellery Kelley', '1984-08-01', 'nam', 372991790, 'Jaxton.KELL8449@gmail.com', 'KhachHang'),
(14, 'phillsum6873', 'E3H2W3Q7L4', 'Phillip Jordyn Summers', '1984-05-05', 'nữ', 147172779, 'Phill.SUM6491@mail2web.com', 'KhachHang'),
(15, 'tuckebooke4972', 'X8G1Q5F8R9', 'Tucker Mel Booker', '1975-04-22', 'nữ', 729258052, 'Tuck.BOOKE3604@gmail.com', 'KhachHang'),
(16, 'sofiayork6966', 'H8S3W3R0W0', 'Sofia Gabriel York', '1999-10-23', 'nữ', 452477746, 'Sofia.YOR8965@yahoo.com', 'KhachHang'),
(17, 'finnefost6882', 'A7C8F5F2V8', 'Finnegan Kira Foster', '1960-09-29', 'nam', 149190521, 'Finn.FOSTER9839@hushmail.com', 'KhachHang'),
(18, 'kefranci8924', 'J2M9K0K9V9', 'Kenya Andrea Francis', '1992-08-24', 'nam', 156269667, 'Ken.FRA5974@gmail.com', 'KhachHang'),
(19, 'frederickgar3311', 'C5W5L0Z8T5', 'Frederick Chandell Gardner', '1987-10-06', 'nữ', 161182762, 'Freder.GARD9795@live.com', 'KhachHang'),
(20, 'libbyacos3887', 'L4T7M9A7R3', 'Libby Sincere Acosta', '1986-10-18', 'nữ', 898328794, 'Li.ACOS6947@yahoo.com', 'KhachHang');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`idHD`,`idNGDUNG`,`idM`),
  ADD KEY `FK_HOADON_MAY` (`idM`) USING BTREE,
  ADD KEY `FK_HOADON_NGDUNG` (`idNGDUNG`) USING BTREE;

--
-- Chỉ mục cho bảng `may`
--
ALTER TABLE `may`
  ADD PRIMARY KEY (`idM`);

--
-- Chỉ mục cho bảng `ngdung`
--
ALTER TABLE `ngdung`
  ADD PRIMARY KEY (`idNGDUNG`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `idHD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `may`
--
ALTER TABLE `may`
  MODIFY `idM` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `ngdung`
--
ALTER TABLE `ngdung`
  MODIFY `idNGDUNG` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

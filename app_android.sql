-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 17, 2022 lúc 11:15 AM
-- Phiên bản máy phục vụ: 10.1.29-MariaDB
-- Phiên bản PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `app_android`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet_donhang`
--

CREATE TABLE `chitiet_donhang` (
  `iddonhang` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitiet_donhang`
--

INSERT INTO `chitiet_donhang` (`iddonhang`, `tensanpham`, `soluong`, `gia`) VALUES
(20, 'iPhone 13', 1, 0),
(20, 'MacBook Air M1 2020', 2, 0),
(21, 'iPhone 13', 1, 23290000),
(21, 'MacBook Air M1 2020', 2, 53180000),
(22, 'iPhone 13', 1, 23290000),
(22, 'MacBook Air M1 2020', 2, 53180000),
(23, 'iPhone SE 2020', 2, 20980000),
(23, 'iPhone XR', 2, 22980000),
(23, 'Mac mini M1', 1, 17590000),
(24, 'MacBook Pro 16 inch 2019', 1, 58550000),
(24, 'MacBook Air 13 inch (MQD32)', 2, 36900000),
(24, 'iPad Air 3', 3, 38250000),
(25, 'iPhone 11', 2, 27380000),
(25, 'iPhone XR', 1, 11490000),
(26, 'iPhone 13 Pro', 1, 29290000),
(27, 'iPhone SE 2020', 1, 10490000),
(28, 'iPhone SE 2020', 1, 10490000),
(29, 'Mac mini M1', 1, 17590000),
(30, 'iPhone 13 Pro Max', 2, 64580000),
(30, 'iPhone 13 Pro', 2, 58580000),
(30, 'Mac mini M1', 1, 17590000),
(31, 'iPad mini 5', 2, 19980000),
(32, 'iMac M1 2021 24 inch', 2, 62900000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `hinhthuc` varchar(20) NOT NULL,
  `trangthai` varchar(11) DEFAULT 'đang giao'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `iduser`, `tongtien`, `hinhthuc`, `trangthai`) VALUES
(1, 3, 30000, 'chậm', 'đang giao'),
(2, 3, 30000, 'chậm', 'đang giao'),
(3, 3, 30000, 'chậm', 'đang giao'),
(4, 3, 30000, 'chậm', 'đang giao'),
(5, 3, 30000, 'chậm', 'đang giao'),
(6, 3, 30000, 'cham', 'đang giao'),
(7, 3, 30000, 'cham', 'đang giao'),
(8, 3, 30000, 'cham', 'đang giao'),
(9, 3, 30000, 'cham', 'đang giao'),
(10, 3, 30000, 'cham', 'đang giao'),
(11, 3, 30000, 'cham', 'đang giao'),
(12, 3, 30000, 'cham', 'đang giao'),
(13, 3, 30000, 'cham', 'đang giao'),
(14, 3, 30000, 'cham', 'đang giao'),
(15, 3, 30000, 'cham', 'đang giao'),
(16, 3, 30000, 'cham', 'đang giao'),
(17, 3, 30000, 'cham', 'đang giao'),
(18, 3, 30000, 'cham', 'đang giao'),
(19, 3, 30000, 'cham', 'đang giao'),
(20, 3, 30000, 'cham', 'đang giao'),
(21, 3, 30000, 'cham', 'đang giao'),
(22, 3, 30000, 'cham', 'đang giao'),
(23, 8, 61570000, 'Vận chuyển nhanh', 'đang giao'),
(24, 8, 133710000, 'Vận chuyển chậm', 'đang giao'),
(25, 8, 38880000, 'Vận chuyển chậm', 'đang giao'),
(26, 8, 29300000, 'Vận chuyển chậm', 'đang giao'),
(27, 8, 10510000, 'Vận chuyển nhanh', 'đang giao'),
(28, 5, 10510000, 'Vận chuyển nhanh', 'đang giao'),
(29, 5, 17610000, 'Vận chuyển nhanh', 'đang giao'),
(30, 5, 140770000, 'Vận chuyển nhanh', 'đang giao'),
(31, 2, 20000000, 'Vận chuyển nhanh', 'đang giao'),
(32, 5, 62920000, 'Vận chuyển nhanh', 'đang giao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_ipad_library`
--

CREATE TABLE `image_ipad_library` (
  `id` int(11) NOT NULL,
  `idsanpham` int(11) NOT NULL,
  `tensanpham` varchar(150) NOT NULL,
  `khohinhanh` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `image_ipad_library`
--

INSERT INTO `image_ipad_library` (`id`, `idsanpham`, `tensanpham`, `khohinhanh`) VALUES
(1, 1, 'iPad mini 5', 'https://shopdunk.com/wp-content/uploads/2021/06/iPad-mini-gen5-space-grey.png'),
(2, 1, 'iPad mini 5', 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-mini-5-gray-3.webp'),
(3, 1, 'iPad mini 5', 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-mini-5-gold-1.webp'),
(4, 2, 'iPad Gen 8', 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-gen8-silver.png'),
(5, 2, 'iPad Gen 8', 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-Gen-8-Space-Gray-4.webp'),
(6, 2, 'iPad Gen 8', 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-Gen-8-Space-Gray-8.webp'),
(7, 2, 'iPad Gen 8', 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-Gen-8-Space-Gray-9.webp'),
(8, 2, 'iPad Gen 8', 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-Gen-8-Space-Gray-10.webp'),
(9, 3, 'iPad Air 3', 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-air-gen3-space-grey.png'),
(10, 3, 'iPad Air 3', 'https://shopdunk.com/wp-content/uploads/2021/07/ipad-air-3-8.jpeg'),
(11, 3, 'iPad Air 3', 'https://shopdunk.com/wp-content/uploads/2021/07/ipad-air-3-6.jpeg'),
(12, 4, 'iPad Air 4', 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-air-gen4-silver.png'),
(13, 4, 'iPad Air 4', 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-Air-4-Rose-Silver-4.webp'),
(14, 4, 'iPad Air 4', 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-Air-4-Rose-Silver-5.webp'),
(15, 4, 'iPad Air 4', 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-Air-4-Rose-Silver-7.webp'),
(16, 5, 'iPad Pro 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/ipad-pro-11inch-2020-silver.png'),
(17, 5, 'iPad Pro 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-Pro-2020-Silver-2.webp'),
(18, 5, 'iPad Pro 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-Pro-2020-Silver-4.webp'),
(19, 5, 'iPad Pro 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-Pro-2020-Silver-6.webp'),
(20, 6, 'iPad Pro M1', 'https://shopdunk.com/wp-content/uploads/2021/07/ipad-pro-11inch-m1-silver.png'),
(21, 6, 'iPad Pro M1', 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-Pro-M1-11inch-Silver-3.webp'),
(22, 6, 'iPad Pro M1', 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-Pro-M1-11inch-Silver-4.webp'),
(23, 6, 'iPad Pro M1', 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-Pro-M1-11inch-Silver-8.webp'),
(24, 7, 'iPad mini 6 (2021)', 'https://shopdunk.com/wp-content/uploads/2021/09/ipad-mini-6-select-wifi-pink-202109.png'),
(25, 7, 'iPad mini 6 (2021)', 'https://shopdunk.com/wp-content/uploads/2021/09/ipad-mini-6-select-wifi-pink-202109.png'),
(26, 7, 'iPad mini 6 (2021)', 'https://shopdunk.com/wp-content/uploads/2021/09/ipad-mini-6-select-wifi-purple-202109.png'),
(27, 7, 'iPad mini 6 (2021)', 'https://shopdunk.com/wp-content/uploads/2021/09/ipad-mini-6-select-wifi-space-gray-202109.png'),
(28, 8, 'iPad gen 9 (2021)', 'https://shopdunk.com/wp-content/uploads/2021/09/ipad-gen-9-2021-hero-space-wifi-select.png'),
(29, 8, 'iPad gen 9 (2021)', 'https://shopdunk.com/wp-content/uploads/2021/09/ipad-gen-9-2021-hero-silver-wifi-select.png'),
(30, 8, 'iPad gen 9 (2021)', 'https://shopdunk.com/wp-content/uploads/2021/09/ipad-gen-9-2021-hero-space-wifi-select.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_iphone_library`
--

CREATE TABLE `image_iphone_library` (
  `id` int(11) NOT NULL,
  `idsanpham` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `khohinhanh` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `image_iphone_library`
--

INSERT INTO `image_iphone_library` (`id`, `idsanpham`, `tensanpham`, `khohinhanh`) VALUES
(1, 1, 'iPhone SE 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/ipSE-2020-black.webp'),
(2, 1, 'iPhone SE 2020', 'https://shopdunk.com/wp-content/uploads/2021/06/iPhone-SE-2020-Black-3.webp'),
(3, 1, 'iPhone SE 2020', 'https://shopdunk.com/wp-content/uploads/2021/06/iPhone-SE-2020-Black-4.webp'),
(4, 1, 'iPhone SE 2020', 'https://shopdunk.com/wp-content/uploads/2021/06/iPhone-SE-2020-Black-5.webp'),
(5, 1, 'iPhone SE 2020', 'https://shopdunk.com/wp-content/uploads/2021/06/iPhone-SE-2020-Black-6.webp'),
(6, 1, 'iPhone SE 2020', 'https://shopdunk.com/wp-content/uploads/2021/06/iPhone-SE-2020-Black-7.webp'),
(7, 2, 'iPhone XR', 'https://shopdunk.com/wp-content/uploads/2021/06/ipXR-black.png'),
(8, 2, 'iPhone XR', 'https://shopdunk.com/wp-content/uploads/2021/07/iPhoneXr-Black-360_US-EN-SCREEN_1_11zon.webp'),
(9, 3, 'iPhone 11', 'https://shopdunk.com/wp-content/uploads/2021/05/ip11-white.png'),
(10, 3, 'iPhone 11', 'https://shopdunk.com/wp-content/uploads/2021/07/SEA_iPhone_11_W_3_5_11zon.webp'),
(11, 3, 'iPhone 11', 'https://shopdunk.com/wp-content/uploads/2021/07/SEA_iPhone_11_W_4_6_11zon.webp'),
(12, 3, 'iPhone 11', 'https://shopdunk.com/wp-content/uploads/2021/07/SEA_iPhone_11_W_1_3_11zon.webp'),
(13, 4, 'iPhone 12 mini', 'https://shopdunk.com/wp-content/uploads/2021/07/VN-iPhone_12_Mini_PRED_PDP_Image_Position-1B_2_11zon.webp'),
(14, 4, 'iPhone 12 mini', 'https://shopdunk.com/wp-content/uploads/2021/07/VN-iPhone_12_Mini_PRED_PDP_Image_Position-2_3_11zon.webp'),
(15, 4, 'iPhone 12 mini', 'https://shopdunk.com/wp-content/uploads/2021/07/VN-iPhone_12_Mini_PRED_PDP_Image_Position-3_4_11zon.webp'),
(16, 4, 'iPhone 12 mini', 'https://shopdunk.com/wp-content/uploads/2021/07/VN-iPhone_12_Mini_PRED_PDP_Image_Position-4_5_11zon.webp'),
(17, 4, 'iPhone 12 mini', 'https://shopdunk.com/wp-content/uploads/2021/07/iPhone-12-ti%CC%81m-6.webp'),
(18, 4, 'iPhone 12 mini', 'https://shopdunk.com/wp-content/uploads/2021/07/iPhone-12-ti%CC%81m-7.webp'),
(20, 5, 'iPhone 12', 'https://shopdunk.com/wp-content/uploads/2021/07/VN-iPhone_12_White_PDP_Image_Position-1B.webp'),
(21, 5, 'iPhone 12', 'https://shopdunk.com/wp-content/uploads/2021/07/VN-iPhone_12_White_PDP_Image_Position-2.webp'),
(22, 5, 'iPhone 12', 'https://shopdunk.com/wp-content/uploads/2021/07/VN-iPhone_12_White_PDP_Image_Position-3.webp'),
(24, 6, 'iPhone 12 Pro', 'https://shopdunk.com/wp-content/uploads/2021/07/ip12-pro-graphite.png'),
(25, 6, 'iPhone 12 Pro', 'https://shopdunk.com/wp-content/uploads/2021/07/iPhone_12_Pro_Max_Grapphite_3.webp'),
(26, 6, 'iPhone 12 Pro', 'https://shopdunk.com/wp-content/uploads/2021/07/iPhone_12_Pro_Max_Grapphite_4.webp'),
(27, 6, 'iPhone 12 Pro', 'https://shopdunk.com/wp-content/uploads/2021/07/iPhone_12_Pro_Max_Grapphite_6.webp'),
(28, 7, 'iPhone 12 Pro Max', 'https://shopdunk.com/wp-content/uploads/2021/06/ip12-pro-max-graphite.png'),
(29, 7, 'iPhone 12 Pro Max', 'https://shopdunk.com/wp-content/uploads/2021/07/iPhone_12_Pro_Max_Grapphite_3.webp'),
(30, 7, 'iPhone 12 Pro Max', 'https://shopdunk.com/wp-content/uploads/2021/07/iPhone_12_Pro_Max_Grapphite_4.webp'),
(31, 7, 'iPhone 12 Pro Max', 'https://shopdunk.com/wp-content/uploads/2021/07/iPhone_12_Pro_Max_Grapphite_7.webp'),
(32, 8, 'iPhone 13 mini', 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_Mini_PDP_Position-1A_Color_Midnight__VN-2048x2048.jpg'),
(33, 8, 'iPhone 13 mini', 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_Mini_PDP_Position-2_Size_Comparison__VN-2-2048x2048.jpg'),
(34, 8, 'iPhone 13 mini', 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_Mini_PDP_Position-3_Camera__VN-2-2048x2048.jpg'),
(35, 8, 'iPhone 13 mini', 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_Mini_PDP_Position-6_Cinematic_Mode__VN-2-2048x2048.jpg'),
(36, 9, 'iPhone 13', 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_PDP_Position-1A_Color_PRODUCTRED__VN-2048x2048.jpg'),
(37, 9, 'iPhone 13', 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_PDP_Position-2_Size_Comparison__VN-2048x2048.jpg'),
(38, 9, 'iPhone 13', 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_PDP_Position-4_Design__VN-2048x2048.jpg'),
(39, 9, 'iPhone 13', 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_PDP_Position-8_TypeC_Lightning_Cable__VN-2048x2048.jpg'),
(40, 10, 'iPhone 13 Pro', 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_Pro_PDP_Position-2_Size_Comparison__VN-2048x2048.jpg'),
(41, 10, 'iPhone 13 Pro', 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_Pro_PDP_Position-3_Camera__VN-2048x2048.jpg'),
(42, 10, 'iPhone 13 Pro', 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_Pro_PDP_Position-4_Design__VN-2048x2048.jpg'),
(43, 10, 'iPhone 13 Pro', 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_Pro_PDP_Position-6_Cinematic_Mode__VN-2048x2048.jpg'),
(44, 11, 'iPhone 13 Pro Max', 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_Pro_Max_PDP_Position-1A_Color_Graphite__VN-2048x2048.jpg'),
(45, 11, 'iPhone 13 Pro Max', 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_Pro_Max_PDP_Position-3_Camera__VN-2048x2048.jpg'),
(46, 11, 'iPhone 13 Pro Max', 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_Pro_Max_PDP_Position-4_Design__VN-2048x2048.jpg'),
(47, 11, 'iPhone 13 Pro Max', 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_Pro_Max_PDP_Position-6_Cinematic_Mode__VN-2048x2048.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_mac_library`
--

CREATE TABLE `image_mac_library` (
  `id` int(11) NOT NULL,
  `idsanpham` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `khohinhanh` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `image_mac_library`
--

INSERT INTO `image_mac_library` (`id`, `idsanpham`, `tensanpham`, `khohinhanh`) VALUES
(1, 1, 'Mac mini M1', 'https://shopdunk.com/wp-content/uploads/2021/07/Mac_mini_PDP_Image_Position-1_M1_Chip__en-1.jpg'),
(2, 1, 'Mac mini M1', 'https://shopdunk.com/wp-content/uploads/2021/07/Mac_mini_PDP_Image_Position-2_M1_Chip__en.jpg'),
(3, 1, 'Mac mini M1', 'https://shopdunk.com/wp-content/uploads/2021/07/Mac_mini_PDP_Image_Position-3_M1_Chip__en.jpg'),
(4, 1, 'Mac mini M1', 'https://shopdunk.com/wp-content/uploads/2021/07/Mac_mini_PDP_Image_Position-4_M1_Chip__en.jpg'),
(5, 1, 'Mac mini M1', 'https://shopdunk.com/wp-content/uploads/2021/07/Mac_mini_PDP_Image_Position-5_M1_Chip__en-1.jpg'),
(6, 2, 'MacBook Air 13 inch (MQD32)', 'https://cdn-dgcei.nitrocdn.com/QaFavQVnaqgHtiSsAelwGDKVguOuACXM/assets/static/source/rev-37c8b93/wp-content/uploads/2021/07/MacBook-Air-MQD32.png'),
(7, 2, 'MacBook Air 13 inch (MQD32)', 'https://cdn-dgcei.nitrocdn.com/QaFavQVnaqgHtiSsAelwGDKVguOuACXM/assets/static/source/rev-37c8b93/wp-content/uploads/2021/07/MacBook-Air-MQD32.png'),
(8, 3, 'MacBook Pro 16 inch 2019', 'https://shopdunk.com/wp-content/uploads/2021/07/GEO-J152-WebChannel-PDP_images-ch20macbook_pro_16in_spacegrey_pdp_US_1-1.jpg'),
(9, 3, 'MacBook Pro 16 inch 2019', 'https://shopdunk.com/wp-content/uploads/2021/07/GEO-J152-WebChannel-PDP_images-ch20macbook_pro_16in_spacegrey_pdp_US_2-1.jpg'),
(10, 3, 'MacBook Pro 16 inch 2019', 'https://shopdunk.com/wp-content/uploads/2021/07/GEO-J152-WebChannel-PDP_images-ch20macbook_pro_16in_spacegrey_pdp_US_3-1.jpg'),
(11, 3, 'MacBook Pro 16 inch 2019', 'https://shopdunk.com/wp-content/uploads/2021/07/GEO-J152-WebChannel-PDP_images-ch20macbook_pro_16in_spacegrey_pdp_US_4-1.jpg'),
(12, 3, 'MacBook Pro 16 inch 2019', 'https://shopdunk.com/wp-content/uploads/2021/07/GEO-J152-WebChannel-PDP_images-ch20macbook_pro_16in_spacegrey_pdp_US_5-1.jpg'),
(13, 3, 'MacBook Pro 16 inch 2019', 'https://shopdunk.com/wp-content/uploads/2021/07/GEO-J152-WebChannel-PDP_images-ch20macbook_pro_16in_spacegrey_pdp_US_6-1.jpg'),
(14, 4, 'MacBook Pro 2020', 'https://shopdunk.com/wp-content/uploads/2021/06/MacBook_Pro_13in_2ports_space_gray_PDP_US_1.jpg'),
(15, 4, 'MacBook Pro 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/MacBook_Pro_2020-Space-Gray-3.webp'),
(16, 4, 'MacBook Pro 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/MacBook_Pro_2020-Space-Gray-2.webp'),
(17, 4, 'MacBook Pro 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/MacBook_Pro_2020-Space-Gray-4.webp'),
(18, 5, 'MacBook Air 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/MacBook-Air-2020-Core-i5-4.jpeg'),
(19, 5, 'MacBook Air 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/MacBook-Air-2020-Gray-1.webp'),
(20, 5, 'MacBook Air 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/MacBook-Air-2020-Gray-2.webp'),
(21, 5, 'MacBook Air 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/MacBook-Air-2020-Gray-4.webp'),
(22, 6, 'MacBook Pro M1 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/MacBook_Pro_13_SpGry_PDP_Image_Position-1_M1_Chip_1_11zon.webp'),
(23, 6, 'MacBook Pro M1 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/MacBook_Pro_13_SpGry_PDP_Image_Position-2_M1_Chip_2_11zon.webp'),
(24, 6, 'MacBook Pro M1 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/MacBook_Pro_13_SpGry_PDP_Image_Position-3_M1_Chip_3_11zon.webp'),
(25, 6, 'MacBook Pro M1 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/MacBook_Pro_13_SpGry_PDP_Image_Position-5_M1_Chip_5_11zon.webp'),
(26, 8, 'MacBook Air M1 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/MacBook_Air_M1_Space-Gray-1.webp'),
(27, 8, 'MacBook Air M1 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/MacBook_Air_M1_Space-Gray-2.webp'),
(28, 8, 'MacBook Air M1 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/MacBook_Air_M1_Space-Gray-3.webp'),
(29, 8, 'MacBook Air M1 2020', 'https://shopdunk.com/wp-content/uploads/2021/07/MacBook_Air_M1_Space-Gray-5.webp'),
(30, 7, 'iMac 2020', 'https://shopdunk.com/wp-content/uploads/2021/09/iMac_21inch_PDP_Image_Position-1__US-1.jpg'),
(31, 7, 'iMac 2020', 'https://shopdunk.com/wp-content/uploads/2021/09/iMac_21inch_PDP_Image_Position-2__US-1.jpg'),
(32, 7, 'iMac 2020', 'https://shopdunk.com/wp-content/uploads/2021/09/iMac_21inch_PDP_Image_Position-3__US-1.jpg'),
(33, 7, 'iMac 2020', 'https://shopdunk.com/wp-content/uploads/2021/09/iMac_21inch_PDP_Image_Position-4__US-1.jpg'),
(34, 9, 'iMac M1 2021 24 inch', 'https://shopdunk.com/wp-content/uploads/2021/06/kjh.jpg'),
(35, 9, 'iMac M1 2021 24 inch', 'https://shopdunk.com/wp-content/uploads/2021/06/ds.jpg'),
(36, 9, 'iMac M1 2021 24 inch', 'https://shopdunk.com/wp-content/uploads/2021/06/3ds.jpg'),
(37, 9, 'iMac M1 2021 24 inch', 'https://shopdunk.com/wp-content/uploads/2021/06/i7yth.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ipad`
--

CREATE TABLE `ipad` (
  `id` int(11) NOT NULL,
  `ten` varchar(200) NOT NULL,
  `gia` int(11) NOT NULL,
  `hinhanh` varchar(200) NOT NULL,
  `mota` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `ipad`
--

INSERT INTO `ipad` (`id`, `ten`, `gia`, `hinhanh`, `mota`) VALUES
(1, 'iPad mini 5', 9990000, 'https://shopdunk.com/wp-content/uploads/2021/06/iPad-mini-gen5-space-grey.png', 'iPad mini 5 được yêu thích vì kích cỡ nhỏ gọn và năng lực ấn tượng. Được trang bị chip A12 Bionic với Neural Engine. Màn hình Retina 7.9 inch với True Tone. Cùng Apple Pencil (thế hệ thứ 1), bạn có thể phác thảo ngay khi những ý tưởng lớn xuất hiện trong đầu.\r\n\r\n• Màn hình Retina 7.9 inch với True Tone và dải màu rộng\r\n• Chip A12 Bionic\r\n• Cảm biến vân tay Touch ID\r\n• Camera sau 8MP, camera trước FaceTime HD 7MP\r\n• Loa stereo\r\n• Wi-Fi 802.11ac cùng dữ liệu di động LTE Gigabit\r\n• Thời lượng pin lên đến 10 giờ\r\n• Cổng kết nối Lightning để sạc và kết nối phụ kiện\r\n• Hỗ trợ Apple Pencil (thế hệ thứ 1)\r\n• iPadOS 14 mang đến cho bạn các chức năng mới được thiết kế dành riêng cho iPad\r\n\r\nBộ sản phẩm bao gồm: Máy tính bảng. Dây sạc. Củ sạc 20W. HDSD bảo hành điện tử 12 tháng'),
(2, 'iPad Gen 8', 8890000, 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-gen8-silver.png', 'iPad Gen 8 Sở hữu màn hình Retina 10.2 inch tuyệt đẹp cùng năng lực vận hành ấn tượng, bên cạnh đặc tính linh hoạt và tiện dụng vô song. Với chip A12 Bionic mạnh mẽ, khả năng tương thích với Apple Pencil 1 và những tính năng mới đầy ấn tượng của iPadOS 14, giờ đây bạn có thêm nhiều lý do để yêu thích iPad.\r\n\r\n• Màn hình Retina 10.2 inch tuyệt đẹp\r\n• Chip A12 Bionic với Neural Engine\r\n• Hỗ trợ Apple Pencil (thế hệ thứ 1) và Smart Keyboard\r\n• Camera sau 8MP, camera trước FaceTime HD 1.2MP\r\n• Loa stereo\r\n• Wi-Fi 802.11ac và dữ liệu di động LTE Gigabit\r\n• Thời lượng pin lên đến 10 giờ\r\n• Cổng kết nối Lightning để sạc và kết nối phụ kiện\r\n• Xác thực bảo mật với Touch ID\r\n• iPadOS 14 mang đến cho bạn các chức năng mới được thiết kế dành riêng cho iPad\r\n\r\nBộ sản phẩm bao gồm: Máy tính bảng. Dây sạc. Củ sạc 20W. HDSD bảo hành điện tử 12 tháng'),
(3, 'iPad Air 3', 12750000, 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-air-gen3-space-grey.png', 'iPad Air 3 Sự mạnh mẽ vượt trội. iPad Air 3 sở hữu quyền lực mạnh mẽ với chip A12 Bionic, màn hình Retina 10.5 inch với True Tone và cả bút Apple Pencil kèm bàn phím thông minh hỗ trợ.\r\n\r\n• Màn hình Retina lớn 10.5 inch nhưng cực kỳ di động giúp người dùng thoải mái mang theo bên cạnh để làm việc, giải trí khắp mọi nơi. Đồng thời với True Tone (chế độ tự động điều chỉnh cân bằng dựa trên ánh sáng xung quanh) có độ sáng cao đi kèm lớp phủ chống phản xạ còn mang đến trải nghiệm xem tốt nhất ở nhiều điểm khác nhau.\r\n• Sở hữu chip A12 Bionic giúp iPad Air 3 10.5 inch (2019) có sức mạnh cùng trí thông minh vượt bậc, thoải mái trong nhiều trải nghiệm từ chơi game, trải nghiệm hình ảnh và thực tế mở rộng. Ngoài ra việc chỉnh sửa video, thiết kế mô hình 3D… tất cả đều dễ dàng thực hiện trong một thao tác.\r\n• iPad Air 10.5 (2019) được Apple trang bị camera trước và sau đầy ưu điểm giúp chụp ảnh tuyệt đẹp và quay video HD 1080P và nhiều hơn thế nữa. Ngoài ra những cuộc gọi FaceTime nhóm đều trở nên dễ dàng và thú vị.\r\n• Hệ điều hành iOS tiên tiến và iCloud giúp việc đồng bộ hóa tệp nhanh chóng. Do đó việc truy cập tài liệu, hình ảnh hoặc video trở nên đơn giản và dễ dàng. Với iCloud của iPad Air 2019 chính là nơi mà bạn có thể lưu giữ được tất cả mọi thứ từ hình ảnh đến ghi chú, tệp… được an toàn nhất.\r\n\r\n•  Sản phẩm được Apple cài đặt sẵn tất cả các ứng dụng mà Apple thiết kế như là ảnh, bản đồ, tin nhắn, mail, safari… Bên cạnh đó còn có thêm những ứng dụng năng suất mạnh mẽ như là trang, số và cả Keynote. Ngoài ra với hàng triệu ứng dụng có sẵn trong App Store còn giúp cho bạn dễ dàng làm bất cứ điều gì mà bạn muốn từ chụp ảnh vẽ đến nhiều ứng dụng khác.'),
(4, 'iPad Air 4', 16450000, 'https://shopdunk.com/wp-content/uploads/2021/07/iPad-air-gen4-silver.png', 'iPad Air 2020 Màn hình Liquid Retina 10.9 inch tuyệt đẹp và công nghệ True Tone cho bạn những trải nghiệm thị giác thật dễ chịu. Chip A14 Bionic mới cùng công nghệ Neural Engine là nền tảng sức mạnh giúp bạn biên tập video 4K, soạn nhạc và giải trí cùng các trò chơi đẳng cấp, mọi tác vụ đều trở nên vô cùng đơn giản. Touch ID nhanh nhạy và dễ sử dụng với tính năng bảo mật cao, hệ thống camera hiện đại, USB-C, hỗ trợ đa dạng phụ kiện kể cả Magic Keyboard và Apple Pencil (thế hệ thứ 2).\r\n\r\n• Màn hình Liquid Retina 10.9 inch sắc nét với True Tone và dải màu rộng P3\r\n• Chip A14 Bionic với Neural Engine\r\n• Xác thực bảo mật với Touch ID\r\n• Camera sau 12MP, camera trước FaceTime HD 7MP\r\n• Hiện có các màu Bạc, Xám Bạc, Hồng Kim, Xanh Lá và Xanh Da Trời\r\n• Âm thanh stereo rộng\r\n• Wi-Fi 6 (802.11ax) và dữ liệu di động LTE Gigabit\r\n• Thời lượng pin lên đến 10 giờ\r\n• Cổng kết nối USB-C để sạc và kết nối phụ kiện\r\n• Hỗ trợ Magic Keyboard, Smart Keyboard Folio và Apple Pencil (thế hệ thứ 2)\r\n• iPadOS 14 mang đến cho bạn các chức năng mới được thiết kế dành riêng cho iPad\r\n\r\nBộ sản phẩm bao gồm: Máy tính bảng. Dây sạc. Củ sạc 20W. HDSD bảo hành điện tử 12 tháng'),
(5, 'iPad Pro 2020', 18790000, 'https://shopdunk.com/wp-content/uploads/2021/07/ipad-pro-11inch-2020-space-grey.png', 'iPad Pro 12.9 inch (2020) Đây là iPad Pro. Sở hữu màn hình di động tân tiến nhất thế giới. Sở hữu hệ camera chuyên nghiệp có thể biến đổi thực tế. Tốc độ ấn tượng vượt mặt nhiều máy tính xách tay PC. Bạn có thể sử dụng máy với thao tác chạm, bút cảm ứng, bàn phím, và nay với cả chuột hoặc bàn di.\r\n\r\n- Chip Apple M1 nâng hiệu suất lên một đẳng cấp mới\r\n- Màn hình Liquid Retina 11 inch tuyệt đẹp với ProMotion, True Tone và dải màu rộng P3\r\n- Hệ thống camera TrueDepth với camera trước Ultra Wide tích hợp tính năng Trung Tâm Sân Khấu\r\n- Camera Wide 12MP, camera Ultra Wide 10MP và LiDAR Scanner cho trải nghiệm thực tế ảo tăng cường sống động\r\n- Luôn kết nối với Wi-Fi 6 siêu nhanh và mạng LTE\r\n- Làm được nhiều việc hơn với thời lượng pin bền bỉ cả ngày\r\n- Cổng Thunderbolt cho kết nối nhanh với bộ nhớ ngoài, màn hình và dock\r\n- Xác thực bảo mật với Face ID\r\n- Bốn loa âm thanh và năm micro chuẩn studio\r\n- Hỗ trợ Apple Pencil (thế hệ thứ 2), Magic Keyboard và Smart Keyboard Folio\r\n- iPadOS mạnh mẽ, trực quan và được thiết kế riêng cho iPad\r\n- Hơn 1 triệu ứng dụng trên App Store dành riêng cho iPad\r\n\r\nBộ sản phẩm bao gồm: Máy tính bảng. Dây sạc. Củ sạc 18W. HDSD bảo hành điện tử 12 tháng'),
(6, 'iPad Pro M1', 20490000, 'https://shopdunk.com/wp-content/uploads/2021/07/ipad-pro-11inch-m1-silver.png', 'iPad Pro 12.9 inch (2021) Chiếc iPad đỉnh cao với chip Apple M1 siêu mạnh, màn hình Liquid Retina XDR 12.9 inch sống động, kết nối không dây siêu nhanh. Thắt dây an toàn vào đi nào.\r\n\r\n- Chip Apple M1 nâng hiệu suất lên một đẳng cấp mới\r\n- Màn hình Liquid Retina XDR 12.9 inch lộng lẫy với ProMotion, True Tone và dải màu rộng P3\r\n- Hệ thống camera TrueDepth với camera trước Ultra Wide tích hợp tính năng Trung Tâm Sân Khấu\r\n- Camera Wide 12MP, camera Ultra Wide 10MP và LiDAR Scanner cho trải nghiệm thực tế ảo tăng cường sống động\r\n- Luôn kết nối với Wi-Fi 6 siêu nhanh và mạng LTE\r\n- Làm được nhiều việc hơn với thời lượng pin bền bỉ cả ngày\r\n- Cổng Thunderbolt cho kết nối nhanh với bộ nhớ ngoài, màn hình và dock\r\n- Xác thực bảo mật với Face ID\r\n- Bốn loa âm thanh và năm micro chuẩn studio\r\n- Hỗ trợ Apple Pencil (thế hệ thứ 2), Magic Keyboard và Smart Keyboard Folio\r\n- iPadOS mạnh mẽ, trực quan và được thiết kế riêng cho iPad\r\n- Hơn 1 triệu ứng dụng trên App Store dành riêng cho iPad\r\n\r\nBộ sản phẩm bao gồm: Máy tính bảng. Dây sạc. Củ sạc 18W. HDSD bảo hành điện tử 12 tháng'),
(7, 'iPad mini 6 (2021)', 14290000, 'https://shopdunk.com/wp-content/uploads/2021/09/ipad-mini-6-select-wifi-pink-202109.png', '- Màn hình 8.3”, IPS LCD, Liquid Retina\r\n\r\n- Độ phân giải màn hình 2266 x 1488 Pixels\r\n\r\n- Kết nối bàn phím Bluetooth Keyboard\r\n\r\n- Kết nối bút Apple Pencil 2\r\n\r\n- Pin 19.3 Wh\r\n\r\n- Cổng sạc USB-C\r\n\r\n- Bảo mật Touch ID\r\n\r\n- Chip A15 Bionic\r\n\r\n- Bộ nhớ 64GB, 256 GB\r\n\r\n- Kết nối mạng 1 Nano SIM hoặc 1 eSIM, hỗ trợ 4G, Wifi\r\n\r\n- Camera sau 12 MP\r\n\r\n- Camera trước 12 MP'),
(8, 'iPad gen 9 (2021)', 9290000, 'https://shopdunk.com/wp-content/uploads/2021/09/ipad-gen-9-2021-hero-space-wifi-select.png', '\r\n- Màn hình 10.2”, IPS LCD, Retina\r\n\r\n- Độ phân giải màn hình 2160 x 1620 Pixels\r\n\r\n- Kết nối bàn phím Smart Keyboard\r\n\r\n- Kết nối bút Apple Pencil\r\n\r\n- Pin Khoảng 8.200 mAh\r\n\r\n- Cổng sạc Lightning\r\n\r\n- Bảo mật Touch ID\r\n\r\n- Chip A13 Bionic\r\n\r\n- Bộ nhớ 64GB, 256GB\r\n\r\n- Kết nối mạng 1 Nano SIM hoặc 1 eSIM, hỗ trợ 4G, Wifi\r\n\r\n- Camera sau 8MP\r\n\r\n- Camera trước 12MP');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `iphone`
--

CREATE TABLE `iphone` (
  `id` int(11) NOT NULL,
  `ten` varchar(200) NOT NULL,
  `gia` int(15) NOT NULL,
  `hinhanh` varchar(200) NOT NULL,
  `mota` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `iphone`
--

INSERT INTO `iphone` (`id`, `ten`, `gia`, `hinhanh`, `mota`) VALUES
(1, 'iPhone SE 2020', 10490000, 'https://shopdunk.com/wp-content/uploads/2021/07/ipSE-2020-black.webp', 'iPhone SE Chip A13 Bionic mạnh mẽ. Chế độ chụp Chân Dung và quay video 4K. Màn hình Retina HD 4.7 inch tuyệt đẹp và Touch ID. Cùng với thời lượng pin dài. Đây là chiếc iPhone nhỏ về kích thước, nhưng khủng về tính năng.\r\n\r\n- Màn hình Retina HD 4.7 inch\r\n- Chống nước và chống bụi (chống nước ở độ sâu 1 mét trong vòng tối đa 30 phút, đạt mức IP67)\r\n- Camera Wide 12MP; chế độ chụp Chân Dung, hiệu ứng Chiếu Sáng Chân Dung, Depth Control, HDR thông minh thế hệ mới và quay phim 4K\r\n- Camera trước 7MP với chế độ chụp Chân Dung, hiệu ứng Chiếu Sáng Chân Dung và Depth Control\r\n- Xác thực bảo mật với Touch ID\r\n- Chip A13 Bionic với Neural Engine thế hệ thứ ba\r\n- Khả năng sạc nhanh\r\n- Sạc không dây\r\n- iOS 14 với các tiện ích được thiết kế lại trên Màn Hình Chính, Thư Viện Ứng Dụng hoàn toàn mới, App Clips cùng nhiều tính năng khác\r\n\r\nBộ sản phẩm bao gồm: Điện thoại. Dây sạc. HDSD bảo hành điện tử 12 tháng'),
(2, 'iPhone XR', 11490000, 'https://shopdunk.com/wp-content/uploads/2021/06/ipXR-black.png', 'iPhone XR Thiết kế màn hình toàn phần sống động, chế độ chụp Chân Dung và thời lượng pin lâu. Cả 6 màu sắc đều tuyệt đẹp.\r\n\r\n- Màn hình Liquid Retina HD LCD 6.1 inch\r\n- Chống nước và chống bụi (chống nước ở độ sâu 1 mét trong vòng tối đa 30 phút, đạt mức IP67)\r\n- Camera Wide 12MP với chế độ Chân Dung, hiệu ứng Chiếu Sáng Chân Dung, Depth Control, HDR thông minh, và video 4K tốc độ tối đa 60 fps\r\n- Hệ thống camera trước TrueDepth 7MP với chế độ Chân Dung, hiệu ứng Chiếu Sáng Chân Dung, Depth Control, và khả năng quay video 1080p\r\n- Xác thực bảo mật với Face ID\r\n- A12 Bionic với Neural Engine thế hệ thứ hai\r\n- Khả năng sạc nhanh\r\n- Sạc không dây\r\n- iOS 14 với các tiện ích được thiết kế lại trên Màn Hình Chính, Thư Viện Ứng Dụng hoàn toàn mới, App Clips cùng nhiều tính năng khác\r\n\r\nBộ sản phẩm bao gồm: Điện thoại. Dây sạc. HDSD bảo hành điện tử 12 tháng'),
(3, 'iPhone 11', 13690000, 'https://shopdunk.com/wp-content/uploads/2021/05/ip11-white.png', 'iPhone 11 Hệ thống camera kép với Ultra Wide. Chế độ Ban Đêm và chất lượng video tuyệt vời.  Chống nước và chống bụi. Thời lượng pin lâu. Với 6 màu tuyệt đẹp. Trải nghiệm iPhone 11.\r\n\r\n- Màn hình Liquid Retina HD LCD 6.1 inch\r\n- Chống nước và chống bụi (chống nước ở độ sâu 2 mét trong vòng tối đa 30 phút, đạt mức IP68)\r\n- Hệ thống camera kép 12MP với camera Ultra Wide và Wide; chế độ Ban Đêm, chế độ Chân Dung, và khả năng quay video 4K tốc độ tối đa 60 fps\r\n- Camera trước TrueDepth 12MP với chế độ Chân Dung, có khả năng quay video 4K, và quay video chậm\r\n- Xác thực bảo mật với Face ID\r\n- Chip A13 Bionic với Neural Engine thế hệ thứ ba\r\n- Khả năng sạc nhanh\r\n- Sạc không dây\r\n- iOS 14 với các tiện ích được thiết kế lại trên Màn Hình Chính, Thư Viện Ứng Dụng hoàn toàn mới, App Clips cùng nhiều tính năng khác\r\n\r\nBộ sản phẩm bao gồm: Điện thoại. Dây sạc. HDSD bảo hành điện tử 12 tháng'),
(4, 'iPhone 12 mini', 15490000, 'https://shopdunk.com/wp-content/uploads/2021/07/ip12-mini-red.png', 'iPhone 12 mini  được trang bị A14 Bionic, chip nhanh nhất trên điện thoại thông minh. Hệ thống camera kép mới. Cùng với màn hình Super Retina XDR tuyệt đẹp. Tất cả trong một thiết kế nhỏ hơn.\r\n\r\n- Màn hình Super Retina XDR 5.4 inch\r\n- Ceramic Shield, chất liệu kính bền chắc nhất từng có trên điện thoại thông minh\r\n- A14 Bionic, chip nhanh nhất từng có trên điện thoại thông minh\r\n- Hệ thống camera kép tiên tiến 12MP với các camera Ultra Wide và Wide; chế độ Ban Đêm, Deep Fusion, HDR thông minh thế hệ 3, khả năng quay video HDR Dolby Vision 4K\r\n- Camera trước TrueDepth 12MP với chế độ Ban Đêm và khả năng quay video HDR Dolby Vision 4K\r\n- Khả năng chống nước đạt chuẩn IP68 đứng đầu thị trường\r\n- iOS 14 với các tiện ích được thiết kế lại trên Màn Hình Chính, Thư Viện Ứng Dụng hoàn toàn mới, App Clips cùng nhiều tính năng khác\r\n\r\nBộ sản phẩm bao gồm: Điện thoại. Dây sạc. HDSD bảo hành điện tử 12 tháng'),
(5, 'iPhone 12', 17950000, 'https://shopdunk.com/wp-content/uploads/2021/05/ip12-white.png', 'iPhone 12 đẩy nhanh mọi tác vụ với A14 Bionic, chip nhanh nhất trên điện thoại thông minh. Hệ thống camera kép mới. Với màn hình Super Retina XDR tuyệt đẹp, nay bạn có thể chiêm ngưỡng từng chi tiết hình ảnh vô cùng sống động.\r\n\r\n- Màn hình Super Retina XDR 6.1 inch\r\n- Ceramic Shield, chất liệu kính bền chắc nhất từng có trên điện thoại thông minh\r\n- A14 Bionic, chip nhanh nhất từng có trên điện thoại thông minh\r\n- Hệ thống camera kép tiên tiến 12MP với các camera Ultra Wide và Wide, chế độ Ban Đêm, Deep Fusion, HDR thông minh thế hệ 3, khả năng quay video HDR Dolby Vision 4K\r\n- Camera trước TrueDepth 12MP với chế độ Ban Đêm và khả năng quay video HDR Dolby Vision 4K\r\n- Khả năng chống nước đạt chuẩn IP68 đứng đầu thị trường\r\n- iOS 14 với các tiện ích được thiết kế lại trên Màn Hình Chính, Thư Viện Ứng Dụng hoàn toàn mới, App Clips cùng nhiều tính năng khác\r\n\r\nBộ sản phẩm bao gồm: Điện thoại. Dây sạc. HDSD bảo hành điện tử 12 tháng'),
(6, 'iPhone 12 Pro', 25850000, 'https://shopdunk.com/wp-content/uploads/2021/07/ip12-pro-graphite.png', 'iPhone 12 Pro Mạng 5G siêu nhanh. A14 Bionic, chip nhanh nhất trên điện thoại thông minh. Hệ thống camera chuyên nghiệp nâng tầm ảnh chụp trong điều kiện ánh sáng yếu. Một bước nhảy vọt đáng nể.\r\n\r\n- Màn hình Super Retina XDR 6.1 inch\r\n- Ceramic Shield, chất liệu kính bền chắc nhất từng có trên điện thoại thông minh\r\n- Mạng 5G cho tốc độ tải xuống siêu nhanh, xem video và nghe nhạc trực tuyến chất lượng cao\r\n- A14 Bionic, chip nhanh nhất từng có trên điện thoại thông minh\r\n- Hệ thống camera chuyên nghiệp 12MP với các camera Ultra Wide, Wide và Telephoto; phạm vi thu phóng quang học 4x; Chế độ Ban Đêm, Deep - Fusion, HDR thông minh thế hệ 3, Apple ProRAW và khả năng quay video HDR Dolby Vision 4K\r\n- LiDAR Scanner cải thiện trải nghiệm thực tế ảo tăng cường và chụp ảnh chân dung ở chế độ Ban Đêm\r\n- Camera trước TrueDepth 12MP với chế độ Ban Đêm và khả năng quay video HDR Dolby Vision 4K\r\n- Khả năng chống nước đạt chuẩn IP68 đứng đầu thị trường\r\n- iOS 14 với các tiện ích được thiết kế lại trên Màn Hình Chính, Thư Viện Ứng Dụng hoàn toàn mới, App Clips cùng nhiều tính năng khác\r\n\r\nBộ sản phẩm bao gồm: Điện thoại. Dây sạc. HDSD bảo hành điện tử 12 tháng'),
(7, 'iPhone 12 Pro Max', 28450000, 'https://shopdunk.com/wp-content/uploads/2021/06/ip12-pro-max-graphite.png', 'iPhone 12 Pro Max A14 Bionic, chip nhanh nhất trên điện thoại thông minh. Hệ thống camera chuyên nghiệp cho ảnh chụp tuyệt đẹp trong điều kiện ánh sáng yếu. Cùng với màn hình Super Retina XDR lớn hơn. Một bước tiến nhảy vọt.\r\n\r\n- Màn hình Super Retina XDR 6.7 inch\r\n- Ceramic Shield, chất liệu kính bền chắc nhất từng có trên điện thoại thông minh\r\n- A14 Bionic, chip nhanh nhất từng có trên điện thoại thông minh\r\n- Hệ thống camera chuyên nghiệp 12MP với camera Ultra Wide, Wide và Telephoto, phạm vi thu phóng quang học 5x, chế độ Ban Đêm, Deep Fusion, HDR thông minh thế hệ 3, Apple ProRAW, và khả năng quay video HDR Dolby Vision 4K\r\n- LiDAR Scanner cải thiện trải nghiệm thực tế ảo tăng cường và chụp ảnh chân dung ở chế độ Ban Đêm\r\n- Camera trước TrueDepth 12MP với chế độ Ban Đêm và khả năng quay video HDR Dolby Vision 4K\r\n- Khả năng chống nước đạt chuẩn IP68 đứng đầu thị trường\r\n- iOS 14 với các tiện ích được thiết kế lại trên Màn Hình Chính, Thư Viện Ứng Dụng hoàn toàn mới, App Clips cùng nhiều tính năng khác\r\n\r\nBộ sản phẩm bao gồm: Điện thoại. Dây sạc. HDSD bảo hành điện tử 12 tháng'),
(8, 'iPhone 13 mini', 20290000, 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_Mini_PDP_Position-1A_Color_Midnight__VN-2048x2048.jpg', 'iPhone 13 mini Hệ thống camera kép tiên tiến nhất từng có trên iPhone. Chip A15 Bionic thần tốc. Thời lượng pin tăng vọt. Thiết kế bền bỉ. Mạng 5G siêu nhanh. Cùng với màn hình Super Retina XDR sáng hơn.\r\n\r\n• Màn hình Super Retina XDR 5.4 inch\r\n• Chế độ Điện Ảnh làm tăng thêm độ sâu trường ảnh nông và tự động thay đổi tiêu cự trong video\r\n• Hệ thống camera kép tiên tiến với camera Wide và Ultra Wide 12MP; Phong Cách Nhiếp Ảnh, HDR thông minh thế hệ 4, chế độ Ban Đêm, khả năng quay video HDR Dolby Vision 4K\r\n• Camera trước TrueDepth 12MP với chế độ Ban Đêm và khả năng quay video HDR Dolby Vision 4K\r\n• Chip A15 Bionic cho hiệu năng thần tốc\r\n• Thời gian xem video lên đến 17 giờ\r\n• Thiết kế bền bỉ với Ceramic Shield\r\n• Khả năng chống nước đạt chuẩn IP68 đứng đầu thị trường\r\n• Mạng 5G cho tốc độ tải xuống siêu nhanh, xem video và nghe nhạc trực tuyến chất lượng cao\r\n• iOS 15 tích hợp nhiều tính năng mới cho phép bạn làm được nhiều việc hơn bao giờ hết với iPhone'),
(9, 'iPhone 13', 23290000, 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_PDP_Position-1A_Color_PRODUCTRED__VN-2048x2048.jpg', 'iPhone 13 Hệ thống camera kép tiên tiến nhất từng có trên iPhone. Chip A15 Bionic thần tốc. Bước nhảy vọt về thời lượng pin. Thiết kế bền bỉ. Mạng 5G siêu nhanh. Cùng với màn hình Super Retina XDR sáng hơn. \r\n\r\n• Màn hình Super Retina XDR 6.1 inch\r\n• Chế độ Điện Ảnh làm tăng thêm độ sâu trường ảnh nông và tự động thay đổi tiêu cự trong video\r\n• Hệ thống camera kép tiên tiến với camera Wide và Ultra Wide 12MP; Phong Cách Nhiếp Ảnh, HDR thông minh thế hệ 4, chế độ Ban Đêm, khả năng quay video HDR Dolby Vision 4K\r\n• Camera trước TrueDepth 12MP với chế độ Ban Đêm và khả năng quay video HDR Dolby Vision 4K\r\n• Chip A15 Bionic cho hiệu năng thần tốc\r\n• Thời gian xem video lên đến 19 giờ\r\n• Thiết kế bền bỉ với Ceramic Shield\r\n• Khả năng chống nước đạt chuẩn IP68 đứng đầu thị trường4\r\n• Mạng 5G cho tốc độ tải xuống siêu nhanh, xem video và nghe nhạc trực tuyến chất lượng cao\r\n• iOS 15 tích hợp nhiều tính năng mới cho phép bạn làm được nhiều việc hơn bao giờ hết với iPhone'),
(10, 'iPhone 13 Pro', 29290000, 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_Pro_PDP_Position-1A_Color_Silver__VN-2048x2048.jpg', 'iPhone 13 Pro Một nâng cấp hệ thống camera chuyên nghiệp hoành tráng chưa từng có của Apple. Màn hình Super Retina XDR với ProMotion cho cảm giác nhanh nhạy hơn. Chip A15 Bionic thần tốc. Mạng 5G siêu nhanh. Thiết kế bền bỉ và thời lượng pin tăng vọt.\r\n\r\n• Màn hình Super Retina XDR 6.1 inch với ProMotion cho cảm giác nhanh nhạy hơn\r\n• Chế độ Điện Ảnh làm tăng thêm độ sâu trường ảnh nông và tự động thay đổi tiêu cự trong video\r\n• Hệ thống camera chuyên nghiệp Telephoto, Wide và Ultra Wide 12MP; LiDAR Scanner; phạm vi thu phóng quang học 6x; chụp ảnh macro; Phong Cách Nhiếp Ảnh, video ProRes,3 HDR thông minh thế hệ 4, chế độ Ban Đêm, Apple ProRAW, khả năng quay video HDR Dolby Vision 4K\r\n• Camera trước TrueDepth 12MP với chế độ Ban Đêm và khả năng quay video HDR Dolby Vision 4K\r\n• Chip A15 Bionic cho hiệu năng thần tốc\r\n• Thời gian xem video lên đến 22 giờ\r\n• Thiết kế bền bỉ với Ceramic Shield\r\n• Khả năng chống nước đạt chuẩn IP68 đứng đầu thị trường\r\n• Mạng 5G cho tốc độ tải xuống siêu nhanh, xem video và nghe nhạc trực tuyến chất lượng cao\r\n• iOS 15 tích hợp nhiều tính năng mới cho phép bạn làm được nhiều việc hơn bao giờ hết với iPhone'),
(11, 'iPhone 13 Pro Max', 32290000, 'https://shopdunk.com/wp-content/uploads/2021/09/iPhone_13_Pro_Max_PDP_Position-1A_Color_Graphite__VN-2048x2048.jpg', 'iPhone 13 Pro Max Một nâng cấp hệ thống camera chuyên nghiệp hoành tráng chưa từng có. Màn hình Super Retina XDR với ProMotion cho cảm giác nhanh nhạy hơn. Chip A15 Bionic thần tốc. Mạng 5G siêu nhanh. Thiết kế bền bỉ và thời lượng pin dài nhất từng có trên iPhone.\r\n\r\n• Màn hình Super Retina XDR 6.7 inch với ProMotion cho cảm giác nhanh nhạy hơn \r\n• Chế độ Điện Ảnh làm tăng thêm độ sâu trường ảnh nông và tự động thay đổi tiêu cự trong video \r\n• Hệ thống camera chuyên nghiệp Telephoto, Wide và Ultra Wide 12MP; LiDAR Scanner; phạm vi thu phóng quang học 6x; chụp ảnh macro; Phong Cách Nhiếp Ảnh, video ProRes,4 HDR thông minh thế hệ 4, chế độ Ban Đêm, Apple ProRAW, khả năng quay video HDR Dolby Vision 4K \r\n• Camera trước TrueDepth 12MP với chế độ Ban Đêm và khả năng quay video HDR Dolby Vision 4K \r\n• Chip A15 Bionic cho hiệu năng thần tốc \r\n• Thời gian xem video lên đến 28 giờ, thời lượng pin dài nhất từng có trên iPhone \r\n• Thiết kế bền bỉ với Ceramic Shield \r\n• Khả năng chống nước đạt chuẩn IP68 đứng đầu thị trường \r\n• Mạng 5G cho tốc độ tải xuống siêu nhanh, xem video và nghe nhạc trực tuyến chất lượng cao \r\n• iOS 15 tích hợp nhiều tính năng mới cho phép bạn làm được nhiều việc hơn bao giờ hết với iPhone.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mac`
--

CREATE TABLE `mac` (
  `id` int(11) NOT NULL,
  `ten` varchar(200) NOT NULL,
  `gia` int(11) NOT NULL,
  `hinhanh` varchar(200) NOT NULL,
  `mota` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mac`
--

INSERT INTO `mac` (`id`, `ten`, `gia`, `hinhanh`, `mota`) VALUES
(1, 'Mac mini M1', 17590000, 'https://shopdunk.com/wp-content/uploads/2021/07/Mac_mini_PDP_Image_Position-1_M1_Chip__en-1.jpg', 'Mac mini M1 nay có chip Apple M1 mới. Với CPU nhanh hơn đến 3x, GPU nhanh hơn đến 6x và Neural Engine mạnh mẽ cho hiệu năng máy học nhanh hơn đến 15x. Cho hiệu năng khủng mà kích cỡ không đổi.\r\n\r\n• Chip M1 do Apple thiết kế tạo ra một cú nhảy vọt về hiệu năng máy học, CPU và GPU\r\n• CPU 8 lõi cho hiệu năng nhanh hơn đến 3x, xử lý các luồng công việc nhanh hơn bao giờ hết\r\n• GPU 8 lõi với tốc độ xử lý đồ họa nhanh gấp 6x cho các ứng dụng và game có đồ họa khủng\r\n• Neural Engine 16 lõi cho công nghệ máy học hiện đại\r\n• Bộ nhớ thống nhất 8GB giúp bạn làm việc gì cũng nhanh chóng và trôi chảy\r\n• Ổ lưu trữ SSD siêu nhanh giúp mở các ứng dụng và tập tin chỉ trong tích tắc\r\n• Hệ thống tản nhiệt tiên tiến mang lại hiệu năng đột phá\r\n• Wi-Fi 6 thế hệ mới giúp kết nối nhanh hơn\r\n• Hai cổng Thunderbolt / USB 4, một cổng HDMI 2.0, hai cổng USB-A và Gigabit Ethernet\r\n• macOS Big Sur với thiết kế mới đầy táo bạo cùng nhiều cập nhật quan trọng cho các ứng dụng Safari, Messages và Maps\r\n• Thiết kế vuông 19.7 cm màu bạc cực kỳ nhỏ gọn\r\n\r\nBộ sản phẩm bao gồm: Mac mini. Cáp nguồn. HDSD bảo hành điện tử 12 tháng'),
(2, 'MacBook Air 13 inch (MQD32)', 18450000, 'https://cdn-dgcei.nitrocdn.com/QaFavQVnaqgHtiSsAelwGDKVguOuACXM/assets/static/source/rev-37c8b93/wp-content/uploads/2021/07/MacBook-Air-MQD32.png', '5 LÝ DO NÊN MUA MACBOOK AIR MQD32\r\n\r\n1. MacBook Air MQD32 có thiết kế sang trọng, mỏng nhẹ với logo táo phát sáng biểu tượng\r\n\r\n   MacBook Air 13 inch MQD32 hiện tại vẫn sở hữu thiết ấn tượng với thân vỏ nhôm nguyên khối. Máy siêu mỏng nhẹ chỉ với  1,35 kg và 1,7 cm. Độ hoàn thiện của máy thuộc hàng cao cấp với những chi tiết gia công tỉ mỉ. Chất liệu nhôm dày bản giúp MacBook Air MQD32 có độ bền cao. So với thiết bị laptop Windows cùng phân khúc, bạn chỉ có thể mua được sản phẩm chất lượng khá, khung vỏ bằng nhựa hoặc kim loại mỏng. Ví dụ Vivobook S433 giá gần 19 triệu nhưng vỏ nhôm mỏng, bị flex thì độ hoàn thiện của MacBook Air MQD32 rõ ràng ở đẳng cấp khác. \r\n\r\n   Đặc biệt,  Air MQD32 là mẫu MacBook  duy nhất  sử có logo quả táo phát sáng huyền thoại thiết kế được người dùng yêu thích.\r\n\r\n2. MacBook chính hãng dễ tiếp cận nhất\r\n\r\n   MQD32 là mẫu MacBook chính hãng Apple Việt Nam, có giá tốt nhất. Tham khảo nhanh tại ShopDunk, giá MQD32 chỉ  trong tầm 18  triệu đồng. So với mẫu Macbook chính hãng kế cận là Macbook Air 2020 thì MQD32 rẻ hơn tới 5 triệu đồng. MQD32 sẽ là thiết bị  MacBook có mức giá dễ tiếp cận nhất dành cho người dùng phổ thông mong muốn có một trải nghiệm MacBook chính hãng.\r\n\r\n3. Đầy đủ cổng kết nối\r\n\r\n   MacBook thế hệ mới gần đây thường bị than phiền vì hạn chế cổng kết nối, chỉ có cổng Thunderbolt và người dùng phải mang theo hub chuyển cổng. Đối với MacBook Air 13 inch MQD32, máy có gần như đầy đủ cổng kết nối mà bạn cần. Bao gồm 2 cổng USB Type A để kết nối với các thiết bị ngoại vi như chuột, bàn phím. Cổng Thunderbolt 2 để xuất hình, khe cắm thẻ nhớ SD, cổng sạc Magsafe 2 tiện lợi và cuối cùng là jack cắm tai nghe 3.5mm.\r\n\r\n4. Giải quyết tốt công việc văn phòng, giải trí \r\n\r\n   Cấu hình tốt\r\n\r\n   Sở hữu cấu hình không quá mới với con chip Intel Broadwell, bù lại MQD32 có sẵn 8GB RAM và ổ cứng SSD tốc độ cao. Vậy nên, MacBook Air 13 2017 vẫn có thể xử lý tốt những tác vụ văn phòng cơ bản cho người dùng phổ thông.\r\n\r\nVới người dùng phổ thông, học sinh, sinh viên, đây cũng là một sự lựa chọn tốt để học tập qua online trong mùa dịch này. MQD32 có Webcam HD hỗ trợ tốt việc học và làm việc online.\r\n\r\n   Ngoài ra, MacBook Air 13 MQD cũng có thể làm tốt công việc chỉnh ảnh qua Photoshop và Lightroom. Tốc độ Import và Export ảnh khá nhanh, với khe cắm thẻ SD rất tiện lợi. Nếu muốn dùng song song hệ điều hành Windows và Mac, MQD32 cũng hỗ trợ Boot Camp để có thể cài đặt Windows dễ dàng.\r\n\r\n   Trải nghiệm thực tế\r\n\r\n   Nói sâu hơn về trải nghiệm làm việc, điểm thích ở MacBook Air 13 2017 là bàn phím cắt kéo truyền thống. Cho hành trình phím sâu, bấm nảy và gõ rất đã, có cả đèn bàn phím. Bàn phím này có độ bền cao, gõ tốt hơn hẳn bàn phím cánh bướm trên đời MacBook mới. Thậm chí trải nghiệm có phần  sướng hơn cả Magic Keyboard trên MacBook M1.\r\n\r\nVề trải nghiệm giải trí, dù chưa được trang bị màn hình Retina nhưng MacBook Air 13 2017 vẫn hiển thị tốt với màn hình 13,3 inch độ phân giải 1440x900px. Tấm nền LED Backlit chất lượng với độ tương phản cao, màu sắc trung thực  đem lại trải nghiệm xem phim, lướt web thoải mái. Ngoài ra, loa ngoài của MacBook Air 13 2017 ấn tượng với âm lượng lớn, âm thanh cho chi tiết tốt. Cày phim thì cứ phải gọi là đã!!!\r\n\r\n5. Thời lượng pin 12 tiếng dùng cả ngày\r\n\r\n   Nhờ con chip tiết kiệm điện Broadwell, MacBook Air 13 2017 có thời lượng pin vô cùng ấn tượng. Với thời lượng tối đa lên tới 12 tiếng đồng hồ cho các tác vụ văn phòng cơ bản. Khi để độ sáng màn hình tốt đa, kết nối Wifi, Bluetooth và dùng liên tục Chrome, Word, Photoshop, máy có thể trụ được từ 7-8 tiếng. Bạn hoàn toàn có thể mang ra ngoài làm việc cả một ngày dài.\r\n\r\n   Củ sạc kèm máy cũng rất nhỏ gọn, tiện lợi để mang theo. Cổng sạc Magsafe 2 thậm chí còn dễ dùng cả sạc Type C trên các đời MacBook mới. Bạn chỉ cần để chân sạc chân lại gần cổng sạc sẽ tự hít vào.\r\n\r\nVới những lý do trên, MacBook Air 13 inch MQD32 hiện tại vẫn rất đáng mua đối với người dùng phổ thông tìm kiếm một thiết bị Mac chính hãng, mỏng nhẹ và giá tốt.'),
(3, 'MacBook Pro 16 inch 2019', 58550000, 'https://shopdunk.com/wp-content/uploads/2021/07/GEO-J152-WebChannel-PDP_images-ch20macbook_pro_16in_spacegrey_pdp_US_1-1.jpg', 'MacBook Pro 16 inch Với hiệu năng cao ấn tượng, màn hình Retina 16 inch sống động, và thời lượng pin bền bỉ cả ngày, MacBook Pro mạnh vô đối. Vì vậy, bạn có thể hoàn thành mọi việc, ở bất cứ nơi đâu.\r\n\r\n• Bộ xử lý Intel Core i9 tám lõi hoặc Intel Core i7 sáu lõi thế hệ thứ 9\r\n• Màn hình Retina 16 inch sống động với công nghệ True Tone\r\n• Touch Bar và Touch ID\r\n• Đồ họa AMD Radeon Pro 5300M hoặc 5500M với bộ nhớ GDDR6\r\n• SSD siêu nhanh\r\n• Intel UHD Graphics 630\r\n• Hệ thống âm thanh 6 loa với loa trầm khử lực\r\n• Bốn cổng Thunderbolt 3 (USB-C)\r\n• Thời lượng pin lên đến 11 giờ\r\n• Wi-Fi 802.11ac\r\n• Bàn phím Magic Keyboard có đèn nền\r\n• Bàn di cảm ứng Force Touch\r\n• macOS Big Sur với thiết kế mới đầy táo bạo cùng nhiều cập nhật quan trọng cho các ứng dụng Safari, Messages và Maps\r\n• Hiện có màu xám bạc và bạc\r\n\r\nBộ sản phẩm bao gồm: MacBook. Dây sạc. Củ sạc 96W. HDSD bảo hành điện tử 12 tháng'),
(4, 'MacBook Pro 2020', 28950000, 'https://shopdunk.com/wp-content/uploads/2021/06/MacBook_Pro_13in_2ports_space_gray_PDP_US_1.jpg', 'MacBook Pro 13 inch (Intel) Sở hữu bộ xử lý Intel Core lõi tứ thế hệ thứ 10, SSD siêu nhanh và bàn phím Magic Keyboard. Tất cả gói gọn trong một thiết kế nhỏ gọn tuyệt đẹp nặng 1,4 kg.\r\n\r\n• Bộ xử lý Intel Core i5 lõi tứ thế hệ thứ 10\r\n• Màn hình Retina sống động 13.3 inch với công nghệ True Tone\r\n• Bàn phím Magic Keyboard có đèn nền\r\n• Touch Bar và Touch ID\r\n• Intel Iris Plus Graphics\r\n• SSD siêu nhanh\r\n• Bốn cổng Thunderbolt 3 (USB-C)\r\n• Thời lượng pin lên đến 10 giờ\r\n• Wi-Fi 802.11ac\r\n• Bàn di cảm ứng Force Touch\r\n• macOS Big Sur với thiết kế mới đầy táo bạo cùng nhiều cập nhật quan trọng cho các ứng dụng Safari, Messages và Maps\r\n• Hiện có màu xám bạc và bạc\r\n\r\nBộ sản phẩm bao gồm: MacBook. Dây sạc. Củ sạc 61W. HDSD bảo hành điện tử 12 tháng'),
(5, 'MacBook Air 2020', 22450000, 'https://shopdunk.com/wp-content/uploads/2021/07/MacBook-Air-2020-Core-i5-4.jpeg', 'MacBook Air 2020 Bàn phím Magic Keyboard với cơ chế cắt kéo tương tự MacBook Pro 16 inch. Bàn phím mới dày hơn so với bàn phím cánh bướm (Butterfly Keyboard), hành trình phím 1 mm và cụm phím điều hướng dạng chữ T truyền thống cho cảm giác gõ tốt hơn, ít bám bụi bẩn hơn.\r\n\r\n• Hiệu năng vượt trội với CPU Intel Core thế hệ thứ 10.\r\n• So với MacBook Air 2018, CPU mới cho hiệu năng xử lý mạnh hơn gấp đôi, sức mạnh đồ họa cao hơn 80% với card đồ họa (GPU) Intel Iris Plus.\r\n• Tùy chọn ổ cứng thấp nhất của MacBook Air 2020 là 256 GB, có thể nâng cấp lên 512 GB, 1 TB hoặc 2 TB. Cùng với đó là 2 phiên bản RAM 8GB và 16GB.\r\n• Màn hình 13.3 inch cùng với các tính năng khác bao gồm micrô cải tiến giúp người dùng giao tiếp rõ hơn khi nói chuyện trực tuyến với người khác, như qua FaceTime. Nó cũng bao gồm cổng Thunderbolt 3 mới, loa âm thanh nổi mới, chip bảo mật T2, cổng tai nghe 3,5mm,… Ngoài ra, chúng còn sử dụng cảm biến vân tay Touch ID, cho phép người dùng có thể sử dụng để đăng nhập vào máy tính xách tay hoặc để mua hàng trực tuyến.\r\n• Thiết kế mỏng nhẹ, trọng lượng 1,29 kg tương tự phiên bản trước. Máy trang bị màn hình Retina 13,3 inch hỗ trợ True Tone, cảm biến vân tay Touch ID, RAM 8/16 GB, 2 cổng USB-C chuẩn Thunderbolt 3, webcam FaceTime HD 720p và cổng tai nghe 3,5mm.\r\n\r\nBộ sản phẩm bao gồm: MacBook. Dây sạc. Củ sạc 30W. HDSD bảo hành điện tử 12 tháng'),
(6, 'MacBook Pro M1 2020', 31750000, 'https://shopdunk.com/wp-content/uploads/2021/07/MacBook_Pro_13_SpGry_PDP_Image_Position-1_M1_Chip_1_11zon.webp', 'MacBook Pro M1 Thay đổi ngoạn mục nhờ chip Apple M1, với sức mạnh xử lý tăng thêm đến 2.8x, tốc độ xử lý đồ họa nhanh hơn 5x. Và thời lượng pin lên đến 20 giờ, thời lượng pin lâu nhất trong các dòng máy tính Mac từ trước đến nay. Để bạn có thể tiến xa trong công việc, dù đi bất kỳ nơi đâu.\r\n\r\n• Chip M1 do Apple thiết kế tạo ra một cú nhảy vọt về hiệu năng máy học, CPU và GPU\r\n• Làm được nhiều việc hơn với thời lượng pin lên đến 20 giờ, thời lượng pin lâu nhất trong các dòng máy tính Mac từ trước đến nay\r\n• CPU 8 lõi cho hiệu năng nhanh hơn đến 2.8x, xử lý các luồng công việc nhanh hơn bao giờ hết\r\n• GPU 8 lõi với tốc độ xử lý đồ họa nhanh gấp 5x cho các ứng dụng và game có đồ họa khủng\r\n• Neural Engine 16 lõi cho công nghệ máy học hiện đại\r\n• Bộ nhớ thống nhất 8GB giúp bạn làm việc gì cũng nhanh chóng và trôi chảy\r\n• Ổ lưu trữ SSD siêu nhanh giúp mở các ứng dụng và tập tin chỉ trong tích tắc\r\n• Hệ thống tản nhiệt chủ động mang lại hiệu năng tuyệt vời\r\n• Màn hình Retina với độ sáng 500 nit cho màu sắc sống động và chi tiết ấn tượng\r\n• Camera FaceTime HD với bộ xử lý tín hiệu hình ảnh tiên tiến cho các cuộc gọi video đẹp hình, rõ tiếng hơn\r\n• Ba micro phối hợp chuẩn studio thu giọng nói của bạn rõ hơn\r\n• Wi-Fi 6 thế hệ mới giúp kết nối nhanh hơn\r\n• Hai cổng Thunderbolt / USB 4 để sạc và kết nối phụ kiện\r\n• Bàn phím Magic Keyboard có đèn nền và Touch ID giúp mở khóa và thanh toán an toàn hơn\r\n• macOS Big Sur với thiết kế mới đầy táo bạo cùng nhiều cập nhật quan trọng cho các ứng dụng Safari, Messages và Maps\r\n• Hiện có màu xám bạc và bạc\r\n\r\nBộ sản phẩm bao gồm: MacBook. Dây sạc. Củ sạc 61W. HDSD bảo hành điện tử 12 tháng'),
(7, 'iMac 2020', 24990000, 'https://shopdunk.com/wp-content/uploads/2021/09/iMac_21inch_PDP_Image_Position-1__US-1.jpg', 'iMac 27 inch màn hình Retina 5K giờ đây tích hợp bộ xử lý tối tân, bộ nhớ nhanh hơn, đồ họa mạnh mẽ và lưu trữ SSD siêu nhanh.  Màn hình Retina 5K sống động tốt hơn bao giờ hết với công nghệ True Tone và mặt kính có cấu trúc nano (tùy chọn).  Với hệ điều hành macOS và các ứng dụng được tích hợp sẵn, iMac 27 inch là chiếc máy tính đa năng sáng tạo, mạnh mẽ hơn bao giờ hết.\r\n\r\n• Màn hình Retina 5K 27 inch (theo đường chéo) với độ phân giải 5120×2880\r\n• Mặt kính có cấu trúc Nano (tùy chọn)\r\n• Bộ xử lý Intel Core i5 sáu lõi hoặc Intel Core i7 tám lõi thế hệ thứ 10\r\n• Đồ họa AMD Radeon Pro 5300 hoặc 5500 XT\r\n• Lưu trữ SSD siêu nhanh\r\n• Hai cổng Thunderbolt 3 (USB-C)\r\n• Bốn cổng USB-A\r\n• Cổng Gigabit Ethernet\r\n• Camera FaceTime HD 1080p\r\n• Wi-Fi 802.11ac và Bluetooth 5.0\r\n• Magic Mouse 2\r\n• Magic Keyboard\r\n• macOS Big Sur với thiết kế mới đầy táo bạo cùng nhiều cập nhật quan trọng cho các ứng dụng Safari, Messages và Maps\r\n\r\n \r\n\r\nBộ sản phẩm bao gồm: iMac. Cáp nguồn. Dây cáp Lightning. Magic Keyboard. Magic Mouse 2.  HDSD bảo hành điện tử 12 tháng'),
(8, 'MacBook Air M1 2020', 26590000, 'https://shopdunk.com/wp-content/uploads/2021/07/MacBook_Air_M1_Space-Gray-1.webp', 'MacBook Air M1 Là máy tính xách tay mỏng và nhẹ nhất của Apple – nay thay đổi ngoạn mục với chip Apple M1 mạnh mẽ. Tạo ra một cú nhảy vọt về hiệu năng CPU và đồ họa, cùng thời lượng pin lên đến 18 giờ.\r\n\r\n• Chip M1 do Apple thiết kế tạo ra một cú nhảy vọt về hiệu năng máy học, CPU và GPU\r\n• Tăng thời gian sử dụng với thời lượng pin lên đến 18 giờ\r\n• CPU 8 lõi cho tốc độ nhanh hơn đến 3.5x, xử lý công việc nhanh chóng hơn bao giờ hết\r\n• GPU lên đến 8 lõi với tốc độ xử lý đồ họa nhanh hơn đến 5x cho các ứng dụng và game đồ họa khủng\r\n• Neural Engine 16 lõi cho công nghệ máy học hiện đại\r\n• Bộ nhớ thống nhất 8GB giúp bạn làm việc gì cũng nhanh chóng và trôi chảy\r\n• Ổ lưu trữ SSD siêu nhanh giúp mở các ứng dụng và tập tin chỉ trong tích tắc\r\n• Thiết kế không quạt giảm tối đa tiếng ồn khi sử dụng\r\n• Màn hình Retina 13.3 inch với dải màu rộng P3 cho hình ảnh sống động và chi tiết ấn tượng\r\n• Camera FaceTime HD với bộ xử lý tín hiệu hình ảnh tiên tiến cho các cuộc gọi video đẹp hình, rõ tiếng hơn\r\n• Bộ ba micro phối hợp tập trung thu giọng nói của bạn, không thu tạp âm môi trường\r\n• Wi-Fi 6 thế hệ mới giúp kết nối nhanh hơn\r\n• Hai cổng Thunderbolt / USB 4 để sạc và kết nối phụ kiện\r\n• Bàn phím Magic Keyboard có đèn nền và Touch ID giúp mở khóa và thanh toán an toàn hơn\r\n• macOS Big Sur với thiết kế mới đầy táo bạo cùng nhiều cập nhật quan trọng cho các ứng dụng Safari, Messages và Maps\r\n• Hiện có màu vàng kim, xám bạc và bạc\r\n\r\nBộ sản phẩm bao gồm: MacBook. Dây sạc. Củ sạc 30W. HDSD bảo hành điện tử 12 tháng'),
(9, 'iMac M1 2021 24 inch', 31450000, 'https://shopdunk.com/wp-content/uploads/2021/06/kjh.jpg', 'iMac 24 inch (2021) Thay đổi ngoạn mục với chip Apple M1, iMac nay mỏng ấn tượng và mạnh không thể tưởng. Được tạo tác để nổi bật trong mọi môi trường và phù hợp hoàn toàn với cuộc sống của bạn.\r\n\r\n• Màn hình Retina 4.5K 24 inch với gam màu rộng P3 và độ sáng 500 nit\r\n• Chip Apple M1 đem đến hiệu năng mạnh mẽ với CPU 8 lõi và GPU 7 hoặc 8 lõi\r\n• Thiết kế mỏng ấn tượng 11.5mm với sắc màu sống động\r\n• Camera FaceTime HD 1080p với M1 ISP để quay video chất lượng ấn tượng\r\n• Dãy ba micro chuẩn phòng thu để thực hiện cuộc gọi và ghi âm tiếng trong như pha lê\r\n• Hệ thống âm thanh sáu loa cho trải nghiệm âm thanh chất lượng cao và mạnh mẽ ấn tượng\r\n• Bộ lưu trữ SSD siêu nhanh lên đến 512GB\r\n• Hai cổng Thunderbolt / USB và lên đến hai cổng USB \r\n• Wi-Fi 6 siêu nhanh và công nghệ không dây Bluetooth 5.0\r\n• Phối màu hoàn hảo giữa Magic Mouse và Magic Keyboard hoặc Magic Keyboard và Touch ID\r\n• macOS sở hữu thiết kế ấn tượng, dễ sử dụng và phối hợp mượt mà với iPhone\r\n• Có các màu xanh dương, xanh lá, hồng, bạc, vàng, cam và tím\r\n\r\nBộ sản phẩm bao gồm: iMac. Cáp nguồn. Dây cáp Lightning. Magic Keyboard. Magic Mouse.  HDSD bảo hành điện tử 12 tháng ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `password` varchar(50) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `fullname`, `password`, `avatar`, `address`, `phone`) VALUES
(2, 'abong1', 'Nguyễn Hoàng Hải', '8d014dee20a374dc7ad97e4d9809829e', 'http://192.168.1.132/appbanhang/avatar/FB_IMG_16370620339021639143129777.jpg', 'Lào Cai', '0917339933'),
(3, 'abong2', '', '8d014dee20a374dc7ad97e4d9809829e', 'http://192.168.1.132/appbanhang/avatar/FB_IMG_16370620339021639131753699.jpg', '', '0917339937'),
(4, 'abong3', '', '8d014dee20a374dc7ad97e4d9809829e', 'http://192.168.1.132/appbanhang/avatar/FB_IMG_16370620339021639131753699.jpg', 'abong', '132313231'),
(5, 'abong', 'Nguyen Hoang Hai', '8d014dee20a374dc7ad97e4d9809829e', 'http://192.168.1.132/appbanhang/avatar/FB_IMG_16391435766861639148861971.jpg', 'Lao Cai', '0917339937'),
(6, 'abong4', '', '8d014dee20a374dc7ad97e4d9809829e', NULL, NULL, '132313'),
(7, 'abong5', '', '8d014dee20a374dc7ad97e4d9809829e', NULL, NULL, '132132'),
(8, 'abong12', 'Nguyen Hoang Hai', '8d014dee20a374dc7ad97e4d9809829e', 'http://192.168.1.132/appbanhang/avatar/FB_IMG_16370620339021639476716926.jpg', 'Lao Cai cityboi', '0917339933');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `image_ipad_library`
--
ALTER TABLE `image_ipad_library`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `image_iphone_library`
--
ALTER TABLE `image_iphone_library`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `image_mac_library`
--
ALTER TABLE `image_mac_library`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ipad`
--
ALTER TABLE `ipad`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `iphone`
--
ALTER TABLE `iphone`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mac`
--
ALTER TABLE `mac`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `image_ipad_library`
--
ALTER TABLE `image_ipad_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `image_iphone_library`
--
ALTER TABLE `image_iphone_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `image_mac_library`
--
ALTER TABLE `image_mac_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `ipad`
--
ALTER TABLE `ipad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `iphone`
--
ALTER TABLE `iphone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `mac`
--
ALTER TABLE `mac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 20, 2019 lúc 06:42 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `android`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `score` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`user_name`, `password`, `email`, `score`) VALUES
('admin', '123456', 'admin@gmail.com', '2000000'),
('ClearLove', 'abc123', 'clearlove@gmail.com', '2000000'),
('tattien', 'abc123', 'tattien.ptit@gmail.com', '18500000'),
('tientaitu', 'abc123', 'tattien.ptit.97@gmail.com', '1000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kqbd`
--

CREATE TABLE `kqbd` (
  `id` int(11) NOT NULL,
  `week` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `result` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kqbd`
--

INSERT INTO `kqbd` (`id`, `week`, `result`) VALUES
(17, '12', 'Thanh Hóa 3 - 2  Nam Định'),
(18, '12', 'Đà Nẵng 2 - 0  HCM'),
(19, '12', 'Viettel 3 - 3  Quảng Ninh'),
(20, '12', 'Bình Dương 1 - 0  Khánh Hòa'),
(21, '12', 'Gia Lai 0 - 0  Hà Nội'),
(22, '12', 'Hải Phòng 0 - 3  Quảng Nam'),
(23, '12', 'Sài Gòn 2 - 2  SL Nghệ An'),
(24, '13', 'Quảng Nam 1 - 2  Bình Dương'),
(25, '13', 'Hà Nội 2 - 0  Sài Gòn'),
(26, '13', 'Nam Định 2 - 1  Đà Nẵng'),
(27, '13', 'HCM 0 - 0  Thanh Hóa'),
(28, '13', 'Khánh Hòa 0 - 1  Viettel'),
(29, '13', 'SL Nghệ An 3 - 0  Gia Lai'),
(30, '13', 'Quảng Ninh 4 - 2  Hải Phòng'),
(31, '13', 'Quảng Nam 1 - 2  Becamex Binh Duong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newfeed`
--

CREATE TABLE `newfeed` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `pubDate` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newfeed`
--

INSERT INTO `newfeed` (`id`, `title`, `description`, `pubDate`) VALUES
(1, 'Messi: “Thật hài hước nếu Argentina bị loại ở vòng bảng Copa America”', '(Dân trí) - Phát biểu trước báo chí sau trận hòa Paraguay 1-1 ở bảng B Copa America 2019, Messi đã lên tiếng trấn an người hâm mộ và cho rằng không có chuyện Argentina bị loại ngay từ vòng bảng.', '20'),
(2, 'VFF bắt đầu đàm phán giữ chân “thầy Park” vào cuối tháng 6', '(Dân trí) - Hợp đồng hiện tại của HLV Park Hang Seo với VFF có thời hạn tới tháng 1 năm 2020. Tuy nhiên qua các thành công của vị chiến lược gia người Hàn Quốc, VFF đã quyết định đẩy sớm kế hoạch đàm phán giữ chân “thầy Park” vào ngay cuối tháng 6 này.', '20'),
(3, 'Chuyện trả lương cao cho thầy Park: Bao nhiêu mới là đủ?', '(Dân trí) - Câu chuyện VFF đàm phán gia hạn hợp đồng với HLV Park Hang Seo làm nóng mọi diễn đàn, dư luận và báo chí những ngày qua. Nhiều ý kiến cho rằng để có thể giữ chân được thầy Park, VFF cần có một mức lương thật cao, thậm chí là cao nhất trong lịch sử các thời HLV ngoại.', '20'),
(4, 'Đội bóng Pháp xác nhận Công Phượng sắp thử việc', '(Dân trí) - Đại diện CLB Clermont Foot 63 tại Giải hạng Nhì của Pháp khẳng định thông tin Công Phượng đến đội bóng này thử việc hoàn toàn chính xác. Dự kiến ngay sau khi hoàn tất thủ tục visa, chân sút Việt Nam sẽ sang Pháp để thử việc trong khoảng 1 tháng.', '20'),
(5, 'VTV chính thức sở hữu bản quyền truyền hình Euro 2020 tại Việt Nam', '(Dân trí) - Không như World Cup 2018 đến sát ngày mới công bố, đài truyền hình Việt Nam (VTV) vừa phát đi thông báo họ đã sở hữu bản quyền truyền thông, trở thành đơn vị phát sóng chính thức của VCK UEFA EURO 2020 tại Việt Nam.', '20'),
(6, 'Tiến Linh giúp Bình Dương thắng bán kết lượt đi AFC Cup', '(Dân trí) - Ở trận bán kết lượt đi AFC Cup khu vực Đông Nam Á, B.Bình Dương đã giành chiến thắng 1-0 trước PSM Makasar trong thế thiếu người. Tiền đạo vào sân thay người Tiến Linh đã ghi bàn duy nhất của trận đấu.', '19'),
(7, 'Thái Lan chi lương cực khủng lôi kéo HLV dự World Cup', '(Dân trí) - Tờ Siamsport cho biết LĐBĐ Thái Lan đã chuẩn bị mức lương rất lớn để mời gọi HLV Akira Nishino, người dẫn dắt đội tuyển Nhật Bản ở World Cup 2018.', '19'),
(8, 'Phan Văn Đức nối gót Đình Trọng sang Singapore chữa trị chấn thương', '(Dân trí) - Tiền vệ Phan Văn Đức sẽ sớm được đưa sang Singapore để chữa trị chấn thương trong ít ngày tới theo chia sẻ từ HLV Nguyễn Đức Thắng của CLB SL Nghệ An.', '19'),
(9, 'Thái Lan quyết đòi lại vị trí số 1 Đông Nam Á từ tay tuyển Việt Nam', '(Dân trí) - Phát biểu trên tờ Fox Sports, Chủ tịch LĐBĐ Thái Lan, Somyot Poompanmoung khẳng định muốn giành lại vị trí số 1 Đông Nam Á từ tay đội tuyển Việt Nam.', '19'),
(10, 'Xuân Trường đứng trước nguy cơ bị Buriram United thanh lý sớm', '(Dân trí) - 2 trận đấu liên tiếp gần đây nhất, tiền vệ Xuân Trường không được ra sân. Thậm chí nguy cơ Xuân Trường bị thanh lý sớm khi CLB Buriram United vừa mới chiêu mộ thành công tiền vệ người Philippines.', '19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblorder`
--

CREATE TABLE `tblorder` (
  `id` int(11) NOT NULL,
  `user_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `code` int(11) NOT NULL,
  `date` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblorder`
--

INSERT INTO `tblorder` (`id`, `user_name`, `code`, `date`) VALUES
(24, 'tattien', 53192, '01/06/2019'),
(25, 'tattien', 12345, '02/06/2019'),
(26, 'tattien', 99357, '02/06/2019'),
(27, 'tattien', 12345, '04/06/2019');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `win`
--

CREATE TABLE `win` (
  `user_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `win`
--

INSERT INTO `win` (`user_name`, `code`, `date`) VALUES
('tattien', '99357', '02/06/2019');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xsmb`
--

CREATE TABLE `xsmb` (
  `date` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `result` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `xsmb`
--

INSERT INTO `xsmb` (`date`, `result`) VALUES
('01062019', '68191 99702 85539 33753 18372 90180 53229 58582 07434 60098 2132 5066 5508 0200 9042 0580 0001 0485 6934 5086 925 455 954 63 32 23 11'),
('02062019', '99357 57275 70337 97286 74567 96750 40718 95681 72988 25525 7360 4968 9893 2610 6331 1507 1445 3804 4731 6787 145 709 030 04 30 92 73'),
('03062019', '31873 04482 97350 07952 68554 83819 06470 44762 01240 97661 0391 0192 6946 4859 4045 2060 3601 3061 6679 7293 403 830 845 49 27 36 89'),
('11062019', '92614 78683 19661 48233 12426 59975 96524 43386 58642 05166 5971 1695 7576 4166 6794 2842 0201 6701 4773 8707 848 399 699 57 58 55 52'),
('12062019', '34298 66905 74396 28987 76495 21191 26675 47023 85720 08707 1638 9267 0278 8854 1652 2828 6028 7394 7156 9381 749 358 699 40 56 58 65'),
('13062019', '69759 56608 41985 96681 57864 98050 38517 00934 99499 10734 8182 3166 0799 8724 7890 2353 5078 7163 6480 9905 846 629 583 22 16 93 18'),
('14062019', '39101 12949 00483 25293 91252 28436 22493 69686 88572 26361 6840 2548 4814 2494 8458 0809 8344 3982 3415 6171 723 479 959 13 11 81 00'),
('15062019', '16509 12231 32933 15508 89913 34295 73842 14449 12740 03632 9751 9457 5930 8627 0804 5105 1729 2739 3813 8266 115 433 641 43 51 54 78'),
('16062019', '02777 03098 57973 47366 23151 81241 87328 39439 72030 95744 0521 2128 4512 6921 9664 2244 1980 8361 5151 3863 898 410 543 39 37 62 83'),
('17062019', '74374 29054 70519 67354 61528 50548 88635 29078 32013 15011 1263 5208 1909 6923 5020 1965 3394 9295 4617 1851 097 881 633 58 00 99 41'),
('18062019', '47625 24130 57549 85886 08983 13551 35420 13492 77449 60923 4146 4483 1089 5673 2814 6912 3335 3683 9284 3920 776 740 596 56 90 76 16'),
('19062019', '29853 88266 35116 82733 19208 81297 27993 87142 90686 18990 4661 0076 9153 5327 7791 7167 1968 1478 5800 0175 787 279 455 45 21 58 89'),
('20062019', '68191 99702 85539 33753 18372 90180 53229 58582 07434 60098 2132 5066 5508 0200 9042 0580 0001 0485 6934 5086 925 455 954 63 32 23 11'),
('23042019', '61229 64831 00868 27719 81881 44597 54140 81218 08382 42866 1063 1175 0196 0033 6405 2895 6775 0923 8548 5912 458 651 973 30 90 52 01'),
('28052019', '96458 53626 01829 46134 45640 12224 49305 86166 10180 82222 8067 8465 9334 4441 5549 3444 6095 0686 9083 3976 811 504 784 43 72 73 02'),
('29052019', '19146 39201 03424 67397 41744 46873 37721 10967 26257 86737 7136 0695 8730 6993 4407 8675 3601 7633 7265 2937 402 253 030 81 30 48 94'),
('30052019', '47625 24130 57549 85886 08983 13551 35420 13492 77449 60923 4146 4483 1089 5673 2814 6912 3335 3683 9284 3920 776 740 596 56 90 76 16'),
('31052019', '79905 91614 38435 72383 38106 78679 66442 31373 15675 41276 6823 9037 0784 5567 0084 0743 8822 9657 3698 7939 212 827 536 77 09 45 06');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`user_name`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Chỉ mục cho bảng `kqbd`
--
ALTER TABLE `kqbd`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `newfeed`
--
ALTER TABLE `newfeed`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_name` (`user_name`);

--
-- Chỉ mục cho bảng `win`
--
ALTER TABLE `win`
  ADD PRIMARY KEY (`date`);

--
-- Chỉ mục cho bảng `xsmb`
--
ALTER TABLE `xsmb`
  ADD PRIMARY KEY (`date`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `kqbd`
--
ALTER TABLE `kqbd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `newfeed`
--
ALTER TABLE `newfeed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tblorder`
--
ALTER TABLE `tblorder`
  ADD CONSTRAINT `tblorder_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `account` (`user_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

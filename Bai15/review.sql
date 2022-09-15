-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 15, 2022 lúc 10:41 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `review`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhchon`
--

CREATE TABLE `binhchon` (
  `idBC` int(255) NOT NULL,
  `MoTa` varchar(255) NOT NULL,
  `idLT` int(255) NOT NULL,
  `SoLanChon` int(255) NOT NULL,
  `AnHien` int(1) NOT NULL,
  `ThuTu` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binhchon`
--

INSERT INTO `binhchon` (`idBC`, `MoTa`, `idLT`, `SoLanChon`, `AnHien`, `ThuTu`) VALUES
(1, 'Bạn nghĩ ute.com có giúp bạn học tập tốt hơn không ?', 1, 14, 1, 0),
(2, 'Bạn dự đoán Hoàng Long có trở thành chủ tịch nước năm nay không?', 1, 2, 1, 0),
(3, 'Bạn thích là developer hay coder ?', 1, 2, 1, 0),
(4, 'Bạn sẽ lấy vợ đẻ con khi nào ?', 9, 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuongan`
--

CREATE TABLE `phuongan` (
  `idPA` int(255) NOT NULL,
  `MoTa` varchar(255) NOT NULL,
  `SoLanChon` int(255) NOT NULL,
  `idBC` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phuongan`
--

INSERT INTO `phuongan` (`idPA`, `MoTa`, `SoLanChon`, `idBC`) VALUES
(1, 'Là nơi để sinh viên tự học CNTT xịn nhất', 23, 1),
(2, 'Nội dung tẻ nhạt', 6, 1),
(3, 'Làm công chức nước nhà', 0, 3),
(4, 'Làm cho công ty tư nhân', 0, 3),
(5, 'Làm cho cơ quan nghiên cứu', 0, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhchon`
--
ALTER TABLE `binhchon`
  ADD PRIMARY KEY (`idBC`);

--
-- Chỉ mục cho bảng `phuongan`
--
ALTER TABLE `phuongan`
  ADD PRIMARY KEY (`idPA`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhchon`
--
ALTER TABLE `binhchon`
  MODIFY `idBC` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `phuongan`
--
ALTER TABLE `phuongan`
  MODIFY `idPA` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

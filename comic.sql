-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 07, 2018 lúc 04:38 SA
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `comic`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `author`
--

CREATE TABLE `author` (
  `auth_id` int(255) NOT NULL,
  `auth_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_info` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `author`
--

INSERT INTO `author` (`auth_id`, `auth_name`, `auth_info`) VALUES
(1, 'Lenin', 'Nhà nghèo nhưng học rất giỏi. Biết cố gắng, viết văn hay'),
(2, 'Hồ Chí Minh', 'Nhà nghèo nhưng học rất giỏi. Biết cố gắng, viết văn hay'),
(4, 'Lê Anh Tuấn', 'Đẹp trai. Nhà nghèo nhưng học rất giỏi. Biết cố gắng, viết văn hay'),
(5, 'Nguyễn Gia Tuệ', 'Vừa lùn vừa xấu nhưng được cái học giỏi...'),
(7, 'sdas', 'asdad');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `cat_id` int(255) NOT NULL,
  `cat_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, '18++'),
(2, 'Truyện Hài'),
(3, 'Truyện Vui'),
(4, 'Truyện Vova'),
(5, 'Tiểu Thuyết '),
(6, 'Truyện Ngôn Tình');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chap`
--

CREATE TABLE `chap` (
  `chap_id` int(255) NOT NULL,
  `chap_num` int(255) NOT NULL,
  `chap_content` text COLLATE utf8_unicode_ci NOT NULL,
  `chap_view` int(255) NOT NULL DEFAULT '5',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comic_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chap`
--

INSERT INTO `chap` (`chap_id`, `chap_num`, `chap_content`, `chap_view`, `created_at`, `comic_id`) VALUES
(1, 1, 'localhost:8008/phpmyadmin/tbl_change.php?db=comic&table=chap&token=73643298b8599e30b85177554a8afce8localhost:8008/phpmyadmin/tbl_change.php?db=comic&table=chap&token=73643298b8599e30b85177554a8afce8', 5, '2018-04-05 03:10:44', 1),
(2, 2, 'localhost:8008/phpmyadmin/tbl_change.php?db=comic&table=chap&token=73643298b8599e30b85177554a8afce8localhost:8008/phpmyadmin/tbl_change.php?db=comic&table=chap&token=73643298b8599e30b85177554a8afce8', 5, '2018-04-05 03:10:44', 2),
(3, 3, '<p>&aacute;d&aacute;;&ograve;a;djgldsm</p>\r\n', 5, '2018-04-05 09:59:49', 2),
(4, 1, '<p><img alt=\"\" src=\"/CKFinderJava/userfiles/images/dep.jpg\" style=\"height:1000px; width:1600px\" />fffffffffffffffffffffffffffffffffffffffffffffff</p>\r\n', 5, '2018-04-05 10:16:03', 2),
(5, 2, '<p>bsd ks vks dvjsd vk sdov sd vsd vsjd v&iacute;d v&iacute; vd vsd vsd vids vịds vd&iacute;</p>\r\n', 5, '2018-04-05 15:30:51', 1),
(6, 23, '<p>34234234</p>\r\n', 5, '2018-04-05 15:38:54', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comic`
--

CREATE TABLE `comic` (
  `comic_id` int(255) NOT NULL,
  `comic_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comic_preview` text COLLATE utf8_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comic_view` int(255) NOT NULL DEFAULT '0',
  `picture` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(255) NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comic`
--

INSERT INTO `comic` (`comic_id`, `comic_name`, `comic_preview`, `create_at`, `comic_view`, `picture`, `user_id`, `age`) VALUES
(1, 'truyện 12', '<p>truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1</p>\r\n', '2018-04-01 03:27:14', 1, 'art-design-night-moon-house-fields-trees-23052232332998.jpg', 1, 17),
(2, 'truyện 2', '<p>truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1</p>\r\n', '2018-04-01 03:27:14', 2, 'autumn-leaves-23061085650419.jpg', 1, 17),
(3, 'truyện 3', '<p>truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1</p>\r\n', '2018-04-01 03:27:14', 3, 'autumn-leaves (1)-23070141168333.jpg', 1, 19),
(4, 'truyện 4', '<p>truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1</p>\r\n', '2018-04-01 03:27:14', 4, 'autumn-nature-23081366057699.jpg', 1, 18),
(5, 'truyện 5', '<p>truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1</p>\r\n', '2018-04-01 03:27:14', 5, 'butterfly-23095338830795.jpg', 1, 17),
(6, 'truyện 6', '<p>truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1</p>\r\n', '2018-04-01 03:27:14', 6, 'deverloper-23105904644185.jpeg', 1, 17),
(7, 'truyện 7', '<p>truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1</p>\r\n', '2018-04-01 03:27:14', 7, 'fall-forest (1)-23113913548726.jpg', 1, 19),
(8, 'truyện 8', '<p>truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1</p>\r\n', '2018-04-01 03:27:14', 8, 'grass-23121739617057.jpg', 1, 18),
(9, 'Truyện 18+', '<p>Le anh tuan da them 1 truyen moi</p>\r\n', '2018-04-03 14:57:41', 0, 'hipster-mountain-23132373906665.jpg', 3, 18),
(10, 'addadadad', '<p>addadadadaddadadad</p>\r\n', '2018-04-03 15:39:34', 0, 'Lamborghini-20340088840182.jpg', 3, 23),
(11, '123', '<p>123123</p>\r\n', '2018-04-03 15:40:42', 0, 'lightning-23141158764935.jpg', 3, 12),
(12, 'new comic', '<p>&agrave;gjklklf</p>\r\n', '2018-04-05 15:52:18', 0, 'autumn-landscape.jpg', 3, 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comic-author`
--

CREATE TABLE `comic-author` (
  `id` int(255) NOT NULL,
  `id_comic` int(255) NOT NULL,
  `id_author` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comic-cat`
--

CREATE TABLE `comic-cat` (
  `id` int(255) NOT NULL,
  `id_comic` int(255) NOT NULL,
  `id_cat` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `cmt_id` int(255) NOT NULL,
  `cmt_content` text COLLATE utf8_unicode_ci NOT NULL,
  `id_chap` int(255) NOT NULL,
  `id_user` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `img_id` int(255) NOT NULL,
  `img_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chap_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(255) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ADMIN'),
(2, 'QUANLY');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(255) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `role` int(2) NOT NULL,
  `enable` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `birthday`, `role`, `enable`) VALUES
(1, 'TueNhieu', 'e10adc3949ba59abbe56e057f20f883e', '1996-02-06', 1, 1),
(3, 'username', 'e10adc3949ba59abbe56e057f20f883e', '1996-01-28', 1, 1),
(4, 'tuanla', 'e10adc3949ba59abbe56e057f20f883e', '1996-04-28', 2, 1),
(8, '123', '202cb962ac59075b964b07152d234b70', '2018-04-03', 0, 1),
(9, '3433', '6c8349cc7260ae62e3b1396831a8398f', '2018-04-13', 0, 1),
(10, '333', '310dcbbf4cce62f762a2aaa148d556bd', '2018-03-30', 2, 1),
(11, '123456', '202cb962ac59075b964b07152d234b70', '2018-03-27', 1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`auth_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `chap`
--
ALTER TABLE `chap`
  ADD PRIMARY KEY (`chap_id`);

--
-- Chỉ mục cho bảng `comic`
--
ALTER TABLE `comic`
  ADD PRIMARY KEY (`comic_id`);

--
-- Chỉ mục cho bảng `comic-author`
--
ALTER TABLE `comic-author`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comic-cat`
--
ALTER TABLE `comic-cat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cmt_id`);

--
-- Chỉ mục cho bảng `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`img_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `author`
--
ALTER TABLE `author`
  MODIFY `auth_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `chap`
--
ALTER TABLE `chap`
  MODIFY `chap_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `comic`
--
ALTER TABLE `comic`
  MODIFY `comic_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT cho bảng `comic-author`
--
ALTER TABLE `comic-author`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `comic-cat`
--
ALTER TABLE `comic-cat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `cmt_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `image`
--
ALTER TABLE `image`
  MODIFY `img_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

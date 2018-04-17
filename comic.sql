-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 17, 2018 lúc 06:39 SA
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
(2, 'Hồ Chí Minh', 'Một nhà văn, nhà thơ kiệt suất của nước Việt Nam'),
(3, 'Nguyễn Gia Tuệ', 'Vừa lùn vừa xấu nhưng được cái học giỏi...'),
(11, 'Aoyama Yoshimasa', 'Tác giả bộ truyện tranh lừng danh CONAN');

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
(3, 'Truyện Kinh Dị'),
(5, 'Tiểu Thuyết '),
(6, 'Truyện Ngôn Tình'),
(7, 'Truyện thiếu nhi'),
(8, 'Danh Mục Mới');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chap`
--

CREATE TABLE `chap` (
  `chap_id` int(255) NOT NULL,
  `chap_num` int(255) NOT NULL,
  `chap_view` int(255) NOT NULL DEFAULT '5',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comic_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chap`
--

INSERT INTO `chap` (`chap_id`, `chap_num`, `chap_view`, `created_at`, `comic_id`) VALUES
(1, 1, 5, '2018-04-05 03:10:44', 1),
(2, 2, 5, '2018-04-05 03:10:44', 2),
(3, 3, 5, '2018-04-05 09:59:49', 2),
(4, 1, 5, '2018-04-05 10:16:03', 2),
(5, 2, 5, '2018-04-05 15:30:51', 1),
(6, 23, 5, '2018-04-05 15:38:54', 1),
(7, 4, 5, '2018-04-07 05:57:26', 2),
(8, 5, 5, '2018-04-07 06:29:19', 2),
(9, 6, 5, '2018-04-07 06:34:16', 2),
(10, 26, 5, '2018-04-08 14:50:33', 1),
(11, 27, 5, '2018-04-08 17:03:16', 12),
(13, 7, 5, '2018-04-13 16:08:00', 2);

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
(1, 'Truyện kinh dị 1', '<p>truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1</p>\r\n', '2018-04-01 03:27:14', 2, 'fantasy-landscape-35837600113408.jpg', 1, 17),
(2, 'Truyện kinh dị 2', '<h1><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>H&agrave;ng trăm năm trước, ở b&ecirc;n xứ t&agrave;u c&oacute; thịnh hai m&ocirc;n ph&aacute;i lớn mạnh về thuật bỏ b&ugrave;a l&agrave; ph&aacute;i Lỗ Ban v&agrave; ph&aacute;i Mao Sơn. Người xưa th&igrave; thường nghi kị hai ph&aacute;i n&agrave;y v&agrave; xếp họ v&agrave;o trong những loại m&ocirc;n ph&aacute;i t&agrave; ma ngoại đạo. V&agrave; hiếm khi những người thuộc m&ocirc;n ph&aacute;i n&agrave;y lộ diện ra c&otilde;i đời. Thậm ch&iacute; bẵng đi một thời gian, người ta c&ograve;n cho rằng hai ph&aacute;i n&agrave;y đ&atilde; tuyệt t&iacute;ch, chỉ c&ograve;n l&agrave; hư danh. V&agrave; rằng hai ph&aacute;i kiệt mạch đệ tử, n&ecirc;n đ&atilde; sớm bị thất truyền.</strong></span></span></h1>\r\n', '2018-04-01 03:27:14', 63, 'lakein-the-morning-fog-35849436691758.jpg', 1, 17),
(3, 'Truyện ngôn tình 1', '<p>truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1</p>\r\n', '2018-04-01 03:27:14', 23, 'snowlake-35917002766510.jpg', 1, 19),
(4, 'truyện 4', '<p>truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1</p>\r\n', '2018-04-01 03:27:14', 4, 'flower-in-the-rain-39970500558720.jpg', 1, 18),
(5, 'truyện 5', '<p>truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1</p>\r\n', '2018-04-01 03:27:14', 5, 'flower=hd-39958715725716.jpg', 1, 17),
(6, 'truyện 6', '<p>truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1</p>\r\n', '2018-04-01 03:27:14', 10, 'fantasy-landscape-39931948090813.jpg', 1, 17),
(7, 'truyện 7', '<p>truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1</p>\r\n', '2018-04-01 03:27:14', 22, 'fall-landscape-39889155345692.jpg', 1, 19),
(8, 'truyện 8', '<p>truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1truyện 1</p>\r\n', '2018-04-01 03:27:14', 19, 'fall-landscape (1)-39874702953006.jpg', 1, 18),
(10, 'addadadad', '<p>addadadadaddadadad</p>\r\n', '2018-04-03 15:39:34', 0, 'forest-landscape-in-spring-40018613675452.jpg', 3, 23),
(11, '123', '<p>123123</p>\r\n', '2018-04-03 15:40:42', 0, 'green-leaf-40030636627161.jpg', 3, 12),
(12, 'new comic', '<p>&agrave;gjklklf</p>\r\n', '2018-04-05 15:52:18', 0, 'lakein-the-morning-fog-40042796400379.jpg', 3, 12),
(13, 'Thám tử Conan', '<p>Truyện c&oacute; nguồn gốc từ Nhật bản.</p>\r\n', '2018-04-08 16:42:12', 0, 'beautiful-landscape-40053413641489.jpg', 3, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comic_author`
--

CREATE TABLE `comic_author` (
  `id` int(255) NOT NULL,
  `id_comic` int(255) NOT NULL,
  `id_auth` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `comic_author`
--

INSERT INTO `comic_author` (`id`, `id_comic`, `id_auth`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 3),
(6, 6, 3),
(7, 7, 3),
(8, 8, 4),
(9, 9, 4),
(11, 12, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comic_cat`
--

CREATE TABLE `comic_cat` (
  `id` int(255) NOT NULL,
  `id_comic` int(255) NOT NULL,
  `id_cat` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `comic_cat`
--

INSERT INTO `comic_cat` (`id`, `id_comic`, `id_cat`) VALUES
(1, 2, 3),
(3, 3, 2),
(4, 4, 2),
(5, 5, 3),
(6, 6, 3),
(7, 7, 4),
(8, 8, 4),
(9, 9, 5),
(10, 10, 5),
(12, 1, 0),
(13, 2, 0),
(14, 3, 0),
(16, 2, 2),
(17, 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `cmt_id` int(255) NOT NULL,
  `cmt_content` text COLLATE utf8_unicode_ci NOT NULL,
  `id_chap` int(255) NOT NULL,
  `id_comic` int(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`cmt_id`, `cmt_content`, `id_chap`, `id_comic`, `create_at`, `id_user`) VALUES
(52, 'Bình luận mới nhất', 2, 2, '2018-04-15 01:06:37', 1),
(54, 'Bình luận mới nhất', 7, 2, '2018-04-15 01:07:25', 1),
(55, 'Nguyễn Gia Tuệ Đã Bình Luận', 3, 2, '2018-04-15 03:23:33', 1),
(56, 'adâd', 3, 2, '2018-04-15 03:23:38', 1),
(57, 'Bình Luận', 4, 2, '2018-04-15 04:16:05', 1),
(58, 'Tuệ Nguyễn', 9, 2, '2018-04-15 04:20:36', 1),
(59, 'Bình luận mới nhất', 4, 2, '2018-04-15 04:28:39', 1),
(60, 'a', 4, 2, '2018-04-15 04:28:41', 1),
(61, 'Bình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhất', 4, 2, '2018-04-15 04:29:05', 1),
(62, 'Bình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhấtBình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhấtBình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhấtBình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhấtBình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhấtBình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhất Bình luận mới nhất', 4, 2, '2018-04-15 04:29:16', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `img_id` int(255) NOT NULL,
  `img_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chap_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `image`
--

INSERT INTO `image` (`img_id`, `img_name`, `chap_id`) VALUES
(1, 'dep-29318832237865.jpg', 0),
(2, 'bridges-in-night-30306298687102.jpg', 1),
(3, 'dandelions-flower-30306382761876.jpg', 1),
(6, 'fall-landscape (1)-30306715726142.jpg', 1),
(7, 'fall-landscape-30306794477816.jpg', 1),
(9, 'depth-of-field-34572406924040.jpg', 1),
(10, 'apples-and-bottles-37281820092356.jpg', 0),
(11, 'autumn-landscape-37281852049730.jpg', 0),
(12, 'autumn-park-lonely-tree-37281905474439.jpg', 0),
(13, 'autunb-park-37281950231402.jpg', 0),
(14, 'beautiful-landscape-37282040261598.jpg', 0),
(15, 'bridges-in-night-37282116230975.jpg', 0),
(16, 'dandelions-flower-37282150901953.jpg', 0),
(17, 'dep-37282206233863.jpg', 0),
(18, 'dandelions-flower-37297420886725.jpg', 11),
(19, 'dep-37297493829752.jpg', 11),
(20, 'depth-of-field-37297561645092.jpg', 11),
(21, 'fall-landscape (1)-37297614139666.jpg', 11),
(22, 'fall-landscape-37297658000202.jpg', 11),
(23, 'fantasy-landscape-37297693229260.jpg', 11),
(24, 'flower=hd-37297726425249.jpg', 11),
(25, 'flower-in-the-rain-37297792847521.jpg', 11),
(26, 'apples-and-bottles-50955563018666.jpg', 4),
(27, 'autumn-landscape-50955752056320.jpg', 4),
(28, 'autumn-park-lonely-tree-50955806400426.jpg', 4),
(29, 'autunb-park-50955839537920.jpg', 4),
(30, 'beautiful-landscape-50955881720746.jpg', 4),
(31, 'bridges-in-night-50955928067840.jpg', 4),
(32, 'dandelions-flower-50955970234453.jpg', 4),
(33, 'dep-50956016701866.jpg', 4),
(34, 'fall-landscape-50972999913813.jpg', 2),
(35, 'fantasy-landscape-50973040791466.jpg', 2),
(36, 'flower=hd-50973075769600.jpg', 2),
(37, 'flower-in-the-rain-50973119751680.jpg', 2),
(38, 'forest-50973152961280.jpg', 2),
(39, 'forest-landscape-in-spring-50973197203626.jpg', 2),
(40, 'green-leaf-50973249251840.jpg', 2),
(41, 'japan-sakura-cherry-blossoms-50973330030933.jpg', 2),
(42, 'lakein-the-morning-fog-50973396465066.jpg', 2),
(43, 'forest-50999368571306.jpg', 3),
(44, 'forest-landscape-in-spring-50999419824213.jpg', 3),
(45, 'green-leaf-50999466292053.jpg', 3),
(46, 'japan-sakura-cherry-blossoms-50999542803626.jpg', 3),
(47, 'lakein-the-morning-fog-50999621192106.jpg', 3),
(48, 'lake-in-winter-50999665524053.jpg', 3),
(49, 'landscape-50999731936000.jpg', 3),
(50, 'landscape-hd-50999765202346.jpg', 3),
(51, 'latvian autumn-50999807945813.jpg', 3),
(52, 'mountain-landscape-50999842639360.jpg', 3),
(53, 'art-design-night-moon-house-fields-trees-51028242789546.jpg', 7),
(54, 'autumn-leaves-51028336745813.jpg', 7),
(55, 'autumn-leaves (1)-51028434866773.jpg', 7),
(56, 'autumn-nature-51028514224213.jpg', 7),
(57, 'butterfly-51028569142613.jpg', 7),
(58, 'cool-background-51028666955520.jpg', 7),
(59, 'deverloper-51028733235626.jpeg', 7),
(60, 'fall-forest (1)-51028841793706.jpg', 7),
(61, 'grass-51029220948480.jpg', 7),
(62, 'deverloper-51045487788800.jpeg', 8),
(63, 'fall-forest (1)-51045528422826.jpg', 8),
(64, 'grass-51045572708266.jpg', 8),
(65, 'hipster-mountain-51045628096000.jpg', 8),
(66, 'icelands_ring_road-51045661303040.jpg', 8),
(67, 'lightning-51045694451200.jpg', 8),
(68, 'mount-fuji-51045738702933.jpg', 8),
(69, 'railroad-51045783104426.jpg', 8),
(70, 'spiderwebs-51045860606720.jpg', 8),
(71, 'summer-landscape (3)-51045927084373.jpg', 8),
(72, 'sunbeams-51045960143786.jpg', 8),
(73, 'sunset-landscape-51046002712320.jpg', 8),
(74, 'hipster-mountain-51068778117546.jpg', 9),
(75, 'icelands_ring_road-51068817261653.jpg', 9),
(76, 'lightning-51068862033066.jpg', 9),
(77, 'mount-fuji-51068932613546.jpg', 9),
(78, 'railroad-51069018920960.jpg', 9),
(79, 'spiderwebs-51069107582293.jpg', 9),
(80, 'summer-landscape (3)-51069172057173.jpg', 9),
(81, 'sunbeams-51069238557866.jpg', 9),
(82, 'sunset-landscape-51069362126933.jpg', 9),
(83, 'wooden surface-51069439624960.jpg', 9),
(84, 'pindex2-14881564052293.png', 0),
(85, 'category-15483668189725.png', 0),
(86, 'chap1-15483703383766.png', 0),
(87, 'chap2-15483736548580.png', 0),
(88, 'comment-15483769697608.png', 0),
(89, 'desk-15483802981889.png', 0),
(90, 'detail-15483836105743.png', 0),
(91, 'Lamborghini-15483869374664.jpg', 0),
(92, 'pindex-15483913727963.png', 0),
(93, 'pindex2-15483947167124.png', 0),
(94, 'pindex2-16012833406222.png', 9);

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
(2, 'QUANLY'),
(3, 'NGUOIDUNG');

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
(1, 'Username', 'e10adc3949ba59abbe56e057f20f883e', '1996-01-28', 2, 1),
(2, 'GiaTue', 'e10adc3949ba59abbe56e057f20f883e', '1996-10-10', 1, 1),
(3, 'tueng', 'e10adc3949ba59abbe56e057f20f883e', '1996-10-10', 2, 1),
(4, 'QuanLy', 'e10adc3949ba59abbe56e057f20f883e', '1996-04-28', 2, 1),
(5, 'AdminWebComic', 'e10adc3949ba59abbe56e057f20f883e', '1996-04-20', 2, 1),
(6, '123456', '202cb962ac59075b964b07152d234b70', '2018-03-27', 1, 1);

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
-- Chỉ mục cho bảng `comic_author`
--
ALTER TABLE `comic_author`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comic_cat`
--
ALTER TABLE `comic_cat`
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
  MODIFY `auth_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `chap`
--
ALTER TABLE `chap`
  MODIFY `chap_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT cho bảng `comic`
--
ALTER TABLE `comic`
  MODIFY `comic_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT cho bảng `comic_author`
--
ALTER TABLE `comic_author`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT cho bảng `comic_cat`
--
ALTER TABLE `comic_cat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `cmt_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT cho bảng `image`
--
ALTER TABLE `image`
  MODIFY `img_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

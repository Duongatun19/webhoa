-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 22, 2022 lúc 11:32 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vpp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `albumafter`
--

CREATE TABLE `albumafter` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `albumafter`
--

INSERT INTO `albumafter` (`id`, `name`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hoàn hảo sau khi niềng răng', NULL, '/uploads/images/video--1872883371.jpg', 1, '2022-04-16 02:03:54', '2022-04-16 02:03:54'),
(2, 'Hoàn hảo sau khi niềng răng', NULL, '/uploads/images/video--1815830335.png', 1, '2022-04-16 02:03:54', '2022-04-16 02:03:54'),
(3, 'Hoàn hảo sau khi niềng răng', NULL, '/uploads/images/video--706408372.jpg', 1, '2022-04-16 02:03:54', '2022-04-16 02:03:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `image`, `title`, `description`, `status`, `link`, `created_at`, `updated_at`) VALUES
(1, '/uploads/images/10557534981c51f2fd1deef9b0a0ff-300x199.jpg', NULL, NULL, NULL, NULL, '2020-01-18 11:10:33', '2020-01-18 11:10:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `image`, `title`, `description`, `status`, `link`, `created_at`, `updated_at`) VALUES
(1, '/uploads/images/banner-trang-chu-1992509595.jpg', NULL, NULL, 1, NULL, '2022-09-20 08:13:49', '2022-09-20 08:13:49'),
(2, '/uploads/images/banner-trang-chu-1582384635.jpg', NULL, NULL, 1, NULL, '2022-09-20 08:13:49', '2022-09-20 08:13:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_ads`
--

CREATE TABLE `banner_ads` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner_ads`
--

INSERT INTO `banner_ads` (`id`, `name`, `content`, `description`, `slug`, `status`, `image`, `created_at`, `updated_at`) VALUES
(4, 'http://127.0.0.1:8000/', '[{\"lang_code\":\"vi\",\"content\":null}]', '[{\"lang_code\":\"vi\",\"content\":null}]', 'http1270018000', 1, '/uploads/images/banner--922177840.jpg', '2022-04-12 21:06:22', '2022-04-12 21:06:22'),
(5, 'http://127.0.0.1:8000/', '[{\"lang_code\":\"vi\",\"content\":null}]', '[{\"lang_code\":\"vi\",\"content\":null}]', 'http1270018000', 1, '/uploads/images/banner--1978767668.jpg', '2022-04-12 21:06:29', '2022-04-12 21:06:29'),
(6, 'http://127.0.0.1:8000/', '[{\"lang_code\":\"vi\",\"content\":null}]', '[{\"lang_code\":\"vi\",\"content\":null}]', 'http1270018000', 1, '/uploads/images/banner--1343600450.jpg', '2022-04-12 21:06:35', '2022-04-12 21:06:35'),
(7, 'http://127.0.0.1:8000/', '[{\"lang_code\":\"vi\",\"content\":null}]', '[{\"lang_code\":\"vi\",\"content\":null}]', 'http1270018000', 1, '/uploads/images/banner--521441172.jpg', '2022-04-12 21:06:42', '2022-04-12 21:06:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(11) UNSIGNED NOT NULL,
  `code_bill` varchar(255) DEFAULT NULL,
  `code_customer` varchar(255) DEFAULT NULL,
  `total_money` int(11) DEFAULT 0,
  `statu` int(11) DEFAULT 0 COMMENT '0-chờ kiêm 1-đã thanh toán 2-đang vận chuyển 3-hoàn tất 4-đơn hàng đã hủy',
  `note` text DEFAULT NULL,
  `promotion` varchar(255) DEFAULT NULL,
  `transport` varchar(255) DEFAULT NULL,
  `transport_price` int(11) NOT NULL DEFAULT 0,
  `cus_name` varchar(255) DEFAULT NULL,
  `cus_phone` varchar(255) DEFAULT NULL,
  `cus_email` varchar(255) DEFAULT NULL,
  `cus_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `code_bill`, `code_customer`, `total_money`, `statu`, `note`, `promotion`, `transport`, `transport_price`, `cus_name`, `cus_phone`, `cus_email`, `cus_address`, `created_at`, `updated_at`) VALUES
(2, '6265006', '0', NULL, 0, 'ac', NULL, NULL, 0, 'Lê Anh', '0373631368', NULL, 'Uy bắc, quảng ngọc, quảng xương, thanh hóa', '2021-12-24 09:13:12', '2021-12-24 09:13:12'),
(7, '1175023483', '0', NULL, 1, 'nhanh nhé', NULL, NULL, 0, 'Máy tính', '0373631368', NULL, 'Uy bắc, quảng ngọc, quảng xương, thanh hóa', '2022-03-06 11:15:44', '2022-03-06 11:16:09'),
(17, '2017155507', '0', NULL, 1, 'aa', NULL, NULL, 0, 'Lê Anh', '123123', NULL, '12 Triều khúc', '2022-03-06 11:23:38', '2022-03-06 11:23:51'),
(18, '1820576917', '0', NULL, 0, 'fadfa', NULL, NULL, 0, 'Lê Anhấda', 'aa', NULL, '12 Triều khúc', '2022-03-06 11:25:58', '2022-03-06 11:25:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `code_bill` varchar(255) DEFAULT NULL,
  `code_product` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `images` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `code_bill`, `code_product`, `qty`, `name`, `price`, `discount`, `images`, `created_at`, `updated_at`) VALUES
(1, '6265006', '5', 1, 'Đá hoa cương đẹp màu vàng', 1800000, NULL, '/uploads/images/da-hoa-cuong-dep-mau-vang-4471667.jpg', '2021-12-24 09:13:12', '2021-12-24 09:13:12'),
(2, '1175023483', '1', 5, '[{\"lang_code\":\"vi\",\"content\":\"Dell Inspiron 5447 | i7 4510U | RAM 4GB |HDD 500GB\"}]', 9000000, NULL, '/uploads/images/san-pham-628152482.jpg', '2022-03-06 11:15:44', '2022-03-06 11:15:44'),
(3, '2017155507', '1', 1, 'Dell Inspiron 5447 | i7 4510U | RAM 4GB |HDD 500GB', 9000000, NULL, '/uploads/images/san-pham-628152482.jpg', '2022-03-06 11:23:38', '2022-03-06 11:23:38'),
(4, '2017155507', '2', 1, 'Dell inspiron N5559 | Core i5-6200U | Ram 4G | Ổ 500GB', 8000000, NULL, '/uploads/images/san-pham-400270873.jpg', '2022-03-06 11:23:38', '2022-03-06 11:23:38'),
(5, '1820576917', '1', 1, 'Dell Inspiron 5447 | i7 4510U | RAM 4GB |HDD 500GB', 9000000, NULL, '/uploads/images/san-pham-628152482.jpg', '2022-03-06 11:25:58', '2022-03-06 11:25:58'),
(6, '1820576917', '2', 1, 'Dell inspiron N5559 | Core i5-6200U | Ram 4G | Ổ 500GB', 8000000, NULL, '/uploads/images/san-pham-400270873.jpg', '2022-03-06 11:25:58', '2022-03-06 11:25:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `type_news` varchar(255) DEFAULT NULL,
  `home_status` int(2) DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `cate_product` int(11) DEFAULT NULL,
  `type_cate` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `quiz_id`, `language`, `title`, `content`, `description`, `slug`, `status`, `type_news`, `home_status`, `image`, `author`, `category`, `cate_product`, `type_cate`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, '[{\"lang_code\":\"vi\",\"content\":\"M\\u00e1y C\\u1eaft Kh\\u1eafc Laser Ch\\u1ea5t L\\u01b0\\u1ee3ng Gi\\u00e1 T\\u1ed1t\"}]', '[{\"lang_code\":\"vi\",\"content\":\"<p>T&igrave;m mua m&aacute;y c\\u1eaft kh\\u1eafc laser \\u0111\\u1ec3 \\u0111\\u1ea7u t\\u01b0 kinh doanh trong ng&agrave;nh gia c&ocirc;ng c\\u01a1 kh&iacute;, khi\\u1ebfn b\\u1ea1n ph\\u1ea3i b\\u0103n kho\\u0103n suy ngh\\u0129 nh\\u1eefng v\\u1ea5n \\u0111\\u1ec1 nh\\u01b0:<strong>&nbsp;mua m&aacute;y c\\u1eaft kh\\u1eafc laser \\u1edf \\u0111&acirc;u ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t<\\/strong>,&nbsp;<strong>gi&aacute; m&aacute;y c\\u1eaft kh\\u1eafc laser bao nhi&ecirc;u<\\/strong>,&nbsp;<strong>\\u0111\\u1ecba ch\\u1ec9 b&aacute;n m&aacute;y c\\u1eaft kh\\u1eafc laser<\\/strong>&nbsp;uy t&iacute;n c&oacute; ch&iacute;nh s&aacute;ch b\\u1ea3o h&agrave;nh t\\u1ed1t, chuy\\u1ec3n giao c&ocirc;ng ngh\\u1ec7 t\\u1eadn t&igrave;nh&hellip;. h&atilde;y \\u0111\\u1ebfn v\\u1edbi c&ocirc;ng ty V\\u01b0\\u01a1ng Ph&aacute;t Digital ch&uacute;ng t&ocirc;i. C&ocirc;ng ty ch&uacute;ng t&ocirc;i chuy&ecirc;n ph&acirc;n ph\\u1ed1i c&aacute;c d&ograve;ng s\\u1ea3n ph\\u1ea9m v\\u1ec1&nbsp;<strong>m&aacute;y c\\u1eaft kh\\u1eafc laser<\\/strong>&nbsp;v\\u1edbi nh\\u1eefng m\\u1eabu d&ograve;ng m&aacute;y m\\u1edbi nh\\u1ea5t, m&aacute;y laser v\\u1eadn h&agrave;nh \\u1ed5n \\u0111\\u1ecbnh ch\\u1ea5t l\\u01b0\\u1ee3ng v&agrave; gi&aacute; c\\u1ea3 lu&ocirc;n lu&ocirc;n h\\u1ee3p l&iacute; c&ugrave;ng v\\u1edbi ch&iacute;nh s&aacute;ch b\\u1ea3o h&agrave;nh, chuy\\u1ec3n giao c&ocirc;ng ngh\\u1ec7 t\\u1ed1t nh\\u1ea5t cho kh&aacute;ch h&agrave;ng.<\\/p>\\n<p>Hi\\u1ec7n nay tr&ecirc;n th\\u1ecb tr\\u01b0\\u1eddng c&oacute; nhi\\u1ec1u lo\\u1ea1i&nbsp;<strong>m&aacute;y c\\u1eaft kh\\u1eafc laser<\\/strong>&nbsp;khi\\u1ebfn b\\u1ea1n ph&acirc;n v&acirc;n kh&ocirc;ng bi\\u1ebft l\\u1ef1a ch\\u1ecdn d&ograve;ng m&aacute;y n&agrave;o cho ph&ugrave; h\\u1ee3p v\\u1edbi m&ocirc; h&igrave;nh kinh doanh c\\u1ee7a b\\u1ea1n. Sau \\u0111&acirc;y V\\u01b0\\u01a1ng Ph&aacute;t Digital ch&uacute;ng t&ocirc;i xin gi\\u1edbi thi\\u1ec7u t\\u1edbi b\\u1ea1n nh\\u1eefng d&ograve;ng s\\u1ea3n ph\\u1ea9m&nbsp;<strong>m&aacute;y c\\u1eaft kh\\u1eafc laser ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t<\\/strong>&nbsp;nh\\u1ea5t tr&ecirc;n th\\u1ecb tr\\u01b0\\u1eddng.<\\/p>\\n<h2>M&aacute;y c\\u1eaft kh\\u1eafc laser kim lo\\u1ea1i fiber<\\/h2>\\n<p><img class=\\\"aligncenter wp-image-200 size-full lazy-load-active\\\" src=\\\"http:\\/\\/vuongphatdigital.vn\\/wp-content\\/uploads\\/2018\\/12\\/May-cat-Laser-fiber-xql-3015-500W-1.png\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" srcset=\\\"http:\\/\\/vuongphatdigital.vn\\/wp-content\\/uploads\\/2018\\/12\\/May-cat-Laser-fiber-xql-3015-500W-1.png 800w, http:\\/\\/vuongphatdigital.vn\\/wp-content\\/uploads\\/2018\\/12\\/May-cat-Laser-fiber-xql-3015-500W-1-510x319.png 510w, http:\\/\\/vuongphatdigital.vn\\/wp-content\\/uploads\\/2018\\/12\\/May-cat-Laser-fiber-xql-3015-500W-1-300x188.png 300w, http:\\/\\/vuongphatdigital.vn\\/wp-content\\/uploads\\/2018\\/12\\/May-cat-Laser-fiber-xql-3015-500W-1-768x480.png 768w\\\" alt=\\\"M&aacute;y c\\u1eaft laser kim lo\\u1ea1i\\\" width=\\\"800\\\" height=\\\"500\\\" loading=\\\"lazy\\\" data-src=\\\"http:\\/\\/vuongphatdigital.vn\\/wp-content\\/uploads\\/2018\\/12\\/May-cat-Laser-fiber-xql-3015-500W-1.png\\\" data-srcset=\\\"http:\\/\\/vuongphatdigital.vn\\/wp-content\\/uploads\\/2018\\/12\\/May-cat-Laser-fiber-xql-3015-500W-1.png 800w, http:\\/\\/vuongphatdigital.vn\\/wp-content\\/uploads\\/2018\\/12\\/May-cat-Laser-fiber-xql-3015-500W-1-510x319.png 510w, http:\\/\\/vuongphatdigital.vn\\/wp-content\\/uploads\\/2018\\/12\\/May-cat-Laser-fiber-xql-3015-500W-1-300x188.png 300w, http:\\/\\/vuongphatdigital.vn\\/wp-content\\/uploads\\/2018\\/12\\/May-cat-Laser-fiber-xql-3015-500W-1-768x480.png 768w\\\" \\/><\\/p>\\n<p>D&ograve;ng&nbsp;<strong><a href=\\\"http:\\/\\/vuongphatdigital.vn\\/san-pham\\/may-cat-khac-laser-fiber-xql-3013\\/\\\">m&aacute;y c\\u1eaft kh\\u1eafc laser kim lo\\u1ea1i<\\/a>&nbsp;fiber xql<\\/strong>&nbsp;l&agrave; d&ograve;ng m&aacute;y chuy&ecirc;n d&ugrave;ng \\u0111\\u1ec3 gia c&ocirc;ng kim lo\\u1ea1i,&nbsp;<strong>m&aacute;y c\\u1eaft kh\\u1eafc laser fiber<\\/strong>&nbsp;c&oacute; nh\\u1eefng \\u01b0u \\u0111i\\u1ec3m t\\u1ed1t nh\\u01b0: tia laser c&oacute; \\u0111\\u01b0\\u1eddng k&iacute;nh nh\\u1ecf v&agrave; t\\u1eadp chung \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed9 ch&iacute;nh x&aacute;c cao t\\u1eeb \\u0111&oacute; cho ra nh\\u1eefng s\\u1ea3n ph\\u1ea9m \\u0111\\u1eb9p, s\\u1eafc n&eacute;t v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng c\\u1eaft ho&agrave;n h\\u1ea3o. T\\u1ed1c \\u0111\\u1ed9 c\\u1eaft c\\u1ee7a&nbsp;<strong>m&aacute;y c\\u1eaft kh\\u1eafc laser kim lo\\u1ea1i fiber<\\/strong>&nbsp;th\\u01b0\\u1eddng c&oacute; t\\u1ed1c \\u0111\\u1ed9 c\\u1eaft nhanh \\u0111em l\\u1ea1i hi\\u1ec7u su\\u1ea5t cao trong c&ocirc;ng vi\\u1ec7c.&nbsp;<strong>M&aacute;y c\\u1eaft kh\\u1eafc laser fiber xql<\\/strong>&nbsp;l&agrave; d&ograve;ng m&aacute;y c&oacute; t&iacute;nh \\u1ed5n \\u0111\\u1ecbnh cao, m&aacute;y \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng b\\u1eb1ng laser s\\u1ee3i c&ocirc;ng ngh\\u1ec7 h&agrave;ng \\u0111\\u1ea7u th\\u1ebf gi\\u1edbi cho tu\\u1ed5i th\\u1ecd \\u0111\\u1ea1t m\\u1ee9c 100.000 gi\\u1edd.<\\/p>\\n<p><strong>M&aacute;y c\\u1eaft kh\\u1eafc laser kim lo\\u1ea1i gi&aacute; r\\u1ebb<\\/strong>&nbsp;fiber xql c&oacute; chi ph&iacute; v\\u1eadn h&agrave;nh th\\u1ea5p ti&ecirc;u th\\u1ee5 \\u0111i\\u1ec7n n\\u0103ng th\\u1ea5p, \\u0111\\u1ea1t t\\u1ef7 l\\u1ec7 chuy\\u1ec3n \\u0111\\u1ed5i quang \\u0111i\\u1ec7n l&ecirc;n \\u0111\\u1ebfn 25-30%. Gi&uacute;p ti\\u1ebft ki\\u1ec7m m\\u1ee9c ti&ecirc;u th\\u1ee5 \\u0111i\\u1ec7n gi\\u1ea3m \\u0111\\u01b0\\u1ee3c 20-30% so v\\u1edbi d&ograve;ng m&aacute;y laser CO2 truy\\u1ec1n th\\u1ed1ng. M&aacute;y c\\u1eaft kh\\u1eafc laser fiber xql d\\u1ec5 d&agrave;ng s\\u1eed d\\u1ee5ng v&agrave; v\\u1eadn h&agrave;nh v\\u1edbi vi\\u1ec7c ch\\u1ec9 d&ugrave;ng s\\u1ee3i quang \\u0111\\u01b0\\u1eddng d&acirc;y truy\\u1ec1n t\\u1ea3i, kh&ocirc;ng \\u0111i\\u1ec1u ch\\u1ec9nh \\u0111\\u01b0\\u1eddng d\\u1eabn quang h\\u1ecdc.<\\/p>\\n<h3>Mua m&aacute;y c\\u1eaft kh\\u1eafc laser fiber xql t\\u1ea1i V\\u01b0\\u01a1ng Ph&aacute;t Digital<\\/h3>\\n<p>Khi b\\u1ea1n&nbsp;<strong>mua d&ograve;ng m&aacute;y c\\u1eaft laser fiber xql<\\/strong>&nbsp;t\\u1ea1i c&ocirc;ng ty ch&uacute;ng t&ocirc;i, b\\u1ea1n s\\u1ebd \\u0111\\u01b0\\u1ee3c mi\\u1ec5n ph&iacute; b\\u1ea3o tr&igrave; c&aacute;c v\\u1ea5n \\u0111\\u1ec1 nh\\u01b0: &nbsp;truy\\u1ec1n d\\u1eabn quang&nbsp;s\\u1ee3i,&nbsp;s\\u1ee3i&nbsp;\\u0111\\u01b0\\u1eddng d&acirc;y,&nbsp;kh&ocirc;ng&nbsp;c\\u1ea7n&nbsp;g\\u01b0\\u01a1ng ph\\u1ea3n x\\u1ea1,&nbsp;\\u1ed1ng k&iacute;nh,&nbsp;m&agrave; kh&ocirc;ng c\\u1ea7n&nbsp;\\u0111i\\u1ec1u ch\\u1ec9nh&nbsp;quang h\\u1ecdc,&nbsp;ti\\u1ebft ki\\u1ec7m chi ph&iacute;&nbsp;b\\u1ea3o tr&igrave;.<\\/p>\\n<h2>M&aacute;y c\\u1eaft kh\\u1eafc laser phi kim<\\/h2>\\n<p><img class=\\\"aligncenter wp-image-573 size-full lazy-load-active\\\" src=\\\"http:\\/\\/vuongphatdigital.vn\\/wp-content\\/uploads\\/2018\\/12\\/may-laser-1390.png\\\" sizes=\\\"(max-width: 392px) 100vw, 392px\\\" srcset=\\\"http:\\/\\/vuongphatdigital.vn\\/wp-content\\/uploads\\/2018\\/12\\/may-laser-1390.png 392w, http:\\/\\/vuongphatdigital.vn\\/wp-content\\/uploads\\/2018\\/12\\/may-laser-1390-300x226.png 300w\\\" alt=\\\"M&aacute;y c\\u1eaft laser hanniu\\\" width=\\\"392\\\" height=\\\"295\\\" loading=\\\"lazy\\\" data-src=\\\"http:\\/\\/vuongphatdigital.vn\\/wp-content\\/uploads\\/2018\\/12\\/may-laser-1390.png\\\" data-srcset=\\\"http:\\/\\/vuongphatdigital.vn\\/wp-content\\/uploads\\/2018\\/12\\/may-laser-1390.png 392w, http:\\/\\/vuongphatdigital.vn\\/wp-content\\/uploads\\/2018\\/12\\/may-laser-1390-300x226.png 300w\\\" \\/><\\/p>\\n<p>D&ograve;ng&nbsp;<strong><a href=\\\"http:\\/\\/vuongphatdigital.vn\\/danh-muc\\/may-laser\\/\\\">m&aacute;y c\\u1eaft laser<\\/a>&nbsp;phi kim<\\/strong>&nbsp;t\\u1ea1i V\\u01b0\\u01a1ng Ph&aacute;t Digital c&oacute; th\\u1ec3 \\u1ee9ng d\\u1ee5ng v&agrave; c\\u1eaft \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u lo\\u1ea1i v\\u1eadt li\\u1ec7u nh\\u01b0:g\\u1ed7, gi\\u1ea5y, da, v\\u1ea3i, cao su, \\u0111&aacute; c\\u1ea9m th\\u1ea1ch, mica,th\\u1ee7y tinh&hellip; t\\u1ea1o ra \\u0111a d\\u1ea1ng \\u0111\\u01b0\\u1ee3c c&aacute;c s\\u1ea3n ph\\u1ea9m \\u0111\\u1ec3 \\u1ee9ng d\\u1ee5ng \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u trong ng&agrave;nh ngh\\u1ec1 l\\u0129nh v\\u1ef1c: qu\\u1ea3ng c&aacute;o, n\\u1ed9i th\\u1ea5t, trang tr&iacute; qu&agrave; t\\u1eb7ng, may m\\u1eb7c&hellip;.&nbsp;<strong>M&aacute;y c\\u1eaft laser phi kim<\\/strong>&nbsp;t\\u1ea1i V\\u01b0\\u01a1ng Ph&aacute;t Digital ch&uacute;ng t&ocirc;i \\u0111ang n\\u1ed5i tr\\u1ed9i l&agrave; d&ograve;ng&nbsp;<strong>m&aacute;y c\\u1eaft kh\\u1eafc laser hanniu<\\/strong>&nbsp;v\\u1edbi nhi\\u1ec1u \\u01b0u \\u0111i\\u1ec3m n\\u1ed5i tr\\u1ed9i.<\\/p>\\n<p><strong>M&aacute;y c\\u1eaft kim lo\\u1ea1i laser hanniu<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf theo ki\\u1ec3u d&aacute;ng c&ocirc;ng nghi\\u1ec7p, v\\u1edbi k\\u1ebft c\\u1ea5u c\\u01a1 kh&iacute; v\\u1eefng ch\\u1eafc c&ugrave;ng v\\u1edbi \\u0111&oacute; d\\u1ec5 d&agrave;ng thao t&aacute;c v&agrave; v\\u1eadn h&agrave;nh m&aacute;y.&nbsp;<strong>M&aacute;y c\\u1eaft kim lo\\u1ea1i hanniu<\\/strong>&nbsp;s\\u1eed d\\u1ee5ng thanh tr\\u01b0\\u1ee3t c&oacute; tr\\u1ee5c k\\u1ebft n\\u1ed1i v\\u1eefng ch\\u1eafc gi&uacute;p cho m&aacute;y ho\\u1ea1t \\u0111\\u1ed9ng \\u1ed5n \\u0111\\u1ecbnh v&agrave; \\u0111\\u1ed9 c\\u1eaft ch&iacute;nh x&aacute;c cao.<\\/p>\\n<p>D&ograve;ng<strong>&nbsp;m&aacute;y c\\u1eaft kh\\u1eafc laser kim lo\\u1ea1i hanniu<\\/strong>&nbsp;c&oacute; c&ocirc;ng su\\u1ea5t c\\u1eaft c\\u1ef1c nhanh l&ecirc;n t\\u1edbi 6400mm\\/ph&uacute;t v&agrave; c&oacute; th\\u1ec3 c\\u1eaft \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed9 d&agrave;y t\\u1ed1i \\u0111a l&ecirc;n t\\u1edbi 30mm.&nbsp;<strong>M&aacute;y c\\u1eaft laser kim lo\\u1ea1i<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c trang b\\u1ecb s\\u1eed d\\u1ee5ng ch\\u1ebf \\u0111\\u1ed9 l&agrave;m m&aacute;t b\\u1eb1ng n\\u01b0\\u1edbc v&agrave; k\\u1ebft h\\u1ee3p v\\u1edbi \\u0111i\\u1ec1u h&ograve;a t\\u1ef1 \\u0111\\u1ed9ng, gi&uacute;p cho \\u1ed1ng ph&oacute;ng \\u0111\\u01b0\\u1ee3c b\\u1ea3o v\\u1ec7 v&agrave; c&oacute; tu\\u1ed5i th\\u1ecd cao.<\\/p>\\n<h2><strong>Mua m&aacute;y c\\u1eaft kh\\u1eafc laser \\u1edf \\u0111&acirc;u?<\\/strong><\\/h2>\\n<p>Hi\\u1ec7n nay c&ocirc;ng ty ch&uacute;ng t&ocirc;i \\u0111ang ph&acirc;n ph\\u1ed1i \\u0111\\u1ea7y \\u0111\\u1ee7 c&aacute;c d&ograve;ng&nbsp;<strong>m&aacute;y c\\u1eaft kh\\u1eafc laser<\\/strong>:&nbsp;<strong>m&aacute;y c\\u1eaft laser kim lo\\u1ea1i<\\/strong>,&nbsp;<strong>m&aacute;y c\\u1eaft laser phi kim<\\/strong>,&nbsp;<strong>m&aacute;y c\\u1eaft laser mica<\\/strong>&hellip; V\\u1edbi cam k\\u1ebft v\\u1ec1 ch\\u1ea5t l\\u01b0\\u1ee3ng d&ograve;ng m&aacute;y lu&ocirc;n ho\\u1ea1t \\u0111\\u1ed9ng \\u1ed5n \\u0111\\u1ecbnh, c&ocirc;ng su\\u1ea5t hi\\u1ec7u qu\\u1ea3 l&agrave;m vi\\u1ec7c c\\u1ee7a m&aacute;y cao, s\\u1ea3n ph\\u1ea9m l&agrave;m ra \\u0111\\u1eb9p s\\u1eafc n&eacute;t.&nbsp;<strong>Mua m&aacute;y c\\u1eaft kh\\u1eafc laser<\\/strong>&nbsp;t\\u1ea1i V\\u01b0\\u01a1ng Ph&aacute;t Digital b\\u1ea1n s\\u1ebd \\u0111\\u01b0\\u1ee3c chuy\\u1ec3n giao h\\u01b0\\u1edbng d\\u1eabn c&ocirc;ng ngh\\u1ec7 t\\u1eadn t&igrave;nh, ch\\u1ebf \\u0111\\u1ed9 gi&aacute; b&aacute;n m&aacute;y h\\u1ee3p l&yacute; v&agrave; b\\u1ea3o h&agrave;nh m&aacute;y h\\u1ed7 tr\\u1ee3 k\\u0129 thu\\u1eadt sau b\\u1ea3o h&agrave;nh tr\\u1ecdn \\u0111\\u1eddi.<\\/p>\\n<h3>M&aacute;y c\\u1eaft laser gi&aacute; b&aacute;n bao nhi&ecirc;u?<\\/h3>\\n<p><strong>Gi&aacute; b&aacute;n c\\u1ee7a m&aacute;y c\\u1eaft kh\\u1eafc laser<\\/strong>&nbsp;lu&ocirc;n l&agrave; v\\u1ea5n \\u0111\\u1ec1 \\u0111\\u01b0\\u1ee3c b\\u1ea1n quan t&acirc;m t&igrave;m hi\\u1ec3u \\u0111\\u1ea7u ti&ecirc;n khi l\\u1ef1a ch\\u1ecdn mua m&aacute;y.&nbsp;<strong>M&aacute;y c\\u1eaft laser c&oacute; gi&aacute; b&aacute;n bao nhi&ecirc;u<\\/strong>&nbsp;ph\\u1ee5 thu\\u1ed9c v&agrave;o t\\u1eebng d&ugrave;ng m&aacute;y, \\u0111\\u1ec3 nh\\u1eadn \\u0111\\u01b0\\u1ee3c th&ocirc;ng tin gi&aacute; b&aacute;n chi ti\\u1ebft nh\\u1ea5t v\\u1ec1 c&aacute;c d&ograve;ng m&aacute;y c\\u1eaft kh\\u1eafc laser. B\\u1ea1n c&oacute; th\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp t\\u1ea1i \\u0111\\u1ecba ch\\u1ec9 c&ocirc;ng ty ch&uacute;ng t&ocirc;i ho\\u1eb7c li&ecirc;n h\\u1ec7 theo s\\u1ed1 hotline: 0988.873.898 \\u0111\\u1ec3 nh\\u1eadn \\u0111\\u01b0\\u1ee3c b&aacute;o gi&aacute;.<\\/p>\"}]', '[{\"lang_code\":\"vi\",\"content\":\"Hi\\u1ec7n nay tr\\u00ean th\\u1ecb tr\\u01b0\\u1eddng c\\u00f3 nhi\\u1ec1u lo\\u1ea1i\\u00a0m\\u00e1y c\\u1eaft kh\\u1eafc laser\\u00a0khi\\u1ebfn b\\u1ea1n ph\\u00e2n v\\u00e2n kh\\u00f4ng bi\\u1ebft l\\u1ef1a ch\\u1ecdn d\\u00f2ng m\\u00e1y n\\u00e0o cho ph\\u00f9 h\\u1ee3p v\\u1edbi m\\u00f4 h\\u00ecnh kinh doanh c\\u1ee7a b\\u1ea1n. Sau \\u0111\\u00e2y V\\u01b0\\u01a1ng Ph\\u00e1t Digital ch\\u00fang t\\u00f4i xin gi\\u1edbi thi\\u1ec7u t\\u1edbi b\\u1ea1n nh\\u1eefng d\\u00f2ng s\\u1ea3n ph\\u1ea9m\\u00a0m\\u00e1y c\\u1eaft kh\\u1eafc laser ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t\\u00a0nh\\u1ea5t tr\\u00ean th\\u1ecb tr\\u01b0\\u1eddng.\"}]', 'may-cat-khac-laser-chat-luong-gia-tot', 1, NULL, NULL, '/uploads/images/may-cat-khac-laser-chat-luong-gia-tot-1243006633.png', 'admins', 'tin-tuc', 0, NULL, '2022-08-27 08:47:14', '2022-08-27 08:47:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `blog_category`
--

INSERT INTO `blog_category` (`id`, `quiz_id`, `language`, `name`, `slug`, `path`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(4, NULL, NULL, '[{\"lang_code\":\"vi\",\"content\":\"Tin t\\u1ee9c\"}]', 'tin-tuc', NULL, 1, NULL, '2022-08-27 08:46:11', '2022-08-27 08:46:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_type_category`
--

CREATE TABLE `blog_type_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_customer`
--

CREATE TABLE `category_customer` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category_customer`
--

INSERT INTO `category_customer` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'a', 'a', 1, '2020-03-13 06:58:51', '2020-03-13 06:58:51'),
(2, 'cx', 'cx', 0, '2020-03-13 07:00:01', '2020-03-13 07:08:12'),
(3, 'tu van vay nong', 'tu-van-vay-nong', 1, '2020-03-15 03:40:28', '2020-03-15 03:40:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '0-cá nhân; 1-doanh nghiệp',
  `status` int(11) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `password`, `address`, `phone`, `type`, `status`, `google_id`, `facebook_id`, `created_at`, `updated_at`) VALUES
(1, 'tuan', 'toilatoi@gmail.com', '$2y$10$oIhsZhcA.rnqQbTmH3hm2.hfuMPnIMLW4U5d2BbxxvyaK9jqAwbDO', 'aaaaaaaaa', '0849849849', '0', NULL, NULL, NULL, '2020-05-02 07:38:04', '2020-05-02 07:38:04'),
(2, 'LE TUAN ANH', 'tuananh1122@gmail.com', '$2y$10$micvZgHHhFzjqHsHJn1vQ.a0HGfyfn8r1TjfzPBu/WTyUIgpiu322', NULL, '0373631368', NULL, 0, NULL, NULL, '2021-08-20 08:47:05', '2021-08-20 08:47:05'),
(3, 'LE TUAN ANH', 'tuana@gmail.com', '$2y$10$a.pm0hbW3QieL9nQ4obDlegeIX2bPr6VwHeP2JzD.70uUC1lcaWVy', NULL, '03736313689', NULL, 0, NULL, NULL, '2021-08-20 08:48:15', '2021-08-20 08:48:15'),
(4, 'anh', 'toilato2i@gmail.com', '$2y$10$nXwYQGdFLK6OJekWPkue5ejig3D05j1BtQKemt.Y7f9WB0jNY2oNu', NULL, '03736313682', NULL, 0, NULL, NULL, '2021-08-20 08:59:22', '2021-08-20 08:59:22'),
(5, 'LE TUAN ANHac', 'toaaailatoi@gmail.com', '$2y$10$B2wmgtjXDv58re5Fo0KgJ.0uEgNSl8RRjS9Ysm.pbPgAKBR1ULKHO', NULL, '0373631121', NULL, 0, NULL, NULL, '2021-08-20 09:00:49', '2021-08-20 09:00:49'),
(6, 'LE TUAN ANH1231', 'tuananhdina111mo1122@gmail.com', '$2y$10$.nkpZV1.8rUX9nh2C/MgxejyojLmcDJbYrfZ7rre7L7bNg5YEKwcS', NULL, '037363112368', NULL, 0, NULL, NULL, '2021-08-20 09:03:06', '2021-08-20 09:03:06'),
(7, 'LE TUAN ANH111', 'toilat12313oi@gmail.com', '$2y$10$zl3oj2wMtkFs1hZQx7hLBuaenIQm9zqFLkfVDvcO5tD2lN/vMK34y', NULL, '03736313682112', NULL, 0, NULL, NULL, '2021-08-20 09:04:00', '2021-08-20 09:04:00'),
(8, 'LE TUAN ANH', 'toilatoi123@gmail.com', '$2y$10$8AnRkfsrU3sTyXGZUNNLaO3zTAfGCUMxCrCOko6Xz.5LbhxdGI3zm', NULL, '0373631368', NULL, 0, NULL, NULL, '2021-08-20 09:07:23', '2021-08-20 09:07:23'),
(9, 'LE TUAN ANH', 'toilatoi1235@gmail.com', '$2y$10$aR5nfJILeGpNgbbm4xHEB.LI5GofEpLzDlV5jxPYTIlc2GE3/mUku', NULL, '0373631369', NULL, 0, NULL, NULL, '2021-08-20 09:09:34', '2021-08-20 09:09:34'),
(10, 'LE TUAN ANHâ', 'toilatoi12325@gmail.com', '$2y$10$PTmWNiCUdIF7axVK9KtoLuz1hh1fKAxzHa/YQ0tf04sX6WIKja0z6', NULL, '0373631369', NULL, 0, NULL, NULL, '2021-08-22 08:38:08', '2021-08-22 08:38:08'),
(14, 'anh tuấn', 'tuananhdinamo112233@gmail.com', '$2y$10$9KHzinXVjeu6aVGN56VPEecMHS6AXG3sAQ.aOPdhD1lPICt.i4WI.', NULL, NULL, NULL, 0, '102882335611717029596', NULL, '2021-08-22 08:57:47', '2021-08-22 08:57:47'),
(15, 'LE TUAN ANH', 'toilatoi12356@gmail.com', '$2y$10$AFafVSSx80QMPifhxB8VHus.RYrbyoJP9TpmhNMxeljk0caQUnvYO', NULL, '0373631368', NULL, 0, NULL, NULL, '2021-10-05 21:56:56', '2021-10-05 21:56:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `id` int(10) UNSIGNED NOT NULL,
  `_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_prefix` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_province_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`id`, `_name`, `_prefix`, `_province_id`) VALUES
(1, 'Bình Chánh', 'Huyện', 1),
(2, 'Bình Tân', 'Quận', 1),
(3, 'Bình Thạnh', 'Quận', 1),
(4, 'Cần Giờ', 'Huyện', 1),
(5, 'Củ Chi', 'Huyện', 1),
(6, 'Gò Vấp', 'Quận', 1),
(7, 'Hóc Môn', 'Huyện', 1),
(8, 'Nhà Bè', 'Huyện', 1),
(9, 'Phú Nhuận', 'Quận', 1),
(10, 'Quận 1', '', 1),
(11, 'Quận 10', '', 1),
(12, 'Quận 11', '', 1),
(13, 'Quận 12', '', 1),
(14, 'Quận 2', '', 1),
(15, 'Quận 3', '', 1),
(16, 'Quận 4', '', 1),
(17, 'Quận 5', '', 1),
(18, 'Quận 6', '', 1),
(19, 'Quận 7', '', 1),
(20, 'Quận 8', '', 1),
(21, 'Quận 9', '', 1),
(22, 'Tân Bình', 'Quận', 1),
(23, 'Tân Phú', 'Quận', 1),
(24, 'Thủ Đức', 'Quận', 1),
(25, 'Ba Đình', 'Quận', 2),
(26, 'Ba Vì', 'Huyện', 2),
(27, 'Bắc Từ Liêm', 'Quận', 2),
(28, 'Cầu Giấy', 'Quận', 2),
(29, 'Chương Mỹ', 'Huyện', 2),
(30, 'Đan Phượng', 'Huyện', 2),
(31, 'Đông Anh', 'Huyện', 2),
(32, 'Đống Đa', 'Quận', 2),
(33, 'Gia Lâm', 'Huyện', 2),
(34, 'Hà Đông', 'Quận', 2),
(35, 'Hai Bà Trưng', 'Quận', 2),
(36, 'Hoài Đức', 'Huyện', 2),
(37, 'Hoàn Kiếm', 'Quận', 2),
(38, 'Hoàng Mai', 'Quận', 2),
(39, 'Long Biên', 'Quận', 2),
(40, 'Mê Linh', 'Huyện', 2),
(41, 'Mỹ Đức', 'Huyện', 2),
(42, 'Nam Từ Liêm', 'Quận', 2),
(43, 'Phú Xuyên', 'Huyện', 2),
(44, 'Phúc Thọ', 'Huyện', 2),
(45, 'Quốc Oai', 'Huyện', 2),
(46, 'Sóc Sơn', 'Huyện', 2),
(47, 'Sơn Tây', 'Thị xã', 2),
(48, 'Tây Hồ', 'Quận', 2),
(49, 'Thạch Thất', 'Huyện', 2),
(50, 'Thanh Oai', 'Huyện', 2),
(51, 'Thanh Trì', 'Huyện', 2),
(52, 'Thanh Xuân', 'Quận', 2),
(53, 'Thường Tín', 'Huyện', 2),
(54, 'Ứng Hòa', 'Huyện', 2),
(55, 'Cẩm Lệ', 'Quận', 3),
(56, 'Hải Châu', 'Quận', 3),
(57, 'Hòa Vang', 'Huyện', 3),
(58, 'Hoàng Sa', 'Huyện', 3),
(59, 'Liên Chiểu', 'Quận', 3),
(60, 'Ngũ Hành Sơn', 'Quận', 3),
(61, 'Sơn Trà', 'Quận', 3),
(62, 'Thanh Khê', 'Quận', 3),
(63, 'Bàu Bàng', 'Huyện', 4),
(64, 'Bến Cát', 'Thị xã', 4),
(65, 'Dầu Tiếng', 'Huyện', 4),
(66, 'Dĩ An', 'Thị xã', 4),
(67, 'Phú Giáo', 'Huyện', 4),
(68, 'Tân Uyên', 'Huyện', 4),
(69, 'Thủ Dầu Một', 'Thị xã', 4),
(70, 'Thuận An', 'Huyện', 4),
(71, 'Biên Hòa', 'Thành phố', 5),
(72, 'Cẩm Mỹ', 'Huyện', 5),
(73, 'Định Quán', 'Huyện', 5),
(74, 'Long Khánh', 'Thị xã', 5),
(75, 'Long Thành', 'Huyện', 5),
(76, 'Nhơn Trạch', 'Huyện', 5),
(77, 'Tân Phú', 'Quận', 5),
(78, 'Thống Nhất', 'Huyện', 5),
(79, 'Trảng Bom', 'Huyện', 5),
(80, 'Vĩnh Cửu', 'Huyện', 5),
(81, 'Xuân Lộc', 'Huyện', 5),
(82, 'Cam Lâm', 'Huyện', 6),
(83, 'Cam Ranh', 'Thành phố', 6),
(84, 'Diên Khánh', 'Huyện', 6),
(85, 'Khánh Sơn', 'Huyện', 6),
(86, 'Khánh Vĩnh', 'Huyện', 6),
(87, 'Nha Trang', 'Thành phố', 6),
(88, 'Ninh Hòa', 'Thị xã', 6),
(89, 'Trường Sa', 'Huyện', 6),
(90, 'Vạn Ninh', 'Huyện', 6),
(91, 'An Dương', 'Huyện', 7),
(92, 'An Lão', 'Huyện', 7),
(93, 'Bạch Long Vĩ', 'Huyện', 7),
(94, 'Cát Hải', 'Huyện', 7),
(95, 'Đồ Sơn', 'Quận', 7),
(96, 'Dương Kinh', 'Quận', 7),
(97, 'Hải An', 'Quận', 7),
(98, 'Hồng Bàng', 'Quận', 7),
(99, 'Kiến An', 'Quận', 7),
(100, 'Kiến Thụy', 'Huyện', 7),
(101, 'Lê Chân', 'Quận', 7),
(102, 'Ngô Quyền', 'Quận', 7),
(103, 'Thủy Nguyên', 'Huyện', 7),
(104, 'Tiên Lãng', 'Huyện', 7),
(105, 'Vĩnh Bảo', 'Huyện', 7),
(106, 'Bến Lức', 'Huyện', 8),
(107, 'Cần Đước', 'Huyện', 8),
(108, 'Cần Giuộc', 'Huyện', 8),
(109, 'Châu Thành', 'Huyện', 8),
(110, 'Đức Hòa', 'Huyện', 8),
(111, 'Đức Huệ', 'Huyện', 8),
(112, 'Kiến Tường', 'Thị xã', 8),
(113, 'Mộc Hóa', 'Huyện', 8),
(114, 'Tân An', 'Thành phố', 8),
(115, 'Tân Hưng', 'Huyện', 8),
(116, 'Tân Thạnh', 'Huyện', 8),
(117, 'Tân Trụ', 'Huyện', 8),
(118, 'Thạnh Hóa', 'Huyện', 8),
(119, 'Thủ Thừa', 'Huyện', 8),
(120, 'Vĩnh Hưng', 'Huyện', 8),
(121, 'Bắc Trà My', 'Huyện', 9),
(122, 'Đại Lộc', 'Huyện', 9),
(123, 'Điện Bàn', 'Huyện', 9),
(124, 'Đông Giang', 'Huyện', 9),
(125, 'Duy Xuyên', 'Huyện', 9),
(126, 'Hiệp Đức', 'Huyện', 9),
(127, 'Hội An', 'Thành phố', 9),
(128, 'Nam Giang', 'Huyện', 9),
(129, 'Nam Trà My', 'Huyện', 9),
(130, 'Nông Sơn', 'Huyện', 9),
(131, 'Núi Thành', 'Huyện', 9),
(132, 'Phú Ninh', 'Huyện', 9),
(133, 'Phước Sơn', 'Huyện', 9),
(134, 'Quế Sơn', 'Huyện', 9),
(135, 'Tam Kỳ', 'Thành phố', 9),
(136, 'Tây Giang', 'Huyện', 9),
(137, 'Thăng Bình', 'Huyện', 9),
(138, 'Tiên Phước', 'Huyện', 9),
(139, 'Bà Rịa', 'Thị xã', 10),
(140, 'Châu Đức', 'Huyện', 10),
(141, 'Côn Đảo', 'Huyện', 10),
(142, 'Đất Đỏ', 'Huyện', 10),
(143, 'Long Điền', 'Huyện', 10),
(144, 'Tân Thành', 'Huyện', 10),
(145, 'Vũng Tàu', 'Thành phố', 10),
(146, 'Xuyên Mộc', 'Huyện', 10),
(147, 'Buôn Đôn', 'Huyện', 11),
(148, 'Buôn Hồ', 'Thị xã', 11),
(149, 'Buôn Ma Thuột', 'Thành phố', 11),
(150, 'Cư Kuin', 'Huyện', 11),
(151, 'Cư M\'gar', 'Huyện', 11),
(152, 'Ea H\'Leo', 'Huyện', 11),
(153, 'Ea Kar', 'Huyện', 11),
(154, 'Ea Súp', 'Huyện', 11),
(155, 'Krông Ana', 'Huyện', 11),
(156, 'Krông Bông', 'Huyện', 11),
(157, 'Krông Buk', 'Huyện', 11),
(158, 'Krông Năng', 'Huyện', 11),
(159, 'Krông Pắc', 'Huyện', 11),
(160, 'Lăk', 'Huyện', 11),
(161, 'M\'Đrăk', 'Huyện', 11),
(162, ' Thới Lai', 'Huyện', 12),
(163, 'Bình Thủy', 'Quận', 12),
(164, 'Cái Răng', 'Quận', 12),
(165, 'Cờ Đỏ', 'Huyện', 12),
(166, 'Ninh Kiều', 'Quận', 12),
(167, 'Ô Môn', 'Quận', 12),
(168, 'Phong Điền', 'Huyện', 12),
(169, 'Thốt Nốt', 'Quận', 12),
(170, 'Vĩnh Thạnh', 'Huyện', 12),
(171, 'Bắc Bình', 'Huyện', 13),
(172, 'Đảo Phú Quý', 'Huyện', 13),
(173, 'Đức Linh', 'Huyện', 13),
(174, 'Hàm Tân', 'Huyện', 13),
(175, 'Hàm Thuận Bắc', 'Huyện', 13),
(176, 'Hàm Thuận Nam', 'Huyện', 13),
(177, 'La Gi', 'Thị xã', 13),
(178, 'Phan Thiết', 'Thành phố', 13),
(179, 'Tánh Linh', 'Huyện', 13),
(180, 'Tuy Phong', 'Huyện', 13),
(181, 'Bảo Lâm', 'Huyện', 14),
(182, 'Bảo Lộc', 'Thành phố', 14),
(183, 'Cát Tiên', 'Huyện', 14),
(184, 'Đạ Huoai', 'Huyện', 14),
(185, 'Đà Lạt', 'Thành phố', 14),
(186, 'Đạ Tẻh', 'Huyện', 14),
(187, 'Đam Rông', 'Huyện', 14),
(188, 'Di Linh', 'Huyện', 14),
(189, 'Đơn Dương', 'Huyện', 14),
(190, 'Đức Trọng', 'Huyện', 14),
(191, 'Lạc Dương', 'Huyện', 14),
(192, 'Lâm Hà', 'Huyện', 14),
(193, 'A Lưới', 'Huyện', 15),
(194, 'Huế', 'Thành phố', 15),
(195, 'Hương Thủy', 'Thị xã', 15),
(196, 'Hương Trà', 'Huyện', 15),
(197, 'Nam Đông', 'Huyện', 15),
(198, 'Phong Điền', 'Huyện', 15),
(199, 'Phú Lộc', 'Huyện', 15),
(200, 'Phú Vang', 'Huyện', 15),
(201, 'Quảng Điền', 'Huyện', 15),
(202, 'An Biên', 'Huyện', 16),
(203, 'An Minh', 'Huyện', 16),
(204, 'Châu Thành', 'Huyện', 16),
(205, 'Giang Thành', 'Huyện', 16),
(206, 'Giồng Riềng', 'Huyện', 16),
(207, 'Gò Quao', 'Huyện', 16),
(208, 'Hà Tiên', 'Thị xã', 16),
(209, 'Hòn Đất', 'Huyện', 16),
(210, 'Kiên Hải', 'Huyện', 16),
(211, 'Kiên Lương', 'Huyện', 16),
(212, 'Phú Quốc', 'Huyện', 16),
(213, 'Rạch Giá', 'Thành phố', 16),
(214, 'Tân Hiệp', 'Huyện', 16),
(215, 'U minh Thượng', 'Huyện', 16),
(216, 'Vĩnh Thuận', 'Huyện', 16),
(217, 'Bắc Ninh', 'Thành phố', 17),
(218, 'Gia Bình', 'Huyện', 17),
(219, 'Lương Tài', 'Huyện', 17),
(220, 'Quế Võ', 'Huyện', 17),
(221, 'Thuận Thành', 'Huyện', 17),
(222, 'Tiên Du', 'Huyện', 17),
(223, 'Từ Sơn', 'Thị xã', 17),
(224, 'Yên Phong', 'Huyện', 17),
(225, 'Ba Chẽ', 'Huyện', 18),
(226, 'Bình Liêu', 'Huyện', 18),
(227, 'Cẩm Phả', 'Thành phố', 18),
(228, 'Cô Tô', 'Huyện', 18),
(229, 'Đầm Hà', 'Huyện', 18),
(230, 'Đông Triều', 'Huyện', 18),
(231, 'Hạ Long', 'Thành phố', 18),
(232, 'Hải Hà', 'Huyện', 18),
(233, 'Hoành Bồ', 'Huyện', 18),
(234, 'Móng Cái', 'Thành phố', 18),
(235, 'Quảng Yên', 'Huyện', 18),
(236, 'Tiên Yên', 'Huyện', 18),
(237, 'Uông Bí', 'Thị xã', 18),
(238, 'Vân Đồn', 'Huyện', 18),
(239, 'Bá Thước', 'Huyện', 19),
(240, 'Bỉm Sơn', 'Thị xã', 19),
(241, 'Cẩm Thủy', 'Huyện', 19),
(242, 'Đông Sơn', 'Huyện', 19),
(243, 'Hà Trung', 'Huyện', 19),
(244, 'Hậu Lộc', 'Huyện', 19),
(245, 'Hoằng Hóa', 'Huyện', 19),
(246, 'Lang Chánh', 'Huyện', 19),
(247, 'Mường Lát', 'Huyện', 19),
(248, 'Nga Sơn', 'Huyện', 19),
(249, 'Ngọc Lặc', 'Huyện', 19),
(250, 'Như Thanh', 'Huyện', 19),
(251, 'Như Xuân', 'Huyện', 19),
(252, 'Nông Cống', 'Huyện', 19),
(253, 'Quan Hóa', 'Huyện', 19),
(254, 'Quan Sơn', 'Huyện', 19),
(255, 'Quảng Xương', 'Huyện', 19),
(256, 'Sầm Sơn', 'Thị xã', 19),
(257, 'Thạch Thành', 'Huyện', 19),
(258, 'Thanh Hóa', 'Thành phố', 19),
(259, 'Thiệu Hóa', 'Huyện', 19),
(260, 'Thọ Xuân', 'Huyện', 19),
(261, 'Thường Xuân', 'Huyện', 19),
(262, 'Tĩnh Gia', 'Huyện', 19),
(263, 'Triệu Sơn', 'Huyện', 19),
(264, 'Vĩnh Lộc', 'Huyện', 19),
(265, 'Yên Định', 'Huyện', 19),
(266, 'Anh Sơn', 'Huyện', 20),
(267, 'Con Cuông', 'Huyện', 20),
(268, 'Cửa Lò', 'Thị xã', 20),
(269, 'Diễn Châu', 'Huyện', 20),
(270, 'Đô Lương', 'Huyện', 20),
(271, 'Hoàng Mai', 'Thị xã', 20),
(272, 'Hưng Nguyên', 'Huyện', 20),
(273, 'Kỳ Sơn', 'Huyện', 20),
(274, 'Nam Đàn', 'Huyện', 20),
(275, 'Nghi Lộc', 'Huyện', 20),
(276, 'Nghĩa Đàn', 'Huyện', 20),
(277, 'Quế Phong', 'Huyện', 20),
(278, 'Quỳ Châu', 'Huyện', 20),
(279, 'Quỳ Hợp', 'Huyện', 20),
(280, 'Quỳnh Lưu', 'Huyện', 20),
(281, 'Tân Kỳ', 'Huyện', 20),
(282, 'Thái Hòa', 'Thị xã', 20),
(283, 'Thanh Chương', 'Huyện', 20),
(284, 'Tương Dương', 'Huyện', 20),
(285, 'Vinh', 'Thành phố', 20),
(286, 'Yên Thành', 'Huyện', 20),
(287, 'Bình Giang', 'Huyện', 21),
(288, 'Cẩm Giàng', 'Huyện', 21),
(289, 'Chí Linh', 'Thị xã', 21),
(290, 'Gia Lộc', 'Huyện', 21),
(291, 'Hải Dương', 'Thành phố', 21),
(292, 'Kim Thành', 'Huyện', 21),
(293, 'Kinh Môn', 'Huyện', 21),
(294, 'Nam Sách', 'Huyện', 21),
(295, 'Ninh Giang', 'Huyện', 21),
(296, 'Thanh Hà', 'Huyện', 21),
(297, 'Thanh Miện', 'Huyện', 21),
(298, 'Tứ Kỳ', 'Huyện', 21),
(299, 'An Khê', 'Thị xã', 22),
(300, 'AYun Pa', 'Thị xã', 22),
(301, 'Chư Păh', 'Huyện', 22),
(302, 'Chư Pưh', 'Huyện', 22),
(303, 'Chư Sê', 'Huyện', 22),
(304, 'ChưPRông', 'Huyện', 22),
(305, 'Đăk Đoa', 'Huyện', 22),
(306, 'Đăk Pơ', 'Huyện', 22),
(307, 'Đức Cơ', 'Huyện', 22),
(308, 'Ia Grai', 'Huyện', 22),
(309, 'Ia Pa', 'Huyện', 22),
(310, 'KBang', 'Huyện', 22),
(311, 'Kông Chro', 'Huyện', 22),
(312, 'Krông Pa', 'Huyện', 22),
(313, 'Mang Yang', 'Huyện', 22),
(314, 'Phú Thiện', 'Huyện', 22),
(315, 'Plei Ku', 'Thành phố', 22),
(316, 'Bình Long', 'Thị xã', 23),
(317, 'Bù Đăng', 'Huyện', 23),
(318, 'Bù Đốp', 'Huyện', 23),
(319, 'Bù Gia Mập', 'Huyện', 23),
(320, 'Chơn Thành', 'Huyện', 23),
(321, 'Đồng Phú', 'Huyện', 23),
(322, 'Đồng Xoài', 'Thị xã', 23),
(323, 'Hớn Quản', 'Huyện', 23),
(324, 'Lộc Ninh', 'Huyện', 23),
(325, 'Phú Riềng', 'Huyện', 23),
(326, 'Phước Long', 'Thị xã', 23),
(327, 'Ân Thi', 'Huyện', 24),
(328, 'Hưng Yên', 'Thành phố', 24),
(329, 'Khoái Châu', 'Huyện', 24),
(330, 'Kim Động', 'Huyện', 24),
(331, 'Mỹ Hào', 'Huyện', 24),
(332, 'Phù Cừ', 'Huyện', 24),
(333, 'Tiên Lữ', 'Huyện', 24),
(334, 'Văn Giang', 'Huyện', 24),
(335, 'Văn Lâm', 'Huyện', 24),
(336, 'Yên Mỹ', 'Huyện', 24),
(337, 'An Lão', 'Huyện', 25),
(338, 'An Nhơn', 'Huyện', 25),
(339, 'Hoài Ân', 'Huyện', 25),
(340, 'Hoài Nhơn', 'Huyện', 25),
(341, 'Phù Cát', 'Huyện', 25),
(342, 'Phù Mỹ', 'Huyện', 25),
(343, 'Quy Nhơn', 'Thành phố', 25),
(344, 'Tây Sơn', 'Huyện', 25),
(345, 'Tuy Phước', 'Huyện', 25),
(346, 'Vân Canh', 'Huyện', 25),
(347, 'Vĩnh Thạnh', 'Huyện', 25),
(348, 'Cái Bè', 'Huyện', 26),
(349, 'Cai Lậy', 'Thị xã', 26),
(350, 'Châu Thành', 'Huyện', 26),
(351, 'Chợ Gạo', 'Huyện', 26),
(352, 'Gò Công', 'Thị xã', 26),
(353, 'Gò Công Đông', 'Huyện', 26),
(354, 'Gò Công Tây', 'Huyện', 26),
(355, 'Huyện Cai Lậy', 'Huyện', 26),
(356, 'Mỹ Tho', 'Thành phố', 26),
(357, 'Tân Phú Đông', 'Huyện', 26),
(358, 'Tân Phước', 'Huyện', 26),
(359, 'Đông Hưng', 'Huyện', 27),
(360, 'Hưng Hà', 'Huyện', 27),
(361, 'Kiến Xương', 'Huyện', 27),
(362, 'Quỳnh Phụ', 'Huyện', 27),
(363, 'Thái Bình', 'Thành phố', 27),
(364, 'Thái Thuỵ', 'Huyện', 27),
(365, 'Tiền Hải', 'Huyện', 27),
(366, 'Vũ Thư', 'Huyện', 27),
(367, 'Bắc Giang', 'Thành phố', 28),
(368, 'Hiệp Hòa', 'Huyện', 28),
(369, 'Lạng Giang', 'Huyện', 28),
(370, 'Lục Nam', 'Huyện', 28),
(371, 'Lục Ngạn', 'Huyện', 28),
(372, 'Sơn Động', 'Huyện', 28),
(373, 'Tân Yên', 'Huyện', 28),
(374, 'Việt Yên', 'Huyện', 28),
(375, 'Yên Dũng', 'Huyện', 28),
(376, 'Yên Thế', 'Huyện', 28),
(377, 'Cao Phong', 'Huyện', 29),
(378, 'Đà Bắc', 'Huyện', 29),
(379, 'Hòa Bình', 'Thành phố', 29),
(380, 'Kim Bôi', 'Huyện', 29),
(381, 'Kỳ Sơn', 'Huyện', 29),
(382, 'Lạc Sơn', 'Huyện', 29),
(383, 'Lạc Thủy', 'Huyện', 29),
(384, 'Lương Sơn', 'Huyện', 29),
(385, 'Mai Châu', 'Huyện', 29),
(386, 'Tân Lạc', 'Huyện', 29),
(387, 'Yên Thủy', 'Huyện', 29),
(388, 'An Phú', 'Huyện', 30),
(389, 'Châu Đốc', 'Thị xã', 30),
(390, 'Châu Phú', 'Huyện', 30),
(391, 'Châu Thành', 'Huyện', 30),
(392, 'Chợ Mới', 'Huyện', 30),
(393, 'Long Xuyên', 'Thành phố', 30),
(394, 'Phú Tân', 'Huyện', 30),
(395, 'Tân Châu', 'Thị xã', 30),
(396, 'Thoại Sơn', 'Huyện', 30),
(397, 'Tịnh Biên', 'Huyện', 30),
(398, 'Tri Tôn', 'Huyện', 30),
(399, 'Bình Xuyên', 'Huyện', 31),
(400, 'Lập Thạch', 'Huyện', 31),
(401, 'Phúc Yên', 'Thị xã', 31),
(402, 'Sông Lô', 'Huyện', 31),
(403, 'Tam Đảo', 'Huyện', 31),
(404, 'Tam Dương', 'Huyện', 31),
(405, 'Vĩnh Tường', 'Huyện', 31),
(406, 'Vĩnh Yên', 'Thành phố', 31),
(407, 'Yên Lạc', 'Huyện', 31),
(408, 'Bến Cầu', 'Huyện', 32),
(409, 'Châu Thành', 'Huyện', 32),
(410, 'Dương Minh Châu', 'Huyện', 32),
(411, 'Gò Dầu', 'Huyện', 32),
(412, 'Hòa Thành', 'Huyện', 32),
(413, 'Tân Biên', 'Huyện', 32),
(414, 'Tân Châu', 'Huyện', 32),
(415, 'Tây Ninh', 'Thị xã', 32),
(416, 'Trảng Bàng', 'Huyện', 32),
(417, 'Đại Từ', 'Huyện', 33),
(418, 'Định Hóa', 'Huyện', 33),
(419, 'Đồng Hỷ', 'Huyện', 33),
(420, 'Phổ Yên', 'Huyện', 33),
(421, 'Phú Bình', 'Huyện', 33),
(422, 'Phú Lương', 'Huyện', 33),
(423, 'Sông Công', 'Thị xã', 33),
(424, 'Thái Nguyên', 'Thành phố', 33),
(425, 'Võ Nhai', 'Huyện', 33),
(426, 'Bắc Hà', 'Huyện', 34),
(427, 'Bảo Thắng', 'Huyện', 34),
(428, 'Bảo Yên', 'Huyện', 34),
(429, 'Bát Xát', 'Huyện', 34),
(430, 'Lào Cai', 'Thành phố', 34),
(431, 'Mường Khương', 'Huyện', 34),
(432, 'Sa Pa', 'Huyện', 34),
(433, 'Văn Bàn', 'Huyện', 34),
(434, 'Xi Ma Cai', 'Huyện', 34),
(435, 'Giao Thủy', 'Huyện', 35),
(436, 'Hải Hậu', 'Huyện', 35),
(437, 'Mỹ Lộc', 'Huyện', 35),
(438, 'Nam Định', 'Thành phố', 35),
(439, 'Nam Trực', 'Huyện', 35),
(440, 'Nghĩa Hưng', 'Huyện', 35),
(441, 'Trực Ninh', 'Huyện', 35),
(442, 'Vụ Bản', 'Huyện', 35),
(443, 'Xuân Trường', 'Huyện', 35),
(444, 'Ý Yên', 'Huyện', 35),
(445, 'Ba Tơ', 'Huyện', 36),
(446, 'Bình Sơn', 'Huyện', 36),
(447, 'Đức Phổ', 'Huyện', 36),
(448, 'Lý Sơn', 'Huyện', 36),
(449, 'Minh Long', 'Huyện', 36),
(450, 'Mộ Đức', 'Huyện', 36),
(451, 'Nghĩa Hành', 'Huyện', 36),
(452, 'Quảng Ngãi', 'Thành phố', 36),
(453, 'Sơn Hà', 'Huyện', 36),
(454, 'Sơn Tây', 'Huyện', 36),
(455, 'Sơn Tịnh', 'Huyện', 36),
(456, 'Tây Trà', 'Huyện', 36),
(457, 'Trà Bồng', 'Huyện', 36),
(458, 'Tư Nghĩa', 'Huyện', 36),
(459, 'Ba Tri', 'Huyện', 37),
(460, 'Bến Tre', 'Thành phố', 37),
(461, 'Bình Đại', 'Huyện', 37),
(462, 'Châu Thành', 'Huyện', 37),
(463, 'Chợ Lách', 'Huyện', 37),
(464, 'Giồng Trôm', 'Huyện', 37),
(465, 'Mỏ Cày Bắc', 'Huyện', 37),
(466, 'Mỏ Cày Nam', 'Huyện', 37),
(467, 'Thạnh Phú', 'Huyện', 37),
(468, 'Cư Jút', 'Huyện', 38),
(469, 'Dăk GLong', 'Huyện', 38),
(470, 'Dăk Mil', 'Huyện', 38),
(471, 'Dăk R\'Lấp', 'Huyện', 38),
(472, 'Dăk Song', 'Huyện', 38),
(473, 'Gia Nghĩa', 'Thị xã', 38),
(474, 'Krông Nô', 'Huyện', 38),
(475, 'Tuy Đức', 'Huyện', 38),
(476, 'Cà Mau', 'Thành phố', 39),
(477, 'Cái Nước', 'Huyện', 39),
(478, 'Đầm Dơi', 'Huyện', 39),
(479, 'Năm Căn', 'Huyện', 39),
(480, 'Ngọc Hiển', 'Huyện', 39),
(481, 'Phú Tân', 'Huyện', 39),
(482, 'Thới Bình', 'Huyện', 39),
(483, 'Trần Văn Thời', 'Huyện', 39),
(484, 'U Minh', 'Huyện', 39),
(485, 'Bình Minh', 'Huyện', 40),
(486, 'Bình Tân', 'Quận', 40),
(487, 'Long Hồ', 'Huyện', 40),
(488, 'Mang Thít', 'Huyện', 40),
(489, 'Tam Bình', 'Huyện', 40),
(490, 'Trà Ôn', 'Huyện', 40),
(491, 'Vĩnh Long', 'Thành phố', 40),
(492, 'Vũng Liêm', 'Huyện', 40),
(493, 'Gia Viễn', 'Huyện', 41),
(494, 'Hoa Lư', 'Huyện', 41),
(495, 'Kim Sơn', 'Huyện', 41),
(496, 'Nho Quan', 'Huyện', 41),
(497, 'Ninh Bình', 'Thành phố', 41),
(498, 'Tam Điệp', 'Thị xã', 41),
(499, 'Yên Khánh', 'Huyện', 41),
(500, 'Yên Mô', 'Huyện', 41),
(501, 'Cẩm Khê', 'Huyện', 42),
(502, 'Đoan Hùng', 'Huyện', 42),
(503, 'Hạ Hòa', 'Huyện', 42),
(504, 'Lâm Thao', 'Huyện', 42),
(505, 'Phù Ninh', 'Huyện', 42),
(506, 'Phú Thọ', 'Thị xã', 42),
(507, 'Tam Nông', 'Huyện', 42),
(508, 'Tân Sơn', 'Huyện', 42),
(509, 'Thanh Ba', 'Huyện', 42),
(510, 'Thanh Sơn', 'Huyện', 42),
(511, 'Thanh Thủy', 'Huyện', 42),
(512, 'Việt Trì', 'Thành phố', 42),
(513, 'Yên Lập', 'Huyện', 42),
(514, 'Bác Ái', 'Huyện', 43),
(515, 'Ninh Hải', 'Huyện', 43),
(516, 'Ninh Phước', 'Huyện', 43),
(517, 'Ninh Sơn', 'Huyện', 43),
(518, 'Phan Rang - Tháp Chàm', 'Thành phố', 43),
(519, 'Thuận Bắc', 'Huyện', 43),
(520, 'Thuận Nam', 'Huyện', 43),
(521, 'Đông Hòa', 'Huyện', 44),
(522, 'Đồng Xuân', 'Huyện', 44),
(523, 'Phú Hòa', 'Huyện', 44),
(524, 'Sơn Hòa', 'Huyện', 44),
(525, 'Sông Cầu', 'Thị xã', 44),
(526, 'Sông Hinh', 'Huyện', 44),
(527, 'Tây Hòa', 'Huyện', 44),
(528, 'Tuy An', 'Huyện', 44),
(529, 'Tuy Hòa', 'Thành phố', 44),
(530, 'Bình Lục', 'Huyện', 45),
(531, 'Duy Tiên', 'Huyện', 45),
(532, 'Kim Bảng', 'Huyện', 45),
(533, 'Lý Nhân', 'Huyện', 45),
(534, 'Phủ Lý', 'Thành phố', 45),
(535, 'Thanh Liêm', 'Huyện', 45),
(536, 'Cẩm Xuyên', 'Huyện', 46),
(537, 'Can Lộc', 'Huyện', 46),
(538, 'Đức Thọ', 'Huyện', 46),
(539, 'Hà Tĩnh', 'Thành phố', 46),
(540, 'Hồng Lĩnh', 'Thị xã', 46),
(541, 'Hương Khê', 'Huyện', 46),
(542, 'Hương Sơn', 'Huyện', 46),
(543, 'Kỳ Anh', 'Huyện', 46),
(544, 'Lộc Hà', 'Huyện', 46),
(545, 'Nghi Xuân', 'Huyện', 46),
(546, 'Thạch Hà', 'Huyện', 46),
(547, 'Vũ Quang', 'Huyện', 46),
(548, 'Cao Lãnh', 'Thành phố', 47),
(549, 'Châu Thành', 'Huyện', 47),
(550, 'Hồng Ngự', 'Thị xã', 47),
(551, 'Huyện Cao Lãnh', 'Huyện', 47),
(552, 'Huyện Hồng Ngự', 'Huyện', 47),
(553, 'Lai Vung', 'Huyện', 47),
(554, 'Lấp Vò', 'Huyện', 47),
(555, 'Sa Đéc', 'Thị xã', 47),
(556, 'Tam Nông', 'Huyện', 47),
(557, 'Tân Hồng', 'Huyện', 47),
(558, 'Thanh Bình', 'Huyện', 47),
(559, 'Tháp Mười', 'Huyện', 47),
(560, 'Châu Thành', 'Huyện', 48),
(561, 'Cù Lao Dung', 'Huyện', 48),
(562, 'Kế Sách', 'Huyện', 48),
(563, 'Long Phú', 'Huyện', 48),
(564, 'Mỹ Tú', 'Huyện', 48),
(565, 'Mỹ Xuyên', 'Huyện', 48),
(566, 'Ngã Năm', 'Huyện', 48),
(567, 'Sóc Trăng', 'Thành phố', 48),
(568, 'Thạnh Trị', 'Huyện', 48),
(569, 'Trần Đề', 'Huyện', 48),
(570, 'Vĩnh Châu', 'Huyện', 48),
(571, 'Đăk Glei', 'Huyện', 49),
(572, 'Đăk Hà', 'Huyện', 49),
(573, 'Đăk Tô', 'Huyện', 49),
(574, 'Ia H\'Drai', 'Huyện', 49),
(575, 'Kon Plông', 'Huyện', 49),
(576, 'Kon Rẫy', 'Huyện', 49),
(577, 'KonTum', 'Thành phố', 49),
(578, 'Ngọc Hồi', 'Huyện', 49),
(579, 'Sa Thầy', 'Huyện', 49),
(580, 'Tu Mơ Rông', 'Huyện', 49),
(581, 'Ba Đồn', 'Thị xã', 50),
(582, 'Bố Trạch', 'Huyện', 50),
(583, 'Đồng Hới', 'Thành phố', 50),
(584, 'Lệ Thủy', 'Huyện', 50),
(585, 'Minh Hóa', 'Huyện', 50),
(586, 'Quảng Ninh', 'Huyện', 50),
(587, 'Quảng Trạch', 'Huyện', 50),
(588, 'Tuyên Hóa', 'Huyện', 50),
(589, 'Cam Lộ', 'Huyện', 51),
(590, 'Đa Krông', 'Huyện', 51),
(591, 'Đảo Cồn cỏ', 'Huyện', 51),
(592, 'Đông Hà', 'Thành phố', 51),
(593, 'Gio Linh', 'Huyện', 51),
(594, 'Hải Lăng', 'Huyện', 51),
(595, 'Hướng Hóa', 'Huyện', 51),
(596, 'Quảng Trị', 'Thị xã', 51),
(597, 'Triệu Phong', 'Huyện', 51),
(598, 'Vĩnh Linh', 'Huyện', 51),
(599, 'Càng Long', 'Huyện', 52),
(600, 'Cầu Kè', 'Huyện', 52),
(601, 'Cầu Ngang', 'Huyện', 52),
(602, 'Châu Thành', 'Huyện', 52),
(603, 'Duyên Hải', 'Huyện', 52),
(604, 'Tiểu Cần', 'Huyện', 52),
(605, 'Trà Cú', 'Huyện', 52),
(606, 'Trà Vinh', 'Thành phố', 52),
(607, 'Châu Thành', 'Huyện', 53),
(608, 'Châu Thành A', 'Huyện', 53),
(609, 'Long Mỹ', 'Huyện', 53),
(610, 'Ngã Bảy', 'Thị xã', 53),
(611, 'Phụng Hiệp', 'Huyện', 53),
(612, 'Vị Thanh', 'Thành phố', 53),
(613, 'Vị Thủy', 'Huyện', 53),
(614, 'Bắc Yên', 'Huyện', 54),
(615, 'Mai Sơn', 'Huyện', 54),
(616, 'Mộc Châu', 'Huyện', 54),
(617, 'Mường La', 'Huyện', 54),
(618, 'Phù Yên', 'Huyện', 54),
(619, 'Quỳnh Nhai', 'Huyện', 54),
(620, 'Sơn La', 'Thành phố', 54),
(621, 'Sông Mã', 'Huyện', 54),
(622, 'Sốp Cộp', 'Huyện', 54),
(623, 'Thuận Châu', 'Huyện', 54),
(624, 'Vân Hồ', 'Huyện', 54),
(625, 'Yên Châu', 'Huyện', 54),
(626, 'Bạc Liêu', 'Thành phố', 55),
(627, 'Đông Hải', 'Huyện', 55),
(628, 'Giá Rai', 'Huyện', 55),
(629, 'Hòa Bình', 'Huyện', 55),
(630, 'Hồng Dân', 'Huyện', 55),
(631, 'Phước Long', 'Huyện', 55),
(632, 'Vĩnh Lợi', 'Huyện', 55),
(633, 'Lục Yên', 'Huyện', 56),
(634, 'Mù Cang Chải', 'Huyện', 56),
(635, 'Nghĩa Lộ', 'Thị xã', 56),
(636, 'Trạm Tấu', 'Huyện', 56),
(637, 'Trấn Yên', 'Huyện', 56),
(638, 'Văn Chấn', 'Huyện', 56),
(639, 'Văn Yên', 'Huyện', 56),
(640, 'Yên Bái', 'Thành phố', 56),
(641, 'Yên Bình', 'Huyện', 56),
(642, 'Chiêm Hóa', 'Huyện', 57),
(643, 'Hàm Yên', 'Huyện', 57),
(644, 'Lâm Bình', 'Huyện', 57),
(645, 'Na Hang', 'Huyện', 57),
(646, 'Sơn Dương', 'Huyện', 57),
(647, 'Tuyên Quang', 'Thành phố', 57),
(648, 'Yên Sơn', 'Huyện', 57),
(649, 'Điện Biên', 'Huyện', 58),
(650, 'Điện Biên Đông', 'Huyện', 58),
(651, 'Điện Biên Phủ', 'Thành phố', 58),
(652, 'Mường Ảng', 'Huyện', 58),
(653, 'Mường Chà', 'Huyện', 58),
(654, 'Mường Lay', 'Thị xã', 58),
(655, 'Mường Nhé', 'Huyện', 58),
(656, 'Nậm Pồ', 'Huyện', 58),
(657, 'Tủa Chùa', 'Huyện', 58),
(658, 'Tuần Giáo', 'Huyện', 58),
(659, 'Lai Châu', 'Thị xã', 59),
(660, 'Mường Tè', 'Huyện', 59),
(661, 'Nậm Nhùn', 'Huyện', 59),
(662, 'Phong Thổ', 'Huyện', 59),
(663, 'Sìn Hồ', 'Huyện', 59),
(664, 'Tam Đường', 'Huyện', 59),
(665, 'Tân Uyên', 'Huyện', 59),
(666, 'Than Uyên', 'Huyện', 59),
(667, 'Bắc Sơn', 'Huyện', 60),
(668, 'Bình Gia', 'Huyện', 60),
(669, 'Cao Lộc', 'Huyện', 60),
(670, 'Chi Lăng', 'Huyện', 60),
(671, 'Đình Lập', 'Huyện', 60),
(672, 'Hữu Lũng', 'Huyện', 60),
(673, 'Lạng Sơn', 'Thành phố', 60),
(674, 'Lộc Bình', 'Huyện', 60),
(675, 'Tràng Định', 'Huyện', 60),
(676, 'Văn Lãng', 'Huyện', 60),
(677, 'Văn Quan', 'Huyện', 60),
(678, 'Bắc Mê', 'Huyện', 61),
(679, 'Bắc Quang', 'Huyện', 61),
(680, 'Đồng Văn', 'Huyện', 61),
(681, 'Hà Giang', 'Thành phố', 61),
(682, 'Hoàng Su Phì', 'Huyện', 61),
(683, 'Mèo Vạc', 'Huyện', 61),
(684, 'Quản Bạ', 'Huyện', 61),
(685, 'Quang Bình', 'Huyện', 61),
(686, 'Vị Xuyên', 'Huyện', 61),
(687, 'Xín Mần', 'Huyện', 61),
(688, 'Yên Minh', 'Huyện', 61),
(689, 'Ba Bể', 'Huyện', 62),
(690, 'Bắc Kạn', 'Thị xã', 62),
(691, 'Bạch Thông', 'Huyện', 62),
(692, 'Chợ Đồn', 'Huyện', 62),
(693, 'Chợ Mới', 'Huyện', 62),
(694, 'Na Rì', 'Huyện', 62),
(695, 'Ngân Sơn', 'Huyện', 62),
(696, 'Pác Nặm', 'Huyện', 62),
(697, 'Bảo Lạc', 'Huyện', 63),
(698, 'Bảo Lâm', 'Huyện', 63),
(699, 'Cao Bằng', 'Thị xã', 63),
(700, 'Hạ Lang', 'Huyện', 63),
(701, 'Hà Quảng', 'Huyện', 63),
(702, 'Hòa An', 'Huyện', 63),
(703, 'Nguyên Bình', 'Huyện', 63),
(704, 'Phục Hòa', 'Huyện', 63),
(705, 'Quảng Uyên', 'Huyện', 63),
(706, 'Thạch An', 'Huyện', 63),
(707, 'Thông Nông', 'Huyện', 63),
(708, 'Trà Lĩnh', 'Huyện', 63),
(709, 'Trùng Khánh', 'Huyện', 63);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `forums`
--

CREATE TABLE `forums` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `content` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `founders`
--

CREATE TABLE `founders` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `founders`
--

INSERT INTO `founders` (`id`, `name`, `position`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'TS BS Nguyễn Hòa', 'Bác sĩ', '/uploads/images/thanh-vien--1667548880.png', 1, '2022-04-16 02:08:00', '2022-04-16 02:08:00'),
(2, 'TS BS Hoàng Lan', 'Bác sĩ', '/uploads/images/thanh-vien--1886721799.png', 1, '2022-04-16 02:08:00', '2022-04-16 02:08:00'),
(3, 'TS BS  Liên Đặng', 'CTO', '/uploads/images/thanh-vien--1587618393.png', 1, '2022-04-16 02:08:00', '2022-04-16 02:08:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(26, 'default', '{\"displayName\":\"App\\\\Events\\\\MyEventEmployee\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":7:{s:5:\\\"event\\\";O:26:\\\"App\\\\Events\\\\MyEventEmployee\\\":2:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:28:\\\"App\\\\models\\\\employee\\\\Employee\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1584938132, 1584938132);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `flagIcon` varchar(255) DEFAULT NULL,
  `viName` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `language`
--

INSERT INTO `language` (`id`, `code`, `name`, `status`, `priority`, `flagIcon`, `viName`, `updated_at`, `created_at`) VALUES
(4, 'en-US', 'Tiếng anh', 1, 2, '/uploads/images/1092120966en.jpg', NULL, '2020-01-20 04:31:14', '2020-01-17 21:32:05'),
(6, 'vi', 'Tiếng Việt', 1, 1, '/uploads/images/17568878711.jpg', NULL, '2020-01-20 04:30:10', '2020-01-17 21:38:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `language_static`
--

CREATE TABLE `language_static` (
  `languageKey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `languageDefaultValue` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `language_static`
--

INSERT INTO `language_static` (`languageKey`, `languageDefaultValue`, `created_at`, `updated_at`) VALUES
('about_us', 'about_us', '2020-01-20 07:52:54', '2020-01-20 07:52:54'),
('acd', 'acd', '2019-10-28 08:37:03', '2019-10-28 08:37:03'),
('address', 'address', '2020-01-20 07:50:59', '2020-01-20 07:50:59'),
('address2', 'address2', '2020-02-10 04:51:20', '2020-02-10 04:51:20'),
('Bewiseconsumer', 'Bewiseconsumer', '2020-01-21 00:30:00', '2020-01-21 00:30:00'),
('callpreview', 'callpreview', '2020-02-11 05:08:19', '2020-02-11 05:08:19'),
('calltuvan', 'calltuvan', '2020-01-20 08:38:22', '2020-01-20 08:38:22'),
('category', 'category', '2020-01-20 20:33:03', '2020-01-20 20:33:03'),
('contact', 'contact', '2020-01-20 07:33:49', '2020-01-20 07:33:49'),
('Contactinformation', 'Contactinformation', '2020-01-20 08:52:22', '2020-01-20 08:52:22'),
('content', 'content', '2020-01-20 08:59:16', '2020-01-20 08:59:16'),
('description', 'description', '2020-01-20 08:36:59', '2020-01-20 08:36:59'),
('Discovernow', 'Discovernow', '2020-01-21 00:41:33', '2020-01-21 00:41:33'),
('featured_categories', 'featured_categories', '2020-01-20 07:47:22', '2020-01-20 07:47:22'),
('featured_news', 'featured_news', '2020-01-20 07:49:15', '2020-01-20 07:49:15'),
('featured_product', 'featured_product', '2020-01-20 08:16:22', '2020-01-20 08:16:22'),
('fromnature', 'fromnature', '2020-01-21 00:29:00', '2020-01-21 00:29:00'),
('grass_straws', 'grass_straws', '2020-01-20 07:58:35', '2020-01-20 07:58:35'),
('Grassstraws', 'Grassstraws', '2020-01-21 00:26:56', '2020-01-21 00:26:56'),
('hoten', 'hoten', '2020-01-20 08:57:43', '2020-01-20 08:57:43'),
('language', 'language', '2020-01-20 09:01:08', '2020-01-20 09:01:08'),
('Luxurious', 'Luxurious', '2020-01-30 01:50:39', '2020-01-30 01:50:39'),
('Material', 'Material', '2020-01-30 01:53:45', '2020-01-30 01:53:45'),
('nature', 'nature', '2020-01-30 01:54:32', '2020-01-30 01:54:32'),
('news', 'news', '2019-10-28 08:21:33', '2019-10-28 08:21:33'),
('no_products', 'no_products', '2020-01-20 08:22:52', '2020-01-20 08:22:52'),
('phone', 'phone', '2020-01-20 08:58:41', '2020-01-20 08:58:41'),
('Pleasefillthemessage', 'Pleasefillthemessage', '2020-01-20 08:53:48', '2020-01-20 08:53:48'),
('product', 'product', '2020-01-20 07:32:30', '2020-01-20 07:32:30'),
('Productreviews', 'Productreviews', '2020-01-20 08:37:39', '2020-01-20 08:37:39'),
('Rattan', 'Rattan', '2020-01-30 01:52:39', '2020-01-30 01:52:39'),
('same_products', 'same_products', '2020-01-20 08:29:53', '2020-01-20 08:29:53'),
('search_product', 'search_product', '2020-01-20 07:35:56', '2020-01-20 07:35:56'),
('Sendinformation', 'Sendinformation', '2020-01-20 08:53:08', '2020-01-20 08:53:08'),
('sendmessage', 'sendmessage', '2020-01-20 08:54:37', '2020-01-20 08:54:37'),
('size', 'size', '2020-01-20 08:17:30', '2020-01-20 08:17:30'),
('status', 'status', '2020-01-20 08:33:49', '2020-01-20 08:33:49'),
('Stocking', 'Stocking', '2020-01-20 08:34:37', '2020-01-20 08:34:37'),
('storemap', 'storemap', '2020-01-20 08:56:34', '2020-01-20 08:56:34'),
('Straws', 'Straws', '2020-01-30 01:41:09', '2020-01-30 01:41:09'),
('Strawsfrombamboo', 'Strawsfrombamboo', '2020-01-30 01:43:23', '2020-01-30 01:43:23'),
('suport', 'suport', '2020-01-20 09:09:07', '2020-01-20 09:09:07'),
('titlehome', 'titlehome', '2020-02-11 07:34:51', '2020-02-11 07:34:51'),
('Trangchu', 'Home', '2019-10-28 08:11:09', '2019-10-28 08:11:09'),
('updating', 'updating', '2020-01-20 08:18:27', '2020-01-20 08:18:27'),
('Woodproducts', 'Woodproducts', '2020-01-30 01:49:48', '2020-01-30 01:49:48'),
('Wouldyoulike', 'Wouldyoulike', '2020-01-20 08:35:28', '2020-01-20 08:35:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `language_static_by_lang`
--

CREATE TABLE `language_static_by_lang` (
  `languageStaticKey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `languageCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `languageValue` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `language_static_by_lang`
--

INSERT INTO `language_static_by_lang` (`languageStaticKey`, `languageCode`, `languageValue`) VALUES
('about_us', 'vi', 'Về Chúng Tôi'),
('about_us', 'en-US', 'About Us'),
('acd', 'vi', 'acd vi'),
('acd', 'ja', 'acd ja'),
('acd', 'da-DK', 'acd ac'),
('address', 'vi', 'Trụ sở'),
('address', 'en-US', 'Headquarters'),
('address2', 'vi', 'Văn phòng'),
('address2', 'en-US', 'Representative office'),
('Bewiseconsumer', 'vi', 'Hãy là người tiêu dùng thông thái'),
('Bewiseconsumer', 'en-US', 'Be wise consumer'),
('callpreview', 'vi', 'Gọi điện để được tư vấn:'),
('callpreview', 'en-US', 'Call for advice:'),
('calltuvan', 'vi', 'Gọi điện để được tư vấn'),
('calltuvan', 'en-US', 'Call for advice'),
('category', 'vi', 'Danh mục'),
('category', 'en-US', 'Category'),
('contact', 'vi', 'Liên hệ'),
('contact', 'en-US', 'Contact'),
('Contactinformation', 'en-US', 'Contactin formation'),
('Contactinformation', 'vi', 'Thông tin liên hệ'),
('content', 'vi', 'Nội dung'),
('content', 'en-US', 'Content'),
('description', 'vi', 'Mô tả'),
('description', 'en-US', 'Description'),
('Discovernow', 'en-US', ' Discover now'),
('Discovernow', 'vi', 'Khám phá ngay'),
('featured_categories', 'vi', 'Danh mục nổi bật'),
('featured_categories', 'en-US', 'Featured categories'),
('featured_news', 'en-US', ' Featured news'),
('featured_news', 'vi', 'Tin tức nổi bật'),
('featured_product', 'vi', 'Sản phẩm mới nhất'),
('featured_product', 'en-US', 'Featured product'),
('fromnature', 'en-US', ' from nature'),
('fromnature', 'vi', 'từ thiên nhiên'),
('grass_straws', 'vi', 'Ống hút cỏ từ thiên nhiên!'),
('grass_straws', 'en-US', 'Grass straws from nature!'),
('Grassstraws', 'en-US', ' Grasss traws'),
('Grassstraws', 'vi', 'Ống hút cỏ'),
('hoten', 'en-US', 'Họ Tên'),
('hoten', 'vi', 'Full name'),
('language', 'vi', 'Ngôn ngữ'),
('language', 'en-US', 'Language'),
('Luxurious', 'en-US', 'Luxurious'),
('Luxurious', 'vi', 'Sang Trọng'),
('Material', 'vi', 'Chất liệu'),
('Material', 'en-US', 'Material'),
('nature', 'en-US', 'Nature'),
('nature', 'vi', 'Thiên nhiên'),
('news', 'vi', 'Tin tức'),
('news', 'ja', 'News'),
('news', 'da-DK', 'tin tức'),
('news', 'en-US', 'News'),
('no_products', 'en-US', 'No products in this category.'),
('no_products', 'vi', 'Không có sản phẩm nào trong danh mục này.'),
('phone', 'vi', 'Số điện thoại'),
('phone', 'en-US', 'Phone'),
('Pleasefillthemessage', 'vi', 'Bạn hãy điền nội dung tin nhắn vào form dưới đây và gửi cho chúng tôi. Chúng tôi sẽ trả lời bạn sau khi nhận được.'),
('Pleasefillthemessage', 'en-US', 'Please fill the message content in the form below and send it to us. We will reply you after receiving.'),
('product', 'vi', 'Sản phẩm'),
('product', 'ja', 'Product'),
('product', 'en-US', 'Product'),
('Productreviews', 'en-US', 'Product reviews'),
('Productreviews', 'vi', 'Mô tả sản phẩm'),
('Rattan', 'en-US', 'Rattan'),
('Rattan', 'vi', 'Mây tre'),
('same_products', 'en-US', 'Products of the same type'),
('same_products', 'vi', 'Sản phẩm cùng loại'),
('search_product', 'vi', 'Tìm kiếm sản phẩm'),
('search_product', 'en-US', 'Search product'),
('Sendinformation', 'vi', 'Gửi thông tin'),
('Sendinformation', 'en-US', 'Send information'),
('sendmessage', 'vi', 'Gửi tin nhắn'),
('sendmessage', 'en-US', 'Send Message'),
('size', 'vi', 'Kích thước'),
('size', 'en-US', 'Size'),
('status', 'vi', 'Trạng thái'),
('status', 'en-US', 'Status'),
('Stocking', 'vi', 'Còn hàng'),
('Stocking', 'en-US', 'Stocking'),
('storemap', 'en-US', 'Store map'),
('storemap', 'vi', 'Bản đồ cửa hàng'),
('Straws', 'vi', 'Ống hút'),
('Straws', 'en-US', 'Straws'),
('Strawsfrombamboo', 'vi', 'Ống hút từ tre'),
('Strawsfrombamboo', 'en-US', 'Straws from bamboo'),
('suport', 'vi', 'Hỗ trợ'),
('suport', 'en-US', 'Suport'),
('titlehome', 'en-US', 'Products from bamboo and rattan, wood, '),
('titlehome', 'vi', 'Sản phẩm từ tre mây, gỗ'),
('Trangchu', 'vi', 'Trang chủ'),
('Trangchu', 'ja', 'Home'),
('Trangchu', 'da-DK', 'Home'),
('Trangchu', 'en-US', 'Home'),
('updating', 'vi', 'Đang cập nhật'),
('updating', 'en-US', 'Updating'),
('Woodproducts', 'en-US', 'Wood products'),
('Woodproducts', 'vi', 'Sản phẩm từ gỗ'),
('Wouldyoulike', 'en-US', 'You might like'),
('Wouldyoulike', 'vi', 'Bạn có thể thích');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `title`, `parent_id`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'trang chu', 0, 'a', 1, '2019-09-06 00:10:07', '2019-09-06 00:10:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mess_contact`
--

CREATE TABLE `mess_contact` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `mess` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mess_contact`
--

INSERT INTO `mess_contact` (`id`, `name`, `email`, `phone`, `mess`, `created_at`, `updated_at`) VALUES
(2, 'LE TUAN ANH', 'tuananhdinamo1122@gmail.com', '0373631368', 'aaa', '2021-10-15 08:22:08', '2021-10-15 08:22:08'),
(3, NULL, NULL, '0886424678', 'Ứng tuyển đại lý', '2021-12-01 07:48:30', '2021-12-01 07:48:30'),
(4, 'LE TUAN ANH', NULL, '0373631369', 'a', '2021-12-01 07:50:50', '2021-12-01 07:50:50'),
(5, NULL, NULL, '03736313129', NULL, '2021-12-23 11:45:02', '2021-12-23 11:45:02'),
(6, NULL, NULL, '03736313689', NULL, '2021-12-23 11:46:28', '2021-12-23 11:46:28'),
(7, NULL, NULL, '03736313689', NULL, '2021-12-23 11:47:59', '2021-12-23 11:47:59'),
(8, NULL, NULL, '0373631369', 'Số điện thoại cần tư vấn', '2021-12-23 11:48:22', '2021-12-23 11:48:22'),
(9, 'LE TUAN ANH', 'tuananhdinamo1122@gmail.com', '0373631365', 'Hẹn lịch đến xem hàng', '2021-12-24 09:21:16', '2021-12-24 09:21:16'),
(10, 'LE TUAN ANH', 'tuananhdinamo1122@gmail.com', '0373631365', 'noel', '2021-12-24 11:36:16', '2021-12-24 11:36:16'),
(11, 'LE TUAN ANH', 'tuananhdinamo1122@gmail.com', '0373631365', 'Đăng ký nhận báo giá', '2021-12-24 19:06:41', '2021-12-24 19:06:41'),
(12, 'LE TUAN ANH', 'tuananhdinamo1122@gmail.com', '0373631365', 'a', '2021-12-24 21:08:52', '2021-12-24 21:08:52'),
(13, 'LE TUAN ANHA', 'tuananhdinamo12122@gmail.com', '0373631365', 'AA', '2022-03-06 08:00:55', '2022-03-06 08:00:55'),
(14, 'LE TUAN ANHAAA', 'tuananhdinamo1122@gmail.com', '0373631365', 'ADFAFDAD', '2022-03-06 08:01:21', '2022-03-06 08:01:21'),
(15, 'LE TUAN ANH', 'tuananhdinamo1122@gmail.com', 'AA', 'AAA', '2022-03-06 08:01:48', '2022-03-06 08:01:48'),
(16, 'LE TUAN ANH', 'tuananhdinamo12122@gmail.com', '0373631365', NULL, '2022-08-09 11:01:06', '2022-08-09 11:01:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2019_11_12_072548_create_notifications_table', 2),
(9, '2019_11_20_082303_create_websockets_statistics_entries_table', 3),
(14, '2014_10_12_000000_create_users_table', 4),
(15, '2014_10_12_100000_create_password_resets_table', 4),
(16, '2016_06_01_000001_create_oauth_auth_codes_table', 4),
(17, '2016_06_01_000002_create_oauth_access_tokens_table', 4),
(18, '2016_06_01_000003_create_oauth_refresh_tokens_table', 4),
(19, '2016_06_01_000004_create_oauth_clients_table', 4),
(20, '2016_06_01_000005_create_oauth_personal_access_clients_table', 4),
(21, '2019_12_14_031230_create_permissions_table', 4),
(22, '2019_12_14_031241_create_roles_table', 4),
(23, '2019_12_14_031410_create_users_permissions_table', 4),
(24, '2019_12_14_031420_create_users_roles_table', 4),
(25, '2020_03_17_135247_create_jobs_table', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('07110f84-9dad-42c2-9406-44c1cecd4377', 'App\\Notifications\\testNoti', 'App\\User', 3, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$DGq0yTOvgD37ldbvY46LheCiRwMjLwywyAYLswFEEx3mgXcvRexIi\",\"status\":1,\"updated_at\":\"2020-05-02 07:00:49\",\"created_at\":\"2020-05-02 07:00:49\",\"id\":7}}', NULL, '2020-05-02 00:00:49', '2020-05-02 00:00:49'),
('1633f68f-3538-4ec2-9f25-405eeb3f987b', 'App\\Notifications\\CustomerRigisterNotify', 'App\\Customer', 11, '{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$.HNjoBk4nq7kjvYofHQOBusIshNFTi4r.5FWcDYbTa4PQSxdqCGbq\",\"status\":1,\"updated_at\":\"2020-05-02 07:12:46\",\"created_at\":\"2020-05-02 07:12:46\",\"id\":11},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$.HNjoBk4nq7kjvYofHQOBusIshNFTi4r.5FWcDYbTa4PQSxdqCGbq\",\"status\":1,\"updated_at\":\"2020-05-02 07:12:46\",\"created_at\":\"2020-05-02 07:12:46\",\"id\":11}}', NULL, '2020-05-02 00:12:46', '2020-05-02 00:12:46'),
('1cb89ee6-2d98-4132-af87-00b1aebad324', 'App\\Notifications\\testNoti', 'App\\User', 1, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$SRRfBF1t0FRY81v3vijpPuFkgfNRbpDGUH0ZFPDFIThpkHghQTqcm\",\"status\":1,\"updated_at\":\"2020-05-02 07:04:02\",\"created_at\":\"2020-05-02 07:04:02\",\"id\":9}}', NULL, '2020-05-02 00:04:02', '2020-05-02 00:04:02'),
('1f87ed9d-4ff7-4ff9-9f45-d62e01116491', 'App\\Notifications\\CustomerRigisterNotify', 'App\\Customer', 4, '{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":\"toilatoi@gmail.com\",\"password\":\"$2y$10$jkYF7ESGTWItWgVK\\/tGNZOcEWZ0C.tpt4KhR9CENsYmVoWyI5Km7a\",\"status\":1,\"updated_at\":\"2020-05-02 06:07:52\",\"created_at\":\"2020-05-02 06:07:52\",\"id\":4},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":\"toilatoi@gmail.com\",\"password\":\"$2y$10$jkYF7ESGTWItWgVK\\/tGNZOcEWZ0C.tpt4KhR9CENsYmVoWyI5Km7a\",\"status\":1,\"updated_at\":\"2020-05-02 06:07:52\",\"created_at\":\"2020-05-02 06:07:52\",\"id\":4}}', NULL, '2020-05-01 23:07:54', '2020-05-01 23:07:54'),
('20de1a49-a75b-4200-a3b3-610b04aaa580', 'App\\Notifications\\testNoti', 'App\\User', 3, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"tuananhdinamo1122@gmail.com\",\"password\":\"$2y$10$idsymEnwcU9YqKqpu444fOm\\/o56FKYafkPDpi6Da.Av2EG1.2UQOq\",\"status\":1,\"updated_at\":\"2020-05-01 16:29:14\",\"created_at\":\"2020-05-01 16:29:14\",\"id\":3}}', NULL, '2020-05-01 09:29:14', '2020-05-01 09:29:14'),
('22b75348-7fe2-4db5-a838-3ca244bea9f9', 'App\\Notifications\\CustomerRigisterNotify', 'App\\Customer', 6, '{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$KMeDeZop\\/5v0\\/VhJN0LLleF.A3GplufNZjWDg939AIqYTPHfJE3wO\",\"status\":1,\"updated_at\":\"2020-05-02 06:54:48\",\"created_at\":\"2020-05-02 06:54:48\",\"id\":6},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$KMeDeZop\\/5v0\\/VhJN0LLleF.A3GplufNZjWDg939AIqYTPHfJE3wO\",\"status\":1,\"updated_at\":\"2020-05-02 06:54:48\",\"created_at\":\"2020-05-02 06:54:48\",\"id\":6}}', NULL, '2020-05-01 23:54:48', '2020-05-01 23:54:48'),
('28e91e29-b471-4141-bedd-6dd845b3a44d', 'App\\Notifications\\testNoti', 'App\\User', 1, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"tuananhdinamo1122@gmail.com\",\"password\":\"$2y$10$idsymEnwcU9YqKqpu444fOm\\/o56FKYafkPDpi6Da.Av2EG1.2UQOq\",\"status\":1,\"updated_at\":\"2020-05-01 16:29:14\",\"created_at\":\"2020-05-01 16:29:14\",\"id\":3}}', NULL, '2020-05-01 09:29:14', '2020-05-01 09:29:14'),
('3a178ce0-8415-413c-9a73-bdf005b78078', 'App\\Notifications\\testNoti', 'App\\User', 1, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$KMeDeZop\\/5v0\\/VhJN0LLleF.A3GplufNZjWDg939AIqYTPHfJE3wO\",\"status\":1,\"updated_at\":\"2020-05-02 06:54:48\",\"created_at\":\"2020-05-02 06:54:48\",\"id\":6}}', NULL, '2020-05-01 23:54:48', '2020-05-01 23:54:48'),
('44259369-3891-42e3-a824-ee41fe589d1f', 'App\\Notifications\\testNoti', 'App\\User', 1, '{\"thread\":{\"email\":\"toilatoi@gmail.com\",\"password\":\"$2y$10$oIhsZhcA.rnqQbTmH3hm2.hfuMPnIMLW4U5d2BbxxvyaK9jqAwbDO\",\"name\":\"tuan\",\"phone\":\"0849849849\",\"address\":\"aaaaaaaaa\",\"bank_account\":\"1233\",\"cmnd\":\"16555551\",\"gender_personal\":\"nam\",\"day_cmnd\":\"a\",\"address_cmnd\":\"a\",\"avt_personall\":\"\\/uploads\\/customer\\/1292737217Capture.PNG\",\"img_cmnd_affer\":\"\\/uploads\\/customer\\/328541247Bill_1.jpg\",\"img_cmnd_before\":\"\\/uploads\\/customer\\/787041503chu-tich-honda(1).jpg\",\"updated_at\":\"2020-05-02 14:38:04\",\"created_at\":\"2020-05-02 14:38:04\",\"id\":1}}', NULL, '2020-05-02 07:38:05', '2020-05-02 07:38:05'),
('4863724c-4855-4416-ad24-4d29a7c47c54', 'App\\Notifications\\CustomerRigisterNotify', 'App\\Customer', 10, '{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$ti7MZtyD9lRxkfWreyiB9eIy3qSTtBVBx6H3TBnR6O5MSgO2Vbnri\",\"status\":1,\"updated_at\":\"2020-05-02 07:11:57\",\"created_at\":\"2020-05-02 07:11:57\",\"id\":10},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$ti7MZtyD9lRxkfWreyiB9eIy3qSTtBVBx6H3TBnR6O5MSgO2Vbnri\",\"status\":1,\"updated_at\":\"2020-05-02 07:11:57\",\"created_at\":\"2020-05-02 07:11:57\",\"id\":10}}', NULL, '2020-05-02 00:11:58', '2020-05-02 00:11:58'),
('4918cfc3-8b51-4cbb-9a87-43a9f26dda40', 'App\\Notifications\\testNoti', 'App\\User', 3, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$Ye\\/1Dq2n7ndj7w64RkNJ0OLKBin9FAgnVJGsp3H\\/K7dW6uoAEWJUi\",\"status\":1,\"updated_at\":\"2020-05-02 06:54:12\",\"created_at\":\"2020-05-02 06:54:12\",\"id\":5}}', NULL, '2020-05-01 23:54:13', '2020-05-01 23:54:13'),
('4dee4195-7cca-458e-a96e-185aa5c228c8', 'App\\Notifications\\testNoti', 'App\\User', 3, '{\"thread\":{\"email\":\"admins\",\"password\":\"$2y$10$UgnKR8ac\\/0bVrs1UG4H\\/suarDQw6HWWQEn.HBVA5ticNeToLf9atO\",\"name\":null,\"phone\":null,\"address\":null,\"cmnd\":null,\"day_cmnd\":null,\"address_cmnd\":null,\"avt_personall\":\"\\/uploads\\/customer\\/524353481935_14-079-03_4A4A0064.jpg\",\"updated_at\":\"2020-05-02 09:29:13\",\"created_at\":\"2020-05-02 09:29:13\",\"id\":12}}', NULL, '2020-05-02 02:29:14', '2020-05-02 02:29:14'),
('505747f8-8636-49d3-b398-a7257d2f4081', 'App\\Notifications\\testNoti', 'App\\User', 1, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$DGq0yTOvgD37ldbvY46LheCiRwMjLwywyAYLswFEEx3mgXcvRexIi\",\"status\":1,\"updated_at\":\"2020-05-02 07:00:49\",\"created_at\":\"2020-05-02 07:00:49\",\"id\":7}}', NULL, '2020-05-02 00:00:49', '2020-05-02 00:00:49'),
('545807d1-b982-45bf-a4cd-3933a3b1b258', 'App\\Notifications\\testNoti', 'App\\User', 1, '{\"thread\":{\"email\":\"admins\",\"password\":\"$2y$10$UgnKR8ac\\/0bVrs1UG4H\\/suarDQw6HWWQEn.HBVA5ticNeToLf9atO\",\"name\":null,\"phone\":null,\"address\":null,\"cmnd\":null,\"day_cmnd\":null,\"address_cmnd\":null,\"avt_personall\":\"\\/uploads\\/customer\\/524353481935_14-079-03_4A4A0064.jpg\",\"updated_at\":\"2020-05-02 09:29:13\",\"created_at\":\"2020-05-02 09:29:13\",\"id\":12}}', NULL, '2020-05-02 02:29:13', '2020-05-02 02:29:13'),
('54f07417-7aac-4a25-b8b3-75d0d713087d', 'App\\Notifications\\testNoti', 'App\\User', 3, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$SRRfBF1t0FRY81v3vijpPuFkgfNRbpDGUH0ZFPDFIThpkHghQTqcm\",\"status\":1,\"updated_at\":\"2020-05-02 07:04:02\",\"created_at\":\"2020-05-02 07:04:02\",\"id\":9}}', NULL, '2020-05-02 00:04:02', '2020-05-02 00:04:02'),
('5897aad8-23b3-4ce8-b4e7-964805df2a0f', 'App\\Notifications\\testNoti', 'App\\User', 3, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$.HNjoBk4nq7kjvYofHQOBusIshNFTi4r.5FWcDYbTa4PQSxdqCGbq\",\"status\":1,\"updated_at\":\"2020-05-02 07:12:46\",\"created_at\":\"2020-05-02 07:12:46\",\"id\":11}}', NULL, '2020-05-02 00:12:46', '2020-05-02 00:12:46'),
('5afdaeea-af51-4559-856b-88ff62eca506', 'App\\Notifications\\CustomerRigisterNotify', 'App\\Customer', 5, '{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$Ye\\/1Dq2n7ndj7w64RkNJ0OLKBin9FAgnVJGsp3H\\/K7dW6uoAEWJUi\",\"status\":1,\"updated_at\":\"2020-05-02 06:54:12\",\"created_at\":\"2020-05-02 06:54:12\",\"id\":5},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$Ye\\/1Dq2n7ndj7w64RkNJ0OLKBin9FAgnVJGsp3H\\/K7dW6uoAEWJUi\",\"status\":1,\"updated_at\":\"2020-05-02 06:54:12\",\"created_at\":\"2020-05-02 06:54:12\",\"id\":5}}', NULL, '2020-05-01 23:54:13', '2020-05-01 23:54:13'),
('5e49e269-ebaf-48cc-b905-6c89cb7412be', 'App\\Notifications\\testNoti', 'App\\User', 1, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$.HNjoBk4nq7kjvYofHQOBusIshNFTi4r.5FWcDYbTa4PQSxdqCGbq\",\"status\":1,\"updated_at\":\"2020-05-02 07:12:46\",\"created_at\":\"2020-05-02 07:12:46\",\"id\":11}}', NULL, '2020-05-02 00:12:46', '2020-05-02 00:12:46'),
('65d16be4-d7a2-4925-9631-acc6453b953e', 'App\\Notifications\\testNoti', 'App\\User', 1, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":null,\"password\":\"$2y$10$v1HovYV2SOJ\\/VZY8iD3uQ.MetgWrnkF75pMJ3UARFfo7.8Kr8mGc2\",\"status\":1,\"updated_at\":\"2020-05-01 16:20:26\",\"created_at\":\"2020-05-01 16:20:26\",\"id\":2}}', NULL, '2020-05-01 09:20:27', '2020-05-01 09:20:27'),
('678841cc-99f0-4a9e-98d6-5864073b8d84', 'App\\Notifications\\testNoti', 'App\\User', 1, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$ti7MZtyD9lRxkfWreyiB9eIy3qSTtBVBx6H3TBnR6O5MSgO2Vbnri\",\"status\":1,\"updated_at\":\"2020-05-02 07:11:57\",\"created_at\":\"2020-05-02 07:11:57\",\"id\":10}}', NULL, '2020-05-02 00:11:57', '2020-05-02 00:11:57'),
('7201260a-7aed-417d-9dc2-209a7c9510b9', 'App\\Notifications\\testNoti', 'App\\User', 1, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"toilatoi@gmail.com\",\"password\":\"$2y$10$jkYF7ESGTWItWgVK\\/tGNZOcEWZ0C.tpt4KhR9CENsYmVoWyI5Km7a\",\"status\":1,\"updated_at\":\"2020-05-02 06:07:52\",\"created_at\":\"2020-05-02 06:07:52\",\"id\":4}}', NULL, '2020-05-01 23:07:53', '2020-05-01 23:07:53'),
('7908ed49-fcd8-4269-bf52-a23b4a9da08f', 'App\\Notifications\\CustomerRigisterNotify', 'App\\Customer', 7, '{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$DGq0yTOvgD37ldbvY46LheCiRwMjLwywyAYLswFEEx3mgXcvRexIi\",\"status\":1,\"updated_at\":\"2020-05-02 07:00:49\",\"created_at\":\"2020-05-02 07:00:49\",\"id\":7},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$DGq0yTOvgD37ldbvY46LheCiRwMjLwywyAYLswFEEx3mgXcvRexIi\",\"status\":1,\"updated_at\":\"2020-05-02 07:00:49\",\"created_at\":\"2020-05-02 07:00:49\",\"id\":7}}', NULL, '2020-05-02 00:00:49', '2020-05-02 00:00:49'),
('82417afd-5a31-415f-956d-ec6798922c23', 'App\\Notifications\\testNoti', 'App\\User', 3, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$KMeDeZop\\/5v0\\/VhJN0LLleF.A3GplufNZjWDg939AIqYTPHfJE3wO\",\"status\":1,\"updated_at\":\"2020-05-02 06:54:48\",\"created_at\":\"2020-05-02 06:54:48\",\"id\":6}}', NULL, '2020-05-01 23:54:48', '2020-05-01 23:54:48'),
('82ae97c6-d4f1-4884-8b62-3f5be6d691f0', 'App\\Notifications\\testNoti', 'App\\User', 3, '{\"thread\":{\"email\":\"toilatoi@gmail.com\",\"password\":\"$2y$10$oIhsZhcA.rnqQbTmH3hm2.hfuMPnIMLW4U5d2BbxxvyaK9jqAwbDO\",\"name\":\"tuan\",\"phone\":\"0849849849\",\"address\":\"aaaaaaaaa\",\"bank_account\":\"1233\",\"cmnd\":\"16555551\",\"gender_personal\":\"nam\",\"day_cmnd\":\"a\",\"address_cmnd\":\"a\",\"avt_personall\":\"\\/uploads\\/customer\\/1292737217Capture.PNG\",\"img_cmnd_affer\":\"\\/uploads\\/customer\\/328541247Bill_1.jpg\",\"img_cmnd_before\":\"\\/uploads\\/customer\\/787041503chu-tich-honda(1).jpg\",\"updated_at\":\"2020-05-02 14:38:04\",\"created_at\":\"2020-05-02 14:38:04\",\"id\":1}}', NULL, '2020-05-02 07:38:05', '2020-05-02 07:38:05'),
('86170365-5927-4385-8861-5c24c5b37bff', 'App\\Notifications\\testNoti', 'App\\User', 1, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$NK3EuJedC6SdP2zzwVm3\\/epwpbMi9RAF3MiVg5RUAbXcf9sUlfE4G\",\"status\":1,\"updated_at\":\"2020-05-02 07:03:19\",\"created_at\":\"2020-05-02 07:03:19\",\"id\":8}}', NULL, '2020-05-02 00:03:19', '2020-05-02 00:03:19'),
('89b9bdb1-9692-426d-a76b-0e66cdfd0e66', 'App\\Notifications\\CustomerRigisterNotify', 'App\\Customer', 1, '{\"createCustomer\":{\"email\":\"toilatoi@gmail.com\",\"password\":\"$2y$10$oIhsZhcA.rnqQbTmH3hm2.hfuMPnIMLW4U5d2BbxxvyaK9jqAwbDO\",\"name\":\"tuan\",\"phone\":\"0849849849\",\"address\":\"aaaaaaaaa\",\"bank_account\":\"1233\",\"cmnd\":\"16555551\",\"gender_personal\":\"nam\",\"day_cmnd\":\"a\",\"address_cmnd\":\"a\",\"avt_personall\":\"\\/uploads\\/customer\\/1292737217Capture.PNG\",\"img_cmnd_affer\":\"\\/uploads\\/customer\\/328541247Bill_1.jpg\",\"img_cmnd_before\":\"\\/uploads\\/customer\\/787041503chu-tich-honda(1).jpg\",\"updated_at\":\"2020-05-02 14:38:04\",\"created_at\":\"2020-05-02 14:38:04\",\"id\":1},\"admin\":{\"email\":\"toilatoi@gmail.com\",\"password\":\"$2y$10$oIhsZhcA.rnqQbTmH3hm2.hfuMPnIMLW4U5d2BbxxvyaK9jqAwbDO\",\"name\":\"tuan\",\"phone\":\"0849849849\",\"address\":\"aaaaaaaaa\",\"bank_account\":\"1233\",\"cmnd\":\"16555551\",\"gender_personal\":\"nam\",\"day_cmnd\":\"a\",\"address_cmnd\":\"a\",\"avt_personall\":\"\\/uploads\\/customer\\/1292737217Capture.PNG\",\"img_cmnd_affer\":\"\\/uploads\\/customer\\/328541247Bill_1.jpg\",\"img_cmnd_before\":\"\\/uploads\\/customer\\/787041503chu-tich-honda(1).jpg\",\"updated_at\":\"2020-05-02 14:38:04\",\"created_at\":\"2020-05-02 14:38:04\",\"id\":1}}', NULL, '2020-05-02 07:38:05', '2020-05-02 07:38:05'),
('8d811f9a-b290-40ef-9716-c235186d7393', 'App\\Notifications\\testNoti', 'App\\User', 3, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$ti7MZtyD9lRxkfWreyiB9eIy3qSTtBVBx6H3TBnR6O5MSgO2Vbnri\",\"status\":1,\"updated_at\":\"2020-05-02 07:11:57\",\"created_at\":\"2020-05-02 07:11:57\",\"id\":10}}', NULL, '2020-05-02 00:11:58', '2020-05-02 00:11:58'),
('8f8a44d1-6347-4b9c-811f-1c3b97ee550a', 'App\\Notifications\\CustomerRigisterNotify', 'App\\Customer', 12, '{\"createCustomer\":{\"email\":\"admins\",\"password\":\"$2y$10$UgnKR8ac\\/0bVrs1UG4H\\/suarDQw6HWWQEn.HBVA5ticNeToLf9atO\",\"name\":null,\"phone\":null,\"address\":null,\"cmnd\":null,\"day_cmnd\":null,\"address_cmnd\":null,\"avt_personall\":\"\\/uploads\\/customer\\/524353481935_14-079-03_4A4A0064.jpg\",\"updated_at\":\"2020-05-02 09:29:13\",\"created_at\":\"2020-05-02 09:29:13\",\"id\":12},\"admin\":{\"email\":\"admins\",\"password\":\"$2y$10$UgnKR8ac\\/0bVrs1UG4H\\/suarDQw6HWWQEn.HBVA5ticNeToLf9atO\",\"name\":null,\"phone\":null,\"address\":null,\"cmnd\":null,\"day_cmnd\":null,\"address_cmnd\":null,\"avt_personall\":\"\\/uploads\\/customer\\/524353481935_14-079-03_4A4A0064.jpg\",\"updated_at\":\"2020-05-02 09:29:13\",\"created_at\":\"2020-05-02 09:29:13\",\"id\":12}}', NULL, '2020-05-02 02:29:14', '2020-05-02 02:29:14'),
('90d4476c-38ab-45fe-b326-6b5e4c1356eb', 'App\\Notifications\\CustomerRigisterNotify', 'App\\Customer', 8, '{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$NK3EuJedC6SdP2zzwVm3\\/epwpbMi9RAF3MiVg5RUAbXcf9sUlfE4G\",\"status\":1,\"updated_at\":\"2020-05-02 07:03:19\",\"created_at\":\"2020-05-02 07:03:19\",\"id\":8},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$NK3EuJedC6SdP2zzwVm3\\/epwpbMi9RAF3MiVg5RUAbXcf9sUlfE4G\",\"status\":1,\"updated_at\":\"2020-05-02 07:03:19\",\"created_at\":\"2020-05-02 07:03:19\",\"id\":8}}', NULL, '2020-05-02 00:03:19', '2020-05-02 00:03:19'),
('a36604da-3523-4e84-83eb-3c8da936fc63', 'App\\Notifications\\CustomerRigisterNotify', 'App\\Customer', 2, '{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":null,\"password\":\"$2y$10$v1HovYV2SOJ\\/VZY8iD3uQ.MetgWrnkF75pMJ3UARFfo7.8Kr8mGc2\",\"status\":1,\"updated_at\":\"2020-05-01 16:20:26\",\"created_at\":\"2020-05-01 16:20:26\",\"id\":2},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":null,\"password\":\"$2y$10$v1HovYV2SOJ\\/VZY8iD3uQ.MetgWrnkF75pMJ3UARFfo7.8Kr8mGc2\",\"status\":1,\"updated_at\":\"2020-05-01 16:20:26\",\"created_at\":\"2020-05-01 16:20:26\",\"id\":2}}', NULL, '2020-05-01 09:20:28', '2020-05-01 09:20:28'),
('b125084f-3996-440e-b779-291e878874e7', 'App\\Notifications\\CustomerRigisterNotify', 'App\\Customer', 9, '{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$SRRfBF1t0FRY81v3vijpPuFkgfNRbpDGUH0ZFPDFIThpkHghQTqcm\",\"status\":1,\"updated_at\":\"2020-05-02 07:04:02\",\"created_at\":\"2020-05-02 07:04:02\",\"id\":9},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$SRRfBF1t0FRY81v3vijpPuFkgfNRbpDGUH0ZFPDFIThpkHghQTqcm\",\"status\":1,\"updated_at\":\"2020-05-02 07:04:02\",\"created_at\":\"2020-05-02 07:04:02\",\"id\":9}}', NULL, '2020-05-02 00:04:02', '2020-05-02 00:04:02'),
('b86e4e7f-8de1-4603-aac5-c5d201fd3538', 'App\\Notifications\\testNoti', 'App\\User', 3, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"toilatoi@gmail.com\",\"password\":\"$2y$10$jkYF7ESGTWItWgVK\\/tGNZOcEWZ0C.tpt4KhR9CENsYmVoWyI5Km7a\",\"status\":1,\"updated_at\":\"2020-05-02 06:07:52\",\"created_at\":\"2020-05-02 06:07:52\",\"id\":4}}', NULL, '2020-05-01 23:07:54', '2020-05-01 23:07:54'),
('e11ac766-bf52-4471-b16a-169786d2b36e', 'App\\Notifications\\testNoti', 'App\\User', 3, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":null,\"password\":\"$2y$10$v1HovYV2SOJ\\/VZY8iD3uQ.MetgWrnkF75pMJ3UARFfo7.8Kr8mGc2\",\"status\":1,\"updated_at\":\"2020-05-01 16:20:26\",\"created_at\":\"2020-05-01 16:20:26\",\"id\":2}}', NULL, '2020-05-01 09:20:28', '2020-05-01 09:20:28'),
('ee3323d3-14f6-45fb-bed6-85728c8ae8e7', 'App\\Notifications\\testNoti', 'App\\User', 3, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$NK3EuJedC6SdP2zzwVm3\\/epwpbMi9RAF3MiVg5RUAbXcf9sUlfE4G\",\"status\":1,\"updated_at\":\"2020-05-02 07:03:19\",\"created_at\":\"2020-05-02 07:03:19\",\"id\":8}}', NULL, '2020-05-02 00:03:19', '2020-05-02 00:03:19'),
('f20791d9-e7bf-4be3-a447-3676b274d0dc', 'App\\Notifications\\CustomerRigisterNotify', 'App\\Customer', 3, '{\"createCustomer\":{\"name\":\"\",\"phone\":null,\"email\":\"tuananhdinamo1122@gmail.com\",\"password\":\"$2y$10$idsymEnwcU9YqKqpu444fOm\\/o56FKYafkPDpi6Da.Av2EG1.2UQOq\",\"status\":1,\"updated_at\":\"2020-05-01 16:29:14\",\"created_at\":\"2020-05-01 16:29:14\",\"id\":3},\"admin\":{\"name\":\"\",\"phone\":null,\"email\":\"tuananhdinamo1122@gmail.com\",\"password\":\"$2y$10$idsymEnwcU9YqKqpu444fOm\\/o56FKYafkPDpi6Da.Av2EG1.2UQOq\",\"status\":1,\"updated_at\":\"2020-05-01 16:29:14\",\"created_at\":\"2020-05-01 16:29:14\",\"id\":3}}', NULL, '2020-05-01 09:29:14', '2020-05-01 09:29:14'),
('f791b1a0-2c88-4220-bad5-7fd1d5848167', 'App\\Notifications\\testNoti', 'App\\User', 1, '{\"thread\":{\"name\":\"\",\"phone\":null,\"email\":\"admins\",\"password\":\"$2y$10$Ye\\/1Dq2n7ndj7w64RkNJ0OLKBin9FAgnVJGsp3H\\/K7dW6uoAEWJUi\",\"status\":1,\"updated_at\":\"2020-05-02 06:54:12\",\"created_at\":\"2020-05-02 06:54:12\",\"id\":5}}', NULL, '2020-05-01 23:54:12', '2020-05-01 23:54:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('040e086ad04925275b108f48aa48b9141a81a309cefc4120390b3671b412791016784e8d271f66fa', 1, 19, 'Personal Access Token', '[]', 1, '2022-04-12 18:24:48', '2022-04-12 18:24:48', '2023-04-13 01:24:48'),
('0481254c4ec443fdf0f26ded018d08f3ba079718c280cbf4e59feb5bdd5642c7a3255c04b56b26bc', 1, 1, 'Personal Access Token', '[]', 1, '2020-01-21 00:23:54', '2020-01-21 00:23:54', '2021-01-21 07:23:54'),
('055ad4decd6fed606e2d1df0e132c95749981ba331ebedb65dc7c3a85d1728076f007a9a09410807', 1, 1, 'Personal Access Token', '[]', 0, '2019-12-30 03:48:28', '2019-12-30 03:48:28', '2020-12-30 10:48:28'),
('07209cb88936bcd59c905046433f20eb3e39e42a8d2c1d41c759c98319e0e7e4f323df9d002c0979', 1, 11, 'Personal Access Token', '[]', 1, '2021-10-14 00:14:03', '2021-10-14 00:14:03', '2022-10-14 07:14:03'),
('076a4070765a5d2ed1aaeb7636c530426c67527adbf01b8c34ec9e7c0cbf4a5fcaac5e128fb1d2da', 1, 9, 'Personal Access Token', '[]', 0, '2021-09-19 18:40:07', '2021-09-19 18:40:07', '2022-09-20 01:40:07'),
('0883b08174ad597ac24fe1649afd60504b3eb3dbed64f526c121fa21a663579f3a9a0b4ee4b10682', 1, 3, 'Personal Access Token', '[]', 0, '2021-07-24 01:11:22', '2021-07-24 01:11:22', '2022-07-24 08:11:22'),
('0b7c6a4421a8bb8749551d9537215a078268832f71a142f09a52bb73a7be95e5e38a2c955b7ff495', 1, 1, 'Personal Access Token', '[]', 0, '2020-01-16 19:14:10', '2020-01-16 19:14:10', '2021-01-17 02:14:10'),
('0b9ec5ab487871f728056bbd1a0a37a72a87102ff989c85c1f7e42401d4dc5eeaa96be9359aaeb6f', 1, 1, 'Personal Access Token', '[]', 0, '2020-02-11 04:59:43', '2020-02-11 04:59:43', '2021-02-11 11:59:43'),
('0d5c9b30a54cbf3a2318270329bad8f3c893ff64e73068f8781fc507baafa5511a403e7a583bb724', 1, 5, 'Personal Access Token', '[]', 1, '2021-08-02 19:21:00', '2021-08-02 19:21:00', '2022-08-03 02:21:00'),
('0ed6f3376a5483699dbece2f1222ebef1f658839f3eca646ffef17f4414f3fc7b3e7cbe1f2fe397e', 1, 1, 'Personal Access Token', '[]', 1, '2019-12-15 19:55:58', '2019-12-15 19:55:58', '2020-12-16 02:55:58'),
('11f59aef0db154c7f1bb4b7b2a7a09d68e0b73567e8bc54abaa0908f45bece6a6238978bb06516e5', 1, 19, 'Personal Access Token', '[]', 0, '2022-03-01 20:55:05', '2022-03-01 20:55:05', '2023-03-02 03:55:05'),
('12cbfe27c232e20433151173c3f5d95cf4250bf79617a8c73e203682f60b49384440d4ca55fb76aa', 1, 7, 'Personal Access Token', '[]', 1, '2021-08-11 00:32:17', '2021-08-11 00:32:17', '2022-08-11 07:32:17'),
('133ebdafd18bbede5a075c6473722b24d502d3209c98e61c0fa11ef3bcfdf66f9631554a73fd99c3', 1, 1, 'Personal Access Token', '[]', 1, '2019-12-15 20:02:57', '2019-12-15 20:02:57', '2020-12-16 03:02:57'),
('1343393492446e597cf5c13e743670597b669fd3d4e8a36506eb7e3df3ef298cdd80753eac597cb6', 1, 21, 'Personal Access Token', '[]', 0, '2022-09-20 00:45:39', '2022-09-20 00:45:39', '2023-09-20 07:45:39'),
('138bccbf9cec2aebd443666afc911a1cb022e6be79382f91b932f6a953791bd243bc81e9b368879f', 1, 7, 'Personal Access Token', '[]', 0, '2021-08-03 20:55:22', '2021-08-03 20:55:22', '2022-08-04 03:55:22'),
('15b889add565ef523bbea4ea951e0f4710b6be6453c3b3abfbf49eea492f10be69e51215d8d5494d', 1, 19, 'Personal Access Token', '[]', 0, '2022-04-15 20:25:53', '2022-04-15 20:25:53', '2023-04-16 03:25:53'),
('15fc8458ef2a435f78c0b9eb1c9286d56644414dc2c82174a79ad628e87be872bbcdbad830ddb937', 1, 1, 'Personal Access Token', '[]', 0, '2019-12-25 01:05:31', '2019-12-25 01:05:31', '2020-12-25 08:05:31'),
('17c8be74c7cd697c380afc9c77defa5776b15962990fc19ab71ca50d2ed40509502cc67bb69a433c', 1, 19, 'Personal Access Token', '[]', 0, '2022-01-05 03:46:14', '2022-01-05 03:46:14', '2023-01-05 10:46:14'),
('1828397e597f6d457e8db435787ba07e9c37f0c3ebdff36dd99f78c45f2eec9050f2fe30e9860a95', 1, 7, 'Personal Access Token', '[]', 1, '2021-08-11 00:29:37', '2021-08-11 00:29:37', '2022-08-11 07:29:37'),
('1842156118e298ab2c131b06c837e21baf90bed5c52bd707247fd7927adadac38ff5cb3232e4fe4a', 1, 13, 'Personal Access Token', '[]', 1, '2021-11-27 07:34:38', '2021-11-27 07:34:38', '2022-11-27 14:34:38'),
('1d00dfc4fbdf729e33593f8da37cec5a1543120d666b3921b1fcfa05a6c86f417f49c8582aa9781f', 1, 19, 'Personal Access Token', '[]', 1, '2021-12-22 09:40:52', '2021-12-22 09:40:52', '2022-12-22 16:40:52'),
('21bface7f471b9a306125686935af8e0df6c360c8f61014b10bd120e22ff1521696c7b2bc733166b', 1, 7, 'Personal Access Token', '[]', 0, '2021-08-11 00:18:56', '2021-08-11 00:18:56', '2022-08-11 07:18:56'),
('224abd7974f794a3178b2a1c586acbb6cea98908f0d7098a7214eafc45456717c4063dc8b459708d', 1, 11, 'Personal Access Token', '[]', 1, '2021-10-12 20:05:42', '2021-10-12 20:05:42', '2022-10-13 03:05:42'),
('2a1c87962793afba4e6a43e9161e8425f163636dcfb5b831b8db5199d63f66c06bdb360f12ef0435', 1, 13, 'Personal Access Token', '[]', 0, '2021-12-01 07:33:47', '2021-12-01 07:33:47', '2022-12-01 14:33:47'),
('2e3aa02db568c792b5193be4837d2d95ab5e7d200dc4e114b5c9274959adf7ff3682cf65e40c9c63', 1, 3, 'Personal Access Token', '[]', 0, '2021-07-04 18:41:40', '2021-07-04 18:41:40', '2022-07-05 01:41:40'),
('34207938db08f096dc4ea28a34507e6d75875517d797bd5d594b2ff2164713f52b4ddebf0384d9d0', 1, 1, 'Personal Access Token', '[]', 1, '2020-03-13 01:18:50', '2020-03-13 01:18:50', '2021-03-13 08:18:50'),
('34f4abdc9d4f142828b9fec764aa72219b46836d92f566283fc6af66af93fc14a5e353344f866739', 1, 1, 'Personal Access Token', '[]', 0, '2019-12-15 20:30:07', '2019-12-15 20:30:07', '2020-12-16 03:30:07'),
('35c11f39af8d639c69ad04e1f71c8e47a541c15c132c29dd01fcb406214e47b4e2c8032d0e357084', 1, 3, NULL, '[]', 0, '2021-07-02 19:52:40', '2021-07-02 19:52:40', '2022-07-03 02:52:40'),
('3a2c24de38152bff9dab5a33db7c162e7dd0c6404fab6f8f51ad24ef786650c2cf55686e90e85dfa', 1, 5, 'Personal Access Token', '[]', 1, '2021-08-03 01:04:23', '2021-08-03 01:04:23', '2022-08-03 08:04:23'),
('3bf98d6b90c35c8e2ad9ba8200c2a937d94771c30e6a8364eb61b3a83471669b8a128b7a508d5cb5', 1, 5, 'Personal Access Token', '[]', 1, '2021-08-02 19:25:03', '2021-08-02 19:25:03', '2022-08-03 02:25:03'),
('3c90917a3454be785919ed4e01b22b583b4aa290eb7521c3c6c4094d00a5490f4109ddd41022f7ef', 1, 13, 'Personal Access Token', '[]', 0, '2021-11-27 21:09:58', '2021-11-27 21:09:58', '2022-11-28 04:09:58'),
('434e88a4c0d9405229053214c22760165d96f667d92be2898664817b1a1f5f89dd079252d4ee9837', 1, 13, 'Personal Access Token', '[]', 1, '2021-11-29 09:35:35', '2021-11-29 09:35:35', '2022-11-29 16:35:35'),
('4b5313614850472e1284a8a6f454086b9e1c7a01d364b364488b29b972b3adaabb2e96a3740cfbf3', 1, 5, 'Personal Access Token', '[]', 0, '2021-08-03 01:12:17', '2021-08-03 01:12:17', '2022-08-03 08:12:17'),
('4b863d38dc6ec32cdc10bc85e8f5e96d18c710ab3eabc175f2d0c8fb7f770a1cb78acb59b1dceb81', 1, 3, 'Personal Access Token', '[]', 0, '2021-07-06 18:30:21', '2021-07-06 18:30:21', '2022-07-07 01:30:21'),
('4ce7521d5a37fa8cbb013bdda824c2b9a1a25a6a9ad19fd745e63badb9a1277123b97d631c750a45', 1, 1, 'Personal Access Token', '[]', 0, '2020-03-13 00:55:46', '2020-03-13 00:55:46', '2021-03-13 07:55:46'),
('4e3f0f4b45e863edf381dd61ee9c46aca34721c979e68c1156f8e722182d9c5de4e9d0c7a15248b9', 1, 17, 'Personal Access Token', '[]', 1, '2021-12-06 19:38:20', '2021-12-06 19:38:20', '2022-12-07 02:38:20'),
('50849c5293ade8ee18b422ed0baa00aa42a83298de6d8865c4a6ef973337f51df47dffbc4247bc8a', 1, 9, 'Personal Access Token', '[]', 0, '2021-09-28 08:05:39', '2021-09-28 08:05:39', '2022-09-28 15:05:39'),
('54ae9e61a46b58cc86ebff61686eddc8dbcfe2d06b0c27d23ecfc3d846b6d017c5be68861ba089e0', 1, 7, 'Personal Access Token', '[]', 0, '2021-08-11 08:56:26', '2021-08-11 08:56:26', '2022-08-11 15:56:26'),
('568e5c0f157a6d232a581431b4fd2a604756c3fbcbdee4ce497bddbaeff83dd01fd52775429320a4', 1, 1, 'Personal Access Token', '[]', 0, '2020-05-07 09:45:09', '2020-05-07 09:45:09', '2021-05-07 16:45:09'),
('5a68f0500cb65876a9daaa15852320904e806a477ed994f830e6c1d1a675f79476f10daea685898d', 1, 13, 'Personal Access Token', '[]', 0, '2021-11-27 20:11:53', '2021-11-27 20:11:53', '2022-11-28 03:11:53'),
('6108d23d48c591e4b356deccf5ccdbdcf6e3d972c34eac2ffcfa58426fd18423b416462552e97ebb', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-29 06:27:26', '2021-06-29 06:27:26', '2022-06-29 13:27:26'),
('6298db1c734976bac2be11725b0ef000d1a7c25166c220691f10706f201fb16d93a6555e83aa3ff8', 1, 1, 'Personal Access Token', '[]', 1, '2021-06-30 23:42:35', '2021-06-30 23:42:35', '2022-07-01 06:42:35'),
('63000d23fea7e4f74ff1db3a42b935b4fda4ebf6b72c6db81752f93c9f001f658c2d976cd85829e9', 1, 13, 'Personal Access Token', '[]', 1, '2021-11-23 22:59:06', '2021-11-23 22:59:06', '2022-11-24 05:59:06'),
('6aaa0dcfd3eae6dfdaace5ef1b55f99cd70b9dbac3af034e1e5cec014bca98753ce568eff18545c6', 1, 19, 'Personal Access Token', '[]', 1, '2022-03-01 04:31:58', '2022-03-01 04:31:58', '2023-03-01 11:31:58'),
('6b475c148494d47a59627565f6d25beab3473e72365b18fc9a508b4d1a8c21c000b2a6856cffb46e', 1, 1, 'Personal Access Token', '[]', 0, '2020-02-09 00:15:46', '2020-02-09 00:15:46', '2021-02-09 07:15:46'),
('6dbd376b065942521d0b4e59d096d532d3b66178d6a3f310316beb7301dea8e19d28bc8770dfc423', 1, 17, 'Personal Access Token', '[]', 0, '2021-12-06 19:38:42', '2021-12-06 19:38:42', '2022-12-07 02:38:42'),
('755a29919adb4d270cac5d99f4813fdbdf624f170a3e1c19965b8251729b57c49b2fbbc6e683d7c6', 1, 19, 'Personal Access Token', '[]', 0, '2022-04-12 19:36:15', '2022-04-12 19:36:15', '2023-04-13 02:36:15'),
('776764aa26f5f46e5a397a01edeec42b9f6a2932be5b0ab2226f70794af643c523e92dd98072e233', 1, 11, 'Personal Access Token', '[]', 0, '2021-10-08 02:39:56', '2021-10-08 02:39:56', '2022-10-08 09:39:56'),
('77cd228162d037127fa9c4cfdcc50e2dad862932089ff53722029363446452514d919be3281d51b0', 1, 1, 'Personal Access Token', '[]', 0, '2020-02-26 00:21:02', '2020-02-26 00:21:02', '2021-02-26 07:21:02'),
('7838513b38815f02656644361f52f1a97c9cb4b20b16228dab6dd1612b415b3848728f5f3283fdb6', 1, 7, 'Personal Access Token', '[]', 1, '2021-08-11 00:26:56', '2021-08-11 00:26:56', '2022-08-11 07:26:56'),
('7b3e7902ed8e9ed43465ca5ed0c08697b446d84708c50695577eb8a98539b62b66b745bb673f5fd8', 1, 7, 'Personal Access Token', '[]', 0, '2021-08-06 01:36:25', '2021-08-06 01:36:25', '2022-08-06 08:36:25'),
('7b5ef2cb4673d955c0bf74540df3e2378f0375a125e5d0b3ce28f4823031a775220ef74a4f945d8a', 1, 1, 'Personal Access Token', '[]', 0, '2019-12-15 20:03:08', '2019-12-15 20:03:08', '2020-12-16 03:03:08'),
('83a70a375107279df2e0879500b9ff65350ad38bc0304c4f7d1efd71aa6fd4fd55a29e6ec70aa89e', 1, 1, 'Personal Access Token', '[]', 1, '2020-02-08 07:47:59', '2020-02-08 07:47:59', '2021-02-08 14:47:59'),
('87a48bfe8516fe5282cf28480ae8e597771589148d6bbc891e461fcb9664900e01cdac97f54584ab', 1, 11, 'Personal Access Token', '[]', 0, '2021-10-15 02:45:23', '2021-10-15 02:45:23', '2022-10-15 09:45:23'),
('8a7924e59836271a9f1673fcf5428d919d4b40320fc7267d40c573f2629874ad9cc10fff2a4fa687', 1, 13, 'Personal Access Token', '[]', 0, '2021-11-29 09:27:24', '2021-11-29 09:27:24', '2022-11-29 16:27:24'),
('8c0418eb30a72943fb71b800e73b899984d08b1f21c56ba59ab3f8c812c73fe5f11967d9d795eb01', 1, 1, 'Personal Access Token', '[]', 0, '2020-02-11 03:45:52', '2020-02-11 03:45:52', '2021-02-11 10:45:52'),
('8db92560bb4578dcdb488f89c319dd4f8d2c28d060408cd9961d1896b54c4360950a736a1220e35d', 1, 21, 'Personal Access Token', '[]', 0, '2022-08-18 21:29:18', '2022-08-18 21:29:18', '2023-08-19 04:29:18'),
('8f254d84681bb3539d60e72a217554bf3d624dec182c8ae78843e8c49be829c3100af9fb9f9a10d9', 1, 1, 'Personal Access Token', '[]', 0, '2020-02-11 04:58:42', '2020-02-11 04:58:42', '2021-02-11 11:58:42'),
('92f6f3e0b360077406b74d573dc43f35f4c9b8bf8e76da81edb9cea52e855e9a2c2e31624ce80e34', 1, 3, 'Personal Access Token', '[]', 0, '2021-07-13 00:45:15', '2021-07-13 00:45:15', '2022-07-13 07:45:15'),
('9c0167f5604d02e5163642648785239d6c39b764fb9eb1e7960baceb4dd191b1090a6acaedeee6b5', 1, 1, 'Personal Access Token', '[]', 0, '2020-04-06 08:11:41', '2020-04-06 08:11:41', '2021-04-06 15:11:41'),
('9d34518140f71bf0d9cb7c8fcbb3a9f82d67fedc88fa747845289d717b8214232e94ec0bb5c37fc8', 1, 1, 'Personal Access Token', '[]', 0, '2020-01-17 19:26:47', '2020-01-17 19:26:47', '2021-01-18 02:26:47'),
('a0c4c07fd8024f668ec3bb567a6c1ea1d4bb06cbf27efa61426e7deb706ab00387b9612fe7e03c2c', 1, 1, 'Personal Access Token', '[]', 0, '2020-02-11 01:55:13', '2020-02-11 01:55:13', '2021-02-11 08:55:13'),
('a0ccdb7b0f81cb372c9003e39a0be4036fef8b1c262bf1cc42b470e9beb26211ae49d3ac70bc5fb3', 1, 19, 'Personal Access Token', '[]', 0, '2022-03-27 10:02:03', '2022-03-27 10:02:03', '2023-03-27 17:02:03'),
('a484ef50f450931e6e557134ada7f962f7cc7ef1d6916c9da53777fdf08875dbf286e5dfe3dd3350', 1, 13, 'Personal Access Token', '[]', 0, '2021-12-01 07:33:49', '2021-12-01 07:33:49', '2022-12-01 14:33:49'),
('a7380eeb1ad20bfa35aba5af7383bce113d793a1f7b3a9ff4621863a2d563c62d7200cf6783897d0', 1, 19, 'Personal Access Token', '[]', 0, '2022-03-27 09:33:02', '2022-03-27 09:33:02', '2023-03-27 16:33:02'),
('a75367d7fb83ad857707c37dc301309b09c2b7d5caf2236653eb7e99e2b6adc2f8b56f02f7773c4b', 1, 1, 'Personal Access Token', '[]', 0, '2020-01-30 02:00:59', '2020-01-30 02:00:59', '2021-01-30 09:00:59'),
('a82cd0ab0d51a8eb37ab73e0008554915886ae5d388ac5eaa47c12df6d327f18bfdb36ea42f19c63', 1, 11, 'Personal Access Token', '[]', 0, '2021-10-18 09:08:45', '2021-10-18 09:08:45', '2022-10-18 16:08:45'),
('a9cf3cbff1fc7d6bba3a2e72f2ee4f3def67beac9a60e852f32ddc4546ab64749f35b197882cfd9b', 1, 3, 'Personal Access Token', '[]', 0, '2021-07-07 18:45:57', '2021-07-07 18:45:57', '2022-07-08 01:45:57'),
('ad0a4f312c478efb8767fbc48f0fa935f0c113e0e268c643ee7ec7371cda871531c82eb7667bb283', 1, 5, 'Personal Access Token', '[]', 1, '2021-08-01 20:30:10', '2021-08-01 20:30:10', '2022-08-02 03:30:10'),
('b0bd422a5f774d1b2067a54dea7e153b1492de64fce793e7af8de01b0a4c05963015ff67bb6f4702', 1, 13, 'Personal Access Token', '[]', 1, '2021-11-20 06:00:27', '2021-11-20 06:00:27', '2022-11-20 13:00:27'),
('b49af4edb8482ed073e245073873e7153614052260de354c28b386d9c6a6883dcd8473dc644f933a', 1, 15, 'Personal Access Token', '[]', 0, '2021-12-01 20:22:51', '2021-12-01 20:22:51', '2022-12-02 03:22:51'),
('bc94392e6cb680d41aed25512c7c626260f9ab74b746db48fc1daca8e2373a057e2d5579c5ec6806', 1, 19, 'Personal Access Token', '[]', 0, '2021-12-29 01:19:23', '2021-12-29 01:19:23', '2022-12-29 08:19:23'),
('bf176b61922a0afb428e6ec96bc5774e34212628b84af75ff5b4e75ebce523466099eb26c18995e1', 1, 1, 'Personal Access Token', '[]', 0, '2020-02-09 09:52:37', '2020-02-09 09:52:37', '2021-02-09 16:52:37'),
('c05e3f191747f498614739b2892841ea4a369a1976114f420d9f8176ed9391e96e5e179f06e4afe9', 1, 3, 'Personal Access Token', '[]', 1, '2021-07-02 19:54:24', '2021-07-02 19:54:24', '2022-07-03 02:54:24'),
('c650907fc6b1db60200c2acaeb9d3b4f21c79f22f295dabd1874560e3ac31125ec9ed1e841eed651', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-01 00:19:58', '2021-07-01 00:19:58', '2022-07-01 07:19:58'),
('c75d774e585cf4aff8f91a1ca927d826bf3c8fe7fd50e57e82b76975aae7caf321f90ca4c48d8e08', 1, 1, 'Personal Access Token', '[]', 0, '2020-02-11 04:56:20', '2020-02-11 04:56:20', '2021-02-11 11:56:20'),
('c9103ba23c01d518e14ec0425018339a6bf3a0c21722557d7ead96fc50f3491dac287c8bf7d3f4ad', 1, 19, 'Personal Access Token', '[]', 0, '2022-04-15 21:37:25', '2022-04-15 21:37:25', '2023-04-16 04:37:25'),
('ced11c3cdce92ce1f0d32f1bfdcb8222942073fc1d1641443ad2e7357c797af1b988c8e0e82559ba', 1, 19, 'Personal Access Token', '[]', 0, '2022-03-05 08:55:44', '2022-03-05 08:55:44', '2023-03-05 15:55:44'),
('d14bf0d3ab1008c90078b7c0003f9ccf98459e8c8f8774d7d6633bfcef23c03f837272ebc8d3a4c7', 1, 3, 'Personal Access Token', '[]', 0, '2021-07-10 01:23:28', '2021-07-10 01:23:28', '2022-07-10 08:23:28'),
('d42b2628a8ede47b6cbe1d82a1997af8531fcbe5c9a30a6f7a5350dbc2bf6ce890ebc8cb56bd96dd', 1, 21, 'Personal Access Token', '[]', 0, '2022-08-08 20:31:49', '2022-08-08 20:31:49', '2023-08-09 03:31:49'),
('d6fa9996ae531264c882fe10bf564ab42bf463be0375b94640223998253bd3bd8ef99681ced9d2c2', 1, 21, 'Personal Access Token', '[]', 0, '2022-08-27 01:24:48', '2022-08-27 01:24:48', '2023-08-27 08:24:48'),
('d9b921be8de622b4101686ed1b52577c4fa9d475c66f6efc6a0486f0a6f7064d3518b86381f8357e', 1, 9, 'Personal Access Token', '[]', 1, '2021-09-07 20:13:11', '2021-09-07 20:13:11', '2022-09-08 03:13:11'),
('d9fa1b99a078176c1a522f7918b75bc299c5e03a4d5e10196c2fb08aad384768d82dd784d42e519d', 1, 5, 'Personal Access Token', '[]', 1, '2021-08-02 21:29:55', '2021-08-02 21:29:55', '2022-08-03 04:29:55'),
('da560396f61b28a3f950784d7d4a07d379f43239dd7ffea97b2a21b367ba5a03987849e4dc85ff5b', 1, 1, 'Personal Access Token', '[]', 0, '2020-02-09 00:52:32', '2020-02-09 00:52:32', '2021-02-09 07:52:32'),
('e133c46f9943c066e812089de3c0775bc3d182252956dcb6f4e5f576fa60da5c9146313104e4bc55', 1, 7, 'Personal Access Token', '[]', 1, '2021-08-10 20:32:51', '2021-08-10 20:32:51', '2022-08-11 03:32:51'),
('e261ea716838de5d4fab1b8eb155ccdf1eab7f9f1b8750a89ab6356b0fea67791accfb77cd5cd584', 1, 7, 'Personal Access Token', '[]', 1, '2021-08-11 00:19:04', '2021-08-11 00:19:04', '2022-08-11 07:19:04'),
('e66056a6eaa66eed239722d333c482288fc36d3437bbfb7ee53a5cf365ddd5e8817508863749d6f0', 1, 1, 'Personal Access Token', '[]', 0, '2020-07-21 02:02:18', '2020-07-21 02:02:18', '2021-07-21 09:02:18'),
('e830c06729a6197f14af739e8754b0ee09bd3b32ea2833ea10d632647d1afbe1c9491bbafeb1fb18', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-01 01:27:55', '2021-07-01 01:27:55', '2022-07-01 08:27:55'),
('e83212334542ffa8bc250773897ee7160ce9308cc81bf71efde755869fe62083ebd09a4ee55fa413', 1, 3, 'Personal Access Token', '[]', 0, '2021-07-13 09:14:54', '2021-07-13 09:14:54', '2022-07-13 16:14:54'),
('e9f1ed3a902f8501118c2824e82fd77cc0bc7b1b61b9d6081255120f1224896cd588218c86426756', 1, 1, 'Personal Access Token', '[]', 0, '2019-12-25 21:33:16', '2019-12-25 21:33:16', '2020-12-26 04:33:16'),
('eba965692a3109c35fae5d834ddf79d00665b529d952d85ab612bc60e141a558a1ca066be621069d', 1, 7, 'Personal Access Token', '[]', 1, '2021-08-11 00:16:46', '2021-08-11 00:16:46', '2022-08-11 07:16:46'),
('ef97b736abc130c69b49953937a5e6aa5992442e55be6ae9396f8f6a885db6569a867ba423650dde', 1, 1, 'Personal Access Token', '[]', 0, '2020-07-20 21:38:53', '2020-07-20 21:38:53', '2021-07-21 04:38:53'),
('f6112e611f337c2094bc5e68754a4e92b852d2ae6cef1d9dd371adc440e0d5d90e9bab8bcf463596', 1, 13, 'Personal Access Token', '[]', 1, '2021-11-27 21:10:01', '2021-11-27 21:10:01', '2022-11-28 04:10:01'),
('f661b12c59ae1cf32cc6e67fa0cb0e3f3d67f930756b1217099257632cca84da546614a9d91075a3', 1, 19, 'Personal Access Token', '[]', 0, '2021-12-25 08:18:48', '2021-12-25 08:18:48', '2022-12-25 15:18:48'),
('f8c5b651ab88e36cbd89ef6036f76e37a725ede22c84b377b1c1d30e1bf89891005b73e3b73adedc', 1, 7, 'Personal Access Token', '[]', 0, '2021-08-19 08:44:03', '2021-08-19 08:44:03', '2022-08-19 15:44:03'),
('fa38044e5486575357b8616b00e73894af771233ea1d80720f16ee1b5fbd86e20c9d5704919e8d63', 1, 9, 'Personal Access Token', '[]', 0, '2021-09-15 02:36:25', '2021-09-15 02:36:25', '2022-09-15 09:36:25'),
('fb865dbd49e3789dab7c500a13d78080ea66dadcf51d76a2a642e4f2013e8a2837c208dfb7c30e16', 1, 13, 'Personal Access Token', '[]', 1, '2021-11-29 09:27:28', '2021-11-29 09:27:28', '2022-11-29 16:27:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `provider`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '8NgQ2h4vVSnzuEynzdF3PZ9ir5HZhmUm94iOhIvH', 'http://localhost', 1, 0, 0, NULL, '2019-12-13 20:57:43', '2019-12-13 20:57:43'),
(2, NULL, 'Laravel Password Grant Client', 'qlUy5ooGXseWPMmorSDmekKM88KJ2RKTvkyAsWbL', 'http://localhost', 0, 1, 0, NULL, '2019-12-13 20:57:43', '2019-12-13 20:57:43'),
(3, NULL, 'Laravel Personal Access Client', 'jxejEyFu11i0Kxkc3m8B3ExdmzHVj8iKwqiwJXq3', 'http://localhost', 1, 0, 0, NULL, '2021-07-02 19:52:21', '2021-07-02 19:52:21'),
(4, NULL, 'Laravel Password Grant Client', 'jjkgmDfkBz9b85koKnV3YyIalhS6CNLu6mHwl2ax', 'http://localhost', 0, 1, 0, NULL, '2021-07-02 19:52:21', '2021-07-02 19:52:21'),
(5, NULL, 'Laravel Personal Access Client', 'yLW8d0RGC1vayAHUYRSgSg5Fq6KbE5PK720vZJIs', 'http://localhost', 1, 0, 0, NULL, '2021-08-01 20:23:14', '2021-08-01 20:23:14'),
(6, NULL, 'Laravel Password Grant Client', 'WR7NYVJi4Q2PJpy4retK5LSglTuXdr7VqRRZ7QZi', 'http://localhost', 0, 1, 0, 'users', '2021-08-01 20:23:14', '2021-08-01 20:23:14'),
(7, NULL, 'Laravel Personal Access Client', '7I6OSJIcVDMdV7U6IvYYFOKHsIYONzLCArykAuDb', 'http://localhost', 1, 0, 0, NULL, '2021-08-03 11:22:29', '2021-08-03 11:22:29'),
(8, NULL, 'Laravel Password Grant Client', '1Irzjouwm4a3ET62COu7Kc0Nz2CbMRWe2S3hoAgo', 'http://localhost', 0, 1, 0, 'users', '2021-08-03 11:22:29', '2021-08-03 11:22:29'),
(9, NULL, 'Laravel Personal Access Client', 'LCPAzCtnmfuDqa6Spdx87qPgwyudDQO5TK3wwTKt', 'http://localhost', 1, 0, 0, NULL, '2021-08-19 09:40:19', '2021-08-19 09:40:19'),
(10, NULL, 'Laravel Password Grant Client', '4qEzmHtrmJJBFbpF4O3W7KPzW1qW5liPWjikVFKO', 'http://localhost', 0, 1, 0, 'users', '2021-08-19 09:40:19', '2021-08-19 09:40:19'),
(11, NULL, 'Laravel Personal Access Client', 'Tv1683FTyeciWV6cTyzHw7E9OrEfjQKM064rUY94', 'http://localhost', 1, 0, 0, NULL, '2021-10-04 03:35:07', '2021-10-04 03:35:07'),
(12, NULL, 'Laravel Password Grant Client', 'LeooPku9YeBGMPpY2ZmiVpadowAFG6dQ3jXPYyCa', 'http://localhost', 0, 1, 0, 'users', '2021-10-04 03:35:07', '2021-10-04 03:35:07'),
(13, NULL, 'Laravel Personal Access Client', 'HuQPXIJYMb7Ct9gojbtU2Og5AVtCYrxKs7QXGUB5', 'http://localhost', 1, 0, 0, NULL, '2021-11-20 02:22:34', '2021-11-20 02:22:34'),
(14, NULL, 'Laravel Password Grant Client', '1OigCWIRY1YTBbSaO8GtlSEiCTzFTOrHXEvMg6K5', 'http://localhost', 0, 1, 0, 'users', '2021-11-20 02:22:34', '2021-11-20 02:22:34'),
(15, NULL, 'Laravel Personal Access Client', 'XjGqXmNK5cETwWueXOuiixEwNTF3mNSsniZGdBok', 'http://localhost', 1, 0, 0, NULL, '2021-12-01 20:20:33', '2021-12-01 20:20:33'),
(16, NULL, 'Laravel Password Grant Client', 'X2LNOlM9YLKSdiqe9IDIik2UVoybbfU6SOqYfTFJ', 'http://localhost', 0, 1, 0, 'users', '2021-12-01 20:20:34', '2021-12-01 20:20:34'),
(17, NULL, 'Laravel Personal Access Client', 'jFyU6og68CPt5mAXurVOf92tUED183rPzI4HHlC2', 'http://localhost', 1, 0, 0, NULL, '2021-12-06 19:36:09', '2021-12-06 19:36:09'),
(18, NULL, 'Laravel Password Grant Client', 'EUeZnJJziEgsfw3LTguV9MbBfnWByTlg3DCry0iC', 'http://localhost', 0, 1, 0, 'users', '2021-12-06 19:36:09', '2021-12-06 19:36:09'),
(19, NULL, 'Laravel Personal Access Client', '2Um3oxwB0Ut2XcpxtsHogYUOvAtAtM3DAWTwQLak', 'http://localhost', 1, 0, 0, NULL, '2021-12-22 09:09:03', '2021-12-22 09:09:03'),
(20, NULL, 'Laravel Password Grant Client', 'FYad9U3Rcg7crFqNGlcoVItFsXKEEHS8v3DzDVtC', 'http://localhost', 0, 1, 0, 'users', '2021-12-22 09:09:03', '2021-12-22 09:09:03'),
(21, NULL, 'Laravel Personal Access Client', 'DIGMe8k1jCOWnf3Cfxmc3whG5WV2vS91ozP503i0', 'http://localhost', 1, 0, 0, NULL, '2022-08-08 20:11:45', '2022-08-08 20:11:45'),
(22, NULL, 'Laravel Password Grant Client', 'kweipSeo0ujdTZ5gi13s1csnMcFEgDgquyQEM4wY', 'http://localhost', 0, 1, 0, 'users', '2022-08-08 20:11:45', '2022-08-08 20:11:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-12-13 20:57:43', '2019-12-13 20:57:43'),
(2, 3, '2021-07-02 19:52:21', '2021-07-02 19:52:21'),
(3, 5, '2021-08-01 20:23:14', '2021-08-01 20:23:14'),
(4, 7, '2021-08-03 11:22:29', '2021-08-03 11:22:29'),
(5, 9, '2021-08-19 09:40:19', '2021-08-19 09:40:19'),
(6, 11, '2021-10-04 03:35:07', '2021-10-04 03:35:07'),
(7, 13, '2021-11-20 02:22:34', '2021-11-20 02:22:34'),
(8, 15, '2021-12-01 20:20:34', '2021-12-01 20:20:34'),
(9, 17, '2021-12-06 19:36:09', '2021-12-06 19:36:09'),
(10, 19, '2021-12-22 09:09:03', '2021-12-22 09:09:03'),
(11, 21, '2022-08-08 20:11:45', '2022-08-08 20:11:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_contents`
--

CREATE TABLE `page_contents` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `page_contents`
--

INSERT INTO `page_contents` (`id`, `quiz_id`, `language`, `title`, `content`, `status`, `type`, `image`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'en-US', 'Giới thiệu', '<p><strong>&ldquo;H&atilde;y chọn Nha khoa EURO DENTAL, v&igrave; ch&uacute;ng t&ocirc;i Quan t&acirc;m nụ cười bạn bằng cả tr&aacute;i tim&rdquo;</strong></p>\n<p>Với Nha khoa Victorya Luxury, mỗi kh&aacute;ch h&agrave;ng đều như người th&acirc;n &ndash; những người m&agrave; ch&uacute;ng t&ocirc;i thấu hiểu v&agrave; dốc l&ograve;ng chăm s&oacute;c. Đội ngũ b&aacute;c sĩ v&agrave; chăm s&oacute;c vi&ecirc;n cam kết lu&ocirc;n tận t&acirc;m v&agrave; nỗ lực tối ưu ho&aacute; quy tr&igrave;nh chỉnh nha để mang đến cho kh&aacute;ch h&agrave;ng sự an t&acirc;m tuyệt đối khi trải nghiệm dịch vụ.</p>', 1, 've-chung-toi', NULL, 'gioi-thieu', '<p>a</p>', '2022-04-17 04:04:55', '2022-04-17 04:04:55'),
(2, 1, 'vi', 'Giới thiệu', '<p>RETD được th&agrave;nh lập v&agrave;o năm 2016, trong bối cảnh ph&aacute;t triển ng&agrave;y c&agrave;ng lớn mạnh của ng&agrave;nh năng lượng mặt trời, nhu cầu của c&aacute;c Đối t&aacute;c v&agrave; Kh&aacute;ch h&agrave;ng ng&agrave;y c&agrave;ng mở rộng, đa dạng hơn. Trong khi đ&oacute;, c&aacute;c đơn vị hiện tại tr&ecirc;n thị trường chỉ cung cấp một mảng dịch&nbsp;<br />vụ nhất định g&acirc;y kh&oacute; khăn cho Kh&aacute;ch h&agrave;ng về c&ocirc;ng t&aacute;c quản l&yacute; tổng thể (ng&acirc;n s&aacute;ch &ndash; chất lượng sản phẩm). Hiểu được t&acirc;m &yacute; của Kh&aacute;ch h&agrave;ng, RETD ti&ecirc;n phong l&agrave; đơn vị chuy&ecirc;n thi c&ocirc;ng trọn g&oacute;i hệ thống điện năng lượng mặt trời farm, trang trại, nh&agrave; xưởng v&agrave; cung cấp thiết bị vật tư, với đội ngũ nh&acirc;n lực chuy&ecirc;n nghiệp, tận t&acirc;m</p>\n<p>Để ph&aacute;t huy những điểm mạnh, lợi thế cạnh tranh, nắm bắt v&agrave; tận dụng tối đa cơ hội trong lĩnh vực thiết kế thi c&ocirc;ng điện năng lượng mặt trời của m&igrave;nh, RETD đ&atilde; c&oacute; những ph&aacute;t triển về hạ tầng kỹ thuật c&ugrave;ng với đ&oacute; l&agrave; tăng vốn đầu tư, bổ sung th&ecirc;m nguồn nh&acirc;n lực chất lượng, từ đ&oacute; gi&uacute;p đ&aacute;p ứng tốt hơn nhu cầu của Kh&aacute;ch h&agrave;ng</p>', 1, 've-chung-toi', '/uploads/images/trang-noi-dung-1099220812.jpg', 'gioi-thieu', '<p>a</p>', '2022-04-17 04:04:55', '2022-08-10 00:29:14'),
(5, 3, 'en-US', 'Hướng dẫn thanh toán', '<p>Hướng dẫn thanh to&aacute;n</p>', 1, 'ho-tro-khanh-hang', NULL, 'huong-dan-thanh-toan', '<p>Hướng dẫn thanh to&aacute;n</p>', '2022-09-22 01:55:24', '2022-09-22 01:55:24'),
(6, 3, 'vi', 'Hướng dẫn thanh toán', '<p>Hướng dẫn thanh to&aacute;n</p>', 1, 'ho-tro-khanh-hang', NULL, 'huong-dan-thanh-toan', '<p>Hướng dẫn thanh to&aacute;n</p>', '2022-09-22 01:55:24', '2022-09-22 01:55:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `partners`
--

INSERT INTO `partners` (`id`, `name`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '/uploads/images/doi-tac-1870750298.png', 1, '2022-03-01 20:47:13', '2022-03-01 20:47:13'),
(2, NULL, NULL, '/uploads/images/doi-tac-2011999575.png', 1, '2022-03-01 20:47:13', '2022-03-01 20:47:13'),
(3, NULL, NULL, '/uploads/images/doi-tac-1902727625.png', 1, '2022-03-01 20:47:13', '2022-03-01 20:47:13'),
(4, NULL, NULL, '/uploads/images/doi-tac-1442292892.png', 1, '2022-03-01 20:47:13', '2022-03-01 20:47:13'),
(5, NULL, NULL, '/uploads/images/doi-tac-233798627.png', NULL, '2022-03-01 20:47:13', '2022-03-01 20:47:13'),
(6, NULL, NULL, '/uploads/images/doi-tac-782406014.png', NULL, '2022-03-01 20:47:13', '2022-03-01 20:47:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `slug`, `name`, `created_at`, `updated_at`) VALUES
(1, 'create-tasks', 'Create Tasks', '2019-12-15 17:00:00', '2019-12-15 17:00:00'),
(3, 'delete-tasks', 'Delete Tasks', '2019-12-15 17:00:00', '2019-12-15 17:00:00'),
(5, 'view-users', 'View Users', '2019-12-15 17:00:00', '2019-12-15 17:00:00'),
(10, 'edit_product', 'Edit Product', '2019-12-15 17:00:00', '2019-12-15 17:00:00'),
(12, 'add_product', 'Add Product', '2019-12-15 17:00:00', '2019-12-15 17:00:00'),
(14, 'delete_product', 'Delete Product', '2019-12-15 17:00:00', '2019-12-15 17:00:00'),
(16, 'add_blog', 'Add Blog', '2019-12-15 17:00:00', '2019-12-15 17:00:00'),
(17, 'edit_blog', 'Edit Blog', '2019-12-15 17:00:00', '2019-12-15 17:00:00'),
(18, 'delete_blog', 'Delete Blog', '2019-12-15 17:00:00', '2019-12-15 17:00:00'),
(22, 'manage_customer', 'Manage Customer', '2019-12-15 17:00:00', '2019-12-15 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prizes`
--

CREATE TABLE `prizes` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `prizes`
--

INSERT INTO `prizes` (`id`, `name`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '/uploads/images/thu-vien--400390578.jpg', 1, '2022-08-10 02:05:03', '2022-08-10 02:05:03'),
(2, NULL, NULL, '/uploads/images/thu-vien--1524119469.jpg', 1, '2022-08-10 02:05:03', '2022-08-10 02:05:03'),
(3, NULL, NULL, '/uploads/images/thu-vien--2015768506.jpg', 1, '2022-08-10 02:05:03', '2022-08-10 02:05:03'),
(4, NULL, NULL, '/uploads/images/thu-vien--2008236321.jpg', 1, '2022-08-10 02:05:03', '2022-08-10 02:05:03'),
(5, NULL, NULL, '/uploads/images/thu-vien--1321502062.jpg', 1, '2022-08-10 02:05:03', '2022-08-10 02:05:03'),
(6, NULL, NULL, '/uploads/images/thu-vien--1412660524.jpg', 1, '2022-08-10 02:05:03', '2022-08-10 02:05:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL COMMENT 'mã sp',
  `name` varchar(255) DEFAULT NULL,
  `cate_slug` varchar(255) DEFAULT NULL,
  `type_slug` varchar(255) DEFAULT NULL,
  `type_two_slug` varchar(255) DEFAULT NULL,
  `preserve` text DEFAULT NULL COMMENT 'bảo quản',
  `ingredient` text DEFAULT NULL COMMENT 'thành phần',
  `size` text DEFAULT NULL COMMENT 'thông sô kỹ thuật',
  `slug` varchar(255) DEFAULT NULL,
  `price` bigint(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL COMMENT ' % giảm giá',
  `images` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `type_cate` int(11) DEFAULT NULL,
  `type_two` int(11) DEFAULT NULL,
  `species` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `thickness` varchar(255) DEFAULT NULL,
  `hang_muc` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `discountStatus` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `service_id`, `sku`, `name`, `cate_slug`, `type_slug`, `type_two_slug`, `preserve`, `ingredient`, `size`, `slug`, `price`, `discount`, `images`, `description`, `content`, `category`, `type_cate`, `type_two`, `species`, `origin`, `thickness`, `hang_muc`, `status`, `discountStatus`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, '\"[{\\\"lang_code\\\":\\\"vi\\\",\\\"content\\\":\\\"M\\\\u00c1Y IN DECAL LETOP 2M\\\"}]\"', 'may-in-phun', 'may-in-bat-kho-lon', '', '[{\"detail\":null}]', NULL, '[{\"title\":null,\"detail\":null}]', 'may-in-decal-letop-2m', 2000000, 15, '[\"\\/uploads\\/images\\/san-pham-1255938047.jpg\"]', '[{\"lang_code\":\"vi\",\"content\":\"<p>V\\u1edbi kh\\u1ed5 in t\\u1ed1i \\u0111a l&ecirc;n t\\u1edbi 1m95, s\\u1eed d\\u1ee5ng \\u0111\\u1ea7u phun DX5 c\\u1ee7a Nh\\u1eadt B\\u1ea3n.&nbsp;<strong>M&aacute;y in decal kh\\u1ed5 l\\u1edbn letop<\\/strong>&nbsp;s\\u1ebd l&agrave; d&ograve;ng m&aacute;y cho ra nh\\u1eefng s\\u1ea3n ph\\u1ea9m b\\u1ea3n in \\u0111\\u1eb9p s\\u1eafc n&eacute;t, m&agrave;u s\\u1eafc&nbsp; trung th\\u1ef1c. C&ugrave;ng v\\u1edbi k\\u1ebft c\\u1ea5u c\\u01a1 kh&iacute; c\\u1ee7a m&aacute;y v&ocirc; c&ugrave;ng v\\u1eefng ch\\u1eafc, tu\\u1ed5i th\\u1ecd s\\u1eed d\\u1ee5ng m&aacute;y si&ecirc;u b\\u1ec1n, m&aacute;y ho\\u1ea1t \\u0111\\u1ed9ng \\u1ed5n \\u0111\\u1ecbnh.<\\/p>\"}]', '[{\"lang_code\":\"vi\",\"content\":\"<h2><strong>LETOP &ndash; &nbsp;M&Aacute;Y IN DECAN KH\\u1ed4 IN L\\u1edaN NH\\u1ea4T HI\\u1ec6N NAY.<\\/strong><\\/h2>\\n<p>V\\u1edbi kh\\u1ed5 in t\\u1ed1i \\u0111a l&ecirc;n t\\u1edbi 1m95, s\\u1eed d\\u1ee5ng \\u0111\\u1ea7u phun DX5 c\\u1ee7a Nh\\u1eadt B\\u1ea3n.&nbsp;<strong>M&aacute;y in decal kh\\u1ed5 l\\u1edbn letop<\\/strong>&nbsp;s\\u1ebd l&agrave; d&ograve;ng m&aacute;y cho ra nh\\u1eefng s\\u1ea3n ph\\u1ea9m b\\u1ea3n in \\u0111\\u1eb9p s\\u1eafc n&eacute;t, m&agrave;u s\\u1eafc&nbsp; trung th\\u1ef1c. C&ugrave;ng v\\u1edbi k\\u1ebft c\\u1ea5u c\\u01a1 kh&iacute; c\\u1ee7a m&aacute;y v&ocirc; c&ugrave;ng v\\u1eefng ch\\u1eafc, tu\\u1ed5i th\\u1ecd s\\u1eed d\\u1ee5ng m&aacute;y si&ecirc;u b\\u1ec1n, m&aacute;y ho\\u1ea1t \\u0111\\u1ed9ng \\u1ed5n \\u0111\\u1ecbnh.<\\/p>\\n<p><strong><em><u>\\u01afu \\u0111i\\u1ec3m n\\u1ed5i tr\\u1ed9i c\\u1ee7a m&aacute;y<\\/u><\\/em><\\/strong><\\/p>\\n<ul>\\n<li>C\\u01a1 c\\u1ea5u chuy\\u1ec3n \\u0111\\u1ed9ng b\\u1eb1ng motor Secvo ho\\u1ea1t \\u0111\\u1ed9ng b\\u1ec1n b\\u1ec9 ch&iacute;nh x&aacute;c, s\\u1eed d\\u1ee5ng \\u0111\\u1ea7u phun EPPSON c\\u1ee7a NH\\u1eacT v\\u1edbi 8 line m&agrave;u (double CMYK) cho \\u0111\\u1ed9 ph&acirc;n gi\\u1ea3i l&ecirc;n \\u0111\\u1ebfn 1440 DPI.<\\/li>\\n<li>H\\u1ec7 th\\u1ed1ng bo m\\u1ea1ch ch\\u1ebf t\\u1ea1o theo c&ocirc;ng ngh\\u1ec7 CE c\\u1ee7a Ch&acirc;u &Acirc;u cho m&aacute;y ch\\u1ea1y t\\u1ed1c \\u0111\\u1ed9 cao nh\\u01b0ng c\\u1ef1c k\\u1ef3 \\u1ed5n \\u0111\\u1ecbnh<\\/li>\\n<li>H\\u1ec7 th\\u1ed1ng r\\u1eeda \\u0111\\u1ea7u phun ho&agrave;n to&agrave;n t\\u1ef1 \\u0111\\u1ed9ng, ch&iacute;nh x&aacute;c, g&oacute;p ph\\u1ea7n t\\u0103ng tu\\u1ed5i th\\u1ecd \\u0111&agrave;u phun, c\\u1ea3i thi\\u1ec7n ch\\u1ea5t l\\u01b0\\u1ee3ng b\\u1ea3n in.<\\/li>\\n<li>C&ocirc;ng ngh\\u1ec7 phun m\\u1ef1c d\\u1ea1ng s\\u01b0\\u01a1ng h\\u1ea1n ch\\u1ebf t\\u1ed1i \\u0111a hi\\u1ec7n t\\u01b0\\u1ee3ng s\\u1ecdc c\\u1ee7a b\\u1ea3n in<\\/li>\\n<\\/ul>\\n<p><strong>TH&Ocirc;NG S\\u1ed0 K\\u1ef8 THU\\u1eacT C\\u1ee6A M&Aacute;Y<\\/strong><\\/p>\\n<table border=\\\"1\\\" width=\\\"673\\\">\\n<tbody>\\n<tr>\\n<td width=\\\"168\\\"><strong>N\\u1ed9i Dung<\\/strong><\\/td>\\n<td width=\\\"505\\\"><strong>Quy C&aacute;ch<\\/strong><\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">Nh&atilde;n hi\\u1ec7u<\\/td>\\n<td width=\\\"505\\\"><strong>LETOP<\\/strong><\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">\\u0110\\u1ea7u phun in<\\/td>\\n<td width=\\\"505\\\"><strong>Eppson DX5 Nh\\u1eadt B\\u1ea3n. \\u0110\\u1ed9 ph&acirc;n gi\\u1ea3i l&ecirc;n \\u0111\\u1ebfn 1440 DPI<\\/strong><\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">Kh\\u1ed5 m&aacute;y<\\/td>\\n<td width=\\\"505\\\"><strong>2000mm<\\/strong><\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">Kh\\u1ed5 r\\u1ed9ng in t\\u1ed1i \\u0111a<\\/td>\\n<td width=\\\"505\\\"><strong>1950mm<\\/strong><\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">T\\u1ed1c \\u0111\\u1ed9 in<\\/td>\\n<td width=\\\"505\\\">4 pass ( 25 m<sup>2<\\/sup>\\/h)6 pass (18 m<sup>2<\\/sup>\\/h)\\n<p>8 pass (13 m<sup>2<\\/sup>\\/h)<\\/p>\\n<\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">M\\u1ef1c<\\/td>\\n<td width=\\\"505\\\"><strong>M\\u1ef1c Eco g\\u1ed1c d\\u1ea7u ngo&agrave;i tr\\u1eddi:<\\/strong>&nbsp;4 m&agrave;u C,M,Y,K,H\\u1ec7 th\\u1ed1ng cung c\\u1ea5p m\\u1ef1c: T\\u1ef1 \\u0111\\u1ed9ng<\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">B&igrave;nh m\\u1ef1c<\\/td>\\n<td width=\\\"505\\\"><strong>1 L<\\/strong><\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">Ch\\u1ea5t li\\u1ec7u in<\\/td>\\n<td width=\\\"505\\\">&nbsp;Decan chuy\\u1ec3n nhi\\u1ec7t, Gi\\u1ea5y chuy\\u1ec3n nhi\\u1ec7t, B\\u1ea1t Hiflex, B\\u1ea1t ph\\u1ea3n quang, \\u0110\\u1ec1 can ngo&agrave;i tr\\u1eddi, &nbsp;Decan &ocirc;t&ocirc;. Gi\\u1ea5y \\u1ea3nh, \\u0111\\u1ec1 can PP, l\\u1ee5a Simily, Backlit, \\u0111\\u1ec1 can trong, gi\\u1ea5y d&aacute;n t\\u01b0\\u1eddng. . .<\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">H\\u1ec7 th\\u1ed1ng t\\u1ef1 \\u0111\\u1ed9ng t\\u1eddi b\\u1ea1t<\\/td>\\n<td width=\\\"505\\\">T\\u1ef1 \\u0111\\u1ed9ng ch\\u1ecbu l\\u1ef1c&nbsp;\\u0111\\u1ebfn 75kg<\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">H\\u1ec7 th\\u1ed1ng s\\u1ea5y kh&ocirc;<\\/td>\\n<td width=\\\"505\\\">S\\u1ea5y kh&ocirc; b\\u1eb1ng nhi\\u1ec7t<\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">H\\u1ec7 th\\u1ed1ng l&agrave;m s\\u1ea1ch<\\/td>\\n<td width=\\\"505\\\">L&agrave;m s\\u1ea1ch t\\u1ef1 \\u0111\\u1ed9ngPhun s\\u01b0\\u01a1ng gi\\u1eef \\u1ea9m \\u0111\\u1ea7u phun<\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">C\\u1ed5ng in<\\/td>\\n<td width=\\\"505\\\">USB 2.0 or LAN<\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">\\u0110\\u1ed9 cao \\u0111\\u1ea7u in<\\/td>\\n<td width=\\\"505\\\">C&aacute;ch v\\u1eadt li\\u1ec7u 1.8 &ndash; 8mm<\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">Ph\\u1ea7n m\\u1ec1m RIP<\\/td>\\n<td width=\\\"505\\\">Maintop V5.3, Maintop V5.5, Photoprint<\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">\\u0110i\\u1ec7n Ngu\\u1ed3n<\\/td>\\n<td width=\\\"505\\\">AC 220V,50Hz\\/60Hz<\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">K&iacute;ch th\\u01b0\\u1edbc<\\/td>\\n<td width=\\\"505\\\">L2900mm x W 870mm x H 1210mm<\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">Tr\\u1ecdng l\\u01b0\\u1ee3ng<\\/td>\\n<td width=\\\"505\\\">280kg<\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">Gi&aacute;<\\/td>\\n<td width=\\\"505\\\"><strong>100.000.000 VN\\u0110<\\/strong><\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">&nbsp;<\\/td>\\n<td width=\\\"505\\\"><strong>B\\u1ea3o h&agrave;nh 12 th&aacute;ng.<\\/strong><strong>Gi&aacute; \\u0111&atilde; bao g\\u1ed3m v\\u1eadn chuy\\u1ec3n l\\u1eafp \\u0111\\u1eb7t, chuy\\u1ec3n giao c&ocirc;ng ngh\\u1ec7 \\u0111\\u1ebfn t\\u1eadn n\\u01a1i ng\\u01b0\\u1eddi s\\u1eed d\\u1ee5ng<\\/strong><\\/td>\\n<\\/tr>\\n<tr>\\n<td width=\\\"168\\\">&nbsp;<\\/td>\\n<td width=\\\"505\\\"><strong>Cam k\\u1ebft sau khi h\\u1ebft th\\u1eddi h\\u1ea1n b\\u1ea3o h&agrave;nh, cung c\\u1ea5p d\\u1ecbch v\\u1ee5 b\\u1ea3o d\\u01b0\\u1ee1ng, b\\u1ea3o tr&igrave; tr\\u1ecdn \\u0111\\u1eddi m&aacute;y.<\\/strong><\\/td>\\n<\\/tr>\\n<\\/tbody>\\n<\\/table>\\n<p>Qu&yacute; kh&aacute;ch c&oacute; nhu c\\u1ea7u mua m&aacute;y ho\\u1eb7c c\\u1ea7n t\\u01b0 v\\u1ea5n chi ti\\u1ebft h\\u01a1n, xin vui l&ograve;ng li&ecirc;n h\\u1ec7 theo th&ocirc;ng tin d\\u01b0\\u1edbi \\u0111&acirc;y:<\\/p>\"}]', 2, 2, 0, NULL, NULL, NULL, NULL, 1, 1, '2022-08-27 02:11:03', '2022-09-20 19:44:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `imagehome` varchar(255) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `link_demo` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `product_category`
--

INSERT INTO `product_category` (`id`, `quiz_id`, `imagehome`, `name`, `slug`, `content`, `link_demo`, `language`, `path`, `avatar`, `status`, `updated_at`, `created_at`) VALUES
(2, 0, '/uploads/images/trang-chu-167174023.jpg', '[{\"lang_code\":\"vi\",\"content\":\"M\\u00e1y in phun\"}]', 'may-in-phun', NULL, NULL, '0', NULL, '/uploads/images/danh-muc-381302265.png', 1, '2022-09-20 20:19:17', '2022-08-27 01:49:13'),
(3, 0, NULL, '[{\"lang_code\":\"vi\",\"content\":\"M\\u00e1y in Decal\"}]', 'may-in-decal', NULL, NULL, '0', NULL, NULL, 1, '2022-08-27 01:49:23', '2022-08-27 01:49:23'),
(4, 0, NULL, '[{\"lang_code\":\"vi\",\"content\":\"M\\u00e1y CNC\"}]', 'may-cnc', NULL, NULL, '0', NULL, NULL, 1, '2022-08-27 01:49:32', '2022-08-27 01:49:32'),
(5, 0, NULL, '[{\"lang_code\":\"vi\",\"content\":\"M\\u00e1y Laser\"}]', 'may-laser', NULL, NULL, '0', NULL, NULL, 1, '2022-08-27 01:49:43', '2022-08-27 01:49:43'),
(6, 0, NULL, '[{\"lang_code\":\"vi\",\"content\":\"Linh ki\\u00ean v\\u00e0 V\\u1eadt li\\u1ec7u\"}]', 'linh-kien-va-vat-lieu', NULL, NULL, '0', NULL, '/uploads/images/danh-muc-602019847.png', 1, '2022-09-20 00:48:20', '2022-08-27 01:49:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_estonian_ci DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `cate_slug` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_type`
--

INSERT INTO `product_type` (`id`, `quiz_id`, `language`, `name`, `slug`, `content`, `path`, `cate_id`, `cate_slug`, `avatar`, `status`, `created_at`, `updated_at`) VALUES
(2, 0, '0', '[{\"lang_code\":\"vi\",\"content\":\"M\\u00e1y in b\\u1ea1t kh\\u1ed5 l\\u1edbn\"}]', 'may-in-bat-kho-lon', NULL, NULL, 2, 'may-in-phun', NULL, 1, '2022-08-27 02:51:32', '2022-08-27 02:51:32'),
(3, 0, '0', '[{\"lang_code\":\"vi\",\"content\":\"M\\u00e1y in phun kh\\u1ed5 l\\u1edbn\"}]', 'may-in-phun-kho-lon', NULL, NULL, 2, 'may-in-phun', NULL, 1, '2022-08-27 02:51:47', '2022-08-27 02:51:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_type_two`
--

CREATE TABLE `product_type_two` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `cate_slug` varchar(255) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `type_slug` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `projects`
--

CREATE TABLE `projects` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `scale` varchar(255) DEFAULT NULL COMMENT 'quy mô',
  `operate` varchar(255) DEFAULT NULL COMMENT 'vận hành',
  `images` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `projects`
--

INSERT INTO `projects` (`id`, `name`, `slug`, `description`, `content`, `location`, `scale`, `operate`, `images`, `status`, `created_at`, `updated_at`) VALUES
(1, 'CỤM DỰ ÁN TÁNH LINH', 'cum-du-an-tanh-linh', '[{\"lang_code\":\"vi\",\"content\":\"<p>Th\\u1ef1c hi\\u1ec7n x\\u1eed l&yacute; m\\u1eb7t b\\u1eb1ng, \\u0111\\u1ea5t kh&ocirc; c\\u1eb1n, kh&oacute; thi c&ocirc;ng, \\u0111\\u1ed9 d\\u1ed1c cao. Th\\u1eddi \\u0111i\\u1ec3m tri\\u1ec3n khai giai \\u0111o\\u1ea1n cu\\u1ed1i g\\u1eb7p m\\u01b0a b&atilde;o nhi\\u1ec1u nh\\u01b0ng v\\u1eabn \\u0111\\u1ea3m b\\u1ea3o ti\\u1ebfn \\u0111\\u1ed9 \\u0111&oacute;ng \\u0111i\\u1ec7n tr\\u01b0\\u1edbc h\\u1ea1n 1 th&aacute;ng.<br \\/>Performing the treatment of the ground, arid soil di\\u001dcult for construction and steep slopes. Even though it rained heavily and there were numerous storms during the implementation of the last stage, the company<\\/p>\"}]', '[{\"lang_code\":\"vi\",\"content\":\"<p>Th\\u1ef1c hi\\u1ec7n x\\u1eed l&yacute; m\\u1eb7t b\\u1eb1ng, \\u0111\\u1ea5t kh&ocirc; c\\u1eb1n, kh&oacute; thi c&ocirc;ng, \\u0111\\u1ed9 d\\u1ed1c cao. Th\\u1eddi \\u0111i\\u1ec3m tri\\u1ec3n khai giai \\u0111o\\u1ea1n cu\\u1ed1i g\\u1eb7p m\\u01b0a b&atilde;o nhi\\u1ec1u nh\\u01b0ng v\\u1eabn \\u0111\\u1ea3m b\\u1ea3o ti\\u1ebfn \\u0111\\u1ed9 \\u0111&oacute;ng \\u0111i\\u1ec7n tr\\u01b0\\u1edbc h\\u1ea1n 1 th&aacute;ng.<br \\/>Performing the treatment of the ground, arid soil di\\u001dcult for construction and steep slopes. Even though it rained heavily and there were numerous storms during the implementation of the last stage, the company managed to complete the process of energizing one month ahead of schedule.<br \\/>T\\u1ed5ng nh&acirc;n s\\u1ef1 tri\\u1ec3n khai d\\u1ef1 &aacute;n t\\u1ea1i d\\u1ef1 &aacute;n: &gt;200 nh&acirc;n s\\u1ef1 v&agrave; 25 m&aacute;y m&oacute;c h\\u1ed7 tr\\u1ee3 thi c&ocirc;ng.<br \\/>Total project implementation personnel at the project: &gt;200 personnel and 25 construction support machinery.<br \\/>Tr\\u1ef1c ti\\u1ebfp x\\u1eed l&yacute; thay ch\\u1ee7 \\u0111\\u1ea7u t\\u01b0 c&aacute;c gi\\u1ea5y t\\u1edd ph&aacute;p l&yacute;, h\\u1ed3 s\\u01a1 d\\u1ef1 &aacute;n v&agrave; \\u0111\\u1ea5t \\u0111ai.<br \\/>Directly processing legal documents, project and land documents on behalf of the investor.<\\/p>\"}]', 'Huyện Tánh Linh, Tỉnh Bình Thuận', '5,0MW', '11/2020', '[\"\\/uploads\\/images\\/giai-phap-2100660447.jpg\",\"\\/uploads\\/images\\/giai-phap-1521604395.png\",\"\\/uploads\\/images\\/giai-phap-1727510143.jpg\"]', 1, '2022-08-19 09:12:21', '2022-08-19 09:36:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotion`
--

CREATE TABLE `promotion` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `promotion`
--

INSERT INTO `promotion` (`id`, `name`, `description`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'SỮA THƠM NGON - GIA ĐÌNH LUÔN KHỎE', 'Bổ sung dưỡng chất bảo vệ gia đình ưu đãi đến 30%', 'https://jicafood.com/san-pham/17.html', '/uploads/images/1713512302885632d513c8.jpg', 1, '2021-08-24 09:18:56', '2021-08-24 09:18:56'),
(3, 'BÁNH THƠM NGON - UỐNG ĐÃ KHÁT', 'Đồ uống Giảm đến 30%! Chỉ có tại VinMart - Nhanh tay bạn ơi!', 'https://jicafood.com/san-pham/16.html', '/uploads/images/671398501885632d513c8.jpg', 1, '2021-08-24 09:19:44', '2021-08-24 09:19:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `id` int(10) UNSIGNED NOT NULL,
  `_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`id`, `_name`, `_code`) VALUES
(1, 'Hồ Chí Minh', 'SG'),
(2, 'Hà Nội', 'HN'),
(3, 'Đà Nẵng', 'DDN'),
(4, 'Bình Dương', 'BD'),
(5, 'Đồng Nai', 'DNA'),
(6, 'Khánh Hòa', 'KH'),
(7, 'Hải Phòng', 'HP'),
(8, 'Long An', 'LA'),
(9, 'Quảng Nam', 'QNA'),
(10, 'Bà Rịa Vũng Tàu', 'VT'),
(11, 'Đắk Lắk', 'DDL'),
(12, 'Cần Thơ', 'CT'),
(13, 'Bình Thuận  ', 'BTH'),
(14, 'Lâm Đồng', 'LDD'),
(15, 'Thừa Thiên Huế', 'TTH'),
(16, 'Kiên Giang', 'KG'),
(17, 'Bắc Ninh', 'BN'),
(18, 'Quảng Ninh', 'QNI'),
(19, 'Thanh Hóa', 'TH'),
(20, 'Nghệ An', 'NA'),
(21, 'Hải Dương', 'HD'),
(22, 'Gia Lai', 'GL'),
(23, 'Bình Phước', 'BP'),
(24, 'Hưng Yên', 'HY'),
(25, 'Bình Định', 'BDD'),
(26, 'Tiền Giang', 'TG'),
(27, 'Thái Bình', 'TB'),
(28, 'Bắc Giang', 'BG'),
(29, 'Hòa Bình', 'HB'),
(30, 'An Giang', 'AG'),
(31, 'Vĩnh Phúc', 'VP'),
(32, 'Tây Ninh', 'TNI'),
(33, 'Thái Nguyên', 'TN'),
(34, 'Lào Cai', 'LCA'),
(35, 'Nam Định', 'NDD'),
(36, 'Quảng Ngãi', 'QNG'),
(37, 'Bến Tre', 'BTR'),
(38, 'Đắk Nông', 'DNO'),
(39, 'Cà Mau', 'CM'),
(40, 'Vĩnh Long', 'VL'),
(41, 'Ninh Bình', 'NB'),
(42, 'Phú Thọ', 'PT'),
(43, 'Ninh Thuận', 'NT'),
(44, 'Phú Yên', 'PY'),
(45, 'Hà Nam', 'HNA'),
(46, 'Hà Tĩnh', 'HT'),
(47, 'Đồng Tháp', 'DDT'),
(48, 'Sóc Trăng', 'ST'),
(49, 'Kon Tum', 'KT'),
(50, 'Quảng Bình', 'QB'),
(51, 'Quảng Trị', 'QT'),
(52, 'Trà Vinh', 'TV'),
(53, 'Hậu Giang', 'HGI'),
(54, 'Sơn La', 'SL'),
(55, 'Bạc Liêu', 'BL'),
(56, 'Yên Bái', 'YB'),
(57, 'Tuyên Quang', 'TQ'),
(58, 'Điện Biên', 'DDB'),
(59, 'Lai Châu', 'LCH'),
(60, 'Lạng Sơn', 'LS'),
(61, 'Hà Giang', 'HG'),
(62, 'Bắc Kạn', 'BK'),
(63, 'Cao Bằng', 'CB');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviewcus`
--

CREATE TABLE `reviewcus` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `reviewcus`
--

INSERT INTO `reviewcus` (`id`, `name`, `position`, `content`, `status`, `avatar`, `updated_at`, `created_at`) VALUES
(1, '[{\"lang_code\":\"vi\",\"content\":\"A H\\u1ea3i - T\\u00e2y Ninh\"}]', '[{\"lang_code\":\"vi\",\"content\":\"\\u0110i\\u1ec1u tr\\u1ecb r\\u0103ng m\\u1eafc c\\u00e0i kim lo\\u1ea1i\"}]', '[{\"lang_code\":\"vi\",\"content\":\"<p>&nbsp;T&ocirc;i r\\u1ea5t h&agrave;i l&ograve;ng v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng \\u0111&aacute; Granite, Marble m&agrave; Eurostone \\u0111&atilde; cung c\\u1ea5p. D\\u1ecbch v\\u1ee5 thi\\u1ebft k\\u1ebf, gia c&ocirc;ng, thi c&ocirc;ng \\u0111&aacute; chuy&ecirc;n nghi\\u1ec7p gi&uacute;p c&ocirc;ng tr&igrave;nh c\\u1ee7a t&ocirc;i \\u0111\\u1eb9p, sang tr\\u1ecdng v&agrave; nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u l\\u1eddi khen.&nbsp;<\\/p>\"}]', 1, '/uploads/images/a-hai---tay-ninh-1594514028.png', '2022-04-16 02:18:14', '2021-12-01 01:58:48'),
(2, '[{\"lang_code\":\"vi\",\"content\":\"A Tu\\u1ea5n - H\\u00e0 N\\u1ed9i\"}]', '[{\"lang_code\":\"vi\",\"content\":\"\\u0110i\\u1ec1u tr\\u1ecb r\\u0103ng m\\u1eafc c\\u00e0i kim lo\\u1ea1i\"}]', '[{\"lang_code\":\"vi\",\"content\":\"<p>&nbsp;Kim Thinh Ph&aacute;t l&agrave; c&aacute;i t&ecirc;n h&agrave;ng \\u0111\\u1ea7u m&agrave; t&ocirc;i \\u0111\\u01b0\\u1ee3c b\\u1ea1n b&egrave; gi\\u1edbi thi\\u1ec7u khi mu\\u1ed1n t&igrave;m \\u0111\\u1ecba ch\\u1ec9 thi c&ocirc;ng \\u0111&aacute; hoa c\\u01b0\\u01a1ng cho ng&ocirc;i nh&agrave; c\\u1ee7a m&igrave;nh. Ngo&agrave;i gi&aacute; c\\u1ea3 h\\u1ea5p d\\u1eabn th&igrave; ch\\u1ea5t l\\u01b0\\u1ee3ng, s\\u1ef1 chuy&ecirc;n nghi\\u1ec7p v&agrave; t&iacute;nh th\\u1ea9m m\\u1ef9 cao c\\u1ee7a c&ocirc;ng tr&igrave;nh l&agrave; \\u0111i\\u1ec1u khi\\u1ebfn t&ocirc;i r\\u1ea5t h&agrave;i l&ograve;ng.&nbsp;<\\/p>\"}]', 1, '/uploads/images/a-tuan---ha-noi-615603291.png', '2022-04-16 02:18:08', '2021-12-01 02:09:26'),
(3, '[{\"lang_code\":\"vi\",\"content\":\"Ch\\u1ecb H\\u00e0 - H\\u00e0 N\\u1ed9i\"}]', '[{\"lang_code\":\"vi\",\"content\":\"\\u0110i\\u1ec1u tr\\u1ecb r\\u0103ng m\\u1eafc c\\u00e0i kim lo\\u1ea1i\"}]', '[{\"lang_code\":\"vi\",\"content\":\"<p>&nbsp;Ngo&agrave;i gi&aacute; c\\u1ea3 ph\\u1ea3i ch\\u0103ng th&igrave; ch\\u1ea5t l\\u01b0\\u1ee3ng \\u0111&aacute;, s\\u1ef1 chuy&ecirc;n nghi\\u1ec7p trong thi c&ocirc;ng v&agrave; ch\\u0103m s&oacute;c kh&aacute;ch h&agrave;ng ch&iacute;nh l&agrave; \\u0111i\\u1ec1u m&agrave; t&ocirc;i r\\u1ea5t h&agrave;i l&ograve;ng v\\u1ec1 Eurostone. T\\u1ea5t c\\u1ea3 c&aacute;c h\\u1ea1ng m\\u1ee5c \\u1ed1p l&aacute;t \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c th\\u1ef1c hi\\u1ec7n nhanh ch&oacute;ng, k\\u1ef9 thu\\u1eadt, th\\u1ea9m m\\u1ef9 cao.&nbsp;<\\/p>\"}]', 1, '/uploads/images/chị-ha---ha-noi-652058859.png', '2022-04-16 02:18:02', '2021-12-25 01:48:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `created_at`, `updated_at`) VALUES
(1, 'developer', 'Front-end Developer', '2019-12-15 17:00:00', '2019-12-15 17:00:00'),
(3, 'manager', 'Assistant Manager', '2019-12-15 17:00:00', '2019-12-15 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services`
--

CREATE TABLE `services` (
  `id` int(11) UNSIGNED NOT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `cate_slug` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_category`
--

CREATE TABLE `service_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `service_category`
--

INSERT INTO `service_category` (`id`, `name`, `slug`, `content`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Nhập khẩu và cung cấp vật tư thiết bị', 'nhap-khau-va-cung-cap-vat-tu-thiet-bi', '<p>&nbsp; &nbsp; Nhập khẩu v&agrave; cung cấp vật tư thiết bị &nbsp;&nbsp; &nbsp; Nhập khẩu v&agrave; cung cấp vật tư thiết bị&nbsp;</p>', '<p>While improving the yield and performance of solar energy products, our PV industry experience enables us to provide in-depth material sourcing, financing and supply chain expertise for every step.</p>\n<p>While improving the yield and performance of solar energy products, our PV industry experience enables us to provide in-depth material sourcing, financing and supply chain expertise for every step.</p>', '/uploads/images/danh-muc-dich-vu-1848863219.jpg', 1, '2022-08-08 21:34:15', '2022-08-10 02:00:34'),
(3, 'Xây lắp hệ thống NLMT', 'xay-lap-he-thong-nlmt', '<p>M&ocirc; tả cho dịch vụ X&acirc;y lắp hệ thống NLMT nội dung M&ocirc; tả cho dịch vụ X&acirc;y lắp hệ thống NLMT</p>', '<p>While improving the yield and performance of solar energy products, our PV industry experience enables us to provide in-depth material sourcing, financing and supply chain expertise for every step.</p>\n<p>While improving the yield and performance of solar energy products, our PV industry experience enables us to provide in-depth material sourcing, financing and supply chain expertise for every step.</p>', '/uploads/images/danh-muc-dich-vu-1949615562.jpg', 1, '2022-08-10 01:58:25', '2022-08-10 01:58:41'),
(4, 'Tư vấn dịch vụ giá trị gia tăng cho dự án', 'tu-van-dich-vu-gia-tri-gia-tang-cho-du-an', '<p>While improving the yield and performance of solar energy products, our PV industry experience enables us to provide in-depth material sourcing, financing and supply chain expertise for every step.</p>\n<p>While improving the yield and performance of solar energy products, our PV industry experience enables us to provide in-depth material sourcing, financing and supply chain expertise for every step.</p>', '<p>While improving the yield and performance of solar energy products, our PV industry experience enables us to provide in-depth material sourcing, financing and supply chain expertise for every step.</p>\n<p>While improving the yield and performance of solar energy products, our PV industry experience enables us to provide in-depth material sourcing, financing and supply chain expertise for every step.</p>', '/uploads/images/danh-muc-dich-vu-227723929.jpg', 1, '2022-08-10 02:01:54', '2022-08-10 02:01:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `webname` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `GA` varchar(255) DEFAULT NULL,
  `fbPixel` varchar(255) DEFAULT NULL,
  `iframe_map` text DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `popupimage` varchar(255) DEFAULT NULL,
  `statusPopup` int(11) DEFAULT NULL,
  `linkpopup` varchar(255) DEFAULT NULL,
  `footer_content` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `company`, `webname`, `address1`, `address2`, `phone1`, `phone2`, `fax`, `email`, `facebook`, `google`, `GA`, `fbPixel`, `iframe_map`, `favicon`, `logo`, `popupimage`, `statusPopup`, `linkpopup`, `footer_content`, `created_at`, `updated_at`) VALUES
(1, 'CÔNG TY TNHH PHÁT TRIỂN CÔNG NGHỆ NĂNG LƯỢNG TÁI TẠO', 'CÔNG TY TNHH PHÁT TRIỂN CÔNG NGHỆ NĂNG LƯỢNG TÁI TẠO', '1 A Nguyễn Cảnh Dị, Phường Định Công, Quận Hoàng Mai, Thành Phố Hà Nội', NULL, '024 6681 7989', NULL, NULL, 'info@retd.com.vn', NULL, NULL, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.4403315548634!2d105.8065846153319!3d21.01506019362074!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab611cb43eb3%3A0x8a49594d49650268!2zNjcgTmcuIDI1IFAuIFbFqSBOZ-G7jWMgUGhhbiwgTMOhbmcgSOG6oSwgxJDhu5FuZyDEkGEsIEjDoCBO4buZaSwgVmlldG5hbQ!5e0!3m2!1sen!2s!4v1646985052917!5m2!1sen!2s\" width=\"100%\" height=\"250\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '/uploads/images/favicon-606604065.png', '/uploads/images/logo-1485096670.png', '/uploads/images/popupimage-516078004.png', 0, NULL, NULL, NULL, '2022-09-22 01:09:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `solution`
--

CREATE TABLE `solution` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `images` text DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `solution`
--

INSERT INTO `solution` (`id`, `name`, `slug`, `description`, `content`, `status`, `images`, `updated_at`, `created_at`) VALUES
(2, 'Công nghệ ESCO', 'cong-nghe-esco', '[{\"lang_code\":\"vi\",\"content\":\"<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Unde, quas porro placeat consectetur id in aut laboriosam sunt nesciunt, suscipit doloribus alias ducimus beatae hic ea, accusamus quam repudiandae recusandae?<\\/p>\"}]', '[{\"lang_code\":\"vi\",\"content\":\"<div>\\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Unde, quas porro placeat consectetur id in aut laboriosam sunt nesciunt, suscipit doloribus alias ducimus beatae hic ea, accusamus quam repudiandae recusandae?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Unde, quas porro placeat consectetur id in aut laboriosam sunt nesciunt, suscipit doloribus alias ducimus beatae hic ea, accusamus quam repudiandae recusandae?Lorem ipsum dolor, sit amet consectetur adipisicing elit. Unde, quas porro placeat consectetur id in aut laboriosam sunt nesciunt, suscipit doloribus alias ducimus beatae hic ea, accusamus quam repudiandae recusandae?<\\/p>\\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Unde, quas porro placeat consectetur id in aut laboriosam sunt nesciunt, suscipit doloribus alias ducimus beatae hic ea, accusamus quam repudiandae recusandae?<br \\/>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Unde, quas porro placeat consectetur id in aut laboriosam sunt nesciunt, suscipit doloribus alias ducimus beatae hic ea, accusamus quam repudiandae recusandae?<\\/p>\\n<ul>\\n<li>Lorem ipsum dolor, sit amet consectetur adipisicing elit.&nbsp;<\\/li>\\n<li>Unde, quas porro placeat consectetur id in aut laboriosam sunt nesciunt,<\\/li>\\n<li>&nbsp;suscipit doloribus alias ducimus beatae hic ea, accusamus quam repudiandae recusandae?<\\/li>\\n<\\/ul>\\n<\\/div>\"}]', 1, '[\"\\/uploads\\/images\\/giai-phap-244246073.jpg\",\"\\/uploads\\/images\\/giai-phap-649904118.jpg\",\"\\/uploads\\/images\\/giai-phap-834913489.png\",\"\\/uploads\\/images\\/giai-phap-654160667.jpg\"]', '2022-08-19 08:50:54', '2022-08-19 08:50:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admins', 'tuananhdinamo1122@gmail.com', '2019-12-14 02:00:24', '$2y$10$R1vBr035qVzMfoYb1GesquHA69LA8wforNwk2RKAwGEcMyKbiYtUa', 'KDcfN3Tv1RQbKZmHiHd8fqUA2uiIGUptrIIjgFg7csQaaz4FZBYbzQmjbpRY', '2019-12-13 17:00:00', '2019-12-13 17:00:00'),
(3, 'admins', 'tuananhdinamo112112@gmail.com', '2019-12-14 02:00:24', '$2y$10$R1vBr035qVzMfoYb1GesquHA69LA8wforNwk2RKAwGEcMyKbiYtUa', 'KDcfN3Tv1RQbKZmHiHd8fqUA2uiIGUptrIIjgFg7csQaaz4FZBYbzQmjbpRY', '2019-12-13 17:00:00', '2019-12-13 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_permissions`
--

CREATE TABLE `users_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users_permissions`
--

INSERT INTO `users_permissions` (`id`, `user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-12-14 17:00:00', '2019-12-14 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_roles`
--

CREATE TABLE `users_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users_roles`
--

INSERT INTO `users_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-12-14 17:00:00', '2019-12-14 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `name`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Video 1', '<iframe width=\"100%\" height=\"250\" src=\"https://www.youtube.com/embed/DPcBzGREea0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '/uploads/images/video--134423102.jpg', 1, '2022-08-27 08:41:51', '2022-08-27 08:41:51'),
(2, 'Video 2', '<iframe width=\"100%\" height=\"250\" src=\"https://www.youtube.com/embed/DPcBzGREea0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '/uploads/images/video--478434929.jpg', 1, '2022-08-27 08:41:51', '2022-08-27 08:41:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `albumafter`
--
ALTER TABLE `albumafter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `link` (`link`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner_ads`
--
ALTER TABLE `banner_ads`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `blog_type_category`
--
ALTER TABLE `blog_type_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_customer`
--
ALTER TABLE `category_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `_province_id` (`_province_id`);

--
-- Chỉ mục cho bảng `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `founders`
--
ALTER TABLE `founders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `language_static`
--
ALTER TABLE `language_static`
  ADD PRIMARY KEY (`languageKey`) USING BTREE;

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `mess_contact`
--
ALTER TABLE `mess_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `page_contents`
--
ALTER TABLE `page_contents`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `prizes`
--
ALTER TABLE `prizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_type_two`
--
ALTER TABLE `product_type_two`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviewcus`
--
ALTER TABLE `reviewcus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service_category`
--
ALTER TABLE `service_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `solution`
--
ALTER TABLE `solution`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `albumafter`
--
ALTER TABLE `albumafter`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `banner_ads`
--
ALTER TABLE `banner_ads`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `blog_type_category`
--
ALTER TABLE `blog_type_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category_customer`
--
ALTER TABLE `category_customer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=710;

--
-- AUTO_INCREMENT cho bảng `founders`
--
ALTER TABLE `founders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `mess_contact`
--
ALTER TABLE `mess_contact`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `page_contents`
--
ALTER TABLE `page_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `prizes`
--
ALTER TABLE `prizes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product_type_two`
--
ALTER TABLE `product_type_two`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `reviewcus`
--
ALTER TABLE `reviewcus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service_category`
--
ALTER TABLE `service_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `solution`
--
ALTER TABLE `solution`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

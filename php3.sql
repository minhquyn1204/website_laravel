-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 02, 2021 lúc 03:50 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `php3`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `pty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `pty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 900, NULL, NULL),
(2, 2, 1, 1, 900, NULL, NULL),
(3, 3, 3, 1, 500, NULL, NULL),
(4, 4, 2, 2, 1000, NULL, NULL),
(5, 4, 3, 2, 500, NULL, NULL),
(6, 5, 7, 2, 613, NULL, NULL),
(7, 6, 1, 2, 900, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Hùng Riimm', '123456789', '07 Hồ Quý Ly , quận Thanh Khê , Đà Nẵng', 'hungrim1234@gmail.com', 'Helllo', '2021-07-28 23:37:17', '2021-07-28 23:37:17'),
(2, 'admin', '0123456789', '07 Hồ Quý Ly , quận Thanh Khê , Đà Nẵng', 'hungrim1234@gmail.com', 'adadad', '2021-07-29 00:09:02', '2021-07-29 00:09:02'),
(3, 'Hùng Riimm', '8547772767', '07 Hồ Quý Ly , quận Thanh Khê , Đà Nẵng', 'hungrim1234@gmail.com', 'aa', '2021-08-14 08:41:35', '2021-08-14 08:41:35'),
(4, 'Hùng Riimm', '8547772767', '07 Hồ Quý Ly , quận Thanh Khê , Đà Nẵng', 'hungrim1234@gmail.com', 'ghghghghg', '2021-08-18 04:19:52', '2021-08-18 04:19:52'),
(5, 'Hùng Riimm', '8547772767', '07 Hồ Quý Ly , quận Thanh Khê , Đà Nẵng', 'hungrim1234@gmail.com', 'a', '2021-08-20 00:09:39', '2021-08-20 00:09:39'),
(6, 'Hùng Riimm', '8547772767', '07 Hồ Quý Ly , quận Thanh Khê , Đà Nẵng', 'hungrim1234@gmail.com', 'allala', '2021-08-20 04:00:44', '2021-08-20 04:00:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `active`, `created_at`, `updated_at`) VALUES
(4, 'Giày Dép', 0, 'aaaaa', '<p>aaaaaaaaa</p>', 1, '2021-07-27 03:23:44', '2021-07-28 05:26:47'),
(5, 'Nike', 4, 'Nike thương hiệu nổi tiếng', '<p>aaaaa</p>', 1, '2021-07-28 05:31:48', '2021-07-28 05:33:31'),
(6, 'Mũ', 0, 'mũ', '<p>Mũ V&iacute;p bờ rồ&nbsp;</p>', 1, '2021-07-29 03:40:23', '2021-07-29 03:40:23'),
(7, 'Quần Áo', 0, 'Quần áo các loại', '<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>', 1, '2021-07-29 04:05:02', '2021-07-29 04:05:02'),
(9, 'Nón Sơn', 6, 'Nón', '<p>N&oacute;n Sơn</p>', 1, '2021-08-10 01:58:33', '2021-08-10 01:58:33'),
(10, 'Air Jordan', 4, 'Air Jordan', '<p>Air Jordan</p>', 1, '2021-08-19 21:51:04', '2021-08-19 21:51:04'),
(11, 'Dior', 7, 'Quần áo dior', '<p>Quần &aacute;o dior</p>', 1, '2021-08-20 04:02:16', '2021-08-20 04:02:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_26_121348_create_menus_table', 1),
(5, '2021_05_29_085033_create_products_table', 1),
(6, '2021_05_29_085458_update_table_product', 1),
(7, '2021_05_30_091352_create_sliders_table', 1),
(8, '2021_06_07_115343_create_customers_table', 1),
(9, '2021_06_07_115353_create_carts_table', 1),
(10, '2021_06_11_035047_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `created_at`, `updated_at`, `thumb`) VALUES
(1, 'ADIDAS XZ 2K BOOST', 'Thiết kế đặc trưng trong phong cách của Adidas giành cho Adidas Xz 2K Boost', '<p>aaaaaaaaaa</p>', 1, 1000, 900, 1, '2021-07-28 02:35:11', '2021-08-19 20:41:48', '\r\n/storage/uploads/2021/07/29/January20211480_970x.jpg'),
(2, 'NIKE AIR FORCE 1 SE LOVE FOR ALL VALENTINES SNEAKER', 'Chia sẻ tình yêu với Air Force 1 Low mới nhất của Nike', '<p>Chia sẻ t&igrave;nh y&ecirc;u với Air Force 1 Low mới nhất của Nike</p>', 5, 3000, 1000, 1, '2021-07-29 00:51:56', '2021-08-19 19:12:20', '/storage/uploads/2021/07/29/January20211480_970x.jpg'),
(3, 'TÚI XÁCH NỮ LEBY LEMINO', 'Phom dáng cứng cáp là lựa chọnphụ kiện phổ biến bởi thiết kế đơn giản, tinh tế. Những miếng da màu sắc đan xen, đối lập tạo điểm nhấn thú vị cho mẫu túi này. Túi đeo chéo chắn chắn sẽ là lựa chọn phù hợp với những cô gái yêu thích sự trẻ trung, năng động.', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td><strong>:</strong>&nbsp;Da&nbsp;tổng hợp cao cấp</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>K&iacute;ch thước</strong></td>\r\n			<td>\r\n			<p><strong>:</strong>&nbsp;22.5m (d&agrave;i) x 14cm (cao) x 7.5cm (r&ocirc;̣ng)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>D&acirc;y đeo</strong></td>\r\n			<td><strong>:</strong>&nbsp;T&uacute;i x&aacute;ch đeo ch&eacute;ohoặc x&aacute;ch tay</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Ngăn t&uacute;i</strong></td>\r\n			<td><strong>: 01 ngăn ch&iacute;nh lớn v&agrave; 01 ngăn phụ nhỏ</strong><br />\r\n			&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 8, 1000, 500, 1, '2021-08-10 01:59:19', '2021-08-19 19:49:25', '/storage/uploads/2021/08/10/Tui-xach-nu-Leby-Lemino-LB232109-31-01.jpg'),
(4, 'NIKE DUNK HIGH 1985 UNDERCOVER UBA', 'Nike 1985 Undercover Gym Red có phần trên bằng da sần màu đỏ', '<pre>\r\nNike 1985 Undercover Gym Red c&oacute; phần tr&ecirc;n bằng da sần m&agrave;u đỏ, được bổ sung bởi c&aacute;c lớp phủ da m&agrave;u đen giống như swoosh b&ecirc;n h&ocirc;ng. Đồng thương hiệu sau đ&oacute; được tiết lộ tr&ecirc;n lưỡi g&agrave;, t&ecirc;n của nh&agrave; thiết kế Nhật Bản ở mặt trong, cũng như &quot;Hiệp hội b&oacute;ng rổ Undercover &quot;&quot; ở g&oacute;t gi&agrave;y. D&acirc;y buộc m&agrave;u trắng v&agrave; hiệu ứng lốm đốm tr&ecirc;n đế cổ điển đ&atilde; ho&agrave;n th&agrave;nh trang điểm.</pre>', 5, 240, NULL, 1, '2021-08-19 19:42:31', '2021-08-19 19:42:31', '/storage/uploads/2021/08/20/Nike-Dunk-High-1985-Undercover-UBA-Crepslocker-Front_960x.jpg'),
(5, 'NIKE DUNK HIGH AMBUSH FLASH LIME SNEAKER', 'Được hiển thị bằng màu xanh lá cây neon,Nike Dunk High AMBUSH Flash Lime xuất hiện với tính năng chặn màu sắc tương tự như cách phối màu Active Fuchsia. Hầu hết phần trên của nó là đơn sắc, ngoại trừ Swoosh màu đen làm nổi bật tỷ lệ được tưởng tượng lại của nó.', '<pre>\r\nCOLOURWAY: Xanh nguy&ecirc;n tử\r\nNICKNAME: Flash Lime\r\nNG&Agrave;Y PH&Aacute;T H&Agrave;NH: 30/07/2021\r\nTH&Agrave;NH PHẦN: Da thuộc</pre>', 5, 435, NULL, 1, '2021-08-19 19:55:50', '2021-08-19 19:55:50', '/storage/uploads/2021/08/20/Nike-Dunk-High-Ambush-Flash-Lime-Sneaker-Crepslocker-Front_960x.jpg'),
(6, 'ADIDAS X PHARRELL NMD HU TRIPLE BLACK', 'Ảnh hưởng của Pharrell Williams đối với hình bóng mang tính biểu tượng này được thể hiện rõ ràng qua thiết kế táo bạo, đầy màu sắc với khẩu hiệu đồ họa được thêu ở phần upper primeknit. Bộ phận đế BOOST thông thường có tính năng nổi bật là đệm lót dưới chân siêu phàm, trong khi hệ thống dây và ổn định lồng được thiết kế mới đã được chế tạo cho đôi giày thể thao đang rất được săn đón này.', '<pre>\r\nM&agrave;u đen\r\nTH&Agrave;NH PHẦN: Primeknit\r\nĐặc t&iacute;nh ho&agrave;n trả năng lượng tăng cường giữ cho mỗi bước đi được sạc với nguồn cung cấp năng lượng nhanh, &aacute;nh s&aacute;ng v&ocirc; tận\r\nVớ vừa vặn\r\nLồng thiết kế mới\r\nĐồ họa th&ecirc;u\r\nD&acirc;y đen, trắng</pre>', 1, 476, NULL, 1, '2021-08-19 20:04:39', '2021-08-19 20:04:39', '/storage/uploads/2021/08/20/Noivember20200307_960x.jpg'),
(7, 'ADIDAS NMD HU PHARRELL HUMAN MADE WHITE RED', 'Kết hợp màu sắc rực rỡ với những lời hy vọng và sự bao trùm, nhạc sĩ kiêm nhà thiết kế Pharrell Williams tôn vinh màu sắc của nhân loại.', '<pre>\r\nĐ&ocirc;i gi&agrave;y n&agrave;y l&agrave;m lại h&igrave;nh b&oacute;ng NMD mang t&iacute;nh biểu tượng với đồ họa tr&aacute;i tim th&ecirc;u &quot;Human Made&quot; tr&ecirc;n vải dệt ph&iacute;a tr&ecirc;n. Đệm tăng cường cung cấp năng lượng trở lại v&ocirc; tận v&agrave; sự thoải m&aacute;i với mỗi bước đi.\r\nM&Agrave;U SẮC: Trắng đỏ\r\nTH&Agrave;NH PHẦN: Primeknit\r\nVớ vừa vặn\r\nLồng thiết kế mới\r\n</pre>', 1, 613, NULL, 1, '2021-08-19 20:07:55', '2021-08-19 20:09:34', '/storage/uploads/2021/08/20/IMG_8651_d7ceccca-b79e-4ed6-9a99-6b0ebc20484b_960x.jpg'),
(8, 'ADIDAS NMD HUMAN RACE TR', 'Ảnh hưởng của Pharrell Williams đối với hình bóng mang tính biểu tượng này được thể hiện rõ ràng qua thiết kế táo bạo, đầy màu sắc với khẩu hiệu đồ họa được thêu ở phần upper primeknit.', '<pre>\r\nM&Agrave;U SẮC: Oreo\r\nTH&Agrave;NH PHẦN: Primeknit\r\nĐặc t&iacute;nh ho&agrave;n trả năng lượng tăng cường giữ cho mỗi bước đi được sạc với nguồn cung cấp năng lượng nhanh, &aacute;nh s&aacute;ng v&ocirc; tận\r\nVớ vừa vặn\r\nLồng thiết kế mới\r\nĐồ họa th&ecirc;u &quot;M&acirc;y&quot; Trăng &quot;\r\nD&acirc;y đen, trắng</pre>', 1, 749, NULL, 1, '2021-08-19 20:45:19', '2021-08-19 20:45:19', '/storage/uploads/2021/08/20/IMG_4070_960x.jpg'),
(9, 'AIR JORDAN 4 RETRO WHITE OREO (2021)', 'Air Jordan 4 White Oreo (2021) được trang trí bằng đế da cao cấp màu trắng với lớp hoàn thiện  \'\' đốm \'\' màu xám xi măng được tìm thấy trên phần lớn đế giữa và các khoen trên và dưới. . Thương hiệu được cung cấp bởi biểu tượng Jumpman màu đỏ tươi trên đầu tab ren và màu xám thứ hai ở gót chân.', '<pre>\r\nCOLOURWAY: Oreo trắng\r\nNICKNAME: Oreo\r\nNG&Agrave;Y PH&Aacute;T H&Agrave;NH: 03/07/2021\r\nNg&oacute;n ch&acirc;n tr&ograve;n, đầu thấp\r\nLogo Jumpman tr&ecirc;n lưỡi\r\nMặt trước bằng ren trắng\r\nLớp l&oacute;t v&agrave; đế m&agrave;u trắng</pre>', 10, NULL, NULL, 1, '2021-08-19 21:52:34', '2021-08-19 21:52:34', '/storage/uploads/2021/08/20/Air-Jordan-4-Retro-White-Oreo-_2021_-Crepslocker-Front_960x.jpg'),
(10, 'AIR JORDAN 4 RETRO SE DIY (GS)', 'Air Jordan 4 RETRO SE DIY Được phát triển cho trẻ em lớn, Air Jordan 4 Retro GS ‘DIY’ sử dụng phần giữa cổ điển với thiết kế dạng phiến trống, nổi bật bởi phần trên bằng da màu trắng với một loạt các điểm nhấn màu đen tương phản.', '<p>Ch&uacute;ng bao gồm lớp l&oacute;t cổ gi&agrave;y của gi&agrave;y sneaker, c&aacute;c bản hit mang thương hiệu Jumpman, khoen v&agrave; c&aacute;nh TPU. Đường ống m&agrave;u đen tr&ecirc;n lớp phủ b&agrave;n ch&acirc;n giữa v&agrave; b&agrave;n ch&acirc;n trước lặp lại đồ họa b&uacute;t v&agrave; mực tr&ecirc;n bảng điều khiển phần tư, c&oacute; thể được t&ocirc; bằng m&agrave;u sắc th&ocirc;ng qua một tập hợp c&aacute;c điểm đ&aacute;nh dấu nhiều m&agrave;u. Những đốm s&aacute;ng lấm tấm phủ l&ecirc;n phần đế giữa, c&oacute; đệm Air-sole c&oacute; thể nh&igrave;n thấy dưới g&oacute;t ch&acirc;n.</p>\r\n\r\n<pre>\r\nCOLOURWAY: Trắng\r\nNICKNAME: Tự l&agrave;m\r\nNG&Agrave;Y PH&Aacute;T H&Agrave;NH: 19/08/2021\r\nNg&oacute;n ch&acirc;n tr&ograve;n, đầu thấp\r\nLogo Jumpman tr&ecirc;n lưỡi\r\nMặt trước bằng ren trắng\r\nLớp l&oacute;t v&agrave; đế m&agrave;u trắng</pre>', 1, 272, NULL, 1, '2021-08-20 00:34:51', '2021-08-20 00:34:51', '/storage/uploads/2021/08/20/Air-Jordan-4-Retro-SE-DIY-_GS_-Crepslocker-Front_960x.jpg'),
(11, 'AIR JORDAN 4 RETRO BLACK CAT 2006 SNEAKER', 'Air Jordan 4 Black Cat có màu đen đơn sắc phía trên với chỉ Jumpman màu bạc trên lưỡi để tương phản với phần còn lại. Các yếu tố phù hợp như dây buộc, khoen và Cánh nâng cao thiết kế, được hoàn thiện bằng một đế đen toàn bộ.', '<p>COLOURWAY: Đen<br />\r\nNICKNAME: M&egrave;o đen<br />\r\nNG&Agrave;Y PH&Aacute;T H&Agrave;NH: Ph&aacute;t h&agrave;nh năm 2006<br />\r\nTH&Agrave;NH PHẦN: Da lộn</p>', 10, 810, NULL, 1, '2021-08-20 01:01:22', '2021-08-20 01:01:22', '/storage/uploads/2021/08/20/Air-Jordan-4-Retro-Black-Cat-2006-Sneaker-Crepslocker-Front_960x.jpg'),
(12, 'TÚI XÁCH NỮ LEMINO MONOGRAM CANVAS', 'Chất liệu da Monogram canvas cao cấp, chống nước, có tuổi thọ cao. Với thiết kế túi đeo chéo phù hợp với những cô nàng năng động khi đi chơi. Phom túi nhỏ tôn dáng sẽ là người bạn đồng hành theo bạn dù bất cứ đâu. Dáng túi WRISTLET  sẽ phù hợp mix với những bộ đồ trẻ trung năng động như quần jean, áo thun hoặc chân váy xòe hay đầm dài liền thân cho những buổi hẹn cuối tuần.', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td><strong>:</strong>&nbsp;Da&nbsp;canvas</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>K&iacute;ch thước</strong></td>\r\n			<td><strong>:</strong>17,5cm (d&agrave;i) x 13cm (cao) x2,5cm (r&ocirc;̣ng )</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>D&acirc;y đeo</strong></td>\r\n			<td><strong>:</strong>&nbsp;T&uacute;i x&aacute;ch đeo ch&eacute;o hoặc x&aacute;ch tay</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Ngăn t&uacute;i</strong></td>\r\n			<td><strong>: 01 ngăn ch&iacute;nh lớn v&agrave; 01 ngăn phụ nhỏ</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 8, 240, NULL, 1, '2021-08-20 01:39:39', '2021-08-20 01:39:39', '/storage/uploads/2021/08/20/ce312cd02aec53ca2d2ff0a3dde01cab.jpg'),
(13, 'AIR JORDAN 4 X UNION LA DESERT MOSS SNEAKER', 'Air Jordan 4 Retro Union Desert Moss có cấu trúc lưới và da lộn cao cấp. Phối màu chủ đạo là màu vàng nghệ với màu tím và xanh ngọc ở gót giày. Thương hiệu UN / LA kín đáo và đế ngoài màu be hoàn thiện bộ quần áo.', '<pre>\r\nCOLOURWAY: R&ecirc;u / Xanh ngọc lam\r\nNICKNAME: R&ecirc;u sa mạc\r\nNG&Agrave;Y PH&Aacute;T H&Agrave;NH: 20/06/2021\r\nTH&Agrave;NH PHẦN: Da lộn lưới</pre>', 10, 545, NULL, 1, '2021-08-20 01:52:39', '2021-08-20 01:52:39', '/storage/uploads/2021/08/20/Air-Jordan-4-x-Union-Retro-SP-30th-Anniversary-Union-Desert-Moss-Sneaker-Crepslocker-Front_960x.jpg'),
(14, 'AIR JORDAN 6 RETRO GOLD HOOPS (W)', 'Air Jordan 6 Gold Hoops có phần thân được làm bằng da lộn màu trắng đi kèm với các lớp phủ bằng da trắng. Thiết kế được hoàn thiện bởi các điểm nhấn màu hồng pastel trên lưỡi gà và đế giữa hoặc các chi tiết vàng trên kim loại ở chân như dây buộc phía sau, khóa ren và thẻ Jumpman có thể tháo rời.', '<pre>\r\nCOLOURWAY: Trắng / V&agrave;ng\r\nNICKNAME: V&ograve;ng v&agrave;ng\r\nNG&Agrave;Y PH&Aacute;T H&Agrave;NH: 01/07/2021\r\nTH&Agrave;NH PHẦN: Da / Da lộn</pre>', 10, 285, NULL, 1, '2021-08-20 01:54:24', '2021-08-20 01:54:24', '/storage/uploads/2021/08/20/Air-Jordan-6-Retro-Gold-Hoops-_W_-Crepslocker-Front_960x.jpg'),
(15, 'AIR JORDAN X TRAVIS SCOTT DESERT KHAKI HOODIE', 'Travis Scott x Jordan Brand Pullover Hoodie in Khaki được phát hành vào tháng 4 năm 2021, vào sinh nhật lần thứ 29 của nghệ sĩ.', '<p>Năm trang phục kh&aacute;c v&agrave; Travis Scott x Jordan 6 đ&atilde; được ph&aacute;t h&agrave;nh c&ugrave;ng với chiếc &aacute;o hoodie n&agrave;y trong c&ugrave;ng ng&agrave;y. Chủ đề ch&iacute;nh của sự hợp t&aacute;c Travis Scott x Jordan n&agrave;y l&agrave; Kaki, thống trị bộ sưu tập như m&agrave;u cơ bản của mọi trang phục v&agrave; gi&agrave;y thể thao. Chiếc &aacute;o hoodie n&agrave;y c&oacute; một loạt c&aacute;c logo Travis Scott Cactus Jack kết hợp với c&aacute;c logo Thương hiệu Jordan ở mặt trước của n&oacute;. Mặt sau của chiếc &aacute;o hoodie c&oacute; sự kết hợp tương tự, nhưng lớn hơn của Travis Scott Cactus Jack v&agrave; Jordan Brand. Chiếc &aacute;o hoodie n&agrave;y được ph&aacute;t h&agrave;nh như một phần trong đợt giao h&agrave;ng hợp t&aacute;c đầu ti&ecirc;n của Travis Scott với Jordan Brand v&agrave;o năm 2021.</p>\r\n\r\n<pre>\r\nM&Agrave;U SẮC: Kaki\r\nTH&Agrave;NH PHẦN: 100% cotton\r\nCHĂM S&Oacute;C: Rửa tay</pre>', 7, 275, NULL, 1, '2021-08-20 01:56:35', '2021-08-20 01:56:35', '/storage/uploads/2021/08/20/April20212887_960x.jpg'),
(16, 'JORDAN X TRAVIS SCOTT DESERT KHAKI CANVAS PANTS', 'Những chiếc quần vải thương hiệu Travis Scott x Jordan này được phát hành vào sinh nhật lần thứ 29 của nghệ sĩ cùng với một thương hiệu hợp tác hoàn toàn mới Air Jordan 6.', '<p>Travis Scott v&agrave; Jordan Brand t&aacute;i hợp lần đầu ti&ecirc;n v&agrave;o năm 2021 v&agrave;o sinh nhật của nghệ sĩ để ph&aacute;t h&agrave;nh một bộ quần &aacute;o s&aacute;u mảnh c&ugrave;ng với người Anh Khaki Air Jordan 6. Chiếc quần nặng nề n&agrave;y c&oacute; thương hiệu Travis Scott Cactus Jack v&agrave; Jordan hợp t&aacute;c ở cả mặt trước v&agrave; mặt sau.</p>\r\n\r\n<pre>\r\nM&Agrave;U SẮC: Kaki\r\nTH&Agrave;NH PHẦN: 100% vải\r\nThắt chặt quần thể thao\r\nPh&ugrave; hợp thường xuy&ecirc;n</pre>', 7, 270, NULL, 1, '2021-08-20 01:58:23', '2021-08-20 01:58:23', '/storage/uploads/2021/08/20/April20212889_960x.jpg'),
(17, 'NIKE X OFF-WHITE AIR FORCE 1 UNIVERSITY GOLD', 'Nike Air Force 1 Low Off-White University Gold Metallic Silver được trang trí bởi phần trên bằng da cao cấp màu vàng. Trên bảng điều khiển quý, màu bạc swoosh Thiết kế được may liền mạch mang lại nét không có cấu trúc rất lôi cuốn. Các thuộc tính Off-White tất nhiên có mặt với \"AIR\" trên đế và dây buộc màu vàng treo trên dây buộc.', '<pre>\r\nM&Agrave;U SẮC: V&Agrave;NG ĐẠI HỌC / BẠC KIM LOẠI ĐEN\r\nNG&Agrave;Y PH&Aacute;T H&Agrave;NH: TH&Aacute;NG 7/2021\r\nTH&Agrave;NH PHẦN: DA</pre>', 5, 2199, NULL, 1, '2021-08-20 02:25:24', '2021-08-20 02:25:44', '/storage/uploads/2021/08/20/Nike-x-Off-White-Air-Force-1-Volt-Yellow-Crepslocker-Front_60bf91b1-3aab-436f-9b41-6f14c5d275ab_960x.jpg'),
(18, 'NIKE AIR MAX FURYOSA SILVER BLACK SNEAKER (W)', 'Nike Air Max Furyosa Silver and Black được trang trí với phần đế ấn tượng bằng màu xám lưới, được tôn thêm bởi các lớp phủ gợn sóng bằng da kim loại.', '<p>Sau đ&oacute;, c&oacute; một số yếu tố m&agrave;u đen ở cấp độ nan hoa cũng như một sợi d&acirc;y bao quanh to&agrave;n bộ thiết kế. Một đế với hai đơn vị Air-Sole xếp chồng l&ecirc;n nhau dưới g&oacute;t ch&acirc;n, cũng như một miệng n&uacute;i lửa ở đế ngo&agrave;i, t&ocirc;n l&ecirc;n bộ quần &aacute;o.</p>\r\n\r\n<pre>\r\nCOLOURWAY: Bạc / Đen\r\nNICKNAME: Furyosa\r\nNG&Agrave;Y PH&Aacute;T H&Agrave;NH: 08/07/2021\r\nTH&Agrave;NH PHẦN: Lưới / Da</pre>', 5, 520, NULL, 1, '2021-08-20 02:31:01', '2021-08-20 02:31:01', '/storage/uploads/2021/08/20/Nike-Air-Max-Furyosa-Silver-Black-Sneaker-_W_-Crepslocker-Front_960x.jpg'),
(19, 'NIKE SACAI BLAZER LOW SACAI IRON GREY SNEAKER', 'Nike Blazer Low Sacai Iron Grey có nguyên tắc xây dựng giống như những bản collab cuối cùng, đó là sự sao chép của từng thành phần.', '<pre>\r\nNike Blazer Low Sacai Iron Grey c&oacute; nguy&ecirc;n tắc x&acirc;y dựng giống như những bản collab cuối c&ugrave;ng, đ&oacute; l&agrave; sự sao ch&eacute;p của từng th&agrave;nh phần. Ch&uacute;ng t&ocirc;i lưu &yacute; rằng phần đế bằng da lộn antraxit, đi k&egrave;m với một số lớp phủ da trắng v&agrave; đen. Sự kết hợp Đen &amp; Trắng n&agrave;y thậm ch&iacute; dường như l&agrave; sự t&aacute;i hiện của Blazer High, LD Waffle v&agrave; Vaporwaffle c&ugrave;ng m&agrave;u.</pre>\r\n\r\n<pre>\r\nCOLOURWAY: X&aacute;m sắt / Trắng / Trắng\r\nNICKNAME: X&aacute;m sắt 2021\r\nNG&Agrave;Y PH&Aacute;T H&Agrave;NH: 31/07/2021\r\nTH&Agrave;NH PHẦN: Da thuộc</pre>', 5, 230, NULL, 1, '2021-08-20 02:32:35', '2021-08-20 02:32:35', '/storage/uploads/2021/08/20/Nike-Sacai-Blazer-Low-Sacai-Iron-Grey-Sneaker-Crepslocker-Front_960x.jpg'),
(20, 'NÓN KẾT ĐEN 2021', 'Vải lưới với tính năng thông thoáng, co giãn tốt, dể giặt, độ bền màu cao, màu sắc trẻ trung năng động, thoáng mát. Phù hợp với phong cách thể thao và thời thiết nắng nóng.Vải lưới Nón Sơn nhập về được dệt, nhuộm màu bằng công nghệ hiện đại tạo ra màu sắc và chất lượng tuyệt hảo.', '<p>&nbsp;</p>\r\n\r\n<p>M&Ocirc; TẢ: Chất liệu lưới phối da cao cấp.</p>\r\n\r\n<p>Phong c&aacute;ch trẻ trung, năng động.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ĐỐI TƯỢNG: Nam v&agrave; nữ.</p>\r\n\r\n<p>V&Ograve;NG ĐẦU: 52 cm &ndash; 57,5 cm (Mức chuẩn: 54 cm - 56 cm).</p>', 6, 250, NULL, 1, '2021-08-20 02:54:26', '2021-11-29 05:39:00', '/storage/uploads/2021/08/20/800_nonson_04.png'),
(21, 'NÓN DA BÒ BLACK 2021', 'Với các phương pháp thuộc da truyền thống có từ lâu đời, kết hợp cùng công nghệ, máy móc – trang thiết bị hiện đại, luôn đứng đầu thế giới.Những sản phẩm da thuộc Nón Sơn đều trải qua quy trình kiểm tra nghiêm ngặt về chất lượng và màu sắc, phù hợp với xu thế thời trang hiện đại.', '<p>M&Ocirc; TẢ: Chất liệu lưới phối da cao cấp.</p>\r\n\r\n<p>Phong c&aacute;ch trẻ trung, năng động.</p>\r\n\r\n<p>ĐỐI TƯỢNG: Nam v&agrave; nữ.</p>\r\n\r\n<p>V&Ograve;NG ĐẦU: 52 cm &ndash; 57,5 cm (Mức chuẩn: 54 cm - 56 cm).</p>', 9, 320, NULL, 1, '2021-08-20 02:57:05', '2021-08-20 02:57:05', '/storage/uploads/2021/08/20/800_nonson_01.png'),
(22, 'DIOR X JUDY BLAME BLACK SWEATSHIRT', 'Chiếc áo đen thể hiện sự tôn kính đối với tinh thần vượt qua của Judy Blame. Được cắt bằng lông cừu bông, nó được tô điểm bằng hình thêu theo mùa DIOR AND JUDY BLAME ở mặt trước. Sự vừa vặn quá khổ của chiếc áo nỉ này tạo thêm sự thoải mái và phong cách có thể dễ dàng kết hợp với quần jean hoặc đồ thể thao.', '<pre>\r\nM&agrave;u đen\r\nTH&Agrave;NH PHẦN: 100% cotton\r\nVừa vặn qu&aacute; khổ - Ch&uacute;ng t&ocirc;i khuy&ecirc;n bạn n&ecirc;n giảm k&iacute;ch thước để c&oacute; một sự vừa vặn ph&ugrave; hợp</pre>', 7, 585, NULL, 1, '2021-08-20 03:00:07', '2021-08-20 03:00:07', '/storage/uploads/2021/08/20/Dior-And-Peter-Doig-Black-Hoodie-Crepslocker-Front_960x.jpg'),
(23, 'DIOR CD ICON PURPLE T SHIRT', 'Chiếc áo phông Dior màu tím là một tác phẩm vượt thời gian và thoải mái. Được làm thủ công bằng chất liệu cotton nhỏ gọn, nó được tô điểm bằng hình thêu \'Biểu tượng CD\' có tông màu trên ngực. Kiểu áo này vừa vặn với cổ thuyền có gân và kết hợp dễ dàng với bất kỳ trang phục quần jean hoặc trang phục thể thao nào', '<p>&nbsp;</p>\r\n\r\n<p>M&Agrave;U SẮC: T&iacute;m</p>\r\n\r\n<p>TH&Agrave;NH PHẦN: 100% cotton</p>\r\n\r\n<p>CHĂM S&Oacute;C: Rửa tay</p>', 7, 325, NULL, 1, '2021-08-20 03:04:43', '2021-08-20 03:04:43', '/storage/uploads/2021/08/20/Dior-CD-Icon-Purple-T-Shirt-Crepslocker-front_960x.jpg'),
(24, 'FEAR OF GOD ESSENTIALS STONE REFLECTIVE SHORTS (SS21)', 'Những điều cần thiết Quần short cotton jersey in Stone. Cao ốc. Thắt lưng co giãn dệt logo màu rám nắng. Logo in màu xám ở chân.', '<pre>\r\nM&Agrave;U SẮC: Đ&aacute;\r\nTH&Agrave;NH PHẦN: 80% Cotton 20% Polyester\r\nPh&ugrave; hợp thường xuy&ecirc;n</pre>', 7, 190, NULL, 1, '2021-08-20 03:07:22', '2021-08-20 03:07:22', '/storage/uploads/2021/08/20/Fear-Of-God-Essentials-Stone-Reflective-Shorts-_SS21_-Crepslocker-Front_960x.jpg'),
(34, 'a', 'a', '<p>a</p>', 4, 111, 1, 1, '2021-12-01 01:46:43', '2021-12-01 01:46:43', 'public/uploads/2021/12/01Louis-Vuitton-Reversible-Camo-Double-Face-Coach-Jacket-Crepslocker-Front_960x (1).jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'MÙA HÈ SÔI ĐỘNG', 'https://www.irmasworld.com/wp-content/uploads/SLIDER-SHOES.jpg', '/storage/uploads/2021/07/29/slide-02.jpg', 1, 1, '2021-07-28 04:49:27', '2021-07-29 03:49:11'),
(2, 'NIKE AIR MAX', 'https://sneakers-magazine.com/wp-content/uploads/2020/02/nike-air-max-90-slides.jpg', '/storage/uploads/2021/07/28/nike-air-max-90-slides.jpg', 2, 1, '2021-07-28 04:57:37', '2021-07-28 04:57:37'),
(3, 'SALE FASHION', 'https://www.yourcloud9.com/luiolei/wp-content/uploads/2015/05/slider-girl-3-900x600.jpg', '/storage/uploads/2021/07/29/slide-01.jpg', 1, 1, '2021-07-28 05:09:43', '2021-07-29 03:45:36'),
(4, 'Cool Balo 2021', '/danh-muc/8-tui-xach.html', '/storage/uploads/2021/07/29/slide-07.jpg', 1, 1, '2021-07-29 03:51:42', '2021-08-20 02:03:59'),
(6, 'Tháng 8 2021', '/danh-muc/8-tui-xach.html', '/storage/uploads/2021/08/20/Slider-images-shoes-1.jpg', 1, 0, '2021-08-20 04:06:35', '2021-08-20 04:07:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'minhquyn1204@gmail.com', '2021-07-26 05:21:32', '$2y$10$Ob8viCJdi/ZGgS.UqC5uBukDbhfAp/ceTLnpL8ZmpXLsh6CQJACCq', 'udGg0hD0npPsWKVzSH1K10RsH6li7WQ7XSEx4BLlPDRHwxCy3UozbI2o8E4z', '2021-07-27 10:34:52', '2021-07-27 10:34:59');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

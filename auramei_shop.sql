-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 03, 2024 at 09:37 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auramei_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` int NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_password` varchar(100) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `account_phone` varchar(20) NOT NULL,
  `account_type` int NOT NULL,
  `account_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `account_name`, `account_password`, `account_email`, `account_phone`, `account_type`, `account_status`) VALUES
(1, 'Nguyễn Văn An', '4297f44b13955235245b2497399d7a93', 'admin@gmail.com', '0123456789', 2, 0),
(2, 'Nguyễn Văn Bách', '4297f44b13955235245b2497399d7a93', 'employee@gmail.com', '0123456789', 1, 0),
(3, 'Nguyễn Văn C', '4297f44b13955235245b2497399d7a93', 'user@gmail.com', '0987654321', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int NOT NULL,
  `article_author` varchar(100) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_summary` text NOT NULL,
  `article_content` text NOT NULL,
  `article_image` varchar(100) NOT NULL,
  `article_date` date NOT NULL,
  `article_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `article_author`, `article_title`, `article_summary`, `article_content`, `article_image`, `article_date`, `article_status`) VALUES
(1, 'Nguyễn Hoàng Giang', 'Vai trò của kem dưỡng ẩm', '<p>B&agrave;i viết tr&ecirc;n Watsons Việt Nam nhấn mạnh vai tr&ograve; quan trọng của kem dưỡng ẩm trong việc duy tr&igrave; l&agrave;n da khỏe đẹp. Dưới đ&acirc;y l&agrave; c&aacute;c điểm ch&iacute;nh:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Vai tr&ograve; của kem dưỡng ẩm</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Giữ ẩm v&agrave; ngăn ngừa t&igrave;nh trạng mất nước qua da.</li>\r\n		<li>Bảo vệ h&agrave;ng r&agrave;o da, chống lại t&aacute;c động từ m&ocirc;i trường như tia UV v&agrave; &ocirc; nhiễm.</li>\r\n		<li>Hỗ trợ t&aacute;i tạo l&agrave;n da v&agrave; l&agrave;m dịu k&iacute;ch ứng.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Th&agrave;nh phần quan trọng</strong>:</p>\r\n\r\n	<ul>\r\n		<li><strong>Hyaluronic Acid</strong>: Cấp ẩm s&acirc;u, gi&uacute;p da căng b&oacute;ng.</li>\r\n		<li><strong>Ceramides</strong>: Phục hồi v&agrave; củng cố h&agrave;ng r&agrave;o bảo vệ da.</li>\r\n		<li><strong>Glycerin v&agrave; c&aacute;c chiết xuất thi&ecirc;n nhi&ecirc;n</strong>: Nu&ocirc;i dưỡng v&agrave; l&agrave;m mềm da.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Lựa chọn sản phẩm ph&ugrave; hợp</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Đối với da kh&ocirc;: Ưu ti&ecirc;n c&aacute;c sản phẩm gi&agrave;u dưỡng chất, kh&ocirc;ng chứa hương liệu để tr&aacute;nh k&iacute;ch ứng.</li>\r\n		<li>Đối với da dầu: Chọn sản phẩm dạng gel hoặc nhẹ để kh&ocirc;ng g&acirc;y nhờn r&iacute;t.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Gợi &yacute; sản phẩm nổi bật</strong>:</p>\r\n\r\n	<ul>\r\n		<li><strong>Olay Regenerist Micro-Sculpting Cream</strong>: Chống l&atilde;o h&oacute;a, bảo vệ da.</li>\r\n		<li><strong>Neutrogena Hydro Boost Water Gel</strong>: Cấp nước, l&agrave;m mịn da.</li>\r\n		<li><strong>CeraVe Moisturizing Cream</strong>: Phục hồi da kh&ocirc;, chứa ceramides v&agrave; axit hyaluronic.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p>Để xem chi tiết đầy đủ, bạn c&oacute; thể tham khảo b&agrave;i viết gốc tại <a href=\"https://www.watsons.vn/vi/blog/cham-soc-da/kem-duong-am-san-pham-khong-the-thieu-cho-lan-da-khoe-dep\" target=\"_new\">Watsons Việt Nam</a></p>\r\n', '<h1>Kem dưỡng ẩm - Sản phẩm kh&ocirc;ng thể thiếu cho l&agrave;n da khỏe đẹp</h1>\r\n\r\n<p><a href=\"https://www.watsons.vn/vi/blog/cham-soc-da\">Chăm S&oacute;c Da</a>&nbsp;/&nbsp;2023-09-08</p>\r\n\r\n<p>by Watsons Vietnam&nbsp;1391</p>\r\n\r\n<p><img alt=\"\" src=\"https://api.watsons.vn/api/v2/wtcvn/blog/wp-content/uploads/W32_28.8_BLOG-THUMBNAIL-AUG.2023-w4-9.jpg\" /></p>\r\n\r\n<p>Share</p>\r\n\r\n<p>Kem dưỡng ẩm l&agrave; một sản phẩm chăm s&oacute;c da kh&ocirc;ng thể thiếu trong quy tr&igrave;nh l&agrave;m đẹp. Tuy nhi&ecirc;n, để đạt được kết quả tốt nhất khi d&ugrave;ng kem dưỡng ẩm lại l&agrave; một điều kh&ocirc;ng hề dễ d&agrave;ng. V&igrave; vậy, h&atilde;y c&ugrave;ng&nbsp;<a href=\"https://www.watsons.vn/vi/\">Watsons.vn</a>&nbsp;t&igrave;m hiểu về lợi &iacute;ch, c&aacute;ch chọn v&agrave; sử dụng kem dưỡng ẩm, cũng như một số lưu &yacute; khi d&ugrave;ng sản phẩm, th&ocirc;ng qua b&agrave;i viết ngay sau đ&acirc;y.</p>\r\n\r\n<p><img alt=\"Kem dưỡng ẩm là gì và có lợi ích gì?\" src=\"https://api.watsons.vn/api/v2/wtcvn/blog/wp-content/uploads/kem-duong-am.png\" /></p>\r\n\r\n<p>Kem dưỡng ẩm l&agrave; phần kh&ocirc;ng thể thiếu trong chu tr&igrave;nh skincare</p>\r\n\r\n<h2>Kem dưỡng ẩm l&agrave; g&igrave;?</h2>\r\n\r\n<p><a href=\"https://www.watsons.vn/vi/ch%C4%83m-s%C3%B3c-da/d%C6%B0%E1%BB%A1ng-%E1%BA%A8m/c/0104003\">Kem dưỡng ẩm</a>&nbsp;hay kem l&agrave;m mềm da l&agrave; hỗn hợp phức tạp c&aacute;c t&aacute;c nh&acirc;n h&oacute;a học được điều chế đặc biệt để khiến lớp da ngo&agrave;i (biểu b&igrave;) mịn hơn v&agrave; mềm dẻo hơn. Ch&uacute;ng tăng độ ẩm l&agrave;n da (lượng nước) bằng c&aacute;ch giảm bốc hơi.</p>\r\n\r\n<p>Trong chu tr&igrave;nh skincare, kem dưỡng thường l&agrave; bước cuối c&ugrave;ng của qu&aacute; tr&igrave;nh chăm s&oacute;c da hằng ng&agrave;y. Kem dưỡng kh&ocirc;ng chỉ giữ ẩm cho l&agrave;n da của bạn m&agrave; c&ograve;n gi&uacute;p l&agrave;m dịu c&aacute;c vấn đề như vết c&ocirc;n tr&ugrave;ng cắn, ph&aacute;t ban v&agrave; ch&agrave;m.</p>\r\n\r\n<h2>Tại sao n&ecirc;n d&ugrave;ng kem dưỡng ẩm?</h2>\r\n\r\n<p>Kem dưỡng ẩm c&oacute; nhiều c&ocirc;ng dụng tuyệt vời cho l&agrave;n da của bạn, như:</p>\r\n\r\n<ul>\r\n	<li><strong>Giữ cho l&agrave;n da tươi trẻ hơn, gi&uacute;p ngăn ngừa l&atilde;o h&oacute;a:</strong>&nbsp;Kem dưỡng da gi&uacute;p ngăn ngừa những dấu hiệu l&atilde;o h&oacute;a như nếp nhăn, da chảy xệ, k&eacute;m săn chắc. Với khả năng giữ ẩm, kem dưỡng gi&uacute;p duy tr&igrave; trạng th&aacute;i c&acirc;n bằng tr&ecirc;n da, tạo lớp m&agrave;ng tự nhi&ecirc;n bảo vệ da. Một nghi&ecirc;n cứu của Viện Da liễu Anh Quốc đ&atilde; chỉ ra rằng những người c&oacute; l&agrave;n da được dưỡng ẩm đều đặn c&oacute; xu hướng &iacute;t bị nếp nhăn hơn so với những người c&oacute; l&agrave;n da kh&ocirc;.</li>\r\n	<li><strong>Hạn chế bị k&iacute;ch ứng da, l&agrave;m dịu vết cắn của c&ocirc;n tr&ugrave;ng, ph&aacute;t ban v&agrave; c&aacute;c vấn đề kh&aacute;c về da:&nbsp;</strong>L&agrave;n da ch&uacute;ng ta lu&ocirc;n được thay mới từ 14 đến 28 ng&agrave;y, sau đ&oacute; sẽ thường bong tr&oacute;c, nổi vảy tr&ecirc;n bề mặt nếu kh&ocirc;ng được cấp nước tốt v&agrave; tẩy tế b&agrave;o chết thường xuy&ecirc;n. Kem dưỡng ẩm gi&uacute;p da trở n&ecirc;n mềm hơn, mịn hơn v&agrave; c&oacute; khả năng l&agrave;m dịu, giảm mẩn đỏ, nu&ocirc;i dưỡng da tốt hơn.</li>\r\n	<li><strong>C&acirc;n bằng dầu, giảm b&oacute;ng nhờn:</strong>&nbsp;C&oacute; một sai lầm l&agrave; l&agrave;n da dầu thường sẽ kh&ocirc;ng cần sử dụng kem dưỡng ẩm. Tuy nhi&ecirc;n khi da kh&ocirc;ng đủ ẩm sẽ k&iacute;ch th&iacute;ch tăng tiết dầu để c&acirc;n bằng độ ẩm tự nhi&ecirc;n. Khi tế b&agrave;o đ&atilde; đủ ẩm th&igrave; qu&aacute; tr&igrave;nh điều tiết tự nhi&ecirc;n sẽ giảm lại, nhờ đ&oacute; t&igrave;nh trạng da dầu, nhiều nhờn cũng sẽ cải thiện dần.</li>\r\n	<li><strong>Thu nhỏ lỗ ch&acirc;n l&ocirc;ng:&nbsp;</strong>Khi tuyến b&atilde; nhờn tăng tiết qu&aacute; mức sẽ k&iacute;ch th&iacute;ch lỗ ch&acirc;n l&ocirc;ng gi&atilde;n rộng hơn, dễ t&iacute;ch tụ bụi bẩn. Khi được cung cấp đủ độ ẩm bề mặt da sẽ giảm tiết dầu thừa, &iacute;t g&acirc;y b&iacute;t tắc. Nhờ đ&oacute; bề mặt da được căng hơn, mịn hơn, g&oacute;p phần thu nhỏ lỗ ch&acirc;n l&ocirc;ng tự nhi&ecirc;n.</li>\r\n	<li><strong>Ngăn chặn dấu hiệu l&atilde;o h&oacute;a da:</strong>&nbsp;Nền tảng của da cơ bản l&agrave; nước, việc thiếu nước, thiếu ẩm sẽ g&oacute;p phần h&igrave;nh th&agrave;nh c&aacute;c nếp nhăn, da dễ bị chảy xệ, k&eacute;m săn chắc, k&eacute;m đ&agrave;n hồi. Khi da đủ ẩm sẽ gi&uacute;p c&aacute;c tế b&agrave;o khỏe hơn, tăng cường đề kh&aacute;ng của tế b&agrave;o nhờ thế c&aacute;c dấu hiệu l&atilde;o h&oacute;a cũng được giảm bớt.</li>\r\n	<li><strong>Ngăn ngừa mụn tấn c&ocirc;ng:</strong>&nbsp;Khi da thiếu ẩm sẽ tạo điều kiện tiết dầu, dễ d&agrave;ng t&iacute;ch tụ c&aacute;c vi khuẩn P. Acnes g&acirc;y mụn. Kem dưỡng ẩm gi&uacute;p cung cấp độ ẩm cho da, gi&uacute;p da khỏe mạnh v&agrave; &iacute;t bị mụn.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://medias.watsons.vn/publishing/WTCVN-200040-front-prodcat.jpg?version=1722955223\" /></p>\r\n\r\n<p><a href=\"https://www.watsons.vn/skin-balancing-invisible-finish-moisture-gel-60ml/p/BP_200040\"><img alt=\"\" src=\"https://medias.watsons.vn/publishing/WTCVN-200040-front-prodcat.jpg?version=1722955223\" /></a></p>\r\n\r\n<p><img alt=\"\" src=\"https://medias.watsons.vn/publishing/WTCVN-200040-front-prodcat.jpg?version=1722955223\" /></p>\r\n\r\n<p><a href=\"https://www.watsons.vn/skin-balancing-invisible-finish-moisture-gel-60ml/p/BP_200040\">PAULA&#39;S CHOICE</a></p>\r\n\r\n<p><a href=\"https://www.watsons.vn/skin-balancing-invisible-finish-moisture-gel-60ml/p/BP_200040\">Skin Balancing Invisible Finish Moisture Gel 60ml</a></p>\r\n\r\n<p><a href=\"https://www.watsons.vn/skin-balancing-invisible-finish-moisture-gel-60ml/p/BP_200040\">₫656,000</a></p>\r\n\r\n<h2>C&aacute;ch chọn kem dưỡng ẩm ph&ugrave; hợp</h2>\r\n\r\n<p><img alt=\"Cách lựa chọn kem dưỡng ẩm phù hợp cho từng loại da\" src=\"https://api.watsons.vn/api/v2/wtcvn/blog/wp-content/uploads/Su-Dung-Duong-Am.jpg\" /></p>\r\n\r\n<p>Lựa chọn kem dưỡng ẩm ph&ugrave; hợp gi&uacute;p đạt hiệu quả tốt nhất khi sử dụng</p>\r\n\r\n<p>Để chọn được kem dưỡng ẩm ph&ugrave; hợp với l&agrave;n da, bạn cần lưu &yacute; c&aacute;c yếu tố sau:</p>\r\n\r\n<ul>\r\n	<li><strong>Loại da:</strong>&nbsp;Cần x&aacute;c định loại da của m&igrave;nh l&agrave; da kh&ocirc;, da nhờn, da hỗn hợp, da thường hay da nhạy cảm. Mỗi loại da sẽ c&oacute; nhu cầu v&agrave; đặc điểm kh&aacute;c nhau, do đ&oacute; cần chọn kem dưỡng ẩm ph&ugrave; hợp với từng loại da.</li>\r\n</ul>\r\n\r\n<p>V&iacute; dụ, nếu l&agrave; da kh&ocirc;, bạn n&ecirc;n chọn sản phẩm dạng dầu hoặc th&ocirc;ng thường c&oacute; độ b&aacute;m cao v&agrave; cung cấp độ ẩm mạnh mẽ. Nếu l&agrave; da nhờn, bạn n&ecirc;n chọn sản phẩm dạng gel hoặc lotion c&oacute; kết cấu nhẹ v&agrave; kh&ocirc;ng g&acirc;y b&iacute;t tắc lỗ ch&acirc;n l&ocirc;ng. V&agrave; nếu l&agrave; da nhạy cảm, bạn n&ecirc;n chọn kem dưỡng tự nhi&ecirc;n hoặc kem dưỡng d&agrave;nh ri&ecirc;ng cho da nhạy cảm c&oacute; c&aacute;c th&agrave;nh phần l&agrave;m dịu v&agrave; kh&ocirc;ng g&acirc;y k&iacute;ch ứng.</p>\r\n\r\n<ul>\r\n	<li><strong>M&ugrave;a:</strong>&nbsp;Bạn cũng n&ecirc;n chọn kem dưỡng theo m&ugrave;a để ph&ugrave; hợp với điều kiện thời tiết v&agrave; độ ẩm của kh&ocirc;ng kh&iacute;. V&iacute; dụ, v&agrave;o m&ugrave;a h&egrave;, th&igrave; n&ecirc;n chọn sản phẩm c&oacute; SPF để bảo vệ da khỏi tia UV v&agrave; c&oacute; kết cấu nhẹ để kh&ocirc;ng g&acirc;y bết d&iacute;nh v&agrave; kh&oacute; chịu. V&agrave;o m&ugrave;a đ&ocirc;ng, th&igrave; n&ecirc;n chọn sản phẩm c&oacute; độ b&aacute;m cao v&agrave; cung cấp độ ẩm s&acirc;u để ngăn ngừa da bị kh&ocirc; v&agrave; nứt nẻ.</li>\r\n	<li><strong>Th&agrave;nh phần:&nbsp;</strong>Cần đọc kỹ th&agrave;nh phần của sản phẩm trước khi mua để tr&aacute;nh c&aacute;c th&agrave;nh phần c&oacute; thể g&acirc;y hại cho da như paraben, sulfate, alcohol, hương liệu nh&acirc;n tạo,&hellip; N&ecirc;n chọn sản phẩm c&oacute; c&aacute;c th&agrave;nh phần thi&ecirc;n nhi&ecirc;n v&agrave; an to&agrave;n cho da như glycerin, hyaluronic acid, ceramide, vitamin C, retinol,&hellip; Bạn cũng n&ecirc;n kiểm tra xem sản phẩm c&oacute; ph&ugrave; hợp với pH của da hay kh&ocirc;ng. pH của da l&agrave; khoảng từ 4.5 đến 6.5, do đ&oacute; bạn n&ecirc;n chọn sản phẩm c&oacute; pH trong khoảng n&agrave;y để duy tr&igrave; sự c&acirc;n bằng của da.</li>\r\n</ul>\r\n\r\n<h2>C&aacute;ch sử dụng kem dưỡng ẩm hiệu quả nhất</h2>\r\n\r\n<p><img alt=\"Cách sử dụng kem dưỡng ẩm đạt hiệu quả nhất\" src=\"https://api.watsons.vn/api/v2/wtcvn/blog/wp-content/uploads/kem-duong-am-1.png\" /></p>\r\n\r\n<p>C&aacute;c bước sử dụng kem dưỡng ẩm hiệu quả để đạt được một kết quả tốt</p>\r\n', '1732895681_kemduong.png', '2024-11-29', 1),
(2, 'Hoàng Văn Bách', 'Giới thiệu về nước hoa Armaf Club De Nuit Intense Man Limited Edition', '<p><strong>Armaf Club De Nuit Intense Man Limited Edition</strong> l&agrave; d&ograve;ng nước hoa nam cao cấp với thiết kế sang trọng v&agrave; m&ugrave;i hương nam t&iacute;nh, l&ocirc;i cuốn. Sản phẩm nổi bật với c&aacute;c tầng hương độc đ&aacute;o:</p>\r\n\r\n<ul>\r\n	<li><strong>Hương đầu:</strong> Kết hợp sự tươi m&aacute;t của chanh, dứa, cam Bergamot, t&aacute;o v&agrave; nho đen.</li>\r\n	<li><strong>Hương giữa:</strong> Sự đậm đ&agrave; từ hoa nh&agrave;i, hoa hồng v&agrave; gỗ bạch dương.</li>\r\n	<li><strong>Hương cuối:</strong> Xạ hương, hoắc hương, vani v&agrave; long di&ecirc;n hương tạo n&ecirc;n độ trầm ấm, ngọt ng&agrave;o v&agrave; sang trọng.</li>\r\n</ul>\r\n\r\n<p>D&ograve;ng nước hoa n&agrave;y mang phong c&aacute;ch lịch l&atilde;m, được so s&aacute;nh với Creed Aventus nhưng c&oacute; gi&aacute; hợp l&yacute; hơn, với khả năng lưu v&agrave; tỏa hương vượt trội. Ph&ugrave; hợp sử dụng trong c&aacute;c dịp quan trọng hoặc h&agrave;ng ng&agrave;y, sản phẩm c&ograve;n ghi điểm nhờ thiết kế chai đẹp mắt, hộp đựng cao cấp, thể hiện đẳng cấp v&agrave; sự tinh tế【18&dagger;source】【19&dagger;source】【20&dagger;source】【21&dagger;source】.</p>\r\n', '<p>Armaf Club De Nuit Intense Man Limited Edition l&agrave; d&ograve;ng nước hoa cao cấp d&agrave;nh cho nam giới, nổi bật với thiết kế sang trọng v&agrave; m&ugrave;i hương nam t&iacute;nh, l&ocirc;i cuốn. Chai nước hoa n&agrave;y được chế t&aacute;c tinh xảo, kết hợp với những vi&ecirc;n đ&aacute; Swarovski lấp l&aacute;nh, l&agrave;m nổi bật vẻ đẹp qu&yacute; ph&aacute;i v&agrave; ho&agrave;n hảo để l&agrave;m qu&agrave; tặng.</p>\r\n\r\n<p><img alt=\"Club de Nuit Intense Man Limited Edition Parfum - EAP\" src=\"https://eap.com.vn/wp-content/themes/yootheme/cache/94/Armaf-Club-de-Nuit-Man-Limited-Edition-Parfum-4-1-94c08897.jpeg\" /></p>\r\n\r\n<h3>M&ugrave;i hương đặc trưng</h3>\r\n\r\n<ul>\r\n	<li><strong>Hương đầu:</strong> Chanh, dứa, cam Bergamot, t&aacute;o, nho đen, mang đến cảm gi&aacute;c tươi m&aacute;t v&agrave; tr&agrave;n đầy năng lượng.</li>\r\n	<li><strong>Hương giữa:</strong> Hoa hồng, hoa nh&agrave;i, gỗ bạch dương, thể hiện sự dịu d&agrave;ng v&agrave; đậm chất nam t&iacute;nh.</li>\r\n	<li><strong>Hương cuối:</strong> Xạ hương, hoắc hương, vani, long di&ecirc;n hương, tạo n&ecirc;n sự ngọt ng&agrave;o v&agrave; mạnh mẽ, lưu lại dấu ấn l&acirc;u d&agrave;i.</li>\r\n</ul>\r\n\r\n<p>Đ&acirc;y l&agrave; d&ograve;ng nước hoa được so s&aacute;nh với m&ugrave;i hương cao cấp của Creed Aventus nhưng với mức gi&aacute; hợp l&yacute; hơn, nổi bật nhờ độ c&acirc;n bằng mượt m&agrave; giữa c&aacute;c tầng hương, mang lại cảm gi&aacute;c lịch l&atilde;m, cuốn h&uacute;t.</p>\r\n\r\n<p><img alt=\"Armaf Club de Nuit Intense for men Parfume Limited\" src=\"https://kinperfume.com/wp-content/uploads/2021/03/Armaf-Club-de-Nuit-Intense-for-men-Parfume-Limited-105ml-nam.jpg\" /></p>\r\n\r\n<h3>Thiết kế</h3>\r\n\r\n<p>Chai nước hoa được thiết kế bằng chất liệu cao cấp, hộp đựng cứng c&aacute;p, phủ nhung sang trọng, đi k&egrave;m thư cảm ơn từ nh&agrave; sản xuất, tạo n&ecirc;n gi&aacute; trị đặc biệt cho người sở hữu.</p>\r\n\r\n<p><img alt=\"Nước Hoa Nam Armaf Club De Nuit Intense Perfume For Men Limited Editio –  FINN USA\" src=\"https://product.hstatic.net/200000661629/product/29_8e9cca35a9634aeabbde276525d5872c_master.jpg\" /></p>\r\n\r\n<h3>Độ lưu hương v&agrave; toả hương</h3>\r\n\r\n<p>Với độ lưu hương v&agrave; tỏa hương ấn tượng, Armaf Club De Nuit Intense Man Limited Edition ph&ugrave; hợp để sử dụng trong nhiều dịp, từ những buổi gặp gỡ quan trọng đến c&aacute;c sự kiện h&agrave;ng ng&agrave;y. Sản phẩm n&agrave;y mang đến sự tự tin v&agrave; phong th&aacute;i đĩnh đạc cho người d&ugrave;ng【18&dagger;source】【19&dagger;source】【21&dagger;source】.</p>\r\n\r\n<p><img alt=\"Armaf Club de Nuit Intense Man Limited Edition Parfum - laluz.vn\" src=\"https://laluz.vn/wp-content/uploads/2023/12/nuoc-hoa-nam-Limited-Edition-Parfum.jpg\" /></p>\r\n', '1733132423_gioithieunchoa.jpeg', '2024-12-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int NOT NULL,
  `brand_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(1, 'L\'Oréal'),
(2, 'Garier'),
(3, 'Dior'),
(4, 'Armaf'),
(5, 'BBIA'),
(6, 'Black Rouge'),
(7, 'YSL'),
(8, 'Nivea'),
(9, 'La Roche Posay'),
(10, 'Klairs');

-- --------------------------------------------------------

--
-- Table structure for table `capacity`
--

CREATE TABLE `capacity` (
  `capacity_id` int NOT NULL,
  `capacity_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `capacity`
--

INSERT INTO `capacity` (`capacity_id`, `capacity_name`) VALUES
(1, '10ml'),
(2, '20ml'),
(3, '30ml'),
(4, '40ml'),
(5, '50ml'),
(6, '60ml'),
(7, '70ml'),
(8, '80ml'),
(9, '90ml'),
(10, '100ml'),
(11, 'Không xác định');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` text NOT NULL,
  `category_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`, `category_image`) VALUES
(1, 'Nước hoa nam', 'Sản phẩm nước hoa phù hợp cho nam', '1732880383_nuochoanam.png'),
(2, 'Nước hoa nữ', 'Sản phẩm nước hoa phù hợp cho nữ', '1732880374_nuochoanu.png'),
(3, 'Son môi', 'Son môi', '1732880366_son-moi.jpg'),
(4, 'Trang điểm', 'Đồ trang điểm', '1732880356_trang-diem.png'),
(5, 'Kem chống nắng', 'Các sản phẩm kem chống nắng', '1732880347_kcn.png'),
(6, 'Dưỡng da', 'Sản phẩm dưỡng da', '1732880339_duongda.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `collection_id` int NOT NULL,
  `collection_name` varchar(100) NOT NULL,
  `collection_keyword` varchar(100) NOT NULL,
  `collection_image` varchar(100) NOT NULL,
  `collection_description` varchar(255) NOT NULL,
  `collection_order` int NOT NULL,
  `collection_type` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int NOT NULL,
  `article_id` int NOT NULL,
  `comment_name` varchar(50) NOT NULL,
  `comment_email` varchar(50) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_date` date NOT NULL,
  `comment_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `account_id` int DEFAULT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_gender` int DEFAULT '0',
  `customer_email` varchar(100) NOT NULL,
  `customer_phone` varchar(50) NOT NULL,
  `customer_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `account_id`, `customer_name`, `customer_gender`, `customer_email`, `customer_phone`, `customer_address`) VALUES
(1, 1, 'Nguyễn Văn An', 1, 'admin@gmail.com', '0123456789', 'Nam Từ Liêm, Hà Nội'),
(2, 2, 'Nguyễn Văn Bách', 1, 'employee@gmail.com', '0123456789', 'Cầu Giấy, Hà Nội'),
(3, 3, 'Nguyễn Văn C', 1, 'user@gmail.com', '0987654321', 'Quốc Oai, Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int NOT NULL,
  `account_id` int NOT NULL,
  `delivery_name` varchar(100) NOT NULL,
  `delivery_phone` varchar(20) NOT NULL,
  `delivery_address` varchar(100) NOT NULL,
  `delivery_note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`delivery_id`, `account_id`, `delivery_name`, `delivery_phone`, `delivery_address`, `delivery_note`) VALUES
(320, 3, 'Nguyễn Văn C', '0987654321', 'Quốc Oai, Hà Nội', ''),
(2500, 3, 'Nguyễn Văn C', '0987654321', 'Quốc Oai, Hà Nội', ''),
(3258, 1, 'Hoàng Văn B', '0123456789', 'Hà Đông, Hà Nội', 'Đơn hàng mua trực tiếp'),
(3268, 1, 'Hoàng Văn A', '0123456789', 'Thanh Xuân, Hà Nội', 'Đơn hàng mua trực tiếp'),
(3865, 3, 'Nguyễn Văn C', '0987654321', 'Quốc Oai, Hà Nội', ''),
(6547, 3, 'Nguyễn Văn C', '0987654321', 'Quốc Oai, Hà Nội', ''),
(7440, 1, 'Hoàng Văn C', '0123456789', 'Thanh Xuân, Hà Nội', 'Đơn hàng mua trực tiếp'),
(7453, 3, 'Nguyễn Văn C', '0987654321', 'Quốc Oai, Hà Nội', ''),
(7848, 3, 'Nguyễn Văn C', '0987654321', 'Quốc Oai, Hà Nội', ''),
(8684, 2, 'Hoàng Văn B', '0123456789', 'Thanh Xuân, Hà Nội', 'Đơn hàng mua trực tiếp'),
(9467, 2, 'Hoang Giang', '0123456789', 'Thanh Xuân, Hà Nội', 'Đơn hàng mua trực tiếp');

-- --------------------------------------------------------

--
-- Table structure for table `evaluate`
--

CREATE TABLE `evaluate` (
  `evaluate_id` int NOT NULL,
  `account_id` int NOT NULL,
  `product_id` int NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `evaluate_rate` int NOT NULL,
  `evaluate_content` text NOT NULL,
  `evaluate_date` varchar(50) NOT NULL,
  `evaluate_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `evaluate`
--

INSERT INTO `evaluate` (`evaluate_id`, `account_id`, `product_id`, `account_name`, `evaluate_rate`, `evaluate_content`, `evaluate_date`, `evaluate_status`) VALUES
(1, 3, 5, 'Nguyễn Văn C', 5, 'Sản phẩm rất tốt', '2024-12-02 14:23:30', 1),
(2, 3, 9, 'Nguyễn Văn C', 5, 'Sản phẩm lưu hương lâu', '2024-12-02 14:24:27', 1),
(3, 3, 11, 'Nguyễn Văn C', 5, 'Sản phẩm lưu hương lâu', '2024-12-02 15:49:16', 1),
(4, 3, 12, 'Nguyễn Văn C', 4, 'Mùi hương dễ chịu', '2024-12-02 15:49:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int NOT NULL,
  `account_id` int NOT NULL,
  `staf_name` varchar(50) NOT NULL,
  `supplier_name` varchar(50) NOT NULL,
  `supplier_phone` varchar(20) NOT NULL,
  `inventory_note` varchar(100) NOT NULL,
  `inventory_code` varchar(50) NOT NULL,
  `inventory_date` date NOT NULL,
  `total_amount` float NOT NULL,
  `inventory_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `account_id`, `staf_name`, `supplier_name`, `supplier_phone`, `inventory_note`, `inventory_code`, `inventory_date`, `total_amount`, `inventory_status`) VALUES
(1, 1, 'Chủ 1', 'Xưởng A', '0123456789', 'Nhập đợt 1', '3812', '2024-12-02', 900000, 0),
(2, 1, 'Chủ 1', 'Xưởng A', '0123456789', 'Nhập đợt 2', '7754', '2024-12-02', 15000000, 0),
(3, 1, 'Chủ 2', 'Xưởng A', '0123456789', 'Nhập đợt 3', '1860', '2024-12-02', 2500000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_detail`
--

CREATE TABLE `inventory_detail` (
  `inventory_detail_id` int NOT NULL,
  `inventory_code` varchar(50) NOT NULL,
  `product_id` int NOT NULL,
  `product_quantity` int NOT NULL,
  `product_price_import` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inventory_detail`
--

INSERT INTO `inventory_detail` (`inventory_detail_id`, `inventory_code`, `product_id`, `product_quantity`, `product_price_import`) VALUES
(1, '3812', 14, 10, 90000),
(2, '7754', 13, 10, 1500000),
(3, '1860', 8, 10, 250000);

-- --------------------------------------------------------

--
-- Table structure for table `metrics`
--

CREATE TABLE `metrics` (
  `metric_id` int NOT NULL,
  `metric_date` date NOT NULL,
  `metric_order` int NOT NULL,
  `metric_sales` varchar(100) NOT NULL,
  `metric_quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `metrics`
--

INSERT INTO `metrics` (`metric_id`, `metric_date`, `metric_order`, `metric_sales`, `metric_quantity`) VALUES
(1, '2024-12-02', 8, '14078000', 13);

-- --------------------------------------------------------

--
-- Table structure for table `momo`
--

CREATE TABLE `momo` (
  `momo_id` int NOT NULL,
  `partner_code` varchar(50) NOT NULL,
  `order_code` int NOT NULL,
  `momo_amount` varchar(50) NOT NULL,
  `order_info` varchar(100) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `trans_id` int NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `payment_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `order_code` int NOT NULL,
  `order_date` varchar(50) NOT NULL,
  `account_id` int NOT NULL,
  `delivery_id` int NOT NULL,
  `total_amount` int NOT NULL,
  `order_type` int NOT NULL,
  `order_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_code`, `order_date`, `account_id`, `delivery_id`, `total_amount`, `order_type`, `order_status`) VALUES
(1, 5328, '2024-12-02 16:12:35', 1, 3268, 1760500, 5, 3),
(2, 5435, '2024-12-02 16:13:05', 1, 3258, 1959500, 5, 3),
(3, 4820, '2024-12-02 16:14:00', 1, 7440, 2429000, 5, 3),
(4, 9674, '2024-12-02 16:17:44', 2, 9467, 2696500, 5, 3),
(5, 7702, '2024-12-02 16:18:21', 2, 8684, 2895500, 5, 3),
(6, 1769, '2024-12-02 17:10:18', 3, 6547, 351500, 1, 1),
(7, 8117, '2024-12-02 17:10:44', 3, 3865, 380000, 1, 2),
(8, 3184, '2024-12-02 17:10:52', 3, 2500, 1605500, 1, 5),
(9, 8971, '2024-12-02 21:52:43', 3, 7848, 2541500, 1, 0),
(10, 3616, '2024-12-02 21:59:20', 3, 7453, 155000, 1, 0),
(11, 1232, '2024-12-02 22:01:45', 3, 320, 2286500, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int NOT NULL,
  `order_code` int NOT NULL,
  `product_id` int NOT NULL,
  `product_quantity` int NOT NULL,
  `product_price` int NOT NULL,
  `product_sale` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `order_code`, `product_id`, `product_quantity`, `product_price`, `product_sale`) VALUES
(1, 5328, 14, 1, 155000, 0),
(2, 5328, 13, 1, 1690000, 5),
(3, 5435, 8, 1, 354000, 0),
(4, 5435, 13, 1, 1690000, 5),
(5, 4820, 10, 1, 2690000, 15),
(6, 4820, 2, 1, 150000, 5),
(7, 9674, 14, 1, 155000, 0),
(8, 9674, 11, 1, 2990000, 15),
(9, 7702, 11, 1, 2990000, 15),
(10, 7702, 8, 1, 354000, 0),
(11, 1769, 6, 1, 370000, 5),
(12, 8117, 5, 1, 380000, 0),
(13, 3184, 13, 1, 1690000, 5),
(14, 8971, 11, 1, 2990000, 15),
(15, 3616, 14, 1, 155000, 0),
(16, 1232, 10, 1, 2690000, 15);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` int DEFAULT NULL,
  `product_brand` int NOT NULL,
  `capacity_id` int NOT NULL,
  `product_quantity` int DEFAULT '0',
  `quantity_sales` int DEFAULT '0',
  `product_price_import` int NOT NULL,
  `product_price` int NOT NULL,
  `product_sale` int NOT NULL,
  `product_description` text NOT NULL,
  `product_image` text NOT NULL,
  `product_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_category`, `product_brand`, `capacity_id`, `product_quantity`, `quantity_sales`, `product_price_import`, `product_price`, `product_sale`, `product_description`, `product_image`, `product_status`) VALUES
(1, 'Son Kem Black Rouge Icy To Fog Velvet Tint 39.6g', 3, 6, 11, 10, 0, 150000, 200000, 5, '<p><strong>💋&nbsp;ICY TO FOG VELVET&nbsp;💋</strong></p>\r\n\r\n<p>Thỏi son ma thuật nh&agrave; Black Rouge ch&iacute;nh thức tr&igrave;nh l&agrave;ng. Lấy cảm hứng từ sự huyền b&iacute; của &ldquo;Thế giới ph&eacute;p thuật&rdquo;, BST 𝐈𝐂𝐘 𝐓𝐎 𝐅𝐎𝐆 𝐕𝐄𝐋𝐕𝐄𝐓 mang đến sự pha trộn m&agrave;u sắc đầy m&ecirc; hoặc. Son được thiết kế theo phong c&aacute;ch đặc biệt tựa như một lọ độc dược của ph&ugrave; thủy mang đến cảm gi&aacute;c b&iacute; ẩn v&agrave; quyến rũ. Bảy sắc son &ldquo;nhiệm m&agrave;u&rdquo; sẽ gi&uacute;p bạn n&acirc;ng tầm nhan sắc, trở th&agrave;nh người đẹp nhất thế giới ❤️</p>\r\n\r\n<p><img src=\"https://vn-live-01.slatic.net/p/8a09a0d3c248c5a74245dbd04340a74e.jpg\" /></p>\r\n\r\n<p><img src=\"https://cf.shopee.vn/file/vn-11134208-7r98o-lz4lzivl7425e7\" style=\"height:1600px; width:1182px\" /></p>\r\n\r\n<p><img src=\"https://bizweb.dktcdn.net/100/465/979/files/0-02-06-686056fdcbb35ddb1bb962dc43cfbe7f28fcf7f818953062b37ac5974cf8d90b-328a32b12efe4415.jpg?v=1724722863251\" /></p>\r\n\r\n<p><strong>&nbsp;✨THIẾT KẾ&nbsp;✨</strong></p>\r\n\r\n<p>- Thiết kế son lấy cảm hứng từ lọ thuốc ma thuật Potio m&agrave;u đồng phủ nh&aacute;m tạo cảm gi&aacute;c huyền ảo. Th&acirc;n son h&igrave;nh trụ tam gi&aacute;c mới lạ, độc đ&aacute;o lần đầu ti&ecirc;n c&oacute; mặt tại Black Rouge.</p>\r\n\r\n<p>- Với lần trở lại n&agrave;y, Black Rouge hứa hẹn sẽ đem đến những sự bứt ph&aacute; ngoạn mục v&agrave; những bất ngờ th&uacute; vị với packaging ho&agrave;n to&agrave;n mới.</p>\r\n\r\n<p><img src=\"https://cf.shopee.vn/file/vn-11134208-7r98o-lz4lzivlbbrh91\" style=\"height:1382px; width:1200px\" /></p>\r\n\r\n<p><strong>CHẤT SON</strong></p>\r\n\r\n<p>- Chất son velvet tạo cảm gi&aacute;c m&aacute;t lạnh ẩm mịn như băng ngay từ lần đầu ti&ecirc;n sử dụng v&agrave; mềm mại như l&agrave;n sương m&ugrave; mờ ảo sau 30 gi&acirc;y</p>\r\n\r\n<p>- 𝐈𝐜𝐢𝐧𝐠 𝐁𝐥𝐮𝐫: Tạo cảm gi&aacute;c m&aacute;t lạnh khi vừa thoa l&ecirc;n m&ocirc;i</p>\r\n\r\n<p>- 𝐅𝐨𝐠 𝐕𝐞𝐥𝐯𝐞𝐭: Tạo cảm gi&aacute;c mềm mại, hạn chế kh&ocirc; m&ocirc;i, che phủ v&acirc;n m&ocirc;i tốt</p>\r\n\r\n<p>- 𝐎𝐯𝐞𝐫 𝐋𝐚𝐬𝐭𝐢𝐧𝐠: Son b&aacute;m m&agrave;u tốt từ 3-4 tiếng khi kh&ocirc;ng ăn uống. Son l&ecirc;n m&agrave;u chuẩn tuỳ v&agrave;o sắc tố m&ocirc;i~</p>\r\n\r\n<p>- Black Rouge đề cao sự dưỡng m&ocirc;i, chất son c&oacute; thể d&ugrave;ng l&agrave;m m&aacute; hồng v&agrave; c&oacute; thể t&aacute;n một c&aacute;ch dễ d&agrave;ng, kh&ocirc;ng set lại qu&aacute; nhanh.</p>\r\n', '1732885103_son1.png', 1),
(2, 'Son Bbia Last Velvet Lip Tint 5g', 3, 5, 11, 9, 1, 75000, 150000, 5, '<p><strong><a href=\"https://thegioiskinfood.com/products/son-kem-li-bbia-last-velvet-lip-tint/\" target=\"_self\">Son Kem L&igrave;, L&ecirc;n M&agrave;u Si&ecirc;u Chuẩn Bbia Last Velvet Lip Tint</a>&nbsp;</strong>l&agrave;&nbsp;<strong><a href=\"https://thegioiskinfood.com/collections/son-tint-1\" target=\"_blank\">d&ograve;ng son kem l&igrave;</a></strong>&nbsp;của&nbsp;<strong><a href=\"https://thegioiskinfood.com/collections/bbia\" target=\"_blank\">thương hiệu Bbia,</a></strong>&nbsp;với nhiều phi&ecirc;n bản son li&ecirc;n tục được h&atilde;ng cho ra mắt, thương hiệu Bbia cực kỳ nhanh nhạy khi nắm bắt xu hướng m&agrave;u son hot nhất hiện nay với bảng m&agrave;u v&ocirc; c&ugrave;ng thời thượng. Son l&igrave; nhưng mịn như nhung, rất nhẹ v&agrave; mướt m&ocirc;i, kh&ocirc;ng l&agrave;m kh&ocirc; m&ocirc;i hay lộ v&acirc;n m&ocirc;i, lớp finish l&igrave; tuyệt đối nhưng sau khi ăn sẽ để lại lớp m&agrave;u hồng đỏ tiệp lại tr&ecirc;n m&ocirc;i cực xinh.&nbsp;Sản phẩm c&oacute; nhiều m&agrave;u với những Version kh&aacute;c nhau v&ocirc; c&ugrave;ng thời thượng, ph&ugrave; hợp với nhiều tone da</p>\r\n\r\n<p><img alt=\"[MÀU 1-51] Son Kem Lì, Lên Màu Siêu Chuẩn Bbia Last Velvet Lip Tint 5g\" src=\"https://file.hstatic.net/1000006063/file/b4_e0f3f8cfa0544ee19118598370cd13df_2048x2048.jpg\" /></p>\r\n\r\n<p><img alt=\"[MÀU 1-51] Son Kem Lì, Lên Màu Siêu Chuẩn Bbia Last Velvet Lip Tint 5g\" src=\"https://file.hstatic.net/1000006063/file/bbia_logo_4cac01c822cf4180958aaf9121d4249c.jpg\" /></p>\r\n\r\n<h2><strong>2. Bảng m&agrave;u Bbia Last Velvet Lip Tint</strong></h2>\r\n\r\n<p>Bảng m&agrave;u son gồm c&oacute; c&aacute;c m&agrave;u ( theo từng version), hiện tại&nbsp;<strong>Thế giới Skinfood</strong>&nbsp;c&oacute; c&aacute;c m&agrave;u:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Bbia Last Velvet Tint Version 1:&nbsp;</strong>Với chất son mịn như nhung, với những m&agrave;u sắc theo tone đỏ đầy t&iacute;nh sắc sảo v&agrave; quyền lực, truyền nguồn cảm hứng mạnh mẽ đến mọi c&ocirc; g&aacute;i, bao gồm c&aacute;c m&agrave;u:<strong>&nbsp;2 Extra Bounce; 3 Extra Red; 4 Extra Mood</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Bbia Last Velvet Lip Tint Version 3:&nbsp;</strong>C&oacute; t&ecirc;n l&agrave; BOSS SERIES với 5 m&agrave;u lạ v&agrave; c&aacute; t&iacute;nh ph&ugrave; hợp với l&agrave;n da Ch&acirc;u &Aacute;. Chất son đậm, b&aacute;m chặt như nam ch&acirc;m. Chỉ cần thoa 1 lớp l&agrave; m&agrave;u sẽ l&ecirc;n r&otilde; v&agrave; sống động. Giữ m&agrave;u bền chặt suốt ng&agrave;y d&agrave;i, khả năng giữ m&agrave;u mạnh như xăm, bền m&agrave;u suốt cả ng&agrave;y, bao gồm c&aacute;c m&agrave;u:&nbsp;<strong>11 Calm Boss; 12 Sweet Boss; 13 Serious Boss; 14 Chill Boss; 15 Egde Boss</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Bbia Last Velvet Lip Tint Version 4 - FLOWER:&nbsp;</strong>Vesion 4 lấy &yacute; tưởng từ m&agrave;u sắc m&agrave;u của những b&ocirc;ng hoa, với 5 t&ocirc;ng m&agrave;u. Thiết kế của vesion 4 vẫn giữ nguy&ecirc;n nắp kim loại v&agrave;ng, được gia c&ocirc;ng cẩn thận. Chất son đặc, l&ecirc;n m&agrave;u chuẩn, son mướt ẩm kh&ocirc;ng g&acirc;y kh&ocirc; m&ocirc;i, đặc biệt khả năng giữ m&agrave;u l&acirc;u tr&ocirc;i. Bảng m&agrave;u gồm c&aacute;c m&agrave;u:&nbsp;<strong>17 More Pleasant:</strong>&nbsp;Hồng cam;&nbsp;<strong>18 More Cheerful:</strong>&nbsp;Hồng mận;&nbsp;<strong>20 More Mature:</strong>&nbsp;Hồng đỏ thi&ecirc;n sắc đỏ</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Bbia Last Velvet Lip Tint Version 5:&nbsp;</strong>Với thiết kế vu&ocirc;ng vức, vỏ m&agrave;u hồng rose gold v&agrave; nắp m&agrave;u n&acirc;u đồng c&ugrave;ng d&ograve;ng chữ Last Velvet Lip Tint được in m&agrave;u trắng sang trọng, chất son l&ecirc;n m&ocirc;i mềm mượt, chuẩn m&agrave;u c&ugrave;ng với bảng m&agrave;u trendy l&ocirc;i cuốn, thu h&uacute;t mọi &aacute;nh nh&igrave;n, bao gồm c&aacute;c m&agrave;u:&nbsp;<strong>21 Real Note</strong>: Hồng Nude MLBB;&nbsp;<strong>22 Mellow Note; 23 Romantic Note; 24 Trendy Note; 25 Final Note</strong>: Cam n&acirc;u đất (Bản thường);&nbsp;<strong>25 Final Note</strong>: Đỏ n&acirc;u đất (THUẦN CHAY)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Bbia Last Velvet Lip Tint Version 7:&nbsp;</strong>Son kem l&igrave; c&oacute; thiết kế bao b&igrave; đặc trưng với th&acirc;n son thiết kế dạng h&igrave;nh trụ thon d&agrave;i, lớp vỏ mờ l&igrave; nh&igrave;n thấu được m&agrave;u son b&ecirc;n trong sản phẩm, gồm c&aacute;c m&agrave;u:&nbsp;<strong>31 Dating Scandal</strong>: M&agrave;u đỏ thuần;&nbsp;<strong>32 Grand Scandal</strong>: M&agrave;u đỏ cam;&nbsp;<strong>33 Parting Scandal</strong>: M&agrave;u đỏ n&acirc;u.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Son kem l&igrave; Bbia Last Velvet Lip Tint Version 8:&nbsp;</strong>Son kem l&igrave; c&oacute; thiết kế bao b&igrave; đặc trưng với th&acirc;n son thiết kế dạng h&igrave;nh trụ thon d&agrave;i, lớp vỏ mờ l&igrave; nh&igrave;n thấu được m&agrave;u son b&ecirc;n trong sản phẩm, gồm c&aacute;c m&agrave;u:&nbsp;<strong>34 Feign Calm</strong>: Nude Beige,&nbsp;<strong>35 Feign Joy</strong>: Cam đất,&nbsp;<strong>36 Feign Cool</strong>: Đỏ đậu đỏ,&nbsp;<strong>37 Feign Unmoved</strong>: Hồng t&iacute;m mận,&nbsp;<strong>38 Feign Fine</strong>: Nâu cacao;&nbsp;<strong>39 Feign Longing</strong>: Đỏ ớt tự tin.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Son kem l&igrave; Bbia Last Velvet Tint Coolnude Edition - THUẦN CHAY:&nbsp;</strong>Với 2 m&agrave;u nude cho tone lạnh đầy dịu d&agrave;ng, ngọt ng&agrave;o, nữ t&iacute;nh. Bộ sưu tập Coolnude Edition vẫn giữ chất son mịn l&igrave; v&agrave; c&oacute; độ b&aacute;m cao, l&ecirc;n m&agrave;u chuẩn chỉ sau 1 lần thoa. Bộ sưu tập gồm c&aacute;c m&agrave;u:&nbsp;<strong>V40 Summer Rose</strong>: M&agrave;u hoa hồng MLBB d&agrave;nh cho tone lạnh,&nbsp;<strong>V41 Summer Berry</strong>: Hồng berry cho da s&aacute;ng</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Son kem l&igrave; Bbia Last Velvet Tint Respect Edition - THUẦN CHAY:&nbsp;</strong>Với 3 m&agrave;u từ nude đến trầm gi&uacute;p t&ocirc;n vinh sắc th&aacute;i ri&ecirc;ng của bạn. Chất son ho&agrave;n to&agrave;n mới đặc hơn v&agrave; mịn như nhung với khả năng b&aacute;m m&agrave;u tốt, m&agrave;u sắc nhẹ nh&agrave;ng tinh tế. Thiết kế th&acirc;n son trong suốt c&oacute; thể nh&igrave;n thấy m&agrave;u son b&ecirc;n trong v&agrave; phần nắp đen c&aacute; t&iacute;nh. Chất kem l&igrave; với độ bền m&agrave;u l&acirc;u, l&ecirc;n m&agrave;u r&otilde; r&agrave;ng. Respect Edition gồm c&aacute;c m&agrave;u sau:&nbsp;<strong>V42 So Good Fig</strong>: Hồng n&acirc;u quả sung;&nbsp;<strong>V43 So Good Plum</strong>: Hồng mận;&nbsp;<strong>V44 So Good Mocha</strong>: N&acirc;u mocha lạnh.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Son kem l&igrave;&nbsp;Bbia Last Velvet Tint&nbsp;MLBB Edition&nbsp;- THUẦN CHAY:</strong>&nbsp;Với 5 t&ocirc;ng m&agrave;u MLBB t&ocirc;n l&ecirc;n sắc da, l&ecirc;n m&agrave;u rất tự nhi&ecirc;n, l&yacute; tưởng cho mọi phong c&aacute;ch trang điểm. Kết cấu chất son nhung mờ l&igrave;, mềm mịn như phấn, lấp đầy r&atilde;nh m&ocirc;i v&agrave; che khuyết điểm tr&ecirc;n m&ocirc;i gi&uacute;p mang lại vẻ mịn m&agrave;ng tự nhi&ecirc;n. Thiết kế&nbsp;lấy cảm hứng từ h&igrave;nh ảnh c&aacute;nh hoa phản chiếu tr&ecirc;n mặt hồ trong veo, th&acirc;n son c&oacute; m&agrave;u trong suốt gi&uacute;p m&agrave;u son b&ecirc;n trong được quan s&aacute;t dễ d&agrave;ng hơn.&nbsp;C&oacute; độ bền m&agrave;u, l&acirc;u tr&ocirc;i với bảng m&agrave;u MLBB như sau:<strong>&nbsp;V47 Sweet Life</strong>: M&agrave;u hồng trung t&iacute;nh nhẹ nh&agrave;ng,&nbsp;<strong>V48 Joyful Life</strong>: M&agrave;u be đ&agrave;o nhẹ nh&agrave;ng,&nbsp;<strong>V49 Rosy Life</strong>: M&agrave;u hồng nhẹ nh&agrave;ng,<strong>&nbsp;V50 Lonely Life</strong>: M&agrave;u n&acirc;u san h&ocirc; mềm mại,&nbsp;<strong>V51Purple Life</strong>: M&agrave;u hoa mận mềm mại</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"[MÀU 1-51] Son Kem Lì, Lên Màu Siêu Chuẩn Bbia Last Velvet Lip Tint 5g\" src=\"https://file.hstatic.net/1000006063/file/2_052872e3414946b3933876acc7acec60.jpg\" /></p>\r\n\r\n<p><img alt=\"[MÀU 1-51] Son Kem Lì, Lên Màu Siêu Chuẩn Bbia Last Velvet Lip Tint 5g\" src=\"https://file.hstatic.net/1000006063/file/7_7926fb60f1ae4c898b5e96700bdf098a.jpg\" /></p>\r\n\r\n<p><img alt=\"[MÀU 1-51] Son Kem Lì, Lên Màu Siêu Chuẩn Bbia Last Velvet Lip Tint 5g\" src=\"https://file.hstatic.net/1000006063/file/6_ecd9101b748a44cb9410c275aa23f489.jpg\" /></p>\r\n\r\n<p><img alt=\"[MÀU 1-51] Son Kem Lì, Lên Màu Siêu Chuẩn Bbia Last Velvet Lip Tint 5g\" src=\"https://file.hstatic.net/1000006063/file/5_2f2593a414c5414ebcf6275d14559b1d.jpg\" /></p>\r\n', '1732885625_son2.png', 1),
(3, 'Kem dưỡng ẩm làm dịu da Klairs Midnight Blue Calming Cream', 6, 10, 3, 10, 0, 330000, 420000, 5, '<h2>Kem dưỡng l&agrave;m dịu v&agrave; phục hồi da Klairs Midnight Blue Calming Cream 30ml</h2>\r\n\r\n<ul>\r\n	<li><strong>Kem dưỡng ẩm&nbsp;Klairs&nbsp;Midnight Blue Calming Cream</strong>&nbsp;gi&uacute;p phục hồi v&agrave; l&agrave;m dịu da khi bị k&iacute;ch ứng, phục hồi da sau điều trị (lazer, tẩy da chết), l&agrave;m giảm sưng tấy vết thương sau khi trị mụn hoặc lấy nh&acirc;n. Sản phẩm c&ograve;n gi&uacute;p lấy lại sức sống cho l&agrave;n da đối với những người l&agrave;m việc văn ph&ograve;ng, chịu nhiều &aacute;p lực, th&uacute;c đẩy phục hồi da sau tổn thương. Chất kem đặc m&agrave;u xanh dương bắt mắt khiến người d&ugrave;ng c&oacute; cảm gi&aacute;c tươi m&aacute;t ngay khi nh&igrave;n thấy sản phẩm.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Klairs Midnight Blue Calming Cream 30\" src=\"https://klairsvietnam.vn/wp-content/uploads/2021/05/Klairs-Midnight-Blue-Calming-Cream-30.jpg\" style=\"height:650px; width:650px\" /></p>\r\n\r\n<h2>Th&agrave;nh phần v&agrave; c&ocirc;ng dụng kem dưỡng ẩm Klairs Midnight Blue Calming Cream</h2>\r\n\r\n<ul>\r\n	<li><strong>Kem dưỡng ẩm&nbsp;Klairs&nbsp; Midnight Blue Calming Cream</strong>&nbsp;được d&ugrave;ng v&agrave;o bước cuối c&ugrave;ng của quy tr&igrave;nh chăm s&oacute;c da , sau khi thực hiện c&aacute;c bước chăm s&oacute;c da h&agrave;ng ng&agrave;y.</li>\r\n	<li>Butylene Glycol, Glycerin, Sodium Hyaluronate: Cung cấp v&agrave; duy tr&igrave; độ ẩm cần thiết cho l&agrave;n da suốt ng&agrave;y d&agrave;i.</li>\r\n	<li>Cetyl Ethylhexanoate, Stearic Acid: Điều tiết lượng dầu, nhờn cho da.</li>\r\n	<li>Morus Alba Root Extract: Th&agrave;nh phần c&oacute; khả năng l&agrave;m trắng da v&agrave; gi&uacute;p da đều m&agrave;u hơn.</li>\r\n	<li>Guaiazulene (chiết xuất hoa c&uacute;c La M&atilde;): C&acirc;n bằng độ pH tự nhi&ecirc;n cho da v&agrave; gi&uacute;p phục hồi da sau c&aacute;c tổn thương.</li>\r\n	<li>Niacinamide (hay được biết đến l&agrave; một loại Vitamin B3): L&agrave;m tăng khả năng bảo vệ da tốt hơn nhờ &ldquo;h&agrave;ng r&agrave;o&rdquo; tự nhi&ecirc;n tr&ecirc;n da.</li>\r\n	<li>Morus Alba Root Extract: Th&agrave;nh phần n&agrave;y c&oacute; t&aacute;c dụng gi&uacute;p l&agrave;m trắng s&aacute;ng da.</li>\r\n	<li>Ceramide 3: Th&agrave;nh phần gi&uacute;p tăng sức đề kh&aacute;ng, gi&uacute;p da lu&ocirc;n khỏe mạnh, săn chắc.</li>\r\n	<li>Centella Asiatica Extract (Chiết xuất rau m&aacute;): L&agrave;m dịu da, giảm th&acirc;m, n&aacute;m. Đồng thời c&ograve;n gi&uacute;p cồi mụn l&ecirc;n nhanh hơn, hỗ trợ qu&aacute; tr&igrave;nh trị mụn th&ecirc;m hiệu quả hơn.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Kem dưỡng làm dịu da Klairs\" src=\"https://klairsvietnam.vn/wp-content/uploads/2020/08/kem-duong-lam-diu-da-klairs.jpg\" style=\"height:750px; width:1050px\" /></p>\r\n\r\n<h3>Hướng dẫn sử dụng kem dưỡng ẩm Klairs Midnight Blue Calming Cream</h3>\r\n\r\n<ul>\r\n	<li>Lấy một lượng kem vừa đủ ra tay. Sau đ&oacute; chấm đều l&ecirc;n c&aacute;c điểm tr&ecirc;n gương mặt: Tr&aacute;n, 2 b&ecirc;n m&aacute;, cằm. D&ugrave;ng tay massage cho kem dưỡng ẩm thẩm thấu v&agrave;o da mặt.</li>\r\n</ul>\r\n', '1732887865_kem-duong-klairs.png', 1),
(4, 'Kem dưỡng La Roche-Posay Toleriane Skincare', 6, 9, 4, 10, 0, 400000, 513000, 0, '<p><strong>Kem Dưỡng L&agrave;m Dịu Tức Th&igrave; &amp; Bảo Vệ Cho Da Thường Rất Nhạy Cảm La Roche-Posay Toleriane Skincare 40Ml</strong></p>\r\n\r\n<p><strong><a href=\"https://www.guardian.com.vn/cham-soc-da-mat/kem-gel-xit-duong-da/kem-gel-xit-duong-am.html\">Kem dưỡng&nbsp;</a></strong>l&agrave;m dịu tức th&igrave; cho da thường rất nhạy cảm &amp; k&iacute;ch ứng<strong><a href=\"https://www.guardian.com.vn/shopby/la-roche-posay.html\" target=\"_blank\">&nbsp;La Roche-Posay&nbsp;</a></strong>Toleriane Skincare 40ml c&oacute; kết cấu si&ecirc;u mềm nhẹ kết hợp những th&agrave;nh phần chiết xuất thi&ecirc;n nhi&ecirc;n v&agrave; gi&agrave;u độ ẩm gi&uacute;p chống k&iacute;ch ứng, bảo vệ v&agrave; giữ ẩm cho da, phục hồi v&agrave; tăng khả năng chịu đựng của da với c&aacute;c t&aacute;c nh&acirc;n xấu ngo&agrave;i m&ocirc;i trường.&nbsp;</p>\r\n\r\n<p>Sản phẩm kh&ocirc;ng chất bảo quản, kh&ocirc;ng g&acirc;y mụn, d&ugrave;ng cho da nhạy cảm v&agrave; rất nhạy cảm.</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN THƯƠNG HIỆU</strong></p>\r\n\r\n<p>La Roche-Posay l&agrave; nh&atilde;n h&agrave;ng dược mỹ phẩm đến từ Ph&aacute;p trực thuộc tập đo&agrave;n L&rsquo;Oreal đ&atilde; hoạt động được hơn 30 năm, phối hợp nghi&ecirc;n cứu với c&aacute;c b&aacute;c sĩ da liễu tr&ecirc;n to&agrave;n thế giới cho ra đời c&aacute;c sản phẩm dưỡng da hướng đến thị trường sản phẩm d&agrave;nh cho da nhạy cảm, ngo&agrave;i ra c&ograve;n c&oacute; d&ograve;ng sản phẩm d&agrave;nh cho trẻ em. Th&agrave;nh phần nổi bật xuất hiện trong c&aacute;c sản phẩm của La Roche-Posay (LRP) l&agrave; nước suối kho&aacute;ng &ndash; thermal spring water. Tất cả những sản phẩm thuộc La Roche Posay đều được thử nghiệm l&acirc;m s&agrave;ng v&agrave; đ&aacute;nh gi&aacute; kh&aacute;ch quan từ bệnh viện Saint Jacques-Toulouse. Quy tr&igrave;nh b&agrave;o chế của sản phẩm cũng rất nghi&ecirc;m ngặt mang lại cho người sử dụng vẻ đẹp tự nhi&ecirc;n v&agrave; rất an to&agrave;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Xem th&ecirc;m c&aacute;c sản phẩm kh&aacute;c c&ugrave;ng với nhiều chương tr&igrave;nh khuyến m&atilde;i hấp dẫn tại&nbsp;<strong><a href=\"https://www.guardian.com.vn/\" target=\"_blank\">website Guardian</a></strong></p>\r\n\r\n<p>---</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN TH&Ecirc;M - ADDITIONAL INFORMATION</strong></p>\r\n\r\n<p>- Để biết th&ecirc;m th&ocirc;ng tin chi tiết về sản phẩm hoặc chương tr&igrave;nh khuyến m&atilde;i Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng li&ecirc;n hệ bộ phận CSKH qua Hotline 19004449 hoặc&nbsp;<strong><a href=\"https://www.facebook.com/guardianvn\" target=\"_blank\">fanpage Guardian Vietnam</a></strong>&nbsp;để được hỗ trợ</p>\r\n\r\n<p>- Nếu qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; nhu cầu xuất h&oacute;a đơn, vui l&ograve;ng điền th&ocirc;ng tin xuất h&oacute;a đơn v&agrave;o mục Ghi ch&uacute; đơn h&agrave;ng, Bộ phận CSKH sẽ gửi h&oacute;a đơn điện tử v&agrave;o email Qu&yacute; Kh&aacute;ch h&agrave;ng đ&atilde; đăng k&yacute; với Guardian</p>\r\n\r\n<p>Guardian xin ch&acirc;n th&agrave;nh cảm ơn Qu&yacute; kh&aacute;ch!</p>\r\n', '1732888253_kemduong2.png', 1),
(5, 'Kem Chống Nắng Nivea Sun UV Gesicht Spf 50, 50 ml', 5, 8, 5, 9, 1, 300000, 380000, 0, '<h2>Kem chống nắng Nivea Sun UV Gesicht Spf 50 cho da mặt, 50 ml</h2>\r\n\r\n<p>Kem chống nắng NIVEA SUN UV Gesicht cho da mặt SPF 50 mang lại khả năng chống tia UVA / UVB hiệu quả. Bảo vệ da chống lại ch&aacute;y nắng v&agrave; sạn da trong một thời gian d&agrave;i. C&ocirc;ng thức nhanh ch&oacute;ng thẩm thấu v&agrave;o da, cung cấp độ ẩm chuy&ecirc;n s&acirc;u v&agrave; kh&ocirc;ng g&acirc;y nhờn &ndash; l&yacute; tưởng cho việc sử dụng h&agrave;ng ng&agrave;y. Khả năng tương th&iacute;ch da được x&aacute;c nhận về da liễu.</p>\r\n\r\n<p><img alt=\"Đánh giá kem chống nắng Nivea Sun UV Gesicht\" src=\"https://kenhxachtayduc.com/wp-content/uploads/2019/06/%C4%90%C3%A1nh-gi%C3%A1-kem-ch%E1%BB%91ng-n%E1%BA%AFng-Nivea-Sun-UV-Gesicht.png\" style=\"height:102px; width:560px\" /></p>\r\n\r\n<p>Sản phẩm được người d&ugrave;ng Đức đ&aacute;nh gi&aacute; chất lượng kh&aacute; tốt</p>\r\n\r\n<h3>C&ocirc;ng dụng</h3>\r\n\r\n<ul>\r\n	<li>Hấp thụ b&atilde; nhờn dư thừa tr&ecirc;n da m&agrave; kh&ocirc;ng l&agrave;m tắc nghẽn lỗ ch&acirc;n l&ocirc;ng</li>\r\n	<li>Kết cấu nhẹ, giữ ẩm cho cảm gi&aacute;c mịn m&agrave;ng.</li>\r\n	<li>Chất chống oxy h&oacute;a c&oacute; nguồn gốc tự nhi&ecirc;n hỗ trợ chống nắng cho da</li>\r\n	<li>Kem chống nắng NIVEA SUN UV Gesicht kh&ocirc;ng g&acirc;y bỏng trong mắt &ndash; được x&aacute;c nhận nh&atilde;n khoa</li>\r\n	<li>Khả năng tương th&iacute;ch da được x&aacute;c nhận về da liễu &ndash; l&yacute; tưởng để sử dụng h&agrave;ng ng&agrave;y</li>\r\n</ul>\r\n\r\n<h3>Hướng dẫn sử dụng</h3>\r\n\r\n<ul>\r\n	<li>Thoa kem đều l&ecirc;n da trước khi tiếp x&uacute;c với &aacute;nh nắng mặt trời.</li>\r\n	<li>Tr&aacute;nh tiếp x&uacute;c trực tiếp v&agrave;o mắt.</li>\r\n	<li>N&ecirc;n thoa lại kem chống nắng Nivea Sun UV Gesicht khi bơi, sau khi tắm,&hellip;đế tăng hiệu quả bảo vệ da.</li>\r\n	<li>SPF l&agrave; chỉ số chống nắng, chỉ số c&agrave;ng cao th&igrave; thời gian hiệu quả của sản phẩm c&agrave;ng l&acirc;u.</li>\r\n	<li>Với &aacute;nh nắng ớ Vỉệt Nam những ng&agrave;y h&egrave; th&igrave; n&ecirc;n sử dung loại kem chống nắng c&oacute; SPF từ 30 trở l&ecirc;n.</li>\r\n	<li>Mỗi người n&ecirc;n tạo th&oacute;i quen b&ocirc;i kem chống nắng trước khi đi ra ngo&agrave;i.</li>\r\n	<li>Xem th&ocirc;ng tin chi tiết sản phẩm tr&ecirc;n trang chủ&nbsp;<a href=\"https://www.nivea.de/shop/uv-gesicht-mattierender-sonnenschutz-40059004756260001.html\">Nivea&nbsp;</a>của Đức.</li>\r\n</ul>\r\n\r\n<p>Xem th&ecirc;m c&aacute;c sản phẩm&nbsp;<a href=\"https://kenhxachtayduc.com/product-category/cham-soc-nuoc-hoa/bao-ve-da/kem-chong-nang/\">kem chống nắng</a>&nbsp;kh&aacute;c.</p>\r\n\r\n<h3>Th&agrave;nh phần kem chống nắng Nivea Sun UV Gesicht</h3>\r\n\r\n<ul>\r\n	<li>Aqua, Homosalates, Butyl Methoxydibenzoylmethane, Butyl Methoxydibenzoylmethane, Ethylhexyl Salicylate, Ethylhexyl Salicylat, metylenylenylenylenylen 1pylen 1pylen 1pylen tr&ecirc;n một ly xylat Chiết xuất từ ​​rễ Glycyrrhiza Inflata, Tocopheryl Acetate, Natri Stearoyl Glutamate, Xanthan Gum, Carbome, Acantlate, Xanthan Gum, Carbome, Acrylates / C10-30 Isomethyl Ionone, Geraniol, Citronellol, Coumarin, Nước hoa</li>\r\n</ul>\r\n\r\n<h3>Lưu &yacute; khi sử dụng</h3>\r\n\r\n<ul>\r\n	<li>Bảo quản nơi tho&aacute;ng m&aacute;t. Tr&aacute;nh nơi c&oacute; nhiệt độ cao v&agrave; nơi c&oacute; ảnh nắng mặt trời trực tiếp.</li>\r\n	<li>Xem th&ocirc;ng tin chi tiết về sản phẩm tr&ecirc;n&nbsp;<a href=\"https://www.codecheck.info/kosmetik_koerperpflege/koerper_sonnenschutz/sonnenschutz/ean_4005900475626/id_45725351/NIVEA_SUN_Gesichtsonnencreme_mattierend_LSF50.pro\">codecheck</a>&nbsp;của đức.</li>\r\n	<li>Hiệu quả sử dụng c&oacute; thể đa dạng phụ thuộc v&agrave;o cơ địa của mỗi người.</li>\r\n</ul>\r\n', '1732888864_kemcn.png', 1),
(6, 'Kem Nền Hỗ Trợ Dưỡng Ẩm LOréal True Match Super Blendable Foundation G1 Gold Ivory 30Ml', 4, 1, 3, 9, 1, 300000, 370000, 5, '<p><strong>Kem Nền Hỗ Trợ Dưỡng Ẩm L&#39;Or&eacute;al True Match Super Blendable Foundation G1 Gold Ivory 30ml</strong></p>\r\n\r\n<p><a href=\"https://guardian.com.vn/trang-diem/kem-nen-bb-cream.html\">Kem Nền</a>&nbsp;Hỗ Trợ Dưỡng Ẩm&nbsp;<a href=\"https://guardian.com.vn/shopby/l-oreal.html\" target=\"_blank\">Loreal</a>&nbsp;True Match Super Blendable Foundation ch&iacute;nh l&agrave; sản phẩm rất ph&ugrave; hợp với l&agrave;n da ch&acirc;u &Aacute;. Được t&iacute;ch hợp c&aacute;c th&agrave;nh phần dưỡng ẩm gi&uacute;p bổ sung độ ẩm đầy đủ cho l&agrave;n da c&ugrave;ng với c&aacute;c hạt m&agrave;u si&ecirc;u mềm mịn, sản phẩm sẽ tạo độ che phủ v&agrave; mang đến cho bạn l&agrave;n da mịn m&agrave;ng, tươi s&aacute;ng thật tự nhi&ecirc;n. Đặc biệt, lớp phấn c&ograve;n c&oacute; khả năng kiềm dầu hiệu quả cho bạn sự th&ocirc;ng tho&aacute;ng suốt cả ng&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Xem th&ecirc;m c&aacute;c sản phẩm kh&aacute;c c&ugrave;ng với nhiều chương tr&igrave;nh khuyến m&atilde;i hấp dẫn tại&nbsp;<strong><a href=\"https://www.guardian.com.vn/\" target=\"_blank\">website Guardian</a></strong></p>\r\n\r\n<p>---</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN TH&Ecirc;M - ADDITIONAL INFORMATION</strong></p>\r\n\r\n<p>- Để biết th&ecirc;m th&ocirc;ng tin chi tiết về sản phẩm hoặc chương tr&igrave;nh khuyến m&atilde;i Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng li&ecirc;n hệ bộ phận CSKH qua Hotline 19004449 hoặc&nbsp;<strong><a href=\"https://www.facebook.com/guardianvn\" target=\"_blank\">fanpage Guardian Vietnam</a></strong>&nbsp;để được hỗ trợ</p>\r\n\r\n<p>- Nếu qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; nhu cầu xuất h&oacute;a đơn, vui l&ograve;ng điền th&ocirc;ng tin xuất h&oacute;a đơn v&agrave;o mục Ghi ch&uacute; đơn h&agrave;ng, Bộ phận CSKH sẽ gửi h&oacute;a đơn điện tử v&agrave;o email Qu&yacute; Kh&aacute;ch h&agrave;ng đ&atilde; đăng k&yacute; với Guardian</p>\r\n\r\n<p>Guardian xin ch&acirc;n th&agrave;nh cảm ơn Qu&yacute; kh&aacute;ch!</p>\r\n', '1732889206_kemnen.png', 1),
(7, 'Bảng phấn mắt 4 màu siêu mịn Eye Moment Palette fmgt The Face', 4, 9, 11, 10, 0, 280000, 310000, 0, '<h2>Phấn mắt si&ecirc;u mịn 4 m&agrave;u Eye Moment Palette fmgt The Face Shop</h2>\r\n\r\n<p><a href=\"https://myphamthefaceshop.com/?attachment_id=31852#main\"><img alt=\"Phấn mắt siêu mịn 4 màu Eye Moment Palette fmgt The Face Shop\" src=\"https://myphamthefaceshop.com/wp-content/uploads/2023/04/phan-mat-sieu-min-4-mau-eye-moment-palette-fmgt.jpg\" style=\"height:500px; width:500px\" /></a></p>\r\n\r\n<p>Phấn mắt si&ecirc;u mịn 4 m&agrave;u Eye Moment Palette fmgt The Face Shop</p>\r\n\r\n<p>Sự kết hợp m&agrave;u sắc ho&agrave;n hảo với c&aacute;c gam m&agrave;u từ trung t&iacute;nh đến rực rỡ chỉ trong một bảng phấn mắt c&oacute; k&iacute;ch thước nhỏ gọn dễ d&agrave;ng mang theo bất cứ đ&acirc;u, gi&uacute;p việc trang điểm mắt t&ugrave;y theo phong c&aacute;ch hay sở th&iacute;ch dễ d&agrave;ng hơn bao giờ hết!</p>\r\n\r\n<p><img alt=\"Bảng phấn mắt 4 màu siêu mịn Eye Moment Palette fmgt The Face Shop\" src=\"https://myphamthefaceshop.com/wp-content/uploads/2023/04/bang-phan-mat-4-mau-sieu-min-eye-moment-palette-fmgt-8.jpeg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p>Bảng phấn mắt 4 m&agrave;u si&ecirc;u mịn Eye Moment Palette fmgt The Face Shop</p>\r\n\r\n<p><img alt=\"Bảng phấn mắt 4 màu siêu mịn Eye Moment Palette fmgt The Face Shop\" src=\"https://myphamthefaceshop.com/wp-content/uploads/2023/04/bang-phan-mat-4-mau-sieu-min-eye-moment-palette-fmgt-7.jpeg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p>Bảng phấn mắt 4 m&agrave;u si&ecirc;u mịn Eye Moment Palette fmgt The Face Shop</p>\r\n\r\n<h2>Tone m&agrave;u Eye Moment Palette fmgt The Face Shop</h2>\r\n\r\n<p>Sản phẩm c&oacute; 6 tone m&agrave;u:</p>\r\n\r\n<p><img alt=\"Màu #1 Eye Moment Palette fmgt The Face Shop\" src=\"https://myphamthefaceshop.com/wp-content/uploads/2023/04/bang-phan-mat-4-mau-sieu-min-eye-moment-palette-fmgt-1.jpeg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p>M&agrave;u #1 Eye Moment Palette fmgt The Face Shop</p>\r\n', '1732889578_phanmat.png', 1),
(8, 'Kem Chống Nắng La Roche-Posay Kiểm Soát Dầu SPF50+ 50ml', 5, 9, 5, 28, 2, 250000, 354000, 0, '<p><strong>Kem chống nắng gi&uacute;p bảo vệ da khỏi tia UVB &amp; UVA d&agrave;i v&agrave; giảm b&oacute;ng nhờn La Roche-Posay Anthelios UV Mune 400 Oil Control Gel-Cream 50ml</strong>&nbsp;l&agrave; kem chống nắng d&agrave;nh cho da dầu phi&ecirc;n bản c&ocirc;ng thức cải tiến mới đến từ&nbsp;<strong><a href=\"https://hasaki.vn/thuong-hieu/la-roche-posay.html\" target=\"_blank\">thương hiệu dược mỹ phẩm&nbsp;</a><a href=\"https://hasaki.vn/thuong-hieu/la-roche-posay.html\" target=\"_blank\">La Roche-Posay</a></strong>,&nbsp;gi&uacute;p kiểm so&aacute;t b&oacute;ng nhờn v&agrave; bảo vệ da trước t&aacute;c hại từ &aacute;nh nắng &amp; &ocirc; nhiễm, ngăn chặn c&aacute;c t&aacute;c nh&acirc;n g&acirc;y l&atilde;o h&oacute;a sớm. Sản phẩm c&oacute; c&ocirc;ng thức chống thấm nước th&iacute;ch hợp d&ugrave;ng hằng ng&agrave;y v&agrave; cả những hoạt động ngo&agrave;i trời.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kem chống nắng phổ rộng La Roche-Posay Anthelios UV Mune 400 Oil Control Gel-Cream 50ml\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/kem-chong-nang-la-roche-posay-kiem-soat-dau-50ml-1.jpg\" style=\"width:800px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tia UVA d&agrave;i được mệnh danh l&agrave; kẻ th&ugrave; nguy hiểm nhất với l&agrave;n da, bởi bước s&oacute;ng l&ecirc;n đến 380nm-400nm, l&agrave;m tổn thương những tế b&agrave;o s&acirc;u dưới da. Với cường độ mạnh v&agrave;o m&ugrave;a h&egrave;, tia UVA d&agrave;i sẽ g&acirc;y ra những t&aacute;c hại l&acirc;u d&agrave;i như th&acirc;m n&aacute;m, l&atilde;o h&oacute;a da.</p>\r\n\r\n<p>Thấu hiệu được nhu cầu t&igrave;m kiếm sản phẩm chống nắng c&oacute; khả năng bảo vệ da trước t&aacute;c hại của tia UVA d&agrave;i, thương hiệu La Roche-Posay đ&atilde; cho ra đời phi&ecirc;n bản&nbsp;<strong>UVMune 400 Oil Control Gel Cream</strong>&nbsp;-&nbsp;kem chống nắng c&oacute; m&agrave;ng lọc ti&ecirc;n tiến nhất thị trường Mexoryl 400.&nbsp;Kết hợp c&ugrave;ng c&ocirc;ng nghệ Netlock tạo n&ecirc;n lớp l&aacute; chắn bền vững gi&uacute;p bảo vệ da khỏi tia UVA d&agrave;i nguy hiểm g&acirc;y th&acirc;m n&aacute;m.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kem chống nắng La Roche-Posay Anthelios UV Mune 400 Oil Control Gel-Cream 50ml với màng lọc Mexoryl 400 độc quyền giúp bảo vệ da khỏi tia UVA dài nguy hiểm gây thâm nám.\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/kem-chong-nang-la-roche-posay-kiem-soat-dau-50ml-3.jpg\" style=\"width:800px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;,&nbsp;<strong>kem chống nắng&nbsp;La Roche-Posay&nbsp;UVMune 400 Oil Control Gel Cream phi&ecirc;n bản mới&nbsp;</strong>được cải tiến với&nbsp;nồng độ phần trăm hoạt&nbsp;chất Airlicium được tăng l&ecirc;n, mang đến hiệu quả kiềm dầu tốt hơn đến 12h. Ngo&agrave;i ra, sản phẩm c&ograve;n c&oacute;&nbsp;kết cấu mới dễ t&aacute;n, thấm nhanh kh&ocirc;ng g&acirc;y v&oacute;n, mang lại cho bạn m&ocirc;̣t lớp finish mịn lì và bóng khỏe tự nhi&ecirc;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kem chống nắng La Roche-Posay Anthelios UV Mune 400 Oil Control Gel-Cream 50ml với hoạt chất Airlicium cho hiệu quả kiềm dầu đến 12 giờ.\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/kem-chong-nang-la-roche-posay-kiem-soat-dau-50ml-2.jpg\" style=\"width:800px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Kem Chống Nắng Kiểm So&aacute;t Dầu La Roche-Posay&nbsp;Anthelios UV Mune 400 Oil Control Gel-Cream&nbsp;SPF50+</strong>&nbsp;(phi&ecirc;n bản mới) hiện đ&atilde; c&oacute; mặt tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>.</p>\r\n\r\n<h2>Loại da ph&ugrave; hợp:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sản phẩm ph&ugrave; hợp cho da dầu v&agrave; da hỗn hợp.</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&iacute;ch hợp sử dụng cho da mặt v&agrave; cổ.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Giải ph&aacute;p cho t&igrave;nh trạng da:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://hasaki.vn/danh-muc/dau-thua-lo-chan-long-to-c1879.html\" target=\"_blank\">Da dầu thừa - lỗ ch&acirc;n l&ocirc;ng to</a>.</p>\r\n	</li>\r\n	<li>\r\n	<p>Da mụn hoặc dễ nổi mụn do b&iacute;t tắc lỗ ch&acirc;n l&ocirc;ng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Ưu điểm nổi bật:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Kết cấu dạng kem gel, thẩm thấu tức th&igrave;, mang lại cảm gi&aacute;c kh&ocirc; tho&aacute;ng, kh&ocirc;ng để lại vệt trắng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kiểm so&aacute;t b&atilde; nhờn &amp; mồ h&ocirc;i vượt trội nhờ&nbsp;<strong>hoạt chất AIRLICIUM</strong>,&nbsp;gi&uacute;p mang đến một cảm gi&aacute;c &ldquo;sạch&rdquo; cho l&agrave;n da đến 12h.</p>\r\n	</li>\r\n	<li>\r\n	<p>Bảo vệ da trước những t&aacute;c hại từ &aacute;nh nắng &amp; &ocirc; nhiễm: l&atilde;o h&oacute;a sớm, đốm n&acirc;u, k&iacute;ch ứng &aacute;nh nắng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ chống nắng cao nhất SPF 50+ bảo vệ da tối ưu dưới &aacute;nh nắng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Chống nắng phổ rộng với&nbsp;<strong>m&agrave;ng lọc độc quyền MEXORYL 400&nbsp;</strong>-&nbsp;m&agrave;ng lọc UV duy nhất tr&ecirc;n thị trường v&agrave; hiệu quả nhất, kể cả trước những tia UVA d&agrave;i l&agrave;m hủy hoại tế b&agrave;o da với bước s&oacute;ng 380-400nm. Ngăn chặn hiểu quả của th&acirc;m n&aacute;m da.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Hiệu quả sử dụng:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Giảm 25% b&oacute;ng dầu chỉ sau 1 tuần.</p>\r\n	</li>\r\n	<li>\r\n	<p>&gt; 83% tạo hiệu ứng l&igrave; 12h tr&ecirc;n da.</p>\r\n	</li>\r\n	<li>\r\n	<p>&gt; 97% kh&ocirc;ng g&acirc;y nhờn r&iacute;t, bết d&iacute;nh sau 12h sử dụng.</p>\r\n	</li>\r\n	<li>\r\n	<p>&gt; 98% kh&ocirc;ng để lại vệt trắng tr&ecirc;n da.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Độ an to&agrave;n:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Được kiểm nghiệm dưới sự gi&aacute;m s&aacute;t của c&aacute;c chuy&ecirc;n gia da liễu.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng chứa hương liệu, kh&ocirc;ng paraben, kh&ocirc;ng g&acirc;y bết d&iacute;nh, kh&ocirc;ng để lại vệt trắng, l&acirc;u tr&ocirc;i khi sử dụng dưới nước v&agrave; kh&ocirc;ng g&acirc;y mụn trứng c&aacute;.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tuyệt đối an to&agrave;n với da, đặc biệt l&agrave; da nhạy cảm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Bảo quản:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp.</p>\r\n	</li>\r\n	<li>\r\n	<p>Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy nắp k&iacute;n sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Th&ocirc;ng số sản phẩm:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Dung t&iacute;ch:</strong>&nbsp;50ml; 50mlx2</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Thương hiệu:</strong>&nbsp;La Roche-Posay</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nh&agrave; sản xuất:</strong>&nbsp;La Roche-Posay Laboratoire Pharmaceutique &ndash; France</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:&nbsp;</strong>Ph&aacute;p</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nơi sản xuất:</strong>&nbsp;Ph&aacute;p</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hạn sử dụng:&nbsp;</strong>3 năm kể từ ng&agrave;y sản xuất</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ng&agrave;y sản xuất:&nbsp;</strong>Xem tr&ecirc;n bao b&igrave; sản phẩm</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Th&agrave;nh phần:</strong>&nbsp;In tr&ecirc;n bao b&igrave;</p>\r\n	</li>\r\n</ul>\r\n', '1732889763_kcn2.png', 1),
(9, 'Nước Hoa Miss Dior Eau De Parfum 100ml Bản 2021', 2, 3, 10, 10, 0, 3000000, 3350000, 10, '<p><strong>Nước Hoa Miss Dior EDP 100ml Bản 2021</strong>&nbsp;l&agrave; chai&nbsp;<a href=\"https://vuahanghieu.com/nuoc-hoa/nu\">nước hoa nữ</a>&nbsp;sang trọng tới từ thương hiệu&nbsp;<a href=\"https://vuahanghieu.com/dior\">Christian Dior</a>&nbsp;Ph&aacute;p.&nbsp;<strong>Miss Dior Eau De Parfum</strong>&nbsp;mang sự tươi m&aacute;t của hương hoa cỏ, mang lại sự dịu d&agrave;ng v&agrave; thanh thản, lạc quan cho c&aacute;c c&ocirc; g&aacute;i.</p>\r\n\r\n<h2><strong>Lịch sử nước hoa Miss Dior bản 2021</strong></h2>\r\n\r\n<p>Năm 1947, Miss Dior ra đời từ sự th&ocirc;i th&uacute;c, từ kh&aacute;t vọng m&atilde;nh liệt muốn khơi lại cuộc sống của những người phụ nữ, khiến họ t&igrave;m lại những sắc m&agrave;u rực rỡ của t&igrave;nh y&ecirc;u. V&agrave;o thời điểm n&agrave;y, sau thời kỳ đen tối, con đường m&ograve;n n&agrave;y đối với&nbsp;<a href=\"https://vuahanghieu.com/dior\">Christian Dior</a>&nbsp;l&agrave; từ đồng nghĩa của hạnh ph&uacute;c, thơ ca v&agrave; sự h&agrave;i h&ograve;a được kh&aacute;m ph&aacute; lại. Miss Dior thu h&uacute;t sự ch&uacute; &yacute;, khiến bạn rung động v&agrave; mời gọi bạn kh&aacute;m ph&aacute; mọi vẻ đẹp của thế giới v&agrave; t&igrave;nh y&ecirc;u.</p>\r\n\r\n<p><img alt=\"Nước Hoa Miss Dior Eau De Parfum 100ml Bản 2021 - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2021/10/01-discover-the-new-miss-dior-ea-jpg-1633137443-02102021081723.jpg\" /></p>\r\n\r\n<p>Natalie Portman trở th&agrave;nh gương mặt đại diện cho d&ograve;ng nước hoa Miss Dior từ năm 2010. L&uacute;c ấy, c&ocirc; vừa ho&agrave;n thiện vai diễn g&acirc;y tranh c&atilde;i trong bộ phim&nbsp;<em>Thi&ecirc;n Nga Đen</em>&nbsp;(<em>Black Swan</em>).</p>\r\n\r\n<p>Đ&atilde; hơn 10 năm tr&ocirc;i qua. Nữ diễn vi&ecirc;n 40 tuổi tiếp tục trở lại với chiến dịch quảng c&aacute;o&nbsp;<a href=\"https://vuahanghieu.com/nuoc-hoa-miss-dior-eau-de-parfum-100ml-ban-2021-ph034211\">Miss Dior Eau de Parfum mới cho năm 2021</a>,&nbsp;<em>Wake Up For Love</em>.</p>\r\n\r\n<p>Khi được hỏi c&oacute; sự kh&aacute;c biệt g&igrave; giữa chiến dịch n&agrave;y v&agrave; chiến dịch đầu c&ocirc; quay chụp cho Dior, Natalie Portman trả lời: Đ&oacute; l&agrave; sự trưởng th&agrave;nh của người phụ nữ, khi xịt nước hoa v&igrave; bản th&acirc;n chứ kh&ocirc;ng v&igrave; bất kỳ một người đ&agrave;n &ocirc;ng. Nữ diễn vi&ecirc;n đặc biệt khen ngợi nh&agrave; mốt Ph&aacute;p Christian Dior Parfums đ&atilde; l&agrave;m n&ecirc;n một chiến dịch xoay quanh nội t&acirc;m người phụ nữ.</p>\r\n\r\n<p><img alt=\"Nước Hoa Miss Dior Eau De Parfum 100ml Bản 2021 - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2021/11/miss-dioe-edp-2021-jpg-1637570395-22112021153955.jpg\" /></p>\r\n\r\n<p>Nh&agrave; thiết kế Christian Dior từng n&oacute;i về m&ugrave;i hương Miss Dior rằng, &quot;H&atilde;y l&agrave;m cho t&ocirc;i một m&ugrave;i nước hoa tượng trưng cho t&igrave;nh y&ecirc;u&quot;. &Ocirc;ng chưa từng n&oacute;i t&igrave;nh y&ecirc;u n&agrave;y l&agrave; g&igrave;. Người ta c&oacute; thể lập tức nghĩ đến t&igrave;nh y&ecirc;u nam nữ. Nhưng cũng c&oacute; thể diễn giải m&ugrave;i hương Miss Dior l&agrave; t&igrave;nh y&ecirc;u m&agrave; &ocirc;ng d&agrave;nh cho em g&aacute;i Catherine Dior, v&igrave; đ&atilde; d&ugrave;ng t&ecirc;n của b&agrave; l&agrave;m thương hiệu nước hoa.</p>\r\n\r\n<p>Cho năm 2021, Miss Dior Eau de Parfum trở lại qua &quot;c&aacute;i mũi&quot; chế t&aacute;c nước hoa Fran&ccedil;ois Demachy. Hoa hồng Centifolia v&agrave; hoa linh lan (lily of the valley) tiếp tục l&agrave; trọng t&acirc;m của m&ugrave;i hương. C&aacute;c th&agrave;nh vi&ecirc;n mới l&agrave; mẫu đơn (peony) v&agrave; di&ecirc;n vỹ (iris). &ldquo;Bạn c&oacute; thể cảm nhận m&ugrave;i hương của đất v&agrave; c&acirc;y cỏ. N&oacute; khiến t&ocirc;i nhớ về một c&aacute;nh rừng v&agrave; đồng hoa, hoang d&atilde;, thi&ecirc;n nhi&ecirc;n&quot;, Natalie Portman nhận x&eacute;t về m&ugrave;i hương Miss Dior mới.</p>\r\n\r\n<h2><strong>Thiết kế chai nước hoa Miss Dior Eau De Parfum 100ml sang trọng, trang nh&atilde;</strong></h2>\r\n\r\n<p>Kế thừa tinh hoa trong phong c&aacute;ch của những d&ograve;ng nước hoa Miss Dior trước đ&oacute; nhưng&nbsp;<a href=\"https://vuahanghieu.com/nuoc-hoa-miss-dior-eau-de-parfum-100ml-ban-2021-ph034211\"><strong>Nước hoa Miss Dior Eau De Parfum 100ml bản 2021</strong></a>&nbsp;c&oacute; sự kh&aacute;c biệt gợi cảm, sang trọng v&agrave; trang nh&atilde; hơn.</p>\r\n\r\n<p>Miss Dior eau de parfum được kho&aacute;c tr&ecirc;n m&igrave;nh một chiếc nơ &quot;poignard&quot; mới bằng vải: một v&agrave;i inch sang trọng tuyệt đối thắt n&uacute;t ở cổ của hương thơm. Do đ&oacute;, Miss Dior Eau de Parfum mới mang đến một chiếc nơ thời trang cao cấp đầy m&agrave;u sắc v&agrave; điểm nhấn, với sự nở hoa ngẫu nhi&ecirc;n khiến mỗi chiếc trở n&ecirc;n ho&agrave;n to&agrave;n độc đ&aacute;o. B&ecirc;n dưới th&acirc;n chai, họa tiết houndstooth mang t&iacute;nh biểu tượng của Miss Dior được khắc l&ecirc;n th&agrave;nh chai.</p>\r\n\r\n<p><img alt=\"Nước Hoa Miss Dior Eau De Parfum 100ml Bản 2021 - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2021/11/miss-dior-edp-2021-jpg-1637570534-22112021154214.jpg\" /></p>\r\n\r\n<p>Chai thủy tinh trong suốt vu&ocirc;ng vắn, dung dịch&nbsp;<a href=\"https://vuahanghieu.com/nuoc-hoa\">nước hoa</a>&nbsp;m&agrave;u hồng đậm s&oacute;ng s&aacute;nh lấp l&aacute;nh dưới lớp vỏ rực rỡ tăng sự gợi cảm v&agrave; dễ d&agrave;ng chinh phục c&aacute;c c&ocirc; n&agrave;ng th&iacute;ch sự nữ t&iacute;nh điệu đ&agrave;.</p>\r\n\r\n<h2><strong>M&ugrave;i hương nước hoa Miss Dior Eau De Parfum 100ml</strong></h2>\r\n\r\n<p>Kế thừa th&agrave;nh cảm hứng từ c&aacute;c th&agrave;nh c&ocirc;ng trước, sản phẩm n&agrave;y với thơm mới của Miss Dior giống như một &quot;millefiori&quot; khứu gi&aacute;c. Hoa hồng Centifolia, với c&aacute;c nốt hương mật ong v&agrave; cay nồng, tr&ecirc;n một tr&aacute;i tim mượt m&agrave; với hương thơm . Được t&ocirc; điểm bởi hương hoa huệ tươi của thung lũng, hương hoa mẫu đơn với hương quả mơ v&agrave; hương hoa di&ecirc;n vĩ. Do đ&oacute;, Miss Dior được x&acirc;y dựng dựa tr&ecirc;n một sự s&acirc;u sắc nổi bật v&agrave; thanh lịch, tương tự như một &quot;millefiori&quot; được tưởng tượng như một ng&agrave;n b&ocirc;ng hoa trong một ng&agrave;n m&agrave;u sắc.</p>\r\n\r\n<p><img alt=\"Nước Hoa Miss Dior Eau De Parfum 100ml Bản 2021 - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2021/11/nuoc-hoa-miss-dior-edp-2021-jpg-1637570679-22112021154439.jpg\" /></p>\r\n\r\n<p><a href=\"https://vuahanghieu.com/dior/nuoc-hoa\">Chai nước hoa Dior</a>&nbsp;n&agrave;y được y&ecirc;u th&iacute;ch bởi sự nhẹ nh&agrave;ng, kh&ocirc;ng qu&aacute; nồng đậm nhưng lại l&agrave; vừa đủ để khiến bao người xung quanh phải ngất ng&acirc;y khi tiếp x&uacute;c với bạn.</p>\r\n\r\n<p><img alt=\"Nước Hoa Miss Dior Eau De Parfum 100ml Bản 2021 - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2021/11/mui-huong-miss-dior-edp-2021-jpg-1637570816-22112021154656.jpg\" /></p>\r\n\r\n<p><strong>M&ugrave;i hương đặc trưng</strong>:</p>\r\n\r\n<ul>\r\n	<li><strong>Hương đầu</strong>: Chanh, Qu&yacute;t hồng, Ti&ecirc;u hồng, Cam đỏ, Cam ngọt, Cam bergamot</li>\r\n	<li><strong>Hương giữa</strong>: Hoa hồng Grasse, Hoa hồng Damask, L&aacute; hoa nh&agrave;i</li>\r\n	<li><strong>Hương cuối</strong>: Gỗ hồng, Hoắc hương</li>\r\n</ul>\r\n', '1732890066_nchoa1.png', 1),
(10, 'Nước Hoa Nữ Yves Saint Laurent Black Opium Women EDP 90ml', 2, 7, 9, 8, 2, 2400000, 2690000, 15, '<p>Nước hoa Yves Saint Laurent Black Opium Women EDP 90ml l&agrave; một trong những sản phẩm đ&igrave;nh đ&aacute;m của thương hiệu Yves Saint Laurent. Sản phẩm n&agrave;y kh&ocirc;ng chỉ nổi bật bởi hương thơm cuốn h&uacute;t m&agrave; c&ograve;n bởi thiết kế sang trọng v&agrave; qu&yacute; ph&aacute;i.</p>\r\n\r\n<p><strong>Lịch sử nước hoa</strong></p>\r\n\r\n<p>Yves Saint Laurent Black Opium l&agrave; hương nước hoa cho nữ giới được thương hiệu Yves Saint Laurent cho ra mắt v&agrave;o th&aacute;ng 9 năm 2014. Đ&acirc;y l&agrave; phi&ecirc;n bản được h&atilde;ng giới thiệu k&egrave;m th&ocirc;ng điệp rằng đ&acirc;y l&agrave; một chai nước hoa theo hướng cổ điển, khơi gợi v&agrave; khắc họa sự b&iacute; ẩn, những g&oacute;c tối chưa hề được nhắc tới về thương hiệu Yves Saint Laurent.</p>\r\n\r\n<p><img alt=\"Nước Hoa Nữ Yves Saint Laurent Black Opium Women EDP 90ml - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2024/07/yves-saint-laurent-black-opium-women-edp-1-jpg-1720760029-12072024115349.jpg\" style=\"width:1000px\" /></p>\r\n\r\n<p>Chuy&ecirc;n gia s&aacute;ng tạo nước hoa Nathalie Lorson v&agrave; MarieSalamagne, đ&atilde; hợp t&aacute;c với Olivier Cresp v&agrave; Honorine Blanc đ&atilde; cho ra đời sản phẩm m&ugrave;i hương n&agrave;y.</p>\r\n\r\n<p>Ghi ch&uacute; của h&atilde;ng đ&atilde; lưu &yacute; rằng C&agrave; ph&ecirc; hiện diện với số lượng lớn, c&ugrave;ng với Vani v&agrave; Tr&aacute;i l&ecirc; tạo th&agrave;nh một nh&oacute;m m&ugrave;i ngọt ng&agrave;o, ấm &aacute;p, cuốn h&uacute;t v&agrave; đủ tạo ra ấn tượng một c&aacute;ch tinh tế với những người xung quanh. &quot;<em>Một m&ugrave;i hương kh&ocirc;ng thể nhầm lẫn được</em>&quot; l&agrave; c&aacute;ch h&atilde;ng đ&atilde; mi&ecirc;u tả về Yves Saint Laurent Black Opium.</p>\r\n\r\n<p><strong>Thiết Kế Độc Đ&aacute;o</strong></p>\r\n\r\n<p>Chai nước hoa Yves Saint Laurent Black Opium Women EDP 90ml mang đậm n&eacute;t qu&yacute; ph&aacute;i với thiết kế chai đen huyền b&iacute;, lấp l&aacute;nh &aacute;nh kim tuyến. Thiết kế n&agrave;y kh&ocirc;ng chỉ thu h&uacute;t &aacute;nh nh&igrave;n m&agrave; c&ograve;n thể hiện sự sang trọng v&agrave; đẳng cấp của người sử dụng. Với kiểu d&aacute;ng thon gọn v&agrave; tinh tế, chai nước hoa dễ d&agrave;ng cầm nắm v&agrave; mang theo.</p>\r\n\r\n<p><img alt=\"Nước Hoa Nữ Yves Saint Laurent Black Opium Women EDP 90ml - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2024/07/p394534-av-14-zoom-1-jpg-1720760087-12072024115447.jpg\" style=\"width:1000px\" /></p>\r\n\r\n<p><strong>Hương Thơm Quyến Rũ</strong></p>\r\n\r\n<p>Yves Saint Laurent Black Opium Women EDP nổi bật với hương thơm quyến rũ, ngọt ng&agrave;o v&agrave; ấm &aacute;p. Nước hoa n&agrave;y mở đầu với hương cam bergamot v&agrave; l&ecirc; tươi m&aacute;t, tiếp theo l&agrave; hương c&agrave; ph&ecirc; đậm đ&agrave;, hoa nh&agrave;i tinh tế v&agrave; vani ngọt ng&agrave;o. Cuối c&ugrave;ng l&agrave; hương gỗ tuyết t&ugrave;ng v&agrave; hoắc hương tạo n&ecirc;n một lớp hương nền ấm &aacute;p v&agrave; đầy l&ocirc;i cuốn.</p>\r\n\r\n<p><em>Hương đặc trưng</em></p>\r\n\r\n<ul>\r\n	<li>Hương Đầu: Hồng ti&ecirc;u, Hoa cam, Quả l&ecirc;.</li>\r\n	<li>Hương giữa: C&agrave; ph&ecirc;, Hoa nh&agrave;i, Hạnh nh&acirc;n đắng, Cam thảo.</li>\r\n	<li>Hương cuối: Hương Va ni, C&acirc;y hoắc hương, Gỗ tuyết t&ugrave;ng, Gỗ Cashmere.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Nước Hoa Nữ Yves Saint Laurent Black Opium Women EDP 90ml - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2024/07/yves-saint-laurent-black-opium-women-edp-90ml-jpg-1720760289-12072024115809.jpg\" style=\"width:1000px\" /></p>\r\n\r\n<p><em>Nước hoa Yves Saint Laurent Black Opium Women EDP quyến rũ</em></p>\r\n\r\n<p><strong>Độ Lưu Hương v&agrave; Tỏa Hương</strong></p>\r\n\r\n<p>Yves Saint Laurent Black Opium Women EDP 90ml c&oacute; độ lưu hương v&agrave; tỏa hương ấn tượng. Sản phẩm n&agrave;y c&oacute; thể giữ m&ugrave;i từ 6 đến 8 giờ, ph&ugrave; hợp với những buổi tiệc tối hay c&aacute;c dịp đặc biệt. Độ tỏa hương vừa phải, kh&ocirc;ng qu&aacute; nồng nhưng vẫn đủ để tạo dấu ấn ri&ecirc;ng biệt.</p>\r\n\r\n<p><img alt=\"Nước Hoa Nữ Yves Saint Laurent Black Opium Women EDP 90ml - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2024/07/yves-saint-laurent-black-opium-90ml-model-1-jpg-1720760158-12072024115558.jpg\" style=\"width:1000px\" /></p>\r\n\r\n<p><em>Yves Saint Laurent Black Opium Women EDP phừ hợp với nhiều dịp</em></p>\r\n', '1732890185_nchoa2.png', 1);
INSERT INTO `product` (`product_id`, `product_name`, `product_category`, `product_brand`, `capacity_id`, `product_quantity`, `quantity_sales`, `product_price_import`, `product_price`, `product_sale`, `product_description`, `product_image`, `product_status`) VALUES
(11, 'Nước Hoa Nam Dior Sauvage EDP 100ml', 1, 3, 10, 7, 3, 2400000, 2990000, 15, '<p><strong>Dior Sauvage Eau de Parfum</strong>&nbsp;(EDP) 100ml l&agrave; một trong những sản phẩm nước hoa nam được y&ecirc;u th&iacute;ch nhất của Dior, mang đến hương thơm mạnh mẽ v&agrave; cuốn h&uacute;t.&nbsp;</p>\r\n\r\n<p><strong>Lịch sử h&igrave;nh th&agrave;nh</strong></p>\r\n\r\n<p>Được lấy &yacute; tưởng từ thi&ecirc;n nhi&ecirc;n, kh&ocirc;ng gian mở, bầu trời xanh, những ngọn n&uacute;i đ&aacute; v&agrave; &aacute;nh nắng sa mạc, chai Dior Sauvage EDP ra mắt 2018,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fran%C3%A7ois_Demachy\" target=\"_blank\">chuy&ecirc;n gia Francois Demachy</a>&nbsp;l&agrave; người đ&atilde; tạo ra sản phẩm n&agrave;y v&agrave; n&acirc;ng tầm cho d&ograve;ng nước hoa của&nbsp;<a href=\"https://vuahanghieu.com/dior\">h&atilde;ng Dior</a>.&nbsp;</p>\r\n\r\n<p>Dior Sauvage Eau de parfum&nbsp;được nhiều người biết biết đến l&agrave; phi&ecirc;n bản tiếp nối th&agrave;nh c&ocirc;ng vang dội của năm 2015 trước đ&oacute;. Nước hoa Sauvage Eau de parfum năm 2018 n&agrave;y được tạo t&aacute;c dựa tr&ecirc;n &yacute; tưởng mang đến cho nam giới một phong c&aacute;ch hương Nam t&iacute;nh, mạnh mẽ, l&ocirc;i cuốn.</p>\r\n\r\n<p><img alt=\"Nước Hoa Nam Dior Sauvage EDP 100ml - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2024/06/dior-sauvage-eau-de-parfum-1-1-jpg-1719217865-24062024153105.jpg\" style=\"width:1000px\" /></p>\r\n\r\n<p><em><a href=\"https://vuahanghieu.com/dior/nuoc-hoa\">Nước Hoa Dior</a>&nbsp;Sauvage EDP ra đời d&agrave;nh ri&ecirc;ng cho c&aacute;c qu&yacute; &ocirc;ng lịch l&atilde;m</em></p>\r\n\r\n<p>Nếu bạn đ&atilde; từng thử qua phi&ecirc;n bản năm 2015, th&igrave; c&oacute; lẽ sẽ rất ấn tượng với hương vị độc đ&aacute;o m&agrave; n&oacute; được tạo th&agrave;nh.</p>\r\n\r\n<p>Phi&ecirc;n bản&nbsp;nước hoa&nbsp;Dior Sauvage Eau de parfum&nbsp;vẫn tạo được sự th&agrave;nh c&ocirc;ng bởi việc vận dụng hương vị của bản gốc nhưng c&oacute; phần t&ocirc; điểm th&ecirc;m một v&agrave;i yếu tố khiến n&oacute; trở n&ecirc;n ho&agrave;n hảo hơn. Ch&iacute;nh v&igrave; thế kể từ khi&nbsp;<a href=\"https://vuahanghieu.com/dior\">h&atilde;ng Dior</a>&nbsp;ra mắt sản phẩm n&agrave;y rất được nhiều người đ&oacute;n tiếp v&agrave; đưa ra phản hồi t&iacute;ch cực.</p>\r\n\r\n<p><strong>Thiết kế Dior Sauvage EDP</strong></p>\r\n\r\n<p>Chai nước hoa Dior Sauvage EDP được thiết kế với vẻ ngo&agrave;i sang trọng v&agrave; hiện đại. Chất liệu thủy tinh đen b&oacute;ng c&ugrave;ng nắp chai nam ch&acirc;m chắc chắn, tạo n&ecirc;n sự mạnh mẽ v&agrave; tinh tế. Thiết kế n&agrave;y kh&ocirc;ng chỉ l&agrave;m nổi bật đẳng cấp của người d&ugrave;ng m&agrave; c&ograve;n rất tiện lợi khi sử dụng.</p>\r\n\r\n<p><img alt=\"Nước Hoa Nam Dior Sauvage EDP 100ml - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2024/06/dien-mao-ben-ngoai-cua-dior-sauvage-nhu-mot-quy-ong-lich-lam-1-webp-1719217677-24062024152757.webp\" style=\"width:1000px\" /></p>\r\n\r\n<p><em>Dior Sauvage EDP thiết kế sang trọng v&agrave; hiện đại</em></p>\r\n\r\n<p><strong>M&ugrave;i hương Dior Sauvage EDP</strong></p>\r\n\r\n<p>Dior Sauvage EDP sở hữu hương thơm độc đ&aacute;o v&agrave; mạnh mẽ, với ba tầng hương đặc trưng. Tầng hương đầu l&agrave; sự kết hợp của cam bergamot v&agrave; ti&ecirc;u, mang lại cảm gi&aacute;c tươi m&aacute;t v&agrave; sảng kho&aacute;i. Tầng hương giữa gồm nhựa elemi, hoa oải hương v&agrave; hổ ph&aacute;ch, tạo n&ecirc;n một lớp hương nồng n&agrave;n v&agrave; b&iacute; ẩn. Cuối c&ugrave;ng, tầng hương cuối với gỗ tuyết t&ugrave;ng v&agrave; nhựa labdanum mang đến sự ấm &aacute;p v&agrave; s&acirc;u lắng. Sự kết hợp ho&agrave;n hảo n&agrave;y gi&uacute;p Dior Sauvage EDP trở n&ecirc;n kh&aacute;c biệt v&agrave; thu h&uacute;t.</p>\r\n\r\n<p><img alt=\"Nước Hoa Nam Dior Sauvage EDP 100ml - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2020/03/sauvage-edp-jpg-1584515109-18032020140509.jpg\" style=\"width:1000px\" /></p>\r\n\r\n<p><em>M&ugrave;i hương nước hoa Dior Sauvage EDP Nam Ngọt Ng&agrave;o, B&iacute; ẩn</em></p>\r\n\r\n<p>Mỗi&nbsp;<a href=\"https://vuahanghieu.com/nuoc-hoa\">chai nước hoa đẳng cấp</a>&nbsp;từ Dior rất ph&ugrave; hợp với những ai y&ecirc;u hương thơm tự nhi&ecirc;n, ấm &aacute;p.</p>\r\n\r\n<p><strong>T&iacute;nh Đa Dụng</strong></p>\r\n\r\n<p>Dior Sauvage EDP th&iacute;ch hợp cho nhiều dịp kh&aacute;c nhau, từ c&ocirc;ng sở đến c&aacute;c buổi tiệc tối. Hương thơm bền l&acirc;u v&agrave; kh&ocirc;ng qu&aacute; nồng, gi&uacute;p người d&ugrave;ng tự tin v&agrave; thoải m&aacute;i suốt cả ng&agrave;y. Sản phẩm n&agrave;y l&agrave; lựa chọn l&yacute; tưởng cho những ai y&ecirc;u th&iacute;ch sự mạnh mẽ v&agrave; nam t&iacute;nh.</p>\r\n\r\n<p><strong>Lợi &Iacute;ch Khi Sử Dụng</strong></p>\r\n\r\n<p>Sử dụng Dior Sauvage EDP kh&ocirc;ng chỉ gi&uacute;p bạn tự tin hơn m&agrave; c&ograve;n để lại ấn tượng mạnh mẽ cho người xung quanh. Với sự kết hợp của c&aacute;c tầng hương từ cam bergamot, ti&ecirc;u, nhựa elemi, hoa oải hương, hổ ph&aacute;ch, gỗ tuyết t&ugrave;ng v&agrave; nhựa labdanum, sản phẩm mang lại cảm gi&aacute;c ấm &aacute;p, cuốn h&uacute;t v&agrave; đầy b&iacute; ẩn. Dior Sauvage EDP chắc chắn sẽ l&agrave; một lựa chọn tuyệt vời cho ph&aacute;i mạnh.</p>\r\n\r\n<p><img alt=\"Nước Hoa Nam Dior Sauvage EDP 100ml - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2020/05/nuoc-hoa-dior-sauvage-10ml-do-luu-huong-jpg-1589427419-14052020103659.jpg\" style=\"width:1000px\" /></p>\r\n\r\n<p><em>Dior Sauvage mang lại ấn tượng mạnh mẽ cho người xung quanh</em></p>\r\n\r\n<p>Song song đ&oacute;, độ tỏa hương được c&aacute;c chuy&ecirc;n gia đ&aacute;nh gi&aacute; l&agrave; rất xa trong phạm vi 2m, rất th&iacute;ch hợp kh&ocirc;ng gian ngo&agrave;i trời, ph&oacute;ng kho&aacute;ng v&agrave; tự do.</p>\r\n\r\n<p>-&nbsp;<em>Hương đầu</em>: cam Bergamot</p>\r\n\r\n<p>-&nbsp;<em>Hương giữa</em>: hoa oải hương, ti&ecirc;u Tứ Xuy&ecirc;n, đại hồi, hạt nhục đậu khấu</p>\r\n\r\n<p>-&nbsp;<em>Hương cuối</em>: nhựa Ambroxan, vanilla</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Review Dior Sauvage</strong></p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng sau khi sử dụng chai Dior Sauvage mua tại V.ua H&agrave;ng Hiệu đ&atilde; để lại phản hồi:<br />\r\n<br />\r\n&quot;<em>T&ocirc;i đ&atilde; sử dụng nước hoa Dior Sauvage EDP trong một thời gian d&agrave;i v&agrave; t&ocirc;i thật sự cảm thấy rất h&agrave;i l&ograve;ng về sản phẩm n&agrave;y. Đ&acirc;y l&agrave; một trong những m&ugrave;i hương tuyệt vời m&agrave; t&ocirc;i từng trải nghiệm.</em></p>\r\n\r\n<p><em>M&ugrave;i hương của Dior Sauvage EDP rất nam t&iacute;nh, mạnh mẽ v&agrave; tr&agrave;n đầy sức sống. Sự kết hợp ho&agrave;n hảo giữa hương cam Bergamot, ti&ecirc;u đen v&agrave; gỗ Đ&agrave;n Hương mang đến cảm gi&aacute;c tươi m&aacute;t v&agrave; năng động cho người d&ugrave;ng. Điều n&agrave;y khiến t&ocirc;i cảm thấy tự tin v&agrave; quyến rũ khi sử dụng sản phẩm n&agrave;y.</em></p>\r\n\r\n<p><em>Hơn nữa, nước hoa Dior Sauvage EDP c&ograve;n gi&uacute;p cho m&ugrave;i hương được giữ l&acirc;u hơn so với nhiều sản phẩm nước hoa kh&aacute;c. T&ocirc;i thường sử dụng sản phẩm n&agrave;y v&agrave;o buổi s&aacute;ng v&agrave; m&ugrave;i hương của n&oacute; vẫn c&ograve;n thơm m&aacute;t đến chiều tối.&nbsp;</em><em>B&ecirc;n cạnh đ&oacute;, sản phẩm n&agrave;y cũng được thiết kế sang trọng, mang lại cảm gi&aacute;c thượng lưu khi sử dụng.</em>&quot;</p>\r\n', '1732890414_nchoa3.png', 1),
(12, 'Nước Hoa Nam Yves Saint Laurent YSL Y Eau De Parfum 100ml', 1, 7, 10, 10, 0, 2500000, 3500000, 10, '<p><strong><a href=\"https://vuahanghieu.com/ysl/nuoc-hoa\">Nước Hoa YSL</a>&nbsp;Yves Saint Laurent Y Eau De Parfum 200ml&nbsp;</strong>l&agrave; d&ograve;ng&nbsp;<a href=\"https://vuahanghieu.com/nuoc-hoa/nam\">nước hoa nam lịch l&atilde;m</a>&nbsp;đến từ thương hiệu YSL nổi tiếng của Ph&aacute;p.&nbsp;<strong>YSL&nbsp;</strong><strong>Yves Saint Laurent Y EDP</strong>&nbsp;mang hương thơm hội tụ đầy đủ sự nam t&iacute;nh, mạnh mẽ theo hướng đơn giản, lịch sự v&agrave; chỉnh chu.&nbsp;</p>\r\n\r\n<h2><strong>Lịch sử Nước Hoa Nam YSL Yves Saint Laurent Y EDP&nbsp;</strong></h2>\r\n\r\n<p>Thương hiệu đ&igrave;nh đ&aacute;m&nbsp;<a href=\"https://vuahanghieu.com/ysl\">Yves Saint Laurent</a>&nbsp;tiếp tục cho ra mắt phi&ecirc;n bản&nbsp;<strong>YSL Y Eau De Parfum</strong>&nbsp;v&agrave;o th&aacute;ng 11 năm 2018, sau th&agrave;nh c&ocirc;ng của phi&ecirc;n bản tiền nhiệm Y&nbsp;<a href=\"https://vuahanghieu.com/nuoc-hoa/eau-de-toilette-edt\">Eau de Toilette</a>.</p>\r\n\r\n<p><img alt=\"Nước Hoa Nam Yves Saint Laurent YSL Y Eau De Parfum 200ml - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2023/11/nuoc-hoa-nam-yves-saint-laurent-ysl-y-eau-de-parfum-200ml-5-jpg-1699860177-13112023142257.jpg\" /></p>\r\n\r\n<p>&nbsp;Nước hoa Y Eau de Parfum sẽ l&agrave; tổng h&ograve;a c&aacute;c hương vị nồng n&agrave;n của cam gừng, quyến rũ của gỗ, tươi m&aacute;t của t&aacute;o xanh v&agrave; s&acirc;u lắng của hương gia vị. C&aacute;c th&agrave;nh phần ch&iacute;nh gồm cam Bergamot, gừng, quả b&aacute;ch x&ugrave;, cỏ hương b&agrave;i, gỗ tuyết t&ugrave;ng, v&agrave; đặc biệt l&agrave; trầm hương, hứa hẹn Y Eau De Parfum sẽ l&agrave; m&ugrave;i hương m&agrave; c&aacute;c ch&agrave;ng n&ecirc;n sở hữu.</p>\r\n\r\n<p><img alt=\"Nước Hoa Nam Yves Saint Laurent YSL Y Eau De Parfum 200ml - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2023/11/nuoc-hoa-nam-yves-saint-laurent-ysl-y-eau-de-parfum-200ml-4-jpg-1699860185-13112023142305.jpg\" /></p>\r\n\r\n<h2><strong>Thiết kế chai Nước Hoa Yves Saint Laurent Y Eau de Parfum đẳng cấp, kh&aacute;c biệt</strong></h2>\r\n\r\n<p><a href=\"https://vuahanghieu.com/nuoc-hoa-nam-yves-saint-laurent-y-eau-de-parfum-60ml-ph031012\"><strong>Nước Hoa Yves Saint Laurent Y EDP 200ml&nbsp;</strong></a>được thiết kế chai h&igrave;nh trụ vu&ocirc;ng nổi bật với nắp chai nước hoa đen sang trọng đầy b&iacute; ẩn tạo n&ecirc;n sự đẳng cấp, kh&aacute;c biệt. H&igrave;nh d&aacute;ng&nbsp;<a href=\"https://vuahanghieu.com/nuoc-hoa\">chai nước hoa sang trọng</a>&nbsp;như muốn nhấn mạnh l&ecirc;n sự b&iacute; ẩn của n&oacute;.</p>\r\n\r\n<p>Chữ k&yacute; Y được lấy cảm hứng từ kiểu d&aacute;ng &quot;&aacute;o ph&ocirc;ng trắng v&agrave; &aacute;o kho&aacute;c đen&quot; nam t&iacute;nh, mạnh mẽ v&agrave; cuốn h&uacute;t mang t&iacute;nh biểu tượng của Yves Saint Laurent, chữ Y m&agrave;u trắng nổi bật cắt xuy&ecirc;n qua th&acirc;n chai c&oacute; vai vu&ocirc;ng nằm ngang tr&ecirc;n chất liệu thủy tinh sang trọng.&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Hoa Nam Yves Saint Laurent YSL Y Eau De Parfum 200ml - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2023/11/nuoc-hoa-nam-yves-saint-laurent-ysl-y-eau-de-parfum-200ml-3-jpg-1699860193-13112023142313.jpg\" /></p>\r\n\r\n<p>Sở hữu thiết kế chai thon, gọn, chai thuỷ tinh kết hợp c&ugrave;ng m&agrave;u xanh của nước hoa trong chai tạo cảm gi&aacute;c b&iacute; ẩn v&agrave; cuốn h&uacute;t lạ thường cho bất cứ ai nh&igrave;n thấy&nbsp;<strong>YSL Y Eau de Parfum</strong>.</p>\r\n\r\n<h2><strong>M&ugrave;i hương Nước Hoa Yves Saint Laurent Y Eau de Parfum</strong></h2>\r\n\r\n<p><strong>Nước Hoa YSL Yves Saint Laurent Y EDP&nbsp;</strong>mang hương thơm v&ocirc; c&ugrave;ng tinh tế m&agrave; bạn kh&ocirc;ng thể ngờ tới, tươi mới như tr&aacute;i t&aacute;o xanh ng&acirc;m trong d&ograve;ng nước m&aacute;t lạnh, những cay nồng m&ugrave;i vị của gừng l&agrave;m cho hương thơm ấn tượng, thanh hơn, tinh tế hơn. Một cảm x&uacute;c lẫn lộn v&agrave; đầy sự th&uacute; vị, Y sẽ lắng xuống sau 10 ph&uacute;t v&agrave; gấy ấn tượng mạnh bởi c&acirc;y x&ocirc; thơm quyện lẫn một &iacute;t quả b&aacute;ch x&ugrave;, đ&acirc;y ch&iacute;nh l&agrave; m&ugrave;i hương khiến nhiều người lầm tưởng tới Dylan Blue. V&agrave; rồi hương cuối l&agrave; sự nổi bật của vị ngọt ng&agrave;o đến từ đậu Tonka khi xuất hiện c&ugrave;ng hương gỗ Tuyết T&ugrave;ng, l&agrave;m đậm th&ecirc;m phần nam t&iacute;nh v&agrave; ấm &aacute;p trong m&ugrave;i hương YSL Y EDP.</p>\r\n\r\n<p><strong>Hương đặc trưng:&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Hương đầu</strong>: Cam Bergamot, Gừng, Quả t&aacute;o xanh.</li>\r\n	<li><strong>Hương giữa</strong>: C&acirc;y x&ocirc; thơm, Quả b&aacute;ch x&ugrave;, Hoa phong lữ.</li>\r\n	<li><strong>Hương cuối</strong>: Gỗ tuyết t&ugrave;ng, Đậu Tonka.</li>\r\n	<li>\r\n	<p><img alt=\"Nước Hoa Nam Yves Saint Laurent YSL Y Eau De Parfum 200ml - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2023/11/nuoc-hoa-nam-yves-saint-laurent-ysl-y-eau-de-parfum-200ml-2-jpg-1699860220-13112023142340.jpg\" /></p>\r\n\r\n	<p><strong>YSL Y Eau de Parfum</strong>&nbsp;l&agrave; một hương thơm độc đ&aacute;o cực sang, lạ v&agrave; rất nam t&iacute;nh cho c&aacute;c anh đang t&igrave;m kiếm 1 m&ugrave;i hương mới lạ, kh&aacute;c biệt khi đang bị nh&agrave;m ch&aacute;n giữa 1 rừng c&aacute;c m&ugrave;i cũ.&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', '1732890526_nchoa4.png', 1),
(13, 'Nước Hoa Nam Armaf Club De Nuit Intense Limited', 1, 4, 10, 17, 3, 1500000, 1690000, 5, '<p><strong>Nước Hoa Nam Armaf Club De Nuit Intense Limited For Men Parfume EDP 105ml</strong>&nbsp;l&agrave; chai&nbsp;<a href=\"https://vuahanghieu.com/nuoc-hoa/nam\">nước hoa nam cao cấp</a>&nbsp;một m&ugrave;i hương đến từ Armaf. Với phi&ecirc;n bản đặc biệt giới hạn&nbsp;<strong>Club De Nuit Intense Man</strong>&nbsp;n&agrave;y cảm gi&aacute;c chua của m&ugrave;i chanh cam khi lần đầu xịt kh&ocirc;ng c&ograve;n nữa m&agrave; th&acirc;y v&agrave;o đ&oacute; l&agrave; nhiều hương dứa hơn tạo n&ecirc;n m&ugrave;i hương được mềm mại hơn.</p>\r\n\r\n<h2><strong>Lịch sử nước hoa Armaf Club De Nuit Intense Limited For Men Parfume&nbsp;</strong></h2>\r\n\r\n<p>Sau sự th&agrave;nh c&ocirc;ng của Club De Nuit Intense ra mắt năm 2015, v&agrave;o năm 2019&nbsp;<a href=\"https://vuahanghieu.com/armaf\">thương hiệu Armaf</a>&nbsp;đ&atilde; cho ra mắt phi&ecirc;n bản đặc biệt giới hạn của sản phẩm n&agrave;y C<strong>lub De Nuit Intense Man Limited Edition EDP</strong>&nbsp;với hương thơm đậm đ&agrave; hơn với&nbsp;<a href=\"https://vuahanghieu.com/nuoc-hoa/eau-de-parfum\">nồng độ EDP</a>&nbsp;so với phi&ecirc;n bản EDT trước.</p>\r\n\r\n<p><img alt=\"Nước Hoa Nam Armaf Club De Nuit Intense Limited For Men Parfume 105ml - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2023/08/nuoc-hoa-nam-armaf-club-de-nuit-intense-limited-for-men-parfume-5-jpg-1692584119-21082023091519.jpg\" /></p>\r\n\r\n<h2><strong>Thiết kế chai nước hoa Armaf Club De Nuit Intense Limited For Men Parfume Limited 105ml</strong></h2>\r\n\r\n<p>Về thiết kế hộp của bản&nbsp;<a href=\"https://vuahanghieu.com/nuoc-hoa-nam-armaf-club-de-nuit-intense-for-men-parfume-limited-edp105ml-ph028633\"><strong>Nước Hoa Armaf Club De Nuit Intense Limited For Men Parfume 105ml</strong></a>&nbsp;cũng đặc biệt đẹp v&agrave; sang trọng hơn với thiết kế nơ viền. B&ecirc;n trong l&agrave; hộp cứng phủ nhung sang trọng v&agrave; c&oacute; k&egrave;m thư cảm ơn đặc biệt từ nh&agrave; sản xuất.</p>\r\n\r\n<h2><strong>M&ugrave;i hương nước hoa Armaf Club De Nuit Intense Limited For Men Parfume&nbsp;</strong></h2>\r\n\r\n<p>Với chai&nbsp;<a href=\"https://vuahanghieu.com/armaf/nuoc-hoa\">nước hoa Armaf</a>&nbsp;phi&ecirc;n bản đặc biệt n&agrave;y cảm gi&aacute;c chua của m&ugrave;i chanh cam khi lần đầu xịt kh&ocirc;ng c&ograve;n nữa m&agrave; th&acirc;y v&agrave;o đ&oacute; l&agrave; nhiều hương dứa hơn tạo n&ecirc;n m&ugrave;i hương được mềm mại hơn. Hương gỗ cũng được đẩy l&ecirc;n cao hơn bản thường tạo sự k&eacute;o d&agrave;i hương thơm cho cả ng&agrave;y.</p>\r\n\r\n<p><img alt=\"Nước Hoa Nam Armaf Club De Nuit Intense Limited For Men Parfume 105ml - Nước hoa - Vua Hàng Hiệu\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2023/08/nuoc-hoa-nam-armaf-club-de-nuit-intense-limited-for-men-parfume-3-jpg-1692584145-21082023091545.jpg\" /></p>\r\n\r\n<p><strong>M&ugrave;i hương đặc trưng:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Hương đầu:</strong>&nbsp;Dứa, nho đen, t&aacute;o, cam bergamot.</li>\r\n	<li><strong>Hương giữa:</strong>&nbsp;Hoa hồng, hoa nh&agrave;i, bạch dương.</li>\r\n	<li><strong>Hương cuối:</strong>&nbsp;Vanilla, long di&ecirc;n hương, hoắc hương, xạ hương.</li>\r\n</ul>\r\n', '1732891076_nchoa5.png', 1),
(14, 'Nước Tẩy Trang Cho Da Dầu Mụn Micellar Water Garnier 400Ml', 6, 2, 10, 17, 3, 90000, 155000, 0, '<p>- Nước Tẩy Trang Garnier Micellar Cleansing Water l&agrave; d&ograve;ng sản phẩm tẩy trang nổi tiếng đến từ thương hiệu Garnier của Ph&aacute;p, sử dụng c&ocirc;ng nghệ Micelles (Micellar Technology) c&oacute; chứa c&aacute;c ph&acirc;n tử mi-xen hoạt động theo cơ chế nam ch&acirc;m gi&uacute;p nhẹ nh&agrave;ng l&agrave;m sạch da v&agrave; lấy đi bụi bẩn, cặn trang điểm v&agrave; dầu thừa s&acirc;u b&ecirc;n trong lỗ ch&acirc;n l&ocirc;ng m&agrave; kh&ocirc;ng g&acirc;y kh&ocirc; da</p>\r\n\r\n<p>- Nước L&agrave;m Sạch V&agrave; Tẩy Trang Cho Da Dầu Mụn Micellar Water GARNIER 400Ml l&agrave; d&ograve;ng sản phẩm nước l&agrave;m sạch v&agrave; tẩy trang đa năng được thiết kế chuy&ecirc;n biệt d&agrave;nh cho da dầu &amp; mụn, gi&uacute;p l&agrave;m sạch hiệu quả m&agrave; kh&ocirc;ng g&acirc;y k&iacute;ch ứng hay tổn thương cho l&agrave;n da của bạn. Với c&ocirc;ng dụng chăm s&oacute;c da 3 trong 1, bạn c&oacute; thể sử dụng Garnier Micellar Water như một sản phẩm l&agrave;m sạch da, toner hoặc tẩy trang. Sản phẩm d&ugrave;ng được cho da mặt, mắt &amp; m&ocirc;i<br />\r\n- C&ocirc;ng thức chứa c&aacute;c ph&acirc;n tử mi-xen hoạt động như một thỏi nam ch&acirc;m tự động gi&uacute;p h&uacute;t sạch cặn trang điểm, bụi bẩn v&agrave; dầu thừa hiệu quả m&agrave; kh&ocirc;ng cần ch&agrave; x&aacute;t mạnh, kh&ocirc;ng cần rửa lại với nước. L&agrave;n da sau khi được l&agrave;m sạch trở n&ecirc;n tho&aacute;ng nhẹ, tươi m&aacute;t, kh&ocirc;ng hề nhờn d&iacute;nh m&agrave; vẫn duy tr&igrave; được độ ẩm tự nhi&ecirc;n, kh&ocirc;ng g&acirc;y k&iacute;ch ứng da</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C&Ocirc;NG DỤNG CH&Iacute;NH&nbsp;&ndash; MAIN FUNCTION</strong>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Sử dụng c&ocirc;ng nghệ Micelles (Micellar Technology) - ph&acirc;n tử Micelles lấy đi bụi bẩn s&acirc;u b&ecirc;n trong lỗ ch&acirc;n l&ocirc;ng theo cơ chế hoạt động của nam ch&acirc;m khi lau nhẹ tr&ecirc;n da m&agrave; kh&ocirc;ng cần ch&agrave; x&aacute;t<br />\r\n- L&agrave;m sạch s&acirc;u da v&agrave; loại bỏ dầu thừa hiệu quả - một trong những nguy&ecirc;n nh&acirc;n g&acirc;y n&ecirc;n t&igrave;nh trạng mụn, gi&uacute;p lỗ ch&acirc;n l&ocirc;ng th&ocirc;ng tho&aacute;ng, giảm thiểu b&iacute;t tắc<br />\r\n- Kh&ocirc;ng chứa hương liệu, kh&ocirc;ng g&acirc;y k&iacute;ch ứng da<br />\r\n- Kết cấu lỏng nhẹ, tươi m&aacute;t, kh&ocirc;ng bết d&iacute;nh, kh&ocirc;ng cần rửa lại với nước</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C&Aacute;CH D&Ugrave;NG &ndash; DIRECTION FOR USE</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Lắc đều, thấm một lượng vừa đủ ra b&ocirc;ng tẩy trang<br />\r\n- Lau nhẹ tr&ecirc;n da mặt, v&ugrave;ng da quanh mắt v&agrave; m&ocirc;i theo hướng xoay tr&ograve;n (kh&ocirc;ng ch&agrave; x&aacute;t da), kh&ocirc;ng cần rửa lại với nước<br />\r\n- N&ecirc;n d&ugrave;ng hằng ng&agrave;y ngay cả khi kh&ocirc;ng trang điểm<br />\r\n- Liều lượng: 1 lần sử dụng khoảng 2ml</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&agrave;nh phần:</strong>&nbsp;Aqua/Water, Hexylene, Glycol, Glycerin, Alcohol Denat, Disodium Cocoamphodiacetate, Disodium Edta, Poloxamer 184, Polyaminopropyl Biguanide (B166370/1)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Quy&nbsp;c&aacute;ch:</strong>&nbsp;Chai, 400Ml</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảo quản:</strong>&nbsp;Bảo quản nơi tho&aacute;ng m&aacute;t, tr&aacute;nh tiếp x&uacute;c trực tiếp với &aacute;nh s&aacute;ng mặt trời</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Ph&aacute;p</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>HSD:</strong>&nbsp;Xem tr&ecirc;n bao b&igrave; sản phẩm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>---</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN TH&Ecirc;M - ADDITIONAL INFORMATION</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Để biết th&ecirc;m th&ocirc;ng tin chi tiết về sản phẩm hoặc chương tr&igrave;nh khuyến m&atilde;i Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng li&ecirc;n hệ bộ phận CSKH qua Hotline 19004449 hoặc fanpage&nbsp;https://www.facebook.com/guardianvn&nbsp;để được hỗ trợ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Nếu qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; nhu cầu xuất h&oacute;a đơn, vui l&ograve;ng điền th&ocirc;ng tin xuất h&oacute;a đơn v&agrave;o mục Ghi ch&uacute; đơn h&agrave;ng, Bộ phận CSKH sẽ gửi h&oacute;a đơn điện tử v&agrave;o email Qu&yacute; Kh&aacute;ch h&agrave;ng đ&atilde; đăng k&yacute; với Guardian</p>\r\n', '1732891193_taytrang.png', 1),
(15, 'Bảng Phấn Mắt 9 Ô Màu Có Highlight', 4, 6, 11, 0, 0, 300000, 442000, 0, '<h3><strong>Bảng Phấn Mắt 9 &Ocirc; M&agrave;u C&oacute; Highlight Black Rouge Colordation Mood Palette - Weather Zip</strong></h3>\r\n\r\n<p>&quot;Vẻ đẹp tự nhi&ecirc;n đọng lại tr&ecirc;n &aacute;nh mắt&quot;</p>\r\n\r\n<p>Bảng phấn mắt 𝐂𝐨𝐥𝐨𝐫𝐝𝐚𝐭𝐢𝐨𝐧 𝐌𝐨𝐨𝐝 𝐏𝐚𝐥𝐞𝐭𝐭𝐞 - 𝐖𝐞𝐚𝐭𝐡𝐞𝐫 𝐳𝐢𝐩 mới của Black Rouge tựa như một t&aacute;c phẩm nghệ thuật về thời tiết được thu nhỏ lại trong 9 &ocirc; sắc m&agrave;u.</p>\r\n\r\n<p>Mỗi bảng m&agrave;u ẩn chứa một c&acirc;u chuyện được kể th&ocirc;ng qua từng biến chuyển m&agrave;u sắc. Colordation Mood Palette - Weather zip kh&ocirc;ng chỉ t&ocirc; điểm vẻ đẹp tự nhi&ecirc;n m&agrave; c&ograve;n thổi hồn v&agrave;o những phong c&aacute;ch trang điểm đầy s&aacute;ng tạo của bạn.&nbsp;</p>\r\n\r\n<p><img src=\"https://cf.shopee.vn/file/vn-11134208-7ras8-m0v10u7mnmhb1c\" style=\"height:1681px; width:900px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cf.shopee.vn/file/vn-11134208-7ras8-m0v1charetwt84\" style=\"height:1920px; width:1080px\" />&nbsp;<img src=\"https://cf.shopee.vn/file/vn-11134208-7ras8-m0v1charg8h928\" style=\"height:1920px; width:1080px\" /></p>\r\n', '1733128785_phanmat.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vnpay`
--

CREATE TABLE `vnpay` (
  `vnp_id` int NOT NULL,
  `vnp_amount` varchar(50) NOT NULL,
  `vnp_bankcode` varchar(50) NOT NULL,
  `vnp_banktranno` varchar(50) NOT NULL,
  `vnp_cardtype` varchar(50) NOT NULL,
  `vnp_orderinfo` varchar(100) NOT NULL,
  `vnp_paydate` varchar(50) NOT NULL,
  `vnp_tmncode` varchar(50) NOT NULL,
  `vnp_transactionno` varchar(50) NOT NULL,
  `order_code` int NOT NULL,
  `payment_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `capacity`
--
ALTER TABLE `capacity`
  ADD PRIMARY KEY (`capacity_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`collection_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `evaluate`
--
ALTER TABLE `evaluate`
  ADD PRIMARY KEY (`evaluate_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`);

--
-- Indexes for table `inventory_detail`
--
ALTER TABLE `inventory_detail`
  ADD PRIMARY KEY (`inventory_detail_id`);

--
-- Indexes for table `metrics`
--
ALTER TABLE `metrics`
  ADD PRIMARY KEY (`metric_id`);

--
-- Indexes for table `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`momo_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `vnpay`
--
ALTER TABLE `vnpay`
  ADD PRIMARY KEY (`vnp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `capacity`
--
ALTER TABLE `capacity`
  MODIFY `capacity_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `collection_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `evaluate`
--
ALTER TABLE `evaluate`
  MODIFY `evaluate_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inventory_detail`
--
ALTER TABLE `inventory_detail`
  MODIFY `inventory_detail_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `metrics`
--
ALTER TABLE `metrics`
  MODIFY `metric_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `momo`
--
ALTER TABLE `momo`
  MODIFY `momo_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vnpay`
--
ALTER TABLE `vnpay`
  MODIFY `vnp_id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

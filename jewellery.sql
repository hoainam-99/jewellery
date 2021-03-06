-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220615.97c9e3ad3b
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 16, 2022 lúc 01:16 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `jewellery`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phoneNo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `email`, `password`, `fullname`, `phoneNo`, `address`, `role_id`, `token`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '9ef9ee5a94d29fbc31c2509e1afb60e8', 'Lê Hoài Nam', '0375877699', 'Hoàng Đan, Tam Dương, Vĩnh Phúc', 1, 'f73362e26ab578aa8c5deb2649679a5c', '2022-05-30 22:17:15', '2022-06-05 10:18:10'),
(2, 'hoainam12121999@gmail.com', 'd9b11768790af31fdfc19cc17e3d5027', 'Lê Hoài Nam', '0375877699', 'Hoàng Đan, Tam Dương, Vĩnh Phúc', 2, '2894e7a8a5857407ba1a2018791b83d6', '2022-06-05 09:10:55', NULL),
(3, 'xuantruong@gmail.com', 'd9b11768790af31fdfc19cc17e3d5027', 'Lê Xuân Trường', '123456789', 'vĩnh phúc', 2, 'a089e7c617feb14804b914a997e89ded', '2022-06-15 17:59:17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `brand_name`) VALUES
(4, 'Disney|PNJ'),
(2, 'PNJ'),
(3, 'PNJ Silver'),
(1, 'Style By PNJ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(4, 'Bangle'),
(8, 'Bracelet'),
(5, 'Charm'),
(2, 'Earring'),
(6, 'Necklace'),
(1, 'Ring');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phoneNo` varchar(255) DEFAULT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `fullname`, `email`, `phoneNo`, `subject_name`, `note`, `created_at`, `status`) VALUES
(1, 'Lê Hoài Nam', 'hoainam12121999@gmail.com', '0375877699', 'test', 'test feedback oke?', '2022-06-04 10:36:31', 'read'),
(2, 'Le Hoai Nam', 'admin@gmail.com', '123', 'test', 'aaa', '2022-06-11 10:59:29', 'read');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gemstone`
--

CREATE TABLE `gemstone` (
  `id` int(11) NOT NULL,
  `gemstone_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `gemstone`
--

INSERT INTO `gemstone` (`id`, `gemstone_name`) VALUES
(4, 'Akoya Pearl'),
(2, 'Citrine'),
(7, 'CZ (xoàn mỹ)'),
(8, 'Diamond'),
(9, 'ECZ'),
(3, 'Emerald'),
(13, 'Freshwater Pearl'),
(14, 'Moon'),
(15, 'Ngọc Trai Swarovski'),
(6, 'No Gemstone'),
(12, 'Pearl'),
(1, 'Ruby'),
(5, 'Sapphire'),
(10, 'Synthetic'),
(11, 'Topaz');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `material`
--

CREATE TABLE `material` (
  `id` int(11) NOT NULL,
  `material_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `material`
--

INSERT INTO `material` (`id`, `material_name`) VALUES
(1, 'Gold'),
(2, 'Platinum'),
(3, 'Silver');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `material_detail`
--

CREATE TABLE `material_detail` (
  `id` int(11) NOT NULL,
  `material_id` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `material_detail`
--

INSERT INTO `material_detail` (`id`, `material_id`, `color`, `age`) VALUES
(3, 1, 'White Gold', '10K'),
(5, 1, 'White Gold', '18K'),
(6, 1, 'White Gold', '14K'),
(7, 2, '', ''),
(8, 3, '', ''),
(9, 1, 'Traditional color', '18K'),
(10, 1, 'Traditional Gold', '14K'),
(11, 1, 'Traditional Gold', '24K');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `size`, `price`, `quantity`) VALUES
(3, 3, 34, 12, 169.65, 1),
(4, 3, 35, 13, 385.05, 3),
(11, 6, 36, 15, 733.9, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `soft_delete` int(11) DEFAULT 0,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `title`, `description`, `thumbnail`, `price`, `gender`, `category_id`, `brand_id`, `material_id`, `created_at`, `updated_at`, `soft_delete`, `deleted_at`) VALUES
(17, 'Nhẫn Bạc STYLE By PNJ - A1', 'Không sở hữu các chi tiết đính đá rực rỡ nhưng lại khoác lên mình thiết kế độc đáo với những đường nét sáng tạo, chiếc nhẫn STYLE By PNJ sẽ cùng nàng biến hóa đầy cá tính cùng chất riêng của mình.', './public/img/product/a1-1.png', 37.25, 'Female', 1, 1, 8, '2022-06-12 10:48:04', '2022-06-14 12:33:40', 0, NULL),
(18, 'Nhẫn Bạc STYLE By PNJ  - A2', '', './public/img/product/a2-1.png', 34.75, 'Female', 1, 1, 8, '2022-06-12 10:49:31', NULL, 0, NULL),
(19, 'Nhẫn bạc đính đá STYLE By PNJ - A3', 'Hãy khám phá và để những thiết kế rực rỡ đầy màu sắc của truyền cảm hứng cho bạn kể câu chuyện mang đậm chất riêng của mình một cách đầy thú vị. Sở hữu thiết kế độc đáo với những điểm nhấn đá đầy màu sắc lấp lánh, chiếc nhẫn bạc STYLE By PNJ sẽ tôn lên vẻ đẹp cá tính và tinh tế của nàng xinh.\r\n', './public/img/product/a3-1.png', 38.25, 'Female', 1, 1, 8, '2022-06-12 10:55:51', NULL, 0, NULL),
(20, 'Nhẫn bạc đính đá PNJSilver hình trái tim - A4', 'Với kiểu dáng thời thượng cùng những viên đá đính xung quanh bề mặt chiếc nhẫn trên chất liệu bạc 92.5, PNJSilver mang đến chiếc nhẫn với vẻ đẹp trẻ trung nhưng không kém phần phá cách, giúp các cô gái trông thật nổi bật.\r\n', './public/img/product/a4-1.png', 49.75, 'Female', 1, 3, 8, '2022-06-12 10:58:08', NULL, 0, NULL),
(21, 'Nhẫn Kim Cương Vàng Trắng 18K PNJ - A5', 'Còn gì đẹp đẽ và tráng lệ hơn kim cương – loại đá quý tôn vinh vẻ đẹp hoàn hảo, thuần khiết và là biểu tượng của sự xa hoa. Sở hữu điểm nhấn kim cương cùng chất liệu vàng 18K trên thiết kế sang trọng, tạo nên vẻ ngoài đầy sự quý phái cho chiếc nhẫn Kim cương PNJ.\r\n', './public/img/product/a5-1.png', 2371.4, 'Female', 1, 2, 5, '2022-06-12 10:59:58', '2022-06-12 11:00:25', 0, NULL),
(22, 'Nhẫn Vàng 18K đính đá CZ PNJ - A6', 'Tận dụng sắc trắng lấp lánh của đá CZ cùng thiết kế đầy tính sáng tạo, PNJ mang đến chiếc nhẫn vàng 14K thanh lịch tựa như vẻ đẹp mỹ miều của những quý cô kiêu hãnh.\r\n', './public/img/product/a6-1.png', 272.15, 'Female', 1, 2, 9, '2022-06-12 11:03:10', '2022-06-12 11:03:35', 0, NULL),
(23, 'Nhẫn Vàng trắng 10K đính đá ECZ PNJ - A7', 'Nhẫn, chất liệu vàng trắng 10K, gắn đá ECZ 1 viên 5.5ly + 12 viên 1.5ly + 8 viên 1.25ly + 2 viên 1.75ly.\r\n', './public/img/product/a7-1.png', 209.1, 'Female', 1, 2, 3, '2022-06-12 11:06:05', NULL, 0, NULL),
(24, 'Nhẫn Vàng trắng Ý 18K đính đá CZ PNJ - A8', '', './public/img/product/a8-1.png', 315.05, 'Female', 1, 2, 5, '2022-06-12 11:07:47', NULL, 0, NULL),
(25, 'Nhẫn cưới Bạch Kim đính Kim cương PNJ - A9', 'Vượt qua hành trình mài giũa dưới bàn tay của các nghệ nhân, kim cương gắn liền với biểu tượng của tình yêu thủy chung, son sắt. Bên cạnh đó, với việc kết hợp chất liệu Bạch kim cùng vẻ đẹp lấp lánh và tinh khiết của kim cương, PNJ mang đến nhẫn cưới hiện đại nhưng vẫn giữ được nét truyền thống vốn có.\r\n', './public/img/product/a9-1.png', 738.45, 'Unisex', 1, 2, 7, '2022-06-12 11:11:08', NULL, 0, NULL),
(26, 'Nhẫn cưới nam Bạch kim đính Kim cương PNJ - A10', 'Với sự xuất hiện của nhiều thiết kế trang nhã, nhẫn cưới kim cương không chỉ được phái đẹp ưa chuộng mà còn được các chàng trai lựa chọn cho ngày cưới. Tận dụng ánh kim bạch kim rực rỡ cùng với sự biến tấu một cách khéo léo về kiểu dáng nam tính và những viên kim cương với 57 giác cắt chuẩn xác, nhẫn cưới kim cương PNJ trở thành tuyên ngôn tình yêu, ghi dấu bước ngoặt lớn trong đời.\r\n', './public/img/product/a10-1.png', 897.7, 'Male', 1, 2, 7, '2022-06-12 11:13:27', NULL, 0, NULL),
(27, 'Vỏ nhẫn Kim cương Bạch kim PNJ - A11', '', './public/img/product/a11-1.png', 1105.65, 'Female', 1, 2, 7, '2022-06-12 11:15:30', NULL, 0, NULL),
(28, 'Vỏ nhẫn Kim cương Bạch kim PNJ - A12', '', './public/img/product/a12-1.png', 842.6, 'Female', 1, 2, 7, '2022-06-12 11:16:51', NULL, 0, NULL),
(29, 'Nhẫn cưới Kim cương Bạch Kim PNJ - A13', 'Vượt qua hành trình mài giũa dưới bàn tay của các nghệ nhân, kim cương gắn liền với biểu tượng của tình yêu thủy chung, son sắt. Bên cạnh đó, với việc kết hợp chất liệu Bạch kim cùng vẻ đẹp lấp lánh và tinh khiết của kim cương, PNJ mang đến nhẫn cưới hiện đại nhưng vẫn giữ được nét truyền thống vốn có.\r\n', './public/img/product/a13-1.png', 721.8, 'Female', 1, 2, 7, '2022-06-12 11:19:11', NULL, 0, NULL),
(30, 'Nhẫn Bạc STYLE By PNJ DNA - A14', 'Với kiểu dáng thời thượng cùng những viên đá đính xung quanh bề mặt chiếc nhẫn trên chất liệu bạc 92.5, STYLE By PNJ mang đến chiếc nhẫn với vẻ đẹp trẻ trung nhưng không kém phần phá cách, giúp các cô gái trông thật nổi bật.\r\n', './public/img/product/a14-1.png', 32.7, 'Female', 1, 1, 8, '2022-06-12 11:21:31', NULL, 0, NULL),
(31, 'Nhẫn bạc đính đá PNJSilver The Language of Flowers - A15', 'Với kiểu dáng thời thượng cùng những viên đá đính xung quanh bề mặt chiếc nhẫn trên chất liệu bạc 92.5, PNJSilver mang đến chiếc nhẫn với vẻ đẹp trẻ trung nhưng không kém phần phá cách, giúp các cô gái trông thật nổi bật.\r\n', './public/img/product/a15-1.png', 44.75, 'Female', 1, 3, 8, '2022-06-12 11:23:18', NULL, 0, NULL),
(32, 'Nhẫn bạc đính đá Disney|PNJ Snow White & the Seven Dwarfs - A16', '', './public/img/product/a16-1.png', 29.1, 'Female', 1, 4, 8, '2022-06-12 11:26:13', '2022-06-12 11:26:39', 0, NULL),
(33, 'Nhẫn Vàng 18K đính đá CZ PNJ - A17', 'Sự sang trọng của chất liệu vàng 18K kết hợp với độ sáng lấp lánh của đá CZ đã tạo nên vẻ đẹp tinh khôi và sang trọng cho sản phẩm nhẫn PNJ. Sở hữu thiết kế có kiểu dáng tinh tế, nhẫn vàng PNJ tôn vinh nét đẹp của phụ nữ Việt, đồng thời thể hiện sự đẳng cấp và rạng rỡ cho chủ sở hữu.\r\n', './public/img/product/a17-1.png', 145.95, 'Female', 1, 2, 9, '2022-06-12 11:28:28', NULL, 0, NULL),
(34, 'Nhẫn Vàng trắng 10K đính đá ECZ PNJ - A18', 'Sở hữu kiểu dáng khá nhỏ nhắn và thiết kế khá đơn giản nhưng không kém phần tinh tế khi nhẫn PNJ đính đá ECZ được tạo điểm nhấn với những đường uốn lượn mềm mại bằng chất liệu vàng trắng 10K mang lại vẻ đẹp nhẹ nhàng, duyên dáng cho mọi bàn tay.\r\n', './public/img/product/a18-1.png', 169.65, 'Female', 1, 2, 3, '2022-06-12 11:30:13', NULL, 0, NULL),
(35, 'Nhẫn Vàng 18K đính đá CZ PNJ - A19', '', './public/img/product/a19-1.png', 385.05, 'Female', 1, 2, 9, '2022-06-12 11:34:33', NULL, 0, NULL),
(36, 'Nhẫn cưới Kim cương Bạch kim PNJ - A20', '', './public/img/product/a20-1.png', 733.9, 'Female', 1, 2, 7, '2022-06-12 11:35:45', NULL, 0, NULL),
(37, 'Lắc tay Vàng Ý 18K PNJ - C1', 'Thêm vào đó, với thiết kế tinh xảo, nàng sẽ bất ngờ khi phối với các bộ trang phục như suit công sở hay những chiếc đầm dạo phố. Với các điểm nhấn trên sản phẩm, PNJ tin rằng nàng sẽ trở nên thật sự tỏa sáng và nổi bật khi trưng diện chúng.\r\n', './public/img/product/c1-1.png', 1096.2, 'Female', 4, 2, 9, '2022-06-12 11:42:09', NULL, 0, NULL),
(38, 'Lắc tay Vàng trắng 14K đính đá Topaz PNJ - C2', 'Thiết kế được săn đón và ưa chuộng nhất hiện nay của PNJ, chiếc lắc tay vàng 14K được chăm chút đến từng chi tiết bởi những viên đá Topaz. PNJ sử dụng đá quý Topaz mang sắc xanh hy vọng cùng vàng 14K để tôn vinh nét thanh lịch của phái đẹp – một vẻ đẹp như vì tinh tú, bừng sáng cả góc trời.\r\n', './public/img/product/c2-1.png', 1484.6, 'Female', 4, 2, 6, '2022-06-12 11:50:59', '2022-06-12 11:51:23', 0, NULL),
(39, 'Lắc tay Vàng Ý 18K PNJ - C3', 'Chiếc lắc tay PNJ sở hữu sự cứng cáp của vàng Ý 18K được chế tác tinh xảo, kết hợp các chi tiết đúc, châu và khắc theo công nghệ trang sức Ý, tạo nên sự sáng bóng và sang trọng. Với thiết kế độc lạ cùng ánh kim sắc sảo, sản phẩm sẽ tôn lên vẻ đẹp của các quý cô.\r\n', './public/img/product/c3-1.png', 853.3, 'Female', 4, 2, 9, '2022-06-12 11:55:38', NULL, 0, NULL),
(40, 'Lắc tay Vàng 18K đính đá Citrine PNJ - C4', 'Đá Citrine được biết đến là viên đá tượng trưng cho sự thông thái, đem lại trí óc minh mẫn và sự thịnh vượng cho chủ nhân khi đính trên trang sức. Một chút sắc vàng từ đá Citrine cùng ánh kim vàng 18K rực rỡ, chiếc lắc nhấn nhá cho cổ tay nàng chính là món quà tự thưởng cho hành trình phát triển sự nghiệp.\r\n', './public/img/product/c4-1.png', 1354.85, 'Female', 4, 2, 9, '2022-06-12 11:57:12', NULL, 0, NULL),
(41, 'Lắc tay Vàng trắng Ý 18K PNJ - C5', 'Chiếc lắc tay PNJ sở hữu sự cứng cáp của vàng Ý 18K được chế tác tinh xảo, kết hợp các chi tiết đúc, châu và khắc theo công nghệ trang sức Ý, tạo nên sự sáng bóng và sang trọng. Với thiết kế độc lạ cùng ánh kim sắc sảo, sản phẩm sẽ tôn lên vẻ đẹp của các quý cô.\r\n', './public/img/product/c5-1.png', 714.3, 'Female', 4, 2, 5, '2022-06-12 11:59:20', NULL, 0, NULL),
(42, 'Lắc tay Vàng 18K PNJ - C6', 'Chiếc lắc tay PNJ sở hữu sự cứng cáp của vàng 18K được chế tác tinh xảo, kết hợp các chi tiết bông hoa tinh xảo, tạo nên sự quý phái và sang trọng. Với thiết kế độc lạ cùng ánh kim sắc sảo, sản phẩm sẽ tôn lên vẻ đẹp của các quý cô.\r\n', './public/img/product/c6-1.png', 877.5, 'Female', 4, 2, 9, '2022-06-12 12:00:41', NULL, 0, NULL),
(43, 'Lắc tay Vàng Ý 18K PNJ - C7', 'Chiếc lắc tay PNJ sở hữu sự cứng cáp của vàng Ý 18K được chế tác tinh xảo, kết hợp các chi tiết đúc, châu và khắc theo công nghệ trang sức Ý, tạo nên sự sáng bóng và sang trọng. Với thiết kế độc lạ cùng ánh kim sắc sảo, sản phẩm sẽ tôn lên vẻ đẹp của các quý cô.\r\n', './public/img/product/c7-1.png', 634.5, 'Female', 4, 2, 9, '2022-06-12 12:02:04', NULL, 0, NULL),
(44, 'Lắc tay Vàng 14K đính ngọc trai Freshwater PNJ - C8', 'Những món trang sức ngọc trai PNJ như mề đay PNJ đính ngọc trai, nhẫn PNJ đính ngọc trai, dây cổ PNJ đính ngọc trai,… sẽ là món quà ý nghĩa và tuyệt vời nhất dành tặng cho những người phụ nữ bạn thương yêu.\r\n', './public/img/product/c8-1.png', 364.5, 'Female', 4, 2, 10, '2022-06-12 12:04:05', '2022-06-12 12:06:59', 0, NULL),
(45, 'Lắc tay Vàng 18K đính đá Ruby PNJ - C9', 'PNJ Shopping Online sẽ lấy sản phẩm với giá bán thực tế tại cửa hàng tương ứng trọng lượng vàng cụ thể báo lại cho khách hàng và hưởng chính sách ưu đãi trên online.\r\n', './public/img/product/c9-1.png', 1316.25, 'Female', 4, 2, 9, '2022-06-12 12:06:03', NULL, 0, NULL),
(46, 'Lắc tay bạc đính đá PNJSilver - C10', '', './public/img/product/c10-1.png', 44.25, 'Female', 4, 3, 8, '2022-06-12 12:08:06', '2022-06-12 12:08:43', 0, NULL),
(47, 'Lắc tay Bạc PNJSilver - C11', '', './public/img/product/c11-1.png', 57.25, 'Female', 4, 3, 8, '2022-06-12 12:10:07', NULL, 0, NULL),
(48, 'Lắc tay Bạc Ý PNJSilver - C12', 'Chiếc lắc tay từ PNJSilver được chế tác từ bạc Ý mang tính ứng dụng cao kết hợp kiểu dáng phá cách. Điều này giúp sản phẩm thổi màu thời thượng và cá tính vào phong cách của các bạn trẻ. Cũng vì tính ứng dụng cao mà hiện nay, bạc Ý đang được đông đảo chị em ưa chuộng.\r\n', './public/img/product/c12-1.png', 82.25, 'Female', 4, 3, 8, '2022-06-12 13:13:30', NULL, 0, NULL),
(49, 'Lắc tay bạc đính đá Disney|PNJ Frozen - C13', 'Sở hữu kiểu dáng không quá xa lạ nhưng lại cực kỳ độc đáo, chiếc lắc tay Disney|PNJ được chế tác từ chất liệu bạc 92.5 khoác lên mình vẻ ngoài trẻ trung, phá cách và “high fashion”.\r\n', './public/img/product/c13-1.png', 59.25, 'Female', 4, 4, 8, '2022-06-12 13:15:40', NULL, 0, NULL),
(50, 'Lắc tay bạc đính đá Disney|PNJ Snow White & the Seven Dwarfs - C14', '', './public/img/product/c14-1.png', 37.25, 'Female', 4, 4, 8, '2022-06-12 13:18:07', NULL, 0, NULL),
(51, 'Lắc tay bạc đính đá Disney|PNJ Beauty & The Beas - C15', '', './public/img/product/c15-1.png', 54.75, 'Female', 4, 4, 8, '2022-06-12 13:19:28', NULL, 0, NULL),
(52, 'Lắc tay Bạch kim PNJ - C16', 'Chiếc lắc tay PNJ sở hữu sự cứng cáp của bạch kim được chế tác tinh xảo, kết hợp các chi tiết đúc châu độc đáo, tạo nên sự sáng bóng và sang trọng. Với thiết kế độc lạ cùng ánh kim sắc sảo, sản phẩm sẽ tôn lên vẻ đẹp của các quý cô.\r\n', './public/img/product/c16-1.png', 238.05, 'Female', 4, 2, 7, '2022-06-12 13:20:42', NULL, 0, NULL),
(53, 'Lắc tay Bạch kim PNJ - C17', 'Chiếc lắc tay PNJ sở hữu sự cứng cáp của bạch kim được chế tác tinh xảo, kết hợp các chi tiết đúc châu độc đáo, tạo nên sự sáng bóng và sang trọng. Với thiết kế độc lạ cùng ánh kim sắc sảo, sản phẩm sẽ tôn lên vẻ đẹp của các quý cô.\r\n', './public/img/product/c17-1.png', 292.05, 'Female', 4, 2, 7, '2022-06-12 13:22:05', NULL, 0, NULL),
(54, 'Lắc tay bạc đính đá PNJSilver - C18', 'Nếu như bạn đang mong muốn tìm đến sự mới lạ cho các món trang sức bạc của mình thì hãy đến với PNJSilver. Hiện nay chúng tôi có hàng ngàn bộ sản phẩm có thể đáp ứng sở thích của bạn. Lắc tay bạc PNJSilver mang một phong cách thời thượng, rất hợp với những phụ nữ hiện đại.\r\n', './public/img/product/c18-1.png', 60.1, 'Female', 4, 3, 8, '2022-06-12 13:23:30', NULL, 0, NULL),
(55, 'Lắc tay Bạc Ý PNJSilver - C19', 'Chiếc lắc tay từ PNJSilver được chế tác từ bạc Ý mang tính ứng dụng cao kết hợp kiểu dáng phá cách. Điều này giúp sản phẩm thổi màu thời thượng và cá tính vào phong cách của các bạn trẻ. Cũng vì tính ứng dụng cao mà hiện nay, bạc Ý đang được đông đảo chị em ưa chuộng.\r\n', './public/img/product/c19-1.png', 75.75, 'Female', 4, 3, 8, '2022-06-12 13:25:00', NULL, 0, NULL),
(56, 'Lắc tay bạc đính đá PNJSilver The Language of Flowers - C20', 'Chiếc lắc tay từ PNJSilver được chế tác từ bạc mang tính ứng dụng cao kết hợp kiểu dáng phá cách. Điều này giúp sản phẩm thổi màu thời thượng và cá tính vào phong cách của các bạn trẻ. Cũng vì tính ứng dụng cao mà hiện nay, bạc đang được đông đảo chị em ưa chuộng.\r\n', './public/img/product/c20-1.png', 51.75, 'Female', 4, 3, 8, '2022-06-12 13:26:00', NULL, 0, NULL),
(57, 'Kiềng Vàng 24K PNJ - E1', 'Chiếc kiềng vàng PNJ sở hữu sự cứng cáp của vàng 24K được chế tác tinh xảo, kết hợp các chi tiết đúc, châu và khắc, tạo nên sự sáng bóng và sang trọng Với một mặt có họa tiết và một mặt trơn, các nàng dâu có thể đeo theo 2 kiểu khác nhau phù hợp với trang phục trong ngày cưới\r\n', './public/img/product/e1-1.png', 875.65, 'Female', 6, 2, 11, '2022-06-12 13:34:51', '2022-06-12 13:36:13', 0, NULL),
(58, 'Kiềng cưới Vàng 24K PNJ - E2', '', './public/img/product/e2-1.png', 909.25, 'Female', 6, 2, 11, '2022-06-12 13:43:54', NULL, 0, NULL),
(59, 'Kiềng cưới vàng 24K PNJ  - E3', 'Chiếc kiềng vàng PNJ sở hữu sự cứng cáp của vàng 24K được chế tác tinh xảo, kết hợp các chi tiết đúc, châu và khắc, tạo nên sự sáng bóng và sang trọng Với một mặt có họa tiết và một mặt trơn, các nàng dâu có thể đeo theo 2 kiểu khác nhau phù hợp với trang phục trong ngày cưới\r\n', './public/img/product/e3-1.png', 589.9, 'Female', 6, 2, 11, '2022-06-12 13:45:30', NULL, 0, NULL),
(60, 'Kiềng Vàng Ý trắng 18K PNJ - E4', 'Sở hữu kiểu dáng độc đáo với lối thiết kế hiện đại, chiếc kiềng vàng Ý 18K không chỉ mang vẻ đẹp phá cách mà còn tô điểm nét thời thượng Chiếc kiềng được chế tác từ vàng Ý 18K và ghi điểm với sự độc lạ, thiết kế đến từ PNJ sẽ cùng nàng kiêu hãnh tỏa sáng trên mọi bước đường Sở hữu kiểu dáng mảnh mai, sản phẩm sẽ làm nổi bật vẻ đẹp kiêu sa của nàng\r\n', './public/img/product/e4-1.png', 1199.5, 'Female', 6, 2, 5, '2022-06-12 13:46:39', NULL, 0, NULL),
(61, 'Kiềng Vàng Ý trắng 18K PNJ - E5', 'Sở hữu kiểu dáng độc đáo với lối thiết kế hiện đại, chiếc kiềng vàng Ý 18K không chỉ mang vẻ đẹp phá cách mà còn tô điểm nét thời thượng Chiếc kiềng được chế tác từ vàng Ý 18K và ghi điểm với sự độc lạ, thiết kế đến từ PNJ sẽ cùng nàng kiêu hãnh tỏa sáng trên mọi bước đường Sở hữu kiểu dáng mảnh mai, sản phẩm sẽ làm nổi bật vẻ đẹp kiêu sa của nàng\r\n', './public/img/product/e5-1.png', 1064.5, 'Female', 6, 2, 5, '2022-06-12 13:49:12', NULL, 0, NULL),
(62, 'Kiềng Vàng Ý trắng 18K PNJ - E6', 'Sở hữu kiểu dáng độc đáo với lối thiết kế hiện đại, chiếc kiềng vàng Ý 18K không chỉ mang vẻ đẹp phá cách mà còn tô điểm nét thời thượng Chiếc kiềng được chế tác từ vàng Ý 18K và ghi điểm với sự độc lạ, thiết kế đến từ PNJ sẽ cùng nàng kiêu hãnh tỏa sáng trên mọi bước đường Sở hữu kiểu dáng mảnh mai, sản phẩm sẽ làm nổi bật vẻ đẹp kiêu sa của nàng\r\n', './public/img/product/e6-1.png', 1319.5, 'Female', 6, 2, 5, '2022-06-12 13:50:30', NULL, 0, NULL),
(63, 'Kiềng Vàng Ý trắng 18K PNJ - E7', 'Sở hữu kiểu dáng độc đáo với lối thiết kế hiện đại, chiếc kiềng vàng Ý 18K không chỉ mang vẻ đẹp phá cách mà còn tô điểm nét thời thượng Chiếc kiềng được chế tác từ vàng Ý 18K và ghi điểm với sự độc lạ, thiết kế đến từ PNJ sẽ cùng nàng kiêu\r\n', './public/img/product/e7-1.png', 1134.5, 'Female', 6, 2, 5, '2022-06-12 13:52:14', NULL, 0, NULL),
(64, 'Kiềng Vàng Ý trắng 18K PNJ - E8', 'ở hữu kiểu dáng độc đáo với lối thiết kế hiện đại, chiếc kiềng vàng Ý 18K không chỉ mang vẻ đẹp phá cách mà còn tô điểm nét thời thượng Chiếc kiềng được chế tác từ vàng Ý 18K và ghi điểm với sự độc lạ, thiết kế đến từ PNJ sẽ cùng nàng kiêu hãnh tỏa sáng trên mọi bước đường Sở hữu kiểu dáng mảnh mai, sản phẩm sẽ làm nổi bật vẻ đẹp kiêu sa của nàng\r\n', './public/img/product/e8-1.png', 1699.5, 'Female', 6, 2, 5, '2022-06-12 13:54:30', NULL, 0, NULL),
(65, 'Kiềng Vàng Ý trắng 18K PNJ - E9', 'Sở hữu kiểu dáng độc đáo với lối thiết kế hiện đại, chiếc kiềng vàng Ý 18K không chỉ mang vẻ đẹp phá cách mà còn tô điểm nét thời thượng Chiếc kiềng được chế tác từ vàng Ý 18K và ghi điểm với sự độc lạ, thiết kế đến từ PNJ sẽ cùng nàng kiêu hãnh tỏa sáng trên mọi bước đường Sở hữu kiểu dáng mảnh mai, sản phẩm sẽ làm nổi bật vẻ đẹp kiêu sa của nàng\r\n\r\n', './public/img/product/e9-1.png', 1749.5, 'Female', 6, 2, 5, '2022-06-12 13:56:29', NULL, 0, NULL),
(66, 'Kiềng Vàng Ý trắng 18K PNJ - E11', 'Sở hữu kiểu dáng độc đáo với lối thiết kế hiện đại, chiếc kiềng vàng Ý 18K không chỉ mang vẻ đẹp phá cách mà còn tô điểm nét thời thượng Chiếc kiềng được chế tác từ vàng Ý 18K và ghi điểm với sự độc lạ, thiết kế đến từ PNJ sẽ cùng nàng kiêu hãnh tỏa sáng trên mọi bước đường Sở hữu kiểu dáng mảnh mai, sản phẩm sẽ làm nổi bật vẻ đẹp kiêu sa của nàng\r\n', './public/img/product/e11-1.png', 949.5, 'Female', 6, 2, 5, '2022-06-12 13:59:17', NULL, 0, NULL),
(67, 'Kiềng bạc đính đá STYLE by PNJ DNA - E12', '', './public/img/product/e12-1.png', 167.25, 'Female', 6, 1, 8, '2022-06-12 14:00:49', '2022-06-12 14:03:59', 0, NULL),
(68, 'Kiềng bạc Ý PNJSilver kiểu lượn sóng - E14', 'Kiềng bạc sở hữu thiết kế độc đáo, được hiện đại hóa và khoác lên mình tính thời trang, phóng khoáng Chế tác từ chất liệu bạc Ý, chiếc kiềng PNJSilver sở hữu vẻ đẹp của sự trẻ trung phù hợp với phong cách của những modern girl\r\n', './public/img/product/e14-1.png', 59.75, 'Female', 6, 3, 8, '2022-06-12 14:03:13', NULL, 0, NULL),
(69, 'Kiềng bạc Ý PNJSilver - E13', 'Nổi bật ngay từ thiết kế độc đáo, chiếc kiềng bạc Ý từ PNJSilver chắc chắn sẽ mang đến cho nàng phong cách năng động cùng thật nhiều ý tưởng mix & match táo bạo để khoe trọn cá tính của mình! Được chế tác từ chất liệu bạc Ý cao cấp và cảm hứng thiết kế gắn liền với mùa lễ hội, PNJSilver khoác lên chiếc áo đầy nghệ thuật và đặc sắc cho sản phẩm\r\n', './public/img/product/e13-1.png', 167.25, 'Female', 6, 3, 8, '2022-06-12 14:04:52', NULL, 0, NULL),
(70, 'Kiềng bạc Ý PNJSilver - E15', '', './public/img/product/e15-1.png', 102.25, 'Female', 6, 3, 8, '2022-06-12 15:59:07', NULL, 0, NULL),
(71, 'Kiềng bạc Ý PNJSilver - E16', 'Nổi bật ngay từ thiết kế độc đáo, chiếc kiềng bạc Ý từ PNJSilver chắc chắn sẽ mang đến cho nàng phong cách năng động cùng thật nhiều ý tưởng mix & match táo bạo để khoe trọn cá tính của mình! Được chế tác từ chất liệu bạc Ý cao cấp và cảm hứng thiết kế gắn liền với mùa lễ hội, PNJSilver khoác lên chiếc áo đầy nghệ thuật và đặc sắc cho sản phẩm\r\n', './public/img/product/e16-2.jpg', 85.9, 'Female', 6, 3, 8, '2022-06-12 16:00:47', NULL, 0, NULL),
(72, 'Kiềng Bạc Ý PNJSilver - E17', 'Nổi bật ngay từ thiết kế độc đáo, chiếc kiềng bạc Ý từ PNJSilver chắc chắn sẽ mang đến cho nàng phong cách năng động cùng thật nhiều ý tưởng mix & match táo bạo để khoe trọn cá tính của mình! Được chế tác từ chất liệu bạc Ý cao cấp và cảm hứng thiết kế gắn liền với mùa lễ hội, PNJSilver khoác lên chiếc áo đầy nghệ thuật và đặc sắc cho sản phẩm\r\n', './public/img/product/e17-1.png', 120.75, 'Female', 6, 3, 8, '2022-06-12 16:02:11', NULL, 0, NULL),
(73, 'Kiềng bạc Ý PNJSilver - E18', 'Kiềng bạc sở hữu thiết kế độc đáo, được hiện đại hóa và khoác lên mình tính thời trang, phóng khoáng Chế tác từ chất liệu bạc Ý, chiếc kiềng PNJSilver sở hữu vẻ đẹp của sự trẻ trung phù hợp với phong cách của những modern girl\r\n', './public/img/product/e18-1.png', 71.55, 'Female', 6, 3, 8, '2022-06-12 16:03:19', NULL, 0, NULL),
(74, 'Kiềng bạc Ý PNJSilver Mazza - E19', 'Kiềng bạc sở hữu thiết kế độc đáo, được hiện đại hóa và khoác lên mình tính thời trang, phóng khoáng Chế tác từ chất liệu bạc Ý, chiếc kiềng PNJSilver sở hữu vẻ đẹp của sự trẻ trung phù hợp với phong cách của những modern girl\r\n', './public/img/product/e19-1.png', 122.75, 'Female', 6, 3, 8, '2022-06-12 16:04:26', NULL, 0, NULL),
(75, 'Kiềng bạc Ý PNJSilver Mazza - E20', '', './public/img/product/e20-1.png', 120.55, 'Female', 6, 3, 8, '2022-06-12 16:05:21', NULL, 0, NULL),
(76, 'Bông tai Vàng trắng Ý 18K đính đá CZ PNJ - B1', '', './public/img/product/b1-1.png', 283.7, 'Unisex', 2, 2, 5, '2022-06-12 16:10:31', NULL, 0, NULL),
(77, 'Bông tai Vàng 10K đính đá ECZ PNJ Hoa của Mẹ - B2', 'Đôi bông tai là dòng trang sức với sự kết hợp độc đáo giữa vàng 10K và những viên đá ECZ đạt tiêu chuẩn cao nhất về chất lượng cùng độ chính xác trong từng giác cắt. Sở hữu thiết kế từ biểu tượng hoa mẫu đơn lồng ghép vào trái tim, sản phẩm trong BST Hoa của Mẹ mang ý nghĩa tình yêu thương dành cho mẹ được con cái lưu trọn trong tim\r\n', './public/img/product/b2-1.png', 241.15, 'Female', 2, 2, 10, '2022-06-12 16:13:24', NULL, 0, NULL),
(78, 'Bông tai Vàng 10K đính đá ECZ PNJ Hoa của Mẹ - B3', 'Như những đóa hoa mẫu đơn, bông tai trong BST Hoa của Mẹ sở hữu tạo hình 3D cho cánh hoa đem lại cảm giác mềm mại cho sản phẩm và kết hợp những viên đá ECZ tạo điểm nhấn cho nhuỵ hoa.\r\n', './public/img/product/b3-1.png', 191.4, 'Female', 2, 2, 10, '2022-06-12 16:16:31', NULL, 0, NULL),
(79, 'Bông tai Vàng trắng 10K đính đá ECZ PNJ - B4', 'Đôi bông tai được các nghệ nhân kim hoàn khoác lên vẻ ngoài đầy tinh xảo bởi được chế tác từ vàng 10K với 41,6% vàng nguyên chất. Và những viên đá ECZ đạt tiêu chuẩn cao nhất về chất lượng cùng độ chính xác trong từng giác cắt, được đính một cách khéo léo trên đôi khuyên tai càng làm cho sản phẩm trở nên rực rỡ và kiêu sa\r\n', './public/img/product/b4-1.png', 309.5, 'Female', 2, 2, 3, '2022-06-12 16:19:08', NULL, 0, NULL),
(80, 'Bông tai Vàng 10K đính đá ECZ PNJ Trịnh Collection - B5', '', './public/img/product/b5-1.png', 121.45, 'Female', 2, 2, 10, '2022-06-12 16:20:15', NULL, 0, NULL),
(81, 'Bông tai Vàng trắng 10K đính đá ECZ PNJ - B6', 'Đôi bông tai được các nghệ nhân kim hoàn khoác lên vẻ ngoài đầy tinh xảo bởi được chế tác từ vàng 10K với 41,6% vàng nguyên chất. Và những viên đá ECZ đạt tiêu chuẩn cao nhất về chất lượng cùng độ chính xác trong từng giác cắt, được đính một cách khéo léo trên đôi khuyên tai càng làm cho sản phẩm trở nên rực rỡ và kiêu sa\r\n', './public/img/product/b6-1.png', 240.85, 'Female', 2, 2, 3, '2022-06-12 16:21:16', NULL, 0, NULL),
(82, 'Bông tai Vàng 18K PNJ  - B7', 'Mô phỏng nét hoàn mỹ đậm chất Á đông của người phụ nữ, PNJ đặt trọn tâm huyết và tình cảm vào từng chi tiết trên đôi bông tai mới. PNJ cho ra đời thiết kế đôi bông tai tinh tế, là sự phối trộn hài hoà giữa kiểu dáng và chất liệu vàng 18K chuẩn mực.\r\n', './public/img/product/b7-1.png', 236.55, 'Female', 2, 2, 9, '2022-06-12 16:24:31', NULL, 0, NULL),
(83, 'Bông tai Vàng trắng Ý 18K PNJ - B8', 'Làm mới quy chuẩn cổ điển của sắc vàng 18K cùng thiết kế hiện đại, đôi bông tai PNJ hiện hữu nét tươi mới, lại thật vừa vặn để sáng bừng vẻ đẹp lạc quan của quý cô. Sự đồng điệu và hài hòa theo từng đường nét ngẫu hứng, tạo nên tổng thể cho đôi bông tai tuyệt đẹp.\r\n', './public/img/product/b8-1.png', 201.2, 'Female', 2, 2, 5, '2022-06-12 16:25:55', NULL, 0, NULL),
(84, 'Bông tai Vàng Ý 18K PNJ - B9', 'Làm mới quy chuẩn cổ điển của sắc vàng Ý 18K cùng thiết kế hiện đại, đôi bông tai PNJ hiện hữu nét tươi mới, lại thật vừa vặn để sáng bừng vẻ đẹp lạc quan của quý cô. Sự đồng điệu và hài hòa theo từng đường nét ngẫu hứng, tạo nên tổng thể cho đôi bông tai tuyệt đẹp.\r\n', './public/img/product/b9-1.png', 309.5, 'Female', 2, 2, 9, '2022-06-12 16:27:34', NULL, 0, NULL),
(85, 'Bông tai Vàng trắng 10K đính đá ECZ PNJ - B10', 'Mang vẻ đẹp hoàn hảo không thua kém kim cương, chiếc nhẫn vàng với điểm nhấn đá ECZ sẽ là “trợ thủ” nâng tầm nhan sắc của mọi cô nàng ưa chuộng phong cách hiện đại và thanh lịch.\r\n', './public/img/product/b10-1.png', 206.55, 'Female', 2, 2, 3, '2022-06-12 16:28:30', NULL, 0, NULL),
(86, 'Bông tai Bạch kim PNJ - B11', '', './public/img/product/b11-1.png', 141.75, 'Female', 2, 2, 7, '2022-06-12 16:29:30', NULL, 0, NULL),
(87, 'Bông tai Bạch kim PNJ - B12', 'Mô phỏng nét hoàn mỹ đậm chất Á đông của người phụ nữ, PNJ đặt trọn tâm huyết và tình cảm vào từng chi tiết trên đôi bông tai mới. PNJ cho ra đời thiết kế đôi bông tai tinh tế, là sự phối trộn hài hoà giữa kiểu dáng và chất liệu bạch kim tinh xảo.\r\n', './public/img/product/b12-1.png', 177.75, 'Female', 2, 2, 7, '2022-06-12 16:31:11', NULL, 0, NULL),
(88, 'Bông tai Bạch Kim PNJ - B13', 'Mô phỏng nét hoàn mỹ đậm chất Á đông của người phụ nữ, PNJ đặt trọn tâm huyết và tình cảm vào từng chi tiết trên đôi bông tai mới. PNJ cho ra đời thiết kế đôi bông tai tinh tế, là sự phối trộn hài hoà giữa kiểu dáng và chất liệu bạch kim tinh xảo.\r\n', './public/img/product/b13-1.png', 431.55, 'Female', 2, 2, 7, '2022-06-12 16:32:56', NULL, 0, NULL),
(89, 'Bông tai Bạch Kim PNJ - B14', 'Mô phỏng nét hoàn mỹ đậm chất Á đông của người phụ nữ, PNJ đặt trọn tâm huyết và tình cảm vào từng chi tiết trên đôi bông tai mới. PNJ cho ra đời thiết kế đôi bông tai tinh tế, là sự phối trộn hài hoà giữa kiểu dáng và chất liệu bạch kim tinh xảo.\r\n', './public/img/product/b14-1.png', 170.55, 'Female', 2, 2, 7, '2022-06-12 16:34:54', NULL, 0, NULL),
(90, 'Bông tai Bạch kim PNJ - B15', '', './public/img/product/b15-1.png', 269.55, 'Female', 2, 2, 7, '2022-06-12 16:35:44', NULL, 0, NULL),
(91, 'Bông tai Bạc đính đá PNJSilver Hoa của Mẹ - B16', 'Vẫn giữ concept về biểu tượng hoa mẫu đơn kết hợp với các chi tiết trái tim làm tiểu tiết nhỏ, đôi bông tai bạc trong BST Hoa của Mẹ mang lại cảm giác nữ tính và dịu dàng cho chủ sở hữu.\r\n', './public/img/product/b16-1.png', 32.75, 'Female', 2, 3, 8, '2022-06-12 16:36:50', NULL, 0, NULL),
(92, 'Bông tai Bạc đính Ngọc trai PNJSilver - B17', '', './public/img/product/b17-1.png', 39.75, 'Female', 2, 3, 8, '2022-06-12 16:38:22', NULL, 0, NULL),
(93, 'Bông tai Bạc đính đá PNJSilver Hoa của Mẹ - B18', 'Vẫn giữ concept về biểu tượng hoa mẫu đơn kết hợp với các chi tiết trái tim làm tiểu tiết nhỏ, đôi bông tai bạc trong BST Hoa của Mẹ mang lại cảm giác nữ tính và dịu dàng cho chủ sở hữu.\r\n', './public/img/product/b18-1.png', 34.75, 'Female', 2, 3, 8, '2022-06-12 16:39:42', NULL, 0, NULL),
(94, 'Bông tai Bạc đính Ngọc trai STYLE by PNJ Sexy - B19', '', './public/img/product/b19-1.png', 39.75, 'Female', 2, 1, 8, '2022-06-12 16:42:09', NULL, 0, NULL),
(95, 'Bông tai Bạc đính đá PNJSilver - B20', 'Vẫn đề cao tính sáng tạo trong phong cách của các cô gái, PNJSilver mang đến đôi bông tai được chế tác trên chất liệu bạc 92.5 kết hợp điểm nhấn đính đá. Khoác lên mình thiết kế tinh tế cùng sự điểm xuyến của viên đá trắng lấp lánh, bông tai mang vẻ đẹp quyến rũ, giúp các cô gái trở nên thật rạng rỡ và thu hút.\r\n', './public/img/product/b20-1.png', 52.75, 'Female', 2, 3, 8, '2022-06-12 16:43:14', NULL, 0, NULL),
(96, 'Mặt dây chuyền Kim cương Vàng trắng 14K PNJ - D1', '', './public/img/product/d1-1.png', 1323.9, 'Female', 5, 2, 6, '2022-06-12 16:53:32', '2022-06-15 22:15:00', 0, NULL),
(97, 'Mặt dây chuyền Vàng trắng Ý 18K đính đá CZ PNJ - D2', '', './public/img/product/d2-1.png', 433.5, 'Female', 5, 2, 5, '2022-06-12 16:54:42', NULL, 0, NULL),
(98, 'Mặt dây chuyền Vàng trắng Ý 18K đính đá CZ PNJ - D3', '', './public/img/product/d3-1.png', 387.05, 'Female', 5, 2, 5, '2022-06-12 16:55:48', NULL, 0, NULL),
(99, 'Mặt dây chuyền Vàng trắng Ý 18K PNJ - D4', '', './public/img/product/d4-1.png', 320.55, 'Female', 5, 2, 5, '2022-06-12 16:57:10', NULL, 0, NULL),
(100, 'Mặt dây chuyền Vàng trắng Ý 18K PNJ - D5', '', './public/img/product/d5-1.png', 140.65, 'Female', 5, 2, 5, '2022-06-12 16:59:29', NULL, 0, NULL),
(101, 'Mặt dây chuyền Vàng trắng 14K đính đá Topaz PNJ - D6', '', './public/img/product/d6-1.png', 900, 'Female', 5, 2, 6, '2022-06-12 17:00:27', NULL, 0, NULL),
(102, 'Mặt dây chuyền Kim cương Vàng trắng 18K PNJ - D7', '', './public/img/product/d7-1.png', 2690, 'Female', 5, 2, 5, '2022-06-12 17:02:05', NULL, 0, NULL),
(103, 'Mặt dây chuyền Vàng trắng Ý 18K PNJ - D8', 'Làm mới quy chuẩn cổ điển của sắc vàng Ý 18K cùng thiết kế hiện đại, đôi bông tai PNJ hiện hữu nét tươi mới, lại thật vừa vặn để sáng bừng vẻ đẹp lạc quan của quý cô. Sự đồng điệu và hài hòa theo từng đường nét ngẫu hứng, tạo nên tổng thể cho đôi bông tai tuyệt đẹp.\r\n', './public/img/product/d8-1.png', 563.4, 'Female', 5, 2, 5, '2022-06-12 17:03:40', NULL, 0, NULL),
(104, 'Mặt dây chuyền Bạc đính Ngọc trai PNJSilver - D9', '', './public/img/product/d9-1.png', 44.75, 'Female', 5, 3, 8, '2022-06-12 17:05:25', '2022-06-12 17:05:59', 0, NULL),
(105, 'Mặt dây chuyền bạc đính đá PNJSilver - D10', '', './public/img/product/d10-1.png', 14.5, 'Unisex', 5, 3, 8, '2022-06-12 17:07:01', NULL, 0, NULL),
(106, 'Mặt dây chuyền bạc đính đá PNJSilver - D11', 'Được hoàn thiện vẻ đẹp duy mỹ bởi những viên đá lấp lánh đính thủ công lên từng mảnh trang sức, chiếc mặt dây chuyền được chế tác từ chất liệu bạc cao cấp 92.5 kết hợp cùng sự lấp lánh của những viên đá màu trắng, tựa như đóa hoa bừng nở trên bề mặt một cách mỹ miều và tinh tế.\r\n', './public/img/product/d11-2.png', 58.25, 'Female', 5, 3, 8, '2022-06-12 17:08:12', NULL, 0, NULL),
(107, 'Mặt dây chuyền bạc đính đá PNJSilver hình thiên nga - D12', 'Được hoàn thiện vẻ đẹp duy mỹ bởi những viên đá lấp lánh đính thủ công lên từng mảnh trang sức, chiếc mặt dây chuyền được chế tác từ chất liệu bạc cao cấp 92.5 kết hợp cùng sự lấp lánh của những viên đá màu trắng, tựa như đóa hoa bừng nở trên bề mặt một cách mỹ miều và tinh tế.\r\n', './public/img/product/d12-2.png', 52.5, 'Female', 5, 3, 8, '2022-06-12 17:09:17', NULL, 0, NULL),
(108, 'Mặt dây chuyền bạc đính đá PNJSilver hình chú mèo - D13', 'Được hoàn thiện vẻ đẹp duy mỹ bởi những viên đá lấp lánh đính thủ công lên từng mảnh trang sức, chiếc mặt dây chuyền được chế tác từ chất liệu bạc cao cấp 92.5 kết hợp cùng sự lấp lánh của những viên đá màu trắng, tựa như đóa hoa bừng nở trên bề mặt một cách mỹ miều và tinh tế.\r\n', './public/img/product/d13-2.png', 52.5, 'Female', 5, 3, 8, '2022-06-12 17:10:10', NULL, 0, NULL),
(109, 'Mặt dây chuyền bạc đính đá PNJSilver hình cú mèo - D14', 'Tôn vinh nét đẹp thanh tú của nàng xinh với chiếc mặt dây chuyền lấp lánh sắc bạc ánh kim cổ điển cùng sắc trắng của viên đá đính kèm, PNJSilver chắc chắn đây sẽ là những gì các nàng cần để luôn tỏa sáng và thu hút mọi ánh nhìn.\r\n', './public/img/product/d14-2.png', 52.5, 'Female', 5, 3, 8, '2022-06-12 17:11:20', NULL, 0, NULL),
(110, 'Mặt dây chuyền Bạc PNJSilver - D15', 'Mặt dây chuyền sở hữu thiết kế hiện đại mang vẻ đẹp của sự trẻ trung và thời thượng. Được chế tác từ chất liệu bạc cao cấp 92.5, PNJSilver sẽ vừa mang lại sự bền bỉ, vừa mang lại màu sắc bền đẹp theo thời gian\r\n', './public/img/product/d15-1.png', 19.75, 'Female', 5, 3, 8, '2022-06-12 17:12:32', NULL, 0, NULL),
(111, 'Mặt dây chuyền Bạch kim PNJ - D16', '', './public/img/product/d16-2.png', 260.55, 'Female', 5, 2, 7, '2022-06-12 17:13:46', NULL, 0, NULL),
(112, 'Mặt dây chuyền Kim cương Vàng trắng 14K Kim tiền - D17', '', './public/img/product/d17-1.png', 1544.4, 'Female', 5, 2, 6, '2022-06-12 17:14:42', NULL, 0, NULL),
(113, 'Mặt dây chuyền vàng 14K đính đá Moon - D18', '', './public/img/product/d18-1.png', 304.15, 'Female', 5, 2, 9, '2022-06-12 17:16:03', '2022-06-12 17:16:48', 0, NULL),
(114, 'Mặt dây chuyền Kim tiền Vàng 14K đính ngọc trai Freshwater PNJ - D19', 'Ngọc trai Freshwater, còn được gọi là ngọc nước ngọt, rất phù hợp cho những cô nàng muốn sở hữu những viên ngọc trai tròn đẹp, óng ánh lớp xà cừ với ngân sách hợp lý. Cùng với hàm lượng vàng 14k đạt mức cân bằng trong chế tác, món trang sức của nàng sẽ có một sự tinh xảo đặc biệt.\r\n', './public/img/product/d19-1.png', 189.5, 'Female', 5, 2, 9, '2022-06-12 17:18:04', NULL, 0, NULL),
(115, 'Mặt dây chuyền Vàng 24K đính đá CZ PNJ - D20', 'Vừa mang nét cổ điển nhưng lại có một chút sự hiện đại bởi sự rành mạch trong đường nét, lại giữ được sự mềm mại và ngẫu hứng giữa vàng 24K cùng thiết kế độc đáo - chiếc mặt dây chuyền khoác lên sự thanh lịch và gây ấn tượng như người phụ nữ trưởng thành với phong cách tao nhã.\r\n', './public/img/product/d20-1.png', 311, 'Female', 5, 2, 11, '2022-06-12 17:19:10', NULL, 0, NULL),
(116, 'Vòng tay Vàng 18K đính đá Ruby PNJ - F1', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"710\" style=\"width: 533pt;\"><tbody><tr height=\"42\" style=\"height:31.2pt\">\r\n  <td height=\"42\" class=\"xl65\" align=\"left\" width=\"710\" style=\"height:31.2pt;\r\n  width:533pt\">Dành riêng cho những cô nàng ưa chuộng trang sức đá màu, đá Ruby\r\n  mang sắc đỏ quý phái chắc chắn sẽ là mẫu trang sức không thể bỏ qua. Chiếc\r\n  vòng tay sở hữu thiết kế độc đáo, thời trang. Viên đá chủ Ruby được cắt mài\r\n  tỉ mỉ, cẩn trọng nhằm tôn lên màu sắc đặc trưng của đá cùng chất liệu vàng\r\n  18K, khiến sản phẩm chinh phục cả những cô gái cá tính và khó tính nhất.</td></tr></tbody></table>', './public/img/product/f1-1.png', 2607.3, 'Female', 8, 2, 9, '2022-06-16 14:34:57', NULL, 0, NULL),
(117, 'Vòng tay Vàng 18K đính đá Citrine PNJ Sắc Xuân - F2', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Cùng PNJ tô điểm thêm một chút thời thượng cho cổ tay của nàng với chiếc vòng tay vàng 18K. Được kết hợp tinh tế giữa ánh kim rực rỡ của vàng cùng sắc vàng cam nổi bật của đá Citrine trên thiết kế độc đáo đã tạo nên vẻ đẹp sang trọng và hiện đại cho chiếc&nbsp;</span><a href=\"https://www.pnj.com.vn/lac-vong-tay/vong-tay/vong-tay-vang/\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; color: rgb(51, 122, 183); outline: none; cursor: pointer; transition: all 150ms ease 0s; text-align: justify;\">vòng PNJ</a><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">, giúp nàng luôn rạng rỡ trong từng chuyển động.</span></p><p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Nếu như&nbsp;</span><a href=\"https://www.pnj.com.vn/nhan/nhan-vang/\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; color: rgb(51, 122, 183); outline: none; cursor: pointer; transition: all 150ms ease 0s; text-align: justify;\">nhẫn</a><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">&nbsp;tô điểm nét xinh yêu cho bàn tay thì vòng sẽ tôn lên vẻ đẹp tinh tế của cổ tay nàng. Vô cùng duyên dáng và thanh lịch với thiết kế mang phong cách vừa cổ điển lại vừa hiện đại cùng sự kết hợp hoàn hảo của vàng 18K và sắc vàng cam của đá Citrine, tạo nên món nữ trang tuyệt mỹ, tôn vinh vẻ đẹp phụ nữ Việt, giúp quý cô lan tỏa sức hút của mình.</span><br></p>', './public/img/product/f2-1.png', 1675.1, 'Female', 8, 2, 9, '2022-06-16 14:36:48', '2022-06-16 14:37:58', 0, NULL),
(118, 'Vòng tay trẻ em bạc PNJSilver - F3', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Tô điểm một chút đáng yêu, một chút phá cách và một chút xinh xắn cho bé yêu với&nbsp;</span><a href=\"https://www.pnj.com.vn/lac-vong-tay/vong-tay/vong-tay-bac/\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; color: rgb(51, 122, 183); outline: none; cursor: pointer; transition: all 150ms ease 0s; text-align: justify;\">vòng tay bạc PNJSilver</a><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">. Khoác lên mình thiết kế đơn giản kết hợp chất liệu bạc cao cấp, chiếc vòng tay bạc giúp bé yêu trông đáng yêu và tránh được một số điều không tốt.</span><br></p>', './public/img/product/f3-1.png', 22.25, 'Child', 8, 3, 8, '2022-06-16 14:40:27', NULL, 0, NULL),
(119, ' Vòng tay Vàng 18K đính đá Ruby PNJ Sắc Xuân - F4', '<p><a href=\"https://www.pnj.com.vn/sac-xuan/\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; color: rgb(51, 122, 183); outline: none; cursor: pointer; transition: all 150ms ease 0s; text-align: justify;\">BST Sắc Xuân</a><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">&nbsp;được ra mắt với những sản phẩm nữ trang vàng sở hữu thiết kế sang trọng dành riêng cho quý cô trong dịp xuân về. Bằng những đường nét thiết kế uốn lượn nổi bật bởi dãy đá trắng tinh tế, kết hợp điểm nhấn đính đá Ruby đỏ nồng sang trọng và được chế tác trên chất liệu vàng 18K, đã khoác lên chiếc áo quý phái cho vòng tay. Chắc chắn rằng, đây sẽ là món trang sức tôn vinh vẻ đẹp cổ điển đặc trưng pha lẫn một chút hiện đại của các quý cô.</span><br></p>', './public/img/product/f4-1.png', 153.9, 'Female', 8, 2, 9, '2022-06-16 14:44:05', NULL, 0, NULL),
(120, 'Vòng tay Vàng trắng Ý 18K đính đá CZ PNJ - F5', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Nếu như phụ kiện bạc tô điểm thêm vẻ đẹp trẻ trung cho bạn thì những món trang sức vàng sẽ giúp bạn trông tinh tế, sang trọng và quý phái. Bằng việc sử dụng chất liệu vàng trắng Ý 18K cùng đá CZ có độ tán sắc cao mang đến vẻ đẹp tỏa sáng thời thượng, sang trọng, thể hiện sự quý phái cho người đeo. Ngoài ra, trang sức PNJ còn giúp cho các quý cô trở nên tự tin hơn trong cuộc sống.</span><br></p>', './public/img/product/f5-1.png', 1339.1, 'Female', 8, 2, 5, '2022-06-16 14:46:00', NULL, 0, NULL),
(121, 'Vòng tay trẻ em bạc PNJSilver hình con khỉ - F6', '', './public/img/product/f6-1.png', 22.5, 'Child', 8, 3, 8, '2022-06-16 14:47:19', NULL, 0, NULL),
(122, 'Vòng tay trẻ em bạc PNJSilver hình con vịt - F7', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Những món trang sức dành cho trẻ nhỏ luôn được các bậc phụ huynh rất quan ngại bởi hiện nay có nhiều sản phẩm tràn lan trên thị trường không đảm bảo được chất lượng. Nhưng đối với vòng tay bạc PNJSilver thì các mẹ hoàn toàn có thể an tâm vì bạc của PNJSilver có nguồn gốc và xuất xứ rõ ràng nên rất an toàn cho sức khỏe và làn da trẻ nhỏ.</span></p><p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Những món trang sức dành cho trẻ nhỏ luôn được các bậc phụ huynh rất quan ngại bởi hiện nay có nhiều sản phẩm tràn lan trên thị trường không đảm bảo được chất lượng. Nhưng đối với vòng tay bạc PNJSilver thì các mẹ hoàn toàn có thể an tâm vì bạc của PNJSilver có nguồn gốc và xuất xứ rõ ràng nên rất an toàn cho sức khỏe và làn da trẻ nhỏ.</span></p><p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Những món trang sức dành cho trẻ nhỏ luôn được các bậc phụ huynh rất quan ngại bởi hiện nay có nhiều sản phẩm tràn lan trên thị trường không đảm bảo được chất lượng. Nhưng đối với vòng tay bạc PNJSilver thì các mẹ hoàn toàn có thể an tâm vì bạc của PNJSilver có nguồn gốc và xuất xứ rõ ràng nên rất an toàn cho sức khỏe và làn da trẻ nhỏ.</span><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\"><br></span><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\"><br></span></p>', './public/img/product/f7-1.png', 25.5, 'Child', 8, 3, 8, '2022-06-16 15:21:42', '2022-06-16 15:26:52', 0, NULL),
(123, 'Vòng tay Vàng trắng Ý 18K PNJ - F8', '<p style=\"margin-bottom: 0px; padding-top: 6px; padding-bottom: 6px; font-family: Roboto, sans-serif; font-size: 14px;\">Vòng tay nữ,</p><p style=\"margin-bottom: 0px; padding-top: 6px; padding-bottom: 6px; font-family: Roboto, sans-serif; font-size: 14px;\">Chất liệu vàng trắng Italia vàng 18K, không gắn đá.</p>', './public/img/product/f8-1.png', 945.4, 'Female', 8, 2, 5, '2022-06-16 16:32:25', NULL, 0, NULL),
(124, 'Vòng tay Vàng 18K đính đá CZ PNJ - F9', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Thanh lịch và duyên dáng với những chiếc&nbsp;</span><a href=\"https://www.pnj.com.vn/lac-vong-tay/vong-tay/vong-tay-vang/\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; color: rgb(51, 122, 183); outline: none; cursor: pointer; transition: all 150ms ease 0s; text-align: justify;\">vòng tay PNJ</a><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">&nbsp;thời trang và sang trọng. Bên cạnh đó, sản phẩm vòng tay còn được điểm xuyến thêm vẻ đẹp trẻ trung và thời thượng bằng những viên đá CZ khiến cho vẻ đẹp dịu dàng của nàng trở nên ngọt ngào và thời thượng hơn bao giờ hết.</span></p><p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Được chế tác từ vàng 18K, với đôi tay tài nghệ của người thợ nữ trang PNJ đã khắc họa vẻ đẹp quyến rũ và tinh tế cho vòng tay. Đặc biệt, với vẻ sáng lấp lánh của những viên đá CZ đính trên vòng sẽ tô điểm thêm nét sang trọng và quý phái, giúp người đeo tỏa sáng, thu hút từng ánh nhìn.</span><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\"><br></span><br></p>', './public/img/product/f9-1.png', 1038.85, 'Female', 8, 2, 9, '2022-06-16 16:35:20', NULL, 0, NULL),
(125, 'Vòng tay trẻ em bạc PNJSilver hình con ong - F10', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Ngoài những bộ đồ xinh xắn thì trang sức cũng là một trong những món quà ý nghĩa mà các bậc cha mẹ luôn dành cho các thiên thần nhỏ của mình. Đặc biệt là vòng tay bạc không chỉ giúp bé trông đáng yêu hơn mà còn mang lại lợi ích về mặt sức khỏe.</span></p><p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">Hòa mình vào mùa hè thật xinh xắn thương hiệu PNJSilver thiết kế ra vòng tay bạc hình con ong vô cùng đáng yêu dành tặng cho bé. Được làm bằng chất liệu bạc 92.5 cao cấp nhập từ Ý theo tiêu chuẩn chất lượng của thế giới nên cha mẹ hoàn toàn an tâm sức khỏe cũng như làn da mềm mại của các bé nhé!</span></p><p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">Kiểu dáng vòng tay khá đơn giản được thiết kế trơn nhẵn, kết hợp hoàn hảo với chi tiết chú ong được khắc họa xinh xắn tô điểm nét đẹp đáng yêu cho các thiên thần. Với vòng tay bạc PNJSilver cha mẹ có thề dễ dàng mix với mọi trang phục giúp bé luôn dễ thương trong mắt mọi người.</span><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\"><br></span><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\"><br></span><br></p>', './public/img/product/f10-1.png', 25.5, 'Child', 8, 3, 8, '2022-06-16 16:38:17', NULL, 0, NULL),
(126, 'Vòng tay Vàng trắng 10K đính đá ECZ PNJ Sắc Hoa Tinh Khôi - F11', '', './public/img/product/f11-1.png', 846.85, 'Female', 8, 2, 3, '2022-06-16 16:39:57', NULL, 0, NULL),
(127, 'Vòng tay trẻ em bạc PNJSilver - F12', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">Bên cạnh những trang phục đáng yêu của các bé, các mẹ có thể phối cùng với phụ kiện vòng tay bằng bạc sẽ giúp bé cảm thấy thích thú hơn. Vòng tay bạc trẻ em PNJSilver được chế tác bằng nguyên liệu bạc 92.5 cao cấp, nhập khẩu từ Ý, chất lượng đạt tiêu chuẩn của thế giới. Vòng tay PNJSilver không những giúp các thiên thần luôn xinh xắn mà còn đảm bảo an toàn cho làn da mềm mại và nhảy cảm của các con.</span></p><p style=\"margin-bottom: 0px; padding-top: 6px; padding-bottom: 6px; font-family: Roboto, sans-serif; font-size: 15px; color: rgb(70, 70, 70); line-height: 24px; text-align: justify;\">Phụ kiện trang sức trẻ em, ngoài yếu tố chất liệu thì kiểu dáng cũng được các bậc phụ huynh khá quan tâm. Vòng tay bạc PNJSilver được thiết kế mới lạ và độc đáo. Điểm đầu và điểm cuối vòng tay bạc trẻ em PNJSilver bo tròn, trơn nhẵn, không liền nhau và tạo khoảng trống vừa với tay bé. Không những giúp các bậc cha mẹ dễ dàng thao tác khi đeo cho bé mà còn mang lại cảm giác thoải mái và an toàn cho các thiên thần khi vui chơi.</p><p style=\"margin-bottom: 0px; padding-top: 6px; padding-bottom: 6px; font-family: Roboto, sans-serif; font-size: 15px; color: rgb(70, 70, 70); line-height: 24px; text-align: justify;\">Điểm cộng dành cho vòng tay bạc trẻ em PNJSilver là họa tiết hình cánh cam thật đáng yêu, giúp các thiên thần nhỏ hòa mình vào mùa hè thật tươi vui, hạnh phúc</p><p><br></p>', './public/img/product/f12-1.png', 25.5, 'Child', 8, 3, 8, '2022-06-16 16:41:15', NULL, 0, NULL),
(128, 'Vòng tay charm bạc DIY PNJSilver - F13', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">Một chiếc vòng tay charm thể hiện ý nghĩa ưa thích sự khám phá và thường xuyên phải di chuyển với những hạt charm. Điều đặc biệt là việc chọn charm cho chiếc vòng tay của mình có thể được thực hiện liên tục và trải dài như việc sưu tập vậy. Dần dần bạn sẽ có cả một bộ sưu tập với nhiều màu sắc, kích thước, kiểu dáng, chủ đề khác nhau để làm nên những chiếc vòng tay, vòng cổ đẹp nhất mang đậm phong cách cá tính của riêng mình.</span></p><p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">Mỗi hạt charm tuy nhỏ bé nhưng mang trong mình những câu chuyện, những tâm tư tình cảm, niềm hi vọng và ký ức sâu thẳm của một ai đó. Mỗi hạt charm như một trang nhật ký, giúp bạn luôn nhớ về những kỷ niệm, dấu mốc đáng nhớ của riêng mình. Vòng charm DIY PNJSilver với sắc màu bạc cá tính thời trang, cùng với những nét thiết kế phá cách các cô gái trẻ có thể phối hợp với trang phục và khiến các nàng cảm thấy xinh đẹp duyên dáng hơn.</span><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\"><br></span><br></p>', './public/img/product/f13-1.png', 27.5, 'Female', 8, 3, 8, '2022-06-16 16:43:24', '2022-06-16 16:47:10', 0, NULL),
(129, 'Vòng tay Vàng 18K đính đá CZ PNJ - F14', '', './public/img/product/f14-1.png', 85.65, 'Female', 8, 2, 9, '2022-06-16 16:49:46', NULL, 0, NULL),
(130, 'Vòng tay Vàng trắng 10K đính đá ECZ PNJ Hoa Hồng - F15', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Lấy cảm hứng vẻ kiêu sa, ngọt ngào của hoa hồng, xu hướng thời trang thế giới,&nbsp;</span><a href=\"https://www.pnj.com.vn/bo-suu-tap-trang-suc/trang-suc-vang/hoa-hong-rose/\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; color: rgb(51, 122, 183); outline: none; cursor: pointer; transition: all 150ms ease 0s; text-align: justify;\">BST Rose PNJ</a><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">&nbsp;bao gồm các thiết kế cách điệu từ hình ảnh hoa hồng, sử dụng đá ECZ Swarovski thời thượng, ngọc trai không chỉ tôn vẻ đẹp, nét quyến rũ, nữ tính, mà còn ca ngợi tâm hôn tươi trẻ luôn thu hút, tỏa ngát hương của người phụ nữ.</span></p><p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">Mang vẻ đẹp thuần khiết và dịu dàng, quyến rũ và kiêu sa, họa tiết hoa hồng đang được các tín đồ thời trang tận dụng triệt để trong mỗi phong cách mix &amp; match.&nbsp;</span><a href=\"https://www.pnj.com.vn/trang-suc-vang/vong-tay/?features_hash=46-69329\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: rgb(51, 122, 183); outline: none; cursor: pointer; transition: all 150ms ease 0s; text-align: justify;\">Vòng tay PNJ vàng trắng 10K đính đá ECZ</a><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;được thổi hồn sống động không chỉ thể hiện ở những đường nét bay bổng trong kiểu dáng mà còn là sự pha trộn sắc màu độc đáo những viên đá quý lấp lánh, uốn lượn theo đường cong mềm mại của dáng hoa, đan xen hài hòa chất liệu vàng trắng 10K tinh khiết là quà tặng ý nghĩa giúp phái đẹp tỏa sáng và khẳng định phong cách riêng.</span><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\"><br></span><br></p>', './public/img/product/f15-1.png', 713.8, 'Female', 8, 2, 3, '2022-06-16 16:51:31', NULL, 0, NULL);
INSERT INTO `product` (`id`, `title`, `description`, `thumbnail`, `price`, `gender`, `category_id`, `brand_id`, `material_id`, `created_at`, `updated_at`, `soft_delete`, `deleted_at`) VALUES
(131, 'Vòng tay bạc PNJSilver Friendzone Breaker hình chữ Love - F16', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Xuất phát từ câu chuyện “Vành đai tình bạn” khi các bạn trẻ vẫn còn lưỡng lự, ngập ngừng khép mình trong vành đai an toàn của lý thuyết được gọi là tình bạn, hay mở rộng ra là sự tranh đấu “Tấn công/ chủ động hay chờ đợi?!”, Friendzone Breaker của PNJSilver từ đó mà ra đời, cổ vũ các bạn trẻ đừng ngại ngần “phá tan” những rào cản còn níu chân các bạn bấy lâu. Lần này, PNJSiver vẫn ưu ái cho khả năng Mix &amp; Match để tạo nên phong cách thời trang riêng theo cá tính của các nàng. Phác thảo thiết kế dựa trên những icon nhỏ xinh như trái tim, chìa khóa hay các hình khối thời trang, các biểu tượng của mùa xuân, kết hợp cùng ngọc trai nhỏ theo trend Minimalist, Friendzone Breaker trở thành những phiên bản trang sức thời trang giúp các bạn trẻ “sốc” lại phong độ, phá bỏ mọi rào cản để sống trẻ từng phút giây.</span></p><p><a href=\"https://www.pnj.com.vn/trang-suc-bac/?features_hash=38-19893\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: rgb(51, 122, 183); outline: none; cursor: pointer; transition: all 150ms ease 0s; text-align: justify;\">Vòng đeo tay</a><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;không chỉ là món trang sức dành cho các nàng nữa, ngày nay nó còn thể tạo nên điểm nhấn ấn tượng và đặc trưng riêng của các anh chàng. Với bộ sưu tập Friendzone Breaker xuất phát từ câu chuyện “Vành đai tình bạn” khi các bạn trẻ vẫn còn lưỡng lự, ngập ngừng khép mình trong vành đai an toàn của lý thuyết được gọi là tình bạn, hay mở rộng ra là sự tranh đấu “Tấn công/ chủ động hay chờ đợi?!”, các anh chàng của PNJSilver đừng ngại ngần “phá tan” những rào cản còn níu chân các bạn bấy lâu để tạo nên bước đột phá cho mùa yêu của năm nay nhé.</span></p><p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">Friendzone Breaker không chỉ nằm gọn trong ý nghĩa “Friendzone” như tên gọi của mình. Nghĩa bóng, nghĩa rộng, “zone” đó như những giới hạn quanh cuộc sống của các bạn trẻ, giới hạn yêu, giới hạn mơ, giới hạn của những sáng tạo, hay giới hạn chính bạn, do bạn tạo ra.</span><br style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">Vậy thì còn chần chờ gì nữa với&nbsp;</span><a href=\"https://www.pnj.com.vn/bo-suu-tap-trang-suc/trang-suc-bac/friendzone-breaker/\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: rgb(51, 122, 183); outline: none; cursor: pointer; transition: all 150ms ease 0s; text-align: justify;\">Frienzone Breaker</a><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;cho dịp năm mới này, các nàng và chàng hãy trang bị thêm cho mình những món phụ kiện, chủ động trong phong cách để tạo nên phong cách thời trang riêng của chính mình.</span><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\"><br></span><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\"><br></span><br></p>', './public/img/product/f16-1.png', 36.65, 'Female', 8, 3, 8, '2022-06-16 16:53:22', NULL, 0, NULL),
(132, 'Vòng tay hợp kim cao cấp đính đá STYLE By PNJ - F17', '', './public/img/product/f17-1.png', 52.25, 'Female', 8, 1, 7, '2022-06-16 16:54:27', NULL, 0, NULL),
(133, 'Vòng tay hợp kim cao cấp đính đá PNJ STYLE x CHOU CHOU - F18', 'Khoác lên vẻ cuốn hút, chiếc vòng tay&nbsp;&nbsp;PNJ STYLE x CHOU CHOU với điểm nhấn ngọc trai chỉ là trang sức tôn lên vẻ đẹp kiêu sa mà còn giúp chủ nhân thể hiện cá tính riêng. Thiết kế được lấy cảm hứng từ Chân Bùi là biển tượng của giới trẻ, vượt qua các trở ngại để khẳng định cá tính theo cách riêng, không giống với bất kì hình mẫu nào.', './public/img/product/f18-1.png', 54.75, 'Female', 8, 1, 7, '2022-06-16 16:58:38', NULL, 0, NULL),
(134, 'Vòng tay cưới Vàng 24K PNJ - F19', '<div style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><p style=\"margin-bottom: 0px; padding-top: 6px; padding-bottom: 6px;\">Chiếc&nbsp;<a href=\"https://www.pnj.com.vn/lac-vong-tay/vong-tay/vong-tay-vang/?itm_source=pdp&amp;itm_medium=vongtayvang&amp;itm_campaign=&amp;itm_content=\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(21, 0, 221); outline: none; cursor: pointer; transition: all 150ms ease 0s;\">vòng tay PNJ</a>&nbsp;sở hữu sự cứng cáp của vàng 24K được chế tác tinh xảo, tạo nên sự sáng bóng và sang trọng. Với thiết kế độc lạ cùng ánh kim sắc sảo, sản phẩm sẽ tôn lên vẻ đẹp của các quý cô.</p></div><div style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><p style=\"margin-bottom: 0px; padding-top: 6px; padding-bottom: 6px;\">Thêm vào đó, với thiết kế tinh xảo của vòng tay, nàng sẽ bất ngờ khi phối với áo dài đỏ trong ngày trọng đại. Với các điểm nhấn trên sản phẩm, PNJ tin rằng nàng sẽ trở nên thật sự tỏa sáng và nổi bật khi trưng diện chúng.</p></div>', './public/img/product/f19-1.png', 588.9, 'Female', 8, 2, 11, '2022-06-16 17:01:11', NULL, 0, NULL),
(135, 'Vòng tay Vàng trắng 14K đính ngọc trai Akoya - F20', 'Tận dụng vẻ nữ tính của Ngọc trai Akoya - loại đá quý dịu dàng, cùng sự tinh xảo của vàng 14K, PNJ đã mang đến tuyệt tác vòng tay với phong thái thanh tao và giúp nàng phô bày phong cách thời thượng.', './public/img/product/f20-1.png', 1825.55, 'Female', 8, 2, 6, '2022-06-16 17:03:54', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_gemstone`
--

CREATE TABLE `product_gemstone` (
  `product_id` int(11) DEFAULT NULL,
  `gemstone_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_gemstone`
--

INSERT INTO `product_gemstone` (`product_id`, `gemstone_id`) VALUES
(17, 6),
(18, 7),
(19, 7),
(20, 7),
(21, 8),
(22, 7),
(23, 7),
(25, 8),
(26, 8),
(27, 6),
(28, 6),
(29, 8),
(30, 7),
(31, 7),
(32, 10),
(33, 7),
(34, 9),
(35, 7),
(36, 8),
(37, 6),
(38, 11),
(39, 6),
(40, 2),
(41, 6),
(42, 6),
(43, 6),
(44, 12),
(45, 1),
(46, 6),
(47, 6),
(48, 6),
(49, 10),
(50, 10),
(51, 10),
(52, 6),
(53, 6),
(54, 7),
(55, 6),
(56, 7),
(57, 6),
(58, 6),
(59, 6),
(60, 6),
(61, 6),
(62, 6),
(63, 6),
(64, 6),
(65, 6),
(66, 6),
(67, 6),
(68, 6),
(69, 6),
(70, 6),
(71, 6),
(72, 6),
(73, 6),
(74, 6),
(75, 6),
(76, 7),
(77, 7),
(78, 7),
(79, 7),
(80, 7),
(81, 7),
(82, 7),
(85, 7),
(91, 7),
(92, 7),
(93, 7),
(95, 7),
(96, 8),
(97, 7),
(98, 7),
(101, 11),
(102, 8),
(104, 13),
(105, 7),
(106, 7),
(107, 7),
(108, 7),
(109, 7),
(112, 8),
(113, 14),
(114, 13),
(115, 7),
(116, 1),
(117, 2),
(119, 1),
(124, 7),
(126, 7),
(129, 7),
(130, 9),
(132, 7),
(133, 15),
(134, 6),
(135, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `canceled_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_order`
--

INSERT INTO `product_order` (`id`, `account_id`, `note`, `order_date`, `status`, `canceled_at`) VALUES
(1, 2, 'mong cửa hàng tiện đường ship cho phần ăn trưa tôi đã đặt ở cửa hàng abc', '2022-06-08 15:16:55', 'Ordered successfully', NULL),
(3, 2, 'tôi muốn thanh toán tại cửa hàng', '2022-06-15 17:36:50', 'ordered successfully', NULL),
(6, 3, 'tôi muốn nhận hàng và thanh toán tại nhà. vui lòng ship giúp tôi', '2022-06-15 18:00:25', 'Ordered successfully', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_size`
--

CREATE TABLE `product_size` (
  `product_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_size`
--

INSERT INTO `product_size` (`product_id`, `size_id`) VALUES
(17, 7),
(17, 9),
(19, 6),
(19, 7),
(19, 8),
(19, 9),
(20, 5),
(20, 6),
(20, 7),
(20, 8),
(20, 9),
(21, 14),
(22, 5),
(22, 6),
(22, 7),
(22, 8),
(22, 9),
(22, 11),
(22, 12),
(22, 14),
(22, 25),
(22, 26),
(23, 5),
(23, 6),
(23, 7),
(23, 8),
(23, 9),
(23, 10),
(23, 11),
(23, 12),
(23, 15),
(23, 25),
(23, 26),
(25, 5),
(25, 6),
(25, 7),
(25, 8),
(25, 9),
(25, 10),
(25, 11),
(25, 12),
(25, 14),
(25, 25),
(25, 26),
(25, 27),
(25, 28),
(26, 8),
(26, 10),
(26, 11),
(26, 12),
(26, 14),
(26, 15),
(26, 16),
(26, 17),
(26, 18),
(26, 19),
(26, 20),
(27, 5),
(27, 6),
(27, 7),
(27, 8),
(27, 9),
(27, 26),
(28, 5),
(28, 6),
(28, 7),
(28, 8),
(28, 9),
(29, 10),
(29, 11),
(29, 12),
(29, 14),
(29, 15),
(29, 16),
(30, 6),
(30, 7),
(30, 8),
(30, 9),
(31, 5),
(31, 6),
(31, 7),
(31, 8),
(31, 9),
(32, 5),
(32, 6),
(32, 7),
(32, 8),
(32, 10),
(32, 26),
(33, 5),
(33, 6),
(33, 7),
(33, 8),
(33, 9),
(33, 10),
(33, 12),
(33, 15),
(33, 26),
(34, 5),
(34, 6),
(34, 7),
(34, 8),
(34, 9),
(34, 10),
(34, 11),
(34, 12),
(34, 14),
(34, 15),
(34, 16),
(34, 17),
(34, 18),
(34, 25),
(34, 26),
(35, 5),
(35, 6),
(35, 7),
(35, 8),
(35, 9),
(35, 10),
(35, 11),
(35, 12),
(35, 14),
(35, 15),
(35, 16),
(35, 17),
(35, 18),
(35, 25),
(35, 26),
(36, 5),
(36, 6),
(36, 7),
(36, 8),
(36, 9),
(36, 10),
(36, 11),
(36, 12),
(36, 14),
(36, 15),
(36, 16),
(36, 17),
(36, 18),
(37, 29),
(38, 29),
(38, 30),
(38, 32),
(38, 33),
(39, 29),
(40, 29),
(40, 32),
(41, 32),
(42, 29),
(43, 32),
(44, 29),
(44, 32),
(45, 29),
(45, 32),
(46, 35),
(46, 37),
(47, 30),
(47, 31),
(47, 32),
(48, 32),
(49, 29),
(49, 32),
(49, 33),
(50, 37),
(51, 29),
(51, 32),
(51, 33),
(52, 29),
(53, 32),
(54, 29),
(54, 32),
(54, 33),
(54, 34),
(54, 35),
(54, 36),
(55, 29),
(55, 32),
(55, 33),
(56, 29),
(56, 32),
(56, 33),
(57, 38),
(57, 39),
(57, 40),
(57, 41),
(57, 42),
(57, 43),
(57, 44),
(57, 45),
(58, 38),
(58, 39),
(58, 40),
(58, 41),
(58, 42),
(58, 43),
(58, 44),
(58, 45),
(59, 38),
(59, 39),
(59, 40),
(59, 41),
(59, 42),
(59, 43),
(59, 44),
(59, 45),
(60, 38),
(60, 39),
(60, 40),
(60, 41),
(60, 42),
(60, 43),
(60, 44),
(60, 45),
(61, 38),
(61, 39),
(61, 40),
(61, 41),
(61, 42),
(61, 43),
(61, 44),
(61, 45),
(62, 38),
(62, 39),
(62, 40),
(62, 41),
(62, 42),
(62, 43),
(62, 44),
(62, 45),
(63, 38),
(63, 39),
(63, 40),
(63, 41),
(63, 42),
(63, 43),
(63, 44),
(63, 45),
(64, 38),
(64, 39),
(64, 40),
(64, 41),
(64, 42),
(64, 43),
(64, 44),
(64, 45),
(65, 38),
(65, 39),
(65, 40),
(65, 41),
(65, 42),
(65, 44),
(65, 45),
(66, 38),
(66, 39),
(66, 40),
(66, 41),
(66, 42),
(66, 43),
(66, 44),
(66, 45),
(67, 38),
(67, 39),
(67, 41),
(67, 42),
(67, 43),
(67, 44),
(67, 45),
(68, 38),
(68, 41),
(68, 42),
(68, 43),
(68, 45),
(69, 38),
(69, 41),
(69, 42),
(69, 43),
(69, 45),
(70, 38),
(70, 39),
(70, 41),
(70, 42),
(70, 43),
(70, 44),
(70, 45),
(71, 38),
(71, 41),
(71, 42),
(71, 43),
(71, 45),
(72, 38),
(72, 41),
(72, 42),
(72, 43),
(72, 45),
(73, 38),
(73, 41),
(73, 42),
(73, 43),
(73, 45),
(74, 41),
(75, 41),
(116, 54),
(116, 55),
(116, 56),
(116, 57),
(116, 58),
(116, 59),
(116, 61),
(116, 62),
(117, 54),
(117, 55),
(117, 56),
(117, 57),
(117, 58),
(117, 60),
(118, 46),
(118, 47),
(118, 48),
(118, 49),
(118, 50),
(118, 51),
(118, 52),
(119, 54),
(119, 55),
(119, 56),
(119, 57),
(119, 58),
(120, 53),
(120, 54),
(120, 55),
(120, 56),
(120, 57),
(120, 58),
(120, 59),
(120, 60),
(120, 61),
(120, 62),
(120, 63),
(121, 46),
(121, 47),
(121, 48),
(121, 50),
(121, 52),
(122, 46),
(122, 47),
(122, 48),
(122, 50),
(122, 52),
(123, 55),
(123, 56),
(123, 57),
(123, 58),
(124, 55),
(124, 56),
(124, 57),
(124, 58),
(124, 62),
(125, 47),
(125, 48),
(125, 50),
(125, 51),
(125, 52),
(126, 53),
(126, 54),
(126, 55),
(126, 56),
(126, 57),
(126, 58),
(126, 59),
(126, 60),
(127, 47),
(127, 48),
(127, 50),
(127, 51),
(127, 52),
(128, 55),
(128, 56),
(128, 57),
(128, 58),
(128, 59),
(129, 54),
(129, 55),
(129, 56),
(129, 57),
(129, 58),
(129, 59),
(130, 54),
(130, 55),
(130, 56),
(130, 57),
(130, 58),
(130, 59),
(131, 53),
(131, 54),
(131, 55),
(131, 56),
(131, 57),
(131, 58),
(132, 57),
(133, 63),
(134, 55),
(134, 56),
(134, 57),
(135, 56),
(135, 57);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`id`, `size`, `category_id`) VALUES
(5, '9', 1),
(6, '10', 1),
(7, '11', 1),
(8, '12', 1),
(9, '13', 1),
(10, '14', 1),
(11, '15', 1),
(12, '16', 1),
(14, '18', 1),
(15, '19', 1),
(16, '20', 1),
(17, '21', 1),
(18, '22', 1),
(19, '23', 1),
(20, '24', 1),
(23, '9', 6),
(24, '27', 1),
(25, '7', 1),
(26, '8', 1),
(27, '5', 1),
(28, '6', 1),
(29, '17', 4),
(30, '14', 4),
(31, '15', 4),
(32, '16', 4),
(33, '18', 4),
(34, '22', 4),
(35, '23', 4),
(36, '24', 4),
(37, '25', 4),
(38, '14', 6),
(39, '36', 6),
(40, '38', 6),
(41, '40', 6),
(42, '42', 6),
(43, '43', 6),
(44, '44', 6),
(45, '45', 6),
(46, '38', 8),
(47, '40', 8),
(48, '42', 8),
(49, '43', 8),
(50, '44', 8),
(51, '45', 8),
(52, '46', 8),
(53, '49', 8),
(54, '50', 8),
(55, '51', 8),
(56, '52', 8),
(57, '53', 8),
(58, '54', 8),
(59, '55', 8),
(60, '56', 8),
(61, '57', 8),
(62, '58', 8),
(63, '60', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thumbnail`
--

CREATE TABLE `thumbnail` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thumbnail`
--

INSERT INTO `thumbnail` (`id`, `product_id`, `thumbnail`) VALUES
(27, 17, './public/img/product/a1-2.png'),
(28, 17, './public/img/product/a1-3.png'),
(31, 18, './public/img/product/a2-2.png'),
(32, 18, './public/img/product/a2-3.png'),
(33, 18, './public/img/product/a2-4.jpg'),
(34, 19, './public/img/product/a3-2.png'),
(35, 19, './public/img/product/a3-3.png'),
(36, 19, './public/img/product/a3-4.jpg'),
(37, 20, './public/img/product/a4-2.png'),
(38, 20, './public/img/product/a4-3.png'),
(39, 20, './public/img/product/a4-4.jpg'),
(40, 21, './public/img/product/a5-2.png'),
(41, 21, './public/img/product/a5-3.png'),
(42, 21, './public/img/product/a5-4.jpg'),
(43, 23, './public/img/product/a7-2.png'),
(44, 23, './public/img/product/a7-3.png'),
(45, 23, './public/img/product/a7-4.jpg'),
(47, 24, './public/img/product/a8-2.png'),
(48, 24, './public/img/product/a8-3.png'),
(50, 24, './public/img/product/a8-4.jpg'),
(51, 25, './public/img/product/a9-2.png'),
(52, 25, './public/img/product/a9-3.png'),
(53, 25, './public/img/product/a9-4.jpg'),
(54, 26, './public/img/product/a10-2.png'),
(55, 26, './public/img/product/a10-3.png'),
(56, 26, './public/img/product/a10-4.jpg'),
(57, 27, './public/img/product/a11-2.png'),
(58, 27, './public/img/product/a11-3.png'),
(59, 27, './public/img/product/a11-4.jpg'),
(60, 29, './public/img/product/a13-2.png'),
(61, 29, './public/img/product/a13-3.jpg'),
(62, 30, './public/img/product/a14-2.png'),
(63, 30, './public/img/product/a14-3.png'),
(64, 30, './public/img/product/a14-4.jpg'),
(65, 31, './public/img/product/a15-2.png'),
(66, 31, './public/img/product/a15-3.png'),
(67, 31, './public/img/product/a15-4.jpg'),
(68, 32, './public/img/product/a16-2.png'),
(69, 32, './public/img/product/a16-3.png'),
(70, 32, './public/img/product/a16-4.jpg'),
(71, 33, './public/img/product/a17-2.png'),
(72, 33, './public/img/product/a17-3.png'),
(73, 33, './public/img/product/a17-4.jpg'),
(74, 34, './public/img/product/a18-2.png'),
(75, 34, './public/img/product/a18-3.png'),
(76, 34, './public/img/product/a18-4.jpg'),
(77, 35, './public/img/product/a19-2.png'),
(78, 35, './public/img/product/a19-3.png'),
(79, 36, './public/img/product/a20-2.png'),
(80, 36, './public/img/product/a20-3.png'),
(81, 37, './public/img/product/c1-2.png'),
(82, 37, './public/img/product/c1-3.png'),
(83, 38, './public/img/product/c2-2.png'),
(84, 38, './public/img/product/c2-3.png'),
(85, 39, './public/img/product/c3-2.png'),
(86, 39, './public/img/product/c3-3.jpg'),
(87, 40, './public/img/product/c4-2.png'),
(88, 40, './public/img/product/c4-3.png'),
(89, 40, './public/img/product/c4-4.jpg'),
(90, 41, './public/img/product/c5-2.png'),
(91, 41, './public/img/product/c5-3.png'),
(92, 41, './public/img/product/c5-4.jpg'),
(93, 42, './public/img/product/c6-2.png'),
(94, 42, './public/img/product/c6-3.png'),
(95, 42, './public/img/product/c6-4.jpg'),
(96, 43, './public/img/product/c7-2.png'),
(97, 43, './public/img/product/c7-3.png'),
(98, 43, './public/img/product/c7-4.jpg'),
(99, 44, './public/img/product/c8-2.png'),
(100, 44, './public/img/product/c8-3.png'),
(101, 44, './public/img/product/c8-4.png'),
(102, 46, './public/img/product/c10-2.png'),
(103, 46, './public/img/product/c10-3.png'),
(104, 46, './public/img/product/c10-4.jpg'),
(105, 47, './public/img/product/c11-2.png'),
(106, 47, './public/img/product/c11-3.png'),
(107, 47, './public/img/product/c11-4.jpg'),
(108, 48, './public/img/product/c12-2.png'),
(109, 48, './public/img/product/c12-3.png'),
(111, 48, './public/img/product/c12-4.jpg'),
(112, 49, './public/img/product/c13-2.png'),
(113, 50, './public/img/product/c14-2.png'),
(114, 50, './public/img/product/c14-3.png'),
(115, 51, './public/img/product/c15-2.png'),
(116, 51, './public/img/product/c15-3.png'),
(117, 52, './public/img/product/c16-2.png'),
(118, 52, './public/img/product/c16-3.png'),
(119, 52, './public/img/product/c16-4.jpg'),
(120, 53, './public/img/product/c17-2.png'),
(121, 53, './public/img/product/c17-3.png'),
(122, 53, './public/img/product/c17-4.jpg'),
(123, 54, './public/img/product/c18-2.png'),
(124, 54, './public/img/product/c18-3.png'),
(125, 54, './public/img/product/c18-4.jpg'),
(126, 55, './public/img/product/c19-1.png'),
(127, 55, './public/img/product/c19-3.png'),
(128, 56, './public/img/product/c20-2.png'),
(129, 56, './public/img/product/c20-3.png'),
(130, 56, './public/img/product/c20-4.jpg'),
(131, 57, './public/img/product/e1-2.png'),
(132, 58, './public/img/product/e2-2.png'),
(133, 59, './public/img/product/e3-2.png'),
(134, 60, './public/img/product/e4-2.png'),
(135, 60, './public/img/product/e4-3.png'),
(136, 60, './public/img/product/e4-4.png'),
(137, 61, './public/img/product/e5-2.png'),
(138, 61, './public/img/product/e5-3.jpg'),
(139, 62, './public/img/product/e6-2.png'),
(140, 62, './public/img/product/e6-3.png'),
(141, 62, './public/img/product/e6-4.jpg'),
(142, 63, './public/img/product/e7-2.png'),
(143, 63, './public/img/product/e7-3.jpg'),
(144, 64, './public/img/product/e8-2.png'),
(145, 64, './public/img/product/e8-3.png'),
(146, 64, './public/img/product/e8-4.jpg'),
(147, 65, './public/img/product/e9-2.png'),
(148, 65, './public/img/product/e9-3.jpg'),
(149, 66, './public/img/product/e11-2.png'),
(150, 66, './public/img/product/e11-3.jpg'),
(151, 67, './public/img/product/e12-2.png'),
(152, 67, './public/img/product/e12-3.png'),
(153, 67, './public/img/product/e12-4.jpg'),
(154, 68, './public/img/product/e14-2.png'),
(155, 68, './public/img/product/e14-3.png'),
(156, 68, './public/img/product/e14-4.jpg'),
(157, 69, './public/img/product/e13-2.png'),
(158, 69, './public/img/product/e13-3.png'),
(161, 69, './public/img/product/e13-4.jpg'),
(162, 70, './public/img/product/e15-2.png'),
(163, 70, './public/img/product/e15-3.png'),
(164, 70, './public/img/product/e15-4.jpg'),
(165, 72, './public/img/product/e17-2.png'),
(166, 72, './public/img/product/e17-3.png'),
(167, 72, './public/img/product/e17-4.jpg'),
(168, 73, './public/img/product/e18-2.png'),
(169, 73, './public/img/product/e18-3.png'),
(170, 73, './public/img/product/e18-4.jpg'),
(171, 74, './public/img/product/e19-2.png'),
(172, 74, './public/img/product/e19-3.png'),
(173, 75, './public/img/product/e20-2.png'),
(174, 75, './public/img/product/e20-3.png'),
(175, 78, './public/img/product/b3-2.png'),
(176, 78, './public/img/product/b3-3.jpg'),
(177, 78, './public/img/product/b3-4.jpg'),
(178, 76, './public/img/product/b1-2.png'),
(179, 76, './public/img/product/b1-3.jpg'),
(180, 76, './public/img/product/b1-4.jpg'),
(181, 77, './public/img/product/b2-2.png'),
(182, 77, './public/img/product/b2-3.jpg'),
(183, 77, './public/img/product/b2-4.jpg'),
(184, 79, './public/img/product/b4-2.png'),
(185, 79, './public/img/product/b4-3.jpg'),
(186, 79, './public/img/product/b4-4.jpg'),
(187, 81, './public/img/product/b6-2.png'),
(188, 81, './public/img/product/b6-3.jpg'),
(189, 81, './public/img/product/b6-4.jpg'),
(190, 82, './public/img/product/b7-2.png'),
(191, 82, './public/img/product/b7-3.jpg'),
(192, 82, './public/img/product/b7-4.jpg'),
(193, 83, './public/img/product/b8-2.png'),
(194, 83, './public/img/product/b8-3.jpg'),
(195, 83, './public/img/product/b8-4.jpg'),
(196, 84, './public/img/product/b9-2.png'),
(197, 85, './public/img/product/b10-2.png'),
(198, 85, './public/img/product/b10-3.jpg'),
(199, 85, './public/img/product/b10-4.jpg'),
(200, 86, './public/img/product/b11-2.png'),
(201, 86, './public/img/product/b11-3.jpg'),
(202, 87, './public/img/product/b12-2.png'),
(203, 87, './public/img/product/b12-3.jpg'),
(204, 88, './public/img/product/b13-2.png'),
(205, 88, './public/img/product/b13-3.jpg'),
(206, 89, './public/img/product/b14-2.png'),
(207, 89, './public/img/product/b14-3.jpg'),
(208, 90, './public/img/product/b15-2.png'),
(209, 90, './public/img/product/b15-3.jpg'),
(210, 91, './public/img/product/b16-2.png'),
(211, 91, './public/img/product/b16-3.jpg'),
(212, 91, './public/img/product/b16-4.jpg'),
(213, 92, './public/img/product/b17-2.png'),
(214, 92, './public/img/product/b17-3.jpg'),
(215, 92, './public/img/product/b17-4.jpg'),
(216, 93, './public/img/product/b18-2.png'),
(217, 93, './public/img/product/b18-3.jpg'),
(218, 93, './public/img/product/b18-4.jpg'),
(219, 94, './public/img/product/b19-2.png'),
(220, 94, './public/img/product/b19-3.jpg'),
(221, 95, './public/img/product/b20-2.png'),
(222, 95, './public/img/product/b20-3.jpg'),
(223, 95, './public/img/product/b20-4.jpg'),
(224, 96, './public/img/product/d1-2.png'),
(225, 96, './public/img/product/d1-3.png'),
(226, 96, './public/img/product/d1-4.jpg'),
(227, 97, './public/img/product/d2-2.png'),
(228, 97, './public/img/product/d2-3.png'),
(229, 98, './public/img/product/d3-2.png'),
(230, 98, './public/img/product/d3-3.png'),
(231, 98, './public/img/product/d3-4.jpg'),
(232, 99, './public/img/product/d4-2.png'),
(233, 99, './public/img/product/d4-3.png'),
(234, 100, './public/img/product/d5-2.png'),
(235, 100, './public/img/product/d5-3.png'),
(236, 101, './public/img/product/d6-2.png'),
(237, 101, './public/img/product/d6-3.png'),
(238, 101, './public/img/product/d6-4.jpg'),
(239, 102, './public/img/product/d7-2.png'),
(240, 102, './public/img/product/d7-3.png'),
(241, 102, './public/img/product/d7-4.jpg'),
(242, 103, './public/img/product/d8-2.png'),
(243, 103, './public/img/product/d8-3.png'),
(244, 103, './public/img/product/d8-4.jpg'),
(245, 104, './public/img/product/d9-2.png'),
(246, 104, './public/img/product/d9-3.png'),
(247, 105, './public/img/product/d10-2.png'),
(248, 105, './public/img/product/d10-3.png'),
(249, 106, './public/img/product/d11-3.png'),
(250, 106, './public/img/product/d11-4.jpg'),
(251, 107, './public/img/product/d12-3.png'),
(252, 107, './public/img/product/d12-4.jpg'),
(253, 108, './public/img/product/d13-3.png'),
(254, 108, './public/img/product/d13-4.jpg'),
(255, 109, './public/img/product/d14-3.png'),
(256, 109, './public/img/product/d14-4.jpg'),
(257, 110, './public/img/product/d15-2.png'),
(258, 110, './public/img/product/d15-3.png'),
(259, 110, './public/img/product/d15-4.jpg'),
(260, 112, './public/img/product/d17-2.png'),
(261, 112, './public/img/product/d17-3.png'),
(262, 112, './public/img/product/d17-4.jpg'),
(263, 113, './public/img/product/d18-2.png'),
(264, 113, './public/img/product/d18-3.png'),
(265, 113, './public/img/product/d18-4.jpg'),
(266, 114, './public/img/product/d19-2.png'),
(267, 114, './public/img/product/d19-3.png'),
(268, 114, './public/img/product/d19-4.jpg'),
(269, 115, './public/img/product/d20-2.png'),
(270, 115, './public/img/product/d20-3.png'),
(271, 115, './public/img/product/d20-4.jpg'),
(272, 17, './public/img/product/a1-4.jpg'),
(273, 116, './public/img/product/f1-2.png'),
(274, 118, './public/img/product/f3-2.png'),
(275, 118, './public/img/product/f3-3.png'),
(276, 118, './public/img/product/f3-4.jpg'),
(277, 120, './public/img/product/f5-2.png'),
(278, 121, './public/img/product/f6-2.png'),
(279, 121, './public/img/product/f6-3.png'),
(280, 121, './public/img/product/f6-4.jpg'),
(281, 122, './public/img/product/f7-2.png'),
(282, 122, './public/img/product/f7-3.png'),
(283, 122, './public/img/product/f7-4.png'),
(284, 124, './public/img/product/f9-2.png'),
(285, 125, './public/img/product/f10-2.png'),
(286, 125, './public/img/product/f10-3.png'),
(287, 125, './public/img/product/f10-4.jpg'),
(288, 127, './public/img/product/f12-2.png'),
(289, 127, './public/img/product/f12-3.png'),
(290, 127, './public/img/product/f12-4.jpg'),
(292, 128, './public/img/product/f13-2.png'),
(293, 128, './public/img/product/f13-3.png'),
(294, 128, './public/img/product/f13-4.jpg'),
(295, 129, './public/img/product/f14-2.png'),
(296, 129, './public/img/product/f14-3.png'),
(297, 130, './public/img/product/f15-2.jpg'),
(298, 131, './public/img/product/f16-2.png'),
(299, 131, './public/img/product/f16-3.png'),
(300, 131, './public/img/product/f16-4.jpg'),
(301, 132, './public/img/product/f17-2.png'),
(302, 132, './public/img/product/f17-3.jpg'),
(303, 133, './public/img/product/f18-2.png'),
(304, 133, './public/img/product/f18-3.png'),
(305, 133, './public/img/product/f18-4.jpg'),
(306, 134, './public/img/product/f19-2.png'),
(307, 135, './public/img/product/f20-2.png');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brand_name` (`brand_name`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gemstone`
--
ALTER TABLE `gemstone`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gemstone_name` (`gemstone_name`);

--
-- Chỉ mục cho bảng `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `material_name` (`material_name`);

--
-- Chỉ mục cho bảng `material_detail`
--
ALTER TABLE `material_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `material_id` (`material_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `material_id` (`material_id`);

--
-- Chỉ mục cho bảng `product_gemstone`
--
ALTER TABLE `product_gemstone`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `gemstone_id` (`gemstone_id`);

--
-- Chỉ mục cho bảng `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Chỉ mục cho bảng `product_size`
--
ALTER TABLE `product_size`
  ADD KEY `size_id` (`size_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `thumbnail`
--
ALTER TABLE `thumbnail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `gemstone`
--
ALTER TABLE `gemstone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `material_detail`
--
ALTER TABLE `material_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT cho bảng `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `thumbnail`
--
ALTER TABLE `thumbnail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `account_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Các ràng buộc cho bảng `material_detail`
--
ALTER TABLE `material_detail`
  ADD CONSTRAINT `material_detail_ibfk_1` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `product_order` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `product_ibfk_5` FOREIGN KEY (`material_id`) REFERENCES `material_detail` (`id`);

--
-- Các ràng buộc cho bảng `product_gemstone`
--
ALTER TABLE `product_gemstone`
  ADD CONSTRAINT `product_gemstone_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `product_gemstone_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `product_gemstone_ibfk_3` FOREIGN KEY (`gemstone_id`) REFERENCES `gemstone` (`id`),
  ADD CONSTRAINT `product_gemstone_ibfk_4` FOREIGN KEY (`gemstone_id`) REFERENCES `gemstone` (`id`);

--
-- Các ràng buộc cho bảng `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `product_order_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `product_size`
--
ALTER TABLE `product_size`
  ADD CONSTRAINT `product_size_ibfk_1` FOREIGN KEY (`size_id`) REFERENCES `size` (`id`);

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `size_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `thumbnail`
--
ALTER TABLE `thumbnail`
  ADD CONSTRAINT `thumbnail_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




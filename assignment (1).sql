-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2025-05-05 11:09:23
-- 服务器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `assignment`
--

-- --------------------------------------------------------

--
-- 表的结构 `account`
--

CREATE TABLE `account` (
  `MemberID` char(16) NOT NULL,
  `Password` varchar(35) NOT NULL,
  `Gender` char(1) NOT NULL,
  `Name` varchar(35) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Phoneno` varchar(11) DEFAULT NULL,
  `Deletedate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `account`
--

INSERT INTO `account` (`MemberID`, `Password`, `Gender`, `Name`, `Email`, `Phoneno`, `Deletedate`) VALUES
('1234567qwer', 'Koay1234', 'M', 'koay', 'koay@gmail.com', '', NULL),
('aA111', 'Aa1234567', 'M', 'Hwai Earn', 'wonghe-pm23@student.tarc.edu.my', '0111111111', NULL),
('binxian1', 'Bb123456', 'M', 'Bin Xian', 'binxian@gmail.com', '01723875641', NULL),
('cheng123', 'Cc123456', 'M', 'Yu Hang', 'chengyh-pm23@student.tarc.edu.my', NULL, NULL),
('hwaiearn459', 'Hh123456', 'M', 'Earn', 'earn@gmail.com', NULL, NULL),
('jiaxuan1', 'Jj123456', 'M', 'Jia Xuan', 'chaujx-pm23@student.tarc.edu.my', '0124567854', NULL),
('john123', 'Jj123456', 'M', 'John', 'john@gmail.com', NULL, NULL),
('kenma123', 'Kk123456', 'M', 'Kenma', 'kenma@gmail.com', NULL, NULL),
('liew123', 'Ll123456', 'M', 'Jian Bing', 'liewjianbing@gmail.com', '0176154738', '2024-05-19'),
('mirage12', 'Mm123456', 'M', 'Mirage', 'mirage@gmail.com', NULL, NULL),
('mordex12', 'Mm123456', 'M', 'Mordex', 'mordex@gmail.ccom', NULL, NULL),
('nix911', 'Nn123456', 'F', 'Nix', 'nix@gmail.com', NULL, NULL),
('oikawa12', 'Oo123456', 'M', 'Oikawa', 'oikawa@gmail.com', NULL, NULL),
('parker12', 'Pp123456', 'M', 'Parker', 'parker@gmail.com', NULL, NULL),
('peter123', 'Pp123456', 'M', 'Peter', 'peter@gmail.com', NULL, NULL),
('sasuke12', 'Ss123456', 'M', 'Sasuke', 'sasuke@gmail.com', NULL, NULL),
('wanching', 'Ww123456', 'F', 'Wan Ching', 'wanching@gmail.com', NULL, NULL),
('wonghe', 'Ww123456', 'M', 'Wong Hwai Earn', 'wonghwaiearn459@gmail.com', NULL, NULL),
('wushang1', 'Ww123456', 'M', 'Wu Shang', 'wushang@gmail.com', NULL, NULL),
('yanzhe12', 'Yy123456', 'M', 'Yan Zhe', 'yzchan-pm23@student.tarc.edu.my', NULL, NULL),
('yingzhi1', 'Yy123456', 'F', 'Ying Zhi', 'chanyz-pm23@student.tarc.edu.my', NULL, NULL),
('yunxin12', 'Yy123456', 'M', 'Yun Xin', 'limyx-pm23@student.tarc.edu.my', NULL, NULL),
('zehan123', 'Zz123456', 'M', 'Ze Han', 'koayzh-pm23@student.tarc.edu.my', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `member`
--

CREATE TABLE `member` (
  `MemberID` char(16) NOT NULL,
  `Password` varchar(35) NOT NULL,
  `Gender` char(1) NOT NULL,
  `Name` varchar(35) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Phoneno` varchar(11) DEFAULT NULL,
  `img_path` varchar(255) NOT NULL DEFAULT 'avatar1.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `member`
--

INSERT INTO `member` (`MemberID`, `Password`, `Gender`, `Name`, `Email`, `Phoneno`, `img_path`) VALUES
('1234567qwer', 'Koay1234', 'M', 'koay', 'koay@gmail.com', '', 'avatar1.png'),
('aA111', 'Aa1234567', 'M', 'Hwai Earn', 'wonghe-pm23@student.tarc.edu.my', '0111111111', 'avatar.jpeg'),
('binxian1', 'Bb123456', 'M', 'Bin Xian', 'binxian@gmail.com', '01723875641', 'avatar1.png'),
('cheng123', 'Cc123456', 'M', 'Yu Hang', 'chengyh-pm23@student.tarc.edu.my', NULL, 'avatar1.png'),
('hwaiearn459', 'Hh123456', 'M', 'Earn', 'earn@gmail.com', NULL, 'avatar1.png'),
('jiaxuan1', 'Jj123456', 'M', 'Jia Xuan', 'chaujx-pm23@student.tarc.edu.my', '0124567854', 'avatar1.png'),
('john123', 'Jj123456', 'M', 'John', 'john@gmail.com', NULL, 'avatar1.png'),
('kenma123', 'Kk123456', 'M', 'Kenma', 'kenma@gmail.com', NULL, 'avatar1.png'),
('mirage12', 'Mm123456', 'M', 'Mirage', 'mirage@gmail.com', NULL, 'avatar1.png'),
('mordex12', 'Mm123456', 'M', 'Mordex', 'mordex@gmail.ccom', NULL, 'avatar1.png'),
('nix911', 'Nn123456', 'F', 'Nix', 'nix@gmail.com', NULL, 'avatar1.png'),
('oikawa12', 'Oo123456', 'M', 'Oikawa', 'oikawa@gmail.com', NULL, 'avatar1.png'),
('parker12', 'Pp123456', 'M', 'Parker', 'parker@gmail.com', NULL, 'avatar1.png'),
('peter123', 'Pp123456', 'M', 'Peter', 'peter@gmail.com', NULL, 'avatar1.png'),
('sasuke12', 'Ss123456', 'M', 'Sasuke', 'sasuke@gmail.com', NULL, 'avatar1.png'),
('wanching', 'Ww123456', 'F', 'Wan Ching', 'wanching@gmail.com', NULL, 'avatar1.png'),
('wonghe', 'Ww123456', 'M', 'Wong Hwai Earn', 'wonghwaiearn459@gmail.com', NULL, 'avatar1.png'),
('wushang1', 'Ww123456', 'M', 'Wu Shang', 'wushang@gmail.com', NULL, 'avatar1.png'),
('yanzhe12', 'Yy123456', 'M', 'Yan Zhe', 'yzchan-pm23@student.tarc.edu.my', NULL, 'avatar1.png'),
('yingzhi1', 'Yy123456', 'F', 'Ying Zhi', 'chanyz-pm23@student.tarc.edu.my', NULL, 'avatar1.png'),
('yunxin12', 'Yy123456', 'M', 'Yun Xin', 'limyx-pm23@student.tarc.edu.my', NULL, 'avatar1.png'),
('zehan123', 'Zz123456', 'M', 'Ze Han', 'koayzh-pm23@student.tarc.edu.my', NULL, 'avatar1.png');

-- --------------------------------------------------------

--
-- 表的结构 `order`
--

CREATE TABLE `order` (
  `bookingid` int(11) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `qty` int(255) NOT NULL,
  `payment_meth` varchar(255) NOT NULL,
  `member_id` char(16) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `order`
--

INSERT INTO `order` (`bookingid`, `total_amount`, `qty`, `payment_meth`, `member_id`, `created_at`) VALUES
(96, 0.00, 4, 'qr_code', '24M11111', '2025-05-04'),
(97, 0.00, 2, 'credit_card', '24M11111', '2025-05-04'),
(99, 0.00, 4, 'credit_card', '24M11111', '2025-05-04'),
(100, 0.00, 3, 'debit_card', '24M11111', '2025-05-04'),
(102, 0.00, 3, 'paypal', '24M11111', '2025-05-04'),
(104, 0.00, 3, 'paypal', '24M11111', '2025-05-04'),
(105, 0.00, 6, 'paypal', '24M11111', '2025-05-04'),
(107, 0.00, 3, 'paypal', '24M11111', '2025-05-04'),
(109, 0.00, 3, 'qr_code', '24M11111', '2025-05-04'),
(110, 0.00, 21, 'credit_card', '24M11111', '2025-05-04'),
(114, 0.00, 3, 'credit_card', '24M11111', '2025-05-04'),
(123, 0.00, 3, 'credit_card', '24M00001', '2025-05-04'),
(124, 0.00, 1, 'tng', '1234567q', '2025-05-04'),
(125, 0.00, 1, 'tng', '1234567q', '2025-05-04'),
(126, 49.99, 1, 'debit_card', '1234567q', '2025-05-04'),
(127, 49.99, 1, 'credit_card', '1234567q', '2025-05-04'),
(128, 64.99, 2, 'credit_card', '1234567q', '2025-05-04'),
(129, 64.99, 2, 'credit_card', '1234567q', '2025-05-04'),
(130, 64.99, 2, 'credit_card', '1234567q', '2025-05-04'),
(131, 49.99, 1, 'qr_code', '1234567q', '2025-05-04'),
(132, 99.98, 2, 'cash', '1234567q', '2025-05-04'),
(133, 15.00, 1, 'cash', '1234567q', '2025-05-04'),
(134, 49.99, 1, 'credit_card', '1234567q', '2025-05-04'),
(135, 15.00, 1, 'credit_card', '1234567q', '2025-05-04'),
(136, 49.99, 1, 'credit_card', '1234567q', '2025-05-04'),
(137, 49.99, 1, 'credit_card', '1234567q', '2025-05-04'),
(138, 49.99, 1, 'credit_card', '1234567q', '2025-05-04'),
(139, 49.99, 1, 'credit_card', '1234567q', '2025-05-04'),
(140, 49.99, 1, 'credit_card', '1234567q', '2025-05-04'),
(141, 15.00, 1, 'credit_card', '1234567q', '2025-05-04'),
(142, 49.99, 1, 'credit_card', '1234567q', '2025-05-04'),
(143, 49.99, 1, 'credit_card', '1234567qwer', '2025-05-04'),
(144, 15.00, 1, 'credit_card', '1234567qwer', '2025-05-04'),
(145, 15.00, 1, 'credit_card', '1234567qwer', '2025-05-04'),
(146, 99.98, 2, 'tng', '1234567qwer', '2025-05-04'),
(147, 127.53, 1, 'cash', '1234567qwer', '2025-05-04'),
(148, 657.65, 2, 'credit_card', '1234567qwer', '2025-05-04'),
(149, 336.06, 3, 'credit_card', '1234567qwer', '2025-05-04'),
(150, 127.53, 1, 'credit_card', '1234567qwer', '2025-05-04'),
(151, 127.53, 1, 'tng', '1234567qwer', '2025-05-04'),
(152, 255.06, 2, 'credit_card', '1234567qwer', '2025-05-04'),
(153, 40.24, 1, 'paypal', '1234567qwer', '2025-05-04'),
(154, 153.64, 2, 'tng', '1234567qwer', '2025-05-05');

-- --------------------------------------------------------

--
-- 表的结构 `orderitems`
--

CREATE TABLE `orderitems` (
  `orderitem_id` int(11) NOT NULL,
  `bookingid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `orderitems`
--

INSERT INTO `orderitems` (`orderitem_id`, `bookingid`, `product_id`, `quantity`, `unit_price`, `subtotal`, `created_at`) VALUES
(1, 126, 10, 1, 49.99, 49.99, '2025-05-04 08:03:17'),
(2, 127, 10, 1, 49.99, 49.99, '2025-05-04 08:09:18'),
(3, 128, 10, 1, 49.99, 49.99, '2025-05-04 08:10:37'),
(5, 129, 10, 1, 49.99, 49.99, '2025-05-04 08:11:51'),
(6, 129, 11, 1, 15.00, 15.00, '2025-05-04 08:11:51'),
(7, 130, 10, 1, 49.99, 49.99, '2025-05-04 08:11:57'),
(8, 130, 11, 1, 15.00, 15.00, '2025-05-04 08:11:57'),
(9, 131, 10, 1, 49.99, 49.99, '2025-05-04 08:12:27'),
(10, 132, 10, 2, 49.99, 99.98, '2025-05-04 08:51:35'),
(11, 133, 11, 1, 15.00, 15.00, '2025-05-04 08:51:59'),
(12, 134, 10, 1, 49.99, 49.99, '2025-05-04 09:01:33'),
(13, 135, 11, 1, 15.00, 15.00, '2025-05-04 09:01:53'),
(14, 136, 10, 1, 49.99, 49.99, '2025-05-04 09:12:54'),
(15, 137, 10, 1, 49.99, 49.99, '2025-05-04 09:16:12'),
(16, 138, 10, 1, 49.99, 49.99, '2025-05-04 09:16:27'),
(17, 139, 10, 1, 49.99, 49.99, '2025-05-04 09:16:38'),
(18, 140, 10, 1, 49.99, 49.99, '2025-05-04 09:17:06'),
(19, 141, 11, 1, 15.00, 15.00, '2025-05-04 09:17:28'),
(20, 142, 10, 1, 49.99, 49.99, '2025-05-04 09:18:06'),
(21, 143, 10, 1, 49.99, 49.99, '2025-05-04 09:22:44'),
(22, 144, 11, 1, 15.00, 15.00, '2025-05-04 09:32:43'),
(23, 145, 11, 1, 15.00, 15.00, '2025-05-04 10:16:38'),
(24, 146, 10, 2, 49.99, 99.98, '2025-05-04 12:33:23'),
(25, 147, 1, 1, 127.53, 127.53, '2025-05-04 13:58:48'),
(26, 148, 2, 1, 40.24, 40.24, '2025-05-04 14:02:40'),
(27, 148, 3, 1, 617.41, 617.41, '2025-05-04 14:02:40'),
(28, 149, 20, 1, 81.00, 81.00, '2025-05-04 14:07:01'),
(29, 149, 1, 2, 127.53, 255.06, '2025-05-04 14:07:01'),
(30, 150, 1, 1, 127.53, 127.53, '2025-05-04 14:09:23'),
(31, 151, 1, 1, 127.53, 127.53, '2025-05-04 14:09:49'),
(32, 152, 1, 2, 127.53, 255.06, '2025-05-04 14:18:00'),
(33, 153, 2, 1, 40.24, 40.24, '2025-05-04 14:33:08'),
(34, 154, 12, 1, 113.40, 113.40, '2025-05-04 16:51:48'),
(35, 154, 2, 1, 40.24, 40.24, '2025-05-04 16:51:48');

-- --------------------------------------------------------

--
-- 表的结构 `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `transaction_date` datetime DEFAULT current_timestamp(),
  `amount` decimal(10,2) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `payments`
--

INSERT INTO `payments` (`payment_id`, `payment_method`, `transaction_date`, `amount`, `transaction_id`) VALUES
(1, 'debit_card', '2025-05-04 16:03:17', 49.99, '68171f45375a4'),
(2, 'credit_card', '2025-05-04 16:09:18', 49.99, '681720aeb0dd4'),
(3, 'credit_card', '2025-05-04 16:11:51', 64.99, '68172147c8b4e'),
(4, 'credit_card', '2025-05-04 16:11:57', 64.99, '6817214de0aaf'),
(5, 'qr_code', '2025-05-04 16:12:27', 49.99, '6817216b874dd'),
(6, 'cash', '2025-05-04 16:51:35', 99.98, '68172a97a72a3'),
(7, 'cash', '2025-05-04 16:51:59', 15.00, '68172aafb02bc'),
(8, 'credit_card', '2025-05-04 17:01:33', 49.99, '68172ced0928f'),
(9, 'credit_card', '2025-05-04 17:01:53', 15.00, '68172d013ef2c'),
(10, 'credit_card', '2025-05-04 17:12:54', 49.99, '68172f9689074'),
(11, 'credit_card', '2025-05-04 17:16:12', 49.99, '6817305cc9bbe'),
(12, 'credit_card', '2025-05-04 17:16:27', 49.99, '6817306b5489f'),
(13, 'credit_card', '2025-05-04 17:16:38', 49.99, '681730764d8d6'),
(14, 'credit_card', '2025-05-04 17:17:06', 49.99, '68173092e17ba'),
(15, 'credit_card', '2025-05-04 17:17:28', 15.00, '681730a83c96f'),
(16, 'credit_card', '2025-05-04 17:18:06', 49.99, '681730ce792e7'),
(17, 'credit_card', '2025-05-04 17:22:44', 49.99, '681731e4c4422'),
(18, 'credit_card', '2025-05-04 17:32:43', 15.00, '6817343b0b7d4'),
(19, 'credit_card', '2025-05-04 18:16:38', 15.00, '68173e868a627'),
(20, 'tng', '2025-05-04 20:33:23', 99.98, '68175e93388a4'),
(21, 'cash', '2025-05-04 21:58:48', 127.53, '68177298783e5'),
(22, 'credit_card', '2025-05-04 22:02:40', 657.65, '68177380b9e6a'),
(23, 'credit_card', '2025-05-04 22:07:01', 336.06, '6817748577710'),
(24, 'credit_card', '2025-05-04 22:09:23', 127.53, '6817751386c55'),
(25, 'tng', '2025-05-04 22:09:49', 127.53, '6817752da755f'),
(26, 'credit_card', '2025-05-04 22:18:00', 255.06, '6817771868a5e'),
(27, 'paypal', '2025-05-04 22:33:08', 40.24, '68177aa463a1b'),
(28, 'tng', '2025-05-05 00:51:48', 153.64, '68179b248a816');

-- --------------------------------------------------------

--
-- 表的结构 `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_pic` varchar(255) DEFAULT NULL,
  `product_desc` text DEFAULT NULL,
  `stock_quantity` int(11) NOT NULL DEFAULT 0,
  `category` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_pic`, `product_desc`, `stock_quantity`, `category`, `created_at`) VALUES
(1, 'Shiny Cap, Gown & Tassel Package', 127.53, 'ShinyCapGownTasselPackage.png', 'Celebrate your graduation in style with this shiny cap, gown, and tassel set, featuring vibrant color options, comfortable fit, and customizable tassels—perfect for all academic levels.', 93, 'Graduation', '2025-05-04 03:15:52'),
(2, 'Imprinted Diploma Cover', 40.24, 'ImprintedDiplomaCover.png', 'Safeguard your diploma with this premium tent-style cover, featuring embossed gold \"Diploma of Graduation\" lettering on a soft, padded leatherette exterior. Inside, a white moiré fabric panel, four corner ribbons, and a protective acetate sheet ensure your certificate remains pristine. Available in sizes 6\"x8\", 7\"x9\", 8\"x10\", and 8.5\"x11\", and colors Black, Navy, Royal, Maroon, and Forest. Ideal for graduates seeking a classic and durable presentation.', 117, 'Graduation', '2025-05-04 03:19:26'),
(3, 'Mahogany Moulding Diploma Frame with Black Matting', 617.41, 'MahoganyMouldingDiplomaFrame.png', 'Showcase your academic achievements with this elegant diploma frame, crafted from 100% recycled wood with a rich mahogany finish and sophisticated black matting. Designed to fit various diploma sizes, it offers both versatility and timeless style, making it an ideal gift for graduates.', 113, 'Graduation', '2025-05-04 03:27:10'),
(4, 'Custom Diploma Cover', 49.99, 'CustomDiplomaCover.png', 'Preserve your academic achievements with this premium diploma cover, featuring a durable leathergrain exterior, elegant satin or moiré fabric interior, and secure corner ribbons. Customize with your school\'s emblem or logo for a personalized touch. Available in various sizes and colors to match your institution\'s identity.', 140, 'Graduation', '2025-05-03 22:06:07'),
(5, 'Custom Graduation Certificate Scroll Diploma Holder', 55.14, 'CertificateScroll.png', 'Elevate your graduation ceremony with this elegant scroll holder, crafted from high-grade grain leatherette for a smooth and comfortable grip. Measuring 32 cm in length and 5 cm in diameter, it\'s perfectly sized to accommodate A4 diplomas. Personalize it with your school\'s logo or text in gold or silver foil for a distinguished touch. Available in eight vibrant colors, this cylindrical tube ensures your achievement is both protected and stylishly presented.', 198, 'Graduation', '2025-05-03 22:06:07'),
(6, '50 Pcs Graduation Advice And Well Wishes Cards For Graduates', 51.05, 'AdviceAndWellWishesCards.png', 'Celebrate your graduate\'s achievement with this elegant set of 50 advice and wishes cards. Each card features a classic black-and-gold design with prompts like \"Always remember...\" and \"My wish for you is...,\" encouraging heartfelt messages from friends and family. Measuring 4\" x 6\", these cards are printed on premium cardstock, making them perfect keepsakes for graduation parties, open houses, or memory boxes. Ideal for high school, college, or university graduates, these cards add a personal touch to any celebration.', 10, 'Graduation', '2025-05-04 03:42:41'),
(7, 'Graduation Shadow Box Frame for 8.5x11 Diploma & 4x6 Photo with Graduation Cap & Tassel Holder Class of 2025 Wood Display Case', 298.02, 'GraduationShadowBoxFrame.png', 'Celebrate and preserve your academic achievements with this elegant shadow box frame. Designed to display an 8.5x11 diploma alongside a 4x6 photo, it features durable high-definition acrylic that offers UV protection, safeguarding your documents from dust, moisture, and scratches. The frame\'s sleek design complements any décor, making it a perfect addition to your home or office. FramePro\'s proprietary packaging ensures safe delivery, and their 100% satisfaction guarantee provides peace of mind with your purchase.', 30, 'Graduation', '2025-05-04 03:46:47'),
(8, '\"Sweet Surprise\" Unicorn Plush, Chocolates & Snacks Gift Box Set', 118.00, 'SweetSurprise.png', 'Delight someone special with this charming gift box featuring a cuddly unicorn plush, delectable chocolates, and tasty snacks. Perfect for celebrations like birthdays, graduations, or as a cheerful pick-me-up. Priced at RM118, it includes same-day delivery within the Klang Valley and a complimentary personalized message card. ', 100, 'Gift', '2025-05-04 03:50:14'),
(9, 'Charming Chocolate Box', 105.00, 'CharmingChocolateBox.png', 'Delight someone special with this elegant gift box featuring 3 red roses, baby breath, and a selection of chocolates including 4 mini Cadbury, 1 Hershey\'s Kisses, and 1 Kinder Bueno. Presented in a sleek 12cm x 16cm box, it\'s perfect for occasions like graduations, birthdays, or anniversaries. Priced at RM105, it includes same-day delivery within the Klang Valley and a complimentary personalized message card.', 30, 'Gift', '2025-05-04 03:50:14'),
(10, 'Graduation Cap and Gown Set', 49.99, 'cap_gown.jpg', 'Complete graduation attire set for college graduates.', 102, 'Graduation', '2025-05-04 06:06:07'),
(11, 'Class of 2025 Tumbler', 15.00, 'tumbler.jpg', 'Stainless steel tumbler engraved with \"Class of 2025\".', 193, 'Gifts', '2025-05-04 06:06:07'),
(12, 'Galaxy Chocolate Bouquet', 113.40, 'Galaxy.png', 'Indulge in a delightful assortment of chocolates beautifully arranged in a bouquet, perfect for any celebration. This bouquet features:\r\n\r\n1 Snickers\r\n\r\n1 Cadbury\r\n\r\n1 M&M\r\n\r\n1 Hershey\r\n\r\n1 Kisses\r\n\r\n1 Ferrero\r\n\r\n1 Nips\r\n\r\n2 5 Star\r\n\r\n2 KitKat\r\n\r\n1 Foil Balloon', 54, 'Gift', '2025-05-04 04:12:33'),
(13, 'Marilyn Pink Carnation Bouquet', 135.00, 'Marilyn.png', 'Don\'t be afraid to stand out just like the Marilyn Pink Carnation Bouquet! A lively explosion of pink Gerberas, hot cherry pink Roses, pink Carnations and white Ping Pongs. Pink isn\'t just a colour it\'s an attitude!', 60, 'Gift', '2025-05-04 04:17:39'),
(14, 'Graduation Grins Graduation Set', 139.00, 'Grins.png', 'The perfect way to spread smiles with our radiant Graduation Grins – a jubilant fusion of vibrant balloons and stunning flowers, meticulously crafted to commemorate this momentous achievement!', 80, 'Gift', '2025-05-04 04:23:46'),
(15, 'Personalised Mug with Lid & Spoon and Warmer Pad', 105.90, 'Lid&SpoonWarmerPad.png', 'This elegant gift set includes a 350ml personalized ceramic mug with a matching lid and spoon, accompanied by a USB-powered warmer pad to keep beverages at the perfect temperature. Presented in a personalized white kraft gift box, it also comes with a complimentary message card. Ideal for various occasions such as graduations, birthdays, or corporate gifts.', 36, 'Souvenir', '2025-05-04 04:27:09'),
(16, 'Messengerco Gift: Personalised Notebook & Pen Gift Set', 50.00, 'MessengercoGift.png', 'This elegant gift set includes a personalized notebook and pen, both elegantly packaged in a premium black gift box adorned with a ribbon. The pen can be customized with a name, message, or date using high-quality laser engraving, while the notebook offers the option to imprint a company logo or message, making it an excellent choice for corporate gifting or personal occasions. Ideal for graduations, birthdays, or professional milestones, this set combines functionality with a personal touch.', 16, 'Souvenir', '2025-05-04 04:29:59'),
(17, 'Personalised Stylish Leather Keychain', 48.30, 'PersonalisedStylish.png', 'Crafted from genuine cow leather, this stylish keychain offers a personalized touch with custom engraving (up to 12 characters). Available in maroon, brown, or black, each keychain features a matching plated key ring and hook. It comes elegantly packaged in a premium box with a paper bag and mini gift card, making it an ideal gift for graduations, birthdays, or corporate events.', 130, 'Souvenir', '2025-05-04 04:33:26'),
(18, 'Coffee Break - Grey Marble Mug', 108.00, 'CoffeeBreak.png', 'The \"Coffee Break - Grey Marble Mug\" is a thoughtfully curated gift set priced at RM108.00. It includes a personalized grey marble ceramic mug (380ml) with your chosen name (up to 13 characters) in black, white, or gold vinyl. The set also features a small white bear, a Starbucks Premium Mix (random flavor), a wooden coaster, and a wooden spoon. Please note that the mug is not dishwasher or microwave safe; hand wash only.', 54, 'Souvenir', '2025-05-04 04:36:27'),
(19, 'Sariyah Pressed Flower Frame', 146.00, 'Sariyah.png', 'The Sariyah Pressed Flower Frame is a beautifully handcrafted gift featuring real pressed flowers, ideal for commemorating special occasions like graduations, anniversaries, or birthdays. ', 30, 'Souvenir', '2025-05-04 04:39:04'),
(20, 'Box of 12 Assorted Macarons', 81.00, 'Macaron.png', 'The Box of 12 Assorted Macarons from Elevete Patisserie, available through Giftr.my, is a delightful gift option priced at RM81.00. This assortment features a variety of unique flavors, including Rose Lychee, Salted Popcorn, Salted Caramel, Nutella, Honeycomb, Chocolate Mint, Peanut Butter, Red Velvet, and Ribena. Crafted with ingredients like egg whites and almond ground, these macarons are alcohol-free, lard-free, and pork-free, making them suitable for a wide range of dietary preferences.', 42, 'Souvenir', '2025-05-04 04:43:53'),
(21, 'Kelvin Gems Luna Tree Of Life Adjustable Bracelet', 138.00, 'Bracelet.png', 'The Kelvin Gems Luna Tree Of Life Adjustable Bracelet is a beautifully crafted piece from the \"Luna\" collection, symbolizing positive energy, good health, and a bright future. It\'s an ideal gift for expressing gratitude and well-wishes to loved ones.', 15, 'Souvenir', '2025-05-04 04:46:09'),
(22, 'Marble Mug with Lid & Spoon Gift Set', 99.90, 'MarbleMug.png', 'This elegant gift set features a 350ml ceramic marble-patterned mug, complete with a bamboo lid and matching spoon. Perfect for enjoying your favorite beverages in style, whether it\'s coffee, tea, or hot chocolate. The set is thoughtfully packaged in a premium gift box, making it an ideal present for occasions like birthdays, anniversaries, or as a thoughtful gesture for friends and loved ones.', 25, 'Gift', '2025-05-04 04:03:38'),
(23, 'Teddy Bear With Scented Soap Rose', 89.00, 'ScentedSoapRose.png', 'Delight your loved ones with this charming gift set featuring a soft plush teddy bear dressed in a cozy sweater, accompanied by a mini scented soap flower bouquet (randomly selected from Baby Breath, Rose, Sunflower, or Carnation). The set is beautifully presented in a premium paper bag personalized with a name (up to 15 characters) and adorned with warm yellow LED fairy lights, creating a magical ambiance. A pre-printed message card is included to convey your heartfelt sentiments. This thoughtful gift is perfect for occasions like birthdays, anniversaries, graduations, or as a get-well-soon gesture.', 35, 'Gift', '2025-05-04 04:09:31');

-- --------------------------------------------------------

--
-- 表的结构 `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `position` varchar(25) NOT NULL,
  `birthday` date DEFAULT NULL,
  `country` varchar(25) NOT NULL,
  `img_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `staff`
--

INSERT INTO `staff` (`staff_id`, `first_name`, `last_name`, `gender`, `email`, `phone`, `position`, `birthday`, `country`, `img_path`) VALUES
(1, 'Yu Hang', 'Cheng', 'M', 'jmang5030@gmail.com', '0184702907', 'Admin', '2005-05-03', 'MLY', 'avatar.jpeg');

--
-- 转储表的索引
--

--
-- 表的索引 `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`MemberID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- 表的索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MemberID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- 表的索引 `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`bookingid`);

--
-- 表的索引 `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`orderitem_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `bookingid` (`bookingid`);

--
-- 表的索引 `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- 表的索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- 表的索引 `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `order`
--
ALTER TABLE `order`
  MODIFY `bookingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- 使用表AUTO_INCREMENT `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `orderitem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用表AUTO_INCREMENT `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用表AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用表AUTO_INCREMENT `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 限制导出的表
--

--
-- 限制表 `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

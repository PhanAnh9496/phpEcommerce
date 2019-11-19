-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 19, 2019 lúc 02:28 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecommerce`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `advertise`
--

CREATE TABLE `advertise` (
  `Id` int(11) NOT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `Visible` int(11) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `advertise`
--

INSERT INTO `advertise` (`Id`, `Name`, `Image`, `IsActive`, `Visible`, `Description`) VALUES
(3, 'Banner Quảng Cáo Ngang 1', 'banner-3-banner-quang-cao-ngang-1.jpg', 1, 3, 'Nằm dưới sản phẩm mới');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `Id` int(11) NOT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `Visible` int(11) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`Id`, `Name`, `Image`, `IsActive`, `Visible`, `Description`) VALUES
(1, 'banner trái', 'banner-1-banner-trai.jpg', 1, 1, 'banner bên trái'),
(2, 'banner phải', 'banner-2-banner-phai.jpg', 1, 2, 'banner bên phải'),
(3, 'Banner Quảng Cáo Ngang 1', 'banner-3-banner-quang-cao-ngang-1.jpg', 1, 3, 'Nằm dưới sản phẩm mới');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `SupplyId` int(11) DEFAULT NULL,
  `Position` int(4) DEFAULT NULL,
  `alias` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`Id`, `Name`, `SupplyId`, `Position`, `alias`) VALUES
(1, 'QUẦN', 1, 1, 'quan'),
(2, 'ÁO', 1, 2, 'ao'),
(3, 'GIẦY DÉP', 2, 4, 'giay-dep');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `Id` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Content` longtext DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `Author` varchar(150) DEFAULT NULL,
  `ParentId` int(11) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `Phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contactinfo`
--

CREATE TABLE `contactinfo` (
  `Id` int(11) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Mobile` varchar(20) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Facebook` varchar(200) NOT NULL,
  `Zalo` varchar(200) NOT NULL,
  `Skype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contactinfo`
--

INSERT INTO `contactinfo` (`Id`, `Address`, `Country`, `Mobile`, `Phone`, `Email`, `Facebook`, `Zalo`, `Skype`) VALUES
(1, 'Hoàng Mai', 'Hà Nội', '0902132280', '0902132280', 'phananh9496@gmail.com', 'Phan Anh', 'phananh', 'Pa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `CustomerId` int(11) NOT NULL,
  `Name` varchar(550) DEFAULT NULL,
  `Image` varchar(350) DEFAULT NULL,
  `Links` longtext DEFAULT NULL,
  `Detail` varchar(2500) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mobile` varchar(20) NOT NULL,
  `Subject` varchar(300) NOT NULL,
  `Createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `imageslide`
--

CREATE TABLE `imageslide` (
  `Id` int(11) NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `SlideId` int(1) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `imageslide`
--

INSERT INTO `imageslide` (`Id`, `Image`, `SlideId`, `IsActive`) VALUES
(1, '3-1.jpg', 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `intro`
--

CREATE TABLE `intro` (
  `Id` int(11) NOT NULL,
  `Title` text DEFAULT NULL,
  `Content` longtext DEFAULT NULL,
  `Link` varchar(250) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `intro`
--

INSERT INTO `intro` (`Id`, `Title`, `Content`, `Link`, `IsActive`) VALUES
(1, '1', '<h2 style=\"text-align: center;\"><strong>Giới thiệu shop</strong></h2>\r\n<br />\r\n<br />\r\n&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Hiện nay, xu hướng thương mại điện tử đang ph&aacute;t triển rất mạnh, trong tương lai sẽ l&agrave; m&ocirc; h&igrave;nh chủ đạo v&agrave; tất yếu, Quanaoredep.com đ&atilde; tạo n&ecirc;n sự kh&aacute;c biệt bởi ch&iacute;nh h&igrave;nh thức n&agrave;y: Một m&ocirc; h&igrave;nh cửa h&agrave;ng trực tuyến, cung cấp mọi g&oacute;c độ của sản phẩm nhằm gi&uacute;p kh&aacute;ch h&agrave;ng dễ d&agrave;ng chọn lựa sản phẩm y&ecirc;u th&iacute;ch, li&ecirc;n tục cập nhật mẫu m&atilde; đa dạng v&agrave; k&egrave;m theo đ&oacute; l&agrave; phong c&aacute;ch b&aacute;n h&agrave;ng chuy&ecirc;n nghiệp, chu đ&aacute;o gi&uacute;p cho bạn trẻ, những người bận rộn, những người l&agrave;m việc văn ph&ograve;ng kh&ocirc;ng c&oacute; thời gian đi shopping vẫn c&oacute; thể thỏa sức mua sắm. với m&ocirc; h&igrave;nh n&agrave;y ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang l&agrave;m h&agrave;i l&ograve;ng tất cả c&aacute;c Kh&aacute;ch h&agrave;ng. Hệ thống b&aacute;n h&agrave;ng của ch&uacute;ng t&ocirc;i xuất hiện ở mọi nơi tr&ecirc;n Internet từ Facebook, Twitter, Goole Plus cho tới 123Mua, Zing Me. Bạn c&oacute; thể t&igrave;m hiểu kỹ hơn để y&ecirc;n t&acirc;m hơn về những sản phẩm cũng như dịch vụ b&aacute;n h&agrave;ng trực tuyến của ch&uacute;ng t&ocirc;i theo những đường dẫn sau đ&acirc;y:\r\n<p>+ Facebook: https://www.facebook.com/quanaoredepdotcom<br />\r\n+ Twitter: https://twitter.com/#!/quanaoredep<br />\r\n+ Google Plus: https://plus.google.com/u/0/b/101521943379319701589/<br />\r\n+ Th&agrave;nh vi&ecirc;n Vip tr&ecirc;n Zing Me : http://me.zing.vn/u/shopquanaoredep<br />\r\n+ Th&agrave;nh vi&ecirc;n Vip tr&ecirc;n 123mua.vn http://www.123mua.vn/shopquanaoredep<br />\r\n&nbsp;</p>\r\n\r\n<h2 style=\"text-align: center;\"><strong>Hướng dẫn order sản phẩm</strong></h2>\r\n&nbsp;\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Hiện nay, xu hướng thương mại điện tử đang ph&aacute;t triển rất mạnh, trong tương lai sẽ l&agrave; m&ocirc; h&igrave;nh chủ đạo v&agrave; tất yếu, Quanaoredep.com đ&atilde; tạo n&ecirc;n sự kh&aacute;c biệt bởi ch&iacute;nh h&igrave;nh thức n&agrave;y: Một m&ocirc; h&igrave;nh cửa h&agrave;ng trực tuyến, cung cấp mọi g&oacute;c độ của sản phẩm nhằm gi&uacute;p kh&aacute;ch h&agrave;ng dễ d&agrave;ng chọn lựa sản phẩm y&ecirc;u th&iacute;ch, li&ecirc;n tục cập nhật mẫu m&atilde; đa dạng v&agrave; k&egrave;m theo đ&oacute; l&agrave; phong c&aacute;ch b&aacute;n h&agrave;ng chuy&ecirc;n nghiệp, chu đ&aacute;o gi&uacute;p cho bạn trẻ, những người bận rộn, những người l&agrave;m việc văn ph&ograve;ng kh&ocirc;ng c&oacute; thời gian đi shopping vẫn c&oacute; thể thỏa sức mua sắm. với m&ocirc; h&igrave;nh n&agrave;y ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang l&agrave;m h&agrave;i l&ograve;ng tất cả c&aacute;c Kh&aacute;ch h&agrave;ng. Hệ thống b&aacute;n h&agrave;ng của ch&uacute;ng t&ocirc;i xuất hiện ở mọi nơi tr&ecirc;n Internet từ Facebook, Twitter, Goole Plus cho tới 123Mua, Zing Me. Bạn c&oacute; thể t&igrave;m hiểu kỹ hơn để y&ecirc;n t&acirc;m hơn về những sản phẩm cũng như dịch vụ b&aacute;n h&agrave;ng trực tuyến của ch&uacute;ng t&ocirc;i theo những đường dẫn sau đ&acirc;y:</p>\r\n\r\n<p>+ Facebook: https://www.facebook.com/quanaoredepdotcom<br />\r\n+ Twitter: https://twitter.com/#!/quanaoredep<br />\r\n+ Google Plus: https://plus.google.com/u/0/b/101521943379319701589/<br />\r\n+ Th&agrave;nh vi&ecirc;n Vip tr&ecirc;n Zing Me : http://me.zing.vn/u/shopquanaoredep<br />\r\n+ Th&agrave;nh vi&ecirc;n Vip tr&ecirc;n 123mua.vn http://www.123mua.vn/shopquanaoredep<br />\r\n&nbsp;</p>\r\n\r\n<h2 style=\"text-align: center;\"><strong>Chi ph&iacute; vận chuyển, giao h&agrave;ng v&agrave; thanh to&aacute;n</strong></h2>\r\n\r\n<p><br />\r\nHiện nay, xu hướng thương mại điện tử đang ph&aacute;t triển rất mạnh, trong tương lai sẽ l&agrave; m&ocirc; h&igrave;nh chủ đạo v&agrave; tất yếu, Quanaoredep.com đ&atilde; tạo n&ecirc;n sự kh&aacute;c biệt bởi ch&iacute;nh h&igrave;nh thức n&agrave;y: Một m&ocirc; h&igrave;nh cửa h&agrave;ng trực tuyến, cung cấp mọi g&oacute;c độ của sản phẩm nhằm gi&uacute;p kh&aacute;ch h&agrave;ng dễ d&agrave;ng chọn lựa sản phẩm y&ecirc;u th&iacute;ch, li&ecirc;n tục cập nhật mẫu m&atilde; đa dạng v&agrave; k&egrave;m theo đ&oacute; l&agrave; phong c&aacute;ch b&aacute;n h&agrave;ng chuy&ecirc;n nghiệp, chu đ&aacute;o gi&uacute;p cho bạn trẻ, những người bận rộn, những người l&agrave;m việc văn ph&ograve;ng kh&ocirc;ng c&oacute; thời gian đi shopping vẫn c&oacute; thể thỏa sức mua sắm. với m&ocirc; h&igrave;nh n&agrave;y ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang l&agrave;m h&agrave;i l&ograve;ng tất cả c&aacute;c Kh&aacute;ch h&agrave;ng. Hệ thống b&aacute;n h&agrave;ng của ch&uacute;ng t&ocirc;i xuất hiện ở mọi nơi tr&ecirc;n Internet từ Facebook, Twitter, Goole Plus cho tới 123Mua, Zing Me. Bạn c&oacute; thể t&igrave;m hiểu kỹ hơn để y&ecirc;n t&acirc;m hơn về những sản phẩm cũng như dịch vụ b&aacute;n h&agrave;ng trực tuyến của ch&uacute;ng t&ocirc;i theo những đường dẫn sau đ&acirc;y: + Facebook: https://www.facebook.com/quanaoredepdotcom<br />\r\n\\r\\n+ Twitter: https://twitter.com/#!/quanaoredep<br />\r\n\\r\\n+ Google Plus: https://plus.google.com/u/0/b/101521943379319701589/<br />\r\n\\r\\n+ Th&agrave;nh vi&ecirc;n Vip tr&ecirc;n Zing Me : http://me.zing.vn/u/shopquanaoredep<br />\r\n\\r\\n+ Th&agrave;nh vi&ecirc;n Vip tr&ecirc;n 123mua.vn http://www.123mua.vn/shopquanaoredep</p>\r\n\\r\\n', NULL, 1),
(2, 'Nội dung giới thiệu shop', '<h2 style=\"text-align:center\"><strong>Giới thiệu shop</strong></h2>\r\n\r\n<div style=\"text-align: justify;\">&nbsp;</div>\r\n\r\n<div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Hiện nay, xu hướng thương mại điện tử đang ph&aacute;t triển rất mạnh, trong tương lai sẽ l&agrave; m&ocirc; h&igrave;nh chủ đạo v&agrave; tất yếu, Quanaoredep.com đ&atilde; tạo n&ecirc;n sự kh&aacute;c biệt bởi ch&iacute;nh h&igrave;nh thức n&agrave;y: Một m&ocirc; h&igrave;nh cửa h&agrave;ng trực tuyến, cung cấp mọi g&oacute;c độ của sản phẩm nhằm gi&uacute;p kh&aacute;ch h&agrave;ng dễ d&agrave;ng chọn lựa sản phẩm y&ecirc;u th&iacute;ch, li&ecirc;n tục cập nhật mẫu m&atilde; đa dạng v&agrave; k&egrave;m theo đ&oacute; l&agrave; phong c&aacute;ch b&aacute;n h&agrave;ng chuy&ecirc;n nghiệp, chu đ&aacute;o gi&uacute;p cho bạn trẻ, những người bận rộn, những người l&agrave;m việc văn ph&ograve;ng kh&ocirc;ng c&oacute; thời gian đi shopping vẫn c&oacute; thể thỏa sức mua sắm. với m&ocirc; h&igrave;nh n&agrave;y ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang l&agrave;m h&agrave;i l&ograve;ng tất cả c&aacute;c Kh&aacute;ch h&agrave;ng. Hệ thống b&aacute;n h&agrave;ng của ch&uacute;ng t&ocirc;i xuất hiện ở mọi nơi tr&ecirc;n Internet từ Facebook, Twitter, Goole Plus cho tới 123Mua, Zing Me. Bạn c&oacute; thể t&igrave;m hiểu kỹ hơn để y&ecirc;n t&acirc;m hơn về những sản phẩm cũng như dịch vụ b&aacute;n h&agrave;ng trực tuyến của ch&uacute;ng t&ocirc;i theo những đường dẫn sau đ&acirc;y:</div>\r\n\r\n<p style=\"margin-left: 40px;\">+ Facebook: https://www.facebook.com/quanaoredepdotcom<br />\r\n+ Twitter: https://twitter.com/#!/quanaoredep<br />\r\n+ Google Plus: https://plus.google.com/u/0/b/101521943379319701589/<br />\r\n+ Th&agrave;nh vi&ecirc;n Vip tr&ecirc;n Zing Me : http://me.zing.vn/u/shopquanaoredep<br />\r\n+ Th&agrave;nh vi&ecirc;n Vip tr&ecirc;n 123mua.vn http://www.123mua.vn/shopquanaoredep<br />\r\n&nbsp;</p>\r\n\r\n<h2 style=\"text-align:center\"><strong>Hướng dẫn order sản phẩm</strong></h2>\r\n&nbsp;\r\n\r\n<p style=\"text-align: justify;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Hiện nay, xu hướng thương mại điện tử đang ph&aacute;t triển rất mạnh, trong tương lai sẽ l&agrave; m&ocirc; h&igrave;nh chủ đạo v&agrave; tất yếu, Quanaoredep.com đ&atilde; tạo n&ecirc;n sự kh&aacute;c biệt bởi ch&iacute;nh h&igrave;nh thức n&agrave;y: Một m&ocirc; h&igrave;nh cửa h&agrave;ng trực tuyến, cung cấp mọi g&oacute;c độ của sản phẩm nhằm gi&uacute;p kh&aacute;ch h&agrave;ng dễ d&agrave;ng chọn lựa sản phẩm y&ecirc;u th&iacute;ch, li&ecirc;n tục cập nhật mẫu m&atilde; đa dạng v&agrave; k&egrave;m theo đ&oacute; l&agrave; phong c&aacute;ch b&aacute;n h&agrave;ng chuy&ecirc;n nghiệp, chu đ&aacute;o gi&uacute;p cho bạn trẻ, những người bận rộn, những người l&agrave;m việc văn ph&ograve;ng kh&ocirc;ng c&oacute; thời gian đi shopping vẫn c&oacute; thể thỏa sức mua sắm. với m&ocirc; h&igrave;nh n&agrave;y ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang l&agrave;m h&agrave;i l&ograve;ng tất cả c&aacute;c Kh&aacute;ch h&agrave;ng. Hệ thống b&aacute;n h&agrave;ng của ch&uacute;ng t&ocirc;i xuất hiện ở mọi nơi tr&ecirc;n Internet từ Facebook, Twitter, Goole Plus cho tới 123Mua, Zing Me. Bạn c&oacute; thể t&igrave;m hiểu kỹ hơn để y&ecirc;n t&acirc;m hơn về những sản phẩm cũng như dịch vụ b&aacute;n h&agrave;ng trực tuyến của ch&uacute;ng t&ocirc;i theo những đường dẫn sau đ&acirc;y:</p>\r\n\r\n<p style=\"margin-left: 40px;\">+ Facebook: https://www.facebook.com/quanaoredepdotcom<br />\r\n+ Twitter: https://twitter.com/#!/quanaoredep<br />\r\n+ Google Plus: https://plus.google.com/u/0/b/101521943379319701589/<br />\r\n+ Th&agrave;nh vi&ecirc;n Vip tr&ecirc;n Zing Me : http://me.zing.vn/u/shopquanaoredep<br />\r\n+ Th&agrave;nh vi&ecirc;n Vip tr&ecirc;n 123mua.vn http://www.123mua.vn/shopquanaoredep<br />\r\n&nbsp;</p>\r\n\r\n<h2 style=\"text-align:center\"><strong>Chi ph&iacute; vận chuyển, giao h&agrave;ng v&agrave; thanh to&aacute;n</strong></h2>\r\n\r\n<p><br />\r\nHiện nay, xu hướng thương mại điện tử đang ph&aacute;t triển rất mạnh, trong tương lai sẽ l&agrave; m&ocirc; h&igrave;nh chủ đạo v&agrave; tất yếu, Quanaoredep.com đ&atilde; tạo n&ecirc;n sự kh&aacute;c biệt bởi ch&iacute;nh h&igrave;nh thức n&agrave;y: Một m&ocirc; h&igrave;nh cửa h&agrave;ng trực tuyến, cung cấp mọi g&oacute;c độ của sản phẩm nhằm gi&uacute;p kh&aacute;ch h&agrave;ng dễ d&agrave;ng chọn lựa sản phẩm y&ecirc;u th&iacute;ch, li&ecirc;n tục cập nhật mẫu m&atilde; đa dạng v&agrave; k&egrave;m theo đ&oacute; l&agrave; phong c&aacute;ch b&aacute;n h&agrave;ng chuy&ecirc;n nghiệp, chu đ&aacute;o gi&uacute;p cho bạn trẻ, những người bận rộn, những người l&agrave;m việc văn ph&ograve;ng kh&ocirc;ng c&oacute; thời gian đi shopping vẫn c&oacute; thể thỏa sức mua sắm. với m&ocirc; h&igrave;nh n&agrave;y ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang l&agrave;m h&agrave;i l&ograve;ng tất cả c&aacute;c Kh&aacute;ch h&agrave;ng. Hệ thống b&aacute;n h&agrave;ng của ch&uacute;ng t&ocirc;i xuất hiện ở mọi nơi tr&ecirc;n Internet từ Facebook, Twitter, Goole Plus cho tới 123Mua, Zing Me. Bạn c&oacute; thể t&igrave;m hiểu kỹ hơn để y&ecirc;n t&acirc;m hơn về những sản phẩm cũng như dịch vụ b&aacute;n h&agrave;ng trực tuyến của ch&uacute;ng t&ocirc;i theo những đường dẫn sau đ&acirc;y: + Facebook: https://www.facebook.com/quanaoredepdotcom<br />\r\n\\r\\n+ Twitter: https://twitter.com/#!/quanaoredep<br />\r\n\\r\\n+ Google Plus: https://plus.google.com/u/0/b/101521943379319701589/<br />\r\n\\r\\n+ Th&agrave;nh vi&ecirc;n Vip tr&ecirc;n Zing Me : http://me.zing.vn/u/shopquanaoredep<br />\r\n\\r\\n+ Th&agrave;nh vi&ecirc;n Vip tr&ecirc;n 123mua.vn http://www.123mua.vn/shopquanaoredep</p>\r\n\\r\\n', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `livesport`
--

CREATE TABLE `livesport` (
  `Id` int(11) NOT NULL,
  `Title` varchar(500) NOT NULL,
  `Link` varchar(300) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Url1` varchar(200) NOT NULL,
  `Url2` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `livesport`
--

INSERT INTO `livesport` (`Id`, `Title`, `Link`, `Description`, `Url1`, `Url2`) VALUES
(1, 'Trực tiếp bóng đá C1', 'https://www.youtube.com/embed/QfeISNVwnfY', 'Trực tiếp tr&ecirc;n vtv3', 'http://localhost:8080/ShopOnline/livesport', 'http://localhost:8080/ShopOnline/livesport'),
(3, 'the thao', 'youtube.com', 'hahahah', 'youtube.com.vn', 'youtube.com.vn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logo`
--

CREATE TABLE `logo` (
  `LogoId` int(11) NOT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `Images` varchar(255) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `alias` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `MenuId` int(11) NOT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `ParentId` int(11) DEFAULT NULL,
  `URL` varchar(250) DEFAULT NULL,
  `Order` int(11) DEFAULT NULL,
  `IsVisible` tinyint(1) DEFAULT NULL,
  `Desciption` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`MenuId`, `Name`, `ParentId`, `URL`, `Order`, `IsVisible`, `Desciption`) VALUES
(1, 'Trang chủ', NULL, '#', 1, 1, NULL),
(2, 'Sản phẩm', NULL, 'san-pham', 2, 1, NULL),
(3, 'Thời trang nam', 2, 'category.php', 2, 1, NULL),
(4, 'Thời trang nữ', 2, '~/thoi-trang-nu.php', 2, 1, NULL),
(5, 'Quần Jean', 3, '~/quan-jean', 3, 1, NULL),
(6, 'Áo khoác nữ', 4, '~/ao-khoac-nu.php', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `Id` int(11) NOT NULL,
  `Customer` varchar(50) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Createtime` datetime NOT NULL,
  `Status` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Cart_total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`Id`, `Customer`, `Address`, `Phone`, `Createtime`, `Status`, `Email`, `Cart_total`) VALUES
(28, 'hahah', 'hn', '0903222890', '2019-11-10 11:39:31', 1, '', 100001),
(29, 'adsd', 'adasd', '0903239393', '2019-11-10 16:31:27', 1, '', 1281280),
(30, 'P', 'P', '92919392392', '2019-11-16 08:55:51', 1, '', 123855),
(31, 'pj', 'jjj', '09097373789', '2019-11-16 14:25:08', 1, '', 499);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `Id` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` float NOT NULL,
  `Description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`Id`, `OrderId`, `ProductId`, `Quantity`, `Price`, `Description`) VALUES
(1, 1, 16, 1, 0, ''),
(2, 2, 1, 1, 0, ''),
(3, 3, 16, 1, 0, ''),
(4, 3, 2, 1, 0, ''),
(5, 3, 1, 1, 0, ''),
(6, 4, 1, 1, 1200000, ''),
(7, 5, 6, 1, 100000, ''),
(8, 6, 14, 3, 150000, ''),
(9, 6, 15, 1, 500000, ''),
(10, 7, 16, 1, 111000, ''),
(11, 7, 15, 1, 500000, ''),
(12, 8, 16, 1, 111000, ''),
(13, 8, 13, 1, 101, ''),
(14, 9, 34, 1, 12900, ''),
(15, 10, 20, 1, 1000000000, ''),
(16, 11, 15, 1, 500000, ''),
(17, 12, 20, 1, 1000000000, ''),
(18, 13, 20, 1, 1000000000, ''),
(19, 14, 20, 4, 1000000000, ''),
(20, 15, 21, 2, 10000, ''),
(21, 16, 20, 1, 1000000000, ''),
(22, 16, 6, 1, 100, ''),
(23, 17, 21, 1, 10000, ''),
(24, 18, 29, 2, 30, ''),
(25, 19, 21, 1, 10000, ''),
(26, 20, 21, 1, 10000, ''),
(27, 21, 21, 1, 10000, ''),
(28, 22, 22, 1, 100000, ''),
(29, 23, 20, 1, 1000000000, ''),
(30, 24, 14, 1, 150000, ''),
(31, 25, 15, 1, 500000, ''),
(32, 26, 15, 1, 500000, ''),
(33, 26, 14, 1, 150000, ''),
(34, 27, 34, 1, 120000, ''),
(35, 28, 21, 1, 1, ''),
(36, 28, 27, 1, 100000, ''),
(37, 29, 33, 1, 1456000, ''),
(38, 30, 36, 1, 399, ''),
(39, 30, 5, 1, 123456, ''),
(40, 31, 20, 1, 100, ''),
(41, 31, 36, 1, 399, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `Id` int(11) NOT NULL,
  `Name` varchar(550) DEFAULT NULL,
  `TypeId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `SupplyId` int(11) DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `Price` int(11) NOT NULL,
  `Color` varchar(250) DEFAULT NULL,
  `Material` varchar(250) DEFAULT NULL,
  `Size` varchar(20) NOT NULL,
  `Detail` longtext DEFAULT NULL,
  `CreateBy` int(11) DEFAULT NULL,
  `Createdate` date DEFAULT NULL,
  `EditBy` int(11) DEFAULT NULL,
  `EditDate` date DEFAULT NULL,
  `TotalView` int(11) DEFAULT NULL,
  `isSaleOff` tinyint(1) DEFAULT NULL,
  `Percent_off` int(11) NOT NULL,
  `Image1` varchar(250) DEFAULT NULL,
  `Image2` varchar(250) DEFAULT NULL,
  `Image3` varchar(260) NOT NULL,
  `Image4` varchar(260) NOT NULL,
  `alias` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`Id`, `Name`, `TypeId`, `CategoryId`, `SubCategoryId`, `SupplyId`, `Description`, `Price`, `Color`, `Material`, `Size`, `Detail`, `CreateBy`, `Createdate`, `EditBy`, `EditDate`, `TotalView`, `isSaleOff`, `Percent_off`, `Image1`, `Image2`, `Image3`, `Image4`, `alias`) VALUES
(1, 'Áo khoác mùa hè hà nội', 1, 2, 2, 1, '<img alt=\"á\" src=\"/ShopOnline/admin/themes/upload/images/799_28_1.jpg\" style=\"height:800px; width:600px\" /><img alt=\"\" src=\"/ShopOnline/admin/themes/upload/images/847_thay_th____2.jpg\" style=\"height:800px; width:600px\" /><img alt=\"\" src=\"/ShopOnline/admin/themes/upload/images/407_0_4_1.jpg\" style=\"height:267px; margin-left:100px; margin-right:100px; width:200px\" />vu dinh dong<br />\r\n&nbsp;', 100, 'Vàng', 'catton', '', '1m6 55klg mac cỡ nào đc bạn ơi', 0, '2016-01-29', 0, '2016-01-23', 89, 0, 0, '1-ao-khoac.jpg', '1-ao-khoac2.jpg', '', '', 'ao-khoac-mua-he-ha-noi'),
(2, 'Áo khoác choàng lót lông AK-36212', 1, 1, 3, 1, '&Aacute;o kho&aacute;c cho&agrave;ng l&oacute;t l&ocirc;ng AK-36212 &Aacute;o kho&aacute;c cho&agrave;ng l&oacute;t l&ocirc;ng AK-36212', 1600000, 'Vàng', '620.000đGIÁ NY: 1.160.000 đ', '', '1m6 55klg mac cỡ nào đc bạn ơi', 0, '2016-01-31', 0, '2016-01-23', 149, 1, 0, '2-ao-khoac-choang-lot-long-ak36212.jpg', '2-ao-khoac-choang-lot-long-ak362122.jpg', 'product32-ao-khoac-choang-lot-long-ak36212.jpg', '', 'aokhoac2'),
(3, 'Áo khoác kaki lót lông AK-31112', 2, 1, 3, 1, '&Aacute;o kho&aacute;c kaki l&oacute;t l&ocirc;ng AK-31112 &Aacute;o kho&aacute;c kaki l&oacute;t l&ocirc;ng AK-31112<br />\r\n<img alt=\"\" src=\"/ShopOnline/admin/themes/upload/images/807_2013606805_1641250346.jpg\" style=\"border-style:solid; border-width:1px; height:371px; margin-left:111px; margin-right:111px; width:400px\" /><br />\r\n<img alt=\"\" src=\"/ShopOnline/admin/themes/upload/images/407_0_4_1.jpg\" style=\"height:400px; margin-left:150px; margin-right:150px; width:300px\" />', 110, 'vàng', 'vàng', '', '/public/images/product/aokhoac2.jpg\r\n/public/images/product/aokhoac2.jpg', NULL, '2016-01-22', NULL, '2016-01-23', 25, 0, 0, '3-ao-khoac-kaki-lot-long-ak31112.jpg', 'vàng', '', '', 'Ao khoac kaki lot long AK31112'),
(4, 'Áo khoác kaki lót lông AK-31112', 2, 1, 3, 1, '&Aacute;o kho&aacute;c kaki l&oacute;t l&ocirc;ng AK-31112 &Aacute;o kho&aacute;c kaki l&oacute;t l&ocirc;ng AK-31112', 110, 'vàng', 'vàng', '', '/public/images/product/aokhoac2.jpg\r\n/public/images/product/aokhoac2.jpg', NULL, '2016-01-22', NULL, '2016-01-23', 20, 0, 0, '4-ao-khoac-kaki-lot-long-ak31112.jpg', 'product24-ao-khoac-kaki-lot-long-ak31112.jpg', '', '', 'Ao khoac kaki lot long AK31112'),
(5, 'Áo khoác kaki lót bông MT-2026', 3, 1, 4, 1, '&Aacute;o kho&aacute;c kaki l&oacute;t b&ocirc;ng MT-2026 &Aacute;o kho&aacute;c kaki l&oacute;t b&ocirc;ng MT-2026', 123456, 'a', 'a', '', 'public/images/product/aokhoac2.jpg\r\npublic/images/product/aokhoac2.jpg', NULL, '2016-01-30', NULL, '2016-01-23', 25, 0, 0, '5-ao-khoac-kaki-lot-bong-mt2026.jpg', '5-ao-khoac-kaki-lot-bong-mt20262.jpg', '', '', ''),
(6, 'Áo khoác AK-723', 2, 3, 3, 2, '&Aacute;o kho&aacute;c AK-723 &Aacute;o kho&aacute;c AK-723 &Aacute;o kho&aacute;c AK-723', 100, 'vàng', 'Áo khoác AK-723', '', 'Áo khoác AK-723\r\nÁo khoác AK-723\r\nÁo khoác AK-723\r\n', NULL, '2016-02-24', NULL, '2016-01-23', 77, 0, 0, '6-ao-khoac-ak723.jpg', 'product26-ao-khoac-ak723.jpg', 'product36-ao-khoac-ak723.jpg', '', 'ao-khoac-ak723'),
(7, 'Áo khoác AK-112', 2, 2, 1, 2, '&Aacute;o kho&aacute;c AK-723 &Aacute;o kho&aacute;c AK-723 &Aacute;o kho&aacute;c AK-723', 100, 'vàng', 'Áo khoác AK-723', '', 'Áo khoác AK-723\r\nÁo khoác AK-723\r\nÁo khoác AK-723\r\n', NULL, '2016-01-22', NULL, '2016-01-23', 12, 0, 0, '7-ao-khoac-ak112.jpg', 'Áo khoác AK-723', '', '', 'ao-khoac-ak112'),
(8, 'Áo khoác AK-7234', 2, 2, 1, 2, '&Aacute;o kho&aacute;c AK-723 &Aacute;o kho&aacute;c AK-723 &Aacute;o kho&aacute;c AK-723', 100, 'vàng', 'Áo khoác AK-723', '', 'Áo khoác AK-723\r\nÁo khoác AK-723\r\nÁo khoác AK-723\r\n', NULL, '2016-01-22', NULL, '2016-01-23', 12, 0, 0, '8-ao-khoac-ak7234.jpg', 'product28-ao-khoac-ak7234.jpg', '', '', 'ao-khoac-ak7234'),
(9, 'Áo khoác X', 2, 2, 1, 2, '&Aacute;o kho&aacute;c AK-723 &Aacute;o kho&aacute;c AK-723 &Aacute;o kho&aacute;c AK-723', 900000000, 'vàng', 'Áo khoác AK-723', '', 'Áo khoác AK-723\r\nÁo khoác AK-723\r\nÁo khoác AK-723\r\n', NULL, '2016-02-09', NULL, '2016-01-23', 20, 0, 0, '9-ao-khoac-xk71.jpg', 'Áo khoác AK-723', '', 'product49-ao-khoac-xk71.jpg', 'ao-khoac-x'),
(10, 'Áo khoác AK-223', 2, 2, 1, 2, '&Aacute;o kho&aacute;c AK-723 &Aacute;o kho&aacute;c AK-723 &Aacute;o kho&aacute;c AK-723', 100, 'vàng', 'Áo khoác AK-723', '', 'Áo khoác AK-723\r\nÁo khoác AK-723\r\nÁo khoác AK-723\r\n', NULL, '2016-01-22', NULL, '2016-01-23', 18, 0, 0, '10-ao-khoac-ak223.jpg', '10-ao-khoac-ak2232.jpg', '', '', 'ao-khoac-ak223'),
(13, 'Áo phong 19', 3, 2, 2, NULL, 'tran hạo nam', 101000, 'trắng', 'cotton', '', NULL, NULL, '2016-02-29', NULL, NULL, 0, 1, 10, '13-dsd.jpg', NULL, '', '', ''),
(14, 'Áo phông mới 2015', 3, 2, 2, NULL, '&Aacute;o ph&ocirc;ng mới 2015', 150000, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'product114-ao-phong-moi-2015.jpg', NULL, '', '', ''),
(15, 'Áo phông polo', 3, 2, 2, 1, '&Aacute;o ph&ocirc;ng polo', 500000, 'sọc đỏ', 'catton', 'L, XL', NULL, NULL, '2016-02-29', NULL, NULL, 39, 1, 15, 'product115-ao-phong-polo.jpg', 'product215-ao-phong-polo.jpg', '', '', ''),
(16, 'Áo phông 14', 1, 2, 2, NULL, '&Aacute;o ph&ocirc;ng 14 15', 1110000, 'vàng, trắng', 'Cotton', '', NULL, NULL, '2016-02-29', NULL, NULL, 1, 0, 0, 'product116-ao-phong-14.jpg', 'product216-ao-phong-14.jpg', 'product316-ao-phong-14.jpg', '', ''),
(17, 'Áo phong 15', 1, 2, 2, 1, '&Aacute;o phong 15', 100000, 'tim', 'cottton', '', NULL, NULL, '0000-00-00', NULL, NULL, 0, 0, 0, 'product117-ao-phong-15.jpg', NULL, '', '', 'ao-phong-15'),
(18, 'Sơ mi dài tay', 2, 2, 1, NULL, 'sơ my dai tay', 100000, 'vàng, xanh', 'Cotton', 'L, Xl, M', NULL, NULL, '2016-03-04', NULL, NULL, 17, 0, 0, 'product118-so-mi-dai-tay.jpg', 'product218-so-mi-dai-tay.jpg', '', '', 'so-mi-dai-tay'),
(19, ' margin: ', 3, 2, 1, NULL, 'hty tgr sbgdf bfg', 100, 'vàng, trắng', 'cotton', 'M, L, XL', NULL, NULL, '2016-03-04', NULL, NULL, 4, 0, 5, 'product119-margin.jpg', 'product219-margin.jpg', '', '', ''),
(20, '1 3 5 7 9 12 15 18 21 24 2791', 1, 2, 1, NULL, '', 100, 'xanh, trắng', 'Cotton', 'XL,L', NULL, NULL, '2016-03-04', NULL, NULL, 140, 0, 0, 'product120-margin-09.jpg', 'product220-margin-09.jpg', '', '', '1-3-5-7-9-12-15-18-21-24-2791'),
(21, 'áo khoác mùa hè catton hà', 1, 2, 1, NULL, 'nguy&ecirc;nz', 1, 'xanh, trắng', 'Cotton', 'L, XL', NULL, NULL, '2016-03-04', NULL, NULL, 87, 0, 7, 'product121-margin-09-em.jpg', 'product221-margin-09-em.jpg', '', '', 'ao-khoac-mua-he-catton-ha'),
(22, ' margin 0 0', 1, 2, 1, NULL, 'aaaaaa', 100000, 'Vàng', 'Cotton', 'L, Xl, M', NULL, NULL, '2016-03-04', NULL, NULL, 16, 0, 5, 'product122-margin-0-0.jpg', 'product222-margin-0-0.jpg', 'product322-margin-0-0.jpg', '', ''),
(23, 'sơ mi bò', 1, 2, 1, NULL, '<pre>\r\n\\r\\n<strong>margin</strong>: 0.9<strong>em </strong>0<strong>em </strong>0 0;</pre>\r\n\\r\\n', 120000, 'Trắng , xanh', 'jean', 'L, XL', NULL, NULL, '2016-03-04', NULL, NULL, 3, 0, 7, 'product123-so-mi-bo.jpg', 'product223-so-mi-bo.jpg', 'product323-so-mi-bo.jpg', 'product423-so-mi-bo.jpg', 'so-mi-bo'),
(24, 'sơ mi 12', 1, 2, 1, NULL, 'sơ mi b&ograve;', 1220000, 'Trắng , xanh', 'Cotton', 'L, Xl, M', NULL, NULL, '2016-03-04', NULL, NULL, 3, 0, 5, 'product124-so-mi-12.jpg', 'product224-so-mi-12.jpg', '', '', 'so-mi-12'),
(25, 'x1', 1, 2, 1, NULL, '', 123000, 'Trắng , xanh', 'Cotton', 'L, Xl, M', NULL, NULL, '2016-03-04', NULL, NULL, 11, 0, 0, 'product125-x1.jpg', 'product225-x1.jpg', '', '', 'x1'),
(26, 'sơ mi bò aaa ', 1, 2, 1, NULL, 'aaa&nbsp;', 302000, 'Trắng , xanh', 'Cotton', 'L, Xl, M', NULL, NULL, '2016-03-04', NULL, NULL, 2, 0, 7, 'product126-so-mi-bo-aaa.jpg', 'product226-so-mi-bo-aaa.jpg', '', '', 'so-mi-bo-aaa'),
(27, 'aaa 1', 1, 2, 1, NULL, '', 100000, 'Trắng , xanh', 'Cotton', 'L, Xl, M', NULL, NULL, '2016-03-04', NULL, NULL, 2, 0, 0, 'product127-aaa-1.jpg', 'product227-aaa-1.jpg', '', '', 'aaa-1'),
(28, 'Áo phông', 2, 2, 2, NULL, 'ao moi', 200000, 'xl', 'Cotton', 'L, Xl, M', NULL, NULL, '2016-03-04', NULL, NULL, 0, 0, 0, 'product128-ao-phong.jpg', 'product228-ao-phong.jpg', '', '', 'ao-phong'),
(29, 'Áo phông 03', 2, 2, 2, NULL, 'ao phong', 300000, 'Trắng , xanh', 'Cotton', 'L, Xl, M', NULL, NULL, '2016-03-04', NULL, NULL, 1, 0, 0, 'product129-ao-phong-03.jpg', 'product229-ao-phong-03.jpg', '', '', 'ao-phong-03'),
(30, 'Áo phông 09', 2, 2, 2, NULL, 'ao phong', 2000000, 'Trắng , xanh', 'cotton', 'L, XL', NULL, NULL, '2016-03-04', NULL, NULL, 1, 0, 0, 'product130-ao-phong-09.jpg', NULL, '', '', ''),
(32, 'Áo phông 03', 3, 2, 1, NULL, 'aa vgb', 199900, 'Trắng , xanh', 'Cotton', 'L, XL', NULL, NULL, '2016-03-04', NULL, NULL, 1, 1, 19, 'product132-ao-phong-03.jpg', NULL, '', '', ''),
(33, '12 Áo phông', 3, 2, 1, NULL, 'bg vf sd', 1456000, 'Trắng , xanh', 'Cotton', 'L, Xl, M', NULL, NULL, '2016-03-05', NULL, NULL, 6, 1, 12, 'product133-12-ao-phong.jpg', NULL, '', '', ''),
(34, 'Áo phông 12', 3, 2, 2, NULL, '&aacute; a d<br />\r\n<img alt=\"\" src=\"/ShopOnline/admin/themes/upload/images/407_0_4_1.jpg\" style=\"height:533px; margin-left:100px; margin-right:100px; width:400px\" />', 120000, 'Trắng , xanh', 'Cotton', 'L, Xl, M', NULL, NULL, '2016-03-18', NULL, NULL, 10, 1, 6, 'product134-ao-phong-12.jpg', 'product234-ao-phong-12.jpg', '', '', 'ao-phong-12'),
(35, 'the nort face', 1, 2, 9, NULL, 'chhaschshcdhhscs', 299, 'xanh dương', 'polyeste', 'L', NULL, NULL, '2019-10-19', NULL, NULL, 1, 0, 0, 'product135-the-nort-face.jpg', 'product235-the-nort-face.png', '', '', 'the-nort-face'),
(36, 'Uniqlo', 1, 1, 3, NULL, 'hahahahaa', 399, 'đen', 'cotton', 'M', NULL, NULL, '2019-10-20', NULL, NULL, 5, 0, 0, 'product136-uniqlo.jpg', 'product236-uniqlo.jpg', '', '', 'uniqlo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `Id` int(11) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`Id`, `Name`, `Description`) VALUES
(1, 'admin', 'a'),
(2, 'user', 'sadad');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slideshow`
--

CREATE TABLE `slideshow` (
  `Id` int(11) NOT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `img1` varchar(260) DEFAULT NULL,
  `text1` varchar(500) DEFAULT NULL,
  `img2` varchar(260) DEFAULT NULL,
  `text2` varchar(500) DEFAULT NULL,
  `img3` varchar(260) NOT NULL,
  `text3` varchar(500) NOT NULL,
  `img4` varchar(260) NOT NULL,
  `text4` varchar(500) NOT NULL,
  `img5` varchar(260) NOT NULL,
  `text5` varchar(500) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slideshow`
--

INSERT INTO `slideshow` (`Id`, `Name`, `img1`, `text1`, `img2`, `text2`, `img3`, `text3`, `img4`, `text4`, `img5`, `text5`, `status`) VALUES
(1, 'banner trái', 'image1-1-1.jpg', '0', 'image2-1-1.jpg', '0', 'image3-1-banner-trai.jpg', '0', 'image4-1-banner-trai.jpg', '0', 'image5-1-banner-trai.jpg', '0', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcategory`
--

CREATE TABLE `subcategory` (
  `Id` int(11) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `SupplyId` int(11) DEFAULT NULL,
  `Link` varchar(260) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `pId` int(11) NOT NULL,
  `alias` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `subcategory`
--

INSERT INTO `subcategory` (`Id`, `Name`, `SupplyId`, `Link`, `CategoryId`, `pId`, `alias`) VALUES
(1, 'Áo Sơ Mi', 1, 'so-mi.php', 2, 0, 'aosomi'),
(2, 'Áo Phông', 1, 'so-mi.php', 2, 0, 'ao-phong'),
(3, 'Quần Bò', 1, NULL, 1, 0, 'jean'),
(4, 'Quần Kaki', 1, NULL, 1, 0, 'quan-kaki'),
(5, 'Sơ Mi Dài Tay', 2, 'so-mi-dai-tay', 2, 1, ''),
(7, 'Vải Giả Bò', 1, NULL, 1, 0, 'quan-au'),
(8, 'Áo Thể Thao', 1, NULL, 2, 0, 'ao-the-thao'),
(9, 'Áo Gió', NULL, 'Áo Gió', 2, 0, 'ao-gio');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplies`
--

CREATE TABLE `supplies` (
  `SupplyId` int(11) NOT NULL,
  `Name` varchar(500) DEFAULT NULL,
  `Logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `supplies`
--

INSERT INTO `supplies` (`SupplyId`, `Name`, `Logo`) VALUES
(1, 'Việt Nam', NULL),
(2, 'Việt Nam', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type`
--

CREATE TABLE `type` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `alias` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `type`
--

INSERT INTO `type` (`Id`, `Name`, `Description`, `alias`) VALUES
(1, 'SẢN PHẨM NỔI BẬT', '', 'san-pham-order'),
(2, 'SẢN PHẨM MỚI', '', 'san-pham-moi'),
(3, 'SẢN PHẨM KHUYẾN MẠI', '', 'san-pham-khuyen-mai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `CreateDate` date DEFAULT NULL,
  `RoleId` int(11) DEFAULT NULL,
  `Avatar` varchar(550) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`Id`, `Username`, `Password`, `Name`, `CreateDate`, `RoleId`, `Avatar`, `Email`, `Phone`, `Address`) VALUES
(25, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '2019-11-18', 1, 'avatar_name25-.jpg', 'phananh@gmail.com', '0902132280', 'hanoi'),
(26, 'user', 'c4ca4238a0b923820dcc509a6f75849b', 'user', '2019-11-18', 2, 'avatar_name26-user.png', 'user@user.com', '0945802194', 'hanoi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `session` varchar(100) NOT NULL DEFAULT '''''',
  `time` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(24) NOT NULL,
  `browser` varchar(50) NOT NULL,
  `dateonline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_online`
--

INSERT INTO `user_online` (`session`, `time`, `ip`, `browser`, `dateonline`) VALUES
('vf4ij6620f4gg0m381g2a4majc', 1574126760, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2019-11-19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `visiter`
--

CREATE TABLE `visiter` (
  `Id` int(11) NOT NULL,
  `session` varchar(100) NOT NULL DEFAULT '''''',
  `time` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(24) NOT NULL,
  `browser` varchar(50) NOT NULL,
  `dateonline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `visiter`
--

INSERT INTO `visiter` (`Id`, `session`, `time`, `ip`, `browser`, `dateonline`) VALUES
(60, '3lfhd9k8k4s701f5gc2mlbh44s', 1573293177, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2019-11-09'),
(61, 'dg25v5dvlpbcktq9ae8g8pl036', 1573359229, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2019-11-10'),
(62, 'np56ep8sp9ke1ns4u3dsanh6fn', 1573378055, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2019-11-10'),
(63, 'eot14hm4gni2npu63ij2jfnbfd', 1573525318, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2019-11-12'),
(64, 'f4nv4qshtc6er4lf9t039jvh9m', 1573529469, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2019-11-12'),
(65, '59vdiio983kvugsdbiirf3a77n', 1573784147, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2019-11-15'),
(66, 'p8pk50kcqlupvd91626pvatgh8', 1573869316, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2019-11-16'),
(67, '1l4ved0cb56coto00t45fgt323', 1573889035, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2019-11-16'),
(68, 'vf4ij6620f4gg0m381g2a4majc', 1574126709, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebK', '2019-11-19');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `advertise`
--
ALTER TABLE `advertise`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_Categories_Supplies1` (`SupplyId`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_Comment_Product` (`ProductId`);

--
-- Chỉ mục cho bảng `contactinfo`
--
ALTER TABLE `contactinfo`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerId`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `imageslide`
--
ALTER TABLE `imageslide`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `intro`
--
ALTER TABLE `intro`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `livesport`
--
ALTER TABLE `livesport`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`LogoId`),
  ADD UNIQUE KEY `logo` (`alias`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`MenuId`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_Product_Supplies` (`SupplyId`),
  ADD KEY `FK_Product_Categories` (`CategoryId`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_Id_Supplies1` (`SupplyId`),
  ADD KEY `FK_Id_Category1` (`CategoryId`);

--
-- Chỉ mục cho bảng `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`SupplyId`);

--
-- Chỉ mục cho bảng `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_User_Role` (`RoleId`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`session`);

--
-- Chỉ mục cho bảng `visiter`
--
ALTER TABLE `visiter`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `advertise`
--
ALTER TABLE `advertise`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `contactinfo`
--
ALTER TABLE `contactinfo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `imageslide`
--
ALTER TABLE `imageslide`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `intro`
--
ALTER TABLE `intro`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `livesport`
--
ALTER TABLE `livesport`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `logo`
--
ALTER TABLE `logo`
  MODIFY `LogoId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `MenuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `supplies`
--
ALTER TABLE `supplies`
  MODIFY `SupplyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `type`
--
ALTER TABLE `type`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `visiter`
--
ALTER TABLE `visiter`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `FK_Categories_Supplies1` FOREIGN KEY (`SupplyId`) REFERENCES `supplies` (`SupplyId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_Comment_Product` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_Product_Categories` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Product_Supplies` FOREIGN KEY (`SupplyId`) REFERENCES `supplies` (`SupplyId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `FK_Id_Category1` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Id_Supplies1` FOREIGN KEY (`SupplyId`) REFERENCES `supplies` (`SupplyId`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_User_Role` FOREIGN KEY (`RoleId`) REFERENCES `role` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

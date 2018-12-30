-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2018 at 06:56 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book`
--

-- --------------------------------------------------------

--
-- Table structure for table `billdetails`
--

CREATE TABLE `billdetails` (
  `id` int(11) NOT NULL,
  `id_bill` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `billdetails`
--

INSERT INTO `billdetails` (`id`, `id_bill`, `id_product`, `count`, `price`) VALUES
(1, 2, 1, 1, 44000),
(2, 3, 12, 2, 30000),
(3, 3, 14, 2, 80000),
(4, 4, 1, 3, 44000),
(5, 4, 14, 2, 80000),
(6, 4, 15, 4, 45000),
(7, 5, 1, 2, 44000),
(8, 6, 14, 2, 80000),
(9, 7, 20, 3, 68000),
(10, 7, 12, 1, 30000),
(11, 8, 1, 3, 44000),
(12, 8, 12, 1, 30000),
(13, 9, 30, 2, 45000),
(14, 9, 15, 1, 45000),
(15, 10, 14, 1, 80000),
(16, 11, 12, 1, 30000),
(17, 12, 17, 1, 58000),
(18, 13, 12, 1, 30000),
(19, 14, 31, 1, 110000),
(20, 15, 31, 1, 110000);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `customer` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sumMoney` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_by` int(11) NOT NULL,
  `create_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `customer`, `address`, `phone`, `sumMoney`, `status`, `create_by`, `create_at`) VALUES
(2, 'Ngô Văn Thái', 'Thôn chiền đức thượng hoài đức hà nội', '0165987452', 44000, 2, 39, '2018-12-01'),
(3, 'Trần Quang Hồng', 'Làng văn hóa xã sơn đồng hoài đức hà nội', '0962199876', 220000, 3, 43, '2018-12-01'),
(4, 'Nguyễn Thế Lâm', 'Thôn yên lũng xã an khánh huyện hoài đước thành phố hà nội.', '0962199793', 472000, 3, 38, '2018-12-01'),
(5, 'Trần Doãn Đạt', 'Hanoi, Hoàn Kiếm, Hanoi, Vietnam', '0962199792', 88000, 0, 45, '2018-12-01'),
(6, 'Trần Doãn Đạt', 'Hanoi, Hoàn Kiếm, Hanoi, Vietnam', '0962199793', 160000, 1, 45, '2018-12-01'),
(7, 'Nguyễn Ngọc Yến', 'Hanoi, Hoàn Kiếm, Hanoi, Vietnam', '1234566', 234000, 1, 59, '2018-12-01'),
(8, 'Ngô Văn Thái', 'Hoàn Kiếm Hà Nội', '0962199792', 162000, 2, 39, '2018-12-01'),
(9, 'Nguyễn Ngọc Yến', 'Đình làng nội hoài đức hà nội', '0962199799', 135000, 1, 59, '2018-12-01'),
(10, 'Nguyễn Ngọc Yến', 'Hanoi, Hoàn Kiếm, Hanoi, Vietnam', '1234566', 80000, 0, 59, '2018-12-01'),
(11, 'Trần Doãn Đạt', 'Hoài Đức Hà Nội', '0962199792', 30000, 0, 62, '2018-12-01'),
(12, 'Nguyễn Ngọc Yến', 'Hanoi, Hoàn Kiếm, Hanoi, Vietnam', '1234566', 58000, 0, 59, '2018-12-01'),
(13, 'Nguyễn Ngọc Yến', 'Hanoi, Hoàn Kiếm, Hanoi, Vietnam', '1234566', 30000, 0, 59, '2018-12-27'),
(14, 'Nguyễn Công Quân', 'Mộ Lao Hà Đông Hà Nội', '0969724210', 110000, 1, 62, '2018-12-30'),
(15, 'Nguyễn Công Quân', 'Thái Nguyên', '0989456639', 110000, 2, 62, '2018-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_by` int(11) NOT NULL,
  `url` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `create_by`, `url`) VALUES
(1, 'Tiểu thuyết', 2, 'thieu-thuyet'),
(4, 'Sách chính trị‎', 2, 'sach-chinh-tri'),
(5, 'Sách địa lý‎', 2, 'sach-dia-ly'),
(6, 'Sách giáo khoa‎', 2, 'sach-giao-khoa'),
(8, 'Sách phi hư cấu‎ ', 2, 'sach-phi-hu-cau'),
(10, 'Sách kinh doanh‎ ', 2, 'sach-kinh-doanh'),
(12, 'Sách thiếu niên‎ ', 2, 'sach-thieu-nien'),
(14, 'Tạp Chí', 2, 'tap-chi'),
(18, 'Sách khoa học viễn tưởng‎ ', 2, 'sach-khoa-hoc-vien-tuong'),
(19, 'a', 2, 'a'),
(20, 'b', 2, 'b'),
(21, 'c', 2, 'c');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `id_product`, `type`) VALUES
(0, NULL, NULL, NULL),
(1, 'image15418680147621.png', 1, 1),
(2, 'image15418680147622.png', 1, 2),
(3, 'image15418683539671.png', 2, 1),
(4, 'image15418683539672.png', 2, 2),
(5, 'image15418684838491.png', 3, 1),
(6, 'image15418684838492.png', 3, 2),
(7, 'image15418685971101.png', 4, 1),
(8, 'image15418685971102.png', 4, 2),
(9, 'image15418686952181.png', 5, 1),
(10, 'image15418686952182.png', 5, 2),
(11, 'image15418687975291.png', 6, 1),
(12, 'image15418687975292.png', 6, 2),
(13, 'image15418689163051.png', 7, 1),
(14, 'image15418689163052.png', 7, 2),
(15, 'image15418690088041.png', 8, 1),
(16, 'image15418690088042.png', 8, 2),
(17, 'image15418690816401.png', 9, 1),
(18, 'image15418690816402.png', 9, 2),
(19, 'image15418692984881.png', 10, 1),
(20, 'image15418692984882.png', 10, 2),
(21, 'image15418697207131.png', 11, 1),
(22, 'image15418697207132.png', 11, 2),
(23, 'image15418700351351.png', 12, 1),
(24, 'image15418700351352.png', 12, 2),
(25, 'image15418701451391.png', 13, 1),
(26, 'image15418701451392.png', 13, 2),
(27, 'image15418702348131.png', 14, 1),
(28, 'image15418702348132.png', 14, 2),
(29, 'image15418703821561.png', 15, 1),
(30, 'image15418703821562.png', 15, 2),
(31, 'image15418704635611.png', 16, 1),
(32, 'image15418704635612.png', 16, 2),
(33, 'image15418705975241.png', 17, 1),
(34, 'image15418705975242.png', 17, 2),
(35, 'image15418706858901.png', 18, 1),
(36, 'image15418706858902.png', 18, 2),
(37, 'image15418707850291.png', 19, 1),
(38, 'image15418707850292.png', 19, 2),
(39, 'image15418710635391.png', 30, 1),
(40, 'image15418710635392.png', 30, 2),
(49, 'anh1.png', 24, 1),
(50, 'anh11.png', 24, 2),
(51, 'anh2.png', 25, 1),
(52, 'anh22.png', 25, 2),
(53, 'anh3.png', 26, 1),
(54, 'anh33.png', 26, 2),
(55, 'anh4.png', 27, 1),
(56, 'anh44.png', 27, 2),
(57, 'anh5.png', 28, 1),
(58, 'anh55.png', 28, 2),
(59, 'anh6.png', 29, 1),
(60, 'anh66.png', 29, 2),
(61, 'anh3.png', 20, 1),
(62, 'anh2.png', 20, 1),
(63, 'image15459003820511.png', 31, 1),
(64, 'image15459003820512.png', 31, 2),
(65, 'image15459044607051.png', 32, 1),
(66, 'image15459044607052.png', 32, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public` date DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `create_by` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `id_category` int(11) DEFAULT NULL,
  `url` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `author`, `public`, `count`, `price`, `title`, `description`, `create_by`, `type`, `id_category`, `url`) VALUES
(1, 'Lưng Chừng Cô Đơn', 'Nguyễn Ngọc Thạch', '1970-01-23', 97, 44000, 'Lưng Chừng Cô Đơn. Thế nào là cô đơn?. Là những ngày thức dậy trong lòng cảm thấy trống rỗng vô cùng..', 'Lưng Chừng Cô Đơn\r\n\r\nThế nào là cô đơn?\r\n\r\nLà những ngày thức dậy trong lòng cảm thấy trống rỗng vô cùng.\r\n\r\nLà những ngày có cảm giác bị thế giới bỏ rơi…..\r\n\r\nkhông ai ở cạnh mình, không ai hiểu được mình.\r\n\r\nMuốn tìm ai đó để chia sẻ những gì nặng trĩu trong lòng,\r\n\r\nnhưng lại chẳng thể tìm được một người để lắng nghe…\r\n\r\nThế đấy, những điều nhỏ xíu tưởng chừng như có, như không, như vô tình, cũng có thể khiến một người rơi vào khoảng lặng của chính mình, để rồi từ đó thấy được dư vị của cô đơn.\r\n\r\nDư vị ấy chẳng hề dễ chịu, dư vị ấy dễ làm người ta buồn lắm, nhưng  mà khi ở cái lưng chừng tuổi trẻ, nào ai thoát nỗi cô đơn, thoát nổi những ngày buồn bã. Cô đơn đó mà, giữa những cảm xúc của con người, giống như một nốt nhạc đệm trong bản nhạc của cuộc đời, không thể thiếu cũng chẳng thế tránh, chỉ có thể cùng nó, lặng lẽ đi qua những năm tháng chông chênh để nhận lấy trưởng thành.\r\n\r\nDư vị ấy,  bạn sẽ chấp nhận nó chứ. Nếu không thể, hãy để “Lưng chừng cô đơn” cùng bạn vượt qua những ngày chênh vênh này để thấy cô đơn hóa ra chẳng có gì đáng sợ. Chỉ là buồn một chút, tủi thân một chút, mệt mỏi một chút mà thôi. Nhưng bạn biết không? Cô đơn mới là thứ duy nhất không bao giờ phản bội bạn, dù giông bão hay là bình yên. Cuối cùng, cũng chỉ có cô đơn ở đó và bên cạnh chúng ta mà thôi...', 2, 'new', 1, 'lung-chung-co-don'),
(2, 'Khóc Giữa Sài Gòn', 'Nguyễn Ngọc Thạch', '2018-10-03', 50, 57000, 'Khóc Giữa Sài Gòn  “Khóc giữa Sài Gòn” cho những ngày yêu đương khờ dại…  Sài Gòn, thành phố của những kẻ cô đơn. Sài Gòn cứ hối hả, còn người ta cứ mãi dại khờ.  “Khóc giữa Sài Gòn” là một bức tranh rất thực với rượu, với thuốc, nước mắt và rất nhiều nước mắt.', 'Khóc Giữa Sài Gòn\r\n\r\n“Khóc giữa Sài Gòn” cho những ngày yêu đương khờ dại…\r\n\r\nSài Gòn, thành phố của những kẻ cô đơn. Sài Gòn cứ hối hả, còn người ta cứ mãi dại khờ.\r\n\r\n“Khóc giữa Sài Gòn” là một bức tranh rất thực với rượu, với thuốc, nước mắt và rất nhiều nước mắt.\r\n\r\nỞ đó, người ta bên nhau trong những ánh đèn lấp lánh  không bao giờ tắt. Rồi lại vội vã, giấu đi những giọt lệ biệt ly ở một bến xe khách lúc hai, ba giờ sáng.\r\n\r\n Sài Gòn, nơi có những con người dám chết vì nhau, dám sống vì nhau, và dám khóc vì nhau.\r\n\r\nPhan, Nam, Tú, Mễ, Thụy, Ân, 6 con người, 6 màu sắc khác nhau. Họ lạc lối trong niềm đau, sống trong những ảo ảnh và ước vọng do mình tạo nên.\r\n\r\nHọ va vào đời nhau, dẫu chỉ trong một khoảnh khắc mong manh, ngắn ngủi. Nhưng cũng khiến trái tim mỗi người mang nhiều những dư âm.\r\n\r\nRồi đem theo những hoang hoải và hy vọng. Chẳng vì điều gì to tát, không phải cái gọi là mãi mãi, hay vật chất xa hoa. Chỉ đơn giản là được ôm nhau vào lòng và khóc. Khóc cho thỏa những cơn đau chật vật, cho thỏa những ngày muốn có nhau mà bất lực và cho thỏa những ngày mai không còn được gặp lại nhau nữa.', 2, 'new', 1, 'khoc-gia-sai-gon'),
(3, 'Yêu Đi Đừng Sợ', 'Kim Oanh', '2018-04-10', 110, 45000, 'Ngọt ngào hay đắng chát?  Dịu mát hay gắt nồng? Bạn bỏ gì trong tách trà tình yêu của mình?', 'Ngọt ngào hay đắng chát? \r\nDịu mát hay gắt nồng?\r\nBạn bỏ gì trong tách trà tình yêu của mình?\r\nBạn biết không:\r\nTách trà của ai đó có thể có vị ngọt ngào thơm nồng của mối tình đầu, của tuổi trẻ đầy bồng bột nhưng cũng đầy đam mê. \r\nTách trà của ai đó có thể có vị đắng chát của hoài nghi, tổn thương và sợ hãi. \r\nNhưng ít nhất họ đều dám yêu, dám cho đi đều can đảm để bước vào tình yêu, hết mình vì tình yêu và dẫu có thất bại cũng đừng ngại đứng dậy.\r\n\r\nBạn có thể sợ hãi cái nắm tay của một ai đó bởi sợ rằng người một mai sẽ buông tay . Bạn có thể tổn thương vì một lần buông bỏ. Bạn cũng có thể luôn cho rằng hạnh phúc chỉ đến một lần, để vụt mất nghĩa là không có cơ hội tìm lại.Bạn có thể sợ rất nhiều thứ, hoài nghi rất nhiều thứ. \r\nNhưng bạn biết không: bạn còn trẻ. Và nếu bạn không yêu, nghĩa là bạn đánh mất đi những đặc quyền điên rồ mà tuyệt vời nhất của tuổi trẻ \r\nSợ gì không rung động. \r\nSợ gì không mở lòng mình.\r\nSợ gì không đón nhận một ai đó.\r\n\r\nCô gái à, rồi sẽ đến một ngày, bạn sẽ lại được yêu, được nâng niu và mọi vết thương sẽ được chữa lành. Cô gái à, đừng cố chấp, đừng gạt bỏ mọi cơ hội đến với bạn. Đừng khó tính quá với chính bản thân và trái tim mình. Trái tim nào cũng cần yêu thương, cần điểm tựa cần mảnh ghép phù hợp với chính mình \r\nMột cô gái thông minh, là một cô gái biết chọn những hương vị tuyệt nhất cho tách trà tình yêu của mình. \r\nYêu đi đừng sợ! Hãy cứ yêu như chưa từng tổn thương đến thế!', 2, 'new', 1, 'yeu-di-dung-so'),
(4, 'Đừng Gọi Anh Là Người Yêu Cũ (Tái Bản 2017)', 'Du Phong', '0015-02-08', 100, 70000, 'Đừng Gọi Anh Là Người Yêu Cũ (Tái Bản 2017)  “Một số người coi tình cũ như vết thương, một số khác coi như chiến tích, số khác nữa lại coi như nỗi ân hận suốt đời.  Còn tôi không có tình cũ, vì càng giữ nó càng mới!”', 'Đừng Gọi Anh Là Người Yêu Cũ (Tái Bản 2017)\r\n\r\n“Một số người coi tình cũ như vết thương, một số khác coi như chiến tích, số khác nữa lại coi như nỗi ân hận suốt đời.\r\n\r\nCòn tôi không có tình cũ, vì càng giữ nó càng mới!”\r\n\r\n“Tình cũ” luôn là một thứ gì đó án ngữ trong tim, mà mỗi lần nhớ về lòng ta lại chua xót. Không phải là còn yêu, cũng không phải là hận, để mà không muốn nhận danh xưng Người-Yêu-Cũ, chỉ đơn giản, những thứ cũ kỹ luôn đi cùng cảm giác nuối tiếc buồn thương, mà có ai lại muốn chấp nhận việc trong cuộc đời một người, mình chỉ là kẻ giữ chỗ cho người mới đến sau…\r\n\r\n“Đừng gọi anh là người yêu cũ” là những dòng văn lãng mạn vương vấn chút xót xa về những mối quan hệ không tên, không ràng buộc, tưởng như một cơn gió nhẹ lướt qua cuộc đời, nhưng lại hằn sâu những nỗi niềm khắc khoải khiến người ta không thể dễ dàng quên đi được.\r\n\r\n“Chưa bao giờ nghĩ rằng chúng ta có thể tiến xa đến như vậy…Càng không bao giờ nghĩ rằng chúng ta đã có thể tiến xa đến như vậy, mà vẫn chia tay…”\r\n\r\n“Rồi một ngày cô gái bỏ đi xa\r\n\r\nChàng trai nhớ mà không tìm ra được\r\n\r\nƯớc gì mình trở về ngày tháng trước\r\n\r\nSẽ chẳng bao giờ để tuột tình yêu”\r\n\r\nTừng câu chữ trong cuốn sách được sắp xếp khéo léo với nhiều thể loại khác nhau, khi là những đoạn thơ vần điệu đầy suy tư trăn trở, khi là những bài tản văn nhẹ nhàng đầy lý trí, lúc lại là những truyện ngắn với những ý nghĩa ẩn chứa khiến người đọc phải ngẫm ngợi rất lâu để có thể gật gù: “Thì ra cũng có một người mình từng yêu như vậy!”\r\n\r\nSau 3 năm, nhờ những tình cảm yêu mến mà bạn đọc dành cho tác giả Du Phong và cuốn sách, “Đừng gọi anh là người yêu cũ” được tái bản trong một hình hài khác, với những bài thơ, truyện ngắn cả cũ lẫn mới, hứa hẹn sẽ mang đến cho độc giả thêm nhiều trải nghiệm thú vị và bất ngờ. Một cuốn sách nhất định phải có trong giá sách nhà bạn được ra mắt với phiên bản mới trong mùa hè này!\r\n\r\n', 2, 'new', 1, 'dung-goi-anh-la-nguoi-yeu-cu'),
(5, 'ANH KHÔNG TIẾC EM TIẾC THANH XUÂN', 'Nguyen Duc Anh', '2017-03-10', 50, 35000, 'Đọc để yêu và sống hết mình cho tuổi trẻ  Dành cho những cô gái can đảm sống, can đảm yêu và …can đảm từ bỏ  Ấn phẩm được mong chờ nhất tháng 7- nhá hàng vào phút cuối <3', 'Đọc để yêu và sống hết mình cho tuổi trẻ\r\n\r\nDành cho những cô gái can đảm sống, can đảm yêu và …can đảm từ bỏ\r\n\r\nẤn phẩm được mong chờ nhất tháng 7- nhá hàng vào phút cuối <3\r\n\r\n“Nếu như coi đời người là một bản nhạc thì tuổi thanh xuân chính là phần điệp khúc với những nốt nhạc trong trẻo, rực rỡ nhất. Nó đọng lại trong lòng mỗi người như những giọt café cuối cùng nơi đáy cốc mãi chẳng tan. Đời người ngắn lắm và thanh xuân thì chẳng bao lâu, nhất là tuổi thanh xuân của người con gái – như một bông hoa rực rỡ nhưng chóng lụi tàn.\r\n\r\nAnh, em không tiếc, em tiếc thanh xuân – thủ thỉ kể với ta về những ngày tuổi trẻ như thế!\r\n\r\nMột tuổi trẻ nồng cháy, nhiệt thành, dám mạo hiểm, thử thách với những điều mà bản thân cho là xứng đáng.\r\n\r\nMột tuổi trẻ dám sống, dám yêu hết mình.\r\n\r\nMột tuổi trẻ trong veo, thuần khiết với những tình cảm chỉ đến một lần trong đời, tất cả những lần sau đó chỉ là bản sao không hoàn hảo của tuổi trẻ ấy.\r\n\r\nVà đó cũng là một tuổi trẻ với đầy những chông gai để sau mỗi lần vấp ngã ta trưởng thành và mạnh mẽ hơn.”\r\n\r\nAnh, em không tiếc, em tiếc thanh xuân là những câu chuyện thật, những suy nghĩ thật và những chi tiết rất đời thường. Nhưng nó lại chạm đến tâm hồn người đọc và làm bạn suy nghĩ, nghiền ngẫm để rồi gật gù, để rồi bật cười, để rồi đồng ý với chính những suy nghĩ đấy.\r\n\r\nVới giọng văn đôi khi tưng tửng, tếu táo, nhưng thực tế và thậm chí  đôi khi hơi phũ . Văn phong không trau chuốt quá đà nhưng những gì Đức Anh viết đều xuất phát từ sự thấu hiểu đáng kinh ngạc, sự bênh vực và ủng hộ cho phái yếu. Mỗi câu mỗi chữ đều nói lên rất rõ ràng nỗi lòng của người con gái. Có lẽ tác giả hiểu con gái hơn cả cách con gái hiểu chính mình. Bởi thể “Anh, em không tiếc, em tiếc thanh xuân” là món quà thanh xuân dành tặng tất cả những cô gái nhỏ\r\n\r\nPhái nữ - dẫu mạnh mẽ, cứng cỏi đến đầu vẫn cứ là phái yếu.  Đừng tiếc chi một người đàn ông không mang lại hạnh phúc cho bạn. Hãy tiếc tuổi trẻ ngắn ngửi  chỉ đến một lần\r\n\r\nVà, hãy yêu lấy mình. Con gái ạ! ', 2, 'new', 1, 'anh-khong-tiec-em-thanh-xuan'),
(6, 'Những Nỗi Buồn Không Tên', 'Linh', '2018-11-05', 60, 45000, 'Tôi đã có rất nhiều khoảng thời gian, cô đơn ngồi xuống ngắm nghía những nỗi buồn đang chạy dọc trong từng mạch máu cảm xúc. Những nỗi buồn không tên gọi, không biết bắt đầu từ đâu và kết thúc nơi nào. Hoặc có lẽ vì quá buồn, mà tôi cũng chẳng còn muốn đặt tên cho chúng nữa. Những nỗi buồn xếp lớp ngay ngắn trong những ngày một mình, thật ra cũng rất đẹp.', 'Tôi đã có rất nhiều khoảng thời gian, cô đơn ngồi xuống ngắm nghía những nỗi buồn đang chạy dọc trong từng mạch máu cảm xúc. Những nỗi buồn không tên gọi, không biết bắt đầu từ đâu và kết thúc nơi nào. Hoặc có lẽ vì quá buồn, mà tôi cũng chẳng còn muốn đặt tên cho chúng nữa. Những nỗi buồn xếp lớp ngay ngắn trong những ngày một mình, thật ra cũng rất đẹp.\r\n\r\nNgày ngày tháng tháng trôi qua, nỗi buồn cũng theo thời gian cựa mình rủ nhau đi mất. Rồi có hôm vô lý kéo nhau trở về làm tôi trở tay chẳng kịp. Những lúc đó, chỉ biết bất lực ôm mặt khóc rưng rức như đứa trẻ bị phạt đòn.\r\n\r\nRồi tôi nhận ra rằng, nỗi buồn cũng có bạn.\r\n\r\nRồi tôi nhận ra rằng, tôi không phải chỉ buồn-một-mình. Mà thế giới này, cũng có biết bao nhiêu người, đi qua thanh xuân, vấp phải nỗi buồn giống tôi.\r\n\r\nBạn đã bao giờ vẽ những nỗi buồn của mình chưa? Liệu có thể nào cùng nắm tay tôi, chúng mình đi hết nỗi buồn này với nhau, được không?\r\n\r\n \r\n\r\nMình nắm tay nhau nhé\r\n\r\nCùng đi hết nỗi buồn\r\n\r\nNỗi buồn đẹp như vẽ\r\n\r\nRồi đến lúc phải buông…', 2, 'new', 1, 'nhung-noi-buon-khong-ten'),
(7, 'Nắm Tay Anh Rồi Bình Yên Sẽ Tới', 'Du Phong', '2018-10-09', 45, 69000, 'Nắm Tay Anh Rồi Bình Yên Sẽ Tới   “Nếu có một người khiến em quên quá khứ  Nếu có một người khiến em ngủ thật say,  Nếu có một người muốn nắm lấy bàn tay,  Cho em tựa bờ vai đầy vững chãi…', 'Nắm Tay Anh Rồi Bình Yên Sẽ Tới \r\n\r\n“Nếu có một người khiến em quên quá khứ\r\n\r\nNếu có một người khiến em ngủ thật say,\r\n\r\nNếu có một người muốn nắm lấy bàn tay,\r\n\r\nCho em tựa bờ vai đầy vững chãi…\r\n\r\nThì hãy mở lòng và yêu đi cô gái!”\r\n\r\nDù đã đi qua những thương tổn thì chúng ta đều có quyền yêu và được yêu thêm lần nữa, nên không thể vì một lần từng đau mà cả đời chối bỏ những yêu thương. Nếu có thể, xin hãy cứ mở lòng để nắm lấy tay một người, biết đâu bình yên sẽ đến bên đời!\r\n\r\nHạnh phúc nhiều khi hiện hữu xung quanh mà ta không biết, hay thậm chí là biết nhưng không dám mở lòng đón nhận. Sau những đổ vỡ trong tình yêu, sau những chông chênh bất định trong những ngày tháng cô đơn, chúng ta dường như quên đi mất tình yêu đang tồn tại ở xung quanh, quên đi mất mình xứng đáng được yêu thêm lần nữa. Nhưng bạn ơi, hãy cho ta một niềm tin, để can đảm nắm tay một người nữa, can đảm đợi chờ một bình yên sẽ tới!\r\n\r\nNắm tay anh rồi bình yên sẽ đến là lời động viên, là lời thúc giục chúng ta quên đi những nỗi đau trong quá khứ và đón nhận những yêu thương đang chờ đợi. Dù cuốn sách kể về những đổ vỡ, những cô đơn, những gắng gượng vượt qua niềm đau,… nhưng chỉ duy nhất một thông điệp được truyền tải: “Hạnh phúc trên đời sẽ đến với những ai tin vào sự tồn tại của nó”.', 2, 'new', 1, 'nam-tay-anh-roi-binh-yen-se-toi'),
(8, 'Cuộc Sống Rất Giống Cuộc Đời (Tái Bản 2017).', 'Hoàng Hải Nguyễn', '2018-11-04', 45, 45000, 'Cuộc Sống Rất Giống Cuộc Đời (Tái Bản 2017)  Nếu bạn đang cảm thấy bế tắc trong cuộc sống, cần một ai đó xốc lại tinh thần để tiếp tục chiến đấu với cuộc đời thì chắc chắn không nên bỏ lỡ cuốn sách này. “Cuộc sống rất giống cuộc đời\" sẽ đem lại cho bạn những tiếng cười sảng khoái và những phút giây thư giãn qua từng trang sách.', 'Cuộc Sống Rất Giống Cuộc Đời (Tái Bản 2017)\r\n\r\nNếu bạn đang cảm thấy bế tắc trong cuộc sống, cần một ai đó xốc lại tinh thần để tiếp tục chiến đấu với cuộc đời thì chắc chắn không nên bỏ lỡ cuốn sách này. “Cuộc sống rất giống cuộc đời\" sẽ đem lại cho bạn những tiếng cười sảng khoái và những phút giây thư giãn qua từng trang sách.\r\n\r\nKhông tạo cảm giác ức chế hay nhàm chán với những lối đi cũ mòn của văn chương hoa mĩ. Giọng văn và cách kể của tác giả Hoàng Hải Nguyễn có phần phóng khoáng, hóm hỉnh, sâu cay và đặc biệt là biệt tài gây cười đặc trưng có một không hai. Từng gây sốt cộng đồng mạng với những bài viết như “Đàn ông tuổi 40, Thư mẫu gửi vợ, Nhật ký của bố, Bây giờ anh định thế nào ?...” ;  anh từng bước xây dựng cho mình một hướng đi độc đáo và tạo được dấu ấn với cá tính riêng biệt, cuốn sách bạn là tập hợp tất cả những tản văn hay nhất anh góp nhặt trong quãng thời gian “chinh chiến với cuộc đời.” \r\n\r\nDưới góc nhìn của một người đàn ông U40, đã có gia đình và hai con, anh nhìn nhận sự xoay vần của cuộc đời theo cách của người từng trải có nhiều kinh nghiệm. “Có lẽ trên đời này tôi chưa bao giờ được bế trên tay một sinh vật xinh đẹp như vậy, tôi cũng chưa thấy một thứ tình cảm nào gắn kết ngay khi chỉ vừa gặp mặt, một tình yêu kì lạ hình thành từ khi vợ tôi mang thai và kịp hoàn thiện vào giây phút tôi nhìn thấy con gái, đó là tình cha con!\r\n\r\n(Trích Nhật ký của bố) \r\n\r\nNhững câu chuyện về tổ ấm gia đình, chuyện xã hội, chuyện cuộc sống, chuyện phiếm bên lề được kết hợp khéo léo với chất văn “rất đàn ông” là điểm sáng giúp anh ghi dấu trong lòng bạn đọc. Từ những con chữ thông minh, sắc lẹm như lưỡi dao ấy, lại khiến người đọc trăn trở, đau đáu, có một khoảng lặng để suy ngẫm và nhận ra nhiều điều có ích.\r\n\r\n“Đàn ông tuổi 15 mơ ước thành đàn ông tuổi 20, đàn ông tuổi 20 mơ ước được trở thành đàn ông tuổi 30, đàn ông tuổi 30 mơ ước được trở thành đàn ông tuổi 40 và đàn ông tuổi 40 lại mơ ước được đặt chân lên cỗ máy thời gian để quay lại tuổi 30 với toàn bộ tài sản của mình!” \r\n\r\n(Trích Đàn ông tuổi 40)\r\n\r\nGiống như lời tác giả tâm sự “Tôi hi vọng các bạn sẽ có được tiếng cười và sự vui vẻ khi đọc nó sau một ngày làm việc vất vả. Qua các câu chuyện, tôi mong muốn các bạn hãy luôn lạc quan, yêu đời, mỗi người chỉ sống có một lần vì vậy hãy tận hưởng nó bằng niềm vui. Cuộc sống rất giống cuộc đời !”', 2, 'new', 1, 'cuoc-song-rat-giong-cuoc-doi'),
(9, 'Không còn thời gian để buồn', 'Thảo Xù', '2018-11-04', 12, 60000, '“Không còn thời gian để buồn” – cho những ai đang dần mất niềm tin vào tình yêu  “Tình yêu giống như bức tranh và mỗi chúng ta là mảnh ghép trong bức tranh ấy. Khi yêu, ta vẫn xem như thể người đó chính là mảnh ghép còn thiếu trong cuộc đời của mình.Và tin rằng, đó chính là người mình cần, là người không thể thiếu trong cuộc đời, cho đến khi họ quay lưng bước đi, mới biết: “Người đã từng như đã là mảnh ghép bức tranh của mình thì cũng có thể sẽ là mảnh ghép trong bức tranh của người khác”. Và tình yêu giống như sự đổi màu cho những bức tranh. Thế nên hãy là những người bước qua đời nhau như một sự thay đổi trải nghiệm muôn mầu của cuộc sống. Đừng quá bi ai sau một cuộc tình.”', '“Không còn thời gian để buồn” – cho những ai đang dần mất niềm tin vào tình yêu\r\n\r\n“Tình yêu giống như bức tranh và mỗi chúng ta là mảnh ghép trong bức tranh ấy. Khi yêu, ta vẫn xem như thể người đó chính là mảnh ghép còn thiếu trong cuộc đời của mình.Và tin rằng, đó chính là người mình cần, là người không thể thiếu trong cuộc đời, cho đến khi họ quay lưng bước đi, mới biết: “Người đã từng như đã là mảnh ghép bức tranh của mình thì cũng có thể sẽ là mảnh ghép trong bức tranh của người khác”. Và tình yêu giống như sự đổi màu cho những bức tranh. Thế nên hãy là những người bước qua đời nhau như một sự thay đổi trải nghiệm muôn mầu của cuộc sống. Đừng quá bi ai sau một cuộc tình.”\r\n\r\nSau mỗi cuộc tình tan vỡ, mỗi cuộc hôn nhân không hạnh phúc, lại là những niềm tin rạn nứt của những kẻ đã sờn lòng, đã thôi mong mỏi, thôi ao ước. Những câu chuyện chia tay, phản bội... nhan nhản ta đọc được mỗi ngày trên mạng, lại càng khiến định nghĩa về tình yêu thật sự trở nên mong manh và khó nắm bắt biết dường nào. Nhưng có phải thế không, có thực cuộc sống đã trở nên thực dụng và cõi lòng chúng ta ngày càng chai sạn đến độ, những tình yêu đẹp đẽ bền lâu chỉ có trong phim ảnh?\r\n\r\nTôi đã tìm thấy câu trả lời cho nỗi băn khoăn ấy khi lần giở những trang viết của “Không còn thời gian để buồn”. Đúng như tên gọi của nó – thật nhẹ nhõm và giản dị - cuốn sách đã khiến nỗi buồn trong ta vợi bớt tự bao giờ. Viết từ góc nhìn của một người vợ, người mẹ, và trên hết là một người phụ nữ từng lạc lối trong tình yêu như bao người phụ nữ khác, cuốn sách chạm đến trái tim ta bằng một niềm cảm thức dịu dàng, đầy trắc ẩn của một người đàn bà từng trải. Có thể dễ dàng bắt gặp hình ảnh mình đâu đó trong cuốn sách – bởi ai chẳng từng đi qua những tháng năm tuổi trẻ của tình yêu cuồng nhiệt và đôi khi là khờ dại? Nhưng hơn thế, ta còn thấy được hành trình của một người con gái khi dũng cảm bước qua một mối tình đã làm mình đau khổ nhiều hơn hạnh phúc, để tìm đến một nơi thực sự thuộc về mình.\r\n\r\n“Không còn thời gian để buồn” còn đem đến một góc nhìn mới mẻ về cuộc sống hôn nhân, khi mà giờ đây, nhắc đến hôn nhân mỗi cô gái trẻ vẫn thường cảm thấy nhiều e ngại. Có ai đó từng nói: Những cuộc hôn nhân ngày xưa thường lâu bền hơn giới trẻ bây giờ, bởi ngày xưa, người ta quan niệm khi một thứ đồ bị hỏng, người ta sẽ cố gắng tìm cách sửa chữa nó, còn giờ đây, người ta nhanh chóng bỏ nó đi để tìm đến một thứ khác tốt hơn. Và hình ảnh về cuộc sống hôn nhân trong “Không còn thời gian để buồn” cũng vậy, không có những khoảnh khắc lãng mạn như những cuốn tiểu thuyết hay phim ảnh, nhưng cũng ngọt ngào theo cách riêng của nó; vẫn có những tổn thương, rạn nứt đấy, nhưng thay vì chọn trách móc và buông tay nhau ngay khi có thể, người ta lại chọn cách thông cảm cho nhau – dù điều đó đôi khi lại là việc khó khăn nhất trên đời.\r\n\r\nĐọc “Không còn thời gian để buồn” cũng giống như nhâm nhi một tách trà ấm áp trong một chiều mưa, xuyên suốt những trang viết là những mẩu chuyện rất đời thường – về một người phụ nữ bất hạnh trong hôn nhân, về những người bà, người chị trong gia đình, về một cuộc đánh ghen, hay câu chuyện mẹ chồng – nàng dâu muôn thuở... – chỉ vậy thôi mà khi thì khiến ta bật cười với những câu chuyện vụn vặt dí dỏm của cuộc sống vợ chồng, khi khiến ta thấy sống mũi cay cay. Chỉ vậy thôi, nhưng cũng đủ khiến ta trân trọng hơn những khoảnh khắc bình dị bên người ta thương – để thấy cuộc sống này dễ chịu, dễ yêu hơn ta vẫn nghĩ.\r\n\r\n“Bạn chỉ có một cuộc đời để sống nhưng có nhiều cách để nghĩ. Mỗi người đều biết ngày sinh nhật của mình, nhưng chẳng ai biết được ngày về với vĩnh hằng. Vậy thì cứ sống cho trọn vẹn hôm nay một cách vui vẻ, làm tất cả những điều cần làm, vì biết đâu ngày mai sẽ chẳng còn cơ hội.\r\n\r\nKhông còn thời gian để buồn đâu!”', 2, 'new', 1, 'khong-con-thoi-gian-de-buon'),
(10, 'Chúng Ta Rồi Sẽ Ổn Thôi - Gào (Tái Bản 2017)', 'Gào , Minh Nhật', '2018-11-06', 40, 70000, 'Chúng Ta Rồi Sẽ Ổn Thôi - Gào (Tái Bản 2017)  “Đến một ngày, chúng ta sẽ cùng ngồi lại nơi nào đó, khi  mỗi người đã có những khoảng trời riêng, nhìn nhau bình thản, và nhận ra dù đã đi qua những khó khăn đến mấy, dù đã vấp bao nhiêu lần, dù chuyện gì xảy ra…Thì, chúng ta rồi sẽ ổn thôi.”', 'Chúng Ta Rồi Sẽ Ổn Thôi - Gào (Tái Bản 2017)\r\n\r\n“Đến một ngày, chúng ta sẽ cùng ngồi lại nơi nào đó, khi  mỗi người đã có những khoảng trời riêng, nhìn nhau bình thản, và nhận ra dù đã đi qua những khó khăn đến mấy, dù đã vấp bao nhiêu lần, dù chuyện gì xảy ra…Thì, chúng ta rồi sẽ ổn thôi.”\r\n\r\nĐôi khi tình yêu có những nghịch lý mà không ai có thể giải thích được: Khi ai đó vứt bỏ, ta lại cố sức chạy theo lượm nhặt những mảnh vụn để cố ghép thành một bức tranh hạnh phúc. Nhưng càng ghép càng thấy tổn thương. Chúng ta rồi sẽ ổn thôi viết về những câu chuyện, những mối tình dở dang như thế. Đó là tình yêu của tuổi trẻ, của sự ngơ dại, sự đĩnh đạc tình trường… Đó là những lời nói dối yêu thương trong vô thức, sự hi sinh không điểm cuối của người đàn bà, là câu chuyện về những “người cũ - người mới”, là những yêu thương chẳng có giới hạn bao giờ.\r\n\r\nĐể rồi, khi ta đi qua từng bước, từng bậc trên chặng đường dài của cuộc sống, bước qua tất cả những xước xát của tình yêu, lúc ấy mới có thể hiểu yêu thương mình, nuôi giữ ước mơ của chính mình mới là thứ cần yêu hơn bất cứ người đàn ông nào cả.\r\n\r\n\"Chúng ta rồi sẽ ổn thôi\", hãy tin rằng như thế. Vì cuộc sống này đâu chỉ có những nỗi buồn. Ngoài kia mặt trời vẫn chiếu những tia nắng mới. Ngoài kia, chim vẫn hót véo von cho một ngày nắng đẹp. Ngoài kia, có nhiều con đường để lựa chọn, nhiều niềm vui để tận hưởng hết. Ngoài kia, cuộc đời vẫn đang gọi bằng những tiếng gọi yêu thương...\r\n\r\nNhớ nhé, sống trọn cho mình từng phút giây mình đang có để còn thấy đời tươi đẹp lắm, đáng tận hưởng lắm. Và tin rằng: Yêu thương là một hành trình, dù đích đến là gì thì nó vẫn là một hành trình đáng nhớ. Chuyện chia tay cũng chỉ là biến cố nhỏ trong vô vàn những điều vạn biến trong cuộc đời này.\r\n\r\nQuan trọng là hãy bước đi và cứ bước đi: “Chúng ta rồi sẽ ổn thôi!”', 2, 'new', 1, 'chung-ta-roi-se-on-thoi-gao-tai-ban-2017'),
(11, '[BẢN ĐẶC BIỆT] KẺ DỊ BIỆT TẠI TRƯỜNG HỌC PHÉP THUẬT - TẬP 2 - TẶNG KÈM 1 BOOKMARK + SET 4 POSTCARD (SỐ LƯỢNG CÓ HẠN)', '	Sato Tsutomu', '2018-11-01', 30, 25000, 'Kẻ dị biệt tại trường học phép thuật (Tên gốc: Mahouka Koukou no Rettousei 魔法科高校の劣等生) của tác giả Sato Tsutomu.', 'Kẻ dị biệt tại trường học phép thuật (Tên gốc: Mahouka Koukou no Rettousei 魔法科高校の劣等生) của tác giả Sato Tsutomu.\r\n\r\nKẻ dị biệt tại trường học phép thuật là một trong những series ăn khách nhất tại xứ sở Mặt Trời mọc. Tính tới năm 2018, bộ truyện đã phát hành tổng cộng 26 tập, tẩu tán được hơn 8 triệu cuốn sách chỉ tính riêng tại Nhật theo bảng xếp hạng doanh số light novel do Oricon công bố. Không dừng lại ở đó, series này đã được Mad House – một trong những studio nổi tiếng và chắc tay nhất – chuyển thể thành anime vào năm 2014, gây sốt không chỉ ở Nhật Bản mà còn ở nhiều nước trên thế giới, trong đó có Việt Nam. Phiên bản manga của bộ truyện này cũng rất thành công về doanh số bán. Cả phiên bản manga lẫn phiên bản light novel gốc đều đã được rất nhiều các nhà xuất bản nước ngoài mua bản quyền, dịch sang nhiều thứ tiếng. Ngoài ra, series đình đám này còn được chuyển thể thành video game.\r\n\r\nKẻ dị biệt tại trường học phép thuật lấy bối cảnh thế giới tương lai, khi mà phép thuật không còn là sản phẩm của trí tưởng tượng, truyền thuyết hay cổ tích nữa mà đã trở thành công nghệ có thật. Phép thuật được giảng dạy phổ biến tại các trường cấp ba và đại học, trong đó trường Trung học Đệ Nhất là trường cấp ba danh giá nhất trong số chín trường cấp ba trực thuộc Đại học Phép thuật Quốc gia. Tại ngôi trường này, có hai anh em cùng huyết thống là Tatsuya và Miyuki đang chuẩn bị bước những bước chân đầu tiên vào cuộc sống trung học tươi đẹp của mình.\r\n\r\nNếu như trong tập đầu tiên, tác giả đã bước đầu đưa người đọc vào một thế giới phép thuật đậm chất khoa học viễn tưởng với những mô tả rất chi tiết và thuyết phục, thì trong tập thứ hai này câu chuyện sẽ được đẩy lên cao trào với những diễn biến đầy hấp dẫn và bất ngờ. Đó là sự xuất hiện của “phe đồng minh” với những lối tư duy phản biện nghe có vẻ thuyết phục nhưng ẩn chứa đằng sau là những âm mưu chính trị sâu xa. Đó là một cuộc hỗn chiến ở quy mô lớn hơn rất nhiều so với trận chiến Tatsuya đã trải qua ở tập 1 trong tuần lễ chiêu mộ thành viên CLB. Và cuối cùng, khép lại phần đầu tiên mang tên “Nhập học” của series light novel bom tấn này sẽ là một cái kết ngọt ngào hay chỉ là tấm màn đầu tiên được hé mở để lộ ra những âm mưu kinh khủng về sau?', 2, 'new', 14, 'ban-dac-biet-ke-di-biet-tai-truong-hoc-phep-thuat-tap-2'),
(12, 'Combo  Kẻ Dị Biệt Tại Trường Học Phép Thuật', 'Sato Tsutomu', '2018-11-03', 9, 30000, 'Combo  Kẻ Dị Biệt Tại Trường Học Phép Thuật - Tập 1 & 2 - Tặng Kèm 1 Bookmark +  Set 4 Postcard (Số Lượng Có Hạn)  Kẻ dị biệt tại trường học phép thuật (Tên gốc: Mahouka Koukou no Rettousei 魔法科高校の劣等生) của tác giả Sato Tsutomu.', 'Combo  Kẻ Dị Biệt Tại Trường Học Phép Thuật - Tập 1 & 2 - Tặng Kèm 1 Bookmark +  Set 4 Postcard (Số Lượng Có Hạn)\r\n\r\nKẻ dị biệt tại trường học phép thuật (Tên gốc: Mahouka Koukou no Rettousei 魔法科高校の劣等生) của tác giả Sato Tsutomu.\r\n\r\nKẻ dị biệt tại trường học phép thuật là một trong những series ăn khách nhất tại xứ sở Mặt Trời mọc. Tính tới năm 2018, bộ truyện đã phát hành tổng cộng 26 tập, tẩu tán được hơn 8 triệu cuốn sách chỉ tính riêng tại Nhật theo bảng xếp hạng doanh số light novel do Oricon công bố. Không dừng lại ở đó, series này đã được Mad House – một trong những studio nổi tiếng và chắc tay nhất – chuyển thể thành anime vào năm 2014, gây sốt không chỉ ở Nhật Bản mà còn ở nhiều nước trên thế giới, trong đó có Việt Nam. Phiên bản manga của bộ truyện này cũng rất thành công về doanh số bán. Cả phiên bản manga lẫn phiên bản light novel gốc đều đã được rất nhiều các nhà xuất bản nước ngoài mua bản quyền, dịch sang nhiều thứ tiếng. Ngoài ra, series đình đám này còn được chuyển thể thành video game.\r\n\r\nKẻ dị biệt tại trường học phép thuật lấy bối cảnh thế giới tương lai, khi mà phép thuật không còn là sản phẩm của trí tưởng tượng, truyền thuyết hay cổ tích nữa mà đã trở thành công nghệ có thật. Phép thuật được giảng dạy phổ biến tại các trường cấp ba và đại học, trong đó trường Trung học Đệ Nhất là trường cấp ba danh giá nhất trong số chín trường cấp ba trực thuộc Đại học Phép thuật Quốc gia. Tại ngôi trường này, có hai anh em cùng huyết thống là Tatsuya và Miyuki đang chuẩn bị bước những bước chân đầu tiên vào cuộc sống trung học tươi đẹp của mình.\r\n\r\nNếu như trong tập đầu tiên, tác giả đã bước đầu đưa người đọc vào một thế giới phép thuật đậm chất khoa học viễn tưởng với những mô tả rất chi tiết và thuyết phục, thì trong tập thứ hai này câu chuyện sẽ được đẩy lên cao trào với những diễn biến đầy hấp dẫn và bất ngờ. Đó là sự xuất hiện của “phe đồng minh” với những lối tư duy phản biện nghe có vẻ thuyết phục nhưng ẩn chứa đằng sau là những âm mưu chính trị sâu xa. Đó là một cuộc hỗn chiến ở quy mô lớn hơn rất nhiều so với trận chiến Tatsuya đã trải qua ở tập 1 trong tuần lễ chiêu mộ thành viên CLB. Và cuối cùng, khép lại phần đầu tiên mang tên “Nhập học” của series light novel bom tấn này sẽ là một cái kết ngọt ngào hay chỉ là tấm màn đầu tiên được hé mở để lộ ra những âm mưu kinh khủng về sau?', 2, 'hot', 14, 'combor-de-di-biet-tai-truong-hoc-phep-thuat'),
(13, 'Chuyện Tình Thanh Xuân Bi Hài Của Tôi Quả Nhiên Là Sai Lầm - Tập 3', 'Wataru WATARI', '2018-11-25', 45, 55000, 'Chuyện Tình Thanh Xuân Bi Hài Của Tôi Quả Nhiên Là Sai Lầm - Tập 3  Chuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm. (tên gốc: Yahari Ore no Seishun Rabukome wa Machigatteiru., gọi tắt là Oregairu), là một trong những series light novel ăn khách nhất trong vòng 20 năm trở lại đây, bộ truyện được viết bởi tác giả trẻ Wataru WATARI, do họa sĩ Ponkan8 vẽ minh họa và được xuất bản bởi NXB nổi tiếng Shogakukan.', 'Chuyện Tình Thanh Xuân Bi Hài Của Tôi Quả Nhiên Là Sai Lầm - Tập 3\r\n\r\nChuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm. (tên gốc: Yahari Ore no Seishun Rabukome wa Machigatteiru., gọi tắt là Oregairu), là một trong những series light novel ăn khách nhất trong vòng 20 năm trở lại đây, bộ truyện được viết bởi tác giả trẻ Wataru WATARI, do họa sĩ Ponkan8 vẽ minh họa và được xuất bản bởi NXB nổi tiếng Shogakukan.\r\n\r\nChuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm. đã dành giải light novel hay nhất của bảng xếp hạng uy tín Kono light novel ga sugoi! trong 3 năm liên tiếp là 2014, 2015 và 2016. Bên cạnh đó, nam chính và nữ chính của series này là Hachiman và Yokin oshita cũng đoạt giải nam nữ chính được yêu thích nhất trong các năm đó. Họa sĩ minh họa Ponkan8 với những bức tranh minh họa đẹp và sinh động của mình cũng được bình chọn là họa sĩ minh họa được yêu thích nhất trong năm 2015. Đến thời điểm hiện tại, series đã phát hành được 12 tập, nhưng số sách bán ra đã vượt mốc 7 triệu bản, một con số mà những đầu sách nổi tiếng như Cô gái văn chương hay Sói & Gia vị cũng chưa từng làm được.\r\n\r\nChuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm. được kể dưới góc nhìn của nhân vật chính Hikigaya Hachiman, một mẫu nam chính rất đặc biệt với thái độ sống tương đối \"cá biệt\". Hachiman luôn mang theo những triết lí rất \"bất cần đời\" nhưng lại không kém phần thấu đáo và sâu sắc, thể hiện rõ tính cách của một bộ phận học sinh trung học Nhật Bản hiện nay. Hachiman chưa bao giờ chịu khuất phục trước sự cô độc. Bạn bè không, bạn gái cũng không. Cứ mỗi lần nhìn những người bạn cùng lớp ca ngợi thời thanh xuân, câu ta lại lầm bầm “Một bọn giả dối. Lũ lừa gạt. Banh xác hết đi!”. Nếu ai đó hỏi cậu ta về ước mơ tương lai, cậu học sinh trung học nổi loạn này sẽ giễu cợt đáp rằng “là không phải đi làm”. Chính vì thái độ khép mình và bất cần đó, Hachiman đã bị cô giáo phụ sách đời sống học sinh \"tóm cổ\" lôi đến câu lạc bộ tình nguyện, nơi có sự hiện diện của một nữ sinh xinh đẹp hoàn hảo mọi thứ (ngoại trừ tính cách tệ hại), và câu chuyện dở khóc dở cười của một Hachiman bất cần nhưng lại phải đi giúp đỡ người khác bắt đầu từ đây...\r\n\r\nVới lối kể dí dỏm nhưng không kém phần sâu sắc, điểm đặc biệt của Chuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm. còn nằm ở chỗ các nhân vật thường lồng ghép rất nhiều thông tin từ các bộ truyện tranh, light novel, tác phẩm văn học... khác trong các đoạn hội thoại, kèm theo đó là cách nói chuyện sử dụng nhiều cách thức chơi chữ của các nhân vật chính, khiến bộ truyện trở nên độc đáo và hoàn toàn không giống bất cứ một bộ light novel học đường nào khác.\r\n\r\nSau 2 tập đầu tiên phần nào quen thuộc với độc giả Việt nhờ bản chuyển thể TV series anime rất được yêu thích, tập thứ 3 của “Chuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm” sẽ đem tới những câu chuyện thú vị và rất mới mẻ xoay quanh 3 nhân vật chính Hachiman, Yukino và Yui.\r\n\r\nHikigaya Hachiman – chàng trai trẻ mang thật nhiều những vết thương lòng từ quá khứ, người quá đỗi quen thuộc với sự cô độc tách biệt hoàn toàn với mọi người xung quanh, thế nhưng giờ đây lại nảy sinh một sự khó chịu đầy xa lạ. Quả nhiên là do sự vắng mặt bất thường của cô gái vốn là cầu nối mọi người trong câu lạc bộ tình nguyện ư… Toàn những chuyện sai lầm xảy ra mà cả Yukino hay Hachiman đều không đủ khéo léo để giải quyết. Những mặt không được phép cho ai thấy của cô Hiratsuka, sự đối xử ngọt ngào mà đắng cay với Totsuka, sự gào thét và những lời than vãn của Zaimokura, trận đấu phục hồi danh dự và bảo vệ lập trường bằng đấu bài kiểu Chiba,… Đâu đâu cũng chỉ là những kẻ chạy loạn sai hướng, liệu những tháng ngày bình yên có trở lại được với câu lạc bộ tình nguyện không? Câu chuyện tình thanh xuân lãng mạn bi hài của một kẻ cô độc và ngược ngạo sắp bước sang bản đàn thứ ba.\r\n\r\nĐặc biệt, trong tập 3 của “Chuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm” còn có  phụ chương đặc biệt được viết lại từ kịch bản của CD drama đi kèm phiên bản đặc biệt giới hạn của tập 3, nội dung diễn ra ngay sau mạch truyện chính của tập 3, quy tụ đầy đủ tất cả các nhân vật trọng yếu của “Chuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm”.\r\n\r\nHikari light novel – Thaihabooks trân trọng giới thiệu tới độc giả tập thứ 3 của siêu phẩm học đường bi hài được cực kỳ yêu thích “Chuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm”', 2, 'new', 14, 'chuyen-tinh-thanh-xuan-bi-hai-cua-toi-qua-nhien-la-sai-lam-tap-3'),
(14, 'CHUYỆN TÌNH THANH XUÂN BI HÀI CỦA TÔI QUẢ NHIÊN LÀ SAI LẦM - TẬP 4', 'Wataru WATARI', '2018-01-04', 40, 80000, 'Chuyện Tình Thanh Xuân Bi Hài Của Tôi Quả Nhiên Là Sai Lầm - Tập 4  Chuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm. (tên gốc: Yahari Ore no Seishun Rabukome wa Machigatteiru., gọi tắt là Oregairu), là một trong những series light novel ăn khách nhất trong vòng 20 năm trở lại đây, bộ truyện được viết bởi tác giả trẻ Wataru WATARI, do họa sĩ Ponkan8 vẽ minh họa và được xuất bản bởi NXB nổi tiếng Shogakukan.', 'Chuyện Tình Thanh Xuân Bi Hài Của Tôi Quả Nhiên Là Sai Lầm - Tập 4\r\n\r\nChuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm. (tên gốc: Yahari Ore no Seishun Rabukome wa Machigatteiru., gọi tắt là Oregairu), là một trong những series light novel ăn khách nhất trong vòng 20 năm trở lại đây, bộ truyện được viết bởi tác giả trẻ Wataru WATARI, do họa sĩ Ponkan8 vẽ minh họa và được xuất bản bởi NXB nổi tiếng Shogakukan.\r\n\r\nChuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm. đã dành giải light novel hay nhất của bảng xếp hạng uy tín Kono light novel ga sugoi! trong 3 năm liên tiếp là 2014, 2015 và 2016. Bên cạnh đó, nam chính và nữ chính của series này là Hachiman và Yokin oshita cũng đoạt giải nam nữ chính được yêu thích nhất trong các năm đó. Họa sĩ minh họa Ponkan8 với những bức tranh minh họa đẹp và sinh động của mình cũng được bình chọn là họa sĩ minh họa được yêu thích nhất trong năm 2015. Đến thời điểm hiện tại, series đã phát hành được 12 tập, nhưng số sách bán ra đã vượt mốc 7 triệu bản, một con số mà những đầu sách nổi tiếng như Cô gái văn chương hay Sói & Gia vị cũng chưa từng làm được.\r\n\r\nChuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm. được kể dưới góc nhìn của nhân vật chính Hikigaya Hachiman, một mẫu nam chính rất đặc biệt với thái độ sống tương đối \"cá biệt\". Hachiman luôn mang theo những triết lí rất \"bất cần đời\" nhưng lại không kém phần thấu đáo và sâu sắc, thể hiện rõ tính cách của một bộ phận học sinh trung học Nhật Bản hiện nay. Hachiman chưa bao giờ chịu khuất phục trước sự cô độc. Bạn bè không, bạn gái cũng không. Cứ mỗi lần nhìn những người bạn cùng lớp ca ngợi thời thanh xuân, câu ta lại lầm bầm “Một bọn giả dối. Lũ lừa gạt. Banh xác hết đi!”. Nếu ai đó hỏi cậu ta về ước mơ tương lai, cậu học sinh trung học nổi loạn này sẽ giễu cợt đáp rằng “là không phải đi làm”. Chính vì thái độ khép mình và bất cần đó, Hachiman đã bị cô giáo phụ sách đời sống học sinh \"tóm cổ\" lôi đến câu lạc bộ tình nguyện, nơi có sự hiện diện của một nữ sinh xinh đẹp hoàn hảo mọi thứ (ngoại trừ tính cách tệ hại), và câu chuyện dở khóc dở cười của một Hachiman bất cần nhưng lại phải đi giúp đỡ người khác bắt đầu từ đây...\r\n\r\nVới lối kể dí dỏm nhưng không kém phần sâu sắc, điểm đặc biệt của Chuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm. còn nằm ở chỗ các nhân vật thường lồng ghép rất nhiều thông tin từ các bộ truyện tranh, light novel, tác phẩm văn học... khác trong các đoạn hội thoại, kèm theo đó là cách nói chuyện sử dụng nhiều cách thức chơi chữ của các nhân vật chính, khiến bộ truyện trở nên độc đáo và hoàn toàn không giống bất cứ một bộ light novel học đường nào khác.\r\n\r\nNghỉ hè. Không gặp ai, không đi chơi, không vận động, Hachiman trải qua những ngày tháng sinh hoạt một mình. Tuy nhiên theo lời triệu tập của cô Hiratsuka, cậu đã bị bắt phải tham gia buổi tình nguyện ở khu cắm trại cùng với Yukinoshita, Yuigahama và những người khác dưới danh nghĩa câu lạc bộ phục vụ. Tuy nhiên, vì lý do nào đó mà nhóm “riajuu” gồm những người như Hayama, Miura cũng có mặt. Với sự kiện của tuổi thanh xuân được kích hoạt theo cách cưỡng chế này, nhóm Hachiman sẽ đối phó như thế nào? Đồ bơi, pháo hoa, buổi thử lòng can đảm, cuộc nói chuyện trong đêm cắm trại, cả khi đi tắm nữa...? “Mọi người đều thân thiết với nhau” là chuyện không thể ư!? Mùa hè có rất nhiều thứ nguy hiểm cần tránh đối với một kẻ cô đơn. Đây là tập bốn của tuổi thanh xuân tiếp tục sai lầm và đầy tréo ngoe như thường lệ!', 2, 'hot', 1, '/chuyen-tinh-thanh-xuan-bi-hai-cua-toi-qua-nhien-la-sai-lam-tap-4'),
(15, 'DATE A LIVE - TẬP 2 - TẶNG KÈM 1 POSTCARD (SỐ LƯỢNG CÓ HẠN)', 'Tachibana Koushi', '2017-01-05', 45, 45000, 'Date A Live - Tập 2 - Tặng Kèm 1 Postcard (Số Lượng Có Hạn)  Kể từ khi Tohka chuyển đến trường cấp ba nơi Itsuka Shidou đang theo học, ngày nào cũng thấy cô chí chóe với cô bạn cùng lớp của Shidou là Origami và cứ mỗi lần như vậy, Shidou lại phải chen vào ngăn cản hai người. Thế rồi vào một ngày mưa, cậu bỗng chạm trán Tinh linh thứ hai trên đường đi học về. Một thiếu nữ nhỏ nhắn, tay trái mang một con rối bông hình thỏ đang tung tăng chạy giữa đường mà không buồn giương ô... để rồi hụt chân ngã sõng soài.', 'Date A Live - Tập 2 - Tặng Kèm 1 Postcard (Số Lượng Có Hạn)\r\n\r\nKể từ khi Tohka chuyển đến trường cấp ba nơi Itsuka Shidou đang theo học, ngày nào cũng thấy cô chí chóe với cô bạn cùng lớp của Shidou là Origami và cứ mỗi lần như vậy, Shidou lại phải chen vào ngăn cản hai người. Thế rồi vào một ngày mưa, cậu bỗng chạm trán Tinh linh thứ hai trên đường đi học về. Một thiếu nữ nhỏ nhắn, tay trái mang một con rối bông hình thỏ đang tung tăng chạy giữa đường mà không buồn giương ô... để rồi hụt chân ngã sõng soài.\r\n \r\nKhi Shidou chạy đến định đỡ cô bé dậy, cô đáp lại cậu với vẻ sợ sệt. “Xin đừng... làm đau em...” Bị cả thế giới phủ nhận, thậm chí cự tuyệt và không biết bao nhiêu lần bị truy sát. Dù vậy, cô bé vẫn cố gắng chịu đựng, làm sao để sự tồn tại của mình không gây tổn thương cho người khác. Đó là một Tinh linh nhân hậu hơn bất cứ ai - Yoshino. Hãy giúp anh, Kotori. Anh nhất định... phải cứu cô bé ấy...!” Để ngăn cản thiếu nữ sở hữu năng lực có thể hủy diệt cả thế giới ấy, Shidou sẽ phải hẹn hò và khiến cô bé mở lòng với mình!?', 2, 'hot', 12, 'date-a-live-tap-2-tang-kem-1-postcard-so-luong-co-han'),
(16, 'DIỆT SLIME SUỐT 300 NĂM, TÔI LEVELMAX LÚC NÀO CHẲNG HAY - TẬP 1', 'Morita Kisetsu (Benio minh họa)', '2017-01-05', 50, 67000, 'Diệt Slime Suốt 300 Năm, Tôi Levelmax Lúc Nào Chẳng Hay - Tập 1  Azusa là một kẻ “cuồng công việc” điển hình, không yêu đương, không bạn bè, không niềm vui và sở thích, cô cống hiến cuộc đời mình cho công việc. Và kết quả là, Azusa chết vì làm việc quá sức. Nhờ phép màu, cô được tái sinh trong dáng hình của một phù thủy 17 tuổi trường sinh bất lão.', 'Diệt Slime Suốt 300 Năm, Tôi Levelmax Lúc Nào Chẳng Hay - Tập 1\r\n\r\nAzusa là một kẻ “cuồng công việc” điển hình, không yêu đương, không bạn bè, không niềm vui và sở thích, cô cống hiến cuộc đời mình cho công việc. Và kết quả là, Azusa chết vì làm việc quá sức. Nhờ phép màu, cô được tái sinh trong dáng hình của một phù thủy 17 tuổi trường sinh bất lão.\r\n\r\nQuyết tâm sống thật khác kiếp trước, Azusa nhàn nhã diệt Slime suốt 300 năm và đã vô tình đạt level max. Sức mạnh đi đôi với những phiêu lưu mạo hiểm mới mà Azusa chưa từng đối mặt trong đời. Nhưng cũng từ đó cô có được niềm vui, có bạn bè và gia đình mới…\r\n\r\nTại Nhật, “Diệt slime suốt 300 năm, tôi levelMAX lúc nào chẳng hay” đã chiếm giữ vị trí số một trong ngày tại bảng xếp hạng trên website tiểu thuyết có tên “小説家になろう”(Trở thành tiểu thuyết gia). Tác phẩm này đã trở thành cuốn tiểu thuyết được xếp hạng cao nhất trong ngày hôm đó.\r\n\r\nTác phẩm là một câu chuyện mang góc nhìn đầy hài hước về mặt trái của xã hội Nhật Bản và cách cân bằng lại cuộc sống đó như thế nào thông qua hành trình diệt quái lên level của Azusa.', 2, 'hot', 8, 'diet-slime-suot-300-nam-toi-levelmax-luc-nao-chang-hay-tap-1'),
(17, 'NẾU NGÀY MAI KHÔNG BAO GIỜ ĐẾN', 'Yasushi Kitagawa, Hồng Anh, Ngọc Bích', '2017-12-01', 45, 58000, 'TOP 100 BEST SELLER - Nếu Ngày Mai Không Bao Giờ Đến Đây là cuốn sách đã từng đạt được kỉ lục 90,000 bản tại Nhật. Có rất nhiều thứ để miêu tả vẻ đẹp của tuổi trưởng thành. Khi từng dòng hồi ức lướt qua đủ để con người ở thì hiện tại cảm thấy bồi hồi và nuối tiếc.', 'TOP 100 BEST SELLER - Nếu Ngày Mai Không Bao Giờ Đến Đây là cuốn sách đã từng đạt được kỉ lục 90,000 bản tại Nhật. Có rất nhiều thứ để miêu tả vẻ đẹp của tuổi trưởng thành. Khi từng dòng hồi ức lướt qua đủ để con người ở thì hiện tại cảm thấy bồi hồi và nuối tiếc. Người ta vẫn thường nói, mọi cuộc hạnh ngộ trên đời là do duyên số đưa đẩy, nhưng cũng tồn tại những cuộc gặp gỡ vốn được lên kế hoạch từ trước, chỉ chờ một cái cớ hoàn hảo để tiếp cận đối phương. Đó cũng chính là cách Haruka xích lại gần hơn với cậu bạn Yousuke, người cô thầm mến mộ đã lâu. “Tôi muốn trở thành một người khiến bất cứ ai có duyên gặp gỡ cảm thấy tuyệt vời vì được quen biết một người như thế.” Không nhiều màu sắc, không nhiều kịch tính, dữ dội mà chỉ với một gam màu dịu dàng và lãng đãng xuyên suốt, tựa tiếng nói thủ thỉ chảy nhẹ vào tai, rồi khắc sâu trong tâm trí bạn những bài học quý giá về cuộc đời. Lại một lần nữa, nhà văn Yasushi Kitagawa đem sự sâu lắng và trải đời của mình vào từng con chữ như một dòng chảy ngầm mãnh liệt khơi dậy sự thức tỉnh và thay đổi trong tư duy của mỗi người trẻ. Càng đọc càng bị cuốn hút vào, khi được một phần ba cuốn sách, bạn sẽ có cảm giác như nó không phải viết cho ai khác, mà được viết ra dành cho mình. Cảm giác đồng cảm, cảm động, hưng phấn khiến bạn phải đứng dậy đi đi lại lại loanh quanh trong phòng. “Hãy giữ niềm tin son sắt vào giấc mơ tương lai của chúng ta Đem bầu nhiệt huyết hướng đến nó, và làm những việc bản thân cần làm Làm được như thế thì bất kể ước mơ lớn đến thế nào, Một khi ta đã đặt lời thề hứa nhất định sẽ đạt được mong ước.” Sự bình yên và gắn kết giữa hai tâm hồn đồng điệu giúp Haruka và Yousuke bước vào thế giới của nhau như một điều tất yếu. Tay trong tay, Haruka dẫn lối đưa Yousuke đến những miền cảm xúc mới lạ nhờ sự chia sẻ được ba cô bé chỉ dạy và ghi chép tỉ mỉ trong cuốn sổ nhật ký. Những tâm sự chất chồng về mối quan hệ gia đình, nỗi niềm lo lắng bất an về tương lai hay những thắc mắc về thế giới đầy màu sắc của người lớn được Haruka diễn giải qua những con chữ nhẹ nhàng đầy trầm tư, điều hiếm thấy ở độ tuổi mười tám. Mỗi bài học chia sẻ cùng cậu bạn Yousuke , đều được cô bé gấp thành những chiếc máy bay nhỏ nhắn, mỗi chiếc bay lên trời tựa như khao khát muốn biến ước mơ thành hiện thực, chạm được vào đích đến của thành công. “Sống cuộc đời là chính mình” – là điều Haruka mong mỏi được nhìn thấy ở cậu trai cô yêu mến thôi thúc cô hành động. Từng ngày thấy Youssuke trưởng thành , trong lòng Haruka như nở hoa. Cuối cùng mảnh đất khô cằn trong tâm hồn cũng được hồi sinh nhờ một người đặc biệt. Bệnh tật cũng đầu hàng trước cái cách cô sống vui vẻ và lạc quan ; nhưng trên đời, không ai nói trước được điều gì. Có những người vốn dĩ chẳng bao giờ dám nghĩ đến ngày mai sẽ ra sao. “Nhưng một đời người sẽ có gì xảy ra và xảy ra lúc nào thì không ai biết trước được. Mọi người đều nghĩ ngày mai sẽ tới như một điều hiển nhiên. “Trên đời này chẳng ai có thể đảm bảo ngày mai sẽ đến” – có những người hiểu được những câu chữ này nhưng họ cũng không bao giờ nghĩ rằng có thể chính mình bỗng nhiên sẽ không có ngày mai.” Tác phẩm “Nếu ngày mai không bao giờ đến” là tác phẩm thứ 2 của Kitagawa, xuất bản năm 2006. Cuốn tiểu thuyết này trở thành best seller với doanh số bán hàng đạt 90.000 bản và được xếp hạng nhất trong bảng xếp hạng của “Hội nghiên cứu phổ biến việc đọc sách, book sommelier” năm 2007 . Như một bản nhạc êm dịu được cất lên trong ngày hè rực rỡ, gặp gỡ rồi tạm biệt. Rồi số phận sẽ đưa đẩy cả hai đến những ngã rẽ nào, hãy lật giở từng trang viết để cảm nhận bạn nhé !', 2, 'hot', 6, '/neu-ngay-mai-khong-bao-gio-den'),
(18, '5 CENTIMET TRÊN GIÂY', 'Shinkai Makoto', '2017-01-06', 45, 35000, 'TOP 100 BEST SELLER - 5cm/s không chỉ là vận tốc của những cánh anh đào rơi, mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, đánh mất bao cảm xúc thiết tha nhất của tình yêu.  Bằng giọng văn tinh tế, truyền cảm, Năm centimet trên giây mang đến những khắc họa mới về tâm hồn và khả năng tồn tại của cảm xúc, bắt đầu từ tình yêu trong sáng, ngọt ngào của một cô bé và cậu bé. Ba giai đoạn, ba mảnh ghép, ba ngôi kể chuyện khác nhau nhưng đều xoay quanh nhân vật nam chính, người luôn bị ám ảnh bởi kí ức và những điều đã qua…', 'TOP 100 BEST SELLER - 5cm/s không chỉ là vận tốc của những cánh anh đào rơi, mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, đánh mất bao cảm xúc thiết tha nhất của tình yêu.\r\n\r\nBằng giọng văn tinh tế, truyền cảm, Năm centimet trên giây mang đến những khắc họa mới về tâm hồn và khả năng tồn tại của cảm xúc, bắt đầu từ tình yêu trong sáng, ngọt ngào của một cô bé và cậu bé. Ba giai đoạn, ba mảnh ghép, ba ngôi kể chuyện khác nhau nhưng đều xoay quanh nhân vật nam chính, người luôn bị ám ảnh bởi kí ức và những điều đã qua…\r\n\r\nKhác với những câu chuyện cuốn bạn chạy một mạch, truyện này khó mà đọc nhanh. Ngón tay bạn hẳn sẽ ngừng lại cả trăm lần trên mỗi trang sách. Chỉ vì một cử động rất khẽ, một câu thoại, hay một xúc cảm bất chợt có thể sẽ đánh thức những điều tưởng chừng đã ngủ quên trong tiềm thức, như ngọn đèn vừa được bật sáng trong tâm trí bạn. Và rồi có lúc nó vượt quá giới hạn chịu đựng, bạn quyết định gấp cuốn sách lại chỉ để tận hưởng chút ánh sáng từ ngọn đèn, hay đơn giản là để vết thương trong lòng mình có thời gian tự tìm xoa dịu. ', 2, 'hot', 14, '5-centimet-tren-giay'),
(19, 'DATE A LIVE - TẬP 1 - TẶNG KÈM 1 POSTCARD (SỐ LƯỢNG CÓ HẠN)', '61000', '2018-01-01', 34, 45000, 'Date A Live - Tập 1 - Quà Tặng Postcard (Số Lượng Có Hạn)  Ngày 10 tháng 4.  Ngày đầu tiên đi học sau kỳ nghỉ xuân, Itsuka Shido được em gái dễ thương của mình đánh thức như mọi khi. Nhưng cậu không biết rằng hôm nay là ngày mà định mệnh cậu thay đổi chỉ bởi một cuộc gặp gỡ tình cờ với một cô gái vô danh......', 'Date A Live - Tập 1 - Quà Tặng Postcard (Số Lượng Có Hạn)\r\n\r\nNgày 10 tháng 4.\r\n\r\nNgày đầu tiên đi học sau kỳ nghỉ xuân, Itsuka Shido được em gái dễ thương của mình đánh thức như mọi khi. Nhưng cậu không biết rằng hôm nay là ngày mà định mệnh cậu thay đổi chỉ bởi một cuộc gặp gỡ tình cờ với một cô gái vô danh......\r\nCùng với một cơn địa chấn đột ngột, một phần của thị trấn đã biến mất mà không để lại dấu vết gì. Tại góc thành phố đã lún sâu thành hố khổng lồ xuất hiện một thiếu nữ.\r\n\"Cậu cũng đến để giết tôi ư?\"\r\nCô ấy là tai họa sẽ hủy diệt nhân loại, là một con quái vật không rõ nguồn gốc, và là một sinh linh bị ruồng bỏ. Chỉ có hai cách để ngăn chặn cô gái này: tiêu diệt hoặc nói chuyện. \r\n\"Vì thế, hãy hẹn hò và khiến cô ta yêu anh đi!\"\r\nNhờ sự giúp đỡ của Kotori, em gái mình, Shido sẽ giải cứu cô gái ấy và cả nhân loại bằng cách sử dụng \"mỹ nam kế\" - làm cô yêu cậu say đắm??!!! Là phúc hay họa đây?!! \r\nMột thế giới mới cùng những mối quan hệ lãng mạn xin được phép bắt đầu!', 2, 'hot', 4, 'date-a-live-tap-1-tang-kem-1-postcard-so-luong-co-han'),
(20, 'KẺ DỊ BIỆT TẠI TRƯỜNG HỌC PHÉP THUẬT - TẬP 1', 'Sato Tsut	Sato Tsutomuomu', '2018-05-11', 79, 68000, 'Kẻ dị biệt tại trường học phép thuật 1 lấy bối cảnh thế giới tương lai, khi mà phép thuật không còn là sản phẩm của trí tưởng tượng, truyền thuyết hay cổ tích nữa mà đã trở thành công nghệ có thật.', 'Kẻ dị biệt tại trường học phép thuật 1 lấy bối cảnh thế giới tương lai, khi mà phép thuật không còn là sản phẩm của trí tưởng tượng, truyền thuyết hay cổ tích nữa mà đã trở thành công nghệ có thật.\r\n\r\nPhép thuật được giảng dạy phổ biến tại các trường cấp ba và đại học, trong đó trường Trung học Đệ Nhất là trường cấp ba danh giá nhất trong số chín trường cấp ba trực thuộc Đại học Phép thuật Quốc gia. Tại ngôi trường này, có hai anh em cùng huyết thống là Tatsuya và Miyuki đang chuẩn bị bước những bước chân đầu tiên vào cuộc sống trung học tươi đẹp của mình.\r\n\r\nTuy nhiên, kể từ khi có sự xuất hiện của hai người họ, sóng gió đã bắt đầu ập đến ngôi trường vốn dĩ yên bình này…', 2, 'sellMultiple', 10, 'ke-di-biet-tai-truong-hoc-phep-thuat-tap-1');
INSERT INTO `products` (`id`, `name`, `author`, `public`, `count`, `price`, `title`, `description`, `create_by`, `type`, `id_category`, `url`) VALUES
(24, 'Lập Trình Và Cuộc Sống (Tái Bản 2018)', 'Nguyễn Ngọc Thạch', '2018-11-26', 100, 44500, 'Lưng Chừng Cô Đơn. Thế nào là cô đơn?. Là những ngày thức dậy trong lòng cảm thấy trống rỗng vô cùng..', 'Lưng Chừng Cô Đơn\r\n\r\nThế nào là cô đơn?\r\n\r\nLà những ngày thức dậy trong lòng cảm thấy trống rỗng vô cùng.\r\n\r\nLà những ngày có cảm giác bị thế giới bỏ rơi…..\r\n\r\nkhông ai ở cạnh mình, không ai hiểu được mình.\r\n\r\nMuốn tìm ai đó để chia sẻ những gì nặng trĩu trong lòng,\r\n\r\nnhưng lại chẳng thể tìm được một người để lắng nghe…\r\n\r\nThế đấy, những điều nhỏ xíu tưởng chừng như có, như không, như vô tình, cũng có thể khiến một người rơi vào khoảng lặng của chính mình, để rồi từ đó thấy được dư vị của cô đơn.\r\n\r\nDư vị ấy chẳng hề dễ chịu, dư vị ấy dễ làm người ta buồn lắm, nhưng  mà khi ở cái lưng chừng tuổi trẻ, nào ai thoát nỗi cô đơn, thoát nổi những ngày buồn bã. Cô đơn đó mà, giữa những cảm xúc của con người, giống như một nốt nhạc đệm trong bản nhạc của cuộc đời, không thể thiếu cũng chẳng thế tránh, chỉ có thể cùng nó, lặng lẽ đi qua những năm tháng chông chênh để nhận lấy trưởng thành.\r\n\r\nDư vị ấy,  bạn sẽ chấp nhận nó chứ. Nếu không thể, hãy để “Lưng chừng cô đơn” cùng bạn vượt qua những ngày chênh vênh này để thấy cô đơn hóa ra chẳng có gì đáng sợ. Chỉ là buồn một chút, tủi thân một chút, mệt mỏi một chút mà thôi. Nhưng bạn biết không? Cô đơn mới là thứ duy nhất không bao giờ phản bội bạn, dù giông bão hay là bình yên. Cuối cùng, cũng chỉ có cô đơn ở đó và bên cạnh chúng ta mà thôi...', 2, 'sellMultiple', 1, 'lung-chung-co-don'),
(25, 'IC3 Global Standard 4 - Cuộc Sống Trực Tuyến', 'Nguyễn Ngọc Thạch', '2017-05-10', 50, 57500, 'Khóc Giữa Sài Gòn  “Khóc giữa Sài Gòn” cho những ngày yêu đương khờ dại…  Sài Gòn, thành phố của những kẻ cô đơn. Sài Gòn cứ hối hả, còn người ta cứ mãi dại khờ.  “Khóc giữa Sài Gòn” là một bức tranh rất thực với rượu, với thuốc, nước mắt và rất nhiều nước mắt.', 'Khóc Giữa Sài Gòn\r\n\r\n“Khóc giữa Sài Gòn” cho những ngày yêu đương khờ dại…\r\n\r\nSài Gòn, thành phố của những kẻ cô đơn. Sài Gòn cứ hối hả, còn người ta cứ mãi dại khờ.\r\n\r\n“Khóc giữa Sài Gòn” là một bức tranh rất thực với rượu, với thuốc, nước mắt và rất nhiều nước mắt.\r\n\r\nỞ đó, người ta bên nhau trong những ánh đèn lấp lánh  không bao giờ tắt. Rồi lại vội vã, giấu đi những giọt lệ biệt ly ở một bến xe khách lúc hai, ba giờ sáng.\r\n\r\n Sài Gòn, nơi có những con người dám chết vì nhau, dám sống vì nhau, và dám khóc vì nhau.\r\n\r\nPhan, Nam, Tú, Mễ, Thụy, Ân, 6 con người, 6 màu sắc khác nhau. Họ lạc lối trong niềm đau, sống trong những ảo ảnh và ước vọng do mình tạo nên.\r\n\r\nHọ va vào đời nhau, dẫu chỉ trong một khoảnh khắc mong manh, ngắn ngủi. Nhưng cũng khiến trái tim mỗi người mang nhiều những dư âm.\r\n\r\nRồi đem theo những hoang hoải và hy vọng. Chẳng vì điều gì to tát, không phải cái gọi là mãi mãi, hay vật chất xa hoa. Chỉ đơn giản là được ôm nhau vào lòng và khóc. Khóc cho thỏa những cơn đau chật vật, cho thỏa những ngày muốn có nhau mà bất lực và cho thỏa những ngày mai không còn được gặp lại nhau nữa.', 2, 'sellMultiple', 1, 'khoc-gia-sai-gon'),
(26, 'Phương Pháp Trị Bệnh Ung Thư', 'Kim Oanh', '2018-11-13', 110, 45000, 'Ngọt ngào hay đắng chát?  Dịu mát hay gắt nồng? Bạn bỏ gì trong tách trà tình yêu của mình?', 'Ngọt ngào hay đắng chát? \r\nDịu mát hay gắt nồng?\r\nBạn bỏ gì trong tách trà tình yêu của mình?\r\nBạn biết không:\r\nTách trà của ai đó có thể có vị ngọt ngào thơm nồng của mối tình đầu, của tuổi trẻ đầy bồng bột nhưng cũng đầy đam mê. \r\nTách trà của ai đó có thể có vị đắng chát của hoài nghi, tổn thương và sợ hãi. \r\nNhưng ít nhất họ đều dám yêu, dám cho đi đều can đảm để bước vào tình yêu, hết mình vì tình yêu và dẫu có thất bại cũng đừng ngại đứng dậy.\r\n\r\nBạn có thể sợ hãi cái nắm tay của một ai đó bởi sợ rằng người một mai sẽ buông tay . Bạn có thể tổn thương vì một lần buông bỏ. Bạn cũng có thể luôn cho rằng hạnh phúc chỉ đến một lần, để vụt mất nghĩa là không có cơ hội tìm lại.Bạn có thể sợ rất nhiều thứ, hoài nghi rất nhiều thứ. \r\nNhưng bạn biết không: bạn còn trẻ. Và nếu bạn không yêu, nghĩa là bạn đánh mất đi những đặc quyền điên rồ mà tuyệt vời nhất của tuổi trẻ \r\nSợ gì không rung động. \r\nSợ gì không mở lòng mình.\r\nSợ gì không đón nhận một ai đó.\r\n\r\nCô gái à, rồi sẽ đến một ngày, bạn sẽ lại được yêu, được nâng niu và mọi vết thương sẽ được chữa lành. Cô gái à, đừng cố chấp, đừng gạt bỏ mọi cơ hội đến với bạn. Đừng khó tính quá với chính bản thân và trái tim mình. Trái tim nào cũng cần yêu thương, cần điểm tựa cần mảnh ghép phù hợp với chính mình \r\nMột cô gái thông minh, là một cô gái biết chọn những hương vị tuyệt nhất cho tách trà tình yêu của mình. \r\nYêu đi đừng sợ! Hãy cứ yêu như chưa từng tổn thương đến thế!', 2, 'sellMultiple', 1, 'yeu-di-dung-so'),
(27, 'Học Cách Thiết Kế Slide', 'Du Phong', '2018-11-18', 100, 70000, 'Đừng Gọi Anh Là Người Yêu Cũ (Tái Bản 2017)  “Một số người coi tình cũ như vết thương, một số khác coi như chiến tích, số khác nữa lại coi như nỗi ân hận suốt đời.  Còn tôi không có tình cũ, vì càng giữ nó càng mới!”', 'Đừng Gọi Anh Là Người Yêu Cũ (Tái Bản 2017)\r\n\r\n“Một số người coi tình cũ như vết thương, một số khác coi như chiến tích, số khác nữa lại coi như nỗi ân hận suốt đời.\r\n\r\nCòn tôi không có tình cũ, vì càng giữ nó càng mới!”\r\n\r\n“Tình cũ” luôn là một thứ gì đó án ngữ trong tim, mà mỗi lần nhớ về lòng ta lại chua xót. Không phải là còn yêu, cũng không phải là hận, để mà không muốn nhận danh xưng Người-Yêu-Cũ, chỉ đơn giản, những thứ cũ kỹ luôn đi cùng cảm giác nuối tiếc buồn thương, mà có ai lại muốn chấp nhận việc trong cuộc đời một người, mình chỉ là kẻ giữ chỗ cho người mới đến sau…\r\n\r\n“Đừng gọi anh là người yêu cũ” là những dòng văn lãng mạn vương vấn chút xót xa về những mối quan hệ không tên, không ràng buộc, tưởng như một cơn gió nhẹ lướt qua cuộc đời, nhưng lại hằn sâu những nỗi niềm khắc khoải khiến người ta không thể dễ dàng quên đi được.\r\n\r\n“Chưa bao giờ nghĩ rằng chúng ta có thể tiến xa đến như vậy…Càng không bao giờ nghĩ rằng chúng ta đã có thể tiến xa đến như vậy, mà vẫn chia tay…”\r\n\r\n“Rồi một ngày cô gái bỏ đi xa\r\n\r\nChàng trai nhớ mà không tìm ra được\r\n\r\nƯớc gì mình trở về ngày tháng trước\r\n\r\nSẽ chẳng bao giờ để tuột tình yêu”\r\n\r\nTừng câu chữ trong cuốn sách được sắp xếp khéo léo với nhiều thể loại khác nhau, khi là những đoạn thơ vần điệu đầy suy tư trăn trở, khi là những bài tản văn nhẹ nhàng đầy lý trí, lúc lại là những truyện ngắn với những ý nghĩa ẩn chứa khiến người đọc phải ngẫm ngợi rất lâu để có thể gật gù: “Thì ra cũng có một người mình từng yêu như vậy!”\r\n\r\nSau 3 năm, nhờ những tình cảm yêu mến mà bạn đọc dành cho tác giả Du Phong và cuốn sách, “Đừng gọi anh là người yêu cũ” được tái bản trong một hình hài khác, với những bài thơ, truyện ngắn cả cũ lẫn mới, hứa hẹn sẽ mang đến cho độc giả thêm nhiều trải nghiệm thú vị và bất ngờ. Một cuốn sách nhất định phải có trong giá sách nhà bạn được ra mắt với phiên bản mới trong mùa hè này!\r\n\r\n', 2, 'sellMultiple', 1, 'dung-goi-anh-la-nguoi-yeu-cu'),
(28, 'MICROSOFT OFFICE EXCEL', 'Nguyen Duc Anh', '2018-11-01', 50, 35000, 'Đọc để yêu và sống hết mình cho tuổi trẻ  Dành cho những cô gái can đảm sống, can đảm yêu và …can đảm từ bỏ  Ấn phẩm được mong chờ nhất tháng 7- nhá hàng vào phút cuối <3', 'Đọc để yêu và sống hết mình cho tuổi trẻ\r\n\r\nDành cho những cô gái can đảm sống, can đảm yêu và …can đảm từ bỏ\r\n\r\nẤn phẩm được mong chờ nhất tháng 7- nhá hàng vào phút cuối <3\r\n\r\n“Nếu như coi đời người là một bản nhạc thì tuổi thanh xuân chính là phần điệp khúc với những nốt nhạc trong trẻo, rực rỡ nhất. Nó đọng lại trong lòng mỗi người như những giọt café cuối cùng nơi đáy cốc mãi chẳng tan. Đời người ngắn lắm và thanh xuân thì chẳng bao lâu, nhất là tuổi thanh xuân của người con gái – như một bông hoa rực rỡ nhưng chóng lụi tàn.\r\n\r\nAnh, em không tiếc, em tiếc thanh xuân – thủ thỉ kể với ta về những ngày tuổi trẻ như thế!\r\n\r\nMột tuổi trẻ nồng cháy, nhiệt thành, dám mạo hiểm, thử thách với những điều mà bản thân cho là xứng đáng.\r\n\r\nMột tuổi trẻ dám sống, dám yêu hết mình.\r\n\r\nMột tuổi trẻ trong veo, thuần khiết với những tình cảm chỉ đến một lần trong đời, tất cả những lần sau đó chỉ là bản sao không hoàn hảo của tuổi trẻ ấy.\r\n\r\nVà đó cũng là một tuổi trẻ với đầy những chông gai để sau mỗi lần vấp ngã ta trưởng thành và mạnh mẽ hơn.”\r\n\r\nAnh, em không tiếc, em tiếc thanh xuân là những câu chuyện thật, những suy nghĩ thật và những chi tiết rất đời thường. Nhưng nó lại chạm đến tâm hồn người đọc và làm bạn suy nghĩ, nghiền ngẫm để rồi gật gù, để rồi bật cười, để rồi đồng ý với chính những suy nghĩ đấy.\r\n\r\nVới giọng văn đôi khi tưng tửng, tếu táo, nhưng thực tế và thậm chí  đôi khi hơi phũ . Văn phong không trau chuốt quá đà nhưng những gì Đức Anh viết đều xuất phát từ sự thấu hiểu đáng kinh ngạc, sự bênh vực và ủng hộ cho phái yếu. Mỗi câu mỗi chữ đều nói lên rất rõ ràng nỗi lòng của người con gái. Có lẽ tác giả hiểu con gái hơn cả cách con gái hiểu chính mình. Bởi thể “Anh, em không tiếc, em tiếc thanh xuân” là món quà thanh xuân dành tặng tất cả những cô gái nhỏ\r\n\r\nPhái nữ - dẫu mạnh mẽ, cứng cỏi đến đầu vẫn cứ là phái yếu.  Đừng tiếc chi một người đàn ông không mang lại hạnh phúc cho bạn. Hãy tiếc tuổi trẻ ngắn ngửi  chỉ đến một lần\r\n\r\nVà, hãy yêu lấy mình. Con gái ạ! ', 2, 'sellMultiple', 1, 'anh-khong-tiec-em-thanh-xuan'),
(29, 'Tin Học Văn Phòng - Công Thức & Hàm Excel', 'Linh', '2018-11-03', 60, 45000, 'Tôi đã có rất nhiều khoảng thời gian, cô đơn ngồi xuống ngắm nghía những nỗi buồn đang chạy dọc trong từng mạch máu cảm xúc. Những nỗi buồn không tên gọi, không biết bắt đầu từ đâu và kết thúc nơi nào. Hoặc có lẽ vì quá buồn, mà tôi cũng chẳng còn muốn đặt tên cho chúng nữa. Những nỗi buồn xếp lớp ngay ngắn trong những ngày một mình, thật ra cũng rất đẹp.', 'Tôi đã có rất nhiều khoảng thời gian, cô đơn ngồi xuống ngắm nghía những nỗi buồn đang chạy dọc trong từng mạch máu cảm xúc. Những nỗi buồn không tên gọi, không biết bắt đầu từ đâu và kết thúc nơi nào. Hoặc có lẽ vì quá buồn, mà tôi cũng chẳng còn muốn đặt tên cho chúng nữa. Những nỗi buồn xếp lớp ngay ngắn trong những ngày một mình, thật ra cũng rất đẹp.\r\n\r\nNgày ngày tháng tháng trôi qua, nỗi buồn cũng theo thời gian cựa mình rủ nhau đi mất. Rồi có hôm vô lý kéo nhau trở về làm tôi trở tay chẳng kịp. Những lúc đó, chỉ biết bất lực ôm mặt khóc rưng rức như đứa trẻ bị phạt đòn.\r\n\r\nRồi tôi nhận ra rằng, nỗi buồn cũng có bạn.\r\n\r\nRồi tôi nhận ra rằng, tôi không phải chỉ buồn-một-mình. Mà thế giới này, cũng có biết bao nhiêu người, đi qua thanh xuân, vấp phải nỗi buồn giống tôi.\r\n\r\nBạn đã bao giờ vẽ những nỗi buồn của mình chưa? Liệu có thể nào cùng nắm tay tôi, chúng mình đi hết nỗi buồn này với nhau, được không?\r\n\r\n \r\n\r\nMình nắm tay nhau nhé\r\n\r\nCùng đi hết nỗi buồn\r\n\r\nNỗi buồn đẹp như vẽ\r\n\r\nRồi đến lúc phải buông…', 2, 'sellMultiple', 1, 'nhung-noi-buon-khong-ten'),
(30, 'IT', 'Stephen King', '2018-11-07', 10, 45000, 'NOW A MAJOR MOTION PICTURE - Stephen King\'s terrifying classic.\\  \'They float...and when you\'re down here with me, you\'ll float, too.\'', 'NOW A MAJOR MOTION PICTURE - Stephen King\'s terrifying classic.\\\r\n\r\n\'They float...and when you\'re down here with me, you\'ll float, too.\'\r\n\r\nDerry, Maine is just an ordinary town: familiar, well-ordered for the most part, a good place to live.\r\n\r\nIt is a group of children who see - and feel - what makes Derry so horribly different. In the storm drains, in the sewers, IT lurks, taking on the shape of every nightmare, each one\'s deepest dread. Sometimes is appears as an evil clown named Pennywise and sometimes IT reaches up, seizing, tearing, killing . . .\r\n\r\nTime passes and the children grow up, move away and forget. Until they are called back, once more to confront IT as IT stirs and coils in the sullen depths of their memories, emerging again to make their past nightmares a terrible present reality.', 2, 'hot', 18, 'it'),
(31, 'Sinh vật huyền bí 2: Tội ác của Grindelwald', 'J.K.Rowling', '1970-01-02', 9, 110000, 'At the end of Fantastic Beasts and Where to Find Them, the powerful Dark wizard Gellert Grindelwald was captured in New York with the help of Newt Scamander. But, making good on his threat, Grindelwald escapes custody and sets about gathering followers,', 'At the end of Fantastic Beasts and Where to Find Them, the powerful Dark wizard Gellert Grindelwald was captured in New York with the help of Newt Scamander. But, making good on his threat, Grindelwald escapes custody and sets about gathering followers, most unsuspecting of his true agenda: to raise pure-blood wizards up to rule over all non-magical beings. In an effort to thwart Grindelwald\'s plans, Albus Dumbledore enlists Newt, his former Hogwarts student, who agrees to help once again, unaware of the dangers that lie ahead. Lines are drawn as love and loyalty are tested, even among the truest friends and family, in an increasingly divided wizarding world. This second original screenplay from J.K. Rowling, illustrated with stunning line art from MinaLima, expands on earlier events that helped shaped the wizarding world, with some surprising nods to the Harry Potter stories that will delight fans of both the books and films.', 2, 'hot', 1, 'sinh-vat-huyen-bi-2'),
(32, '1', '1', '1970-01-04', 1, 1, '1', '1', 2, 'new', 4, '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `create_by`, `role`) VALUES
(2, 'Nguyễn Công Quân', 'quan@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Thái Nguyên', '0989456639', NULL, 4),
(3, 'Nguyễn Quý Thiện', 'thien@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Mỗ lao Hà Đông Hà Nội', '0962199791', 2, 1),
(38, 'Nguyễn Thế Lâm', 'lam@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Nguyễn Thế Lâm', '0962199378', NULL, 0),
(39, 'Ngô Văn Thái', 'thai@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Hoàn Kiếm Hà Nội', '0962199792', NULL, 0),
(43, 'a', 'a@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Sân đồng hoài đức hà nội', '0165987452', NULL, 0),
(45, 'Dương Văn Khôi', 'khoi@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Hanoi, Hoàn Kiếm, Hanoi, Vietnam', '0962199792', NULL, 0),
(56, 'Đồng Quốc Huy', 'huy@gmail.com', '202cb962ac59075b964b07152d234b70', 'Hanoi, Hoàn Kiếm, Hanoi, Vietnam', '0962199792', 2, 2),
(59, 'Nguyễn Ngọc Yến', 'yen@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Hanoi, Hoàn Kiếm, Hanoi, Vietnam', '1234566', NULL, 0),
(62, 'Nguyễn Công Quân', 'quantn97@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Hoài Đức Hà Nội', '0962199792', NULL, 0),
(63, 'Nguyễn Văn Bảy', 'xxx@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Hanoi, Hoàn Kiếm, Hanoi, Vietnam', '1', 2, 4),
(64, 'ff', 'ff@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1', '1', 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billdetails`
--
ALTER TABLE `billdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bill` (`id_bill`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `create_by` (`create_by`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `create_by` (`create_by`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `create_by` (`create_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `create_by` (`create_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billdetails`
--
ALTER TABLE `billdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billdetails`
--
ALTER TABLE `billdetails`
  ADD CONSTRAINT `billdetails_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`),
  ADD CONSTRAINT `billdetails_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`create_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bills_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `categorys`
--
ALTER TABLE `categorys`
  ADD CONSTRAINT `categorys_ibfk_1` FOREIGN KEY (`create_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categorys` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`create_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`create_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

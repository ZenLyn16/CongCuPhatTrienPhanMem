-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table appbook.tblaccount
CREATE TABLE IF NOT EXISTS `tblaccount` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_username` varchar(50) DEFAULT NULL,
  `account_password` varchar(50) DEFAULT NULL,
  `account_is_sell` tinytext DEFAULT NULL,
  `account_is_admin` tinytext DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table appbook.tblaccount: ~6 rows (approximately)
INSERT INTO `tblaccount` (`account_id`, `account_username`, `account_password`, `account_is_sell`, `account_is_admin`) VALUES
	(1, 'tienduy', '123456', '0', '1'),
	(2, 'giang', '123', '1', '0'),
	(3, 'dat', '456', '1', '1'),
	(4, 'khai', '789', '0', '0'),
	(10, 'abc', '123', '0', '0'),
	(11, 'quangkhai', 'xyz', '0', '0');

-- Dumping structure for table appbook.tblbook
CREATE TABLE IF NOT EXISTS `tblbook` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) DEFAULT NULL,
  `book_category` int(11) NOT NULL,
  `book_author` varchar(255) DEFAULT NULL,
  `book_image` varchar(512) DEFAULT NULL,
  `book_price` double DEFAULT NULL,
  `book_original_price` double DEFAULT NULL,
  `book_discount_price` double DEFAULT NULL,
  `book_notes` text DEFAULT NULL,
  `book_status` varchar(512) DEFAULT NULL,
  `book_quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `FK_tblbook_tblcategory` (`book_category`),
  CONSTRAINT `FK_tblbook_tblcategory` FOREIGN KEY (`book_category`) REFERENCES `tblcategory` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table appbook.tblbook: ~9 rows (approximately)
INSERT INTO `tblbook` (`book_id`, `book_name`, `book_category`, `book_author`, `book_image`, `book_price`, `book_original_price`, `book_discount_price`, `book_notes`, `book_status`, `book_quantity`) VALUES
	(1, 'Tâm Thư Của Warren Buffett Dành Cho Con Cái', 3, 'Phạm Nghị Nhiên', 'https://nhasachphuongnam.com/images/detailed/268/tam-thu-cua-warren-buffett-danh-cho-con-gai.jpg', 188000, NULL, NULL, NULL, 'Còn hàng', 200),
	(2, 'Đánh Thức Não Bộ', 4, 'Daniel G. Amen', 'https://nhasachphuongnam.com/images/detailed/268/danh-thuc-nao-bo.jpg', 188000, NULL, NULL, NULL, 'Còn hàng', 150),
	(3, 'Nơi Không Có Tuyết', 2, 'Huỳnh Trọng Khang', 'https://nhasachphuongnam.com/images/detailed/267/noi-khong-co-tuyet.jpg', 75000, NULL, NULL, NULL, 'Hết hàng', 0),
	(4, 'Sổ Tay Kiến Thức Toán - Văn - Anh Lớp 8', 1, 'Nhiều Tác Giả', 'https://nhasachphuongnam.com/images/detailed/268/so-tay-kien-thuc-toan-van-anh-lop-8.jpg', 109000, NULL, NULL, NULL, 'Hết hàng', 0),
	(5, 'Thơ Cho Bé Tập Nói', 5, 'Hải Minh', 'https://nhasachphuongnam.com/images/detailed/268/tho-cho-be-tap-noi-tb-2023.jpg', 108000, NULL, NULL, NULL, 'Còn hàng', 60),
	(6, 'Giáo Trình Kỹ Thuật Lập Trình C Căn Bản Và Nâng Cao', 6, 'Phạm Văn Ất', 'https://nhasachphuongnam.com/images/detailed/257/giao-trinh-ky-thuat-lap-trinh-c-can-ban-va-nang-cao-tb-2023.jpg', 140000, 175000, 35000, 'Giáo trình kỹ thuật lập trình C căn bản và nâng cao được hình thành qua nhiều năm giảng dạy của các tác giả. Ngôn ngữ lập trình C là một môn học cơ sở trong chương trình đào tạo kỹ sư, cử nhân tin học của nhiều trường đại học. Ở đây sinh viên được trang bị những kiến thức cơ bản nhất về lập trình, các kỹ thuật tổ chức dữ liệu và lập trình căn bản với ngôn ngữ C.', 'Còn hàng', 70),
	(7, 'Bác Hồ Với Phụ Nữ Và Thiếu Nhi', 6, 'Nguyệt Tú, Lady Borton', 'https://nhasachphuongnam.com/images/detailed/267/bac-ho-voi-phu-nu-va-thieu-nhi-tb-2023.jpg', 50000, NULL, NULL, 'Sinh thời, Chủ tịch Hồ Chí Minh luôn dành những tình cảm trân quý cho tất thảy mọi tầng lớp, giai cấp nhân dân Việt Nam, nhưng hơn hết, Bác dành sự quan tâm đặc biệt cho phụ nữ, trẻ em bởi theo Người đó là lớp người khổ nhất trong những người khổ cực.', 'Hết hàng', 0),
	(8, 'Biên Niên Sử Về Khủng Long: Từ Tiến Hóa Tới Diệt Vong', 6, 'Steve Brusatte', 'https://nhasachphuongnam.com/images/detailed/267/bien-nien-su-ve-khung-long.jpg', 234000, 260000, 26000, 'Hơn 200 triệu năm trước, một sự kiện chấn động xảy ra vào cuối kỷ Nhị Điệp đã khiến thế giới cổ đại tan hoang chẳng khác nào Tận thế. Hậu quả của nó khiến các quần thể sinh vật sống trên cạn rơi vào tuyệt chủng hàng loạt. Khoảng thời gian để hệ sinh thái khắp nơi dần hồi phục kéo dài suốt hàng trăm đến hàng nghìn năm… Kỳ diệu thay, trong số các sinh vật may mắn thoát khỏi họa diệt vong có một sinh vật nhỏ bé được giới cổ sinh vật học cho là tổ tiên của khủng long. Làm thế nào sinh vật này lại có thể thoát khỏi “án tử” kia? Và mất bao lâu để chúng tiến hóa thành những gã khổng lồ hiền lành như Brontosaurus hay sát thủ máu lạnh như T. rex?', 'Còn hàng', 200),
	(9, 'Bồi Dưỡng Và Nâng Cao Kỹ Năng Đọc Hiểu Ngữ Văn Lớp 6', 1, 'Trần Bằng Cư', 'https://nhasachphuongnam.com/images/detailed/265/boi-duong-va-nang-cao-ky-nang-doc-hieu-ngu-van-lop-6.jpg', 79000, NULL, NULL, 'Bồi dưỡng và nâng cao kỹ năng đọc hiểu Ngữ Văn 6 là bộ tài liệu tham khảo để tự bồi dưỡng và nâng cao kỹ năng đọc hiểu Ngữ Văn, chương trình Ngữ văn hiện hành đòi hỏi các em thực sự phải có năng lực đọc hiểu, năng lực viết của riêng mình. Với sự đa dạng về thể loại văn học, cũng như nhiều thể loại còn khá mới mẻ với các em (văn bản thông tin, văn bản kí...), phần Đọc – hiểu đang là một phần đầy thách thức. Đây sẽ là người bạn đồng hành thân thiết, giúp các em học tốt môn  Ngữ Văn 6.', 'Còn hàng', 500),
	(10, 'Rèn Kĩ Năng Giải Toán Lớp 8 Tập 2', 1, 'Bùi Anh Trang, Nguyễn Đức Tấn,  Đỗ Quang Thanh', 'https://nhasachphuongnam.com/images/detailed/262/ren-ki-nang-giai-toan-lop-8-tap-2.jpg', 66600, 74000, 7400, 'Để học tốt môn Toán, ngoài việc tiếp thu, lĩnh hội kiến thức mới thông qua bài giảng của các thầy cô giáo, các em cần vận dụng kiến thức đó để luyện giải thường xuyên các bài tập và trải nghiệm các hoạt động gắn với thực tế.', 'Hết hàng', 0);

-- Dumping structure for table appbook.tblcategory
CREATE TABLE IF NOT EXISTS `tblcategory` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table appbook.tblcategory: ~5 rows (approximately)
INSERT INTO `tblcategory` (`category_id`, `category_name`) VALUES
	(1, 'Sách giáo khoa'),
	(2, 'Văn học'),
	(3, 'Kinh tế'),
	(4, 'Kỹ năng sống'),
	(5, 'Sách thiếu nhi'),
	(6, 'Sách chuyên ngành');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

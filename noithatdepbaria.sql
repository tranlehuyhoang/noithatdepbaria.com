-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 31, 2025 at 06:40 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noithatdepbaria`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Giới thiệu', '<p>Mẫu theme <strong>HELLO</strong> của HELLO là giải pháp lý tưởng cho các cửa hàng kinh doanh sản phẩm decor, phong thủy, nội, ngoại thất và trang trí nhà cửa. Với thiết kế tinh tế và giao diện thân thiện, mẫu website này giúp quý khách sử dụng dễ dàng giới thiệu các mặt hàng sản phẩm của mình.</p><h3>Tạo Dấu Ấn Với Thiết Kế Đẹp Mắt</h3><p><strong>HELLO</strong> mang đến một diện mạo mới cho các sản phẩm decor. Mỗi chi tiết trên theme đều được chăm chút tỉ mỉ, từ màu sắc, bố cục đến hình ảnh sản phẩm, nhằm tạo ra một giao diện hợp lý, sinh động.</p><h3>Cải Thiện Trải Nghiệm Mua Sắm</h3><p>Chúng tôi hiểu rằng một trải nghiệm mua sắm mượt mà có thể khiến khách hàng quay trở lại mua sắm nhiều lần. Do đó, <strong>HELLO</strong> được tối ưu hóa để đảm bảo quá trình tìm kiếm, so sánh và mua hàng của khách hàng diễn ra nhanh chóng và thuận tiện, với một hệ thống phân loại sản phẩm thông minh và quy trình thanh toán đơn giản.</p><h3>Hỗ Trợ Quảng Cáo và SEO</h3><p>Mẫu website <strong>HELLO</strong> được tối ưu SEO ngay từ bản thiết kế cơ bản, giúp nâng cao khả năng xuất hiện trên các công cụ tìm kiếm và thu hút khách hàng tiềm năng. Cùng với đó, việc tích hợp các công cụ quảng cáo giúp bạn mở rộng sự hiện diện trực tuyến, đạt được hiệu quả quảng cáo tốt nhất.</p><h3>Ưu Điểm Khi Sử Dụng <strong>HELLO</strong>:</h3><ul><li><strong>Thiết Kế Decor Hợp Lý</strong>: Mẫu website phản ánh sự hiểu biết sâu sắc về phong thủy, thu hút khách hàng quan tâm đến nghệ thuật này.</li><li><strong>Dễ Dàng Quản Lý Sản Phẩm</strong>: Tính năng quản lý sản phẩm linh hoạt, cho phép cập nhật và điều chỉnh thông tin sản phẩm dễ dàng.</li><li><strong>Tối Ưu Hóa Mọi Thiết Bị</strong>: Tương thích với mọi loại thiết bị, đảm bảo khách hàng có thể truy cập mọi lúc, mọi nơi.</li></ul><p>&nbsp;</p><h2>Vì sao cần thiết kế website chuyên nghiệp?&nbsp;</h2><p>Trước khi tìm hiểu sâu về việc thiết kế website, doanh nghiệp cần hiểu tầm quan trọng của nó. Sở hữu một kênh mua sắm sẽ mang lại cho công ty nhiều lợi ích.</p><h3>Hỗ trợ đo lường hiệu quả việc kinh doanh</h3><p>Website tích hợp nhiều tính năng hỗ trợ bán hàng, mang lại khả năng thống kê lượt truy cập, đơn hàng, các sản phẩm được tìm kiếm nhiều,....</p><p><em>Vì sao cần thiết kế website bán đồ thể thao chuyên nghiệp?</em></p><p>Tiết kiệm chi phí đầu tư so với hình thức kinh doanh truyền thống: Kinh doanh truyền thống yêu cầu nhiều vốn cho các khoản: thuê mặt bằng, điện, nước, sửa chữa mặt bằng,... Với kinh doanh online, chỉ cần bỏ ra chi phí thiết kế, bảo trì web là đủ.&nbsp;</p><h3>Tiếp cận khách hàng ở bất cứ khu vực địa lý nào</h3><p>Website cho phép tiếp cận với khách hàng ở nhiều nơi chỉ với một chiếc điện thoại thông minh hoặc máy tính, laptop có kết nối Internet.&nbsp;</p><h3>Hoạt động không giới hạn thời gian</h3><p>Website là công cụ để giới thiệu sản phẩm, bán hàng, giải đáp các câu hỏi, tư vấn cho khách hàng,... mọi lúc mọi nơi, không bị giới hạn thời gian như cửa hàng thông thường.</p><h3>Bắt kịp xu hướng tiêu dùng</h3><p>Người tiêu dùng hiện có xu hướng mua hàng qua mạng thay vì đến cửa hàng, đặc biệt là những người bận rộn. Thiết kế web thể hiện sự chuyên nghiệp và khả năng bắt kịp xu thế thời đại.</p>', '2025-03-31 04:01:12', '2025-03-31 04:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `view` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `banner`, `slug`, `short_desc`, `view`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Căn hộ thông tầng thiết kế tối giản, không phòng khách', '01JQN586JHNE25VR3KBDPD244R.png', 'can-ho-thong-tang-thiet-ke-toi-gian-khong-phong-khach', 'Căn hộ có quy mô hai tầng, diện tích 180 m2, tọa lạc tại một tòa chung cư thuộc TP HCM. Công năng chính gồm: phòng bếp - ăn, chỗ ngồi thư giãn, phòng trưng bày, khu giải trí, hai phòng ngủ.', 0, '<h3>Giới Thiệu</h3><p>Trong thời đại hiện đại, thiết kế tối giản đang trở thành xu hướng nổi bật, đặc biệt là trong các căn hộ thông tầng. Một căn hộ không phòng khách có thể mang lại không gian mở, thoải mái và đầy tính sáng tạo. Hãy cùng khám phá những điểm nổi bật và ưu điểm của mẫu thiết kế này.</p><h3>Thiết Kế Mở</h3><p>Căn hộ thông tầng không phòng khách thường được thiết kế theo phong cách mở, tạo ra một không gian rộng rãi và thông thoáng. Thay vì có một phòng khách riêng biệt, không gian sinh hoạt chung được kết hợp với bếp và khu vực ăn uống. Điều này không chỉ giúp tiết kiệm diện tích mà còn tạo sự kết nối giữa các thành viên trong gia đình.</p><h3>Tối Ưu Hóa Không Gian</h3><p>Thiết kế tối giản giúp tối ưu hóa không gian sử dụng. Mọi chi tiết đều được lựa chọn cẩn thận, từ nội thất đến màu sắc. Các món đồ nội thất đa chức năng, như bàn trà có thể gập lại hay ghế sofa có thể biến thành giường, sẽ giúp bạn tận dụng tối đa diện tích mà không làm mất đi tính thẩm mỹ.</p><h3>Sự Đơn Giản Trong Thiết Kế</h3><p>Căn hộ được thiết kế với các đường nét đơn giản, màu sắc trung tính và ít họa tiết. Điều này không chỉ mang lại cảm giác thanh thoát mà còn giúp không gian trở nên dễ chịu hơn. Ánh sáng tự nhiên được tối ưu hóa qua cửa sổ lớn, tạo cảm giác thoải mái và gần gũi với thiên nhiên.</p><h3>Khu Vực Riêng Tư</h3><p>Mặc dù không có phòng khách, nhưng căn hộ vẫn có thể bố trí các khu vực riêng tư như phòng ngủ và phòng làm việc. Những không gian này được thiết kế tách biệt nhưng vẫn giữ được sự liên kết với không gian chung, tạo cảm giác thoải mái và tiện nghi.</p><h3>Kết Luận</h3><p>Căn hộ thông tầng thiết kế tối giản, không phòng khách là một lựa chọn tuyệt vời cho những ai yêu thích sự đơn giản và tiện nghi. Với phong cách thiết kế này, bạn sẽ tận hưởng một không gian sống rộng rãi, thoải mái và đầy sáng tạo. Nếu bạn đang tìm kiếm một giải pháp cho không gian sống của mình, đừng ngần ngại thử nghiệm với thiết kế tối giản này!</p><p><br></p>', '2025-03-31 03:52:15', '2025-03-31 03:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('77de68daecd823babbb58edb1c8e14d7106e83bb', 'i:2;', 1743393131),
('77de68daecd823babbb58edb1c8e14d7106e83bb:timer', 'i:1743393131;', 1743393131),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1743390258),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1743390258;', 1743390258);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Kệ Lưu Trữ', '2025-03-31 03:22:14', '2025-03-31 03:22:14'),
(2, 'Phụ Kiện Trang Trí', '2025-03-31 03:22:19', '2025-03-31 03:22:19'),
(3, 'Bàn Ghế & Sofa', '2025-03-31 03:22:28', '2025-03-31 03:22:28'),
(4, 'Phòng Khách Tiện Nghi', '2025-03-31 03:24:12', '2025-03-31 03:24:12'),
(5, 'Giường Ngủ', '2025-03-31 03:24:16', '2025-03-31 03:24:16');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Trần Lê Huy Hoàng', '2509roblox@gmail.com', '02839369986', 'Cần thiết kế nội thất', 'Cần thiết kế nội thất\nCần thiết kế nội thất\nCần thiết kế nội thất\nCần thiết kế nội thất\nCần thiết kế nội thất', '2025-03-31 04:06:17', '2025-03-31 04:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_31_100112_create_projects_table', 2),
(5, '2025_03_31_100901_add_address_and_view_to_projects_table', 3),
(6, '2025_03_31_101507_create_videos_table', 4),
(7, '2025_03_31_102024_create_categories_table', 5),
(8, '2025_03_31_102603_create_products_table', 6),
(9, '2025_03_31_103350_create_services_table', 7),
(10, '2025_03_31_104140_create_blogs_table', 8),
(11, '2025_03_31_105348_create_about_table', 9),
(12, 'aaa2025_03_31_105348_create_about_table', 10),
(13, '2025_03_31_110334_create_contacts_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int NOT NULL DEFAULT '0',
  `short_dec` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `images`, `slug`, `title`, `view`, `short_dec`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(1, '[\"01JQN42MWC9H0HDA1SWS8J9BBC.png\",\"01JQN42MWEJT7FNM82VJJ7DQVP.png\",\"01JQN42MWGD02756R6QBFBN6EV.png\",\"01JQN42MWJ8S3RFCJFX0DXGYWN.png\",\"01JQN42MWMK4EBCQ0D5FYDKXPQ.png\"]', 'cuckoo-dong-ho-treo-tuong-chim-go-trang-tri-cho-gia-dinh-cafe-nha-hang', 'Cuckoo đồng hồ treo tường chim gỗ trang trí cho gia đình, cafe, nhà hàng', 0, 'Vật chất: ván sợi mật độ trung bình\nPhong cách: 4 kiểu (tùy chọn)\nNguồn bằng: 1 pin AA (không bao gồm)\nTrọng lượng vật phẩm: khoảng 125g / 4.41oz\nKích thước gói: 138 * 60 * 263mm / 5,43 * 2,36 * 10,35in\nTrọng lượng gói: khoảng 200g / 7.05oz', '<p>Đây là một chiếc đồng hồ treo tường có kích thước hoàn hảo mà bạn sẽ thích có trong phòng khách của mình. Nó dễ dàng bổ sung cho các đồ nội thất khác trong nhà của bạn.&nbsp;</p><p><strong>Các tính năng:</strong></p><p>Nó trông phong cách độc đáo ở bất cứ nơi nào bạn treo nó.</p><p>Nó không có chức năng thông báo điểm tích hợp, con chim chỉ để trang trí.</p><p>Hoàn hảo như một vật trang trí cho gia đình, quán cà phê, nhà hàng, v.v.</p><p>Thích hợp cho phòng khách, phòng làm việc và phòng ngủ.</p><p>Thật tốt khi tặng nó những người bạn yêu nghệ thuật.</p><p><strong>Thông số kỹ thuật:</strong></p><p>Vật chất: ván sợi mật độ trung bình</p><p>Phong cách: 4 kiểu (tùy chọn)</p><p>Nguồn bằng: 1 pin AA (không bao gồm)</p><p>Trọng lượng vật phẩm: khoảng 125g / 4.41oz</p><p>Kích thước gói: 138 * 60 * 263mm / 5,43 * 2,36 * 10,35in</p><p>Trọng lượng gói: khoảng 200g / 7.05oz</p><p>Kích thước mặt hàng:</p><p>Kiểu 1: 241 * 116 * 50mm / 9,49 * 4,57 * 1,97in<br>Kiểu 2: 225 * 118 * 50mm / 8,86 * 4,65 * 1,97in<br>Kiểu 3: 225 * 115 * 50mm / 8,86 * 4,53 * 1,97in<br>Kiểu 4: 231 * 118 * 50mm / 9,09 * 4,65 * 1,97in</p><p>Lưu ý:</p><p>1 Pin AA là cần thiết, nhưng không bao gồm trong giao hàng.</p><p>Danh sách gói:</p><p>1 * Đồng hồ&nbsp;</p>', 2, '2025-03-31 03:31:44', '2025-03-31 03:31:44');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `banner`, `slug`, `title`, `short_desc`, `description`, `created_at`, `updated_at`, `address`, `view`) VALUES
(2, '01JQN2Q4N9JHJD8K66ZX06X29V.png', 'du-an-thiet-ke-noi-that-biet-thu-lien-ke-vinhomes-ocean-park-2-the-empire', 'Dự án thiết kế nội thất biệt thự liền kề Vinhomes Ocean Park 2 – The Empire', 'Dự án thiết kế nội thất biệt thự liền kề Vinhomes Ocean Park 2 – The Empire', '<h2><strong>Giới thiệu dự án</strong></h2><p>Dự án thiết kế nội thất biệt thự liền kề Vinhomes Ocean Park 2 – The Empire được thực hiện với mong muốn mang đến không gian sống sang trọng, hiện đại và thoải mái cho các cư dân. Với thiết kế tinh tế, dự án không chỉ đáp ứng nhu cầu sinh hoạt mà còn thể hiện phong cách sống đẳng cấp.<br><br></p><h2><strong>Ý tưởng thiết kế</strong></h2><p>Ý tưởng thiết kế dựa trên sự kết hợp hoàn hảo giữa tính năng và thẩm mỹ, tạo ra không gian sống lý tưởng cho gia đình. Chúng tôi đã lựa chọn gam màu nhẹ nhàng, kết hợp với các vật liệu cao cấp để mang lại sự hài hòa và ấm áp. Mỗi không gian trong biệt thự đều được chăm chút tỉ mỉ, từ phòng khách đến phòng ngủ, nhằm mang lại trải nghiệm sống tốt nhất.</p><h2><strong><br>Các khu vực chính</strong></h2><p>Phòng Khách: Được thiết kế mở, phòng khách là nơi lý tưởng để tiếp khách và thư giãn. Với bộ sofa sang trọng, bàn trà tinh tế và ánh sáng tự nhiên, không gian trở nên rộng rãi và thoáng đãng.<br>Bếp và Phòng Ăn: Khu vực bếp được trang bị đầy đủ tiện nghi hiện đại, với thiết kế thông minh giúp tối ưu hóa không gian. Phòng ăn liền kề, với bàn ăn lớn, tạo điều kiện cho những bữa tiệc gia đình ấm cúng.<br>Phòng Ngủ: Mỗi phòng ngủ đều được thiết kế riêng biệt, tạo cảm giác thư giãn tối đa. Nội thất gỗ tự nhiên kết hợp với các chi tiết trang trí tinh xảo mang lại sự sang trọng và ấm cúng.<br>Không gian ngoài trời: Ban công và sân vườn được thiết kế hài hòa với thiên nhiên, là nơi lý tưởng để thư giãn và tổ chức các buổi tiệc ngoài trời.</p><h2>Lợi ích của dự án</h2><p>Dự án không chỉ mang đến không gian sống lý tưởng mà còn tích hợp các tiện ích hiện đại của khu đô thị Vinhomes Ocean Park 2. Cư dân sẽ được tận hưởng cuộc sống đầy đủ tiện nghi với các dịch vụ cao cấp như hồ bơi, công viên, khu vui chơi trẻ em và các cửa hàng mua sắm.<br><br></p><h2><strong>Kết luận</strong></h2><p>Dự án thiết kế nội thất biệt thự liền kề Vinhomes Ocean Park 2 – The Empire là sự lựa chọn hoàn hảo cho những ai tìm kiếm một không gian sống đẳng cấp và tiện nghi. Chúng tôi cam kết mang đến cho bạn một cuộc sống trọn vẹn và hạnh phúc trong từng khoảnh khắc.</p>', '2025-03-31 03:07:59', '2025-03-31 03:13:34', 'Vinhomes Ocean Park 2 – The Empire', 0);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `view` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `banner`, `slug`, `short_desc`, `view`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Dịch vụ thi công nội thất chung cư tại TPHCM', '01JQN4JEDFW52706W5DP6FKC5T.png', 'dich-vu-thi-cong-noi-that-chung-cu-tai-tphcm', 'Bạn đang tìm kiếm một đội ngũ chuyên nghiệp để thực hiện dự án thi công nội thất. Cho căn hộ chung cư của mình tại TPHCM, Bình Dương hoặc Đồng Nai. Với kinh nghiệm và tâm huyết, Thợ Việt cam kết mang đến cho bạn không gian sống hoàn hảo, phản ánh đẳng cấp và phong cách riêng của bạn. Với dịch vụ thi công nội thất chung cư của chúng tôi. Mỗi chi tiết được chăm chút kỹ lưỡng, từ thiết kế đến việc lựa chọn vật liệu và quy trình thi công. Nhằm tạo ra không gian sống tối ưu và đẳng cấp. Hãy để chúng tôi biến ước mơ về căn hộ chung cư hoàn hảo của bạn thành hiện thực.', 0, '<h3>Giới Thiệu</h3><p>Trong bối cảnh phát triển nhanh chóng của thành phố Hồ Chí Minh, nhu cầu về không gian sống tiện nghi và hiện đại ngày càng tăng cao. Dịch vụ thi công nội thất chung cư của chúng tôi ra đời nhằm đáp ứng nhu cầu này, mang đến cho bạn những giải pháp tối ưu nhất cho không gian sống của mình.</p><h3>Cam Kết Chất Lượng</h3><p>Chúng tôi cam kết cung cấp dịch vụ thi công nội thất chung cư với chất lượng hàng đầu. Đội ngũ kiến trúc sư và thợ thi công của chúng tôi là những người có nhiều năm kinh nghiệm, luôn sẵn sàng lắng nghe và tư vấn để hiện thực hóa ý tưởng của bạn. Chúng tôi sử dụng vật liệu cao cấp, đảm bảo tính thẩm mỹ và độ bền cho mọi công trình.</p><h3>Quy Trình Thi Công</h3><ol><li><strong>Khảo Sát và Tư Vấn</strong>: Chúng tôi sẽ đến khảo sát thực tế và tư vấn cho bạn về các giải pháp thiết kế nội thất phù hợp với không gian và ngân sách.</li><li><strong>Thiết Kế 3D</strong>: Sau khi thống nhất ý tưởng, đội ngũ thiết kế sẽ tạo ra mô hình 3D giúp bạn hình dung rõ nét về không gian sau khi thi công.</li><li><strong>Thi Công</strong>: Chúng tôi sẽ tiến hành thi công theo đúng bản thiết kế đã phê duyệt, đảm bảo tiến độ và chất lượng công trình.</li><li><strong>Nghiệm Thu và Bàn Giao</strong>: Sau khi hoàn thành, chúng tôi sẽ tiến hành nghiệm thu và bàn giao công trình cho bạn.</li></ol><h3>Dịch Vụ Đa Dạng</h3><p>Chúng tôi cung cấp đa dạng các dịch vụ thi công nội thất chung cư như:</p><ul><li><strong>Thiết kế và thi công phòng khách</strong>: Tạo không gian tiếp khách sang trọng và ấm cúng.</li><li><strong>Thiết kế và thi công phòng ngủ</strong>: Mang đến sự thư giãn và thoải mái cho không gian nghỉ ngơi.</li><li><strong>Thiết kế và thi công phòng bếp</strong>: Tối ưu hóa công năng sử dụng với thiết kế hiện đại và tiện nghi.</li><li><strong>Thiết kế và thi công phòng tắm</strong>: Mang lại sự sang trọng và sạch sẽ cho không gian vệ sinh.</li></ul><h3>Lý Do Chọn Chúng Tôi</h3><ul><li><strong>Kinh Nghiệm</strong>: Nhiều năm hoạt động trong lĩnh vực thi công nội thất.</li><li><strong>Chất Lượng</strong>: Sử dụng vật liệu cao cấp và công nghệ thi công tiên tiến.</li><li><strong>Dịch Vụ Khách Hàng Tận Tâm</strong>: Chúng tôi luôn lắng nghe và đáp ứng nhu cầu của khách hàng.</li><li><strong>Giá Cả Cạnh Tranh</strong>: Cam kết mang lại giá trị tốt nhất cho khách hàng.</li></ul><h3>Kết Luận</h3><p>Nếu bạn đang tìm kiếm dịch vụ thi công nội thất chung cư tại TPHCM, hãy liên hệ với chúng tôi ngay hôm nay để được tư vấn và báo giá chi tiết. Chúng tôi sẽ giúp bạn biến những ý tưởng thành hiện thực, mang đến cho bạn một không gian sống hoàn hảo và ấn tượng.</p><p><br></p>', '2025-03-31 03:40:22', '2025-03-31 03:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('OQKEsVG6eFLDgEheCORP4bH9oMnLGJYeT9BD4cPM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 OPR/117.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkYzMGNDRnliS0wzVWlFOHNGbzc1WlluRlFDeXI2enVKSWtZcVJTUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zZXJ2aWNlL2h1b25nLWRhbi10dS1kZWNvci1waG9uZy1uZ3UtZGVwLXZhLWNodWFuLXBob25nLXRodXktMjAyMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743403194);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'admin@gmail.com', NULL, '$2y$12$DYkQdIEuvCGb/7uRpkE5AOZuDK4PcBxf5C77B2lpEqed6GbIGLs1K', NULL, '2025-03-31 02:55:58', '2025-03-31 02:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint UNSIGNED NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `banner`, `title`, `url`, `created_at`, `updated_at`) VALUES
(1, '01JQN3BCPFFGAREBC54DBAF0KR.png', 'Thiết kế nội thất villa luxury | Video 3D | Ms.Huyền', 'https://www.youtube.com/watch?v=og6w3klwtLI', '2025-03-31 03:19:02', '2025-03-31 03:19:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_slug_unique` (`slug`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_slug_unique` (`slug`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

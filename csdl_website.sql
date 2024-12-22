-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 17, 2024 lúc 06:45 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `csdl_website`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_blogs`
--

CREATE TABLE `tbl_blogs` (
  `id_blog` int(11) NOT NULL,
  `user_blog` varchar(255) NOT NULL,
  `date_blog` date NOT NULL,
  `title_blog` varchar(300) NOT NULL,
  `content_blog` varchar(500) NOT NULL,
  `img_blog` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_blogs`
--

INSERT INTO `tbl_blogs` (`id_blog`, `user_blog`, `date_blog`, `title_blog`, `content_blog`, `img_blog`) VALUES
(1, 'thanhhien1', '2024-11-27', 'Cuốn sách này truyền tải thông điệp gì quan trọng nhất?', 'Thực phẩm hữu cơ là thực phẩm được lựa chọn nhiều nhất từ chị/em nội trợ vì những lợi ích về sức khỏe....', 'blog-1.jpg'),
(2, 'thanhhien2', '2024-11-27', 'Nhân vật chính trong cuốn sách có sự phát triển như thế nào ?', 'Thực phẩm hữu cơ (organic) là thực phẩm được trồng theo phương pháp nông nghiệp hữu cơ....', 'blog-2.jpg'),
(3, 'thanhhien3', '2024-11-27', 'Cuốn sách này có làm bạn thay đổi suy nghĩ ?', 'Khi mà thị trường tiêu dùng Việt đang quan ngại về vấn đề an toàn thực phẩm thì thực phẩm sạch và thực phẩm hữu cơ....', 'blog-3.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_user`, `code_cart`, `cart_status`) VALUES
(6, 3, '1995', 0),
(7, 3, '3401', 0),
(8, 3, '7675', 0),
(9, 0, '4066', 1),
(10, 4, '1146', 1),
(11, 3, '9304', 1),
(12, 23, '5091', 0),
(13, 3, '3473', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_detail`
--

CREATE TABLE `tbl_cart_detail` (
  `id_cart_detail` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantify` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_detail`
--

INSERT INTO `tbl_cart_detail` (`id_cart_detail`, `code_cart`, `id_product`, `quantify`) VALUES
(1, '1995', 1, 2),
(2, '1995', 3, 1),
(3, '3401', 1, 2),
(4, '3401', 3, 1),
(5, '7675', 9, 1),
(6, '7675', 4, 1),
(7, '4066', 1, 1),
(8, '1146', 9, 1),
(9, '9304', 1, 1),
(10, '9304', 4, 1),
(11, '5091', 9, 1),
(12, '3473', 5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id_categorie` int(11) NOT NULL,
  `title_categorie` varchar(255) NOT NULL,
  `content_categorie` varchar(255) NOT NULL,
  `img_categorie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_categories`
--

INSERT INTO `tbl_categories` (`id_categorie`, `title_categorie`, `content_categorie`, `img_categorie`) VALUES
(1, 'Tiểu thuyết', 'giảm giá 25%', 'cat-1.png'),
(2, 'Sách lịch sử', 'giảm giá 22%', 'cat-2.png'),
(3, 'Sách khoa học', 'giảm giá 15%', 'cat-3.png'),
(4, 'Sách giáo khoa', 'giảm giá tới 30%', 'cat-4.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_features`
--

CREATE TABLE `tbl_features` (
  `id_feature` int(11) NOT NULL,
  `title_feature` varchar(255) NOT NULL,
  `description_feature` varchar(255) NOT NULL,
  `img_feature` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_features`
--

INSERT INTO `tbl_features` (`id_feature`, `title_feature`, `description_feature`, `img_feature`) VALUES
(1, 'Mỗi cuốn sách – Một hành trình mới', 'Gieo chữ vào lòng, gặt mầm trí tuệ.', 'feature-img-1.png'),
(2, 'giao hàng miễn phí', 'thực phẩm tươi giao khắp lãnh thổ việt nam, phí 5k/5km', 'feature-img-2.png'),
(3, 'thanh toán dễ dàng', 'dễ dàng thanh toán, nhanh, đảm bảo hoạt động 24/7, đảm bảo mọi thông tin khách hàng', 'feature-img-3.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_item_product`
--

CREATE TABLE `tbl_item_product` (
  `id_item_product` int(11) NOT NULL,
  `name_item_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_item_product`
--

INSERT INTO `tbl_item_product` (`id_item_product`, `name_item_product`) VALUES
(1, 'id product'),
(2, 'name product'),
(3, 'price product'),
(4, 'assess product'),
(5, 'img product'),
(6, 'category product');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id_item_menu` int(11) NOT NULL,
  `name_item_menu` varchar(255) NOT NULL,
  `class_item_menu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_menu`
--

INSERT INTO `tbl_menu` (`id_item_menu`, `name_item_menu`, `class_item_menu`) VALUES
(1, 'trang chủ', 'home'),
(2, 'nổi bật', 'features'),
(3, 'sản phẩm', 'products'),
(4, 'danh mục', 'categories'),
(5, 'đánh giá', 'review'),
(6, 'bài viết', 'blogs');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id_product` int(11) NOT NULL,
  `name_product` varchar(255) NOT NULL,
  `price_product` float NOT NULL,
  `assess_product` varchar(255) NOT NULL,
  `img_product` varchar(255) NOT NULL,
  `category_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_products`
--

INSERT INTO `tbl_products` (`id_product`, `name_product`, `price_product`, `assess_product`, `img_product`, `category_product`) VALUES
(1, 'Book1', 35000, '', 'product-1.png', '2'),
(2, 'Book2', 25000, '', 'product-2.png', '1'),
(3, 'Book3', 120000, '', 'product-3.png', '4'),
(4, 'Book4', 30000, '', 'product-4.png', '1'),
(5, 'Book5', 22000, '', 'product-5.png', '1'),
(6, 'Book6', 43000, '', 'product-6.png', '2'),
(7, 'Book7', 25000, '', 'product-7.png', '1'),
(8, 'Book8', 25000, '', 'product-8.png', '1'),
(9, 'Book9', 55000, '', 'product-9.jpg', '4'),
(10, 'Book10', 125000, '', 'product-10.jpg', '4'),
(11, 'Book11', 250000, '', 'product-11.jfif', '4'),
(12, 'Book12', 75000, '', 'product-12.jpg', '3'),
(13, 'Book13', 35000, '', 'product-13.jpg', '2'),
(14, 'Book14', 45000, '', 'product-14.jpg', '3'),
(15, 'Book15', 18000, '', 'product-15.jpeg', '1'),
(16, 'Book16', 160000, '', 'product-16.jpg', '2'),
(17, 'Book17', 20000, '', 'product-17.png', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_reviews`
--

CREATE TABLE `tbl_reviews` (
  `id_review` int(11) NOT NULL,
  `content_review` varchar(500) NOT NULL,
  `name_review` varchar(255) NOT NULL,
  `assess_review` varchar(11) NOT NULL,
  `img_review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_reviews`
--

INSERT INTO `tbl_reviews` (`id_review`, `content_review`, `name_review`, `assess_review`, `img_review`) VALUES
(1, 'Cuốn sách này mang đến một câu chuyện sâu sắc và đầy cảm xúc. ', 'user1', '', 'pic-1.png'),
(2, 'Cách tác giả xây dựng nhân vật rất tinh tế, khiến người đọc dễ dàng đồng cảm và gắn bó.', 'user2', '', 'pic-2.png'),
(3, 'Dù vậy, đây vẫn là một cuốn sách đáng đọc và suy ngẫm.', 'user3', '', 'pic-3.png'),
(4, 'Sẽ ủng hộ và quay lại mua sách tại cửa hàng, vào tháng sau', 'user4', '', 'pic-4.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shop`
--

CREATE TABLE `tbl_shop` (
  `id_shop` int(11) NOT NULL,
  `name_shop` varchar(255) NOT NULL,
  `introduce_shop` varchar(355) NOT NULL,
  `facebook_shop` varchar(255) NOT NULL,
  `youtube_shop` varchar(255) NOT NULL,
  `instagram_shop` varchar(255) NOT NULL,
  `phone_shop` int(11) NOT NULL,
  `email_shop` varchar(255) NOT NULL,
  `address_shop` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shop`
--

INSERT INTO `tbl_shop` (`id_shop`, `name_shop`, `introduce_shop`, `facebook_shop`, `youtube_shop`, `instagram_shop`, `phone_shop`, `email_shop`, `address_shop`) VALUES
(1, 'book store', 'chúng tôi mang đến cho bạn một kho tàng sách phong phú với đủ thể loại', '', '', '', 397964571, 'phamthanhhiengmail.com', '211 hoàng quốc việt , hà nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id_slider` int(11) NOT NULL,
  `first_slogan_slider` varchar(500) NOT NULL,
  `key_slogan_slider` varchar(255) NOT NULL,
  `last_slogan_slider` varchar(255) NOT NULL,
  `sub_slogan_slider` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`id_slider`, `first_slogan_slider`, `key_slogan_slider`, `last_slogan_slider`, `sub_slogan_slider`) VALUES
(1, 'Mở trang ', 'sách', ', mở ngàn chân trời', 'Tri thức hôm nay, thành công ngày ma');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_type_product`
--

CREATE TABLE `tbl_type_product` (
  `id_type_product` int(11) NOT NULL,
  `name_type_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_type_product`
--

INSERT INTO `tbl_type_product` (`id_type_product`, `name_type_product`) VALUES
(1, 'rau củ'),
(2, 'trái cây'),
(3, 'trứng sữa'),
(4, 'thịt'),
(5, 'gia vị');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dateofbirth` date NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `points` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `email`, `dateofbirth`, `phone`, `address`, `points`) VALUES
(2, 'admin', 'admin', 'Nguyen Admin', 'nguyenadmin1209@gmail.com', '2001-09-12', '0397967585', 'Hải Phòng', 0),
(3, 'user1', '123', 'Nguyen Van User1', 'nguyenvanuser1@gmail.com', '1977-12-03', '0964325212', 'Hà Nội', 40),
(4, 'user2', '123', 'Nguyen Van User2', 'nguyenuser2@gmail.com', '1987-08-31', '0998325212', 'Hải Phòng', 82),
(5, 'user3', '123', 'Nguyen Van User3', 'nguyenuser3@gmail.com', '1965-03-03', '0964329312', 'Đà Nẵng', 100),
(7, 'user2', '123', 'Nguyen Van User2', 'nguyenuser2@gmail.com', '1981-12-04', '0964392212', 'TP HCM', 67),
(8, 'user4', '123', 'Nguyen Van User4', 'nguyenuser4@gmail.com', '1977-04-25', '0964320212', 'Cần Thơ', 56),
(10, 'user5', '123', 'Nguyen Van User5', 'nguyenvanuser5@gmail.com', '1959-08-31', '0964325228', 'Nam Định', 78),
(11, 'user6', '12345', 'Nguyen Van User6', 'nguyenvanuser6@gmail.com', '1982-07-28', '0964325292', 'Quảng Ninh', 32),
(12, 'user7', '123', 'Nguyen Van User7', 'nguyenvanuser7@gmail.com', '1981-09-12', '0964325890', 'Bắc Ninh', 11),
(16, 'user10', '123', 'Bui Van User10', 'buivanuser10@gmail.com', '2002-09-08', '0964325234', 'Hà Nội', 72),
(17, 'user11', '123', 'Nguyen Van User11', 'nguyenvanuser11@gmail.com', '2002-12-07', '0964325569', 'Hải Phòng', 59),
(18, 'user12', '123', 'Nguyen Văn User12', 'nguyenvanuser12@gmail.com', '1995-11-29', '0964325981', 'Đà Nẵng', 8),
(19, 'user13', '123', 'Nguyen Van User13', 'nguyenuser13@gmail.com', '0000-00-00', '0397967585', 'Hà Nội', 0),
(20, 'user99', '123', 'Nguyen Van User99', 'nguyenvanuser99@gmail.com', '0000-00-00', '0397967585', 'TP HCM', 0),
(21, 'user98', '123', 'Nguyen Van User98', 'nguyenvanuser98@gmail.com', '0000-00-00', '0397967585', 'Hải Phòng', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  ADD PRIMARY KEY (`id_blog`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  ADD PRIMARY KEY (`id_cart_detail`);

--
-- Chỉ mục cho bảng `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Chỉ mục cho bảng `tbl_features`
--
ALTER TABLE `tbl_features`
  ADD PRIMARY KEY (`id_feature`);

--
-- Chỉ mục cho bảng `tbl_item_product`
--
ALTER TABLE `tbl_item_product`
  ADD PRIMARY KEY (`id_item_product`);

--
-- Chỉ mục cho bảng `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id_item_menu`);

--
-- Chỉ mục cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id_product`);

--
-- Chỉ mục cho bảng `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  ADD PRIMARY KEY (`id_review`);

--
-- Chỉ mục cho bảng `tbl_shop`
--
ALTER TABLE `tbl_shop`
  ADD PRIMARY KEY (`id_shop`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Chỉ mục cho bảng `tbl_type_product`
--
ALTER TABLE `tbl_type_product`
  ADD PRIMARY KEY (`id_type_product`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  MODIFY `id_cart_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `id_feature` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_item_product`
--
ALTER TABLE `tbl_item_product`
  MODIFY `id_item_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id_item_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_shop`
--
ALTER TABLE `tbl_shop`
  MODIFY `id_shop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_type_product`
--
ALTER TABLE `tbl_type_product`
  MODIFY `id_type_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

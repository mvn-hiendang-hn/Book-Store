# Book Store Website

## Giới thiệu

Dự án Website Book Store là một nền tảng trực tuyến giúp người dùng dễ dàng mua sắm sách, tham khảo các đánh giá từ khách hàng khác, và khám phá các bài viết liên quan đến sách. Trang web được phát triển bằng PHP và tích hợp một hệ thống gợi ý sách được xây dựng bằng Python, sử dụng ba thuật toán: Naive Bayes, Decision Tree, và KNN.

---

## Tính năng

### Chức năng của người dùng

- **Đăng nhập/Đăng ký**: Người dùng có thể tạo tài khoản mới hoặc đăng nhập vào hệ thống.
- **Quản lý thông tin cá nhân**: Sửa thông tin cá nhân trong tài khoản.
- **Xem nội dung nổi bật**: Cập nhật các bài viết và sản phẩm nổi bật trên trang.
- **Xem danh mục sản phẩm**: Duyệt qua danh sách các sách được phân loại theo danh mục.
- **Xem đánh giá khách hàng**: Tham khảo các nhận xét từ khách hàng khác về sản phẩm.
- **Xem bài viết về sách**: Đọc các bài viết liên quan đến sách, như review, giới thiệu sách mới.
- **Đặt hàng**: Thêm sách vào giỏ hàng và hoàn tất quá trình mua hàng.

### Chức năng của quản trị viên (Admin)

- **Quản lý khách hàng**: Xem, chỉnh sửa hoặc xóa thông tin khách hàng.
- **Quản lý sản phẩm**: Thêm, sửa hoặc xóa thông tin sách.
- **Quản lý đơn hàng**: Theo dõi, xử lý và cập nhật trạng thái đơn hàng.
- **Chỉnh sửa nội dung hiển thị**: Thay đổi các nội dung nổi bật, bài viết, danh mục hiển thị trên trang web.

### Hệ thống gợi ý sách

- **Tích hợp AI**: Sử dụng Python để xây dựng hệ thống gợi ý sách dựa trên dữ liệu người dùng.
- **Thuật toán**:
  - Naive Bayes: Dự đoán dựa trên xác suất thống kê.
  - Decision Tree: Xây dựng mô hình cây quyết định để gợi ý sách phù hợp.
  - KNN (K-Nearest Neighbors): Đề xuất sách dựa trên các sách tương tự được người dùng khác quan tâm.

---

## Công nghệ sử dụng

- **Backend**: PHP
- **Frontend**: HTML, CSS, JavaScript
- **Database**: MySQL
- **AI gợi ý sách**: Python

---

## Cách cài đặt và chạy dự án

### 1. Yêu cầu hệ thống

- PHP >= 7.4
- MySQL >= 5.7
- Python >= 3.8
- XAMPP (Apache + MySQL)

### 2. Cài đặt

- Clone repository dự án:
  ```bash
  git clone https://github.com/mvn-hiendang-hn/Book-Store.git
  ```
- Di chuyển folder dự án vào thư mục `htdocs` của XAMPP:
  ```
  cp -r project_folder /path/to/xampp/htdocs/Book-Store
  ```
- Tạo cơ sở dữ liệu bookstore 
  ```
  CREATE DATABASE bookstore;
  ```
- Tạo cơ sở dữ liệu và nhập tệp SQL:
  ```bash
  mysql -u username -p bookstore < csdl_website.sql
  ```

### 3. Chạy dự án

- Khởi động XAMPP và bật Apache, MySQL.
- Mở trình duyệt và truy cập:
  ```
  http://localhost/Book-Store/index.php
  ```

---


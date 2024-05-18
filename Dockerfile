# Sử dụng image PHP chính thức
FROM php:8.1.2-apache

# Cài đặt các extension PHP bổ sung nếu cần thiết
RUN apt-get update -y && apt-get install -y libmariadb-dev
RUN docker-php-ext-install pdo pdo_mysql

# Sao chép mã nguồn ứng dụng vào thư mục làm việc
COPY . /var/www/html

# Thêm chỉ thị ServerName vào cấu hình Apache
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Kích hoạt các module Apache cần thiết
RUN a2enmod rewrite

# Expose port 80 để truy cập ứng dụng
EXPOSE 80

CMD ["apache2-foreground"]

# Thiết lập quyền sở hữu và quyền truy cập nếu cần thiết
RUN sudo chown -R www-data:www-data /var/www/html
RUN sudo chmod -R 777 /var/www/html

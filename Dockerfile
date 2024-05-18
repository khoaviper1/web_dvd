# Sử dụng image PHP chính thức
FROM php:8.1.2-apache

# Cài đặt các extension PHP bổ sung nếu cần thiết
RUN apt-get update -y && apt-get install -y libmariadb-dev
RUN docker-php-ext-install pdo pdo_mysql

# Copy mã nguồn vào thư mục web của Apache
COPY ./src /var/www/myproject

# Thiết lập quyền sở hữu và quyền truy cập nếu cần thiết
RUN chown -R www-data:www-data /var/www/myproject
RUN chmod -R 777 /var/www/myproject

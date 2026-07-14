# Dùng nginx làm nền tảng
FROM nginx:alpine
# Copy file html của bạn vào thư mục mặc định của nginx
COPY index.html /usr/share/nginx/html/index.html
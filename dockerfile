# Menggunakan image nginx ringan
FROM nginx:alpine

# Hapus konfigurasi default nginx
RUN rm /etc/nginx/conf.d/default.conf

# Salin konfigurasi custom ke nginx
COPY default.conf /etc/nginx/conf.d/

# Salin semua isi direktori proyek ke direktori root nginx
COPY . /usr/share/nginx/html

# Buka port 80
EXPOSE 80

FROM nextcloud:latest

RUN apt-get update && \
    apt-get install -y libheif-dev libheif1 imagemagick --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

RUN php /var/www/html/occ app:install previewgenerator || true

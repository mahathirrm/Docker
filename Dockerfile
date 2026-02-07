FROM httpd
RUN apt-get update && apt-get install -y \
    vim-tiny \
    curl \
# remove cache files to reduce image size
RUN rm -rf /var/cache/apt/archives/*.deb
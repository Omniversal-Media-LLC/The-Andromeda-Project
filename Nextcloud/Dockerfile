FROM nextcloud:latest

# Add any custom Nextcloud configuration or extensions below

# Set memory limit
ENV PHP_MEMORY_LIMIT=512M

# Apply memory limit to PHP configuration
RUN echo "memory_limit = ${PHP_MEMORY_LIMIT}" > /usr/local/etc/php/conf.d/memory-limit.ini

# Enable PHP extension for image processing
RUN apt-get update && apt-get install -y libmagickcore-dev libmagickwand-dev && rm -rf /var/lib/apt/lists/*
RUN docker-php-ext-install gd
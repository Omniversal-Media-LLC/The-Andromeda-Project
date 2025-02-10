FROM wordpress:latest

# Set the working directory
WORKDIR /var/www/html

# Copy the sample configuration file
COPY wp-config-sample.php wp-config.php

# Expose the default port for WordPress
EXPOSE 80

# Add environment variable for debugging
ENV WP_DEBUG true

# Install less and remove cached apt lists
RUN apt-get update && apt-get install -y --no-install-recommends less && rm -rf /var/lib/apt/lists/*

# Start the Apache server
CMD ["apache2-foreground"]
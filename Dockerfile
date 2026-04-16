FROM php:8.2-apache

# Set working directory
WORKDIR /var/www/html

# Copy application files
COPY . .

# Fix permissions - ensure www-data owns the files
RUN chown -R www-data:www-data /var/www/html

# Expose port 80
EXPOSE 80

# Start Apache in foreground
CMD ["apache2-foreground"]
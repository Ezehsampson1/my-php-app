FROM php:8.2-cli-alpine

# Use a lightweight PHP runtime for a simple app
WORKDIR /app

# Copy application files
COPY . .

# Expose the built-in PHP server port
EXPOSE 8081

# Run the built-in PHP development server
CMD ["php", "-S", "0.0.0.0:8081", "-t", "/app"]
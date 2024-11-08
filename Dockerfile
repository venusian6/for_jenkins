FROM ubuntu:22.04

# Set environment variables to make the installation non-interactive
ENV DEBIAN_FRONTEND=noninteractive

# Install Apache (httpd) and clean up to reduce image size
RUN apt-get update && \
    apt-get install -y apache2 && \
    rm -rf /var/lib/apt/lists/*

# Copy a custom index.html to the default Apache directory
COPY index.html /var/www/html/index.html

# Expose port 80 to allow access to the web server
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"] so what command i need to write in shell execute in jenkins 


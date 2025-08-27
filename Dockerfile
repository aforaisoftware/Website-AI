# Use the official NGINX image
FROM nginx:alpine

# Copy all files to the default NGINX public folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

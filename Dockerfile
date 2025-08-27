# Use the official NGINX image
FROM nginx:alpine

# Copy your site files into the NGINX html folder
COPY . /usr/share/nginx/html

# Render sets PORT dynamically, so we update Nginx config to use it
RUN sed -i "s/listen       80;/listen       ${PORT};/" /etc/nginx/conf.d/default.conf

# Expose Render's port (not strictly required, but good practice)
EXPOSE 10000

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

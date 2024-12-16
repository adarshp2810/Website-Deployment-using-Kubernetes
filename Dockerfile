# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the website files from your repository into the Nginx HTML folder
COPY . /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80

# Run Nginx
CMD ["nginx", "-g", "daemon off;"]

# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the custom HTML file to the default Nginx public folder
COPY index.html /usr/share/nginx/html/index.html

# Optional: Copy a custom Nginx configuration if needed
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
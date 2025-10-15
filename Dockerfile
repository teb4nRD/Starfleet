# Use Nginx Alpine as the base image for a lightweight web server
FROM nginx:alpine

# Copy the Starfleet v1.0 HTML file to the Nginx html directory
COPY Starfleet\ v1.0.html /usr/share/nginx/html/index.html

# Copy any additional static files if they exist (e.g., other HTML files, but in this case, it's primarily the main file)
# If there are more files, uncomment and adjust:
# COPY . /usr/share/nginx/html/

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

# Use Nginx Alpine as the base image for a lightweight web server
FROM nginx:alpine

# Fix: Properly quote the file name with spaces to avoid build errors during COPY
# Original issue: Unquoted file name with spaces caused Docker build to fail
COPY "Starfleet v1.0.html" /usr/share/nginx/html/index.html

# Copy any additional static files if they exist (e.g., other HTML files, but in this case, it's primarily the main file)
# If there are more files, uncomment and adjust:
# COPY . /usr/share/nginx/html/

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

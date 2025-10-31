# Step 1: Base image
FROM nginx:alpine

# Step 2: Remove default nginx page completely
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy your website files to nginx directory
COPY ./index.html /usr/share/nginx/html/
COPY ./style.css /usr/share/nginx/html/
COPY ./script.js /usr/share/nginx/html/

# Step 4: Verify files (this prints directory during build)
RUN ls -la /usr/share/nginx/html

# Step 5: Expose port 80
EXPOSE 80

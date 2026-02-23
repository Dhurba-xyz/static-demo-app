FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static build
COPY . /usr/share/nginx/html

# Expose internal port only (for Traefik)
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

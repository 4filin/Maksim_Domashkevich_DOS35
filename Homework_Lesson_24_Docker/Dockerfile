FROM ubuntu:24.04

RUN apt update && \
    apt install -y nginx curl && \
    mkdir -p /app/static && \
    rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/nginx.conf

COPY ./static /app/static

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
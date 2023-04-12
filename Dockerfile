FROM nginx:alpine3.17-slim

WORKDIR /app

COPY . .

RUN apk add hugo

RUN hugo

RUN cp -r public/* /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
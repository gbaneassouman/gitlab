FROM nginx:latest

LABEL maintainer="GBANE Assouman gbane.assouman@gmail.com"

WORKDIR /usr/share/nginx/html
COPY . .
EXPOSE 80
CMD [ "nginx","-g","daemon off;" ]

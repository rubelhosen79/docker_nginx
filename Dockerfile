 FROM ubuntu

 RUN apt update

 RUN apt install nginx -y

 COPY ./index.html /usr/share/nginx/html

 CMD [ "nginx", "-g", "daemon off;" ]

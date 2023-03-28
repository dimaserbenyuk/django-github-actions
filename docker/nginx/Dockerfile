#FROM nginx:1.23.3

#RUN rm /etc/nginx/conf.d/default.conf
#COPY docker/nginx/development/nginx.conf /etc/nginx/conf.d

#WORKDIR /nginx

FROM nginx:stable-alpine
COPY docker/nginx/development/nginx.conf /etc/nginx/conf.d
CMD ["nginx", "-g", "daemon off;"]
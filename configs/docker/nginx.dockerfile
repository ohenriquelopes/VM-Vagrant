FROM nginx:latest

#COPY /public /var/www/public
COPY ./configs/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80 443
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
#stage 1
FROM node:latest as node
USER root
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod
#stage 2
FROM nginx:1.13.1-alpine
USER root
EXPOSE 80
# COPY dist /var/www
# COPY --from=node /app/dist/test_app /usr/share/nginx/html
COPY --from=node /app/dist/test_app /var/www

# USER root
# CMD ['docker','build','-t','angular-app:latest','.']
# CMD ['docker','run','-d','-p','1212:80','angular-app:latest']
# COPY config/nginx.conf /etc/nginx/nginx.conf
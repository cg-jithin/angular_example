# #stage 1
# FROM node:latest as node
# USER root
# WORKDIR /app
# COPY . .
# RUN npm install
# RUN npm run build --prod
# #stage 2
# FROM nginx:1.13.1-alpine
# USER root
# EXPOSE 80
# # COPY dist /var/www
# # COPY --from=node /app/dist/test_app /usr/share/nginx/html
# COPY --from=node /app/dist/test_app /var/www

# # USER root
# # CMD ['docker','build','-t','angular-app:latest','.']
# # CMD ['docker','run','-d','-p','1212:80','angular-app:latest']
# # COPY config/nginx.conf /etc/nginx/nginx.conf

### STAGE 1:BUILD ###
# Defining a node image to be used as giving it an alias of "build"
# Which version of Node image to use depends on project dependencies 
# This is needed to build and compile our code 
# while generating the docker image
FROM node:latest AS build
# Create a Virtual directory inside the docker image
WORKDIR /dist/src/app
# Copy files to virtual directory
# COPY package.json package-lock.json ./
# Run command in Virtual directory
RUN npm cache clean --force
# Copy files from local machine to virtual directory in docker image
COPY . .
RUN npm install
RUN npm run build --prod


### STAGE 2:RUN ###
# Defining nginx image to be used
FROM nginx:latest AS ngi
# Copying compiled code and nginx config to different folder
# NOTE: This path may change according to your project's output folder 
USER root
COPY --from=build /dist/src/app/dist/test_app /usr/share/nginx/html
COPY --from=ngi /nginx.conf  /etc/nginx/conf.d/default.conf
# Exposing a port, here it means that inside the container 
# the app will be using Port 80 while running
EXPOSE 80
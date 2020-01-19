# get an image that can run nginx and is small in size
# use the docker image official build by nginx and choose alpine flavour of linux
FROM nginx:alpine
# author of the dockerfile
MAINTAINER Peter Lin <peter.tingyao@gmail.com>
# copy the website into the folder called website into the image
# so that whoever has this image will have the Explore_Cal website already built
COPY website /website
# copy the nginx config file to the image
COPY nginx.conf /nginx/nginx.conf

# documentation on how to run this image
# connect to docker container on port 80
EXPOSE 80
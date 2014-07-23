#Moontoast App.ActivationHub Docker Build

# Pull base image.
FROM ubuntu:14.04
MAINTAINER Jason Greathouse <jgreat@moontoast.com>

# Set static environment vars
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Update all packages and install required software
RUN apt-get update && apt-get upgrade -y && apt-get install -y nginx-extras-dbg

# Add app 
ADD . /app
WORKDIR /app

# nginx Config
RUN ./.docker/configure-nginx.sh

# Define default command.
CMD service nginx start

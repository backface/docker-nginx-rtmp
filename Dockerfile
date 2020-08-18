FROM debian:buster AS base

RUN apt-get -y update &&  apt-get install -y nginx libnginx-mod-rtmp ffmpeg \
  && apt-get clean
  
RUN mkdir -p /data/hls

EXPOSE 1935
  
CMD ["nginx", "-g", "daemon off;"]

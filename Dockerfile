FROM ubuntu:19.04
LABEL maintainer="Bryan Flood <bryanfloodcontact@gmail.com>"
LABEL description="🐳 Docker environment for GeoDjango Development"
LABEL url="https://github.com/KnowledgePending/GeoDjango-Docker"
RUN apt-get update -qq && \
    apt-get upgrade -qq && \
    apt-get install -qq build-essential     \
                        python3.6           \
                        wget                \
                        unzip               \
                        python3-pip      && \
    pip3 install        django              \
                        django-leaflet      \
                        psycopg2-binary  && \
    apt-get install     libpq-dev           \
                        binutils            \
                        libproj-dev         \
                        gdal-bin -qq  

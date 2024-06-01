FROM php:7.4-apache
WORKDIR /maxima-code
ADD  maxima-code.zip /maxima-code


RUN apt-get update && apt-get install -y \
    unzip \
    git \
    timelimit \
    libzip-dev \
    texinfo \
    sbcl \
    libreadline-dev gnuplot \
    autoconf automake libtool \
    && docker-php-ext-install zip

RUN unzip maxima-code.zip
#RUN git clone https://git.code.sf.net/p/maxima/code maxima-code
RUN cd maxima-code-f977709e2b0fdaa5532ef6ab14e4dde55e4875a0 && \
    ./bootstrap && \
    ./configure --disable-build-docs && \
    make && \
    make install
FROM php:7.2-apache


RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update && apt-get upgrade -y

RUN apt install bash-completion
RUN apt-get -y install nano
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN apt-get -y install git

ENV APACHE_DOCUMENT_ROOT=/var/www/html/

# Default powerline10k theme, no plugins installed
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)"


COPY ./home/ /var/html/
WORKDIR /var/www/html
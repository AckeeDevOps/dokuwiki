FROM istepanov/dokuwiki

RUN apt-get update && apt-get install -y \ 
    apt-utils \
    curl libcurl3 libcurl3-dev php5-curl php5-mcrypt && php5enmod curl

WORKDIR /var/dokuwiki-storage/
RUN  rm -rf /var/www/lib/plugins/ && \
     ln -s /var/dokuwiki-storage/lib/plugins /var/www/lib/plugins && \
     rm -rf /var/www/lib/styles/ && \
     ln -s /var/dokuwiki-storage/lib/styles /var/www/lib/styles && \
     rm -rf /var/www/lib/tpl/ && \
     ln -s /var/dokuwiki-storage/lib/tpl /var/www/lib/tpl

FROM perl:latest

MAINTAINER Oleg Fiksel

COPY cpanfile cpanfile
RUN cpanm --installdeps .
COPY critic_html /var/lib/critic_html
RUN ln -s /var/lib/critic_html/critichtml /usr/bin/critichtml
WORKDIR /tmp/workspace

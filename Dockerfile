FROM perl:5.20

MAINTAINER Viruslab Systems, Avast Software

COPY cpanfile /root/cpanfile
RUN cpanm --installdeps . && rm -rf ~/.cpanm

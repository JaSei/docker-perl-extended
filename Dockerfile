FROM perl:5.28

MAINTAINER Viruslab Systems, Avast Software

ENV PERL5LIB /usr/share/perl5
RUN apt-get update \
    && apt-get -y install --no-install-recommends postgresql \
    && rm -rf /var/lib/apt/lists/*

COPY cpanfile /root/cpanfile
RUN cpanm --verbose --notest Term::ReadKey && rm -rf ~/.cpanm
RUN cpanm --verbose App::cpm Promises && rm -rf ~/.cpanm
RUN cpm install --test --verbose -g && rm -rf ~/.cpanm

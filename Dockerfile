FROM perl:5.20

COPY cpanfile .
RUN cpanm --installdeps . && rm -rf ~/.cpanm

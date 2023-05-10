FROM minio/mc:latest

# RUN curl -o /usr/local/bin/gosu -SL "https://github.com/tianon/gosu/releases/download/1.4/gosu-$(dpkg --print-architecture)" \
#     && curl -o /usr/local/bin/gosu.asc -SL "https://github.com/tianon/gosu/releases/download/1.4/gosu-$(dpkg --print-architecture).asc" \
#     && gpg --verify /usr/local/bin/gosu.asc \
#     && rm /usr/local/bin/gosu.asc \
#     && chmod +x /usr/local/bin/gosu

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
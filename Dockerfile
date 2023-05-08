FROM minio/mc:latest

RUN useradd --user-group --system --create-home --no-log-init mc-client-action
USER mc-client-action
ADD entrypoint.sh /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]
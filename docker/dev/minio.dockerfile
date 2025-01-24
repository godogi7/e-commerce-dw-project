FROM minio/minio:latest

COPY config/minio/init.sh /docker-entrypoint-initdb.d/

EXPOSE 9000 9001

CMD ["server", "/data", "--console-address", ":9001"]

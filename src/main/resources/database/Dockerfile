FROM mysql:latest
ENV MYSQL_ROOT_USER=root
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=jpetstore
ENV TZ="Asia/Taipei"
COPY jpetstore-hsqldb-schema.sql /docker-entrypoint-initdb.d/
COPY jpetstore-hsqldb-dataload.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

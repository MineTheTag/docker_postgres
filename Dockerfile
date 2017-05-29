FROM postgres:latest
RUN localedef -i ca_ES -c -f UTF-8 -A /usr/share/locale/locale.alias ca_ES.UTF-8
ENV LANG ca_ES.utf8
ENV MTTG_USER mttg
ENV MTTG_PASSWORD password
RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./init-mttg-db.sh /docker-entrypoint-initdb.d/init-mttg-db.sh

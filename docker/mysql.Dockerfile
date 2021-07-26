FROM mariadb:10.2

COPY build_file/mysql/zzz_custom.cnf /etc/mysql/conf.d/zzz_custom.cnf

RUN chmod 644 /etc/mysql/conf.d/zzz_custom.cnf
FROM onedio/base-node

RUN apt-get update && apt-get install -y python python-setuptools
RUN easy_install supervisor

COPY supervisord.conf /etc/supervisor/supervisord.conf

VOLUME ["/etc/supervisor/conf.d"]

WORKDIR /etc/supervisor/conf.d

CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]

FROM brandocorp/jdk8

ENV ES_VERSION=1.5.1
ENV ES_PGP_KEY_ID=D88E42B4

RUN apt-key adv --keyserver pgp.mit.edu --recv-keys $ES_PGP_KEY_ID \
  && echo "deb http://packages.elasticsearch.org/elasticsearch/${ES_VERSION%.*}/debian stable main" >> /etc/apt/sources.list \
  && apt-get update \
  && apt-get install -y elasticsearch

EXPOSE 9200
EXPOSE 9300

ENV JAVA_HOME='/opt/java'

RUN mkdir -p  /var/log/elasticsearch /var/lib/elasticsearch /tmp/elasticsearch && \
  chown elasticsearch:elasticsearch /var/log/elasticsearch /var/lib/elasticsearch /tmp/elasticsearch

USER elasticsearch

# and the winner for the longest entrypoint ever goes to...
ENTRYPOINT ["/usr/share/elasticsearch/bin/elasticsearch", "--default.config=/etc/elasticsearch/elasticsearch.yml", "--default.path.home=/usr/share/elasticsearch", "--default.path.logs=/var/log/elasticsearch", "--default.path.data=/var/lib/elasticsearch", "--default.path.work=/tmp/elasticsearch", "--default.path.conf=/etc/elasticsearch"]

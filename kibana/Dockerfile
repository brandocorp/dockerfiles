FROM debian:7.7
RUN apt-get update && \
  apt-get install -y wget ca-certificates && \
  wget -qO - https://download.elastic.co/kibana/kibana/kibana-4.0.2-linux-x64.tar.gz | tar xz -C /tmp  && \
  mv /tmp/kibana-* /opt/kibana

EXPOSE 5601

ENTRYPOINT '/opt/kibana/bin/kibana'

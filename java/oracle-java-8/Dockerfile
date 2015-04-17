FROM debian:latest

ENV DEBIAN_FRONTEND=noninteractive
ENV INSTALL='apt-get install -y --no-install-recommends'

# reduce footprint of package installs
RUN echo 'path-exclude /usr/share/doc/*' >> /etc/dpkg/dpkg.cfg.d/mini && \
  echo 'path-exclude /usr/share/man/*' >> /etc/dpkg/dpkg.cfg.d/mini && \
  echo 'path-exclude /usr/share/groff/*' >> /etc/dpkg/dpkg.cfg.d/mini && \
  echo 'path-exclude /usr/share/info/*' >> /etc/dpkg/dpkg.cfg.d/mini && \
  echo 'path-exclude /usr/share/lintian/*' >> /etc/dpkg/dpkg.cfg.d/mini && \
  echo 'path-exclude /usr/share/linda/*' >> /etc/dpkg/dpkg.cfg.d/mini && \
  echo 'path-exclude /usr/share/locale/*' >> /etc/dpkg/dpkg.cfg.d/mini && \
  echo 'path-include /usr/share/locale/en*' >> /etc/dpkg/dpkg.cfg.d/mini


# Java Version
ENV JAVA_VERSION_MAJOR=8
ENV JAVA_VERSION_MINOR=40
ENV JAVA_VERSION_BUILD=26
ENV JAVA_PACKAGE=server-jre

RUN apt-get update \
  && $INSTALL curl \
  && curl -jksSLH "Cookie: oraclelicense=accept-securebackup-cookie" \
    http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz \
    | gunzip -c - | tar -xf - -C /opt \
  && ln -s /opt/jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR} /opt/java

FROM maven:3-jdk-8

MAINTAINER Zhou Long <lmrz@sohu.com>

LABEL io.openshift.s2i.scripts-url=image:///usr/libexec/s2i \
      io.k8s.description="Apollo Meta Server S2I Builder" \
      io.k8s.display-name="apollo s2i builder 1.0" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="builder,apollo"  
     
WORKDIR /opt
RUN chmod -R 777 /opt /usr/share/maven/conf/settings.xml \
	  && useradd -u 10000 apollo \
	  && mkdir /home/apollo \
	  && echo "echo '******mvn******'">> /usr/local/bin/mvn-entrypoint.sh
RUN  chown apollo:apollo /home/apollo \
     && chown apollo:apollo /opt
COPY ./s2i/bin/ /usr/libexec/s2i
EXPOSE 8080
EXPOSE 8090

USER 10000
RUN  mkdir -p /home/apollo/.m2
ENV  MAVEN_CONFIG=/home/apollo/.m2

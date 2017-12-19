
# apollo-config-build
FROM maven:3-jdk-8

# TODO: Put the maintainer name in the image metadata
MAINTAINER Zhou Long <lmrz@sohu.com>

# TODO: Rename the builder environment variable to inform users about application you provide them
# ENV BUILDER_VERSION 1.0

# TODO: Set labels used in OpenShift to describe the builder image
LABEL io.openshift.s2i.scripts-url=image:///usr/libexec/s2i \
      io.k8s.description="Apollo Portal S2I Builder" \
      io.k8s.display-name="apollo s2i builder 1.0" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="builder,apollo"

# TODO: Install required packages here:
# RUN yum install -y ... && yum clean all -y
#RUN yum install -y rubygems && yum clean all -y
#RUN gem install asdf

WORKDIR /opt

# TODO (optional): Copy the builder files into /opt/app-root
# COPY ./<builder_folder>/ /opt/app-root/

# TODO: Copy the S2I scripts to /usr/libexec/s2i, since openshift/base-centos7 image 
# sets io.openshift.s2i.scripts-url label that way, or update that label
COPY ./s2i/bin/ /usr/libexec/s2i

# TODO: Drop the root user and make the content of /opt/app-root owned by user 1001
# RUN chown -R 1001:1001 /opt/app-root

# This default user is created in the openshift/base-centos7 image

# TODO: Set the default port for applications built using this image
EXPOSE 8070
EXPOSE 8080
EXPOSE 8090

RUN useradd -u 10000 apollo && mkdir -p /home/apollo && chown -R 10000:10000 /opt
RUN chmod -R 777 /home/apollo && chmod -R 777 /opt && chmod -R 777 /root && chown 10000:10000 /home/apollo
USER 10000
ENV MAVEN_CONFIG=/home/apollo/.m2
# TODO: Set the default CMD for the image
# CMD ["usage"]

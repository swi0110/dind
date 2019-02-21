FROM centos:6.9


RUN yum update -y

# maybe unnecessary..?
RUN yum -y install \
    ca-certificates \
    lxc

# add repository
RUN rpm -iUvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

# install docker
RUN yum -y install docker-io

# add docker.service
RUN chkconfig docker on

# docker in docker
# Install the magic wrapper.
ADD ./wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker

# Define additional metadata for our image.
VOLUME /var/lib/docker
CMD ["wrapdocker"]


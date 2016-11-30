FROM fedora:24

MAINTAINER Pavel Šimerda, Red Hat <psimerda@redhat.com>

RUN dnf install -y bind && \
 rm -rvf /var/cache/{dnf,yum}/*

CMD ["/usr/sbin/named", "-g"]

EXPOSE 53

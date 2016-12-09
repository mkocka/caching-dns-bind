FROM fedora:24

MAINTAINER Pavel Šimerda, Red Hat <psimerda@redhat.com>

RUN dnf install -y bind initscripts python-mako PyYAML && dnf -y clean all

ADD files /files

RUN /files/bind-config.sh

EXPOSE 53

CMD ["/usr/sbin/named", "-u", "named", "-g"]

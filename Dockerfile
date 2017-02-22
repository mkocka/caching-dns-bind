FROM fedora:25

MAINTAINER Pavel Šimerda, Red Hat <psimerda@redhat.com>

RUN dnf install -y bind initscripts python-mako PyYAML && dnf -y clean all

ADD files /files
ADD config.yaml /files

RUN /files/bind-config.sh

EXPOSE 53

CMD ["/files/bind-run.py"]

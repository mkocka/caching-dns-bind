# ISC BIND container image

## Deployment notes

At the time of writing this note, docker doesn't work well with firewalld.
Some of the commands below may seem redundant but this is what works for me
at the moment.

    systemctl mask firewalld
    systemctl stop firewalld
    iptables -F
    systemctl restart docker

Also note that the current version of the image talks to authoritative name
servers and therefore doesn't work in restricted environments.

.PHONY: build run

IMAGE_NAME = bind
IMAGE_OPTIONS = -v /var/named:/var/named:rw


runi: build
	docker run -it --cap-add SYS_PTRACE $(IMAGE_OPTIONS) $(IMAGE_NAME) strace -e file /usr/sbin/named -g

run: build
	docker run -d $(IMAGE_NAME)

build:
	docker build --tag=$(IMAGE_NAME) .

test:
	run_test.sh

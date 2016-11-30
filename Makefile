.PHONY: build run

IMAGE_NAME = bind


run: build
	docker run -d $(IMAGE_NAME)

build:
	docker build --tag=$(IMAGE_NAME) .

test:
	run_test.sh

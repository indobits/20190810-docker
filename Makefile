all: build run

build:
	docker build . -f Dockerfile -t docker_image:1.0

run:
	docker rm -f docker_container || true
	docker run -d --name docker_container -v ${PWD}:/app:rw -p ${port}:3000 docker_image:1.0

exec:
	docker exec -it docker_container bash

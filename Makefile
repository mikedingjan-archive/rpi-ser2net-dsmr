REPOSITORY=mikedingjan
IMAGE=rpi-ser2net-dsmr
TAG=latest


login:
	docker login

build:
	docker build -t ${IMAGE} .

tag: build
	docker tag ${IMAGE}:${TAG} ${REPOSITORY}/${IMAGE}:${TAG}

push: tag login
	docker push ${REPOSITORY}/${IMAGE}:${TAG}

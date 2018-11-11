all: build tag login push

login:
	docker login -u oauth2accesstoken -p $(shell gcloud auth print-access-token) https://gcr.io

build:
	docker build . -t ibrest

tag:
	docker tag ibrest gcr.io/quantonomy-123456/ibrest:latest

push:
	docker push gcr.io/quantonomy-123456/ibrest:latest

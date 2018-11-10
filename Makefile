login:
	docker login -u oauth2accesstoken -p "$(gcloud auth print-access-token)" https://gcr.io

build:
	docker build . -t ibrest
	docker build ibheadless -t ibgw

tag:
	docker tag ibrest gcr.io/quantonomy-123456/ibrest:latest
	docker tag ibgw gcr.io/quantonomy-123456/ibgw:latest

push:
	docker push gcr.io/quantonomy-123456/ibrest:latest
	docker push gcr.io/quantonomy-123456/ibgw:latest

all: build tag push

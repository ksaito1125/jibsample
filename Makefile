STAGE=test
BUCKET=ark-$(STAGE)-maven-s3-repo
PORT=8080
ZIPFILE=jibsample.zip
JARFILE=target/gs-spring-boot-0.1.0.jar

all:

# Spring boot application docker run.
build:
	@echo build jar and docker image
	mvn jib:dockerBuild

up: build
	-docker rm -f jibsample
	docker run -d --name jibsample -p $(PORT):8080 jibsample
	docker logs -f jibsample

# Spring boot application local run.
$(JARFILE):
	mvn package

jar: $(JARFILE)

run: jar
	java -jar $<

# Util
$(ZIPFILE):
	git archive HEAD --output=$@

upload: $(ZIPFILE)
	aws s3 cp $(ZIPFILE) s3://$(BUCKET)/src/$(ZIPFILE)

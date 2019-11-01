STAGE=test
BUCKET=ark-$(STAGE)-maven-s3-repo
ZIPFILE=jibsample.zip

all:

$(ZIPFILE):
	git archive HEAD --output=$@

upload: $(ZIPFILE)
	aws s3 cp $(ZIPFILE) s3://$(BUCKET)/src/$(ZIPFILE)

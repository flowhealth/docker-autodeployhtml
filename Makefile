s3config:
	@printf 'access_key="%s"' $(ACCESS_KEY) >> /s3cmd.cfg
	@printf 'secret_key="%s"' $(SECRET_KEY) >> /s3cmd.cfg

download:
	s3cmd -c /s3cmd.cfg get $(S3URL) dist.tgz

extract:
	tar dist.tgz -C /html --strip-components 1

idle:
	while true; sleep 5; done

all: s3config download extract idle

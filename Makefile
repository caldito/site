all:
	hugo -d docs
	printf "caldito.me" > docs/CNAME
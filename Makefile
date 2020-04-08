KONG_BUILD_TOOLS?=3.1.0
BASE?=ubuntu

build:  
	echo "-------------------inside build-rhel------------------"
	docker build --no-cache -t kong2-$(BASE) $(BASE)/



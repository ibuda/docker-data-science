ifneq ($(strip $(tag)),)
TAG=$(tag)
else
TAG=data-science
endif

ifneq ($(strip $(working_folder)),)
WORKING_FOLDER=$(working_folder)
else
WORKING_FOLDER=prb
endif

build:
	docker build -t $(TAG) .

run:
	docker run -it --rm -p 8888:8888 -v ~/$(WORKING_FOLDER)/$(TAG):/home/jovyan/work $(TAG)

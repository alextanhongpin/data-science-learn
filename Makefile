up:
	# @docker run --name jupyter -d -p 8888:8888 -v ${PWD}:/home/jovyan/work jupyter/base-notebook
	@docker run --name jupyter -d -p 8888:8888 -v ${PWD}:/home/jovyan/work jupyter/scipy-notebook

down:
	@docker stop jupyter && docker rm jupyter


.PHONY: open

open:
	./open

.PHONY: run stop clean

run:
	./docker-run.sh

stop:
	docker ps -qa | xargs docker kill

clean: 
	./docker-clean.sh

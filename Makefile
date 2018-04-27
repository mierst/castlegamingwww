.PHONY: run stop clean

run:
	./docker-run.sh

stop:
	docker ps -q | xargs docker kill

clean: stop
	./docker-clean.sh

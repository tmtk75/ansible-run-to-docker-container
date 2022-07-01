hello:
	:

run:
	ansible-playbook -i hosts.ini playbook.yml

py3c:
	docker run -it -d --name=py3c python:3 /bin/bash
py3a:
	docker attach py3c
py3s:
	docker start py3c


centos7c:
	docker run -it -d --name=centos7c centos:7 /bin/bash
centos7a:
	docker attach centos7c
centos7s:
	docker start centos7c

stopall:
	docker stop py3c
	docker stop centos7c


.PHONY: run py3c centos7c

.PHONY: build run all

build:
	docker build -t jenkinsfilerunner-local  .

run:
	docker run --rm -v $(PWD)/casc:/usr/share/jenkins/ref/casc -v $(PWD)/libraries:/libraries -v $(PWD)/Jenkinsfile:/workspace/Jenkinsfile jenkinsfilerunner-local

all: build run

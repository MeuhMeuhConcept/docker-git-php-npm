VERSION=latest

build:
	docker build -t meuhmeuhconcept/docker-git-php-npm:$(VERSION) .

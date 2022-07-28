dev:
	python3 manage.py runserver --insecure --traceback 

uwsgi:
	/opt/homebrew/bin/uwsgi --ini uwsgi.ini

docker:
	docker build --platform linux/amd64 -t erikluo/wantwords:v1 .

docker_env:
	docker build  -t erikluo/wantwordsenv:v1 -f Dockerfile.env .

models:
	cp -v ~/Downloads/data_definition+synset/*  ./website_RD/
	cp -v ~/Downloads/data_features/*  ./website_RD/
	cp -v ~/Downloads/models/*  ./website_RD/

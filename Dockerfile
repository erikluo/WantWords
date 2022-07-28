FROM erikluo/wantwordsenv:v1m

COPY . /home/wantwords/
WORKDIR /home/wantwords/

CMD ["/usr/bin/python3", "manage.py", "runserver", "--insecure"]

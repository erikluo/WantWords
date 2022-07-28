FROM erikluo/wantwordsenv:v1m


WORKDIR /home/wantwords/
COPY *.py .
COPY resources resources
COPY static static
COPY templates templates
COPY website_RD website_RD

CMD ["/usr/bin/python3", "manage.py", "runserver", "--insecure"]

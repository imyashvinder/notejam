FROM python:2.7-alpine
WORKDIR /opt/app
ADD . /opt/app
RUN pip install -f requirements.txt
CMD ['python','runserver.py']

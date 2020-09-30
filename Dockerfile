FROM python:2.7-alpine
WORKDIR /opt/app
ADD . /opt/app
RUN pip install -r requirements.txt
RUN /usr/local/bin/python db.py
CMD ["python","runserver.py"]

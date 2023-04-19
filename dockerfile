FROM python:3.8.9

WORKDIR /app

ADD . /app

RUN pip install -r requirements.txt
 
CMD python app.py

CMD ["gunicorn"  , "-b", "0.0.0.0:8000", "app:app"]
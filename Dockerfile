FROM python:3.9

WORKDIR /app

COPY . /app

ENV FLASK_APP=app/main.py

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]

# Netframe-Git

## Requirements

Install Docker.

https://docs.docker.com/engine/install/ubuntu/

# Tasks: 
#### 1. Start web on container from registry.

Launch your web application from Docker Hub. For example, you can use 'nginx'.

```sh 
docker run --name my-nginx -d -p 80:80 nginx
```

#### 2. Writing your Dockerfile and building a docker image.

Dockerfile for app Flask.

```sh
FROM python:3.9

WORKDIR /app

COPY . /app

ENV FLASK_APP=app/main.py

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
```

Build Docker image.

```sh
docker build -t my_flask_app .
```

##### 2.1 Run a docker container with limits.

Create a new branch to work on.
```sh
docker run -m 512m --cpus=2 -p 5000:5000 -it my_flask_app
```

#### 3. Attach the volume to the container and enter the container. 

Create and run a container with a mounted volume.
```sh
docker volume create web
docker run -p 5000:5000 -v web:/app/log my_flask_app
```

Enter the container.
```sh
docker exec -it CONTAINER ID /bin/bash
```

#### 4. Run any docker compose file from any github and start a SQL database based on your own docker-compose with a web application from 1st ticket.

Docker Compose file for Flask application.
```sh
version: '3.8'

services:
  web:
    build: .
    ports:
      - "5000:5000"
    volumes:
      - log_data:/app/log/
    environment:
      FLASK_ENV: development
      DATABASE_URL: postgres://user:password@db/mydatabase
    depends_on:
      - db

  db:
    image: postgres
    environment:
      POSTGRES_DB: mydatabase
      POSTGRES_USER: user
      POSTGRES_PASSWORD: password
    volumes:
      - db_data:/var/lib/postgresql/data

volumes:
  db_data:
  log_data:
```

Run Docker Compose.
```sh
docker compose up
```

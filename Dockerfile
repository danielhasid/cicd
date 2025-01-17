# Dockerfile,Image,Container

FROM python:3.10-slim
RUN apt-get update && apt-get install -y git
WORKDIR /wizary
COPY . /wizary
RUN git clone https://github.com/danielhasid/wizary_prod.git
WORKDIR /wizary
RUN pip install -r req.txt
WORKDIR /wizary/wizary_prod
CMD ["pytest"]
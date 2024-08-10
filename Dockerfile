# Dockerfile,Image,Container

FROM python:3.10-slim
RUN apt-get update && apt-get install -y git
WORKDIR /
RUN git clone https://github.com/danielhasid/wizary_prod.git
RUN pip install --no-cache-dir -r requirements.txt
CMD ["pytest", "-m", "qa1"]

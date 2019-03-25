FROM python:3
MAINTAINER Anastasiia Khaburska "a.khaburska@ucu.edu.ua"
#RUN apt-get update -y
#RUN apt-get install -y python-pip python-dev build-essential
COPY ./web /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python3"]
CMD ["load_service.py"]

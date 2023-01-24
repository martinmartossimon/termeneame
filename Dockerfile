FROM python:3.9-alpine
RUN mkdir /app
RUN apk add --no-cache firefox
ADD termeneame_docker /app
ADD requirements.txt /app

#Varia segun arquitectura
ADD ./arm64/geckodriver /usr/bin
#ADD ./amd64/geckodriver /usr/bin

RUN pip3 install -r /app/requirements.txt
CMD ["python", "/app/termeneame_docker"]

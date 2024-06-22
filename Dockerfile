FROM docker.arvancloud.ir/python:3.10-alpine3.20
ENV DJANGO_SECRET_KEY "django-insecure-62bbbp)9q7np_&s#xqfcaqb@%flmx!n$au&a*cz57^)=wqcf1="
WORKDIR /app
COPY requirements.txt .
EXPOSE 8000
RUN pip3 install -r requirements.txt
COPY . .

RUN ["chmod" ,"u+x" ,"entery.sh"]

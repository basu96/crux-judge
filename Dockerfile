FROM ubuntu:18.04
ADD / /root/home/cruxjudge/

RUN ["apt", "update"]
RUN ["apt", "install", "-y", "apt-utils"]
RUN ["apt", "install", "-y", "git", "sudo", "libseccomp2", "python3", "python3-pip", "nginx", "nano"]
RUN ["pip3", "install", "Django==1.11.2", "uwsgi", "django-ipware", "psycopg2"]

EXPOSE 8000 5432

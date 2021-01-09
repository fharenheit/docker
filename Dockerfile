FROM openjdk:8
RUN mkdir /opt/app
COPY demo-0.0.1-SNAPSHOT.jar /opt/app
COPY demo.service /etc/systemd/system/
WORKDIR /opt/app
EXPOSE 8080
ENTRYPOINT systemctl start demo.service
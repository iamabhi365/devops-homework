FROM openjdk:18-jdk-alpine3.14

RUN apk add --no-cache tini

COPY ./target/demo-0.0.1-SNAPSHOT.jar devops-homework-app.jar
COPY crontab.txt /tmp/devops-homework-cronjob
COPY envarcheck.sh /opt/envarcheck.sh
RUN chmod 755 /opt/envarcheck.sh
RUN crontab /tmp/devops-homework-cronjob \
    && rm -rf /tmp/devops-homework-cronjob

ENV TASK_NAME=devops-homework

EXPOSE 80

CMD ["java","-jar","devops-homework-app.jar"]

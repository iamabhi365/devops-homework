FROM openjdk:18-jdk-alpine3.14

RUN apk add --no-cache tini

COPY */target/demo-0.0.1-SNAPSHOT.jar devops-homeowrk-app.jar
COPY crontab.txt /tmp/devops-homeowrk-cronjob
COPY envarcheck.sh /opt/envarcheck.sh
RUN chmod 755 /opt/envarcheck.sh
RUN crontab /tmp/devops-homeowrk-cronjob \
    && rm -rf /tmp/devops-homeowrk-cronjob

ENV TASK_NAME=devops-homework

EXPOSE 8080

CMD ["java","-jar","devops-homeowrk-app.jar"]

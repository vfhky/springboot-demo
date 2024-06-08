FROM openjdk:8

ARG test_arg="default_arg"

ENV WORK_PATH=/data/webapps/

ENV RUN_LOG=/data/webapps/logs/

ENV BUILD_ARG=$test_arg

ENV JAR_NAME=demo-0.0.1-SNAPSHOT.jar

ENV CODE_DIR=${WORK_PATH}

WORKDIR ${WORK_PATH}


ADD ./target ${WORK_PATH}

ADD ./script/run.sh ${WORK_PATH}/run.sh

EXPOSE 8888

ENTRYPOINT ["/bin/bash", "/data/webapps/run.sh"]

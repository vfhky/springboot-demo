#!/bin/bash

mkdir -p ${RUN_LOG}

echo  "传入的参数为：${BUILD_ARG}"

nohup java -Xms128m -Xmx128m -Djava.security.egd=file:/dev/./urandom -server -jar ${WORK_PATH}${JAR_NAME} -Djava.security.egd=file:/dev/./urandom  >> ${RUN_LOG}/run.log  2>&1 &

tail -f ${RUN_LOG}/run.log
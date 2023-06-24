#!/bin/bash

# Set variables
APP_NAME=demo-0.0.1-SNAPSHOT.jar

# 현재 실행중인 서버가 있으면 잡아서 종료 시킵니다.
CURRENT_PID=$(pgrep -f $APP_NAME)
if [ -z $CURRENT_PID ]
then
  echo ">>>> java process not found"
# Terminate the "demo" process if it is running
else
  echo "Terminating the 'demo' process if running..."
  pkill -f $APP_NAME
  sleep 45
fi

# Execute the Java JAR file with nohup
echo "Executing the Java JAR file with nohup..."
#nohup java -jar ~/devrun/demo.jar > ~/devrun/demo.log 2>&1 &
#Java 프로세스의 출력은 > ~/devrun/demo.log 2>&1 &를 사용하여 ~/devrun/demo.log로 리디렉션됩니다. 필요에 따라 파일 경로와 이름을 조정합니다.
nohup java -jar ~/devrun/$APP_NAME &

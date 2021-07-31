#!/bin/bash

## 進入指定的 container

echo -e "\n\n *** 進入 DOCKER CONTAINER *** \n"

docker ps

read -p "輸入要進入的 CONTAINER NAME 或 CONTAINER ID: " name      # 提示使用者輸入

echo "\n 即將進入：${name}\n\n"

docker exec -it ${name} /bin/bash
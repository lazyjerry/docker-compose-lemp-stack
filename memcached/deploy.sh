#!/bin/bash

## 配置啟動

cd ./

echo "*************"
date
pwd
docker network create jerry-network || true
echo "*************"

# 檢查鎖定檔案
if [ -f "./.env" ]; then
  echo ".env 檔案存在\n"
else
  echo ".env 檔案不存在"
  exit 1
fi

LOCK_FILE='./deploy.lock';

# 檢查鎖定檔案
if [ -f $LOCK_FILE ]; then
  echo "LOCK 檔案存在\n"
  exit 1
fi

echo "*************"

echo "檢查結束"

# cat ./docker-compose.yml

echo "*************"
echo "gogogo"
echo "gogo"
echo "go"
echo "*************"

# docker-compose up
# docker-compose -f  docker-compose.yml -f docker-compose.override.yml up -d
docker-compose up -d


# # 建立 lock file
touch $LOCK_FILE

# 檢查鎖定檔案是否成功被建立
if [ ! -f $LOCK_FILE ]; then
  echo "無法創建檔案"
  exit 1
fi


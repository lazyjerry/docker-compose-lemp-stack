#!/bin/bash

## 重新啟動不添加任何設定

cd ./

echo "*************"
date
pwd
echo "*************"

echo "*** 重啟 ***"

echo "*************"

# 檢查鎖定檔案
if [ -f "./deploy.lock" ]; then
  echo "準備重啟\n"
else
  echo "尚未建置過"
  exit 1
fi

# docker-compose up
docker-compose up -d



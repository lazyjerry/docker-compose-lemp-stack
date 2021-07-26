#!/bin/bash

cd ./

echo "*************"
date
pwd
docker network create jerry-network || true
echo "*************"


LOCK_FILE='./deploy.lock';

# 檢查鎖定檔案
if [ -f $LOCK_FILE ]; then
  echo "LOCK 檔案存在"
  exit 1
fi

# # 建立 lock file
# touch $LOCK_FILE

# # 檢查鎖定檔案是否成功被建立
# if [ ! -f $LOCK_FILE ]; then
#   echo "無法串件檔案"
#   exit 1
# fi

echo "*************"

echo "檢查結束"

cat ./docker-compose.yml

echo "*************"
echo "copy file"
chmod 755 ./config/mysql/custom.cnf
cp ./config/mysql/custom.cnf ./docker/build_file/mysql/zzz_custom.cnf

chmod -R 755 ./app/
rm -rf ./mysql/*
rm -rf ./log/mysql/*
rm -rf ./log/nginx/*
rm -f ./._*

echo "*************"
echo "gogogo"
echo "gogo"
echo "go"
echo "*************"

# docker-compose up
#docker-compose up -d



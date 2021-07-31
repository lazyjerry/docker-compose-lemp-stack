#!/bin/bash

## 顯示目前 container 狀態

docker ps | awk 'NR>1 {print $NF}'| xargs docker stats
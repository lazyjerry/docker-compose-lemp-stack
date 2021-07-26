### Fork by https://github.com/stevenliebregt/docker-compose-lemp-stack
### PHP 設定參考（docker-php-extension-installer）： https://github.com/mlocati/docker-php-extension-installer


# Docker Compose LEMP Stack

This repository contains a little `docker-compose` configuration to start a `LEMP (Linux, Nginx, MariaDB, PHP)` stack.

## Details

1. 可以從 .env 調整 PHP 版本
1. 可以從 mysql.Dockerfile 調整 MYSQL 版本


## Configuration
1. 複製設定檔案 `cp .env.sample .env`
1. 修改 `.env` 裡面的 `APP_NAME`  `MYSQL_ROOT_PASSWORD` 和 `PHP_VERSION` 等參數。 `PHP_VERSION` 在 docker 中 Dockerfile 可以設定，目前有 pure \ 73 \ 80 三個版本可選， pure 使用 PHP 8.0 ，差異在沒有安裝一堆奇怪的擴充
1. 在 ./config/mysql 中選擇適合的 mysql 配置，修改檔案名稱把要的那個 disable 去掉，記得開一個就好，或是可以開一個自己喜歡的 .cnf 檔案
1. 在 ./config/nginx 中配置需要 nginx 設定
1. 執行 `sh deploy.sh` 



## Usage

##### Start the server.

進入資料夾，依照設定，執行 `sh deploy.sh` 
如果要重新安裝一次，刪除掉 containers/Apps 後，記得在資料夾中刪除 `deploy.lock` 檔案，才能重新執行 `sh deploy.sh`

## Entering the containers

You can use the following command to enter a container:

Where `{CONTAINER_NAME}` is one of:

`docker exec -ti {CONTAINER_NAME} /bin/bash`

* `{APP_NAME}-php`
* `{APP_NAME}-nginx`
* `{APP_NAME}-mariadb`

## docker-compose command

| 參數                                                                                                                                                    | 範例 / 說明                                      |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------- |
| ps                                                                                                                                                    | docker-compose ps                            |
| 查看Container的狀態                                                                                                                                        |
| stop                                                                                                                                                  | docker-compose stop                          |
| 停止Container，但不會移除。可以用docker-compose start再重新啟動                                                                                                        |
| start                                                                                                                                                 | docker-compose start                         |
| 啟動Container，可搭配docker-compose stop使用                                                                                                                  |
| restart                                                                                                                                               | docker-compose restart                       |
| 重新啟動Container                                                                                                                                         |
| down                                                                                                                                                  | docker-compose down / docker-compose down -v |
| 會把Container、Netwrok等移除，通常和docker-compose up搭配。參數\-v會把Compose檔中所建立的volume刪除                                                                            |
| up                                                                                                                                                    | docker-compose up / docker-compose up -d     |
| 建立、執行Network與Container，通常和docker-compose down搭配，習慣上會再加一個\-d的參數，讓它在背景執行                                                                                |
| logs                                                                                                                                                  | docker-compose logs / docker-compose logs -f |
| 查看Service輸出的日誌，可以加\-f來持續輸出Log，或者使用加 –tail=數字，來指定輸出的Log行數                                                                                              |
| rm                                                                                                                                                    | docker-compose rm / docker-compose rm -v     |
| 刪除「已停止」的Container，若加上\-v後，則會把此Container相關的Volume一併刪除                                                                                                  |
| exec                                                                                                                                                  | docker-compose exec < service name> bash     |
| 和docker exec的差不多，可以進入容器內執行相關指令與操作，例如以本文的官方範例來看，你可以執行 docker-compose exec db bash進入db這個Service的容器內，如果你是用docker指令的話，則可以使用docker exec -it 容器ID/Name bash |

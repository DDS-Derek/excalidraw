#!/bin/sh

if [ ! -f "/app/web/index.html" ]; then
 echo -e "\033[36m文件不存在,正在创建... \033[0m"
 mv /opt/web/* /app/web
 echo "文件创建成功"
else
 echo "文件存在"
 rm -rf /opt/web
fi
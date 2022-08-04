#!/bin/sh

<<<<<<< Updated upstream
<<<<<<<< Updated upstream:shell/020-install.sh
=======
>>>>>>> Stashed changes
if [ ! -f "/app/web/index.html" ]; then
 echo -e "\033[36m文件不存在,正在创建... \033[0m"
 mv /opt/web/* /app/web
 echo "文件创建成功"
else
<<<<<<< Updated upstream
 echo "文件存在"
 rm -rf /opt/web
fi
========


chown -R www:www /app/web
chmod 755 /app/web

echo -e "\033[36m启动完成 \033[0m"
nginx -g "daemon off;"
>>>>>>>> Stashed changes:start.sh
=======
 echo "config.guest.php文件存在"
 rm -rf /opt/web
fi
>>>>>>> Stashed changes

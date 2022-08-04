#!/bin/sh

# 设置时区
if [ ! -f "/tz.lock" ]; then
 echo -e "\033[34m设置时区... \033[0m"
 sh /shell/010-tz.sh
fi

# 设置PUID PGID
echo -e "\033[34m设置PUID PGID... \033[0m"
sh /shell/011-adduser.sh

# 安装
<<<<<<< Updated upstream
echo -e "\033[34m安装... \033[0m"
sh /shell/020-install.sh

# 权限
echo -e "\033[34m给予权限... \033[0m"
sh /shell/030-permission.sh

=======
sh /shell/020-install.sh

>>>>>>> Stashed changes
# 启动nginx
echo -e "\033[34mNginx启动 \033[0m"
sh /shell/040-start.sh
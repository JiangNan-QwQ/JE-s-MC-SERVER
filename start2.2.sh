#! /bin/bash
if [ `whoami` = "root" ];then
	echo "root用户，即将开始执行！"
	echo "bug反馈加QQ1706491377"
	echo "B站搜爱做视频のJack_Eason"
	echo "最终解释权归B站爱做视频のJack_Eason所有"
else
	echo "非root用户,请在root下运行！"
	echo "bug反馈加QQ1706491377"
	echo "B站搜爱做视频のJack_Eason"
	echo "最终解释权归B站爱做视频のJack_Eason所有"
exit
fi

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="B站JE"
TITLE="MADE BY JE"
MENU="请选择要执行的操作"
 
OPTIONS=(1 "安装/启动"
         2 "卸载"
         3 "退出")
 
CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)
 
clear
case $CHOICE in
        1)
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="B站JE"
TITLE="安装/启动服务器"
MENU="关正版验证需要关并启动两次服务器"
 
OPTIONS=(1 "JE1.20.1 BE1.20.3X核心F"
         2 "JE1.20.2 BE1.20.5X核心F"
         3 "退出")
 
CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)
 
clear
case $CHOICE in
        1)
if [ -e "/root/MC/start.txt" ];then
sed -i 's/eula=false/eula=true/g' /root/MC/eula.txt
sed -i 's/auth-type: online/auth-type: offline/g' /root/MC/config/Geyser-Fabric/config.yml
sed -i 's/online-mode=true/online-mode=false/g' /root/MC/server.properties
                if [ -e "/root/MC/mods/fabric-api-0.92.2+1.20.1.jar" ];then
                         echo "此文件已经准备好"
                else
                         echo "此文件未准备，正在准备"
                         mv fabric-api-0.92.2+1.20.1.jar /root/MC/mods/
                         echo "文件已经准备好"
                fi
                if [ -e "/root/MC/mods/geyser-fabric-2.2.0-SNAPSHOT+build.317.jar" ];then
                         echo "此文件已经准备好"
                else
                         echo "此文件未准备，正在准备"
                         mv geyser-fabric-2.2.0-SNAPSHOT+build.317.jar /root/MC/mods/
                         echo "文件已经准备好"
                fi
else
                mkdir MC
                touch start.txt
                mv start.txt /root/MC/start.txt
                echo "正在开始下载服务端"
                wget https://meta.fabricmc.net/v2/versions/loader/1.20.1/0.15.11/1.0.1/server/jar
                mv jar /root/MC/server.jar
                echo "正在开始下载Geyser"
                wget https://cdn.modrinth.com/data/wKkoqHrH/versions/sxF4OIVL/geyser-fabric-2.2.0-SNAPSHOT%2Bbuild.317.jar
                echo "正在开始下载Fabric API"
                wget https://cdn.modrinth.com/data/P7dR8mSH/versions/P7uGFii0/fabric-api-0.92.2%2B1.20.1.jar
                echo "即将启动服务器"
fi
echo "正在验证java是否安装"
java -version
if [ $? -eq 0 ]; then
                echo "Java已经安装，正在启动服务器"
                	echo "bug反馈加QQ1706491377"
	echo "B站搜爱做视频のJack_Eason"
	echo "最终解释权归B站爱做视频のJack_Eason所有"
                cd /root/MC/
                java -jar server.jar nogui
else
                echo "Java没有安装，正在安装，安装完成后将启动服务器"
                	echo "bug反馈加QQ1706491377"
	echo "B站搜爱做视频のJack_Eason"
	echo "最终解释权归B站爱做视频のJack_Eason所有"
                sudo apt update
                sudo apt install openjdk-17-jdk
                cd /root/MC/
                java -jar server.jar nogui
                fi
            ;;
        2)
           if [ -e "/root/MC/start.txt" ];then
           sed -i 's/eula=false/eula=true/g' /root/MC/eula.txt
sed -i 's/auth-type: online/auth-type: offline/g' /root/MC/config/Geyser-Fabric/config.yml
sed -i 's/online-mode=true/online-mode=false/g' /root/MC/server.properties
                if [ -e "/root/MC/mods/fabric-api-0.91.6+1.20.2.jar" ];then
                         echo "此文件已经准备好"
                else
                         echo "此文件未准备，正在准备"
                         mv fabric-api-0.91.6+1.20.2.jar /root/MC/mods/
                         echo "文件已经准备好"
                fi
                if [ -e "/root/MC/mods/geyser-fabric-2.2.0-SNAPSHOT+build.393.jar" ];then
                         echo "此文件已经准备好"
                else
                         echo "此文件未准备，正在准备"
                         mv geyser-fabric-2.2.0-SNAPSHOT+build.393.jar /root/MC/mods/
                         echo "文件已经准备好"
                fi
else
                touch start.txt
                mkdir MC
                mv start.txt /root/MC/start.txt
                echo "正在开始下载服务端"
                wget https://meta.fabricmc.net/v2/versions/loader/1.20.2/0.15.11/1.0.1/server/jar
                mv jar /root/MC/server.jar
                echo "正在开始下载Geyser"
                wget https://cdn.modrinth.com/data/wKkoqHrH/versions/e8NbdxCH/geyser-fabric-2.2.0-SNAPSHOT%2Bbuild.393.jar
                echo "正在开始下载Fabric API"
                wget https://cdn.modrinth.com/data/P7dR8mSH/versions/8GVp7wDk/fabric-api-0.91.6%2B1.20.2.jar
                echo "即将启动服务器"
fi
echo "正在验证java是否安装"
java -version
if [ $? -eq 0 ]; then

                echo "Java已经安装，正在启动服务器"
                	echo "bug反馈加QQ1706491377"
	echo "B站搜爱做视频のJack_Eason"
	echo "最终解释权归B站爱做视频のJack_Eason所有"
                cd /root/MC/
                java -jar server.jar nogui
                else
                echo "Java没有安装，正在安装，安装完成后将启动服务器"
                	echo "bug反馈加QQ1706491377"
	echo "B站搜爱做视频のJack_Eason"
	echo "最终解释权归B站爱做视频のJack_Eason所有"
                sudo apt update
                sudo apt install openjdk-17-jdk
                cd /root/MC/
            java -jar server.jar nogui
            fi
            ;;
        3)
            exit
            ;;
esac
            ;;
        2)
            rm -r MC
            echo "已经成功删除"
            ;;
        3)
            exit
            ;;
esac
#bug反馈加QQ1706491377
#B站搜爱做视频のJack_Eason
#最终解释权归B站爱做视频のJack_Eason所有
#更新内容：增加了自动关闭正版验证和协议自动同意
#! /bin/bash
if [ `whoami` = "root" ];then
	echo "root用户，即将开始执行！"
	echo "bug反馈加QQ1706491377"
	echo "B站搜爱做视频のJack_Eason"
	echo "最终解释权归B站爱做视频のJack_Eason所有"
	sleep 1
else
	echo "非root用户,请在root用户下运行！"
	echo "bug反馈加QQ1706491377"
	echo "B站搜爱做视频のJack_Eason"
	echo "最终解释权归B站爱做视频のJack_Eason所有"
	sleep 1
exit
fi

ab() {
			*)
			echo "按回车返回"
			break
			}
#定义进行其他操作时断点返回函数
breakpoint() {
echo "真的要继续吗，如果继续您将会永久失去本服务器(回车确认)"
		read -r
		}
#定义删除时断点函数
menu() {
CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)
				}
menu-2() {
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
}
#定义dialog菜单函数
Confirm() {
java_version=$(java -version 2>&1 | sed '1!d' | sed -e 's/"//g' | awk '{print $3}')
v=${java_version%%.*}
echo "Java版本为$v"
sleep 2
menu-2
BACKTITLE="B站JE"
TITLE="确认Java版本"
MENU="确认Java版本"
 
OPTIONS=(1 "Java版本为21及以上"
         2 "Java版本为21以下"
            3 "退出")
 
menu

clear
}
#定义确认Java版本的函数
download() {
echo "Java没有安装，正在安装，安装完成后将启动服务器"
                	echo "bug反馈加QQ1706491377"
	echo "B站搜爱做视频のJack_Eason"
	echo "最终解释权归B站爱做视频のJack_Eason所有"
                sudo apt update
                sudo apt install openjdk-21-jdk
                }
#定义安装Java的函数
while true; do
menu-2
BACKTITLE="B站JE"
TITLE="MADE BY JE"
MENU="请选择要执行的操作"
 
OPTIONS=(1 "安装"
         2 "启动"
         3 "卸载"
         4 "退出")
 
menu
 
clear
case $CHOICE in
        1)
			while true; do
menu-2
BACKTITLE="B站JE"
TITLE="安装"
MENU="选择核心"
 
OPTIONS=(1 "Fabric核心"
         2 "Paper核心"
         3 "Spigot核心"
         4 "退出"
		 cd.. "返回上级")
 
menu
 
clear
case $CHOICE in
        1)
        echo "**请在五秒等待期间认真阅读一下下面的文字**
bug反馈加QQ1706491377
B站搜爱做视频のJack_Eason
最终解释权归B站爱做视频のJack_Eason所有
Fabric核心需要完整开机并关机两次才可配置完成，此时方可进入服务器，以后会进一步优化"
sleep 5
	while true; do
menu-2
BACKTITLE="B站JE"
TITLE="安装"
MENU="选择版本"
 
OPTIONS=(1 "JE1.20.1+BE1.20.3"
         2 "JE1.20.2+BE1.20.5"
         3 "退出"
		 cd.. "返回上级")
 
menu
 
clear
case $CHOICE in
        1)
if [ -e "/root/Fabric-MC-1.20.1/start.txt" ];then
sed -i 's/eula=false/eula=true/g' /root/Fabric-MC-1.20.1/eula.txt
sed -i 's/auth-type: online/auth-type: offline/g' /root/Fabric-MC-1.20.1/plugins/Geyser-Fabric/config.yml
sed -i 's/online-mode=true/online-mode=false/g' /root/Fabric-MC-1.20.1/server.properties
                if [ -e "/root/Fabric-MC-1.20.1/mods/fabric-api-0.92.2+1.20.1.jar" ];then
                         echo "此文件已经准备好"
                else
                         echo "此文件未准备，正在准备"
                         mv fabric-api-0.92.2+1.20.1.jar /root/Fabric-MC-1.20.1/mods/
                         echo "文件已经准备好"
                fi
                if [ -e "/root/Fabric-MC1.20.1/mods/geyser-fabric-2.2.0-SNAPSHOT+build.317.jar" ];then
                         echo "此文件已经准备好"
                else
                         echo "此文件未准备，正在准备"
                         mv geyser-fabric-2.2.0-SNAPSHOT+build.317.jar /root/Fabric-MC-1.20.1/mods/
                         echo "文件已经准备好"
                fi
else
                mkdir Fabric-MC-1.20.1
                touch start.txt
                mv start.txt /root/Fabric-MC-1.20.1/start.txt
                echo "正在开始下载服务端"
                wget https://meta.fabricmc.net/v2/versions/loader/1.20.1/0.15.11/1.0.1/server/jar
                mv jar /root/Fabric-MC-1.20.1/server.jar
                echo "正在开始下载Geyser"
                wget https://cdn.modrinth.com/data/wKkoqHrH/versions/sxF4OIVL/geyser-fabric-2.2.0-SNAPSHOT%2Bbuild.317.jar
                echo "正在开始下载Fabric API"
                wget https://cdn.modrinth.com/data/P7dR8mSH/versions/P7uGFii0/fabric-api-0.92.2%2B1.20.1.jar
                echo "安装完成！！(doge"
fi
            sleep 1
            break
            ;;
       2)
           if [ -e "/root/Fabric-MC-1.20.2/start.txt" ];then
           sed -i 's/eula=false/eula=true/g' /root/Fabric-MC-1.20.2/eula.txt
sed -i 's/auth-type: online/auth-type: offline/g' /root/Fabric-MC-1.20.2/config/Geyser-Fabric/config.yml
sed -i 's/online-mode=true/online-mode=false/g' /root/Fabric-MC-1.20.2/server.properties
                if [ -e "/root/Fabric-MC-1.20.2/mods/fabric-api-0.91.6+1.20.2.jar" ];then
                         echo "此文件已经准备好"
                else
                         echo "此文件未准备，正在准备"
                         mv fabric-api-0.91.6+1.20.2.jar /root/Fabric-MC-1.20.2/mods/
                         echo "文件已经准备好"
                fi
                if [ -e "/root/Fabric-MC-1.20.2/mods/geyser-fabric-2.2.0-SNAPSHOT+build.393.jar" ];then
                         echo "此文件已经准备好"
                else
                         echo "此文件未准备，正在准备"
                         mv geyser-fabric-2.2.0-SNAPSHOT+build.393.jar /root/Fabric-MC-1.20.2/mods/
                         echo "文件已经准备好"
                fi
else
                touch start.txt
                mkdir Fabric-MC-1.20.2
                mv start.txt /root/Fabric-MC-1.20.2/start.txt
                echo "正在开始下载服务端"
                wget https://meta.fabricmc.net/v2/versions/loader/1.20.2/0.15.11/1.0.1/server/jar
                mv jar /root/Fabric-MC-1.20.2/server.jar
                echo "正在开始下载Geyser"
                wget https://cdn.modrinth.com/data/wKkoqHrH/versions/e8NbdxCH/geyser-fabric-2.2.0-SNAPSHOT%2Bbuild.393.jar
                echo "正在开始下载Fabric API"
                wget https://cdn.modrinth.com/data/P7dR8mSH/versions/8GVp7wDk/fabric-api-0.91.6%2B1.20.2.jar
                echo "安装完成！！(doge"
fi
sleep 1
break
;;
        3)
            exit
            ;;
		cd..)
		break
		;;
		ab
		;;
esac
done
            ;;
        2)
        echo "**请在五秒等待期间认真阅读一下下面的文字**
bug反馈加QQ1706491377
B站搜爱做视频のJack_Eason
最终解释权归B站爱做视频のJack_Eason所有
Paper核心需要完整开机并关机三次才可配置完成，此时方可进入服务器，以后会进一步优化"
sleep 5
	while true; do
menu-2
BACKTITLE="B站JE"
TITLE="安装"
MENU="选择版本"
 
OPTIONS=(1 "JE1.21+BE1.21"
         2 "退出"
		 cd.. "返回上级")
 
menu

clear
case $CHOICE in
1)
if [ -e "/root/Paper-MC-1.21/start.txt" ];then
sed -i 's/eula=false/eula=true/g' /root/Paper-MC-1.21/eula.txt
sed -i 's/auth-type: online/auth-type: offline/g' /root/Paper-MC-1.21/plugins/Geyser-Spigot/config.yml
sed -i 's/online-mode=true/online-mode=false/g' /root/Paper-MC-1.21/server.properties
                if [ -e "/root/Paper-MC-1.21/plugins/Geyser-Spigot.jar" ];then
                         echo "此文件已经准备好"
                else
                         echo "此文件未准备，正在准备"
                         mv Geyser-Spigot.jar /root/Paper-MC-1.21/plugins/
                         echo "文件已经准备好"
                fi
else
                mkdir Paper-MC-1.21
                touch start.txt
                mv start.txt /root/Paper-MC-1.21/start.txt
                echo "正在开始下载服务端"
                wget https://api.papermc.io/v2/projects/paper/versions/1.21/builds/124/downloads/paper-1.21-124.jar
                mv paper-1.21-124.jar /root/MC/server.jar
                echo "正在开始下载Geyser"
                wget https://cdn.modrinth.com/data/wKkoqHrH/versions/F0l0xvLQ/Geyser-Spigot.jar
                echo "安装完成！！(doge"
fi
sleep 1
break
;;
      2)
           exit
            ;;
	  cd..)
	  break
	  ;;
	 ab
	  ;;
esac
done
;;
3)
echo "**请在五秒等待期间认真阅读一下下面的文字**
bug反馈加QQ1706491377
B站搜爱做视频のJack_Eason
最终解释权归B站爱做视频のJack_Eason所有
Spigot核心需要完整开机并关机三次才可配置完成，此时方可进入服务器，以后会进一步优化"
sleep 5
	while true; do
menu-2
BACKTITLE="B站JE"
TITLE="安装"
MENU="选择版本"
 
OPTIONS=(1 "JE1.21+BE1.21"
         2 "退出"
		 cd.. "返回上级")
 
menu

clear
case $CHOICE in
1)
if [ -e "/root/Spigot-MC-1.21/start.txt" ];then
sed -i 's/eula=false/eula=true/g' /root/Spigot-MC-1.21/eula.txt
sed -i 's/auth-type: online/auth-type: offline/g' /root/Spigot-MC-1.21/plugins/Geyser-Spigot/config.yml
sed -i 's/online-mode=true/online-mode=false/g' /root/Spigot-MC-1.21/server.properties
                if [ -e "/root/Spigot-MC-1.21/plugins/Geyser-Spigot.jar" ];then
                         echo "此文件已经准备好"
                else
                         echo "此文件未准备，正在准备"
                         mv Geyser-Spigot.jar /root/Spigot-MC-1.21/plugins/
                         echo "文件已经准备好"
                fi
else
                mkdir Spigot-MC-1.21
                touch start.txt
                mv start.txt /root/Spigot-MC-1.21/start.txt
                echo "正在开始下载服务端"
                wget https://download.getbukkit.org/spigot/spigot-1.21.jar
                mv spigot-1.21.jar /root/Spigot-MC-1.21/server.jar
                echo "正在开始下载Geyser"
                wget https://cdn.modrinth.com/data/wKkoqHrH/versions/F0l0xvLQ/Geyser-Spigot.jar
                echo "安装完成！！(doge"
fi
sleep 1
break
;;
2)
exit
;;
cd..)
break
;;
ab
;;
esac
done
;;
4)
exit
;;
cd..)
break
;;
esac
done
;;
2)
	while true; do
menu-2
BACKTITLE="B站JE"
TITLE="启动"
MENU="选择核心"
 
OPTIONS=(1 "Fabric核心"
         2 "Paper核心"
         3 "Spigot核心"
         4 "退出"
		 cd.. "返回上级")
 
menu
 
clear
case $CHOICE in
        1)
		while true;do
		menu-2
		BACKTITLE="B站JE"
TITLE="确认启动版本"
MENU="确认启动版本"
 
OPTIONS=(1 "JE1.20.1"
         2 "JE1.20.2"
            3 "退出"
			cd.. "返回上级")
			menu
			clear
case $CHOICE in
        1)
		echo "正在验证java是否安装"
java -version
if [ $? -eq 0 ]; then

                echo "Java已经安装"
java_version=$(java -version 2>&1 | sed '1!d' | sed -e 's/"//g' | awk '{print $3}')
v=${java_version%%.*}
if [[ $v == *"21"* ]]; then
                	echo "bug反馈加QQ1706491377"
	echo "B站搜爱做视频のJack_Eason"
	echo "最终解释权归B站爱做视频のJack_Eason所有"
                cd /root/Fabric-MC-1.20.1/
                java -jar server.jar nogui
else
Confirm
case $CHOICE in
1)
echo "bug反馈加QQ1706491377"
	echo "B站搜爱做视频のJack_Eason"
	echo "最终解释权归B站爱做视频のJack_Eason所有"
                cd /root/Fabric-MC-1.20.1/
                java -jar server.jar nogui
;;
2)
sudo apt update
                sudo apt install openjdk-21-jdk
                cd /root/Fabric-MC-1.20.1/
                java -jar server.jar nogui
;;
3)
exit
;;
esac
fi
                else
                download
                cd /root/Fabric-MC-1.20.1/
            java -jar server.jar nogui
            fi
            ;;
			2)
			echo "正在验证java是否安装"
java -version
if [ $? -eq 0 ]; then

                echo "Java已经安装"
java_version=$(java -version 2>&1 | sed '1!d' | sed -e 's/"//g' | awk '{print $3}')
v=${java_version%%.*}
if [[ $v == *"21"* ]]; then
                	echo "bug反馈加QQ1706491377"
	echo "B站搜爱做视频のJack_Eason"
	echo "最终解释权归B站爱做视频のJack_Eason所有"
                cd /root/Fabric-MC-1.20.2/
                java -jar server.jar nogui
else
Confirm
case $CHOICE in
1)
echo "bug反馈加QQ1706491377"
	echo "B站搜爱做视频のJack_Eason"
	echo "最终解释权归B站爱做视频のJack_Eason所有"
                cd /root/Fabric-MC-1.20.2/
                java -jar server.jar nogui
;;
2)
sudo apt update
                sudo apt install openjdk-21-jdk
                cd /root/Fabric-MC-1.20.2/
                java -jar server.jar nogui
;;
3)
exit
;;
esac
fi
                else
                download
                cd /root/Fabric-MC-1.20.2/
            java -jar server.jar nogui
            fi
            ;;
			3)
			exit
			;;
			cd..)
			break
			;;
			esac
			done
			;;
			
2)
while true;do
menu-2
BACKTITLE="B站JE"
TITLE="确认启动版本"
MENU="确认启动版本"
 
OPTIONS=(1 "JE1.21"
            2 "退出"
			cd.. "返回上级")
			menu
			clear
case $CHOICE in
        1)
echo "正在验证java是否安装"
java -version
if [ $? -eq 0 ]; then

                echo "Java已经安装"
java_version=$(java -version 2>&1 | sed '1!d' | sed -e 's/"//g' | awk '{print $3}')
v=${java_version%%.*}
if [[ $v == *"21"* ]]; then
                	echo "bug反馈加QQ1706491377"
	echo "B站搜爱做视频のJack_Eason"
	echo "最终解释权归B站爱做视频のJack_Eason所有"
                cd /root/Paper-MC-1.21/
                java -jar server.jar nogui
else
Confirm
case $CHOICE in
1)
echo "bug反馈加QQ1706491377"
	echo "B站搜爱做视频のJack_Eason"
	echo "最终解释权归B站爱做视频のJack_Eason所有"
                cd /root/Paper-MC-1.21/
                java -jar server.jar nogui
;;
2)
sudo apt update
                sudo apt install openjdk-21-jdk
                cd /root/Paper-MC-1.21/
                java -jar server.jar nogui
;;
3)
exit
;;
esac
fi
                else
                download
                cd /root/Paper-MC-1.21/
            java -jar server.jar nogui
            fi
            ;;
			2)
			exit
			;;
			cd..)
			break
			;;
ab
			;;
			esac
			done
			;;
3)
menu-2
BACKTITLE="B站JE"
TITLE="确认启动版本"
MENU="确认启动版本"
 
OPTIONS=(1 "JE1.21"
            2 "退出"
			cd.. "返回上级")
			menu
			clear
case $CHOICE in
        1)
echo "正在验证java是否安装"
java -version
if [ $? -eq 0 ]; then

                echo "Java已经安装"
java_version=$(java -version 2>&1 | sed '1!d' | sed -e 's/"//g' | awk '{print $3}')
v=${java_version%%.*}
if [[ $v == *"21"* ]]; then
                	echo "bug反馈加QQ1706491377"
	echo "B站搜爱做视频のJack_Eason"
	echo "最终解释权归B站爱做视频のJack_Eason所有"
                cd /root/Spigot-MC-1.21/
                java -jar server.jar nogui
else
Confirm
case $CHOICE in
1)
echo "bug反馈加QQ1706491377"
	echo "B站搜爱做视频のJack_Eason"
	echo "最终解释权归B站爱做视频のJack_Eason所有"
                cd /root/Spigot-MC-1.21/
                java -jar server.jar nogui
;;
2)
sudo apt update
                sudo apt install openjdk-21-jdk
                cd /root/Spigot-MC-1.21/
                java -jar server.jar nogui
;;
3)
exit
;;
esac
fi
                else
                download
                cd /root/Spigot-MC-1.21/
            java -jar server.jar nogui
            fi
            ;;
			2)
			exit
			;;
			cd..)
			break
			;;
			ab
			;;
			esac
			done
			;;
4)
exit
;;
cd..)
break
;;
ab
esac
done
;;
3)
	while true; do
            menu-2
BACKTITLE="B站JE"
TITLE="删除"
MENU="选择核心"
 
OPTIONS=(1 "删除Fabric"
         2 "删除Paper"
         3 "删除Spigot"
         4 "退出"
		 cd.. "返回上级")
 
menu
 
clear
case $CHOICE in
        1)
		while true; do
            menu-2
BACKTITLE="B站JE"
TITLE="删除"
MENU="选择核心"
 
OPTIONS=(1 "删除JE1.20.1"
         2 "删除JE1.20.2"
         3 "退出"
		 cd.. "返回上级")
 
menu
 
clear
case $CHOICE in
        1)
		breakpoint
		rm -r Fabric-MC-1.20.1
            echo "已经成功删除"
            sleep 1
		break
            ;;
			2)
			breakpoint
			rm -r Fabric-MC-1.20.2
            echo "已经成功删除"
            sleep 1
		break
            ;;
			3)
			exit
            ;;
			cd..)
			break
			;;
			ab
			;;
			esac
			done
			;;
			2)
			while true; do
            menu-2
BACKTITLE="B站JE"
TITLE="删除"
MENU="选择核心"
 
OPTIONS=(1 "删除JE1.21"
         2 "退出"
		 cd.. "返回上级")
 
menu
 
clear
case $CHOICE in
        1)
		breakpoint
		rm -r Paper-MC-1.21
		echo "已经成功删除"
		sleep 1
		break
		;;
		2)
		exit
		;;
		cd..)
		break
		;;
		ab
		;;
		esac
		done
		;;
		3)
		while true; do
            menu-2
BACKTITLE="B站JE"
TITLE="删除"
MENU="选择核心"
 
OPTIONS=(1 "删除JE1.21"
         2 "退出"
		 cd.. "返回上级")
 
menu
 
clear
case $CHOICE in
        1)
		breakpoint
		rm -r Spigot-MC-1.21
		echo "已经成功删除"
		sleep 1
		break
		;;
		2)
		exit
		;;
		cd..)
		break
		;;
		ab
		;;
		esac
		done
		;;
        4)
            exit
            ;;
            cd..)
            break
            ;;
           ab
            ;;
esac
done
;;
*)
exit
;;
esac
done
#bug反馈加QQ1706491377
#B站搜爱做视频のJack_Eason
#最终解释权归B站爱做视频のJack_Eason所有
#更新内容：增加了断点，修复了部分bug
#github：https://github.com/JiangNan-QwQ/JE-s-MC-SERVER
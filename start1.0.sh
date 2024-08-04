#! /bin/bash
if [ `whoami` = "root" ];then
	echo "root用户，即将开始执行！"
else
	echo "非root用户,请在root下运行！"
exit
fi
if [ -e "/root/start.txt" ];then
                if [ -e "/root/mods/fabric-api-0.92.2+1.20.1.jar" ];then
                         echo "此文件已经准备好"
                else
                         echo "此文件未准备，正在准备"
                         mv fabric-api-0.92.2+1.20.1.jar /root/mods/fabric-api-0.92.2+1.20.1.jar
                         echo "文件已经准备好"
                fi
                if [ -e "/root/mods/geyser-fabric-2.2.0-SNAPSHOT+build.317.jar" ];then
                         echo "此文件已经准备好"
                else
                         echo "此文件未准备，正在准备"
                         mv geyser-fabric-2.2.0-SNAPSHOT+build.317.jar /root/mods/geyser-fabric-2.2.0-SNAPSHOT+build.317.jar
                         echo "文件已经准备好"
                fi
else
                touch start.txt
                echo "正在开始下载服务端"
                wget https://meta.fabricmc.net/v2/versions/loader/1.20.1/0.15.11/1.0.1/server/jar
                mv jar server.jar
                echo "正在开始下载Geyser"
                wget https://cdn.modrinth.com/data/wKkoqHrH/versions/sxF4OIVL/geyser-fabric-2.2.0-SNAPSHOT%2Bbuild.317.jar
                echo "正在开始下载Fabric API"
                wget https://cdn.modrinth.com/data/P7dR8mSH/versions/P7uGFii0/fabric-api-0.92.2%2B1.20.1.jar
                echo "即将启动服务器，如果启动出现有EULA这个单词的句子时，请手动找到服务器目录中的eula.txt文件并把里面文字修改为eula=true,然后重新启动此脚本"
fi
echo "正在验证java是否安装"
java -version
if [ $? -eq 0 ]; then
    echo "Java已经安装，正在启动服务器"
    java -jar server.jar nogui
else
    echo "Java没有安装，正在安装，安装完成后将启动服务器"
    sudo apt update
    sudo apt install openjdk-17-jdk
    java -jar server.jar nogui
fi
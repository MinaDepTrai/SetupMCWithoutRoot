#!/bin/bash

# Tạo thư mục và di chuyển vào đó
mkdir -p server
cd server

# Tải xuống file Java 17
wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.tar.gz

# Giải nén file
tar -xvzf jdk-17_linux-x64_bin.tar.gz

# Thiết lập biến môi trường
export JAVA_HOME=$(pwd)/jdk-17
export PATH=$PATH:$JAVA_HOME/bin

# Kiểm tra phiên bản Java
java --version

# Chọn loại server cần tải
echo "Please select the type of Minecraft server you want to install:"
echo "1. PaperMC"
echo "2. Forge"
echo "3. Spigot"
echo "4. Velocity"
echo "5. Purpur"
echo "6. Vanilla"
read -p "Enter the number (1-6): " server_choice

# Tải xuống file server tương ứng
case $server_choice in
  1)
    wget https://api.papermc.io/v2/projects/paper/versions/1.20.6/builds/148/downloads/paper-1.20.6-148.jar -O server.jar
    ;;
  2)
    wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.20.6-37.0.0/forge-1.20.6-37.0.0-installer.jar -O forge-installer.jar
    java -jar forge-installer.jar --installServer
    mv forge-1.20.6-37.0.0-universal.jar server.jar
    ;;
  3)
    wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar -O BuildTools.jar
    java -jar BuildTools.jar --rev 1.20.6
    mv spigot-1.20.6.jar server.jar
    ;;
  4)
    wget https://versions.velocitypowered.com/download/1.1.0-SNAPSHOT-104.jar -O server.jar
    ;;
  5)
    wget https://api.purpurmc.org/v2/purpur/1.20.6/latest/download -O server.jar
    ;;
  6)
    wget https://launcher.mojang.com/v1/objects/c2deca4d2df9b9c1db14ae222d0465cf8e603498/server.jar -O server.jar
    ;;
  *)
    echo "Invalid choice. Exiting."
    exit 1
    ;;
esac

# Tạo file eula.txt và chấp nhận điều khoản
echo "eula=true" > eula.txt

# Chạy server lần đầu để tạo các file cấu hình
java -Xmx1024M -Xms1024M -jar server.jar nogui

echo "Server setup completed. You can start your server with the following command:"
echo "java -Xmx1024M -Xms1024M -jar server/server.jar nogui"

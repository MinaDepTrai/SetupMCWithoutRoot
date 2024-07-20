#!/bin/bash

# Chuyển vào thư mục server
cd server

# Yêu cầu người dùng nhập số RAM cần sử dụng
read -p "Enter the amount of RAM to allocate (in MB, default is 1024M): " ram

# Thiết lập biến RAM mặc định nếu người dùng không nhập
if [ -z "$ram" ]; then
  ram=1024
fi

# Thông báo về việc khởi động server
echo "Starting server with ${ram}M of RAM..."

# Chạy server với các tùy chọn JVM được tối ưu hóa
java -Dfile.encoding=UTF-8 -Xms${ram}M -Xmx${ram}M -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=100 -XX:+EnableDynamicAgentLoading -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=15 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=10 -XX:G1MixedGCLiveThresholdPercent=85 -XX:G1RSetUpdatingPauseTimePercent=1 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -XX:MinHeapFreeRatio=10 -XX:MaxHeapFreeRatio=20 -Dusing.aikars.flags=https://mcflags.emc.gs/ -Daikars.new.flags=true -Dlog4j2.formatMsgNoLookups=true -Duser.timezone="Asia/Ho_Chi_Minh" --add-modules=jdk.incubator.vector -DPaper.IgnoreJavaVersion=true -jar server.jar nogui

# Thông báo khi server đã được dừng lại
echo "Server has been stopped."

#!/bin/sh
# Pobierz aktualną datę i czas utworzenia kontenera
creation_time=$(date +"%Y-%m-%d %H:%M:%S")
# Pobierz ilość dostępnej pamięci RAM
available_mem=$(cat /proc/meminfo | awk '/MemAvailable/ {print $2}')
# Zapisz dane do pliku info.log
echo "Container creation time: ${creation_time}    Available memory: ${available_mem} kB" >> /logi/info.log
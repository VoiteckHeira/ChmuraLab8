#!/bin/sh
# data i czas utworzenia kontenera
czas_powstania=$(date +"%Y-%m-%d %H:%M:%S")
# ilość pamięci RAM
pamiec=$(cat /proc/meminfo | awk '/MemAvailable/ {print $2}')
# Zapisz dane do pliku info.log
echo "Czas powstania: ${czas_powstania}    Pamiec: ${pamiec} kB" >> /logi/info.log
# ChmuraLab8

![image](https://user-images.githubusercontent.com/91530837/236493900-0cb9353c-f0f3-410b-9ce5-c43071a6b57c.png)

![image](https://user-images.githubusercontent.com/91530837/236583968-599e7e0b-2a9f-45b2-8f99-2f9470053cb1.png)

![obraz](https://user-images.githubusercontent.com/91530837/236787788-9329ee63-adf0-4e43-960a-f87ba5ac90de.png)


<h4>Komenda do utworzenia obrazu <i>lab8docker</i></h4>
docker build -f Dockerfile --memory=512m -t lab8docker .

<h4>Komenda do utworzenia kontenera <i>limit512</i> uywajc obrazu <i>lab8docker</i></h4>
docker run -it --name limit512 --memory="512m" --mount source=RemoteVol,target=/logi lab8docker

<h4>jeśli chcemy wejść do kontenera używamy komendy uzywając obrazu alpine z podpiętym wolumenem</h4>
docker run -it --name limit512 --memory="512m" --mount source=RemoteVol,target=/logi alpine

Kiedy pojawi się znaczek zachęty #, użytwamy komend:
<i>ls</i>
<i>cd logi</i>
<i>ls</i>
<i>cat info.log</i>

aby wyjść należy użyć klawiszy ctrl+q i ctrl+p w przeciwnym razie kontener zostanie wyłączony

<h4>Komenda do sprawdzenia ilosci przydzielonej pamieci dla kontenera <i>limit512</i></h4>
docker inspect limit512 | grep Memory

<h4>Komenda do usuniecia kontenera</h4>
docker rm limit512
<h4>Komenda do usuniecia obrazu</h4>
docker rmi lab8docker


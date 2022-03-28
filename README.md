# unibo-08574-sistemi-operativi
Exercises for the University of Bologna Operating Systems course (a.y. 2021-22).

## Docker
Pull the image from the registry:
```bash
$ docker pull ghcr.io/foxyseta/unibo-93315-reti-di-calcolatori:main
```
Assuming you are using X on your host machine, use the following command to run
a new instance of the shell in a new container named `$NAME`:
```bash
$ docker run -it --name $NAME --privileged --net host -e DISPLAY \
  -v /tmp/.X11-unix ghcr.io/foxyseta/unibo-08574-sistemi-operativi:main \
  bash -c "xauth add $(xauth list); bash"
```
Open [µMPS3](https://github.com/virtualsquare/umps3) from the shell:
```bash
$ umps3
```
After exiting the shell, you can restart your `$NAME` container at any time
with:
```bash
$ docker start -ai $NAME
```

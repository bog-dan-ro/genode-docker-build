Simple docke file used to check genode build on debian 13 trixie

Create the docker image using:
```
$ docker build -t genode .
```

Build genode for riscv:
```
$ docker run -it --rm genode
#./build_genode.sh
```

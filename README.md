# docker-httpd
httpd in Docker

```bash
#first for fun run:
docker run -it --name=chanslor oraclelinux /bin/bash
exit or CTRL+D
docker rm chanslor
```

```bash
docker build -t chanslor/httpd:v1 .
docker run --name=web1 -p 8080:80 chanslor/httpd:v1
```

START IN BACKGROUND:
```bash
docker run --name=web1 --net=host -d -p 80:80 chanslor/httpd:v3

```

COMMANDS:
```bash
docker stop web1
docker start web1
docker logs -f web1

docker rm $(docker ps -a -q) #remove all non-running
docker rmi chanslor/httpd:v1

docker network ls
docker network inspect 968bd369039d
docker inspect -f '{{ .NetworkSettings.IPAddress }}' web1


```

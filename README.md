# A small docker image running didiwiki

## Base Docker Image
[Debian](https://hub.docker.com/_/debian) Buster (x64)

## Software
[didiwiki](http://didiwiki.wikidot.com/) - A small and simple WikiWikiWeb implementation

## Get the image from Docker Hub
```
docker pull fullaxx/didiwiki
```

## Run the image
Run the image on port 80
```
docker run -d -p 80:80 fullaxx/didiwiki
```
Run the image on localhost port 80
```
docker run -d -p 127.0.0.1:80:80 fullaxx/didiwiki
```
Run the image on localhost port 8080 saving wikidata to /srv/docker/didiwiki
```
docker run -d -p 127.0.0.1:8080:80 -v /srv/docker/didiwiki:/wiki fullaxx/didiwiki
```

## Build it locally using the github repository
```
docker build -t="fullaxx/didiwiki" github.com/Fullaxx/didiwiki
```

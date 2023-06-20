# nginx-config-setup

## Workaround NGINX and things to know

NGINX is open source software for web serving, reverse proxying, caching, load balancing, media streaming, and more

- Pull Image

```
docker pull nginx
```

- Setup container with name and port
  "-d" meaning detached which runs the container in the background

```
docker run -it --rm -d -p 8080:80 --name server-mgr nginx
```

- Container access bash

```
docker exec -it fc4f1fdbc2b4d44fb083301a837abddcaf1985778de7f28cb2ebbbcc02a36551 sh
```

NGINX cmds

Service cmds

```
service nginx start | stop
```

version and detailed version information

```
nginx -v | -V
```

Test configuration is ok or not

```
nginx -t | -T
```

nginx help

```
nginx -h
```

"-s" flag for signals to perform actions such as start/stop, restart

```
nginx -s stop
```

In docker with volumes you can map the local dir to img container

```
volumes:
      - ./html/:/usr/share/nginx/html #mapping the current html path to container path

```

Building img where we placed our file from current dir directly into the container dir read dockerfile

```
docker build -t webserver .
```

After the image is built with updating the container html file with our own we can create a new container out of it and run

```
>docker run -it --rm -d -p 8080:80 --name web webserver #where web is container name and webserver is image name from above
```

- Notes related to nginx
  You can access the images, containers with their file dir assuming linux inst from docker extension in vscode

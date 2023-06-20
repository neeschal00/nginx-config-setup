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

```
nginx -v
```

```
nginx -V
```

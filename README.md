# thrx-docker-ntopng-edge

### WIP: CURRENTLY NOT WORKING

## Reference:
```
https://github.com/ntop/docker-ntop
https://www.ntop.org/guides/nedge/get_started.html
```

## thrx-ntopng-edge

```
    docker run \ 
    --detach \
    --restart always \
    --net=host \
    --name thrx-ntopng-edge \
    -t -i -v \
    thrx/thrx-ntopng-edge 
```

## Advanced usage

### Build from source code

You can build the image also from source. To do this you have to clone the
[thrx-docker-ntopng](https://github.com/thrx-devops/thrx-docker-ntopng) repository from GitHub:

```
docker build --rm --no-cache -t thrx/thrx-ntopng .
```

### Bash shell inside container

If you need a shell inside the container you can run the following command:

```
docker exec -ti ntopng /bin/sh
```

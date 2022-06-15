# Starting Apache container with HTML and CSS form

```bash
docker run -it -d --name wowza-server --restart always --entrypoint /sbin/entrypoint.sh --env WSE_MGR_USER=wowza --env WSE_MGR_PASS=wowza --expose 1935/tcp --expose 8086/tcp --expose 8087/tcp --expose 8088/tcp --publish 1935:1935 --publish 8086:8086 --publish 8087:8087 --publish 8088:8088 wowzamedia/wowza-streaming-engine-linux:latest
```

---

## Accessing the container

```bash
docker exec -it wowza-server /bin/bash
```

---

## Accessing the form through the browser

```bash
http://localhost:8088
```

---

## Starting/Stopping the Container

```bash
docker start wowza-server
```

```bash
docker stop wowza-server
```

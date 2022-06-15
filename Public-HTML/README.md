# Starting Apache container with HTML and CSS form

```bash
docker run -d --name apache-container -p 8000:80 -v /Public-HTML/:/usr/local/apache2/htdocs/ httpd
```

---

## Accessing the container

```bash
docker exec -it apache-container /bin/bash
```

---

## Accessing the form through the browser

```bash
http://localhost:8000
```

---

## Starting/Stopping the Container

```bash
docker start apache-container
```

```bash
docker stop apache-container
```

---

## Allow/Disallow container to start automatically

```bash
docker update --restart=always <container-name>

docker update --restart=no <container-name>
```

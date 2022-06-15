## Environment architecture

| Aplication | Version |
| ---------- | ------- |
| Live       | 3.23.0  |
| MariaDB    | 10.5.16 |
| Postgres   | latest  |
| Jupyter    | latest  |

## Starting the environment

```shell
docker compose up --detach
```

```shell
docker start <container-name>
```

---

## Accessing the containers

```shell
docker exec -it <container-name> /bin/bash
```

## Accessing by browser

```shell
Live: http://localhost:8080
```

## Configuring live integrations

### PostgreSQL https://i.imgur.com/yQyJYuZ.png

### TCP Input https://i.imgur.com/X2zUhcw.png

---

## Accessing Jupyter

_To find the initial Jupyter credential, run the command below_.

```shell
docker logs <container-name>
```

_The initial credential is at the end of the log, copy and paste url in browser_.

### Log: https://i.imgur.com/QAokJWK.png

### Access: https://i.imgur.com/FcPWM8a.png

# docker files
## it might be...
this image use CentOS. So maybe you have to pull centos.
```
docker pull centos
```

## how to use

### make work directory in same direcotry with dockerfile
```
mkdir notebooks
```

### make container
```
docker-compose build
```

### start server
```
docker-compose up
```

### get token
when you typed the above command, get url and token like this.

```
    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://localhost:8888/?token=62d7803a61480e33cc98f61b69cfcff6c4a97b0839ef9fb6
```

plz copy after '?token=' so in this case:

```
62d7803a61480e33cc98f61b69cfcff6c4a97b0839ef9fb6
```

### access local server
plz access http://localhost for your browser.

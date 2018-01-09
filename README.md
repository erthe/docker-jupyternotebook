# docker files
## it might be...
this image use CentOS. So maybe you have to pull centos.
```
docker pull centos
```

## how to use

### create image
```
docker build -t dev-python:1 .
```

### run server
```
docker run -d --name python -p 8888:8888 dev-python:1
```

### access local server
plz access http://localhost:8888 for your browser.

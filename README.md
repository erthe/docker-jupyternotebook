# docker files
## it might be...
this image use CentOS. So maybe you have to pull centos.
```
docker pull centos
```

## how to use

### create image
```
docker build -t dev-jupyterlab:1 .
```

### make work directory in same direcotry with dockerfile
```
mkdir notebooks
```

### run server as first time
```
docker run -d --name jupyterlab -v `pwd`/notebooks:/opt/jupyter -p 80:8888 dev-jupyterlab:1
```

### start server
```
docker start jupyterlab
```

### stop server
```
docker stop jupyterlab
```

### access local server
plz access http://localhost for your browser.

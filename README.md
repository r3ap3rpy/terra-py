### Welcome

This repository is for a demo python app containerized and deployed with terraform on the local provider.

You need to have docker and terraform installed.

In order to build the docker image issue the following command.

``` bash
docker build -t terrapy:latest .
```

Then we can use terraform to do the rest.

``` bash
terraform init
terraform apply
```

Then you can check the container and hit the webapp.

``` bash
[r3ap3rpy@centos9 terra-py]$ docker ps
CONTAINER ID   IMAGE     COMMAND           CREATED         STATUS         PORTS                    NAMES
18392163a456   terrapy   "python app.py"   4 seconds ago   Up 3 seconds   0.0.0.0:8080->8080/tcp   terrapy
```

Let's query the route.

``` bash
[r3ap3rpy@centos9 terra-py]$ curl http://localhost:8080
Welcome to Python Container deployed with terraform!
```


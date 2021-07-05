# docker_nginx
First_assignment
# Docker Overview

Docker is an open platform for developing, shipping, and running applications.Docker enables you to separate your applications from your infrastructure so that you can deliver software quickly. Docker provides the ability to package & run an application in loosely isolated environment called a container.The isolation & security allow you to run many containers simultaneously on a given host. Containers are light weight & contain everything needed to run the application, so you do not need to rely on what is currently installed on the host.
Docker provides tooling  and a platform to manage the lifecycle of your containers:

  1. Develop your application & its supporting components using containers.
  2. The containers becomes the unit for distributing & testing your application.
  
# What can I use docker for?
  Docker streamlines the development lifecycle by allowing developers to work in  standardized environments using local containers.
  
# Docker Architecture:
Docker uses client-server architecture. The Docker client talks to the docker daemon, which does the heavy lifting of building, running, and distributing docker containers. The docker client & daemon can run on the system, or you can connect Docker client to a remote docker daemon.Both of them are communcate using REST API, over unix sockets or a network interface.

## Docker Daemon
  Dcoker daemon (dockerd) listens for Docker API requests and manage Docker objects such as images, containers,networks, and volumes. A daemon can also communicate with daemons to manage docker services.
  
## Docker Client
  Dcoker client is the primary way that many docker users interact with docker. when we use docker run, the client sends this command to dockerd, which caries them out.The docker command uses the Docker API. 
  
## Dcoker Registry
  Docker registry stores docker images.Docker hub is a public registry that anyone can use, and Docker is configured to look for images on Docker Hub by default.when we use docker pull or docker run command , the required images are pulled from our configured registry.docker push command used to push our configured image to registry.
  
## Docker Objects
  When you use docker, you are creating and using images, containers, networks, volumes, plugins, and other objects.
  
 ### Images:
  An image is a read-only template with instructions for creating a docker container.Often, an image is based on another image, with some additional customization. 
 ### Container
 A Container is a runnable instance of an image. You can create , start ,stop, moveor delete a container using a dcoker API.
## Docokerize Nginx in Ubuntu and Run a HTML page

### To build and this docker image, following steps required

```
git clone git@github.com:imrulkk69/DevOps_2106.git

cd /DevOps_2106/class_2

sudo docker build -t imrul/ubuntu-nginx .

sudo docker run -p 8080:80 -d imrul/ubuntu-nginx 


```
### To see all the built image in the system

```
sudo docker images
```

### To see all the containers created

```
sudo docker container ls 
```

### To stop the container 

```
sudo docker stop <container_id>
```

### To remove container 

```
sudo docker rm <container_id>

```

### To remove image

```
sudo docker rmi  <IMAGE>

```

### To access the shell of dockerized linux os 
```
sudo docker exec -it <container_id> /bin/bash
```

### What is `-t, --tty` while running `docker exec` ?

`-t, --tty` Allocate a pseudo-TTY

### What is `-i, --interactive` while running `docker exec` ? 
`-i, --interactive` Keep STDIN open even if not attached

If we only use `-t, --tty` in following command 

```
sudo docker run --tty <container_id> /bin/sh
```
we can not see anything if the shell after running any linux command. Console would not be interactive. 

If you use `-i, --interactive` along with `-t, --tty` then, we can use shell of docker container interectively.

```
sudo docker exec --tty --interactive <container_id> /bin/bash

or in short, 

sudo docker exec -it <container_id> /bin/bash
```

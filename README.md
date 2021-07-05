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
  

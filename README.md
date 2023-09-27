# 42_Inception

This project consists in having you set up a small infrastructure composed of different
services under specific rules. The whole project has to be done in a virtual machine. You
have to use docker compose


#### Image in docker?

A Docker image is a lightweight, standalone, and executable package that contains everything needed to run an application, including the application code, runtime, libraries, and system tools. Docker images are created using a Dockerfile, which is a script that specifies the steps to build the image.

<img width="807" alt="Screen Shot 2023-09-22 at 1 41 29 PM" src="https://github.com/Reemy99/42_Inception/assets/111651235/141e0f9c-555a-45eb-9785-1511f750f3a2">

### Docker Compose

Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application's services. Then, with a single command, you create and start all the services from your configuration.

Compose works in all environments; production, staging, development, testing, as well as CI workflows. It also has commands for managing the whole lifecycle of your application:

Start, stop, and rebuild services
View the status of running services
Stream the log output of running services
Run a one-off command on a service
-------------------------------------------------------
### Commands In mMakefile:

1) **-f :** flag is used to remove the running Docker containers forcefully.

2) **--rmi all -v:** options also used with the docker-compose down. **--rmi all** option tells Docker to remove all images associated with the containers being stopped, **-v** tells Docker to remove the volumes associated with the containers.

3) **2>/dev/null :** redirects standard error (file descriptor 2) to /dev/null, effectively suppressing any error messages or output that might be generated by the docker compose down command.

4) **|| true :** ensures that even if the preceding command (in this case, docker compose down) fails and returns a non-zero exit status, the entire command will still return a successful (zero) exit status. It effectively ignores errors, allowing the Makefile to continue executing subsequent commands even if this one fails.

-------------------------------------------------------
### docker-compose.yml 

we define multiple containers (services) that make up our application environment. For each container, we typically provide several key configurations:

1) Docker file.
2) Container name.
3) Env varibles.
4) Voliumes.
5) NetWorks.
6) restart.



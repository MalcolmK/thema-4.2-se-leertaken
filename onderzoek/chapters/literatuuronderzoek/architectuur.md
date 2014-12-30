# Architectuur van Docker

- Docker daemon;
- Docker client, and;
- Docker.io registry.
- Images
- Dockerfiles
- Containers

![Architectuur](../../assets/architecture.png)


- Docker is a client-server application.
- Both the Docker client and the daemon can run on the same system, or;
- You can connect a Docker client with a remote Docker daemon.
- They communicate via sockets or through a RESTful API.
- Users interact with the client to command the daemon, e.g. to create, run, and stop containers.
- The daemon, receiving those commands, does the job, e.g. run a container, stop a container.



```
Bronnen:
- http://docs.docker.com/introduction/technology/

```
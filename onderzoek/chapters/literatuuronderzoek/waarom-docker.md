# Waarom docker?

Deze sectie beschrijft de voor- en nadelen omtrent Docker. Ook wordt er gekeken naar mogelijke alternatieven.

- Docker lost het probleem op van de N x N compatibiliteits nachtmerrie.
- Heldere analogie met een schip en containers.
- Lichtgewichte service in plaats van legacy technologies

## Voordelen
- Lightweight
- Encapsulated
- Shippable
- Easier separation of concerns, leading to:
- potential for higher uptime
- simpler maintenance and support management
- rolling upgrades
- failures in any part of the process (build/test) can be more limited to that particular service
- reasoning about service components can be improved by a process of decomposition
- LXC, low level, fast
- PAAS through instance abstraction
- pay by the hour model
- isolated and secure
- pushing and pulling prebuild images

## Nadelen
- If your application architecture consists of tightly coupled components, management of these as microservices will become an order of magnitude more complicated.
- Linux only
- Setting up development / test environments can get more comlicated
- Not everything benefits from being containerized, more hassle than what it's worth (because of isolation)
- Container security (https://titanous.com/posts/docker-insecurity)
- Networking safety (http://www.projectatomic.io/blog/2014/08/is-it-safe-a-look-at-docker-and-security-from-linuxcon/)

## Alternatieven
- VM
- Puppet, Chef, Vagrant, Ansible (werken ook samen)
- Flockport
- Rocket



```
Bronnen:
- http://www.slideshare.net/dotCloud/why-docker
- http://www.quora.com/What-are-the-pros-and-cons-of-running-one-process-per-Docker-container
- http://stackoverflow.com/questions/16047306/how-is-docker-io-different-from-a-normal-virtual-machine
- http://sathishmanohar.com/articles/docker-will-change-everything/
- http://sysadvent.blogspot.nl/2014/12/day-1-docker-in-production-reality-not.html
- http://www.flockport.com/
- https://coreos.com/blog/rocket/
```

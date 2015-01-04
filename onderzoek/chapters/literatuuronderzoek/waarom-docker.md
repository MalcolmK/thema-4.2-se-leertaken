# Waarom docker?

Deze sectie beschrijft de voor- en nadelen omtrent Docker. Ook wordt er gekeken naar mogelijke alternatieven.

## Voordelen
Docker biedt een aantal duidelijke voordelen, ten opzichte van het traditionele model. Zo zijn Docker containers licht om op te zetten ('lightweight') en is de software binnen de container volledig afgesloten ('encapsulated'), tenzij anders aangegeven. Het grote voordeel van Docker is dat de containers met eenvoud op andere servers kunnen worden ingezet ('shippable'). Dit is mogelijk doordat elke container vanaf een aangegeven 'base image' draait, zoals Ubuntu 14.04 of een andere linux distributie.

De duidelijke isolatie van software binnen de containers leidt tot andere voordelen:

1. Potentie voor een hogere uptime:

	- Meer inzicht in falende componenten.
	- Falende onderdelen kunnen eenvoudig worden vervangen met een andere instantie van de container.

2. Eenvoudiger beheer van de individuele componenten:

	- Meer inzicht in prestaties, wat leidt tot betere support.
	- Eenvoudig upgraden van containers.

3. Decompositie van de applicatie zorgt voor meer eenvoud in het redeneren over de dienst.
4. De componenten communiceren enkel via opengestelde kanalen, waarmee de veiligheid wordt vergroot.

Verder draait de onderliggende techniek ('LXC' [[BRON]] (https://linuxcontainers.org)) op een laag niveau, waardoor overhead laag is en Docker snel blijft. Ook biedt Docker de mogelijkheid om containers te delen via de Docker Hub. Waardoor de containers naderhand in zijn gehaal kunnen worden binnengehaald wat het, soms lange, proces van het opzetten elimineert.

## Nadelen
Het opdelen van de applicatie in verschillende componenten heeft veel voordelen, echter is deze ontwerpfilosofie wel verplicht. Indien de applicatie architectuur bestaat uit veel nauw samenwerkende componenten, wordt het opzetten en beheren van deze componenten erg complex en is Docker niet altijd de juiste oplossing. Zo heeft het weinig nut om en de gehele applicatie in een enkele container te draaien, terwijl de software ook op de daadwerkelijke server gedraaid kan worden - ervan uitgaande dat de server enkel voor de applicatie wordt gebruikt. De isolatie kan soms meer tijd en moeite kosten dan dat het uiteindelijk oplevert.

Tevens maakt Docker het opzetten van de applicatie een stuk complexer, omdat er van te voren moet worden nagedacht over de infrastructuur en scheiding en koppeling van de componenten.

Ook draait Docker, vanwege de onderliggende techniek, alleen op Linux. Gelukkig worden veel applicaties op de dag van vandaag al op Linux servers gedraaid. Gebruik van Docker op Windows of Mac OS X is mogelijk met behulp van 'boot2docker' [[BRON]] (https://docs.docker.com/installation/mac/). Hiermee kan Docker schijnbaar direct worden aangesproken via de command line, echter worden de commando's doorgestuurd naar een virtuele machine waar Docker op draait.

Tot slot zijn er, op het moment van schrijven, een aantal problemen met de veiligheid van containers. Zo kan een container met administrator rechten de bovenliggende laag overnemen [[BRON]] (http://www.projectatomic.io/blog/2014/08/is-it-safe-a-look-at-docker-and-security-from-linuxcon/). Dit kan de server zelf zijn, maar ook een andere Docker container (een container draait Linux, waarop Docker geïnstalleerd kan worden). Dit is een serieus beveiliginsprobleem, tenzij de container niet de juist rechten heeft of er een container laag omheen wordt gezet (die op zijn beurt geen admininstrator rechten heeft) indien de administrator rechten zijn vereist.

Bij het binnenhalen van bestaande containers wordt de authenticiteit van de container incorrect geverifieerd [[BRON]] (https://titanous.com/posts/docker-insecurity). Hierdoor kan een aanvaller misbruik maken van mogelijke fouten in de systeemtools die Docker gebruikt.

## Alternatieven
Naast Docker, en de handmatige ('traditionele') manier voor het opeztten van een server, zijn er genoeg alternatieven. In het kort, een aantal noemenswaardige alternatieven voor Docker:

1. __[VMWare](http://www.vmware.com/) en [VirtualBox](https://www.virtualbox.org/):__ Hosting binnen een virtuele machine, wat ongeveer gelijk staat aan de volledige applicatie binnen een enkele container.
2. __[Vagrant](https://www.vagrantup.com/):__ Een hulpmiddel voor het automatisch opzetten van virtuele machines.
3. __[Puppet](http://puppetlabs.com/), [Chef](https://www.chef.io/) en [Ansible](http://www.ansible.com/):__ Zogeheten 'provisioning tools', voor het configureren van een server (gebruikers, rechten, software, etc.) middels configuratiebestanden.
4. __[Flockport](http://www.flockport.com/), [Rocket](https://coreos.com/blog/rocket/) en [LXD](https://linuxcontainers.org/lxd/introduction/):__ Net als Docker: containers met behulp van LXC. Elk met een eigen ontwerpfilosofie:

	- Flockport: Gebruikersgemak en veel officiële containers, waardoor software eenvoudig is op te zetten.
	- Rocket: Veiligheid. Docker draait als één proces, waardoor deze niet met beperkte rechten gedraaid kan worden.
	- LXD: Een verbeterde gebruikersinterface voor LXC (tevens van de makers van LXC).

```
Bronnen:
- http://www.slideshare.net/dotCloud/why-docker
- http://www.quora.com/What-are-the-pros-and-cons-of-running-one-process-per-Docker-container
- http://stackoverflow.com/questions/16047306/how-is-docker-io-different-from-a-normal-virtual-machine
- http://sathishmanohar.com/articles/docker-will-change-everything/
- http://sysadvent.blogspot.nl/2014/12/day-1-docker-in-production-reality-not.html
- http://www.flockport.com/
- https://coreos.com/blog/rocket/

Voordelen
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

Nadelen
- If your application architecture consists of tightly coupled components, management of these as microservices will become an order of magnitude more complicated.
- Linux only
- Setting up development / test environments can get more comlicated
- Not everything benefits from being containerized, more hassle than what it's worth (because of isolation)
- Container security (https://titanous.com/posts/docker-insecurity)
- Networking safety (http://www.projectatomic.io/blog/2014/08/is-it-safe-a-look-at-docker-and-security-from-linuxcon/)
```

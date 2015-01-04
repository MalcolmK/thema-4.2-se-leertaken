# Waar past Docker in het ontwikkelproces?

Docker is een hulpmiddel voor systeembeheerders (ookwel 'devops' genoemd, beheerders van 'development' en 'operations') om de softwarecomponenten (delen van de infrastructuur) van een applicatie op een gestructureerde manier op te zetten en te beheren.

Het werk van een systeembeheerder is niet altijd makkelijk. Zo ontstaan er eenvoudig verschillen in de ontwikkelomgevingen van de ontwikkelaars - alleen al een verschillend besturingssysteem zorgt veelal voor problemen. Ook schaalt een applicatie niet altijd goed, omdat de infrastructuur handmatig is opgezet, waarbij de samenhang als het ware 'opnieuw is uitgevonden'. Denk hierbij aan bijvoorbeeld het handmatig uitvoeren van de installatiestappen voor de software onderdelen.

Docker is een stap in de goede richting voor de volgende problemen of moeilijkheden:

- __Verschillen in ontwikkelomgeving:__ Alle containers gebruiken dezelfde 'base image' en installatiestappen, hierdoor zullen deze - uitgezonderd van de gekoppelde data - niet verschillen.

- __Verschillen in aanpak:__ Docker biedt een gestandaardiseerde en herhaalbare aanpak. Hierdoor kunnen images van andere worden hergebruikt, wat veel tijd scheelt. Doordat het wiel niet telkens opnieuw wordt uitgevonden, kan er ook meer tijd worden besteed aan het oplossen van beveiligingsproblemen en dergelijke.

- __Uitrollen van applicaties:__ Het starten en stoppen van containers kan worden geautomatiseerd. Hierdoor hoeven er niet handmatig servers worden herstart en wordt er inzicht geboden in uitgeschakelde of falende componenten van de applicatie. Wat het mede mogelijk maakt om bij het falen van een component, automatisch een container te herstarten - eventueel op een backup server.

- __Het schalen van de applicatie:__ Docker kan worden ingezet als een dienst, waarbij er met een druk op de knop meer containers worden gestart of gestopt. Zoals bijvoorbeeld de [Kubernetes](http://kubernetes.io/) dienst van Google.

## Alternatieven
Uiteraard is Docker niet de eerste die dit probleem probeert te tackelen. Zo zijn er veel andere softwarepakketten die de problemen elk op hun eigen manier aanpakken. Een veel gebruikte aanpak is het geautomatiseerd configureren van de volledige server. Bijvoorbeeld door gebruikers en services te persisteren (zorgen dat ze respectievelijk aanwezig zijn/goed geconfigureerd zijn of draaien). Chef is hier een voorbeeld van.

Gelukkig sluit Docker weinig van deze configuratiemiddelen uit. Docker zal eerder eenvoudiger te gebruiken zijn in combinatie met een zogeheten 'provision tool' (bijvoorbeeld Chef, Puppet of Ansible). In de onderstaande afbeelding is te zien welke tools Docker, op het moment van schrijven, al ondersteunen.

![](../../assets/docker_devops.png)

In plaats van dat Docker een 'one size fits all' oplossing aanbiedt, stelt het de gebruiker enkel in staat om software in een geïsoleerde omgeving te draaien. Hierdoor kan de stabiliteit van het opzetten of uitrollen van een applicatie juist worden vergroot. Zo kunnen 'provision tools' het bouwen van images (met behulp van de 'Dockerfile' bestanden) en het (her)starten en stoppen van containers verzorgen.

Ook zijn er inmiddels hulpmiddelen beschikbaar om Docker in te zetten bij een infrastructuur met gedistribueerde componenten.

## Gedistribueerde componenten

Omdat Docker geen bewustzijn heeft van andere servers en enkel de containers op de eigen server beheert, is er uiteraard behoefte aan een middel die de distributie van containers verzorgt. Denk hierbij aan het verdelen van de serverlast over meerdere servers. Bij bijvoorbeeld duizenden page requests naar een webserver is het wenselijk dat de werklast wordt verdeeld, om ervoor te zorgen dat de server niet overbelast raakt.

Ondanks de recente lancering zijn er al meerdere partijen die dit probleem oplossen:

1. [Weave](https://github.com/zettio/weave)
2. [Kubernetes](http://kubernetes.io/)
3. [Core OS/Flannen](https://github.com/coreos/flannel)
4. [Pipework](https://github.com/jpetazzo/pipework)
5. [SocketPlane](http://socketplane.io/)
6. [Mezos](http://mesos.apache.org/)

Deze softwarepakketten hebben ieder hun verschillen in aanpak. De keuze hangt hierin af van de eisen die aan de infrastructuur zijn gesteld.



```
- Veel voorkomende problemen bij deployment.
- Hoe kan Docker helpen bij de problemen die zich voordoen?

Bronnen:
- http://thenewstack.io/how-docker-fits-into-the-devops-ecosystem/
- http://www.informationweek.com/cloud/infrastructure-as-a-service/chef-finds-docker-a-close-fit/d/d-id/1297282
- http://recursivity.com/blog/2014/09/08/how-ansible-docker-fit-using-ansible-to-bootstrap-coordinate-docker-containers/
- http://www.wired.com/2014/06/eric-brewer-google-docker/
- http://computerworld.nl/beveiliging/84279-5-projecten-die-docker-completeren

Notes:
- Infrastructuur
- Systeembeheerders
- Oplossing
	- Gelijke ontwikkelomgeving (aligned environments, door zelfde base image, die gegarandeerd overal hetzelfde is)
	- Gestandaardiseerde/uniforme aanpak
	- Deployments
- Schalen van applicatie
- In productie:
	- Grote deployments
	- Geautomatiseerde deployment op (nieuwe) server
	- Het inzetten van een backup bij uitval
- Kan ook samen werken met Chef, Puppet, Ansible etc.
	- Om elkaar te versterken
	- Process/application container
```

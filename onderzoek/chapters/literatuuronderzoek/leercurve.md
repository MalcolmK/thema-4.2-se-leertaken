## Wat is de leercurve van Docker?

Het leren van Docker op zich is niet bijzonder lastig. Dat komt mede door de aanwezigheid van duidelijk documentatie. Docker beschikt over installatiehandleidingen voor onder andere Mac OS X, Ubuntu, Red Hat Enterprise Linux, Windows, CentOS en Debian. In totaal staan er 18 installatiehandleidingen op de website van Docker. Dit maakt het bijzonder eenvoudig om Docker te installeren ongeacht het besturingssysteem dat wordt gebruikt.

Daarnaast zijn er handleidingen beschikbaar voor vrijwel alle mogelijkheden die Docker biedt. Hierdoor is het relatief eenvoudig om de *ins and outs* van Docker te leren. Verder biedt de website een interactieve tutorial om aan de slag te gaan met Docker. In deze tutorial wordt je stap voor stap geholpen met het zelf opzetten van een container en het downloaden en starten van een container.

Het opzetten van een simpele container met Ubuntu 14.04, is zo simpel als onderstaand voorbeeld.

Allereerst dient er een Dockerfile gemaakt te worden, daarin kan de volgende inhoud geplaatst worden:

```
FROM ubuntu:14.04
MAINTAINER Hanze <instituut@hanze.nl>
```

Dit is de basis van een container in Docker. Door deze docker container te bouwen, wordt een installatie van Ubuntu 14.04 gedaan. Wil je op deze container ook ruby en sinatra geïnstalleerd hebben, dan zou de Dockerfile er zo uit hebben gezien:

```
FROM ubuntu:14.04
MAINTAINER Hanze <instituut@hanze.nl>
RUN apt-get update &&
    apt-get install -y ruby ruby-dev
RUN gem install sinatra
```

Op basis van deze Dockerfile kan een image gemaakt worden:

```
$ docker build -t="hanze/sinatra" .
```

Op basis van deze image kan de container gemaakt worden. De container kan vervolgens opgestart worden door het commando `docker run` te gebruiken. In onderstaand voorbeeld wordt de container opgestart en zitten we in de shell van Ubuntu:

```
$ docker run -t -i hanze/sinatra /bin/bash
```

Zoals uit bovenstaande voorbeelden duidelijk wordt, is het heel erg eenvoudig om met gebruik van Docker een omgeving op te zetten. De moeilijkheid bij Docker zit hem in de kennis die je moet hebben van het systeem dat je wilt gaan gebruiken. Echter, ook zonder het gebruik van Docker was het noodzakelijk om kennis te hebben van het systeem dat opgezet moest worden. Wanneer er een development server opgezet moet worden met Ubuntu, PHP en MySQL, dan is daar kennis van nodig. Bij het opzetten van de container moeten deze handelingen dus in de Dockerfile gezet worden, in plaats van dat deze op de server worden uitgevoerd.

```

Bronnen:
- https://www.docker.com/tryit/
- https://docs.docker.com/installation/#installation
- https://docs.docker.com/installation/#user-guide
- https://docs.docker.com/userguide/dockerimages/#building-an-image-from-a-dockerfile

```

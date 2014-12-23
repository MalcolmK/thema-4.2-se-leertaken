# Wat is de leercurve van Docker?

# Uitwerking:
Het leren van Docker an sich is niet bijzonder lastig. Dat komt mede door de aanwezigheid van duidelijk documentatie. Docker beschikt over installatiehandleidingen voor Mac OS X, Ubuntu, Red Hat Enterprise Linux, Windows, CentOS, Debian en nog veel meer. In totaal staan er 18 installatiehandleidingen op de website van Docker. Dit maakt het bijzonder eenvoudig om Docker te installeren.

Daarnaast zijn er handleidingen beschikbaar voor vrijwel alle mogelijkheden die Docker biedt. Hierdoor is het relatief eenvoudig om de *ins and outs* van Docker te leren. Verder biedt de website een interactieve tutorial om aan de slag te gaan met Docker. In deze tutorial wordt je stap voor stap geholpen met het zelf opzetten van een container en het downloaden en starten van een container.

Het opzetten van een simpele container met Ubuntu 14.04, is zo simpel als onderstaand voorbeeld:

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

Zoals uit bovenstaande voorbeelden duidelijk wordt, is het heel erg eenvoudig om met gebruik van Docker een omgeving op te zetten. De moeilijkheid bij Docker zit hem in de kennis die je moet hebben van het systeem dat je wilt gaan gebruiken. Maar deze kennis had je toch ook al nodig bij het opzetten van dat systeem zelf, dus het is puur reproduceren van eerdere handelingen bij het opzetten van je Docker container.


```

Bronnen:
- https://www.docker.com/tryit/
- https://docs.docker.com/installation/#installation
- https://docs.docker.com/installation/#user-guide
- https://docs.docker.com/userguide/dockerimages/#building-an-image-from-a-dockerfile

```

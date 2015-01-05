## Installatie
Allereerst dienst Docker te worden geïnstalleerd. Er is voor iedere OS een aparte [handleiding](https://docs.docker.com/installation/#installation) beschikbaar. Hieronder zal wat dieper ingegaan worden op [de installatie van Docker op Mac OS X](https://docs.docker.com/installation/mac/).

Docker maakt gebruik van Linux specifieke kernel features en dient daarom via een virtuele machine (VM) gedraaid te worden. Om dit proces simpeler te laten verlopen heeft Docker applicatie ontwikkeld die [Boot2docker](https://github.com/boot2docker/boot2docker) heet. Boot2docker installeert een VM die gereed is gemaakt voor het draaien van Docker.

Boot2docker kan installeerd worden via de [Docker for OS X Installer](https://github.com/boot2docker/osx-installer/releases/latest), of via [Homebrew](http://brew.sh/). Homebrew is de package manager voor OS X. Boot2docker kan als volgt geïnstalleerd worden:

```
$ brew install boot2docker
```

Boot2docker maakt gebruik van de 'go' en 'docker' package en deze zullen dan ook automatisch worden geïnstalleerd door Homebrew. Wanneer de installatie van Boot2docker is voltooid, moet deze nog geinitialiseerd worden. Dat kan als volgt:

```
$ boot2docker init
$ boot2docker up
$ $(boot2docker shellinit)
```

De eerste stap, `$ boot2docker init`, maakt een nieuwe VM. Vervolgens wordt door middel van `$ boot2docker up` de VM gestart. Het `$ $(boot2docker shellinit)` wordt gebruikt om de `DOCKER_HOST` variable te zetten in de huidige shell. Wanneer er gebruik gemaakt wordt van een andere shell zoals [Fishshell](http://fishshell.com/), dan dient `$ $(boot2docker shellinit)` [vervangen te worden](http://stackoverflow.com/a/27529061/1453912) door `$ boot2docker shellinit | while read line; eval $line; end`.

Bij het starten van de VM wordt een feedback gegeven dat lijkt op het onderstaande:

```
$ boot2docker up
Waiting for VM and Docker daemon to start...
...........ooo
Started.
Writing /Users/[username]/.boot2docker/certs/boot2docker-vm/ca.pem
Writing /Users/[username]/.boot2docker/certs/boot2docker-vm/cert.pem
Writing /Users/[username]/.boot2docker/certs/boot2docker-vm/key.pem
Your environment variables are already set correctly.
```

Vooral de laatste is belangrijk. Wanneer de omgevingsvariabelen ('environment variables') niet goed zijn ingesteld, wordt feedback getoond die lijkt op het onderstaande:

```
To connect the Docker client to the Docker daemon, please set:
    set -x DOCKER_HOST tcp://192.168.59.103:2376
    set -x DOCKER_CERT_PATH /Users/[username]/.boot2docker/certs/boot2docker-vm
    set -x DOCKER_TLS_VERIFY 1
```

Dit kan verholpen worden door het `shellinit` commando te draaien. Het is verstandig om het `shellinit` commando toe te voegen aan de profile van de shell zodat niet telkens opnieuw het `shellinit` commando uitgevoerd hoeft te worden.

```
Bronnen
- https://docs.docker.com/installation/mac/
- https://github.com/boot2docker/boot2docker
```

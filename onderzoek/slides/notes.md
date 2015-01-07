# Notes

### Inleiding
- Welkom
- Inhoud
	- Eerst demonstratie om een beetje een gevoel te geven van Docker
	- Tot slot onze gedane bevindingen in de conclusie

### Aanleiding
- Opkomst Docker niet te missen voor devops
- Presentatie Solomon Hykes, slordige demo van de tool
- Veel bedrijven zien de potentie en gaan er direct mee aan de slag
- Peperzaken heeft onlangs artikel geschreven over hun overstap naar Docker
- Om de ontwikkelomgevingen en ontwikkelworkflow consistent te krijgen
- De vraag is echter: wat is Docker precies? En welk probleem lost het op?

### Vraagstelling
- Centrale vraag: Wanneer biedt Docker toegevoegde waarde?
- En dan met name binnen bedrijven en ontwikkelteams
- Onderzoeksvragen:
	- Wat is Docker?
	- Waarom Docker?
	- Architectuur van Docker.
	- Waar past Docker in het ontwikkelproces?
	- Wat is de maturity van Docker en de community er omheen?
	- Wat is de leercurve van Docker?
	- Voor wat voor soort bedrijven is Docker relevant?
	- Welke bedrijven gebruiken Docker?

### Onderzoeksmethode
- Literatuurstudie
- Kwalitatief onderzoek
- Veel online materiaal bekeken: artikelen, blogs posts, website documentatie
- Maar ook een testomgeving, om een feeling te krijgen van Docker

### Resultaat
- Wat is Docker?
    - Hulpmiddel voor systeembeheerders (devops)
    - Maakt gebruik van LXC, een Linux tool voor software isolatie
    - Isolatie van softwarecomponenten met behulp van 'Docker containers'
    - Herhaalbaar proces door 'image' systeem
    - Lost de 'Matrix of Hell' op doordat containers in elke andere Docker infrastructuur kunnen draaien
    - [[afbeelding NxN probleem]]
- Waarom Docker?
    - Voordelen
        - Licht en snel
        - Geïsoleerd en veilig
        - 'Containers zijn verscheepbaar'
        - Duidelijke scheiding softwarecomponenten
        - Eenvoudig beheer
        - Makkelijk herstellen bij falen van componenten
        - Makkelijkere upgrades en deployments
    - Nadelen
        - Alleen Linux ondersteuning (opgelost door boot2docker)
        - Docker Index veiligheid
        - Op te lossen door gebruik eigen privé index
        - Geen meerwaarde bij applicatie met nauw samenwerkende componenten
    - Alternatieven
        - Virtuele machines: VMWare, VirtualBox
        - Provisioning tools: Vagrant, Puppet, Chef, Ansible
        - Docker, maar met andere filosofie: Flockport, Rocket, LXD (van LXC zelf)
- Architectuur van Docker.
    - Dockerfile
    - Image
    - Container
    - Docker Daemon
    - Docker Client
    - Docker Hub
    - Docker Index
- Waar past Docker in het ontwikkelproces?
    - Software infrastructuur
    - Trekt ontwikkelomgevingen gelijk
    - Specificaties omwikkelomgeving hebben geen impact meer op server deployment
    - Lost problemen op:
        - Verschillen in ontwikkelomgeving
        - Verschillen in aanpak
        - Uitrollen van applicaties
        - Het schalen van de applicatie
- Wat is de maturity van Docker en de community er omheen?
    - Docker nog steeds volop in ontwikkeling
    - Recente lancering van eerste versie (juni 2014)
    - Grote community
    - Adoptatie door veel (grote) partijen: Google, Ebay, Yelp.
    - Meer dan vijfduizend topics op StackOverflow
- Wat is de leercurve van Docker?
    - Goede documentatie
    - Veel online hulp
    - Duidelijke installatiehandleidingen
    - Het opzetten/omzetten van applicaties kan vrij complex worden
    - Kennis over server beheer is een vereiste
- Voor wat voor soort bedrijven is Docker relevant?
    - Aantrekkelijk voor zowel grote, als kleine bedrijven
    - Niet relevant voor bedrijven die geen, of een kleine, IT afdeling hebben of dit uitbesteden
    - Expertise moet wel aanwezig zijn
    - Voor bedrijven die server hosting doen, om zo klantgebruik en de inzet van servers te kunnen optimaliseren. Hiermee kunnen de kosten worden gedrukt.
- Welke bedrijven gebruiken Docker?
    - Google (PaaS: Kubernetes)
    - Spotify
    - Ebay
    - Gilt
    - Yelp
    - Bleacher Report
    - Baidu
- Testomgeving
    - Veel voorkomende opstelling: webserver en database
    - MySQL, NGinX, HHVM (PHP van Facebook) en Laravel

### Demonstratie
- Demonstreren Boot2docker
- Opzetten MySQL container
- Dockerfile web container
- Builden web image
- Opzetten Web container
	- Linking
	- Mounting
    - Container access (docker exec)
- Resultaat: website

### Onderbouwde conclusie
- Docker bestaat nog niet heel lang
    - Maar wel goede adoptatie
    - Wordt al veel gebruikt
- Docker lost de 'Matrix of Hell' op
    - [[afbeelding]]
    - Probleem van incompatibiliteit in hardware en/of softwareversies
- Opzetten Docker software blijkt eenvoudig te zijn
    - Goede documentatie en installatiehandleidingen
- Opzetten applicatie met behulp van Docker is lastiger
    - Scheiden van softwarecomponenten kan complex zijn
    - Benodigde voorkennis van serverbeheer
- Docker is aantrekkelijk voor zowel grote, als kleine bedrijven
    - Containers zijn makkelijk op te zetten
    - Snel starten nieuwe containers bij falen
    - Docker niet aantrekkelijk voor niet IT gerelateerde bedrijven en bedrijven met weinig expertise in huis (omtrent server beheer)
- Docker biedt weinig toegevoegde waarde bij applicaties met nauw samenwerkende softwarecomponenten
    - De isolatie, door middel van containers, werkt in dit geval tegen
    - De complexiteit wordt te groot, waardoor de investering (van tijd) hoog is

### Eind
- Vragen?


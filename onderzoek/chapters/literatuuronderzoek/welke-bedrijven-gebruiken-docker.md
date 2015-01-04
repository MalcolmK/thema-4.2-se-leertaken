# Welke bedrijven gebruiken Docker?

Er zijn veel verschillende bedrijven die gebruik maken van Docker, waaronder een aantal bijzonder grote bedrijven. Hieronder zullen een aantal van deze bedrijven besproken worden. Er zal eerst kort aangehaald worden wat het bedrijf is en daarna zal uitgelegd worden waar zij Docker voor gebruiken. Op deze manier kan een beeld gevormd worden van hoe belangrijk Docker inmiddels voor grote bedrijven is.

## Spotify
Spotify is een streamingsservice voor muziek. Zij streamen muziek naar meer dan 40 miljoen gebruikers in wereldwijd bijna 60 landen. Op de rankinglijst van Alexa is de website van Spotify in de afgelopen 3 maanden met ruim 260 plaatsen gestegen naar 391 (d.d. 24 december 2014).

Aan de back-end heeft Spotify meer dan 100 verschillende services draaien en maken ze gebruik van meer dan 5,000 servers voor de productie omgeving. Per *ops engineer* heeft Spotify zo'n 300 servers draaien.

Spotify heeft zijn continuous delivery process versnelt door gebruik te maken van Docker voor het draaien van tests en bij het deployment process. Volgens Spotify moeten deployments de volgende eigenschappen hebben:

- Ze moeten *repeatable* zijn;
- Ze moeten *straightforward* zijn;
- Ze moeten *fault-tolerant* zijn.

Omdat met Docker deze eigenschappen gewaarborgd kunnen worden, heeft Spotify gekozen om Docker te gebruiken voor het versnellen van het continuous delivery proces.

## Ebay
Ebay is 's werelds grootste online marktplaats. De website van Ebay heeft op de wereldwijde ranking lijst van Alexa een plaats van 21 en op de Amerikaanse lijst een ranking van 7. Ebay gebruikt Spotify voor zijn continuous integration process voor het implementeren van een efficiënt en geautomatiseerd ontwikkeltraject.

## Gilt
Gilt is een leidende webshop in Amerika met meer dan 6 miljoen leden en meer dan 1,000 werknemers. Op de wereldwijde ranglijst is de website van Gilt in de afgelopen 3 maanden met bijna 1,500 plaatsen gestegen naar plaats 1,242. Op de Amerikaanse lijst staat Gilt zelfs bijna op plaats 400.

Op drukke dagen loopt het aantal productie releases van Gilt op tot zo'n 100 per dag. Door het hoge aantal releases heeft Gilt besloten om het continuous integration process te vereenvoudigen. Een kleine rekensom kan ons helpen om te begrijpen waarom. Stel dat Gilt door het vereenvoudigen van het CI-process gemiddeld per release 5 minuten zou kunnen winnen. Uitgaande van 100 releases, zoals op een drukke dag, betekent dat een tijdwinst van ruim 8 uur per dag. Dat is (theoretisch gezien) een complete werkdag. Daarom heeft Gilt besloten om alle software naar Dockers platform te verplaatsen en zo de services te isoleren.

## Yelp
Yelp is een online stadsgids met actuele informatie over allerlei verschillende soorten winkels, gebaseerd op onderbouwde meningen van een community van mensen. Sommigen zullen Yelp ook kennen van Siri, een service van Apple in de vorm van een personal assistent. Yelp is een zeer populaire service, getuigd de ranking op de wereldwijde lijst van Alexa, namelijk 135.

Yelp geeft zelf aan dat Docker een vitale rol speelt in de volgende generatie van Yelps test en service infrastructuur. Yelp gebruikt Docker binnen het CI-process voor het verkorten van de ontwikkel cycli. Door het isoleren van dependencies heeft Yelp deze cycli kunnen verkorten en de tijd van het testen kunnen terugbrengen tot een kwart van wat het eerst was.

## Bleacher Report
Bleacher Report is onderdeel van Turner Sports en schrijft artikelen over honderden sportteams van over heel de wereld. Het is een van de snelst groeiende bedrijven in Amerika. Op de wereldwijde ranglijst van Alexa heeft Bleacher Report een ranking van 298.

Bleacher Report gebruikt Docker voor de volledige application lifecycle. Zoals zij [zelf aangeven](https://www.docker.com/resources/usecases/): "We've been very happy with the gains from using Docker and it has helped us with scale, speed, and *consistency*." Net als andere bedrijven, noemt ook Bleacher Report dat één van de voordelen van Docker consistentie is. Verder zeggen zij dat er een grote Docker-verschijving plaatsvindt in de development wereld.

## Baidu
Baidu is dé nummer 1 Chinese internet search provider. Dat getuige ook de ranglijsten van Alexa. Op de wereldwijde lijst staat Baidu op nummer 5 en op de Chinese lijst zelfs op nummer 1.

Baidu gebruikt Docker bij de development, omdat het een aantal voordelen biedt. Zo zorgt Docker volgens hen voor een hele generieke benadering en maakt het daarnaast ook de support makkelijker voor:

- nieuwe programmeertalen;
- nieuwe frameworks;
- nieuwe databases.

Doordat er makkelijk geschakeld kan worden tussen programmeertalen, frameworks en databases kunnen tevens de kosten gereduceerd worden.

## Conclusie
Er zijn dus veel grote bedrijven die gebruik maken van Docker. Dit komt onder andere doordat deze grote bedrijven enorme aantallen services hebben draaien op veel verschillende servers. Door het implementeren van Docker maken zij de ontwikkeltrajecten een stabieler en betrouwbaarder.


Onderstaand kan nog gebruikt worden als we content te kort komen:

- New Relic: https://blog.docker.com/2014/09/dockercon-video-docker-deployment-at-new-relic/
    + Wat is New Relic?
        * Alexa ranking van 3,8K (http://www.alexa.com/siteinfo/newrelic.com#rank-panel)
        *
    +

- Rackspace: http://youtu.be/CMC3xdAo9RI
    + .

- Yandex: http://blog.docker.com/2013/10/yandex-using-docker-for-infrastructure-virtualization-and-app-isolation/
    + .

- Cambridge Healthcare: http://blog.howareyou.com/post/62157486858/continuous-delivery-with-docker-and-jenkins-part-i
    + .

```

Bronnen:
- https://www.docker.com/resources/usecases/
- https://blog.docker.com/2014/07/dockercon-video-immutable-infrastructure-with-docker-and-ec2/
- https://blog.docker.com/2014/07/dockercon-video-building-a-smarter-application-stack/
- http://sauceio.com/index.php/2014/12/ci-cd-with-docker-beanstalk-circleci-slack-gantree/
- https://blog.docker.com/2014/06/dockercon-video-docket-at-spotify-by-rohan-singh/
- http://blog.docker.com/2013/12/baidu-using-docker-for-its-paas/
- https://speakerdeck.com/teddziuba/docker-at-ebay
- http://www.yelp.nl/faq#what_is_yelp
- http://bleacherreport.com/about
- http://en.wikipedia.org/wiki/Bleacher_Report
- http://www.alexa.com/siteinfo/bleacherreport.com#rank-panel
- http://www.alexa.com/siteinfo/gilt.com#rank-panel
- http://www.alexa.com/siteinfo/yelp.com#rank-panel
- http://www.alexa.com/siteinfo/spotify.com#rank-panel
- http://www.alexa.com/siteinfo/baidu.com#rank-panel
- http://www.alexa.com/siteinfo/ebay.com#rank-panel
- http://www.ebayinc.com/who_we_are/one_company
- http://en.wikipedia.org/wiki/Spotify
- http://en.wikipedia.org/wiki/Gilt_Groupe
- http://en.wikipedia.org/wiki/Siri#Research_and_development

```

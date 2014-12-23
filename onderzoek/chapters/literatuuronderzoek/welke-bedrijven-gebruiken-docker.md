# Welke bedrijven gebruiken Docker?

# Uitwerking:


#Outline:
- Gilt: https://blog.docker.com/2014/07/dockercon-video-immutable-infrastructure-with-docker-and-ec2/
    + Wat is Gilt?
        * leidende webshop in Amerika
        * Alexa ranking van 1,242
        * Alexa ranking stijging van bijna 1,500 plaatsen in de afgelopen 3 maanden
    + Op drukke dagen zo'n 100 productie releases
    + Verplaatst alle software naar Docker's platform om services te isoleren
    + Vereenvoudigen van CI

- Yelp: https://blog.docker.com/2014/07/dockercon-video-building-a-smarter-application-stack/
    + Wat is Yelp?
        * een online stadsgids met actuele informatie over allerlei verschillende soorten winkels, gebaseerd op onderbouwde meningen van een community van mensen
        * Alexa ranking van 135
    + Voor CI
    + Gebruikt in testing and service management infrastructure
    + Door isolatie van dependencies --> development cycles verkort en snelheid van testen 4x zo snel
    + Gebruik citaat van Yelp

- Bleacher Report: http://sauceio.com/index.php/2014/12/ci-cd-with-docker-beanstalk-circleci-slack-gantree/
    + Wat is Bleacher Report?
        * Onderdeel van Turner Sports
        * schrijft artikelen over honderden sportteams van over heel de wereld
        * Alexa ranking van 298
    + Voor volledige application lifecycle
    + Citaat: "We've been very happy with the gains from using Docker and it has helped us with scale, speed, and *consistency*." --> Ook hier consistentie.
    + grote Docker-verschuiving in de development wereld

- Spotify: https://blog.docker.com/2014/06/dockercon-video-docket-at-spotify-by-rohan-singh/
    + Wat is Spotify?
        * Webdienst die muziek streamt naar 40M+ gebruikers in bijna 60 landen wereldwijd.
        * Alexa ranking van 391
        * Alexa ranking afgelopen 3 maanden met ruim 260 plaatsen gestegen.
    + 100+ verschillende backend services
    + 5000+ productie servers
    + 300 servers per ops engineer
    + Versnelt continuous delivery bij gebruik van Docker voor testen en deployment
    + Gekozen voor Docker omdat deployments volgende eigenschappen moeten hebben:
        * repeatable
        * straightforward
        * fault-tolerant

- Baidu: http://blog.docker.com/2013/12/baidu-using-docker-for-its-paas/
    + Wat is Baidu?
        * No. 1 Chinese internet search provider
        * Alexa ranking van 5 op de wereldwijde lijst
        * Alexa ranking van 1 in China
    + gebruikt Docker bij de development, omdat:
        * het een generieke benadering biedt
        * maakt support makkelijker voor:
            - nieuwe programmeertalen
            - nieuwe frameworks
            - nieuwe databases
        * kosten gereduceerd

- Ebay: https://speakerdeck.com/teddziuba/docker-at-ebay
    + Wat is Ebay?
        * Alexa ranking van 21 op de wereldwijde lijst
        * Alexa ranking van 7 op de USA lijst
        * 's Werelds grootste online marktplaats
    + Continuous integration
    + implementeren van een efficient en geautomatiseerd ontwikkeltraject


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

```

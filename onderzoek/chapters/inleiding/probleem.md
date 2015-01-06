## Uitwerking:

Bij veel projecten ontstaat hetzelfde probleem: bij een deploy van de lokale ontwikkelomgeving naar de testomgeving werkt het "ineens" niet meer. Veel voorkomende reacties zijn dan "Ik snap het niet, bij mij werkt het gewoon." Dat komt omdat de omgeving die lokaal gebruikt wordt, vaak anders is dan de omgeving op de server. Dat kan verschillende oorzaken hebben. Het verschil in besturingssysteem tussen developers kan het noodzakelijk maken dat er verschillende libraries gebruikt worden. Dit verschil in libraries kan voor "onverklaarbare" problemen zorgen.

Daarnaast kan het schakelen tussen verschillende projecten ook een problemen veroorzaken. Het ene project draait bijvoorbeeld op een server met Ubuntu 14.04, PHP 5.3 en MySQL 3.23, terwijl het andere project draait op een server met CentOS 6, PHP 5.5 en MySQL 5.5.36. Wanneer de lokale ontwikkelomgeving dan is ingericht op het project dat PHP 5.5 gebruikt, kunnen er problemen ontstaan bij het deployen naar de productieomgeving. Ditzelfde probleem kan zich ook voordoen tussen verschillende developers.

Docker lost dat probleem op. Docker maakt het heel eenvoudig om een omgeving op te zetten. Het maakt daarbij niet uit of het om een ontwikkelomgeving of een productieomgeving gaat. Docker biedt zelfs de mogelijkheid om op de pc van één devloper, meerdere omgevingen te kunnen laten draaien. Wanneer op de server een update gedaan van PHP 5.3 naar PHP 5.4, kan lokaal door iedere developer Docker geupdatet worden zodat de omgevingen weer identiek zijn.

```
Bronnen: https://www.peperzaken.nl/blog/docker-cutting-edge-code-shipping/
```

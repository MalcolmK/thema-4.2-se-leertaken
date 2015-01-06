## Bevindingen

Tijdens het uitvoeren van de test met Docker, zijn we tegen een aantal dingen aangelopen. Het installeren van Docker en het gebruik van bestaande softwarecomponenten bleek vrij eenvoudig te zijn. De obstakels begonnen zich daarna pas voor te doen. Hieronder zullen we er iets dieper op ingaan.

__Opezetten van de container__
In de praktijk zijn servers vaak op maat geconfigureerd. Tijdens dit onderzoek wilden wij dus ook een server opzetten aan de hand van een zelf samengestelde Dockerfile, in plaats van overal bestaande softwarecompontenten voor te gebruiken. Hierbij hebben we dus zelf na moeten denken over vragen als 'Welk OS gaan we gebruiken?', 'Welke versie van PHP gaan we draaien?', 'Gaan we wel of geen HipHop Virtual Machine gebruiken?' en 'Draaien we de database in een aparte container of dezelfde container?'.

Daarnaast moesten we deze compontenten dus ook zelf installeren in onze container. De eerste twee obstakels die we tegenkwamen betroffen dus de kennis die benodigd was voor zowel het maken van de juiste keuzes, als voor de installatie van de verschillende componenten.

__IP-adres van Docker__
De server die binnen de container van Docker draait, kan niet benaderd worden via de standaard localhost. Daartoe dient het IP-adres van de container zelf gebruikt te worden. Echter, bij een Mac werkt het anders. Docker kan alleen op een Mac draaien door gebruik te maken van een VM. Hiervoor kan boot2docker gebruikt worden. Dit heeft tot gevolg dat, bij het benaderen van de server, niet het IP-adres van de container moet worden gebruikt, maar het IP-adres van boot2docker.

__NGinX en HHVM__
Het bleek lastig om NGinX en HHVM tegelijk te laten draaien. Het lukte niet om de services als daemon te laten draaien via de container. Ergens voor het einde van het installatieproces werden de services dan weer afgesloten. Wanneer NGinX niet als daemon werd gedraaid, bleef de rest van de scripts na het starten van NGinX te worden geblokkeerd. Hiertoe hebben we een shell script gemaakt dat beide processen als daemon kan starten. Het gebruikte script staat hieronder:

```
# Start services
/usr/sbin/sshd -D &

service hhvm start
service nginx start
```

__Koppelen van componenten__
Het voordeel van Docker is dat container gelinkt kunnen worden. Op die manier kan de container die de database bevat los van de container met de container met de server worden gedraaid. Het was niet mogelijk om de environmentvariabelen te benaderen, wat het lastig maakte om bepaalde data door te geven.

__Grote MySQL container__
Voor onze server hebben we gebruik gemaakt van de originele MySQL image. Echter, na installatie van de MySQL-server wordt de broncode niet verwijderd. Dit resulteert in een image van 2,5 GB.

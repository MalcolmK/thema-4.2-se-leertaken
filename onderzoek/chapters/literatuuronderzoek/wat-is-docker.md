# Wat is Docker?
Docker is een open platform waarmee gedistribueerde applicaties kunnen worden gebouwd, getransporteerd en gerunt. Eén van de kenmerken van Docker is dat applicaties snel in elkaar kunnen worden gezet. Door gebruik van Docker kan de IT-afdeling binnen een bedrijf gemakkelijk overal dezelfde omgeving en apps draaien.

Docker bestaat uit twee "onderdelen":

- Docker Engine en
- Docker Hub.

Docker Engine is een lichtgewicht packaging tool die makkelijk kan worden verplaatst. Docker Hub is een cloud service die gebruikt wordt voor het delen van applicaties en automatiseren van workflows.

Er wordt steeds meer verschillende software gebruikt op steeds meer verschillende hardware. Dit heeft geresulteerd in wat de founder van Docker (Solomon Hykes) de 'Matrix of Hell' noemt:

![Matrix of Hell](../../assets/the_matrix_of_hell.jpg "The Matrix of Hell")

Deze complexiteit kan worden vergeleken met het transporteren van goederen. Er is een grote verscheidenheid aan afmetingen van producten die moeten worden vervoert. Hierbij kan worden gedacht aan bijvoorbeeld olievaten, kratten en auto's. Deze drie producten hebben allerlei verschillende afmetingen en bij het vervoeren dient rekening te worden gehouden met verschillende aspecten, zoals breekbaarheid en ontvlambaarheid. Deze producten kunnen vervoerd via verschillende transportmiddelen, zoals per schip, vliegtuig of vrachtwagen. In de praktijk kan dit dus voor veel compatibiliteitsproblemen zorgen.

De oplossing die hiervoor bedacht is, is een standaard over de afmetingen van het product dat getransporteerd wordt: de container. Wanneer de verschillende software/libraries worden vergeleken met de producten die moeten worden getransporteerd en de verschillende hardware componenten worden vergeleken met de transportmiddelen, zien we veel overeenkomsten. Dit is waar Docker voor kan worden gebruikt kan. De verschillende software kunnen worden gedraaid in zogenaamde containers. Docker biedt vervolgens voor alle soorten hardware een interface om deze container te kunnen laten draaien. Hiermee is een standaard ontwikkeld die het mogelijk maakt om op iedere hardware dezelfde software te kunnen draaien zonder compatibiliteitsproblemen.

Dit kan eenvoudigd worden bereikt door een Dockerfile te maken met daarin alle acties die moeten worden uitgevoerd, om zo een 'image' te maken. Met deze image kan vervolgens een container worden gemaakt. De precieze werking wordt uitgelegd in paragraaf Leercurve van Docker. [[LINK]]


```
Bronnen
- https://www.docker.com/whatisdocker/
- http://blog.docker.com/wp-content/uploads/2013/08/the_matrix_of_hell.jpg
```

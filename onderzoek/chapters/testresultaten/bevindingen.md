## Bevindingen

- opzetten Docker heel eenvoudig
	- installatie
	- gebruik bestaande softwarecomponten is easy
- het zelf opzetten van een container (middels een Dockerfile en image) vereist enige kennis
- doordat we Mac gebruiken moesten we het IP adres van boot2docker gebruiken ipv die van een container.
- NGinX tegelijk draaien met HHVM bleek lastig
	- Uiteindelijk niet gekozen voor een supervisor tool, maar voor een run script die beide services start
- het kost wel wat tijd om de softwarecomponenten op te zetten en te koppelen
- de originele MySQL container bevat nog wel de broncode, waardoor deze 2,5 GB is.
- containers zijn van buitenaf lastig te benaderen als ze eenmaal draaien. Hier kan een SSH-server voor worden geïntalleerd, of diensten (zoals MySQL) bieden de mogelijkheid om een interface te gebruiken. Waardoor er een CLI in een nieuwe MySQL container kan worden gestart (client) die verbind met de al draaiende MySQL server.
- achteraf pas `$ docker exec` gevonden

```
- Hoe verliep het?
	- Waar zijn we tegenaan gelopen?
	- Ervaringen
```

## Opzet testomgeving

Doordat er met Docker software in geïsoleerde containers kan worden gedraaid, is het eenvoudig om een testomgeving op te zetten zonder dat dit impact heeft op de ('host') machine van de gebruiker. Een veelvoorkomende opzet is een webserver met een database. Voor de testomgeving worden dan ook de volgende softwarecomponenten (ook wel 'stack' genoemd) gebruikt:

![Stack](../../assets/testconfiguratie-stack.png)

In deze opstelling worden een groot aantal aspecten omtrent Docker gedemonstreerd:

- De Docker command line tool;
- Het gebruik van Boot2docker op een Unix systeem (Mac OSX);
- Het gebruik van bestaande images en de Docker Index;
- Een Docker image opstellen met behulp van een _Dockerfile_;
- Het installeren van software in een container;
- Het opzetten, (her)starten, stoppen, linken en inspecteren van containers;
- Het toegang verkrijgen tot containers;
- Een backup maken van de database:
	- Uitvoer van interne gegevens;
	- Het benaderen van applicaties ('services') binnen een container.

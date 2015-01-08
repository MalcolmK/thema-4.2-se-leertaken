# Wannabe samenvatting
Dit document is een soort van samenvatting. Het bevat gewoon een aantal belangrijke dingen die ik niet terug wil hoeven zoeken in het boek.

## Definities
- **View:** A view is a representation of one or more structural aspects of an architecture that illustrates how the architecture addresses one or more concerns held by one or more of its stakeholders.

- **Viewpoint:** A viewpoint is a collection of patterns, templates, and conventions for constructing one type of view. It defines the stakeholders whose concerns are reflected in the viewpoint and the guidelines, principles, and objects in object-oriented development.

## Viewpoints Rozanski & Woods
- *Functional*
    + Beschrijft de *runtime functionele elementen*, hun verantwoordelijkheden, interfaces en belangrijkste interacties.
    + De functionele view is de hoeksteen van de meeste AD's.
    + Vaak het eerste deel van het AD dat stakeholders lezen.
    + Bepaald de vorm van andere elementen van het systeem, zoals de informatie structuur, concurrency structuru, deployment structuur, etc.
    + Het heeft een grote impact op de quality properties van het systeem, zoals
        * het vermogen om te veranderen;
        * het vermogen om veilig te zijn;
        * de runtime performance.

- *Information*
    + Beschrijft de manier waarop het systeem omgaat met informatie, zoals het
        * opslaan;
        * aanpassen;
        * beheren;
        * verspreiden.
    + Het geeft een high-level overzicht van de static data structure en de information flow.
    + Het doel van deze view is om een antwoord te geven op de grote vragen rondom
        * content;
        * structure;
        * ownership;
        * latency;
        * referenties;
        * data migratie.

- *Concurrency*
    + Bescrhijft de concurrency structuur.
    + Het brengt in kaart welke functionele elementen bij welke concurrency elementen horen, zodat die gedeelten van het systeem die die concurrent uitgevoerd kunnen worden, duidelijk in kaart gebracht zijn. Daarnaast wordt duidelijk hoe deze concurrent shizzle wordt gecoördineerd en aangestuurd.

- *Development*
    + Beschrijft de architectuur die het ontwikkelproces zal ondersteunen.
    + Het communiceert die gedeelten van de architectuur die van belang zijn voor de stakeholders die betrokken zijn bij
        * het bouwen van het systeem;
        * het testen van het systeem;
        * het onderhouden van het systeem;
        * het verbeteren van het systeem.

- *Deployment*
    + Beschrijft de omgeving waar het systeem uiteindelijk op zal gaan draaien.
    + Beschrijft de afhankelijkheden die het systeem heeft van de omgeving waar het zal gaan draaien.
    + De omschrijving omvat het volgende:
        * De hardware omgeving die het systeem nodig heeft, met name
            - de processing nodes;
            - de verbindingen binnen het netwerk;
            - de vereiste opslag faciliteiten.
        * De technische vereisten voor ieder afzonderlijk element.
        * Een overzicht van hoe de software elementen gelinkt zijn met de runtime environment die ze uitvoert.

- *Operational*
    + Beschrijft hoe het systeem, wanneer het zich in productie bevindt, zal worden
        * bedient;
        * beheert;
        * onderhouden.
    + Het doel van deze view is om systeembrede strategiën te identificeren die gaan over de operationele belangen van de stakeholders van het systeem en om hier oplossingen voor te vinden.

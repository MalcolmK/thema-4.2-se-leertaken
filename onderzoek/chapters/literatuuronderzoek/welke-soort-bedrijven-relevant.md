# Voor wat voor soort bedrijven is Docker relevant?

Dit hoofdstuk gaat wat dieper in op voor welke soort bedrijven Docker relevant is. Voordat een bedrijf het besluit neemt om gebruik te gaan maken van Docker, is het verstandig dat er bekeken wordt of de tijd die in Docker geïnvesteerd wordt, terugverdient kan worden. Aan de hand van de bedrijven die in dit hoofdstuk aangehaald worden samen met een aantal argumenten, moet het mogelijk zijn om te bepalen voor welke bedrijven Docker relevant is.

Zoals uit het hoofdstuk 'Welke bedrijven gebruiken Docker' is gebleken, zijn er veel grote bedrijven die gebruik maken van Docker. Deze bedrijven hebben aangegeven dat zij Docker gebruiken omdat daarmee alle omgevingen gelijk gehouden kunnen worden. Zij gaven daarbij aan dat ze vaak gebruik maakte van veel verschillende soorten software en libraries. Problemen worden vaak veroorzaakt door verschillen in libraries en software.

Deze grote bedrijven hebben vaak ook de benodigde kennis en expertise in huis wat betreft servermanagement. Zij hebben zelf hun servers en ontwikkelomgevingen opgezet en verzorgen ook zelf het onderhoud hiervan.

Dit in tegenstelling tot kleinere bedrijven. Er wordt hierbij wel een onderscheid gemaakt. Wanneer grote bedrijven bekeken worden, blijkt dat zij vaak een dermate grote eigen IT-afdeling hebben, dat deze afdeling bijna een bedrijf op zich genoemd kan worden. Binnen kleinere bedrijven dienen we een onderscheid te maken tussen IT gerelateerde bedrijven en bedrijven die dat niet zijn.

Kleine bedrijven die geen producten leveren op het gebied van IT, maken hier vaak wel gebruik van ter ondersteuning van hun diensten. Deze bedrijven hebben een aantal ontwikkelaars in dienst die voor hen deze ondersteuning verzorgen. Zij hebben vaak geen eigen serverbeheer, maar hebben dit bij een externe partij ondergebracht. Door het extern onder te brengen, hebben zij de servers niet zelf hoeven configureren en updaten. IT gerelateerde bedrijven doen dit, in veel gevallen, juist wel.

Zoals in andere hoofdstukken vermeld, is de leercurve van Docker op zich niet stijl. [[LINK]] Het is vrij eenvoudig om Docker te leren. De moeilijkheidsgraad bij het gebruik van Docker zit in het juist opzetten van de server. Grotere bedrijven, zoals bijv. Ebay, configureren zelf de servers. Kleinere niet IT gerelateerde bedrijven besteden dit vaak uit en beschikken dus niet over de benodigde expertise. Kleinere bedrijven die wel IT gerelateerd zijn, beschikken wel over deze expertise.

Deze laatste groep kleine bedrijven zal dus geen problemen ervaren bij het opzetten en configuren van de server via Docker. Zij dienen echter wel een afweging te maken. Zij dienen zich af te vragen of de investering terugverdient kan worden. Vragen die daarbij kunnen helpen zijn:

- Maken we gebruik van relatief veel verschillende soorten libraries en software?
- Ervaren we momenteel problemen bij ontwikkeling of deployment, die het gevolg zijn van verschillende versies software die gedraaid worden of libraries die ontbreken?
- Heeft ons team een dermate omvang dat het veel tijd kost om overal dezelfde versies van de software en libraries te draaien?
- Beschikken we écht over de benodigde expertises, of hebben we alleen 'wel eens wat ervaring opgedaan'?

Het beantwoorden van dergelijke vragen kan een beter inzicht bij het nemen van de beslissing of Docker wel of niet relevant is voor het bedrijf.

Hieruit kan dus de conclusie getrokken worden, dat Docker in ieder geval relevant is voor grotere bedrijven die gebruik maken van de IT. Voor kleinere bedrijven die niet beschikken over de benodigde expertise voor het opzetten en juist configureren van een server. Voor hen is het dus verstandig om geen gebruik te maken van Docker. De andere groep kleine bedrijven, kan dit het beste zelf bepalen. Voor hen is het sterk afhankelijk van de situatie waar zij zich in bevinden. De bovenstaande vragen kunnen daarbij een hulp zijn.

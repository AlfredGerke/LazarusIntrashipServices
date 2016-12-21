Konfiguration
=============

### settings.ini 
    
* **settings.in_** in **settings.ini** umbenennen
* CIGAuthentifizierung hinterlegen
* Für Testsystem oder Produktivsystem Credentials entsprechend hinterlegen
* Wenn Produktivsystem gewählt wird muss der Ident=test auf 0 (`test=0`) stehen **(aktueller Stand: nicht unterstützt)** 
* URL für Produktiv- und Testsystem eintragen
* Timeouts wenn nötig anpassen **(aktueller Stand: nicht unterstützt)**
* Version für Methoden: **CreateShipment**, **DeleteShipment** und **GetLabel** nur anpassen wenn WS-Version sich ändert

### Entwicklerportal der DHL
Informationen über die Credentials sowie den URLs für das Test- und das Produktivsystem erhält jeder Anwender über das Entwicklerportal der DHL.

* [Entwicklerportal der DHL](https://entwickler.dhl.de/ "Entwicklerportal der DHL")

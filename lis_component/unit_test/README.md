Automatisierter Test für LIS.component
======================================

In diesem Ordner befindet sich ein FPCUnit-Test um einen automatisierten Test für 
die LazarusIntrashipServices Komponenten zur Verfügung zu stellen.

**Inhaltsübersicht:**

- DebugServer
- Zielvorgabe
- Wrapper
- Testfälle
- GUI-Test
- Bugs


DebugServer
-----------
Für den Zeitraum der Entwicklung der Tests für die Komponenten wird der **DebugServer** von Lazarus
verwendet. Beim Start des Tests wird der **DebugServer** automatisch gestartet und der **DebugClient** 
eingerichtet.    
Der **DebugServer** befindet sicht im Archiv: `dbugsrv.zip`.     
Das Archiv muss entpackt werden und die Ausführungsdatei: `dbugsrv.exe` muss im selben Ordner liegen 
wie der Test (`LazarusIntrashipServicesTest.exe`).         
Die Originalsourcen für den **DebugServer** befinden sich unter `$(LazarusDir)\tools\debugserver`. 
Wenn der **DebugServer** neu kompiliert werden soll, muss darauf geachtet werden das die Ausführungsdatei 
den Name: `dbugsrv.exe` erhält. In jedem anderen Fall wird der automatische Start des **DebugServers** 
und das Einrichten des **DebugClients** mit einem Fehler abgebrochen. 
Der Test wird davon aber nicht beeinträchtigt.  


Zielvorgabe
-----------
Die Entwicklung gliedert sich in 5 Teile:

* Anforderungen: [Grobkonzept](https://github.com/AlfredGerke/LazarusIntrashipServices/blob/master/doc/LIS.component.1-0-0.md "https://github.com/AlfredGerke/LazarusIntrashipServices/blob/master/doc/LIS.component.1-0-0.md")        
* Entwurf: [Feinkonzept](https://github.com/AlfredGerke/LazarusIntrashipServices/tree/master/model "https://github.com/AlfredGerke/LazarusIntrashipServices/tree/master/model")           
* Tests entwerfen:      
    * Um die Tests zu erstellen, muss aus dem Feinkonzept eine Grobstruktur der Sourcen erstellt werden      
    * Das Feinkonzept liefert die Vorgaben für die Unit-Tests      
* Implementation:
    * Grobstruktur der Sourcen ausprogrammieren           
* Testen:    
    * Tests anwenden       

Wenn es zu neuen Erkenntnissen während der Implementation kommen sollte, müssen diese zuerst im Entwurf eingeführt werden, 
danach müssen die Tests angepasst werden und erst dann darf mit der Implementierung weiter gemacht werden.


Wrapper
-------
Um das Testen zu vereinfachen, werden die LIS.components nicht direkt sondern über Wrapper getestet. 
Diese Wrapper erhalten zusäztliche Testmethoden die in den Original-Sourcen nicht auftauchen sollen. 


Testfall
--------
Alle Testfälle werden von der Grundklasse: `TLISTestCase` abgeleitet.


GUI-Test
--------
Für GUI-Tests wird eine Beispielanwendung erstellt (s. [Grobkonzept](https://github.com/AlfredGerke/LazarusIntrashipServices/blob/master/doc/LIS.component.1-0-0.md "https://github.com/AlfredGerke/LazarusIntrashipServices/blob/master/doc/LIS.component.1-0-0.md")).


Bugs
----
Für jeden Bug soll ein eigener Testfall eingerichtet werden.
FirstSteps 
==========
(first_steps.exe)

**Inhaltsübersicht:**

- Anmerkung zur neuen Version
- Voraussetzungen
- Einleitung
- Versionen
- settings.ini


Anmerkung zur neuen Version
---------------------------

Erstes Testprogramm um das Web Service Toolkit von [Inoussa OUEDRAOGO](http://inoussa12.googlepages.com/ "Inoussa OUEDRAOGO") zu testen.
Die Anwendung ermöglicht das Anlegen und Löschen einer Sendung über die DHL Geschäftskunden-API (DHL Intraship).


Voraussetzungen
---------------

### Entwicklerportal der DHL
Um Zugangsdaten zum Testsystem für DHL Intraship zu erhalten, muss jeder Entwickler sich auf dem Entwicklerportal der DHL registrieren.

* [Entwicklerportal der DHL](https://entwickler.dhl.de/ "Entwicklerportal der DHL")

Diese Testanwendung wird ohne Zugangdaten für das Testsystem nicht funktionieren. 

### Pfade
Die Pfade für die Sourcen vom Web Service Toolkit und von Synapse sind im Projekt wie folgt eingetragen: `..\..\..\Subversion\lazarus-ccr;..\..\..\Subversion\Synapse`    
Die Einträge müssen entsprechend der lokalen Installation der Packages angepast werden.


Einleitung
----------

Mit diesem Testprojekt wurde sicher gestellt, das mit dem Web Service Toolkit von [Inoussa OUEDRAOGO](http://inoussa12.googlepages.com/ "Inoussa OUEDRAOGO") 
die Geschäftskundenversand-API von DHL-Intraship bearbeitet werden kann.

* Das Testprojekt stellt die Operationen CreateShipmentOrder und DeleteShipmentOrder zur Verfügung    
* CreateShipmentOrder ertellt eine Sendung mit Auftrags-Testdaten wie sie auch in den Beispielprogrammen des DHL Entwicklerportals verwendent werden    
* DeleteShipmentOrder storniert eine Sendung anhand einer Sendungsnummer
* Der Request wie der Response wird im Log angezeigt
* Die erstellte Sendungsnummer wird in einem separaten Feld angezeigt    

## Links zum Web Service Toolkit
* [Web Service Toolkit (Copyright 2006-2014 Inoussa OUEDRAOGO)](https://sites.google.com/site/inoussa12/webservicetoolkitforfpc%26lazarus "Web Service Toolkit (Copyright 2006-2014 Inoussa OUEDRAOGO)")
* [Lazarus Wiki: Web Service Toolkit](http://wiki.lazarus.freepascal.org/index.php/Web_Service_Toolkit "Lazarus Wiki: Web Service Toolkit")

Dieses Testprogramm bildet die Grundlage für die Weiterentwicklung **LIS.component**


Versionen
---------
      
Lazarus: 1.8.2 (DebugServer kompilieren)      
FPC: 3.0.4     
Web Service Toolkit: 0.7   
Synapse: [Trunk-Version](https://svn.code.sf.net/p/synalist/code/trunk "https://svn.code.sf.net/p/synalist/code/trunk")   
OpenSSL: 1.0.2d      

Das Web Service Toolkit bietet neben dem Standard HTTP-Zugriff von FPC zusätzlich den Zugriff über Synapse und Indy an.
In diesem Projekt wird die Netzwerkkommunikation mit [Ararat Synapse](http://synapse.ararat.cz/ "Ararat Synapse") realisiert.
Als SSL-Plugin wird das OpenSSL-Plugin gewählt, da es von Synapse besonders empfohlen wird. Bedingung für das OpenSSL-Plugin sind die entsprechenden Libaries (DLLs genügen).
DLL sowie die Exe des DebugServer müssen im selben Verzeichnis abgelegt werden in dem auch die Anwendungs-Exe (first_steps.exe) liegt.


settings.ini
------------

Im Ordner [./ini/](https://github.com/AlfredGerke/LazarusIntrashipServices/tree/master/ini "https://github.com/AlfredGerke/LazarusIntrashipServices/tree/master/ini") befindet sich eine Vorlage für die **settings.ini** -> **settings.in_** (s. [README.md](https://github.com/AlfredGerke/LazarusIntrashipServices/blob/master/ini/README.md "https://github.com/AlfredGerke/LazarusIntrashipServices/blob/master/ini/README.md")).

Die settings.ini muss im selbern Verzeichnis abgelegt werden in dem auch die Anwendungs-Exe (first_steps.exe liegt).

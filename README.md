***(in Progress: Zielversion LIS 0.9 M1)***

LazarusIntrashipServices (LIS)
=============================

Dieses Testprojekt soll klären, ob mit dem Web Service Toolkit von [Inoussa OUEDRAOGO](http://inoussa12.googlepages.com/ "Inoussa OUEDRAOGO") 
die Geschäftskundenversand-API von DHL-Intraship in ein entsprechendes Projekt unter Lazarus eingebunden werden kann. 

**Inhaltsübersicht:**

- Anmerkung zur neuen Version
- Voraussetzungen
- Einleitung
- Versionen

Anmerkung zur neuen Version
---------------------------

Erstellung der ersten Version.


Voraussetzungen
---------------

### Entwicklerportal der DHL
Um Informationen über die verschiedenen APIs von DHL Intraship zu erhalten, sowie 
Zugang zum Testsystem zu erlangen, muss jeder Entwickler sich auf dem Entwicklerportal registrieren.

* [Entwicklerportal der DHL](https://entwickler.dhl.de/ "Entwicklerportal der DHL")

Diese Testanwendung wird ohne Zugang zum Testsystem nicht funktionieren. 

Allerdings kann man jede Web API durch entsprechende Testsysteme simulieren, was 
aber den logischen Anteil, der bei der Nutzung des Logistikportals zum tragen kommt,
nur unzureichend berücksichtigt.


Einleitung
----------

Dieses Testprojekt soll klären, ob mit dem Web Service Toolkit von [Inoussa OUEDRAOGO](http://inoussa12.googlepages.com/ "Inoussa OUEDRAOGO") 
die Geschäftskundenversand-API von DHL-Intraship in ein entsprechendes Projekt unter Lazarus eingebunden werden kann. 


## Links zum Web Service Toolkit
* [Web Service Toolkit (Copyright 2006-2014 Inoussa OUEDRAOGO)](https://sites.google.com/site/inoussa12/webservicetoolkitforfpc%26lazarus "Web Service Toolkit (Copyright 2006-2014 Inoussa OUEDRAOGO)")
* [Lazarus Wiki: Web Service Toolkit](http://wiki.lazarus.freepascal.org/index.php/Web_Service_Toolkit "Lazarus Wiki: Web Service Toolkit")

Sollte in einem ersten Schritt eine Realisierung mit annehmbarem Aufwand gelungen sein, soll in einem folgendem Schritt
eine Komponente entwickelt werden, über die eine Grundversion der Geschäftskundenversand-API zur Verfügung gestellt werden kann.


Versionen
---------
      
Lazarus: 1.6.2 (DebugServer kompilieren)      
FPC: 3.0.0     
Web Service Toolkit: 0.6   
Synapse: [Trunk-Version](https://svn.code.sf.net/p/synalist/code/trunk "https://svn.code.sf.net/p/synalist/code/trunk")   
OpenSSL: 1.0.2d      

Das Web Service Toolkit bietet neben dem Standard HTTP-Zugriff von FPC zusätzlich den Zugriff über Synapse und Indy an.
In diesem Projekt wird die Netzwerkkommunikation mit [Ararat Synapse](http://synapse.ararat.cz/ "Ararat Synapse") realisiert.
Als SSL-Plugin wird das OpenSSL-Plugin gewählt, da es von Synapse besonders empfohlen wird. Bedingung für das OpenSSL-Plugin sind die entsprechenden Libaries (DLLs genügen). 
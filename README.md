***(in Progress: Zielversion LIS 0.9 M2)***

LazarusIntrashipServices (LIS)
=============================

Mit der [Zielversion LIS 0.9 M2](https://github.com/AlfredGerke/LazarusIntrashipServices/milestone/2 "https://github.com/AlfredGerke/LazarusIntrashipServices/milestone/2") wird eine erste Version einer Komponentensammlung erstellt. 

**Inhaltsübersicht:**

- Anmerkung zur neuen Version
- Voraussetzungen
- LIS.component
- Versionen

Anmerkung zur neuen Version
---------------------------

Mit der Entwicklung zur neuen [Zielversion LIS 0.9 M2](https://github.com/AlfredGerke/LazarusIntrashipServices/milestone/2 "https://github.com/AlfredGerke/LazarusIntrashipServices/milestone/2") wurde ein Refactoring für das Testprogramm FirstSteps (first_steps.exe) erstellt, sowie die Ordnerstruktur angepasst.    
Somit sind M1 und M2 nicht kompatibel zueinander.    

Die einzelnen Aufgaben für die Entwicklung werden in Projekten zusammengefasst.    
Folgende Projekt sind vorhanden:    
* LIS.component: Entwicklung der Komponentenbibliothek
* LIS.test: Unit-Test
* LIS.dll: DLL auf Basis der Komponentenbibliothek (wird erst in [Zielversion LIS 0.9 M3](https://github.com/AlfredGerke/LazarusIntrashipServices/milestone/3 "https://github.com/AlfredGerke/LazarusIntrashipServices/milestone/3") bearbeitet)
* LIS.wiki: Dokumente zusammenfassen, Erklärungen und Codebeispiele
* LIS.bug: Fehler listen und bearbeiten


Voraussetzungen
---------------

* API der [Zielversion LIS 0.9 M1](https://github.com/AlfredGerke/LazarusIntrashipServices/milestone/1 "https://github.com/AlfredGerke/LazarusIntrashipServices/milestone/1")
* Refactored Sourcen im Ordner ./source/ ([Zielversion LIS 0.9 M1](https://github.com/AlfredGerke/LazarusIntrashipServices/milestone/1 "https://github.com/AlfredGerke/LazarusIntrashipServices/milestone/1"))
* [s. README.md](https://github.com/AlfredGerke/LazarusIntrashipServices/blob/master/first_steps/README.md "https://github.com/AlfredGerke/LazarusIntrashipServices/blob/master/first_steps/README.md") 
* Generics.Collection ist ein Port aus Delphi für diverse Listen-Klassen [s. Generics.Collections](https://github.com/dathox/generics.collections "https://github.com/dathox/generics.collections")


[LIS.component](https://github.com/AlfredGerke/LazarusIntrashipServices/projects/1 "https://github.com/AlfredGerke/LazarusIntrashipServices/projects/1")
-------------

Hierbei handelt es sich um das Hauptprojekt. Alle anderen Projekte, bis auf [LIS.dll](https://github.com/AlfredGerke/LazarusIntrashipServices/projects/2 "https://github.com/AlfredGerke/LazarusIntrashipServices/projects/2") sollen diesem Projekt zuarbeiten.
In der [Zielversion LIS 0.9 M3](https://github.com/AlfredGerke/LazarusIntrashipServices/milestone/3 "https://github.com/AlfredGerke/LazarusIntrashipServices/milestone/3") wird LIS.dll zum Hauptprojekt werden.


Versionen
---------
      
Lazarus: 1.8.2 (DebugServer kompilieren)      
FPC: 3.0.4     
Web Service Toolkit: 0.7   
Synapse: [Trunk-Version](https://svn.code.sf.net/p/synalist/code/trunk "https://svn.code.sf.net/p/synalist/code/trunk")   
OpenSSL: 1.0.2d        
Generics.Collections: [Master (GitHub)](https://github.com/dathox/generics.collections "https://github.com/dathox/generics.collections")

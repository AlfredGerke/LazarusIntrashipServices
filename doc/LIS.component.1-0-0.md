Grobkonzept für die LIS.component Version 1.0.0
===============================================

### History
* [Issue #6: Konzept für die erste Version](https://github.com/AlfredGerke/LazarusIntrashipServices/issues/6 "https://github.com/AlfredGerke/LazarusIntrashipServices/issues/6")


### Komponenten  

Version der Geschäftskundenversand-API:    
* 2.0 (WS-Version 2.2)

Absender Addresse:    
* in Deutschland   

Komponenten müssen so aufgebaut werden das zusätzlich Osterreich als Absenderaddresse eingeführt werden kann.    

Verfügbare Produkte:    
* DHL Paket
* DHL Paket Taggleich

Komponenten müssen so aufgebaut werden das zusätzliche Produkte einfach implementiert werden können.    

Verfügbare Methoden:     
* DHL Paket Sendung erstellen (createShipmentOrder)
* DHL Paket Sendung stornieren (deleteShipmentOrder)
* Versandschein für DHL Paket Sendungen abgragen (getLabel)
* DHL Paket Sendungen bearbeiten (updateShipmentOrder)
* DHL Paket Sendung validieren (validateShipment)
 
Komponenten müssen so aufgebaut werden das zusätzliche Methoden einfach implementiert werden können.         
Wenn eine Methode es zulässt, müssen in einem Request mehrere Sendungen erstellt werden können.
 
Verfügbare Services:    
* DHL Paket
    - Nachnahme  
* DHL Paket Taggleich
    - Nachnahme
    
Komponenten müssen so aufgebaut werden, das zusätzliche Services einfach implementiert werden können.         
    
Struktur der Daten:  
* Verbindungsdaten (URLs, Proxy-Einstellungen)  
* Zugangsdaten (Benutzer, Password, Signatur, etc.)
* Auftragsdaten (Produkt, Teilnahme, etc.)   
    - es muss daran gedacht werden das mehrere Teilnahmen pro Kundennummer+Verfahren möglich sind
* Daten für die Services (je nach Service unterschiedlich)
    - z.B. für Nachnahme muss neben Nachnahmebetrag auch eine Bankverbindung des Absenders eingetragen werden 
* Sendungsdaten (Gewicht, Länge, Breite, etc.)
* Versender (Name, Straße, Kontakt, etc.)
* Empfänger (Name, Straße, Kontakt, etc.) 
    - eine Empfängeraddresse kann zusätzlich Daten für eine Packstation, eine Postfiliale oder einen Paketshop enthalten

Komponenten müssen so aufgebaut werden das Daten aus verschiedenen Datenquellen verwendet werden können.    
* z.B.: Alle Daten kommen aus einer Firebird-DB oder aus einer csv-Datei oder aus einer INI-Datei
* z.B.: Zugangsdaten kommen aus einer INI-Datei, sämtliche anderen Daten kommen aus einer Firebrid-DB
* z.B.: Jedem in **Struktur der Daten** aufgeführten Punkt wird eine eigene Datenquelle zugewiesen 


### Testanwendung        
* In der Testanwendung wird die erste Version der LIS.component eingeführt und getestet    
* Die Anwendung wird parallel entwickelt und wächst mit dem Entwicklungsfortschritt der Komponenten


Die Anwendung wird in drei Bereiche aufgeteilt:       
 
    -----------------------------------------------------------------    
    |                              |                                |   
    |    Outline-Bereich           |    Formular-Bereich            |
    |                              |                                |
    |                              |                                |
    |                              |                                |
    |                              |                                |
    |                              |                                |
    |                              |                                |
    |                              |                                |
    |                              |                                |
    |                              |                                |
    |                              |                                |
    |                              |                                |
    |                              |                                |
    |                              |                                |
    |                              |--------------------------------|
    |                              |                                |
    |                              |    Monitor-Bereich             |
    |                              |                                |
    |                              |                                |
    |                              |                                |
    |                              |                                |
    |                              |                                |
    |                              |                                |
    |                              |                                |
    -----------------------------------------------------------------

* Outline-Bereich
    - Navigation
    - Aufruf der notwendigen Formulare
* Formular-Bereich
    - Info: Lazarus Logo, URL des Projektes, Name des Autors, Version der Anwendung, Version der Komponenten 
    - Eingabe der Zugangsdaten (eigenes Formular)
    - Eingabe Auftragsdaten (eigenes Formular)   
    - Services wählen (eigenes Formular)
        - pro gewählten Service müssen zusätzlich Daten editierbar sein (Unterformular) 
    - Eingabe Sendungsdaten (eigenes Formular)
    - Eingabe Versender (eigenes Formular)
    - Eingabe Empfänger (eigenes Formular) 
        - eine Empfängeraddresse kann zusätzlich Daten für eine Packstation, eine Postfiliale oder einen Paketshop enthalten (Unterformular)
    - Methoden gemäß gewählten Produkt aufrufen (eigenes Formular)
        - Methoden wie z.B. **DHL Paket Sendung stornieren (deleteShipmentOrder)** oder **Versandschein für DHL Paket Sendungen abgragen (getLabel)** benötigen ein Feld für die Sendungsnummer      
* Monitor-Bereich
    - eigenes Formular
    - ein einzeiliges Feld für die Sendungsnummer
    - ein mehrzeiliges Feld um sämtliche Meldungen aus der Anwendung anzuzeigen
        - besonders der Request und der Response sollen hier ausführlich aufgelistet werden  

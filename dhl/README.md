DHL-Intraship WSDL-Datei 
========================

Der WSDL-Importer unterstützt nicht den direkten Aufruf zur WSDL-Datei von DHL-Intraship.
Die folgenden Dateien wurden manuelle heruntergeladen:

**Inhaltsübersicht:**    

- geschaeftskundenversand-api-1.0.wsdl
- is_base_de.xsd    
- cis_base.xsd    

Die URLs für [is_base_de.xsd](dhl/is_base_de.xsd "is_base_de.xsd") und [cis_base.xsd](dhl/cis_base.xsd "cis_base.xsd") wurden für einen lokalen Aufruf angepasst.

In [cis_base.xsd](dhl/cis_base.xsd "cis_base.xsd") wurden für zwei complexe Typen das Note-Element mit dem simple Type: String erweitert,
da das Fehlen dieser Erweiterung zu einem Fehler während des WSDL-Importes geführt hat.

Zum Ende des WSDL-Importes wird die Meldung ausgegeben das die Unit: **geschaeftskundenversand-api-1.0** nicht gefunden wurde.
Diese Meldung erscheint zum Ende des Importes und scheint keine weiteren Fehler zu verursachen.
Der Grund liegt eventuell im Namen der Datei, der aber nicht beim Import geändert werden sollte da er auch
inhernter Bestandteil der Aufruf-URL für den Webservice ist und an diversen Stellen im generierten 
Code eingebunden wird.  

Die generierten Units mit dem Namensanteil: **geschaeftskundenversand-api-1.0** wurden manuell in **geschaeftskundenversand_api_1_0** geändert.            
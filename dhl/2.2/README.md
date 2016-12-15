DHL-Intraship WSDL-Datei (V 2.2) 
================================

Der WSDL-Importer unterstützt nicht den direkten Aufruf zur WSDL-Datei von DHL-Intraship.
Die folgenden Dateien wurden manuelle heruntergeladen:

**Inhaltsübersicht:**
- Link     
- geschaeftskundenversand-api-2.2.wsdl
- geschaeftskundenversand-api-2.2-schema-bcs_base.xsd    
- geschaeftskundenversand-api-2.2-schema-cis_base.xsd    

**Link (Stand 2016-12-14):
* geschaeftskundenversand-api/2.2/ (https://cig.dhl.de/cig-wsdls/com/dpdhl/wsdl/geschaeftskundenversand-api/2.2/ "https://cig.dhl.de/cig-wsdls/com/dpdhl/wsdl/geschaeftskundenversand-api/2.2/")

**!<-- Muss überarbeitet werden
Die URLs für [is_base_de.xsd](is_base_de.xsd "is_base_de.xsd") und [cis_base.xsd](cis_base.xsd "cis_base.xsd") wurden für einen lokalen Aufruf angepasst.

In [geschaeftskundenversand-api-2.2-schema-cis_base.xsd](geschaeftskundenversand-api-2.2-schema-cis_base.xsd "geschaeftskundenversand-api-2.2-schema-cis_base.xsd") wurden für einen complexen Typen das Note-Element mit dem simple Type: String erweitert,
da das Fehlen dieser Erweiterung zu einem Fehler während des WSDL-Importes geführt hat.

**!<-- Muss überarbeitet werden
Zum Ende des WSDL-Importes wird die Meldung ausgegeben das die Unit: **geschaeftskundenversand-api-1.0** nicht gefunden wurde.
Diese Meldung erscheint zum Ende des Importes und scheint keine weiteren Fehler zu verursachen.
Der Grund liegt eventuell im Namen der Datei, der aber nicht beim Import geändert werden sollte da er auch
inhernter Bestandteil der Aufruf-URL für den Webservice ist und an diversen Stellen im generierten 
Code eingebunden wird.  

**!<-- Muss überarbeitet werden
Die generierten Units mit dem Namensanteil: **geschaeftskundenversand-api-1.0** wurden manuell in **geschaeftskundenversand_api_1_0** geändert.            

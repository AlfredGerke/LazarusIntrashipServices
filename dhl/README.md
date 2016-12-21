DHL-Intraship WSDL-Datei (V 2.2) 
================================

Der WSDL-Importer unterstützt nicht den direkten Aufruf zur WSDL-Datei von DHL-Intraship.
Die folgenden Dateien wurden manuelle heruntergeladen:

**Inhaltsübersicht:**
- Link     
- geschaeftskundenversand-api-2.2.wsdl
- geschaeftskundenversand-api-2.2-schema-bcs_base.xsd    
- geschaeftskundenversand-api-2.2-schema-cis_base.xsd    

**Link (Stand 2016-12-14):**
* [geschaeftskundenversand-api/2.2/](https://cig.dhl.de/cig-wsdls/com/dpdhl/wsdl/geschaeftskundenversand-api/2.2/ "https://cig.dhl.de/cig-wsdls/com/dpdhl/wsdl/geschaeftskundenversand-api/2.2/")    

In [geschaeftskundenversand-api-2.2-schema-cis_base.xsd](geschaeftskundenversand-api-2.2-schema-cis_base.xsd "geschaeftskundenversand-api-2.2-schema-cis_base.xsd") wurden für einen complexen Typen das Note-Element mit dem simple Type: String erweitert,
da das Fehlen dieser Erweiterung zu einem Fehler während des WSDL-Importes geführt hat.

Die generierten Units mit dem Namensanteil: **geschaeftskundenversand-api-2.2** wurden manuell in **geschaeftskundenversand_api_2_2** geändert.    
In der `geschaeftskundenversand_api_2_2.wst` wurde die Ressource **geschaeftskundenversand-api-2.2** manuell in **geschaeftskundenversand_api_2_2** geändert. 

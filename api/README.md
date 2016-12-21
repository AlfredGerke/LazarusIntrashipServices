Geschäftskundenversand-API 
==========================

Der WSDL-Importer erstellt aufgrund der WSDL-Datei folgende Units:    
* geschaeftskundenversand_api_2_2.pas
* geschaeftskundenversand_api_2_2.wst
* geschaeftskundenversand_api_2_2_proxy.pas
* geschaeftskundenversand_api_2_2_schema_cis_base.pas

### Namenskonvention     
Die generierten Units mit dem Namensanteil: `geschaeftskundenversand-api-2.2` wurden manuell in `geschaeftskundenversand_api_2_2` geändert.    
In der `geschaeftskundenversand_api_2_2.wst` wurde die Ressource `geschaeftskundenversand-api-2.2` manuell in `geschaeftskundenversand_api_2_2` geändert.

### Problem cisbase-Namespace     
Der cisbase-Namespace muss an zwei Stellen in ein Element eingearbeitet werden welches den webservice-Namespace besitzt. 
Zu diesem Zweck wurden die Typen: `ShipmentDetailsTypeCISBase` und `ReceiverTypeTypeCISBase` eingeführt und für den cisbase-Namespace registriert.
Die Type für den cisbase-Namespace werden in der Unit `geschaeftskundenversand_api_2_2_schema_cis_base.pas` eingeführt.
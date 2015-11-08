{
This unit has been produced by ws_helper.
  Input unit name : "geschaeftskundenversand-api-1.0".
  This unit name  : "geschaeftskundenversand-api-1.0".
  Date            : "08.11.2015 00:56:36".
}
unit geschaeftskundenversand_api_1_0;
{$IFDEF FPC}
  {$mode objfpc} {$H+}
{$ENDIF}
{$DEFINE WST_RECORD_RTTI}
interface

uses SysUtils, Classes, TypInfo, base_service_intf, service_intf,
     cis_base, is_base_de;

const
  sNAME_SPACE = 'http://de.ws.intrashipservice';
  sUNIT_NAME = 'geschaeftskundenversand-api-1.0';

type


  ISWSServicePortType = interface(IInvokable)
    ['{1D4E3254-E953-48AA-A1CD-0AD376F6F8F6}']
    function createShipmentTD(
      const  CreateShipmentTDRequestParam : CreateShipmentTDRequest
    ):CreateShipmentResponse;
    function createShipmentDD(
      const  CreateShipmentDDRequestParam : CreateShipmentDDRequest
    ):CreateShipmentResponse;
    function deleteShipmentTD(
      const  DeleteShipmentTDRequestParam : DeleteShipmentTDRequest
    ):DeleteShipmentResponse;
    function deleteShipmentDD(
      const  DeleteShipmentDDRequestParam : DeleteShipmentDDRequest
    ):DeleteShipmentResponse;
    function doManifestTD(
      const  DoManifestTDRequestParam : DoManifestTDRequest
    ):DoManifestResponse;
    function doManifestDD(
      const  DoManifestDDRequestParam : DoManifestDDRequest
    ):DoManifestResponse;
    function getLabelTD(
      const  GetLabelTDRequestParam : GetLabelTDRequest
    ):GetLabelResponse;
    function getLabelDD(
      const  GetLabelDDRequestParam : GetLabelDDRequest
    ):GetLabelResponse;
    function bookPickup(
      const  BookPickupRequestParam : BookPickupRequest
    ):BookPickupResponse;
    function cancelPickup(
      const  CancelPickupRequestParam : CancelPickupRequest
    ):CancelPickupResponse;
    function getVersion(
      const  VersionParam : Version_Type
    ):GetVersionResponse;
    function getExportDocTD(
      const  GetExportDocTDRequestParam : GetExportDocTDRequest
    ):GetExportDocResponse;
    function getExportDocDD(
      const  GetExportDocDDRequestParam : GetExportDocDDRequest
    ):GetExportDocResponse;
    function getManifestDD(
      const  GetManifestDDRequestParam : GetManifestDDRequest
    ):GetManifestDDResponse;
    function updateShipmentDD(
      const  UpdateShipmentDDRequestParam : UpdateShipmentDDRequest
    ):UpdateShipmentResponse;
  end;

  procedure Register_geschaeftskundenversand_api_1_0_ServiceMetadata();

Implementation
uses metadata_repository, record_rtti, wst_types;


procedure Register_geschaeftskundenversand_api_1_0_ServiceMetadata();
var
  mm : IModuleMetadataMngr;
begin
  mm := GetModuleMetadataMngr();
  mm.SetRepositoryNameSpace(sUNIT_NAME, sNAME_SPACE);
  mm.SetRepositoryCustomData(sUNIT_NAME, 'elementFormDefault', 'unqualified');
  mm.SetRepositoryCustomData(sUNIT_NAME, 'attributeFormDefault', 'unqualified');
  mm.SetServiceCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'TRANSPORT_Address',
    'https://cig.dhl.de/services/production/soap'
  );
  mm.SetServiceCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'FORMAT_Style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'createShipmentTD',
    '_E_N_',
    'createShipmentTD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'createShipmentTD',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'createShipmentTD',
    'TRANSPORT_soapAction',
    'urn:createShipmentTD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'createShipmentTD',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'createShipmentTD',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'createShipmentDD',
    '_E_N_',
    'createShipmentDD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'createShipmentDD',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'createShipmentDD',
    'TRANSPORT_soapAction',
    'urn:createShipmentDD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'createShipmentDD',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'createShipmentDD',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'deleteShipmentTD',
    '_E_N_',
    'deleteShipmentTD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'deleteShipmentTD',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'deleteShipmentTD',
    'TRANSPORT_soapAction',
    'urn:deleteShipmentTD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'deleteShipmentTD',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'deleteShipmentTD',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'deleteShipmentDD',
    '_E_N_',
    'deleteShipmentDD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'deleteShipmentDD',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'deleteShipmentDD',
    'TRANSPORT_soapAction',
    'urn:deleteShipmentDD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'deleteShipmentDD',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'deleteShipmentDD',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'doManifestTD',
    '_E_N_',
    'doManifestTD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'doManifestTD',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'doManifestTD',
    'TRANSPORT_soapAction',
    'urn:doManifestTD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'doManifestTD',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'doManifestTD',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'doManifestDD',
    '_E_N_',
    'doManifestDD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'doManifestDD',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'doManifestDD',
    'TRANSPORT_soapAction',
    'urn:doManifestDD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'doManifestDD',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'doManifestDD',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getLabelTD',
    '_E_N_',
    'getLabelTD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getLabelTD',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getLabelTD',
    'TRANSPORT_soapAction',
    'urn:getLabelTD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getLabelTD',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getLabelTD',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getLabelDD',
    '_E_N_',
    'getLabelDD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getLabelDD',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getLabelDD',
    'TRANSPORT_soapAction',
    'urn:getLabelDD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getLabelDD',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getLabelDD',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'bookPickup',
    '_E_N_',
    'bookPickup'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'bookPickup',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'bookPickup',
    'TRANSPORT_soapAction',
    'urn:bookPickup'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'bookPickup',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'bookPickup',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'cancelPickup',
    '_E_N_',
    'cancelPickup'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'cancelPickup',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'cancelPickup',
    'TRANSPORT_soapAction',
    'urn:cancelPickup'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'cancelPickup',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'cancelPickup',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getVersion',
    '_E_N_',
    'getVersion'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getVersion',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getVersion',
    'TRANSPORT_soapAction',
    'urn:getVersion'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getVersion',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getVersion',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getExportDocTD',
    '_E_N_',
    'getExportDocTD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getExportDocTD',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getExportDocTD',
    'TRANSPORT_soapAction',
    'urn:getExportDocTD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getExportDocTD',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getExportDocTD',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getExportDocDD',
    '_E_N_',
    'getExportDocDD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getExportDocDD',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getExportDocDD',
    'TRANSPORT_soapAction',
    'urn:getExportDocDD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getExportDocDD',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getExportDocDD',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getManifestDD',
    '_E_N_',
    'getManifestDD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getManifestDD',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getManifestDD',
    'TRANSPORT_soapAction',
    'urn:getManifestDD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getManifestDD',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'getManifestDD',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'updateShipmentDD',
    '_E_N_',
    'updateShipmentDD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'updateShipmentDD',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'updateShipmentDD',
    'TRANSPORT_soapAction',
    'urn:updateShipmentDD'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'updateShipmentDD',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'ISWSServicePortType',
    'updateShipmentDD',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
end;


var
  typeRegistryInstance : TTypeRegistry = nil;
initialization
  typeRegistryInstance := GetTypeRegistry();




End.

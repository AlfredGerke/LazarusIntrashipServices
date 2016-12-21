{
This unit has been produced by ws_helper.
  Input unit name : "geschaeftskundenversand-api-2.2".
  This unit name  : "geschaeftskundenversand-api-2.2_proxy".
  Date            : "14.12.2016 12:51:16".
}

Unit geschaeftskundenversand_api_2_2_proxy;
{$IFDEF FPC} {$mode objfpc}{$H+} {$ENDIF}
Interface

Uses SysUtils, Classes, TypInfo, base_service_intf, service_intf, geschaeftskundenversand_api_2_2,
     geschaeftskundenversand_api_2_2_schema_cis_base;

Type


  TGKVAPIServicePortType_Proxy=class(TBaseProxy,geschaeftskundenversand_api_2_2.GKVAPIServicePortType)
  Protected
    class function GetServiceType() : PTypeInfo;override;
    function createShipmentOrder(
      const  CreateShipmentOrderRequestParam : CreateShipmentOrderRequest
    ):CreateShipmentOrderResponse;
    function validateShipment(
      const  ValidateShipmentOrderRequestParam : ValidateShipmentOrderRequest
    ):ValidateShipmentResponse;
    function deleteShipmentOrder(
      const  DeleteShipmentOrderRequestParam : DeleteShipmentOrderRequest
    ):DeleteShipmentOrderResponse;
    function doManifest(
      const  DoManifestRequestParam : DoManifestRequest
    ):DoManifestResponse;
    function getLabel(
      const  GetLabelRequestParam : GetLabelRequest
    ):GetLabelResponse;
    function getVersion(
      const  VersionParam : geschaeftskundenversand_api_2_2.Version_Type
    ):GetVersionResponse;
    function getExportDoc(
      const  GetExportDocRequestParam : GetExportDocRequest
    ):GetExportDocResponse;
    function getManifest(
      const  GetManifestRequestParam : GetManifestRequest
    ):GetManifestResponse;
    function updateShipmentOrder(
      const  UpdateShipmentOrderRequestParam : UpdateShipmentOrderRequest
    ):UpdateShipmentOrderResponse;
  End;

  Function wst_CreateInstance_GKVAPIServicePortType(const AFormat : string = 'SOAP:'; const ATransport : string = 'HTTP:'; const AAddress : string = ''):GKVAPIServicePortType;

Implementation
uses wst_resources_imp, metadata_repository;


Function wst_CreateInstance_GKVAPIServicePortType(const AFormat : string; const ATransport : string; const AAddress : string):GKVAPIServicePortType;
Var
  locAdr : string;
Begin
  locAdr := AAddress;
  if ( locAdr = '' ) then
    locAdr := GetServiceDefaultAddress(TypeInfo(GKVAPIServicePortType));
  Result := TGKVAPIServicePortType_Proxy.Create('GKVAPIServicePortType',AFormat+GetServiceDefaultFormatProperties(TypeInfo(GKVAPIServicePortType)),ATransport + 'address=' + locAdr);
End;

{ TGKVAPIServicePortType_Proxy implementation }

class function TGKVAPIServicePortType_Proxy.GetServiceType() : PTypeInfo;
begin
  result := TypeInfo(geschaeftskundenversand_api_2_2.GKVAPIServicePortType);
end;

function TGKVAPIServicePortType_Proxy.createShipmentOrder(
  const  CreateShipmentOrderRequestParam : CreateShipmentOrderRequest
):CreateShipmentOrderResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('createShipmentOrder', GetTarget(),locCallContext);
      locSerializer.Put('CreateShipmentOrderRequest', TypeInfo(CreateShipmentOrderRequest), CreateShipmentOrderRequestParam);
    locSerializer.EndCall();

    MakeCall();

    locSerializer.BeginCallRead(locCallContext);
      Result := Nil;
      locStrPrmName := 'CreateShipmentOrderResponse';
      locSerializer.Get(TypeInfo(CreateShipmentOrderResponse), locStrPrmName, Result);

  Finally
    locSerializer.Clear();
  End;
End;

function TGKVAPIServicePortType_Proxy.validateShipment(
  const  ValidateShipmentOrderRequestParam : ValidateShipmentOrderRequest
):ValidateShipmentResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('validateShipment', GetTarget(),locCallContext);
      locSerializer.Put('ValidateShipmentOrderRequest', TypeInfo(ValidateShipmentOrderRequest), ValidateShipmentOrderRequestParam);
    locSerializer.EndCall();

    MakeCall();

    locSerializer.BeginCallRead(locCallContext);
      Result := Nil;
      locStrPrmName := 'ValidateShipmentResponse';
      locSerializer.Get(TypeInfo(ValidateShipmentResponse), locStrPrmName, Result);

  Finally
    locSerializer.Clear();
  End;
End;

function TGKVAPIServicePortType_Proxy.deleteShipmentOrder(
  const  DeleteShipmentOrderRequestParam : DeleteShipmentOrderRequest
):DeleteShipmentOrderResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('deleteShipmentOrder', GetTarget(),locCallContext);
      locSerializer.Put('DeleteShipmentOrderRequest', TypeInfo(DeleteShipmentOrderRequest), DeleteShipmentOrderRequestParam);
    locSerializer.EndCall();

    MakeCall();

    locSerializer.BeginCallRead(locCallContext);
      Result := Nil;
      locStrPrmName := 'DeleteShipmentOrderResponse';
      locSerializer.Get(TypeInfo(DeleteShipmentOrderResponse), locStrPrmName, Result);

  Finally
    locSerializer.Clear();
  End;
End;

function TGKVAPIServicePortType_Proxy.doManifest(
  const  DoManifestRequestParam : DoManifestRequest
):DoManifestResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('doManifest', GetTarget(),locCallContext);
      locSerializer.Put('DoManifestRequest', TypeInfo(DoManifestRequest), DoManifestRequestParam);
    locSerializer.EndCall();

    MakeCall();

    locSerializer.BeginCallRead(locCallContext);
      Result := Nil;
      locStrPrmName := 'DoManifestResponse';
      locSerializer.Get(TypeInfo(DoManifestResponse), locStrPrmName, Result);

  Finally
    locSerializer.Clear();
  End;
End;

function TGKVAPIServicePortType_Proxy.getLabel(
  const  GetLabelRequestParam : GetLabelRequest
):GetLabelResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('getLabel', GetTarget(),locCallContext);
      locSerializer.Put('GetLabelRequest', TypeInfo(GetLabelRequest), GetLabelRequestParam);
    locSerializer.EndCall();

    MakeCall();

    locSerializer.BeginCallRead(locCallContext);
      Result := Nil;
      locStrPrmName := 'GetLabelResponse';
      locSerializer.Get(TypeInfo(GetLabelResponse), locStrPrmName, Result);

  Finally
    locSerializer.Clear();
  End;
End;

function TGKVAPIServicePortType_Proxy.getVersion(
  const  VersionParam : geschaeftskundenversand_api_2_2.Version_Type
):GetVersionResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('getVersion', GetTarget(),locCallContext);
      locSerializer.Put('Version', TypeInfo(Version_Type), VersionParam);
    locSerializer.EndCall();

    MakeCall();

    locSerializer.BeginCallRead(locCallContext);
      Result := Nil;
      locStrPrmName := 'GetVersionResponse';
      locSerializer.Get(TypeInfo(GetVersionResponse), locStrPrmName, Result);

  Finally
    locSerializer.Clear();
  End;
End;

function TGKVAPIServicePortType_Proxy.getExportDoc(
  const  GetExportDocRequestParam : GetExportDocRequest
):GetExportDocResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('getExportDoc', GetTarget(),locCallContext);
      locSerializer.Put('GetExportDocRequest', TypeInfo(GetExportDocRequest), GetExportDocRequestParam);
    locSerializer.EndCall();

    MakeCall();

    locSerializer.BeginCallRead(locCallContext);
      Result := Nil;
      locStrPrmName := 'GetExportDocResponse';
      locSerializer.Get(TypeInfo(GetExportDocResponse), locStrPrmName, Result);

  Finally
    locSerializer.Clear();
  End;
End;

function TGKVAPIServicePortType_Proxy.getManifest(
  const  GetManifestRequestParam : GetManifestRequest
):GetManifestResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('getManifest', GetTarget(),locCallContext);
      locSerializer.Put('GetManifestRequest', TypeInfo(GetManifestRequest), GetManifestRequestParam);
    locSerializer.EndCall();

    MakeCall();

    locSerializer.BeginCallRead(locCallContext);
      Result := Nil;
      locStrPrmName := 'GetManifestResponse';
      locSerializer.Get(TypeInfo(GetManifestResponse), locStrPrmName, Result);

  Finally
    locSerializer.Clear();
  End;
End;

function TGKVAPIServicePortType_Proxy.updateShipmentOrder(
  const  UpdateShipmentOrderRequestParam : UpdateShipmentOrderRequest
):UpdateShipmentOrderResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('updateShipmentOrder', GetTarget(),locCallContext);
      locSerializer.Put('UpdateShipmentOrderRequest', TypeInfo(UpdateShipmentOrderRequest), UpdateShipmentOrderRequestParam);
    locSerializer.EndCall();

    MakeCall();

    locSerializer.BeginCallRead(locCallContext);
      Result := Nil;
      locStrPrmName := 'UpdateShipmentOrderResponse';
      locSerializer.Get(TypeInfo(UpdateShipmentOrderResponse), locStrPrmName, Result);

  Finally
    locSerializer.Clear();
  End;
End;


initialization
  {$i geschaeftskundenversand_api_2_2.wst}

  {$IF DECLARED(Register_geschaeftskundenversand_api_2_2_ServiceMetadata)}
  Register_geschaeftskundenversand_api_2_2_ServiceMetadata();
  {$IFEND}
End.

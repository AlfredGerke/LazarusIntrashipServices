{
This unit has been produced by ws_helper.
  Input unit name : "geschaeftskundenversand-api-1.0".
  This unit name  : "geschaeftskundenversand-api-1.0_proxy".
  Date            : "08.11.2015 00:56:36".
}

Unit geschaeftskundenversand_api_1_0_proxy;
{$IFDEF FPC} {$mode objfpc}{$H+} {$ENDIF}
Interface

Uses SysUtils, Classes, TypInfo, base_service_intf, service_intf, geschaeftskundenversand_api_1_0,
     cis_base, is_base_de;

Type


  TSWSServicePortType_Proxy=class(TBaseProxy,geschaeftskundenversand_api_1_0.ISWSServicePortType)
  Protected
    class function GetServiceType() : PTypeInfo;override;
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
  End;

  Function wst_CreateInstance_ISWSServicePortType(const AFormat : string = 'SOAP:'; const ATransport : string = 'HTTP:'; const AAddress : string = ''):ISWSServicePortType;

Implementation
uses wst_resources_imp, metadata_repository;


Function wst_CreateInstance_ISWSServicePortType(const AFormat : string; const ATransport : string; const AAddress : string):ISWSServicePortType;
Var
  locAdr : string;
Begin
  locAdr := AAddress;
  if ( locAdr = '' ) then
    locAdr := GetServiceDefaultAddress(TypeInfo(ISWSServicePortType));
  Result := TSWSServicePortType_Proxy.Create('ISWSServicePortType',AFormat+GetServiceDefaultFormatProperties(TypeInfo(ISWSServicePortType)),ATransport + 'address=' + locAdr);
End;

{ TSWSServicePortType_Proxy implementation }

class function TSWSServicePortType_Proxy.GetServiceType() : PTypeInfo;
begin
  result := TypeInfo(geschaeftskundenversand_api_1_0.ISWSServicePortType);
end;

function TSWSServicePortType_Proxy.createShipmentTD(
  const  CreateShipmentTDRequestParam : CreateShipmentTDRequest
):CreateShipmentResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('createShipmentTD', GetTarget(),locCallContext);
      locSerializer.Put('CreateShipmentTDRequest', TypeInfo(CreateShipmentTDRequest), CreateShipmentTDRequestParam);
    locSerializer.EndCall();

    MakeCall();

    locSerializer.BeginCallRead(locCallContext);
      Result := Nil;
      locStrPrmName := 'CreateShipmentResponse';
      locSerializer.Get(TypeInfo(CreateShipmentResponse), locStrPrmName, Result);

  Finally
    locSerializer.Clear();
  End;
End;

function TSWSServicePortType_Proxy.createShipmentDD(
  const  CreateShipmentDDRequestParam : CreateShipmentDDRequest
):CreateShipmentResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('createShipmentDD', GetTarget(),locCallContext);
      locSerializer.Put('CreateShipmentDDRequest', TypeInfo(CreateShipmentDDRequest), CreateShipmentDDRequestParam);
    locSerializer.EndCall();

    MakeCall();

    locSerializer.BeginCallRead(locCallContext);
      Result := Nil;
      locStrPrmName := 'CreateShipmentResponse';
      locSerializer.Get(TypeInfo(CreateShipmentResponse), locStrPrmName, Result);

  Finally
    locSerializer.Clear();
  End;
End;

function TSWSServicePortType_Proxy.deleteShipmentTD(
  const  DeleteShipmentTDRequestParam : DeleteShipmentTDRequest
):DeleteShipmentResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('deleteShipmentTD', GetTarget(),locCallContext);
      locSerializer.Put('DeleteShipmentTDRequest', TypeInfo(DeleteShipmentTDRequest), DeleteShipmentTDRequestParam);
    locSerializer.EndCall();

    MakeCall();

    locSerializer.BeginCallRead(locCallContext);
      Result := Nil;
      locStrPrmName := 'DeleteShipmentResponse';
      locSerializer.Get(TypeInfo(DeleteShipmentResponse), locStrPrmName, Result);

  Finally
    locSerializer.Clear();
  End;
End;

function TSWSServicePortType_Proxy.deleteShipmentDD(
  const  DeleteShipmentDDRequestParam : DeleteShipmentDDRequest
):DeleteShipmentResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('deleteShipmentDD', GetTarget(),locCallContext);
      locSerializer.Put('DeleteShipmentDDRequest', TypeInfo(DeleteShipmentDDRequest), DeleteShipmentDDRequestParam);
    locSerializer.EndCall();

    MakeCall();

    locSerializer.BeginCallRead(locCallContext);
      Result := Nil;
      locStrPrmName := 'DeleteShipmentResponse';
      locSerializer.Get(TypeInfo(DeleteShipmentResponse), locStrPrmName, Result);

  Finally
    locSerializer.Clear();
  End;
End;

function TSWSServicePortType_Proxy.doManifestTD(
  const  DoManifestTDRequestParam : DoManifestTDRequest
):DoManifestResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('doManifestTD', GetTarget(),locCallContext);
      locSerializer.Put('DoManifestTDRequest', TypeInfo(DoManifestTDRequest), DoManifestTDRequestParam);
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

function TSWSServicePortType_Proxy.doManifestDD(
  const  DoManifestDDRequestParam : DoManifestDDRequest
):DoManifestResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('doManifestDD', GetTarget(),locCallContext);
      locSerializer.Put('DoManifestDDRequest', TypeInfo(DoManifestDDRequest), DoManifestDDRequestParam);
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

function TSWSServicePortType_Proxy.getLabelTD(
  const  GetLabelTDRequestParam : GetLabelTDRequest
):GetLabelResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('getLabelTD', GetTarget(),locCallContext);
      locSerializer.Put('GetLabelTDRequest', TypeInfo(GetLabelTDRequest), GetLabelTDRequestParam);
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

function TSWSServicePortType_Proxy.getLabelDD(
  const  GetLabelDDRequestParam : GetLabelDDRequest
):GetLabelResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('getLabelDD', GetTarget(),locCallContext);
      locSerializer.Put('GetLabelDDRequest', TypeInfo(GetLabelDDRequest), GetLabelDDRequestParam);
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

function TSWSServicePortType_Proxy.bookPickup(
  const  BookPickupRequestParam : BookPickupRequest
):BookPickupResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('bookPickup', GetTarget(),locCallContext);
      locSerializer.Put('BookPickupRequest', TypeInfo(BookPickupRequest), BookPickupRequestParam);
    locSerializer.EndCall();

    MakeCall();

    locSerializer.BeginCallRead(locCallContext);
      Result := Nil;
      locStrPrmName := 'BookPickupResponse';
      locSerializer.Get(TypeInfo(BookPickupResponse), locStrPrmName, Result);

  Finally
    locSerializer.Clear();
  End;
End;

function TSWSServicePortType_Proxy.cancelPickup(
  const  CancelPickupRequestParam : CancelPickupRequest
):CancelPickupResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('cancelPickup', GetTarget(),locCallContext);
      locSerializer.Put('CancelPickupRequest', TypeInfo(CancelPickupRequest), CancelPickupRequestParam);
    locSerializer.EndCall();

    MakeCall();

    locSerializer.BeginCallRead(locCallContext);
      Result := Nil;
      locStrPrmName := 'CancelPickupResponse';
      locSerializer.Get(TypeInfo(CancelPickupResponse), locStrPrmName, Result);

  Finally
    locSerializer.Clear();
  End;
End;

function TSWSServicePortType_Proxy.getVersion(
  const  VersionParam : Version_Type
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

function TSWSServicePortType_Proxy.getExportDocTD(
  const  GetExportDocTDRequestParam : GetExportDocTDRequest
):GetExportDocResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('getExportDocTD', GetTarget(),locCallContext);
      locSerializer.Put('GetExportDocTDRequest', TypeInfo(GetExportDocTDRequest), GetExportDocTDRequestParam);
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

function TSWSServicePortType_Proxy.getExportDocDD(
  const  GetExportDocDDRequestParam : GetExportDocDDRequest
):GetExportDocResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('getExportDocDD', GetTarget(),locCallContext);
      locSerializer.Put('GetExportDocDDRequest', TypeInfo(GetExportDocDDRequest), GetExportDocDDRequestParam);
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

function TSWSServicePortType_Proxy.getManifestDD(
  const  GetManifestDDRequestParam : GetManifestDDRequest
):GetManifestDDResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('getManifestDD', GetTarget(),locCallContext);
      locSerializer.Put('GetManifestDDRequest', TypeInfo(GetManifestDDRequest), GetManifestDDRequestParam);
    locSerializer.EndCall();

    MakeCall();

    locSerializer.BeginCallRead(locCallContext);
      Result := Nil;
      locStrPrmName := 'GetManifestDDResponse';
      locSerializer.Get(TypeInfo(GetManifestDDResponse), locStrPrmName, Result);

  Finally
    locSerializer.Clear();
  End;
End;

function TSWSServicePortType_Proxy.updateShipmentDD(
  const  UpdateShipmentDDRequestParam : UpdateShipmentDDRequest
):UpdateShipmentResponse;
Var
  locSerializer : IFormatterClient;
  locCallContext : ICallContext;
  locStrPrmName : string;
Begin
  locCallContext := Self as ICallContext;
  locSerializer := GetSerializer();
  Try
    locSerializer.BeginCall('updateShipmentDD', GetTarget(),locCallContext);
      locSerializer.Put('UpdateShipmentDDRequest', TypeInfo(UpdateShipmentDDRequest), UpdateShipmentDDRequestParam);
    locSerializer.EndCall();

    MakeCall();

    locSerializer.BeginCallRead(locCallContext);
      Result := Nil;
      locStrPrmName := 'UpdateShipmentResponse';
      locSerializer.Get(TypeInfo(UpdateShipmentResponse), locStrPrmName, Result);

  Finally
    locSerializer.Clear();
  End;
End;


initialization
  {$i geschaeftskundenversand_api_1_0.wst}

  {$IF DECLARED(Register_geschaeftskundenversand_api_1_0_ServiceMetadata)}
  Register_geschaeftskundenversand_api_1_0_ServiceMetadata();
  {$IFEND}
End.

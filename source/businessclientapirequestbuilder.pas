unit BusinessClientAPIRequestBuilder;

{$mode delphi}{$H+}

interface

uses
  geschaeftskundenversand_api_2_2,
  geschaeftskundenversand_api_2_2_schema_cis_base,
  IntrashipServicesTypes;

type

  { TBusinessClientAPIRequestBuilder }

  TBusinessClientAPIRequestBuilder = class
  private
    FConfigSettings: TConfigSettings;
    FOrderData: TOrderData;

    function GetReceiverCommunicationType: CommunicationType;
    function GetReceiverNativeAddressType: ReceiverNativeAddressType;
    function GetReceiverCompany: name1_Type;
    function GetShipperCommunicationType: CommunicationType;
    function GetShipperNativeAddressType: NativeAddressType;
    function GetShipperCompany: NameType;
    function GetBankType: BankType;
    procedure SetShipmentSerciceCOD(AShipmentService: ShipmentService);
    procedure SetShipmentItemType(AShipmentItemType: ShipmentItemTypeType);
    function GetShipmentDetails(AShipmentItemNr: integer): ShipmentDetailsTypeType;
    function GetVersion(AActor: TCustomActorTypes): geschaeftskundenversand_api_2_2.Version_Type;
  public
    class function GetInstance: TBusinessClientAPIRequestBuilder;

    function GetCreateShipmentOrderReq(ADoXMLabel: boolean): CreateShipmentOrderRequest;

    property ConfigSettings: TConfigSettings
      read FConfigSettings
      write FConfigSettings;

    property OrderData: TOrderData
      read FOrderData
      write FOrderData;
  end;

procedure FreeSingeltonBusinessClientAPIRequestBuilder;

implementation

uses
  SysUtils,
  IntrashipServicesConst;

var
  business_client_api_request_builder: TBusinessClientAPIRequestBuilder;

procedure FreeSingeltonBusinessClientAPIRequestBuilder;
begin
  if not Assigned(business_client_api_request_builder) then
    FreeAndNil(business_client_api_request_builder);
end;

{ TBusinessClientAPIRequestBuilder }

function TBusinessClientAPIRequestBuilder.GetReceiverCommunicationType: CommunicationType;
var
  communication_type: CommunicationType;
begin
  communication_type := CommunicationType.Create;

  communication_type.email := FOrderData.ReceiverEmail.AsString;
  communication_type.contactPerson := FOrderData.ReceiverContactPerson.AsString;
  communication_type.phone := FOrderData.ReceiverPhone.AsString;

  Result := communication_type;
end;

function TBusinessClientAPIRequestBuilder.GetReceiverNativeAddressType: ReceiverNativeAddressType;
var
  receiver_native_address: ReceiverNativeAddressType;
  receiver_native_origin: Origin_Type;
begin

  receiver_native_address := ReceiverNativeAddressType.Create;
  receiver_native_origin := Origin_Type.Create;

  if not FOrderData.IsWorldWide then
  begin
    receiver_native_address.streetName := FOrderData.ReceiverStreetName.AsString;
    receiver_native_address.streetNumber := FOrderData.ReceiverStreetNumber.AsString;
    receiver_native_address.city := FOrderData.ReceiverCity.AsString;

    if FOrderData.IsEngland then
      receiver_native_address.Zip := FOrderData.ReceiverZipGermanyOrOhter.AsString
    else
      receiver_native_address.Zip := FOrderData.ReceiverZipGermanyOrOhter.AsString;

    receiver_native_origin.countryISOCode := FOrderData.ReceiverCountryISOCode.AsString;
  end
  else
  begin
    receiver_native_address.streetName := FOrderData.ReceiverStreetName.AsString;
    receiver_native_address.streetNumber := FOrderData.ReceiverStreetNumber.AsString;
    receiver_native_address.city := FOrderData.ReceiverCity.AsString;
    receiver_native_address.Zip := FOrderData.ReceiverZipGermanyOrOhter.AsString;
    receiver_native_origin.country := FOrderData.ReceiverCountry.AsString;
    receiver_native_origin.countryISOCode := FOrderData.ReceiverCountryISOCode.AsString;
  end;

  receiver_native_address.Origin := receiver_native_origin;

  Result := receiver_native_address;
end;

function TBusinessClientAPIRequestBuilder.GetReceiverCompany: name1_Type;
begin
  if FOrderData.IsPerson then
    Result := FOrderData.GetReceiverPersonFirstLastName.AsString
  else
    Result := FOrderData.ReceiverCompanyName1.AsString;
end;

function TBusinessClientAPIRequestBuilder.GetShipperCommunicationType: CommunicationType;
var
  comunication_type: CommunicationType;
begin
  comunication_type := CommunicationType.Create;
  comunication_type.email := FOrderData.ShipperEmail.AsString;
  comunication_type.contactPerson := FOrderData.ShipperContactPerson.AsString;
  comunication_type.phone := FOrderData.ShipperPhone.AsString;

  Result := comunication_type;
end;

function TBusinessClientAPIRequestBuilder.GetShipperNativeAddressType: NativeAddressType;
var
  shipper_native_address: NativeAddressType;
  shipper_native_origin: Origin_Type;
begin
  shipper_native_address := NativeAddressType.Create;
  shipper_native_address.streetName := FOrderData.ShipperStreetName.AsString;
  shipper_native_address.streetNumber := FOrderData.ShipperStreetNumber.AsString;
  shipper_native_address.city := FOrderData.ShipperCity.AsString;
  shipper_native_address.zip := FOrderData.ShipperZipGermanyOrOther.AsString;

  shipper_native_origin := Origin_Type.Create;
  shipper_native_origin.countryISOCode := FOrderData.ShipperOriginCountryISOCode.AsString;

  shipper_native_address.Origin := shipper_native_origin;

  Result := shipper_native_address;
end;

function TBusinessClientAPIRequestBuilder.GetShipperCompany: NameType;
var
  shipper_name: NameType;
begin
  shipper_name := NameType.Create;
  shipper_name.name1 := FOrderData.ShipperCompanyName1.AsString;

  Result := shipper_name;
end;

function TBusinessClientAPIRequestBuilder.GetBankType: BankType;
var
  bank_data: BankType;
begin
  bank_data := BankType.Create;

  bank_data.accountOwner := FOrderData.ShipperBankAccountOwner.AsString;
  bank_data.bankName := FOrderData.ShipperBankBankName.AsString;
  bank_data.bic := FOrderData.ShipperBankBic.AsString;
  bank_data.iban := FOrderData.ShipperBankIBAN.AsString;
  bank_data.note1 := FOrderData.ShipperBankNote.AsString;

  Result := bank_data;
end;

procedure TBusinessClientAPIRequestBuilder.SetShipmentSerciceCOD(AShipmentService: ShipmentService);
var
  service_config_cod: ServiceconfigurationCashOnDelivery;
begin
  service_config_cod := ServiceconfigurationCashOnDelivery.Create;
  service_config_cod.codAmount := FOrderData.ServiceGroupOtherCodCodAmount.AsCurrency;
  service_config_cod.addFee := ServiceconfigurationCashOnDelivery_addFee_Type(0);
  service_config_cod.active := ServiceconfigurationCashOnDelivery_active_Type(1);

  AShipmentService.CashOnDelivery := service_config_cod;
end;

procedure TBusinessClientAPIRequestBuilder.SetShipmentItemType(
  AShipmentItemType: ShipmentItemTypeType);
begin
  AShipmentItemType.WeightInKG := FOrderData.WeihgtInKG.AsCurrency;
  AShipmentItemType.LengthInCM := FOrderData.LengthInCM.AsInteger;
  AShipmentItemType.WidthInCM := FOrderData.WidthInCM.AsInteger;
  AShipmentItemType.HeightInCM := FOrderData.HeightInCM.AsInteger;
end;

function TBusinessClientAPIRequestBuilder.GetShipmentDetails(
  AShipmentItemNr: integer): ShipmentDetailsTypeType;
var
  shipment_details: ShipmentDetailsTypeType;
  anz: integer;
  shipment_item_type: ShipmentItemTypeType;
  services: ShipmentService;
begin
  shipment_details := ShipmentDetailsTypeType.Create;

  shipment_details.Product := FOrderData.ProductCode.AsString;
  shipment_details.ShipmentDate := FormatDateTime('yyyy-mm-dd', Date);
  shipment_details.accountNumber := FOrderData.AccountNumber.AsString;

  for anz := 0 to AShipmentItemNr-1 do
  begin
    shipment_item_type := ShipmentItemTypeType.Create;
    SetShipmentItemType(shipment_item_type);
  end;
  shipment_details.ShipmentItem := ShipmentItemType(shipment_item_type);

  // Nachnahmeservice
  if FOrderData.UseServiceCOD then
  begin
    services := ShipmentService.Create;

    SetShipmentSerciceCOD(services);
    shipment_details.Service := services;

    shipment_details.BankData := GetBankType;
  end;

  shipment_details.customerReference := FOrderData.ShipmentDescription.AsString;

  Result := shipment_details;
end;

function TBusinessClientAPIRequestBuilder.GetVersion(
  AActor: TCustomActorTypes): geschaeftskundenversand_api_2_2.Version_Type;
var
  res: geschaeftskundenversand_api_2_2.Version_Type;
  major_ver: string;
  minor_ver: string;
begin
  res := geschaeftskundenversand_api_2_2.Version_Type.Create;

  case AActor of
    catCreateShipment:
    begin
      major_ver := FConfigSettings.MajorVersionCS.AsString;
      minor_ver:= FConfigSettings.MinorVersionCS.AsString;
    end;
    catGetLabel:
    begin
      major_ver := FConfigSettings.MajorVersionGL.AsString;
      minor_ver := FConfigSettings.MinorVersionGL.AsString;
    end;
    catDeleteShipment:
    begin
      major_ver := FConfigSettings.MajorVersionDS.AsString;
      minor_ver:= FConfigSettings.MinorVersionDS.AsString;
    end;
  else
    major_ver := MAJOR_RELEASE;
    minor_ver:= MINOR_RELEASE;
  end;

  res.MajorRelease := major_ver;
  res.MinorRelease := minor_ver;

  Result := res;
end;

function TBusinessClientAPIRequestBuilder.GetCreateShipmentOrderReq(
  ADoXMLabel: boolean): CreateShipmentOrderRequest;
var
  req: CreateShipmentOrderRequest;
  shipment_order_type: ShipmentOrderType;
  shipment_type: ShipmentOrderType_Shipment_Type;
  shipment_details: ShipmentDetailsTypeType;
  shipper_type: ShipperType;
  receiver: ReceiverType;
  shipment_order_array: CreateShipmentOrderRequest_ShipmentOrderArray;
begin
  req := CreateShipmentOrderRequest.Create;

  req.Version := self.GetVersion(catCreateShipment);

  shipment_order_array := CreateShipmentOrderRequest_ShipmentOrderArray.Create;

  shipment_order_type := shipment_order_array.Add();
  shipment_order_type.SequenceNumber := FOrderData.Sequence.AsString;

  shipment_type := ShipmentOrderType_Shipment_Type.Create;
  shipment_order_type.Shipment := shipment_type;

  shipment_details := GetShipmentDetails(FOrderData.PackageCount);

  shipment_type.ShipmentDetails := shipment_details;
  shipper_type := ShipperType.Create;
  shipment_type.Shipper := shipper_type;

  shipper_type.Name := GetShipperCompany;
  shipper_type.Address := GetShipperNativeAddressType;
  shipper_type.Communication := GetShipperCommunicationType;

  receiver := ReceiverType.Create;
  shipment_type.Receiver := receiver;


  receiver.name1 := GetReceiverCompany;
  receiver.Address := GetReceiverNativeAddressType;
  receiver.Communication := GetReceiverCommunicationType;

  if ADoXMLabel then
    shipment_order_type.LabelResponseType := ShipmentOrderType_labelResponseType_Type(1)
  else
    shipment_order_type.LabelResponseType := ShipmentOrderType_LabelResponseType_Type(0);

  req.ShipmentOrder := shipment_order_array;

  Result := req;
end;

class function TBusinessClientAPIRequestBuilder.GetInstance: TBusinessClientAPIRequestBuilder;
begin
  if not Assigned(business_client_api_request_builder) then
    business_client_api_request_builder := TBusinessClientAPIRequestBuilder.Create;

  Result := business_client_api_request_builder;
end;

end.


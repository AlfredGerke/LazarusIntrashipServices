unit BusinessClientAPIRequestBuilder;

{$mode objfpc}{$H+}

interface

uses
  is_base_de,
  cis_base,
  IntrashipServicesTypes;

type

  { TBusinessClientAPIRequestBuilder }

  TBusinessClientAPIRequestBuilder = class
  private
    FCustomSettings: TCustomSettings;
    FOrderData: TOrderData;

    function GetReceiverCommunicationType: CommunicationType;
    function GetReceiverNativeAddressType: NativeAddressType;
    function GetReceiverCompany: NameType;
    function GetShipperCommunicationType: CommunicationType;
    function GetShipperNativeAddressType: NativeAddressType;
    function GetShipperCompany: NameType;
    function GetBankType: BankType;
    procedure SetShipmentSerciceDD(aShipmentServiceDD: ShipmentServiceDD);
    procedure SetShipmentItemDDType(AShipmentItemDDType: ShipmentItemDDType);
    function GetShipmentDetails(AShipmentItemNr: integer): ShipmentDetailsDDType;
    function GetVersion(AActor: TCustomActorTypes): Version_Type;

    function GetCreateShipmentDDReq(aDoXMLabel: boolean): CreateShipmentDDRequest;
  public
    class function GetInstance: TBusinessClientAPIRequestBuilder;
  end;

procedure FreeSingeltonBusinessClientAPIRequestBuilder;

implementation

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

function TBusinessClientAPIRequestBuilder.GetReceiverNativeAddressType: NativeAddressType;
var
  receiver_native_address: NativeAddressType;
  receiver_native_zip: Zip_Type;
  receiver_native_origin: Origin_Type;
begin

  receiver_native_address := NativeAddressType.Create;
  receiver_native_zip := Zip_Type.Create;
  receiver_native_origin := Origin.Create;

  if not FOrderData.IsWorldWide then
  begin
    receiver_native_address.streetName := FOrderData.ReceiverStreetName.AsString;
    receiver_native_address.streetNumber := FOrderData.ReceiverStreetNumber.AsString;
    receiver_native_address.city := FOrderData.ReceiverCity.AsString;

    if FOrderData.IsEngland then
      receiver_native_zip.england := FOrderData.ReceiverZipGermanyOrOhter.AsString
    else
      receiver_native_zip.germany := FOrderData.ReceiverZipGermanyOrOhter.AsString;

    receiver_native_origin.countryISOCode := FOrderData.ReceiverCountryISOCode.AsString;
  end
  else
  begin
    receiver_native_address.streetName := FOrderData.ReceiverStreetName.AsString;
    receiver_native_address.streetNumber := FOrderData.ReceiverStreetNumber.AsString;
    receiver_native_address.city := FOrderData.ReceiverCity.AsString;
    receiver_native_zip.other := FOrderData.ReceiverZipGermanyOrOhter.AsString;
    receiver_native_origin.country := FOrderData.ReceiverCountry.AsString;
    receiver_native_origin.countryISOCode := FOrderData.ReceiverCountryISOCode.AsString;
  end;

  receiver_native_address.Zip := receiver_native_zip;
  receiver_native_address.Origin := receiver_native_origin;

  Result := receiver_native_address;
end;

function TBusinessClientAPIRequestBuilder.GetReceiverCompany: NameType;
var
  receiver_name: NameType;
  receiver_person: NameType_Person_Type;
  receiver_company: NameType_Company_Type;
begin

  receiver_name := NameType.Create;
  if FOrderData.IsPerson then
  begin
    receiver_person := NameType_Person_Type.Create;

    receiver_person.firstname := FOrderData.ReceiverPersonFirstName.AsString;
    receiver_person.lastname := FOrderData.ReceiverPersonLastName.AsString;
    receiver_name.Person := receiver_person;
  end
  else
  begin
    receiver_company := NameType_Company_Type.Create;

    receiver_company.name1 := FOrderData.ReceiverCompanyName1.AsString;
    receiver_company.name2 := FOrderData.Postnumber.AsString;
    receiver_name.Company := receiver_company;
  end;

  Result := receiver_name;
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
  shipper_native_zip: Zip_Type;
  shipper_native_origin: Origin_Type;
begin
  shipper_native_address := NativeAddressType.Create;
  shipper_native_address.streetName := FOrderData.ShipperStreetName.AsString;
  shipper_native_address.streetNumber := FOrderData.ShipperStreetNumber.AsString;
  shipper_native_address.city := FOrderData.ShipperCity.AsString;

  shipper_native_zip := Zip_Type.Create;
  shipper_native_zip.germany := FOrderData.ShipperZipGermanyOrOther.AsString;

  shipper_native_address.Zip := shipper_native_zip;

  shipper_native_origin := Origin_Type.Create;
  shipper_native_origin.countryISOCode := FOrderData.ShipperOriginCountryISOCode.AsString;

  shipper_native_address.Origin := shipper_native_origin;

  Result := shipper_native_address;
end;

function TBusinessClientAPIRequestBuilder.GetShipperCompany: NameType;
var
  shipper_company: NameType_Company_Type;
  shipper_name: NameType;
begin
  shipper_company := NameType_Company_Type.Create;
  shipper_company.name1 := FOrderData.ShipperCompanyName1.AsString;

  shipper_name := NameType.Create;
  shipper_name.Company := shipper_company;

  Result := shipper_name;
end;

function TBusinessClientAPIRequestBuilder.GetBankType: BankType;
var
  bank_data: BankType;
begin
  bank_data := BankType.Create;

  bank_data.accountOwner := FOrderData.ShipperBankAccountOwner.AsString;
  bank_data.accountNumber := FOrderData.ShipperBankAccountNumber.AsString;
  bank_data.bankCode := FOrderData.ShipperBankBankCode.AsString;
  bank_data.bankName := FOrderData.ShipperBankBankName.AsString;
  bank_data.bic := FOrderData.ShipperBankBic.AsString;
  bank_data.iban := FOrderData.ShipperBankIBAN.AsString;
  bank_data.note := FOrderData.ShipperBankNote.AsString;

  Result := bank_data;
end;

procedure TBusinessClientAPIRequestBuilder.SetShipmentSerciceDD(aShipmentServiceDD: ShipmentServiceDD);
var
  service_group_other: DDServiceGroupOtherType;
  service_cod: DDServiceGroupOtherType_COD_Type;
begin
  service_group_other := DDServiceGroupOtherType.Create;

  service_cod := DDServiceGroupOtherType_COD_Type.Create;
  service_cod.CODAmount := FOrderData.ServiceGroupOtherCodCodAmount.AsCurrency;
  service_cod.CODCurrency := FOrderData.ServiceGroupOtherCodCodCurrency.AsString;

  service_group_other.COD := service_cod;

  aShipmentServiceDD.ServiceGroupOther := service_group_other;
end;

procedure TBusinessClientAPIRequestBuilder.SetShipmentItemDDType(
  AShipmentItemDDType: ShipmentItemDDType);
begin
  AShipmentItemDDType.WeightInKG := FOrderData.WeihgtInKG.AsCurrency;
  AShipmentItemDDType.LengthInCM := FOrderData.LengthInCM.AsInteger;
  AShipmentItemDDType.WidthInCM := FOrderData.WidthInCM.AsInteger;
  AShipmentItemDDType.HeightInCM := FOrderData.HeightInCM.AsInteger;
  AShipmentItemDDType.PackageType := FOrderData.PackageType.AsString;
end;

function TBusinessClientAPIRequestBuilder.GetShipmentDetails(
  AShipmentItemNr: integer): ShipmentDetailsDDType;
var
  shipment_details: ShipmentDetailsDDType;
  attendance_type: ShipmentDetailsDDType_Attendance_Type;
  anz: integer;
  shipment_order_array: CreateShipmentDDRequest_ShipmentOrderArray;
  services: ShipmentDetailsDDType_ServiceArray;
  service: ShipmentServiceDD;
begin
  shipment_details := ShipmentDetailsDDType.Create;

  shipment_details.ProductCode := FOrderData.ProductCode.AsString;
  shipment_details.ShipmentDate := FormatDateTime('yyyy-mm-dd', Date);
  shipment_details.EKP := FOrderData.EKP.AsString;

  attendance_type := ShipmentDetailsDDType_Attendance_Type.Create;
  attendance_type.partnerID := FOrderData.PartnerID.AsString;

  shipment_details.Attendance := attendance_type;

  shipment_order_array := CreateShipmentDDRequest_ShipmentOrderArray.Create;
  for anz := 0 to AShipmentItemNr-1 do
  begin
    shipment_order_ddtype := shipment_order_array.AddAt(anz);
    SetShipmentItemDDType(shipment_order_ddtype);
  end;
  shipment_details.ShipmentItem := shipment_details_array;

  // Nachnahmeservice
  if FOrderData.UseServiceCOD then
  begin
    services := ShipmentDetailsDDType_ServiceArray.Create;

    service := services.AddAt(0);
    SetShipmentSerciceDD(service);
    shipment_details.Service := services;

    shipment_details.BankData := GetBankType;
  end;

  shipment_details.Description := FOrderData.ShipmentDescription.AsString;

  Result := shipment_details;
end;

function TBusinessClientAPIRequestBuilder.GetVersion(
  AActor: TCustomActorTypes): Version_Type;
var
  res: Version_Type;
  major_ver: string;
  minor_ver: string;
begin
  res := Version.Create;

  case AActor of
    catCreateShipmentDD:
    begin
      major_ver := FCustomSettings.MajorVersionCSDD.AsString;
      minor_ver:= FCustomSettings.MinorVersionCSDD.AsString;
    end;
    catGetLabelDD:
    begin
      major_ver := FCustomSettings.MajorVersionGLDD.AsString;
      minor_ver := FCustomSettings.MinorVersionGLDD.AsString;
    end;
    catDeleteShipmentDD:
    begin
      major_ver := FCustomSettings.MajorVersionDSDD.AsString;
      minor_ver:= FCustomSettings.MinorVersionDSDD.AsString;
    end;
  else
    major_ver := MAJOR_RELEASE;
    minor_ver:= MINOR_RELEASE;
  end;

  res.MajorRelease := major_ver;
  res.MinorRelease := minor_ver;

  Result := res;
end;

function TBusinessClientAPIRequestBuilder.GetCreateShipmentDDReq(
  aDoXMLabel: boolean): CreateShipmentDDRequest;
var
  req: CreateShipmentDDRequest;
  shipment_order_ddtype: ShipmentOrderDDType;
  shipment_type: ShipmentOrderDDType_Shipment_Type;
  shipment_details: ShipmentDetailsDDType;
  shipper_dd_type: ShipperDDType;
  receiver: ReceiverDDType;
  shipment_order_array: CreateShipmentDDRequest_ShipmentOrderArray;
begin
  req := CreateShipmentDDRequest.Create;

  req.Version := GetVersion(catCreateShipmentDD);

  shipment_order_array := CreateShipmentDDRequest_ShipmentOrderArray.Create;

  shipment_order_ddtype := shipment_order_array.Add();
  shipment_order_ddtype.SequenceNumber := FOrderData.Sequence.AsString;

  shipment_type := ShipmentOrderDDType_Shipment_Type.Create;
  shipment_order_ddtype.Shipment := shipment_type;

  shipment_details := GetShipmentDetails(FOrderData.PackageCount);

  shipment_type.ShipmentDetails := shipment_details;
  shipper_dd_type := ShipperDDType.Create;
  shipment_type.Shipper := shipper_dd_type;

  shipper_dd_type.Company := GetShipperCompany;
  shipper_dd_type.Address := GetShipperNativeAddressType;

  shipper_dd_type.Communication := GetShipperCommunicationType;

  receiver := ReceiverDDType.Create;
  shipment_type.Receiver := receiver;

  receiver.Company := GetReceiverCompany;
  receiver.Address := GetReceiverNativeAddressType;
  receiver.Communication := GetReceiverCommunicationType;

  if ADoXMLabel then
    shipment_order_ddtype.LabelResponseType := ShipmentOrderDDType_LabelResponseType_Type(1)
  else
    shipment_order_ddtype.LabelResponseType := ShipmentOrderDDType_LabelResponseType_Type(0);

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


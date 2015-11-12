unit BusinessClientAPIRequestBuilder;

{$mode objfpc}{$H+}

interface

uses
  is_base_de;

type

  { TBusinessClientAPIRequestBuilder }

  TBusinessClientAPIRequestBuilder = class
  private
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

function TBusinessClientAPIRequestBuilder.GetCreateShipmentDDReq(
  aDoXMLabel: boolean): CreateShipmentDDRequest;
var
  req: CreateShipmentDDRequest;
  shipment_order_ddtype: ShipmentOrderDDType;
  shipment_type: ShipmentOrderDDType_Shipment_Type;
  shipment_details: ShipmentDetailsDDType;
  shipper_dd_type: ShipperDDType;
  receiver: ReceiverDDType;
  shipment_order_array: Array_Of_ShipmentOrderDDType;
begin
  req := CreateShipmentDDRequest.Create;

  req.Version := GetVersion(catCreateShipmentDD);

  shipment_order_ddtype := ShipmentOrderDDType.Create;
  shipment_order_ddtype.SequenceNumber := FOrderData.Sequence.AsString;

  shipment_type := Shipment2.Create;
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
    shipment_order_ddtype.LabelResponseType :=
      ShipmentOrderDDType_LabelResponseType_Type(1)
  else
    shipment_order_ddtype.LabelResponseType :=
      ShipmentOrderDDType_LabelResponseType_Type(0);

  SetLength(shipment_order_array, 1);
  shipment_order_array[0] := shipment_order_ddtype;
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


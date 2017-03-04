unit api.b2c.data.common.interfaces;

{$mode delphi}

interface

uses
  Classes,
  SysUtils,

  api.b2c.data.dhl_contract,
  api.b2c.data.connection,
  api.b2c.data.credential,
  api.b2c.data.shipment_order;

type

  IILSDataProvider = interface
    function GetCredentialData: TCredentialData;
    function GetConnectionData: TConnectionData;
    function GetDHLContractData: TDHLContractData;
    function GetShipmentOrder: TShipmentOrder;
    function GetData: boolean;
  end;


implementation

end.


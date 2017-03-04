unit api.b2c.data.dhl_contract;

{$mode delphi}

interface

uses
  Classes,
  SysUtils,
  common.record_list;

type

  { TAttendance }

  TAttendance = record
    class function GetByDefault: TAttendance; static;

    procedure Clear;
  end;

  TAttendanceList = class(TCommonRecordList<TAttendance>)

  end;

  { TProduct }

  TProduct = record
    class function GetByDefault: TAttendance; static;

    procedure Clear;
  end;

  { TDHLContractData }

  TDHLContractData = record
    class function GetByDefault: TDHLContractData; static;

    procedure Clear;
  end;

implementation

{ TAttendance }

class function TAttendance.GetByDefault: TAttendance;
begin
  Result.Clear;
end;

procedure TAttendance.Clear;
const
  empty_rec: TAttendance = ();
begin
  Self := empty_rec;
end;

{ TProduct }

class function TProduct.GetByDefault: TAttendance;
begin
  Result.Clear;
end;

procedure TProduct.Clear;
const
  empty_rec: TProduct = ();
begin
  Self := empty_rec;
end;

{ TDHLContractData }

class function TDHLContractData.GetByDefault: TDHLContractData;
begin
  Result.Clear;
end;

procedure TDHLContractData.Clear;
const
  empty_rec: TDHLContractData = ();
begin
  Self := empty_rec;
end;

end.


unit common.key_value_list;

{$mode delphi}

interface

uses
  Classes,
  SysUtils,
  Generics.Collections;

type

  { TKey }

  TKey = record
    Key: string;

    procedure Clear;
  end;

  { TValue }

  TValue = record
    Value: string;

    procedure Clear;
  end;

  TKeyValueList = class(THashMap<TKey, TValue>)
  end;

implementation

{ TKey }

procedure TKey.Clear;
const
  empty_rec: TKey = ();
begin
  Self := empty_rec;
end;

{ TValue }

procedure TValue.Clear;
const
  empty_rec: TValue = ();
begin
  Self := empty_rec;
end;

end.


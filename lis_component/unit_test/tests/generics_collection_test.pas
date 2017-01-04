unit generics_collection_test;

{$mode Delphi}{$H+}

interface

uses
  Classes,
  SysUtils,
  fpcunit,
  testutils,
  lis_testcase,
  service_record_list;

type

  { TTListTest }

  TTListTest= class(TLISTestCase)
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
  end;

implementation

{ TTListTest }

procedure TTListTest.SetUp;
begin
  inherited SetUp;

end;

procedure TTListTest.TearDown;
begin
  inherited TearDown;
end;

end.


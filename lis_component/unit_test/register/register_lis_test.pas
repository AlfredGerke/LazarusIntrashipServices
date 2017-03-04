unit register_lis_test;

{$mode delphi}{$H+}

interface

uses
  testregistry,
  generics_collection_test,
  common_generics_test;

implementation

{$ifdef Debug}
uses
  dbugintf;
{$endif}

initialization

  // DebugClient einrichten
  {$ifdef Debug}
  InitDebugClient;
  {$endif}

  // Alle Tests für generics.collection
  //!<--
  RegisterTest('Generics.Collections', TDHLServiceDataListTest);
  //-->

  // Alle Tests für common.convert
  //!<--
  RegisterTest('Generics.Convert', TStringToTEnumTest);
  RegisterTest('Generics.Convert', TTEnumToStringTest);
  //-->

end.


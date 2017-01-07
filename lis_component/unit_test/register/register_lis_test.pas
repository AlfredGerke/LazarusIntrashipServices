unit register_lis_test;

{$mode delphi}{$H+}

interface

uses
  testregistry,
  generics_collection_test;

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
  RegisterTest('GenericsCollections', TServiceRedorcdListTest);
  //-->

end.


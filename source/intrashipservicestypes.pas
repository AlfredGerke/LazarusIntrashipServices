unit IntrashipServicesTypes;

{$mode delphi}{$H+}

interface

uses
  Classes,
  SysUtils,
  httpsend;

type
  TOnMonitor = procedure(ALog: string) of object;

  TCustomActorTypes =
    (catUnkown, catCreateShipment, catGetLabel, catDeleteShipment, catGetOrderData,
     catGetCredentials);

const
  CustomActorTypesStr: array[TCustomActorTypes] of string =
    ('Unbekannt', 'CreateShipment', 'GetLabel', 'DeleteShipment', 'GetOrderData',
     'GetCredentials');

type

  { TStringHandler }

  TStringHandler = record
    Str: string;

    function Equals(AItems: string): boolean;
    function IsInteger: boolean;
    function IsFloat: boolean;
    function GetLength: integer;
    function IsEmpty(ADoTrim: boolean = True): boolean;
    function AsString: string;
    function AsStringAsFloat: string;
    function AsInteger: Integer;
    function AsCurrency: Currency;
    function AsBoolean: Boolean;
    procedure AsStringlist(AList: TStrings);
    procedure SetByInteger(AInteger: integer);
    procedure SetByShortString(AString: ShortString);
    procedure SetByString(AString: string);

    procedure Clear;
  end;

  { TErrorHandler }

  TErrorHandler = record
    Found: boolean;
    Code: smallint;
    Msg: string;

    procedure SetIsOK(AMsg: string = 'Alles Ok!');
    procedure SetError(ACode: smallint;
                       AMsg: string);

    function GetErrorMessage(AFormat: string = '[%d] - %s'): string;
    procedure Clear;
  end;

  { TConfigSettings }

  TConfigSettings = record
    Active: boolean;
    IniFilename: string;

    DoTest: Boolean;
    SandboxURL: string;
    ProductivURL: string;

    ConnectTimeout: TStringHandler;
    ReceiveTimeout: TStringHandler;

    MajorVersionCS: TStringHandler;
    MinorVersionCS: TStringHandler;

    MajorVersionDS: TStringHandler;
    MinorVersionDS: TStringHandler;

    MajorVersionGL: TStringHandler;
    MinorVersionGL: TStringHandler;

    function GetURL: String;

    function SetByIni: TErrorHandler;
    procedure Clear;
  end;

  { TCredentials }

  TCredentials = record
    IniFilename: string;

    Username: TStringHandler;
    Password: TStringHandler;

    IntrashipUser: TStringHandler;
    Signature: TStringHandler;

    function AsBasicHTTPAuthenticationString: string;
    function CheckData: TErrorHandler;
    function SetByIni: TErrorHandler;

    procedure Clear;
  end;

  { TOrderData }

  TOrderData = record
    Sequence: TStringHandler;

    ProductCode: TStringHandler;
    EKP: TStringHandler;
    PartnerID: TStringHandler;
    AccountNumber: TStringHandler;

    ShipmentDescription: TStringHandler;

    PackageCount: integer;
    WeihgtInKG: TStringHandler;
    LengthInCM: TStringHandler;
    WidthInCM: TStringHandler;
    HeightInCM: TStringHandler;
    PackageType: TStringHandler;

    ShipperCompanyName1: TStringHandler;

    ShipperStreetName: TStringHandler;
    ShipperStreetNumber: TStringHandler;
    ShipperCity: TStringHandler;
    ShipperZipGermanyOrOther: TStringHandler;
    ShipperOriginCountryISOCode: TStringHandler;

    ShipperEmail: TStringHandler;
    ShipperContactPerson: TStringHandler;
    ShipperPhone: TStringHandler;

    IsPerson: boolean;

    ReceiverPersonFirstName: TStringHandler;
    ReceiverPersonLastName: TStringHandler;
    ReceiverCompanyName1: TStringHandler;

    IsWorldWide: boolean;
    IsEngland: boolean;

    ReceiverStreetName: TStringHandler;
    ReceiverStreetNumber: TStringHandler;
    ReceiverCity: TStringHandler;
    ReceiverZipGermanyOrOhter: TStringHandler;
    ReceiverCountry: TStringHandler;
    ReceiverCountryISOCode: TStringHandler;

    ReceiverEmail: TStringHandler;
    ReceiverContactPerson: TStringHandler;
    ReceiverPhone: TStringHandler;

    UseServiceCOD: boolean;

    ShipperBankAccountOwner: TStringHandler;
    ShipperBankBankName: TStringHandler;
    ShipperBankBic: TStringHandler;
    ShipperBankIBAN: TStringHandler;
    ShipperBankNote: TStringHandler;

    ServiceGroupOtherCodCodAmount: TStringHandler;
    ServiceGroupOtherCodCodCurrency: TStringHandler;

    SendToPostoffice: boolean;
    SendToPackstation: boolean;

    ReceiverForFiliale: TStringHandler;
    Postnumber: TStringHandler;
    Filialnumber: TStringHandler;
    FilialZip: TStringHandler;
    FilialCity: TStringHandler;

    function GetReceiverPersonFirstLastName: TStringHandler;

    function SetPostOfficeAsReceiver: boolean;
    function CheckData: TErrorHandler;
    function SetTestdata: TErrorHandler;

    procedure Clear;
  end;

  { TUrlHandler }

  TUrlHandler = record
    Credentials: TCredentials;
    Configuration: TConfigSettings;

    URL: TStringHandler;

    function AsURL: string;

    procedure InitURL;

    procedure Clear;
  end;

type

  TOnBeforeExecute = procedure(ARequest: TStream;
                               var AContinue: boolean) of object;
  TOnAfterExecute  = procedure(AResponse: TStream) of object;
  TOnSkipSendAndReceive = TOnAfterExecute;
  TOnSetHeaders = procedure(AConnections: THTTPSend) of object;

implementation

uses
  IniFiles,
  IntrashipServicesConst,
  IntrashipServicesUtils,
  synacode;

{ TUrlHandler }

function TUrlHandler.AsURL: string;
begin
  if Credentials.Username.IsEmpty then
    Result := URL.AsString
  else
    Result := StringReplace(URL.AsString, 'https://', Format('https://%s:%s@',
      [Credentials.Username.AsString, Credentials.Password.AsString]), [rfIgnoreCase]);
end;

procedure TUrlHandler.InitURL;
begin
  URL.SetByString(Configuration.GetURL);
end;

procedure TUrlHandler.Clear;
begin
  FillChar(Self, SizeOf(Self), #0);
end;

{ TCredentials }

function TCredentials.AsBasicHTTPAuthenticationString: string;
begin
  Result := 'Authorization: Basic ' + EncodeBase64(Username.AsString + ':' + Password.AsString);
end;

function TCredentials.CheckData: TErrorHandler;
var
  error: TErrorHandler;
begin
  error.Clear;

  if Username.IsEmpty then
    error.SetError(101, 'Kein Benutzername vorhanden!');

  if not error.Found then
    if Password.IsEmpty then
      error.SetError(102, 'Kein Passwort vorhanden!');

  if not error.Found then
    if IntrashipUser.IsEmpty then
      error.SetError(103, 'Keine Entwickler-/Anwendungskennung vorhanden!');

  if not error.Found then
    if Signature.IsEmpty then
      error.SetError(104, 'Keine Signatur vorhanden!');

  if not error.Found then
    error.SetError(0, 'Alles Ok!');

  Result := error;
end;

function TCredentials.SetByIni: TErrorHandler;
var
  error: TErrorHandler;
  ini: TIniFile;
  str: string;
begin
  error.Clear;

  if not FileExists(IniFilename) then
    error.SetError(-1, Format('%s Konfigurationsdatei nicht vorhanden!', [IniFilename]))
  else
  begin
    ini := TIniFile.Create(IniFilename);
    try
      str := ini.ReadString('authentication', 'user', '');
      Username.SetByString(str);

      str := ini.ReadString('authentication', 'password', '');
      Password.SetByString(str);

      str := ini.ReadString('intraship', 'user', '');
      IntrashipUser.SetByString(str);

      str := ini.ReadString('intraship', 'signature', '');
      Signature.SetByString(str);

      error := CheckData;
    finally
      if Assigned(ini) then
        FreeAndNil(ini);
    end;
  end;

  Result := error;
end;

procedure TCredentials.Clear;
begin
  FillChar(Self, SizeOf(Self), #0);
end;

{ TErrorHandler }

procedure TErrorHandler.SetIsOK(AMsg: string = 'Alles Ok!');
begin
  if not Found then
    SetError(0, AMsg);
end;

procedure TErrorHandler.SetError(ACode: smallint; AMsg: string);
begin
  Code := ACode;
  Msg := AMsg;
  Found := (Code <> 0);
end;

function TErrorHandler.GetErrorMessage(AFormat: string = '[%d] - %s'): string;
begin
  Result := Format(AFormat, [Code, Msg]);
end;

procedure TErrorHandler.Clear;
begin
  FillChar(Self, SizeOf(Self), #0);
end;

{ TOrderData }

function TOrderData.GetReceiverPersonFirstLastName: TStringHandler;
begin
  Result.Clear;
  Result.SetByString(ReceiverPersonFirstName.AsString + ', ' + ReceiverPersonLastName.AsString);
end;

function TOrderData.SetPostOfficeAsReceiver: boolean;
begin
  if (SendToPostoffice or SendToPackstation) then
  begin
    IsPerson := False;
    IsWorldWide := False;
    IsEngland := False;

    ReceiverCompanyName1.SetByString(ReceiverForFiliale.AsString);

    if SendToPostoffice then
      ReceiverStreetName.SetByString(POSTOFFICE);

    if SendToPackstation then
      ReceiverStreetName.SetByString(PACKSTATION);

    ReceiverStreetNumber.SetByString(Filialnumber.AsString);

    ReceiverZipGermanyOrOhter.SetByString(FilialZip.AsString);

    ReceiverCity.SetByString(FilialCity.AsString);

    ReceiverCountryISOCode.SetByString(RECEIVER_LOCAL_COUNTRY_CODE);

    Result := True;
  end
  else
    Result := False;
end;

function TOrderData.CheckData: TErrorHandler;
var
  error: TErrorHandler;
  seq: integer;
begin
  error.Clear;

  if (Sequence.GetLength > 30) then
    error.SetError(201, 'Sequence zu lang (max. 30 Zeichen)!');

  if not error.Found then
    if not TryStrToInt(Sequence.AsString, seq) then
      error.SetError(205, 'Sequence muss ein Integer sein!');

  if not error.Found then
    if ((ProductCode.AsString <> 'V01PAK') and (ProductCode.AsString <> 'V53WPAK') and
        (ProductCode.AsString <> 'V54EPAK') and (ProductCode.AsString <> 'V06PAK') and
        (ProductCode.AsString <> 'V06TG V06WZ') and (ProductCode.AsString <> 'V86PARCEL') and
        (ProductCode.AsString <> 'V87PARCEL') and (ProductCode.AsString <> 'V82PARCEL')) then
      error.SetError(248, 'Falscher Eintrag für den Produktcode!');

  if not error.Found then
    if ProductCode.Equals('V01PAK') then
      PackageCount := 1;

  if not error.Found then
    if (EKP.GetLength <> 10) then
      error.SetError(202, 'EKP muss exakt 10 Zeichen lang sein!');

  if not error.Found then
    if (PartnerID.GetLength <> 2) then
      error.SetError(203, 'PartnerId (Teilnahme) muss exakt 2 Zeichen lang sein!');

  // Sendungsdaten

  if not error.Found then
    if (WeihgtInKG.GetLength > 22) then
      error.SetError(206, 'Gewichtsangabe zu lang (max. 22 Zeichen)!');

  if not error.Found then
    if WeihgtInKG.IsEmpty then
      error.SetError(246, 'Gewichtsangabe muss vorhanden sein!');

  if not error.Found then
    if not WeihgtInKG.IsFloat then
      error.SetError(247, 'Gewichtsangabe besitzt falsches Format!');

  if not error.Found then
    if (LengthInCM.GetLength > 22) then
      error.SetError(207, 'Längenangabe zu lang (max. 22 Zeichen)!');

  if not error.Found then
    if not LengthInCM.IsEmpty then
      if not LengthInCM.IsInteger then
         error.SetError(207, 'Längenangabe besitzt falsches Format!');

  if not error.Found then
    if (WidthInCM.GetLength > 22) then
      error.SetError(208, 'Breitenangabe zu lang (max. 22 Zeichen)!');

  if not error.Found then
    if not WidthInCM.IsEmpty then
      if not WidthInCM.IsInteger then
         error.SetError(207, 'Breitenangabe besitzt falsches Format!');

  if not error.Found then
    if (HeightInCM.GetLength > 22) then
      error.SetError(209, 'Höhenangabe zu lang (max. 22 Zeichen)!');

  if not error.Found then
    if not HeightInCM.IsEmpty then
      if not HeightInCM.IsInteger then
         error.SetError(207, 'Höhenangabe besitzt falsches Format!');

  if not error.Found then
    if ((PackageType.AsString <> 'PK') and (PackageType.AsString <> 'CO')) then
      error.SetError(210, 'Falscher Eintrag für den Pakettyp!');

  // Versenderdaten

  if not error.Found then
    if (ShipperCompanyName1.GetLength > 30) then
      error.SetError(204, 'Firmenname des Versenders zu lange (max. 30 Zeichen)!');

  if not error.Found then
    if ShipperCompanyName1.IsEmpty then
      error.SetError(211, 'Firmenname des Versenders muss vorhanden sein!');

  if not error.Found then
    if ShipperStreetName.IsEmpty then
      error.SetError(212, 'Straße des Versenders muss vorhanden sein!');

  if not error.Found then
    if (ShipperStreetName.GetLength > 30) then
      error.SetError(212, 'Straße des Versenders zu lang (max. 30 Zeichen)!');

  if not error.Found then
    if (ShipperStreetNumber.GetLength > 7) then
      error.SetError(213, 'Straßennummer des Versenders zu lang (max. 7 Zeichen)!');

  if not error.Found then
    if (ShipperCity.GetLength > 20) then
      error.SetError(214, 'Stadt des Versenders zu lang (max. 20 Zeichen)!');

  if not error.Found then
    if ShipperCity.IsEmpty then
      error.SetError(215, 'Stadt des Versenders muss vorhanden sein!');

  if not error.Found then
    if (ShipperZipGermanyOrOther.GetLength > 10) then
      error.SetError(216, 'ZIP-Code des Versenders zu lang (max. 10 Zeichen)!');

  if not error.Found then
    if ShipperZipGermanyOrOther.IsEmpty then
      error.SetError(217, 'ZIP-Code des Versenders muss vorhanden sein!');

  if not error.Found then
    if (ShipperOriginCountryISOCode.GetLength > 3) then
      error.SetError(218, 'Länder ISO-Code des Versenders zu lang (max. 3 Zeichen)!');

  if not error.Found then
     if ShipperOriginCountryISOCode.IsEmpty then
       error.SetError(219, 'Länder ISO-Code des Versenders muss vorhanden sein!');

  if not error.Found then
    if (ShipperEmail.GetLength > 30) then
      error.SetError(220, 'Email des Versenders zu lang (max. 30 Zeichen)!');

  // Muss nicht vorhanden sein
  //if not error.Found then
  //  if ShipperEmail.IsEmpty then
  //    error.SetError(221, 'eMail des Versenders muss vorhanden sein!');

  if not error.Found then
    if (ShipperContactPerson.GetLength > 30) then
      error.SetError(222, 'Kontaktperson des Versenders zu lang (max. 30 Zeichen)!');

  // Muss nicht vorhanden sein
  //if not error.Found then
  //  if ShipperContactPerson.IsEmpty then
  //    error.SetError(223, 'Kontaktperson des Versenders muss vorhanden sein!');

  if not error.Found then
    if (ShipperPhone.GetLength > 20) then
      error.SetError(224, 'Telefonnummer des Versenders zu lang (max. 20 Zeichen)!');

  // Muss nicht vorhanden sein
  //if not error.Found then
  //  if ShipperPhone.IsEmpty then
  //    error.SetError(225, 'Telefonnummer des Versenders muss vorhanden sein!');

  // Empfängerdaten

  if IsPerson then
  begin
    // In beiden Fällen auf Länge 30 geprüft, eventuell auf 50 anheben
    if not error.Found then
      if (ReceiverPersonFirstName.GetLength > 30) then
        error.SetError(226, 'Vorname des Empfängers zu lang (max. 30 Zeichen)!');

    if not error.Found then
      if ReceiverPersonFirstName.IsEmpty then
        error.SetError(227, 'Vorname des Empfängers muss vorhanden sein!');

    if not error.Found then
      if (ReceiverPersonLastName.GetLength > 30) then
        error.SetError(228, 'Nachname des Empfängers zu lang (max. 30 Zeichen)!');

    if not error.Found then
      if ReceiverPersonLastName.IsEmpty then
        error.SetError(229, 'Nachname des Empfängers muss vorhanden sein!');
  end
  else
  begin
    if not error.Found then
      if (ReceiverCompanyName1.GetLength > 30) then
        error.SetError(230, 'Empfängerfirma zu lang (max. 30 Zeichen)!');

    if not error.Found then
      if ReceiverCompanyName1.IsEmpty then
        error.SetError(231, 'Empfängerfirma muss vorhanden sein!');
  end;

  if not error.Found then
    if (ReceiverStreetName.GetLength > 30) then
      error.SetError(235, 'Straße des Empfängers zu lang (max. 30 Zeichen)!');

  if not error.Found then
    if ReceiverStreetName.IsEmpty then
      error.SetError(236, 'Straße des Empfängers muss vorhanden sein!');

  if not error.Found then
    if (ReceiverStreetNumber.GetLength > 7) then
      error.SetError(237, 'Straßennummer des Empfängers zu lang (max. 7 Zeichen)!');

  if not error.Found then
    if ReceiverStreetNumber.IsEmpty then
      error.SetError(238, 'Straßenummer des Empfängers muss vorhanden sein!');

  if not error.Found then
    if (ReceiverCity.GetLength > 20) then
      error.SetError(239, 'Stadt des Empfängers zu lang (max. 20 Zeichen)!');

  if not error.Found then
    if ReceiverCity.IsEmpty then
      error.SetError(240, 'Stadt des Empfängers muss vorhanden sein!');

  if not error.Found then
    if (ReceiverZipGermanyOrOhter.GetLength > 10) then
      error.SetError(241, 'ZIP-Code des Empfängers zu lang (max. 10 Zeichen)!');

  if not error.Found then
    if ReceiverZipGermanyOrOhter.IsEmpty then
      error.SetError(242, 'ZIP-Code des Empfängers muss vorhanden sein!');

  if not error.Found then
    if (ReceiverCountryISOCode.GetLength > 3) then
      error.SetError(243, 'Länder ISO-Code des Empfängers zu lang (max. 3 Zeichen)!');

  if IsWorldWide then
  begin
    if not error.Found then
      if (ReceiverCountry.GetLength > 30) then
        error.SetError(244, 'Land des Empfängers zu lang (max. 30 Zeichen)!');

    if not error.Found then
      if ReceiverCountry.IsEmpty then
        error.SetError(245, 'Land des Empfängers muss vorhanden sein!');
  end;

  if not error.Found then
    if (ReceiverEmail.GetLength > 30) then
      error.SetError(232, 'Empfängermail zu lang (max. 30 Zeichen)!');

  if not error.Found then
    if (ReceiverContactPerson.GetLength > 30) then
      error.SetError(233, 'Kontaktperson des Empfängers zu lang (max. 30 Zeichen)!');

  if not error.Found then
    if (ReceiverPhone.GetLength > 20) then
      error.SetError(234, 'Telefon des Empfängers zu lang (max. 20 Zeichen)!');

  if UseServiceCOD then
  begin
    if not error.Found then
      if (ServiceGroupOtherCodCodAmount.GetLength > 22) then
        error.SetError(249, 'Nachnahmebetrag zu lang (max. 22 Zeichen)!');

    if not error.Found then
      if (ServiceGroupOtherCodCodAmount.IsEmpty) then
        error.SetError(250, 'Nachnahmebetrag muss vorhanden sein!');

    if not error.Found then
      if not ServiceGroupOtherCodCodAmount.IsFloat then
        error.SetError(251, 'Nachnahmebetrag besitzt falsches Format!');

    if not error.Found then
      if (ServiceGroupOtherCodCodCurrency.GetLength <> 3) then
        error.SetError(252, 'Nachnahmewährung muss exakt 3 Zeichen lang sein (ISO-Code)!');

    if not error.Found then
      if (ServiceGroupOtherCodCodAmount.IsEmpty) then
        error.SetError(253, 'Nachnahmewährung muss vorhanden sein!');

    if not error.Found then
      if (ShipperBankAccountOwner.GetLength > 30) then
        error.SetError(254, 'Kontoinhaber zu lang (max. 30 Zeichen)!');

    if not error.Found then
      if ShipperBankAccountOwner.IsEmpty then
        error.SetError(255, 'Kontoinhaber muss vorhanden sein!');

    if not error.Found then
      if ShipperBankBankName.IsEmpty then
        error.SetError(258, 'Bankname muss vorhanden sein!');

    if not error.Found then
      if (ShipperBankBankName.GetLength > 30) then
        error.SetError(259, 'Bankname zu lang (max. 30 Zeichen)!');

    if not error.Found then
      if ShipperBankBic.IsEmpty then
        error.SetError(260, 'BIC muss vorhanden sein!');

    if not error.Found then
      if (ShipperBankBic.GetLength > 30) then
        error.SetError(261, 'BIC zu lang (max. 30 Zeichen)!');

    if not error.Found then
      if ShipperBankIBAN.IsEmpty then
        error.SetError(262, 'IBAN muss vorhanden sein!');

    if not error.Found then
      if (ShipperBankIBAN.GetLength > 34) then
        error.SetError(263, 'IBAN zu lang (max. 34 Zeichen)!');

    if not error.Found then
      if (ShipperBankNote.GetLength > 70) then
        error.SetError(264, 'Bemerkung zur Bankverbindung zu lang (max. 70 Zeichen)');
  end;

  if not error.Found then
    if (SendToPostoffice and SendToPackstation) then
      error.SetError(265, 'Entweder Postfiliale oder Packstation wählen, nicht beides zusammen!');

  if not error.Found then
    error.SetError(0, 'Alles Ok!');

  Result := error;
end;

procedure TOrderData.Clear;
begin
  Sequence.Clear;

  ProductCode.Clear;
  EKP.Clear;
  PartnerID.Clear;

  ShipmentDescription.Clear;

  WeihgtInKG.Clear;
  LengthInCM.Clear;
  WidthInCM.Clear;
  HeightInCM.Clear;
  PackageType.Clear;

  ShipperCompanyName1.Clear;

  ShipperStreetName.Clear;
  ShipperStreetNumber.Clear;
  ShipperCity.Clear;
  ShipperZipGermanyOrOther.Clear;
  ShipperOriginCountryISOCode.Clear;

  ShipperEmail.Clear;
  ShipperContactPerson.Clear;
  ShipperPhone.Clear;

  IsPerson := False;

  ReceiverPersonFirstName.Clear;
  ReceiverPersonLastName.Clear;
  ReceiverCompanyName1.Clear;

  IsWorldWide := False;

  ReceiverStreetName.Clear;
  ReceiverStreetNumber.Clear;
  ReceiverCity.Clear;
  ReceiverZipGermanyOrOhter.Clear;
  ReceiverCountry.Clear;
  ReceiverCountryISOCode.Clear;

  ReceiverEmail.Clear;
  ReceiverContactPerson.Clear;
  ReceiverPhone.Clear;
end;

function TOrderData.SetTestdata: TErrorHandler;
begin
  Sequence.SetByInteger(0);

  // Auftragsdaten
  AccountNumber.SetByString(IntrashipServicesConst.ACCOUNT_NUMBER);
  EKP.SetByString(IntrashipServicesConst.EKP);
  ProductCode.SetByString(DD_PROD_CODE);
  PartnerID.SetByString(PARTNER_ID);
  ShipmentDescription.SetByString(SHIPMENT_DESC);
  UseServiceCOD := False;
  ServiceGroupOtherCodCodAmount.SetByString(COD_CODAMOUNT);
  ServiceGroupOtherCodCodCurrency.SetByString(COD_CODCURRENCE);

  // Sendungsdaten
  WeihgtInKG.SetByInteger(3);
  LengthInCM.SetByInteger(50);
  WidthInCM.SetByInteger(30);
  HeightInCM.SetByInteger(15);
  PackageType.SetByString('PK');

  // Versenderdaten
  ShipperCompanyName1.SetByString(SHIPPER_COMPANY_NAME);
  ShipperStreetName.SetByString(SHIPPER_STREET);
  ShipperCity.SetByString(SHIPPER_CITY);
  ShipperStreetNumber.SetByString(SHIPPER_STREETNR);
  ShipperZipGermanyOrOther.SetByString(SHIPPER_ZIP);
  ShipperOriginCountryISOCode.SetByString(SHIPPER_COUNTRY_CODE);
  ShipperEmail.SetByString(SHIPPER_CONTACT_EMAIL);
  ShipperContactPerson.SetByString(SHIPPER_CONTACT_NAME);
  ShipperPhone.SetByString(SHIPPER_CONTACT_PHONE);
  ShipperBankAccountOwner.SetByString(SHIPPER_BANK_ACCOUNTOWNER);
  ShipperBankBankName.SetByString(SHIPPER_BANK_BANKNAME);
  ShipperBankBIC.SetByString(SHIPPER_BANK_BIC);
  ShipperBankIBAN.SetByString(SHIPPER_BANK_IBAN);
  ShipperBankNote.SetByString(SHIPPER_BANK_NOTE);

  // Empfängerdaten
  ReceiverPersonFirstName.SetByString(RECEIVER_FIRST_NAME);
  ReceiverPersonLastName.SetByString(RECEIVER_LAST_NAME);
  ReceiverCompanyName1.SetByString(RECEIVER_COMPANY_NAME);
  ReceiverStreetName.SetByString(RECEIVER_LOCAL_STREET);
  ReceiverStreetNumber.SetByString(RECEIVER_LOCAL_STREETNR);
  ReceiverPhone.SetByString(RECEIVER_CONTACT_PHONE);
  ReceiverContactPerson.SetByString(RECEIVER_CONTACT_NAME);
  ReceiverEmail.SetByString(RECEIVER_CONTACT_EMAIL);
  ReceiverCountryISOCode.SetByString(RECEIVER_LOCAL_COUNTRY_CODE);
  ReceiverCountry.SetByString(EmptyStr);
  ReceiverZipGermanyOrOhter.SetByString(RECEIVER_LOCAL_ZIP);
  ReceiverCity.SetByString(RECEIVER_LOCAL_CITY);
  IsPerson := True;
  IsWorldWide := False;
  IsEngland := False;
  ReceiverCountry.SetByString(EmptyStr);

  // Packstation
  SendToPackstation := False;
  SendToPostOffice := False;
  ReceiverForFiliale.SetByString(RECEIVERNAME_FOR_POST_OFFICE);
  Postnumber.SetByString(IntrashipServicesConst.POSTNUMBER);
  Filialnumber.SetByString(POST_OFFICE_NUMBER);
  FilialZip.SetByString(POST_OFFICE_ZIP);
  FilialCity.SetByString(POST_OFFICE_CITY);

  Result := CheckData;
end;

{ TConfigSettings }

procedure TConfigSettings.Clear;
begin
  FillChar(Self, SizeOf(Self), #0);

  DoTest := True;
end;

function TConfigSettings.GetURL: String;
begin
  if DoTest then
    Result := SandboxURL
  else
    Result := ProductivURL;
end;

function TConfigSettings.SetByIni: TErrorHandler;
var
  ini: TIniFile;
  int: integer;
  error: TErrorHandler;
begin
  error.Clear;

  if not Active then
    if not FileExists(IniFilename) then
      error.SetError(-1, Format('%s Konfigurationsdatei nicht vorhanden!', [IniFilename]))
    else
    begin
      ini := TIniFile.Create(IniFilename);
      try
        DoTest:= ini.ReadBool('url', 'test', True);
        SandboxURL := ini.ReadString('url', 'sandbox', '');
        ProductivURL := ini.ReadString('url', 'productiv', '');

        int := ini.ReadInteger('connect', 'connecttimeout', 10000);
        ConnectTimeout.SetByInteger(int);

        int := ini.ReadInteger('connect', 'receivetimeout', 10000);
        ReceiveTimeout.SetByInteger(int);

        int := ini.ReadInteger('createshipment', 'majorversion', 2);
        MajorVersionCS.SetByInteger(int);

        int := ini.ReadInteger('createshipment', 'minorversion', 0);
        MinorVersionCS.SetByInteger(int);

        int := ini.ReadInteger('deleteshipment', 'majorversion', 2);
        MajorVersionDS.SetByInteger(int);

        int := ini.ReadInteger('deleteshipment', 'minorversion', 0);
        MinorVersionDS.SetByInteger(int);

        int := ini.ReadInteger('getlabel', 'majorversion', 2);
        MajorVersionGL.SetByInteger(int);

        int := ini.ReadInteger('getlabel', 'minorversion', 0);
        MinorVersionGL.SetByInteger(int);

        Active := True;
      finally
        if Assigned(ini) then
          FreeAndNil(ini);
      end;
    end;

  Result := error;
end;

{ TStringHandler }

function TStringHandler.AsBoolean: Boolean;
var
  is_bool: Boolean;
begin
  if TryStrToBool(AsString, is_bool) then
    Result := is_bool
  else
    raise Exception.CreateFmt('%s ist kein gültiger Boolean!', [Str]);
end;

function TStringHandler.AsInteger: Integer;
var
  int: integer;
begin
  if TryStrToInt(Str, int) then
    Result := int
  else
    raise Exception.CreateFmt('%s ist kein gültiger Integer!', [Str]);
end;

function TStringHandler.AsCurrency: Currency;
var
  curr: Currency;
begin
  if TryStrToCurr(Str, curr) then
    Result := curr
  else
    raise Exception.CreateFmt('%s ist kein gültiger Currency!', [Str]);
end;

function TStringHandler.AsString: string;
begin
  Result := Str;
end;

function TStringHandler.AsStringAsFloat: string;
var
  test_str: string;
begin
  if IsFloat then
  begin
    test_str := StringReplace(AsString, ',', '.', [rfReplaceAll]);
    Result := test_str;
  end
  else
    raise Exception.CreateFmt('%s ist kein gültiger Decimalwert!', [Str]);
end;

procedure TStringHandler.AsStringlist(AList: TStrings);
var
  list: TStrings;
begin
  AList.Clear;
  list := TStringList.Create;
  try
    list.Text := AsString;
    AList.AddStrings(list);
  finally
    if Assigned(list) then
      FreeAndNil(list);
  end;
end;

procedure TStringHandler.Clear;
begin
  FillChar(Self, SizeOf(Self), #0);
end;

function TStringHandler.Equals(AItems: string): boolean;
begin
  Result := (CompareStr(AsString, AItems) = 0);
end;

function TStringHandler.IsFloat: boolean;
var
  ext: extended;
  test_str: string;
begin
  test_str := StringReplace(AsString, '.', ',', [rfReplaceAll]);
  Result := TryStrToFloat(test_str, ext);
end;

function TStringHandler.IsEmpty(ADoTrim: boolean = True): boolean;
var
  check_string: string;
begin
  if ADoTrim then
    check_string := Trim(Str)
  else
    check_string := Str;

  Result := (check_string = EmptyStr);
end;

function TStringHandler.IsInteger: boolean;
var
  int: integer;
begin
  Result := TryStrToInt(AsString, int);
end;

function TStringHandler.GetLength: integer;
begin
  Result := Length(Str);
end;

procedure TStringHandler.SetByInteger(AInteger: integer);
begin
  Str := IntToStr(AInteger);
end;

procedure TStringHandler.SetByShortString(AString: ShortString);
begin
 Str := GetShortStringAsString(AString);
end;

procedure TStringHandler.SetByString(AString: string);
begin
  Str := AString;
end;

end.


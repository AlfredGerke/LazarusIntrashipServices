{
This unit has been produced by ws_helper.
  Input unit name : "geschaeftskundenversand_api_2_2_schema_cis_base".
  This unit name  : "geschaeftskundenversand_api_2_2_schema_cis_base".
  Date            : "14.12.2016 12:51:16".
}
unit geschaeftskundenversand_api_2_2_schema_cis_base;
{$IFDEF FPC}
  {$mode objfpc} {$H+}
{$ENDIF}
{$DEFINE WST_RECORD_RTTI}
interface

uses SysUtils, Classes, TypInfo, base_service_intf, service_intf;

const
  sNAME_SPACE = 'http://dhl.de/webservice/cisbase';
  sUNIT_NAME = 'geschaeftskundenversand_api_2_2_schema_cis_base';

type

  CountryType = class;
  AuthentificationType = class;
  Version_Type = class;
  NativeAddressType_addressAdditionArray = class;
  NativeAddressType = class;
  ReceiverNativeAddressType_addressAdditionArray = class;
  ReceiverNativeAddressType = class;
  PickupAddressType = class;
  DeliveryAddressType = class;
  BankType = class;
  NameType = class;
  ReceiverNameType = class;
  CommunicationType = class;
  ContactType = class;
  PackStationType = class;
  PostfilialeType = class;
  ParcelShopType = class;
  CustomerType = class;
  ErrorType = class;
  ShipmentNumberType = class;
  Status = class;
  Dimension = class;
  TimeFrame = class;

  Dimension_unit_Type = ( 
    mm
    ,inch
  );

  countryISOType = type UnicodeString;

  EKP_Type = type UnicodeString;

  partnerID = type UnicodeString;

  procedureID = type UnicodeString;

  accountNumber_Type = type UnicodeString;

  accountNumberExpress = type UnicodeString;

  identCode = type UnicodeString;

  licensePlate = type UnicodeString;

  airwayBill = type UnicodeString;

  routeCode = type UnicodeString;

  routingCode = type UnicodeString;

  ZipType = type UnicodeString;

  zip_Type = ZipType;

  city_Type = type UnicodeString;

  streetNameCode_Type = type UnicodeString;

  streetNumberCode_Type = type UnicodeString;

  CountryType_country_Type = type UnicodeString;

  CountryType_state_Type = type UnicodeString;

  Origin_Type = CountryType;

  AuthentificationType_user_Type = type UnicodeString;

  AuthentificationType_signature_Type = type UnicodeString;

  Authentification = AuthentificationType;

  Version_majorRelease_Type = type UnicodeString;

  Version_minorRelease_Type = type UnicodeString;

  Version_build_Type = type UnicodeString;

  NativeAddressType_streetName_Type = type UnicodeString;

  NativeAddressType_streetNumber_Type = type UnicodeString;

  NativeAddressType_addressAddition_Type = type UnicodeString;

  NativeAddressType_dispatchingInformation_Type = type UnicodeString;

  ReceiverNativeAddressType_streetName_Type = type UnicodeString;

  ReceiverNativeAddressType_streetNumber_Type = type UnicodeString;

  ReceiverNativeAddressType_addressAddition_Type = type UnicodeString;

  ReceiverNativeAddressType_dispatchingInformation_Type = type UnicodeString;

  BankType_accountOwner_Type = type UnicodeString;

  BankType_bankName_Type = type UnicodeString;

  BankType_iban_Type = type UnicodeString;

  BankType_note1_Type = type UnicodeString;

  BankType_note2_Type = type UnicodeString;

  BankType_bic_Type = type UnicodeString;

  BankType_accountreference_Type = type UnicodeString;

  ReceiverNameType_name_Type = type UnicodeString;

  name1_Type = type UnicodeString;

  name2 = type UnicodeString;

  name3 = type UnicodeString;

  CommunicationType_phone_Type = type UnicodeString;

  CommunicationType_email_Type = type UnicodeString;

  CommunicationType_contactPerson_Type = type UnicodeString;

  PackStationType_postNumber_Type = type UnicodeString;

  PackStationType_packstationNumber_Type = type UnicodeString;

  PostfilialeType_postfilialNumber_Type = type UnicodeString;

  PostfilialeType_postNumber_Type = type UnicodeString;

  ParcelShopType_parcelShopNumber_Type = type UnicodeString;

  ParcelShopType_streetName_Type = type UnicodeString;

  ParcelShopType_streetNumber_Type = type UnicodeString;

  CustomerType_note_Type = type UnicodeString;

  Status_statuscode_Type = type UnicodeString;

  Status_statusDescription_Type = type UnicodeString;

  productKey = type UnicodeString;

  shipmentNumber_Type = type UnicodeString;

  CountryType = class(TBaseComplexRemotable)
  private
    Fcountry : CountryType_country_Type;
    FcountryISOCode : countryISOType;
    Fstate : CountryType_state_Type;
  private
    function wstHas_country() : Boolean;
    function wstHas_state() : Boolean;
  published
    property country : CountryType_country_Type read Fcountry write Fcountry stored wstHas_country;
    property countryISOCode : countryISOType read FcountryISOCode write FcountryISOCode;
    property state : CountryType_state_Type read Fstate write Fstate stored wstHas_state;
  end;

  AuthentificationType = class(TBaseComplexRemotable)
  private
    Fuser : AuthentificationType_user_Type;
    Fsignature : AuthentificationType_signature_Type;
  published
    property user : AuthentificationType_user_Type read Fuser write Fuser;
    property signature : AuthentificationType_signature_Type read Fsignature write Fsignature;
  end;

  Version_Type = class(TBaseComplexRemotable)
  private
    FmajorRelease : Version_majorRelease_Type;
    FminorRelease : Version_minorRelease_Type;
    Fbuild : Version_build_Type;
  private
    function wstHas_build() : Boolean;
  published
    property majorRelease : Version_majorRelease_Type read FmajorRelease write FmajorRelease;
    property minorRelease : Version_minorRelease_Type read FminorRelease write FminorRelease;
    property build : Version_build_Type read Fbuild write Fbuild stored wstHas_build;
  end;

  NativeAddressType = class(TBaseComplexRemotable)
  private
    FstreetName : NativeAddressType_streetName_Type;
    FstreetNumber : NativeAddressType_streetNumber_Type;
    FaddressAddition : NativeAddressType_addressAdditionArray;
    FdispatchingInformation : NativeAddressType_dispatchingInformation_Type;
    Fzip : zip_Type;
    Fcity : city_Type;
    FOrigin : Origin_Type;
  private
    function wstHas_addressAddition() : Boolean;
    function wstHas_dispatchingInformation() : Boolean;
    function wstHas_Origin() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property streetName : NativeAddressType_streetName_Type read FstreetName write FstreetName;
    property streetNumber : NativeAddressType_streetNumber_Type read FstreetNumber write FstreetNumber;
    property addressAddition : NativeAddressType_addressAdditionArray read FaddressAddition write FaddressAddition stored wstHas_addressAddition;
    property dispatchingInformation : NativeAddressType_dispatchingInformation_Type read FdispatchingInformation write FdispatchingInformation stored wstHas_dispatchingInformation;
    property zip : zip_Type read Fzip write Fzip;
    property city : city_Type read Fcity write Fcity;
    property Origin : Origin_Type read FOrigin write FOrigin stored wstHas_Origin;
  end;

  ReceiverNativeAddressType = class(TBaseComplexRemotable)
  private
    Fname2 : geschaeftskundenversand_api_2_2_schema_cis_base.name2;
    Fname3 : geschaeftskundenversand_api_2_2_schema_cis_base.name3;
    FstreetName : ReceiverNativeAddressType_streetName_Type;
    FstreetNumber : ReceiverNativeAddressType_streetNumber_Type;
    FaddressAddition : ReceiverNativeAddressType_addressAdditionArray;
    FdispatchingInformation : ReceiverNativeAddressType_dispatchingInformation_Type;
    Fzip : zip_Type;
    Fcity : city_Type;
    FOrigin : Origin_Type;
  private
    function wstHas_name2() : Boolean;
    function wstHas_name3() : Boolean;
    function wstHas_addressAddition() : Boolean;
    function wstHas_dispatchingInformation() : Boolean;
    function wstHas_Origin() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property name2 : geschaeftskundenversand_api_2_2_schema_cis_base.name2 read Fname2 write Fname2 stored wstHas_name2;
    property name3 : geschaeftskundenversand_api_2_2_schema_cis_base.name3 read Fname3 write Fname3 stored wstHas_name3;
    property streetName : ReceiverNativeAddressType_streetName_Type read FstreetName write FstreetName;
    property streetNumber : ReceiverNativeAddressType_streetNumber_Type read FstreetNumber write FstreetNumber;
    property addressAddition : ReceiverNativeAddressType_addressAdditionArray read FaddressAddition write FaddressAddition stored wstHas_addressAddition;
    property dispatchingInformation : ReceiverNativeAddressType_dispatchingInformation_Type read FdispatchingInformation write FdispatchingInformation stored wstHas_dispatchingInformation;
    property zip : zip_Type read Fzip write Fzip;
    property city : city_Type read Fcity write Fcity;
    property Origin : Origin_Type read FOrigin write FOrigin stored wstHas_Origin;
  end;

  PickupAddressType = class(TBaseComplexRemotable)
  private
    FNativeAddress : NativeAddressType;
    FPackStation : PackStationType;
    FstreetNameCode : streetNameCode_Type;
    FstreetNumberCode : streetNumberCode_Type;
  private
    function wstHas_NativeAddress() : Boolean;
    function wstHas_PackStation() : Boolean;
    function wstHas_streetNameCode() : Boolean;
    function wstHas_streetNumberCode() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property NativeAddress : NativeAddressType read FNativeAddress write FNativeAddress stored wstHas_NativeAddress;
    property PackStation : PackStationType read FPackStation write FPackStation stored wstHas_PackStation;
    property streetNameCode : streetNameCode_Type read FstreetNameCode write FstreetNameCode stored wstHas_streetNameCode;
    property streetNumberCode : streetNumberCode_Type read FstreetNumberCode write FstreetNumberCode stored wstHas_streetNumberCode;
  end;

  DeliveryAddressType = class(TBaseComplexRemotable)
  private
    FNativeAddress : NativeAddressType;
    FPostOffice : PostfilialeType;
    FPackStation : PackStationType;
    FstreetNameCode : streetNameCode_Type;
    FstreetNumberCode : streetNumberCode_Type;
  private
    function wstHas_NativeAddress() : Boolean;
    function wstHas_PostOffice() : Boolean;
    function wstHas_PackStation() : Boolean;
    function wstHas_streetNameCode() : Boolean;
    function wstHas_streetNumberCode() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property NativeAddress : NativeAddressType read FNativeAddress write FNativeAddress stored wstHas_NativeAddress;
    property PostOffice : PostfilialeType read FPostOffice write FPostOffice stored wstHas_PostOffice;
    property PackStation : PackStationType read FPackStation write FPackStation stored wstHas_PackStation;
    property streetNameCode : streetNameCode_Type read FstreetNameCode write FstreetNameCode stored wstHas_streetNameCode;
    property streetNumberCode : streetNumberCode_Type read FstreetNumberCode write FstreetNumberCode stored wstHas_streetNumberCode;
  end;

  BankType = class(TBaseComplexRemotable)
  private
    FaccountOwner : BankType_accountOwner_Type;
    FbankName : BankType_bankName_Type;
    Fiban : BankType_iban_Type;
    Fnote1 : BankType_note1_Type;
    Fnote2 : BankType_note2_Type;
    Fbic : BankType_bic_Type;
    Faccountreference : BankType_accountreference_Type;
  private
    function wstHas_note1() : Boolean;
    function wstHas_note2() : Boolean;
    function wstHas_bic() : Boolean;
    function wstHas_accountreference() : Boolean;
  published
    property accountOwner : BankType_accountOwner_Type read FaccountOwner write FaccountOwner;
    property bankName : BankType_bankName_Type read FbankName write FbankName;
    property iban : BankType_iban_Type read Fiban write Fiban;
    property note1 : BankType_note1_Type read Fnote1 write Fnote1 stored wstHas_note1;
    property note2 : BankType_note2_Type read Fnote2 write Fnote2 stored wstHas_note2;
    property bic : BankType_bic_Type read Fbic write Fbic stored wstHas_bic;
    property accountreference : BankType_accountreference_Type read Faccountreference write Faccountreference stored wstHas_accountreference;
  end;

  NameType = class(TBaseComplexRemotable)
  private
    Fname1 : name1_Type;
    Fname2 : geschaeftskundenversand_api_2_2_schema_cis_base.name2;
    Fname3 : geschaeftskundenversand_api_2_2_schema_cis_base.name3;
  private
    function wstHas_name2() : Boolean;
    function wstHas_name3() : Boolean;
  published
    property name1 : name1_Type read Fname1 write Fname1;
    property name2 : geschaeftskundenversand_api_2_2_schema_cis_base.name2 read Fname2 write Fname2 stored wstHas_name2;
    property name3 : geschaeftskundenversand_api_2_2_schema_cis_base.name3 read Fname3 write Fname3 stored wstHas_name3;
  end;

  ReceiverNameType = class(TBaseComplexRemotable)
  private
    Fname : ReceiverNameType_name_Type;
  published
    property name : ReceiverNameType_name_Type read Fname write Fname;
  end;

  CommunicationType = class(TBaseComplexRemotable)
  private
    Fphone : CommunicationType_phone_Type;
    Femail : CommunicationType_email_Type;
    FcontactPerson : CommunicationType_contactPerson_Type;
  private
    function wstHas_phone() : Boolean;
    function wstHas_email() : Boolean;
    function wstHas_contactPerson() : Boolean;
  published
    property phone : CommunicationType_phone_Type read Fphone write Fphone stored wstHas_phone;
    property email : CommunicationType_email_Type read Femail write Femail stored wstHas_email;
    property contactPerson : CommunicationType_contactPerson_Type read FcontactPerson write FcontactPerson stored wstHas_contactPerson;
  end;

  ContactType = class(TBaseComplexRemotable)
  private
    FCommunication : CommunicationType;
    FAddress : NativeAddressType;
    FName : NameType;
  private
    function wstHas_Communication() : Boolean;
    function wstHas_Address() : Boolean;
    function wstHas_Name() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Communication : CommunicationType read FCommunication write FCommunication stored wstHas_Communication;
    property Address : NativeAddressType read FAddress write FAddress stored wstHas_Address;
    property Name : NameType read FName write FName stored wstHas_Name;
  end;

  PackStationType = class(TBaseComplexRemotable)
  private
    FpostNumber : PackStationType_postNumber_Type;
    FpackstationNumber : PackStationType_packstationNumber_Type;
    Fzip : zip_Type;
    Fcity : city_Type;
    FOrigin : Origin_Type;
  private
    function wstHas_postNumber() : Boolean;
    function wstHas_Origin() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property postNumber : PackStationType_postNumber_Type read FpostNumber write FpostNumber stored wstHas_postNumber;
    property packstationNumber : PackStationType_packstationNumber_Type read FpackstationNumber write FpackstationNumber;
    property zip : zip_Type read Fzip write Fzip;
    property city : city_Type read Fcity write Fcity;
    property Origin : Origin_Type read FOrigin write FOrigin stored wstHas_Origin;
  end;

  PostfilialeType = class(TBaseComplexRemotable)
  private
    FpostfilialNumber : PostfilialeType_postfilialNumber_Type;
    FpostNumber : PostfilialeType_postNumber_Type;
    Fzip : zip_Type;
    Fcity : city_Type;
    FOrigin : Origin_Type;
  private
    function wstHas_Origin() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property postfilialNumber : PostfilialeType_postfilialNumber_Type read FpostfilialNumber write FpostfilialNumber;
    property postNumber : PostfilialeType_postNumber_Type read FpostNumber write FpostNumber;
    property zip : zip_Type read Fzip write Fzip;
    property city : city_Type read Fcity write Fcity;
    property Origin : Origin_Type read FOrigin write FOrigin stored wstHas_Origin;
  end;

  ParcelShopType = class(TBaseComplexRemotable)
  private
    FparcelShopNumber : ParcelShopType_parcelShopNumber_Type;
    FstreetName : ParcelShopType_streetName_Type;
    FstreetNumber : ParcelShopType_streetNumber_Type;
    Fzip : zip_Type;
    Fcity : city_Type;
    FOrigin : Origin_Type;
  private
    function wstHas_streetName() : Boolean;
    function wstHas_streetNumber() : Boolean;
    function wstHas_Origin() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property parcelShopNumber : ParcelShopType_parcelShopNumber_Type read FparcelShopNumber write FparcelShopNumber;
    property streetName : ParcelShopType_streetName_Type read FstreetName write FstreetName stored wstHas_streetName;
    property streetNumber : ParcelShopType_streetNumber_Type read FstreetNumber write FstreetNumber stored wstHas_streetNumber;
    property zip : zip_Type read Fzip write Fzip;
    property city : city_Type read Fcity write Fcity;
    property Origin : Origin_Type read FOrigin write FOrigin stored wstHas_Origin;
  end;

  CustomerType = class(TBaseComplexRemotable)
  private
    FName : NameType;
    FvatID : UnicodeString;
    FEKP : EKP_Type;
    FAddress : NativeAddressType;
    FContact : ContactType;
    FBank : BankType;
    Fnote : CustomerType_note_Type;
  private
    function wstHas_vatID() : Boolean;
    function wstHas_Bank() : Boolean;
    function wstHas_note() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Name : NameType read FName write FName;
    property vatID : UnicodeString read FvatID write FvatID stored wstHas_vatID;
    property EKP : EKP_Type read FEKP write FEKP;
    property Address : NativeAddressType read FAddress write FAddress;
    property Contact : ContactType read FContact write FContact;
    property Bank : BankType read FBank write FBank stored wstHas_Bank;
    property note : CustomerType_note_Type read Fnote write Fnote stored wstHas_note;
  end;

  ErrorType = class(TBaseComplexRemotable)
  private
    Fpriority : integer;
    Fcode : integer;
    FdateTime : TDateTimeRemotable;
    Fdescription : UnicodeString;
    FdescriptionLong : UnicodeString;
    Fsolution : UnicodeString;
    Fapplication : UnicodeString;
    Fmodule : UnicodeString;
  private
    function wstHas_priority() : Boolean;
    function wstHas_description() : Boolean;
    function wstHas_descriptionLong() : Boolean;
    function wstHas_solution() : Boolean;
    function wstHas_application() : Boolean;
    function wstHas_module() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property priority : integer read Fpriority write Fpriority stored wstHas_priority;
    property code : integer read Fcode write Fcode;
    property dateTime : TDateTimeRemotable read FdateTime write FdateTime;
    property description : UnicodeString read Fdescription write Fdescription stored wstHas_description;
    property descriptionLong : UnicodeString read FdescriptionLong write FdescriptionLong stored wstHas_descriptionLong;
    property solution : UnicodeString read Fsolution write Fsolution stored wstHas_solution;
    property application : UnicodeString read Fapplication write Fapplication stored wstHas_application;
    property module : UnicodeString read Fmodule write Fmodule stored wstHas_module;
  end;

  ShipmentNumberType = class(TBaseComplexRemotable)
  private
    FshipmentNumber : shipmentNumber_Type;
  private
    function wstHas_shipmentNumber() : Boolean;
  published
    property shipmentNumber : shipmentNumber_Type read FshipmentNumber write FshipmentNumber stored wstHas_shipmentNumber;
  end;

  Status = class(TBaseComplexRemotable)
  private
    Fstatuscode : Status_statuscode_Type;
    FstatusDescription : Status_statusDescription_Type;
  published
    property statuscode : Status_statuscode_Type read Fstatuscode write Fstatuscode;
    property statusDescription : Status_statusDescription_Type read FstatusDescription write FstatusDescription;
  end;

  Dimension = class(TBaseComplexRemotable)
  private
    Flength : integer;
    Fwidth : integer;
    Fheight : integer;
    F_unit : Dimension_unit_Type;
  private
    function wstHas__unit() : Boolean;
  published
    property length : integer read Flength write Flength;
    property width : integer read Fwidth write Fwidth;
    property height : integer read Fheight write Fheight;
    property _unit : Dimension_unit_Type read F_unit write F_unit stored wstHas__unit;
  end;

  TimeFrame = class(TBaseComplexRemotable)
  private
    Ffrom : TTimeRemotable;
    F_until : TTimeRemotable;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property from : TTimeRemotable read Ffrom write Ffrom;
    property _until : TTimeRemotable read F_until write F_until;
  end;

  NativeAddressType_addressAdditionArray = class(TBaseSimpleTypeArrayRemotable)
  private
    FData : array of NativeAddressType_addressAddition_Type;
  private
    function GetItem(AIndex: Integer): NativeAddressType_addressAddition_Type;
    procedure SetItem(AIndex: Integer; const AValue: NativeAddressType_addressAddition_Type);
  protected
    function GetLength():Integer;override;
    procedure SaveItem(AStore : IFormatterBase;const AName : String;const AIndex : Integer);override;
    procedure LoadItem(AStore : IFormatterBase;const AIndex : Integer);override;
  public
    class function GetItemTypeInfo():PTypeInfo;override;
    procedure SetLength(const ANewSize : Integer);override;
    procedure Assign(Source: TPersistent); override;
    property Item[AIndex:Integer] : NativeAddressType_addressAddition_Type read GetItem write SetItem; default;
  end;

  ReceiverNativeAddressType_addressAdditionArray = class(TBaseSimpleTypeArrayRemotable)
  private
    FData : array of ReceiverNativeAddressType_addressAddition_Type;
  private
    function GetItem(AIndex: Integer): ReceiverNativeAddressType_addressAddition_Type;
    procedure SetItem(AIndex: Integer; const AValue: ReceiverNativeAddressType_addressAddition_Type);
  protected
    function GetLength():Integer;override;
    procedure SaveItem(AStore : IFormatterBase;const AName : String;const AIndex : Integer);override;
    procedure LoadItem(AStore : IFormatterBase;const AIndex : Integer);override;
  public
    class function GetItemTypeInfo():PTypeInfo;override;
    procedure SetLength(const ANewSize : Integer);override;
    procedure Assign(Source: TPersistent); override;
    property Item[AIndex:Integer] : ReceiverNativeAddressType_addressAddition_Type read GetItem write SetItem; default;
  end;

  // !:<--
  // Zusätzliche Basis-Objecte für den Namespace: http://dhl.de/webservice/cisbase
  // Die Objecte wurden von Hand angelegt um einzelnen Childnodes eines Elementes mit dem
  // Namespace: http://dhl.de/webservices/businesscustomershipping für den cisbase-Namespace zuzuweisen

  dummy_Type = type UnicodeString;

  ShipmentDetailsTypeCISBase = class(TBaseComplexRemotable)
  private
    Fdummy: dummy_Type;
    FaccountNumber : accountNumber_Type;
  published
    property dummy: dummy_Type read Fdummy write Fdummy;
    property accountNumber : accountNumber_Type read FaccountNumber write FaccountNumber;
  end;

  ReceiverTypeTypeCISBase = class(TBaseComplexRemotable)
  private
    Fdummy: dummy_Type;
    Fname1 : name1_Type;
  published
    property dummy: dummy_Type read Fdummy write Fdummy;
    property name1 : name1_Type read Fname1 write Fname1;
  end;

  LabelDataCISBase = class(TBaseComplexRemotable)
  private
    FshipmentNumber : shipmentNumber_Type;
  protected
    function wstHas_shipmentNumber() : Boolean;
  published
    property shipmentNumber : shipmentNumber_Type read FshipmentNumber write FshipmentNumber stored wstHas_shipmentNumber;
  end;

  DeletionStateCISBase = class(TBaseComplexRemotable)
  private
    FshipmentNumber : shipmentNumber_Type;
  published
    property shipmentNumber : shipmentNumber_Type read FshipmentNumber write FshipmentNumber;
  end;


  // -->

Implementation
uses metadata_repository, record_rtti, wst_types;

{ LabelDataCISBase }

function LabelDataCISBase.wstHas_shipmentNumber: Boolean;
begin
  Result := ( FshipmentNumber <> '' );
end;

{ CountryType }

function CountryType.wstHas_country() : Boolean;
begin
  Result := ( Fcountry <> '' );
end;

function CountryType.wstHas_state() : Boolean;
begin
  Result := ( Fstate <> '' );
end;

function Version_Type.wstHas_build() : Boolean;
begin
  Result := ( Fbuild <> '' );
end;

{ NativeAddressType }

constructor NativeAddressType.Create();
begin
  inherited Create();
  FaddressAddition := NativeAddressType_addressAdditionArray.Create();
  FOrigin := Origin_Type.Create();
end;

procedure NativeAddressType.FreeObjectProperties();
begin
  if Assigned(FaddressAddition) then
    FreeAndNil(FaddressAddition);
  if Assigned(FOrigin) then
    FreeAndNil(FOrigin);
  inherited FreeObjectProperties();
end;

function NativeAddressType.wstHas_addressAddition() : Boolean;
begin
  Result := ( FaddressAddition <> NativeAddressType_addressAdditionArray(0) );
end;

function NativeAddressType.wstHas_dispatchingInformation() : Boolean;
begin
  Result := ( FdispatchingInformation <> '' );
end;

function NativeAddressType.wstHas_Origin() : Boolean;
begin
  Result := ( FOrigin <> nil );
end;

{ ReceiverNativeAddressType }

constructor ReceiverNativeAddressType.Create();
begin
  inherited Create();
  FaddressAddition := ReceiverNativeAddressType_addressAdditionArray.Create();
  FOrigin := Origin_Type.Create();
end;

procedure ReceiverNativeAddressType.FreeObjectProperties();
begin
  if Assigned(FaddressAddition) then
    FreeAndNil(FaddressAddition);
  if Assigned(FOrigin) then
    FreeAndNil(FOrigin);
  inherited FreeObjectProperties();
end;

function ReceiverNativeAddressType.wstHas_name2() : Boolean;
begin
  Result := ( Fname2 <> '' );
end;

function ReceiverNativeAddressType.wstHas_name3() : Boolean;
begin
  Result := ( Fname3 <> '' );
end;

function ReceiverNativeAddressType.wstHas_addressAddition() : Boolean;
begin
  Result := ( FaddressAddition <> ReceiverNativeAddressType_addressAdditionArray(0) );
end;

function ReceiverNativeAddressType.wstHas_dispatchingInformation() : Boolean;
begin
  Result := ( FdispatchingInformation <> '' );
end;

function ReceiverNativeAddressType.wstHas_Origin() : Boolean;
begin
  Result := ( FOrigin <> nil );
end;

{ PickupAddressType }

constructor PickupAddressType.Create();
begin
  inherited Create();
end;

procedure PickupAddressType.FreeObjectProperties();
begin
  if Assigned(FNativeAddress) then
    FreeAndNil(FNativeAddress);
  if Assigned(FPackStation) then
    FreeAndNil(FPackStation);
  inherited FreeObjectProperties();
end;

function PickupAddressType.wstHas_NativeAddress() : Boolean;
begin
  Result := ( FNativeAddress <> nil );
end;

function PickupAddressType.wstHas_PackStation() : Boolean;
begin
  Result := ( FPackStation <> nil );
end;

function PickupAddressType.wstHas_streetNameCode() : Boolean;
begin
  Result := ( FstreetNameCode <> '' );
end;

function PickupAddressType.wstHas_streetNumberCode() : Boolean;
begin
  Result := ( FstreetNumberCode <> '' );
end;

{ DeliveryAddressType }

constructor DeliveryAddressType.Create();
begin
  inherited Create();
end;

procedure DeliveryAddressType.FreeObjectProperties();
begin
  if Assigned(FNativeAddress) then
    FreeAndNil(FNativeAddress);
  if Assigned(FPostOffice) then
    FreeAndNil(FPostOffice);
  if Assigned(FPackStation) then
    FreeAndNil(FPackStation);
  inherited FreeObjectProperties();
end;

function DeliveryAddressType.wstHas_NativeAddress() : Boolean;
begin
  Result := ( FNativeAddress <> nil );
end;

function DeliveryAddressType.wstHas_PostOffice() : Boolean;
begin
  Result := ( FPostOffice <> nil );
end;

function DeliveryAddressType.wstHas_PackStation() : Boolean;
begin
  Result := ( FPackStation <> nil );
end;

function DeliveryAddressType.wstHas_streetNameCode() : Boolean;
begin
  Result := ( FstreetNameCode <> '' );
end;

function DeliveryAddressType.wstHas_streetNumberCode() : Boolean;
begin
  Result := ( FstreetNumberCode <> '' );
end;

function BankType.wstHas_note1() : Boolean;
begin
  Result := ( Fnote1 <> '' );
end;

function BankType.wstHas_note2() : Boolean;
begin
  Result := ( Fnote2 <> '' );
end;

function BankType.wstHas_bic() : Boolean;
begin
  Result := ( Fbic <> '' );
end;

function BankType.wstHas_accountreference() : Boolean;
begin
  Result := ( Faccountreference <> '' );
end;

function NameType.wstHas_name2() : Boolean;
begin
  Result := ( Fname2 <> '' );
end;

function NameType.wstHas_name3() : Boolean;
begin
  Result := ( Fname3 <> '' );
end;

function CommunicationType.wstHas_phone() : Boolean;
begin
  Result := ( Fphone <> '' );
end;

function CommunicationType.wstHas_email() : Boolean;
begin
  Result := ( Femail <> '' );
end;

function CommunicationType.wstHas_contactPerson() : Boolean;
begin
  Result := ( FcontactPerson <> '' );
end;

{ ContactType }

constructor ContactType.Create();
begin
  inherited Create();
  FCommunication := CommunicationType.Create();
  FAddress := NativeAddressType.Create();
  FName := NameType.Create();
end;

procedure ContactType.FreeObjectProperties();
begin
  if Assigned(FCommunication) then
    FreeAndNil(FCommunication);
  if Assigned(FAddress) then
    FreeAndNil(FAddress);
  if Assigned(FName) then
    FreeAndNil(FName);
  inherited FreeObjectProperties();
end;

function ContactType.wstHas_Communication() : Boolean;
begin
  Result := ( FCommunication <> nil );
end;

function ContactType.wstHas_Address() : Boolean;
begin
  Result := ( FAddress <> nil );
end;

function ContactType.wstHas_Name() : Boolean;
begin
  Result := ( FName <> nil );
end;

{ PackStationType }

constructor PackStationType.Create();
begin
  inherited Create();
  FOrigin := Origin_Type.Create();
end;

procedure PackStationType.FreeObjectProperties();
begin
  if Assigned(FOrigin) then
    FreeAndNil(FOrigin);
  inherited FreeObjectProperties();
end;

function PackStationType.wstHas_postNumber() : Boolean;
begin
  Result := ( FpostNumber <> '' );
end;

function PackStationType.wstHas_Origin() : Boolean;
begin
  Result := ( FOrigin <> nil );
end;

{ PostfilialeType }

constructor PostfilialeType.Create();
begin
  inherited Create();
  FOrigin := Origin_Type.Create();
end;

procedure PostfilialeType.FreeObjectProperties();
begin
  if Assigned(FOrigin) then
    FreeAndNil(FOrigin);
  inherited FreeObjectProperties();
end;

function PostfilialeType.wstHas_Origin() : Boolean;
begin
  Result := ( FOrigin <> nil );
end;

{ ParcelShopType }

constructor ParcelShopType.Create();
begin
  inherited Create();
  FOrigin := Origin_Type.Create();
end;

procedure ParcelShopType.FreeObjectProperties();
begin
  if Assigned(FOrigin) then
    FreeAndNil(FOrigin);
  inherited FreeObjectProperties();
end;

function ParcelShopType.wstHas_streetName() : Boolean;
begin
  Result := ( FstreetName <> '' );
end;

function ParcelShopType.wstHas_streetNumber() : Boolean;
begin
  Result := ( FstreetNumber <> '' );
end;

function ParcelShopType.wstHas_Origin() : Boolean;
begin
  Result := ( FOrigin <> nil );
end;

{ CustomerType }

constructor CustomerType.Create();
begin
  inherited Create();
  FName := NameType.Create();
  FAddress := NativeAddressType.Create();
  FContact := ContactType.Create();
  FBank := BankType.Create();
end;

procedure CustomerType.FreeObjectProperties();
begin
  if Assigned(FName) then
    FreeAndNil(FName);
  if Assigned(FAddress) then
    FreeAndNil(FAddress);
  if Assigned(FContact) then
    FreeAndNil(FContact);
  if Assigned(FBank) then
    FreeAndNil(FBank);
  inherited FreeObjectProperties();
end;

function CustomerType.wstHas_vatID() : Boolean;
begin
  Result := ( FvatID <> '' );
end;

function CustomerType.wstHas_Bank() : Boolean;
begin
  Result := ( FBank <> nil );
end;

function CustomerType.wstHas_note() : Boolean;
begin
  Result := ( Fnote <> '' );
end;

{ ErrorType }

constructor ErrorType.Create();
begin
  inherited Create();
  FdateTime := TDateTimeRemotable.Create();
end;

procedure ErrorType.FreeObjectProperties();
begin
  if Assigned(FdateTime) then
    FreeAndNil(FdateTime);
  inherited FreeObjectProperties();
end;

function ErrorType.wstHas_priority() : Boolean;
begin
  Result := ( Fpriority <> integer(0) );
end;

function ErrorType.wstHas_description() : Boolean;
begin
  Result := ( Fdescription <> '' );
end;

function ErrorType.wstHas_descriptionLong() : Boolean;
begin
  Result := ( FdescriptionLong <> '' );
end;

function ErrorType.wstHas_solution() : Boolean;
begin
  Result := ( Fsolution <> '' );
end;

function ErrorType.wstHas_application() : Boolean;
begin
  Result := ( Fapplication <> '' );
end;

function ErrorType.wstHas_module() : Boolean;
begin
  Result := ( Fmodule <> '' );
end;

function ShipmentNumberType.wstHas_shipmentNumber() : Boolean;
begin
  Result := ( Trim(FshipmentNumber) <> EmptyStr );
end;

function Dimension.wstHas__unit() : Boolean;
begin
  Result := True;
end;

{ TimeFrame }

constructor TimeFrame.Create();
begin
  inherited Create();
  Ffrom := TTimeRemotable.Create();
  F_until := TTimeRemotable.Create();
end;

procedure TimeFrame.FreeObjectProperties();
begin
  if Assigned(Ffrom) then
    FreeAndNil(Ffrom);
  if Assigned(F_until) then
    FreeAndNil(F_until);
  inherited FreeObjectProperties();
end;

{ NativeAddressType_addressAdditionArray }

function NativeAddressType_addressAdditionArray.GetItem(AIndex: Integer): NativeAddressType_addressAddition_Type;
begin
  CheckIndex(AIndex);
  Result := FData[AIndex];
end;

procedure NativeAddressType_addressAdditionArray.SetItem(AIndex: Integer;const AValue: NativeAddressType_addressAddition_Type);
begin
  CheckIndex(AIndex);
  FData[AIndex] := AValue;
end;

function NativeAddressType_addressAdditionArray.GetLength(): Integer;
begin
  Result := System.Length(FData);
end;

procedure NativeAddressType_addressAdditionArray.SaveItem(AStore: IFormatterBase;const AName: String; const AIndex: Integer);
begin
  AStore.Put('addressAddition',TypeInfo(NativeAddressType_addressAddition_Type),FData[AIndex]);
end;

procedure NativeAddressType_addressAdditionArray.LoadItem(AStore: IFormatterBase;const AIndex: Integer);
var
  sName : string;
begin
  sName := 'addressAddition';
  AStore.Get(TypeInfo(NativeAddressType_addressAddition_Type),sName,FData[AIndex]);
end;

class function NativeAddressType_addressAdditionArray.GetItemTypeInfo(): PTypeInfo;
begin
  Result := TypeInfo(NativeAddressType_addressAddition_Type);
end;

procedure NativeAddressType_addressAdditionArray.SetLength(const ANewSize: Integer);
var
  i : Integer;
begin
  if ( ANewSize < 0 ) then
    i := 0
  else
    i := ANewSize;
  System.SetLength(FData,i);
end;

procedure NativeAddressType_addressAdditionArray.Assign(Source: TPersistent);
var
  src : NativeAddressType_addressAdditionArray;
  i, c : Integer;
begin
  if Assigned(Source) and Source.InheritsFrom(NativeAddressType_addressAdditionArray) then begin
    src := NativeAddressType_addressAdditionArray(Source);
    c := src.Length;
    Self.SetLength(c);
    if ( c > 0 ) then begin
      for i := 0 to Pred(c) do begin
        Self[i] := src[i];
      end;
    end;
  end else begin
    inherited Assign(Source);
  end;
end;

{ ReceiverNativeAddressType_addressAdditionArray }

function ReceiverNativeAddressType_addressAdditionArray.GetItem(AIndex: Integer): ReceiverNativeAddressType_addressAddition_Type;
begin
  CheckIndex(AIndex);
  Result := FData[AIndex];
end;

procedure ReceiverNativeAddressType_addressAdditionArray.SetItem(AIndex: Integer;const AValue: ReceiverNativeAddressType_addressAddition_Type);
begin
  CheckIndex(AIndex);
  FData[AIndex] := AValue;
end;

function ReceiverNativeAddressType_addressAdditionArray.GetLength(): Integer;
begin
  Result := System.Length(FData);
end;

procedure ReceiverNativeAddressType_addressAdditionArray.SaveItem(AStore: IFormatterBase;const AName: String; const AIndex: Integer);
begin
  AStore.Put('addressAddition',TypeInfo(ReceiverNativeAddressType_addressAddition_Type),FData[AIndex]);
end;

procedure ReceiverNativeAddressType_addressAdditionArray.LoadItem(AStore: IFormatterBase;const AIndex: Integer);
var
  sName : string;
begin
  sName := 'addressAddition';
  AStore.Get(TypeInfo(ReceiverNativeAddressType_addressAddition_Type),sName,FData[AIndex]);
end;

class function ReceiverNativeAddressType_addressAdditionArray.GetItemTypeInfo(): PTypeInfo;
begin
  Result := TypeInfo(ReceiverNativeAddressType_addressAddition_Type);
end;

procedure ReceiverNativeAddressType_addressAdditionArray.SetLength(const ANewSize: Integer);
var
  i : Integer;
begin
  if ( ANewSize < 0 ) then
    i := 0
  else
    i := ANewSize;
  System.SetLength(FData,i);
end;

procedure ReceiverNativeAddressType_addressAdditionArray.Assign(Source: TPersistent);
var
  src : ReceiverNativeAddressType_addressAdditionArray;
  i, c : Integer;
begin
  if Assigned(Source) and Source.InheritsFrom(ReceiverNativeAddressType_addressAdditionArray) then begin
    src := ReceiverNativeAddressType_addressAdditionArray(Source);
    c := src.Length;
    Self.SetLength(c);
    if ( c > 0 ) then begin
      for i := 0 to Pred(c) do begin
        Self[i] := src[i];
      end;
    end;
  end else begin
    inherited Assign(Source);
  end;
end;


var
  typeRegistryInstance : TTypeRegistry = nil;
initialization
  typeRegistryInstance := GetTypeRegistry();

  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(Dimension_unit_Type),'Dimension_unit_Type');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CountryType),'CountryType',[trioqualifiedElement, triounqualifiedAttribute]);

  // DeclaredName AuthentificationType wurde in Authentification geändert
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(AuthentificationType),'Authentification',[trioqualifiedElement, triounqualifiedAttribute]);

  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(Version_Type),'Version',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(NativeAddressType),'NativeAddressType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ReceiverNativeAddressType),'ReceiverNativeAddressType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(PickupAddressType),'PickupAddressType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DeliveryAddressType),'DeliveryAddressType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(BankType),'BankType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(NameType),'NameType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ReceiverNameType),'ReceiverNameType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CommunicationType),'CommunicationType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ContactType),'ContactType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(PackStationType),'PackStationType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(PostfilialeType),'PostfilialeType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ParcelShopType),'ParcelShopType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CustomerType),'CustomerType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ErrorType),'ErrorType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ShipmentNumberType),'ShipmentNumberType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(Status),'Status',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(Dimension),'Dimension',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(TimeFrame),'TimeFrame',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(NativeAddressType_addressAdditionArray),'NativeAddressType_addressAdditionArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(NativeAddressType_addressAdditionArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ReceiverNativeAddressType_addressAdditionArray),'ReceiverNativeAddressType_addressAdditionArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ReceiverNativeAddressType_addressAdditionArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);

  typeRegistryInstance.ItemByTypeInfo[TypeInfo(Dimension)].RegisterExternalPropertyName('_unit','unit');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(TimeFrame)].RegisterExternalPropertyName('_until','until');

  // Zustäztliche von Hand angelegte Objecte für den cisbase-Namspace werden hier registrieren
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ShipmentDetailsTypeCISBase),'ShipmentDetailsTypeCISBase',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ReceiverTypeTypeCISBase),'ReceiverTypeTypeCISBase',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(LabelDataCISBase),'LabelDataCISBase',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DeletionStateCISBase),'DeletionStateCISBase',[trioqualifiedElement, triounqualifiedAttribute]);

End.

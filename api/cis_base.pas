{
This unit has been produced by ws_helper.
  Input unit name : "cis_base".
  This unit name  : "cis_base".
  Date            : "08.11.2015 00:56:36".
}
unit cis_base;
{$IFDEF FPC}
  {$mode objfpc} {$H+}
{$ENDIF}
{$DEFINE WST_RECORD_RTTI}
interface

uses SysUtils, Classes, TypInfo, base_service_intf, service_intf;

const
  sNAME_SPACE = 'http://dhl.de/webservice/cisbase';
  sUNIT_NAME = 'cis_base';

type

  ZipType = class;
  CountryType = class;
  AuthentificationType = class;
  Version_Type = class;
  NativeAddressType = class;
  PickupAddressType = class;
  DeliveryAddressType = class;
  BankType = class;
  NameType_Person_Type = class;
  NameType_Company_Type = class;
  NameType = class;
  CommunicationType = class;
  ContactType = class;
  PackStationType = class;
  PostOfficeType = class;
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

  partnerID_Type = type UnicodeString;

  procedureID = type UnicodeString;

  accountNumber_Type = type UnicodeString;

  accountNumberExpress_Type = type UnicodeString;

  identCode_Type = type UnicodeString;

  licensePlate_Type = type UnicodeString;

  airwayBill_Type = type UnicodeString;

  routeCode = type UnicodeString;

  routingCode = type UnicodeString;

  ZipType_germany_Type = type UnicodeString;

  ZipType_england_Type = type UnicodeString;

  ZipType_other_Type = type UnicodeString;

  Zip_Type = ZipType;

  city_Type = type UnicodeString;

  streetNameCode_Type = type UnicodeString;

  streetNumberCode_Type = type UnicodeString;

  CountryType_country_Type = type UnicodeString;

  CountryType_state_Type = type UnicodeString;

  Origin_Type = CountryType;

  AuthentificationType_user_Type = type UnicodeString;

  AuthentificationType_signature_Type = type UnicodeString;

  AuthentificationType_type_Type = type integer;

  Authentification = AuthentificationType;

  Version_majorRelease_Type = type UnicodeString;

  Version_minorRelease_Type = type UnicodeString;

  Version_build_Type = type UnicodeString;

  NativeAddressType_streetName_Type = type UnicodeString;

  NativeAddressType_streetNumber_Type = type UnicodeString;

  NativeAddressType_careOfName_Type = type UnicodeString;

  NativeAddressType_district_Type = type UnicodeString;

  NativeAddressType_floorNumber_Type = type UnicodeString;

  NativeAddressType_roomNumber_Type = type UnicodeString;

  NativeAddressType_note_Type = type UnicodeString;

  BankType_note_Type = type UnicodeString;

  BankType_bic_Type = type UnicodeString;

  NameType_Person_Type_salutation_Type = type UnicodeString;

  NameType_Person_Type_title_Type = type UnicodeString;

  NameType_Person_Type_firstname_Type = type UnicodeString;

  NameType_Person_Type_middlename_Type = type UnicodeString;

  NameType_Person_Type_lastname_Type = type UnicodeString;

  NameType_Company_Type_name1_Type = type UnicodeString;

  NameType_Company_Type_name2_Type = type UnicodeString;

  CommunicationType_phone_Type = type UnicodeString;

  CommunicationType_email_Type = type UnicodeString;

  CommunicationType_fax_Type = type UnicodeString;

  CommunicationType_mobile_Type = type UnicodeString;

  CommunicationType_internet_Type = type UnicodeString;

  CommunicationType_contactPerson_Type = type UnicodeString;

  PackStationType_number_Type = type UnicodeString;

  PackStationType_stationID_Type = type UnicodeString;

  PostOfficeType_number_Type = type UnicodeString;

  CustomerType_note_Type = type UnicodeString;

  Status_statuscode_Type = type UnicodeString;

  Status_statusDescription_Type = type UnicodeString;

  productKey = type UnicodeString;

  shipmentNumber = type UnicodeString;

  ZipType = class(TBaseComplexRemotable)
  private
    Fgermany : ZipType_germany_Type;
    Fengland : ZipType_england_Type;
    Fother : ZipType_other_Type;
  private
    function wstHas_germany() : Boolean;
    function wstHas_england() : Boolean;
    function wstHas_other() : Boolean;
  published
    property germany : ZipType_germany_Type read Fgermany write Fgermany stored wstHas_germany;
    property england : ZipType_england_Type read Fengland write Fengland stored wstHas_england;
    property other : ZipType_other_Type read Fother write Fother stored wstHas_other;
  end;

  CountryType = class(TBaseComplexRemotable)
  private
    Fcountry : CountryType_country_Type;
    FcountryISOCode : countryISOType;
    Fstate : CountryType_state_Type;
  private
    function wstHas_country() : Boolean;
    function wstHas_countryISOCode() : Boolean;
    function wstHas_state() : Boolean;
  published
    property country : CountryType_country_Type read Fcountry write Fcountry stored wstHas_country;
    property countryISOCode : countryISOType read FcountryISOCode write FcountryISOCode stored wstHas_countryISOCode;
    property state : CountryType_state_Type read Fstate write Fstate stored wstHas_state;
  end;

  AuthentificationType = class(TBaseComplexRemotable)
  private
    Fuser : AuthentificationType_user_Type;
    Fsignature : AuthentificationType_signature_Type;
    FaccountNumber : accountNumber_Type;
    F_type : AuthentificationType_type_Type;
  private
    function wstHas_accountNumber() : Boolean;
  published
    property user : AuthentificationType_user_Type read Fuser write Fuser;
    property signature : AuthentificationType_signature_Type read Fsignature write Fsignature;
    property accountNumber : accountNumber_Type read FaccountNumber write FaccountNumber stored wstHas_accountNumber;
    property _type : AuthentificationType_type_Type read F_type write F_type;
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
    FcareOfName : NativeAddressType_careOfName_Type;
    FZip : Zip_Type;
    Fcity : city_Type;
    Fdistrict : NativeAddressType_district_Type;
    FOrigin : Origin_Type;
    FfloorNumber : NativeAddressType_floorNumber_Type;
    FroomNumber : NativeAddressType_roomNumber_Type;
    FlanguageCodeISO : countryISOType;
    Fnote : NativeAddressType_note_Type;
  private
    function wstHas_careOfName() : Boolean;
    function wstHas_district() : Boolean;
    function wstHas_Origin() : Boolean;
    function wstHas_floorNumber() : Boolean;
    function wstHas_roomNumber() : Boolean;
    function wstHas_languageCodeISO() : Boolean;
    function wstHas_note() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property streetName : NativeAddressType_streetName_Type read FstreetName write FstreetName;
    property streetNumber : NativeAddressType_streetNumber_Type read FstreetNumber write FstreetNumber;
    property careOfName : NativeAddressType_careOfName_Type read FcareOfName write FcareOfName stored wstHas_careOfName;
    property Zip : Zip_Type read FZip write FZip;
    property city : city_Type read Fcity write Fcity;
    property district : NativeAddressType_district_Type read Fdistrict write Fdistrict stored wstHas_district;
    property Origin : Origin_Type read FOrigin write FOrigin stored wstHas_Origin;
    property floorNumber : NativeAddressType_floorNumber_Type read FfloorNumber write FfloorNumber stored wstHas_floorNumber;
    property roomNumber : NativeAddressType_roomNumber_Type read FroomNumber write FroomNumber stored wstHas_roomNumber;
    property languageCodeISO : countryISOType read FlanguageCodeISO write FlanguageCodeISO stored wstHas_languageCodeISO;
    property note : NativeAddressType_note_Type read Fnote write Fnote stored wstHas_note;
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
    FPostOffice : PostOfficeType;
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
    property PostOffice : PostOfficeType read FPostOffice write FPostOffice stored wstHas_PostOffice;
    property PackStation : PackStationType read FPackStation write FPackStation stored wstHas_PackStation;
    property streetNameCode : streetNameCode_Type read FstreetNameCode write FstreetNameCode stored wstHas_streetNameCode;
    property streetNumberCode : streetNumberCode_Type read FstreetNumberCode write FstreetNumberCode stored wstHas_streetNumberCode;
  end;

  BankType = class(TBaseComplexRemotable)
  private
    FaccountOwner : UnicodeString;
    FaccountNumber : UnicodeString;
    FbankCode : UnicodeString;
    FbankName : UnicodeString;
    Fiban : UnicodeString;
    Fnote : BankType_note_Type;
    Fbic : BankType_bic_Type;
  private
    function wstHas_accountNumber() : Boolean;
    function wstHas_bankCode() : Boolean;
    function wstHas_bankName() : Boolean;
    function wstHas_iban() : Boolean;
    function wstHas_note() : Boolean;
    function wstHas_bic() : Boolean;
  published
    property accountOwner : UnicodeString read FaccountOwner write FaccountOwner;
    property accountNumber : UnicodeString read FaccountNumber write FaccountNumber stored wstHas_accountNumber;
    property bankCode : UnicodeString read FbankCode write FbankCode stored wstHas_bankCode;
    property bankName : UnicodeString read FbankName write FbankName stored wstHas_bankName;
    property iban : UnicodeString read Fiban write Fiban stored wstHas_iban;
    property note : BankType_note_Type read Fnote write Fnote stored wstHas_note;
    property bic : BankType_bic_Type read Fbic write Fbic stored wstHas_bic;
  end;

  NameType_Person_Type = class(TBaseComplexRemotable)
  private
    Fsalutation : NameType_Person_Type_salutation_Type;
    Ftitle : NameType_Person_Type_title_Type;
    Ffirstname : NameType_Person_Type_firstname_Type;
    Fmiddlename : NameType_Person_Type_middlename_Type;
    Flastname : NameType_Person_Type_lastname_Type;
  private
    function wstHas_salutation() : Boolean;
    function wstHas_title() : Boolean;
    function wstHas_middlename() : Boolean;
  published
    property salutation : NameType_Person_Type_salutation_Type read Fsalutation write Fsalutation stored wstHas_salutation;
    property title : NameType_Person_Type_title_Type read Ftitle write Ftitle stored wstHas_title;
    property firstname : NameType_Person_Type_firstname_Type read Ffirstname write Ffirstname;
    property middlename : NameType_Person_Type_middlename_Type read Fmiddlename write Fmiddlename stored wstHas_middlename;
    property lastname : NameType_Person_Type_lastname_Type read Flastname write Flastname;
  end;

  NameType_Company_Type = class(TBaseComplexRemotable)
  private
    Fname1 : NameType_Company_Type_name1_Type;
    Fname2 : NameType_Company_Type_name2_Type;
  private
    function wstHas_name2() : Boolean;
  published
    property name1 : NameType_Company_Type_name1_Type read Fname1 write Fname1;
    property name2 : NameType_Company_Type_name2_Type read Fname2 write Fname2 stored wstHas_name2;
  end;

  NameType = class(TBaseComplexRemotable)
  private
    FPerson : NameType_Person_Type;
    FCompany : NameType_Company_Type;
  private
    function wstHas_Person() : Boolean;
    function wstHas_Company() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Person : NameType_Person_Type read FPerson write FPerson stored wstHas_Person;
    property Company : NameType_Company_Type read FCompany write FCompany stored wstHas_Company;
  end;

  CommunicationType = class(TBaseComplexRemotable)
  private
    Fphone : CommunicationType_phone_Type;
    Femail : CommunicationType_email_Type;
    Ffax : CommunicationType_fax_Type;
    Fmobile : CommunicationType_mobile_Type;
    Finternet : CommunicationType_internet_Type;
    FcontactPerson : CommunicationType_contactPerson_Type;
  private
    function wstHas_phone() : Boolean;
    function wstHas_email() : Boolean;
    function wstHas_fax() : Boolean;
    function wstHas_mobile() : Boolean;
    function wstHas_internet() : Boolean;
    function wstHas_contactPerson() : Boolean;
  published
    property phone : CommunicationType_phone_Type read Fphone write Fphone stored wstHas_phone;
    property email : CommunicationType_email_Type read Femail write Femail stored wstHas_email;
    property fax : CommunicationType_fax_Type read Ffax write Ffax stored wstHas_fax;
    property mobile : CommunicationType_mobile_Type read Fmobile write Fmobile stored wstHas_mobile;
    property internet : CommunicationType_internet_Type read Finternet write Finternet stored wstHas_internet;
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
    Fnumber : PackStationType_number_Type;
    FstationID : PackStationType_stationID_Type;
    FZip : Zip_Type;
    Fcity : city_Type;
    FOrigin : Origin_Type;
  private
    function wstHas_Origin() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property number : PackStationType_number_Type read Fnumber write Fnumber;
    property stationID : PackStationType_stationID_Type read FstationID write FstationID;
    property Zip : Zip_Type read FZip write FZip;
    property city : city_Type read Fcity write Fcity;
    property Origin : Origin_Type read FOrigin write FOrigin stored wstHas_Origin;
  end;

  PostOfficeType = class(TBaseComplexRemotable)
  private
    Fnumber : PostOfficeType_number_Type;
    FZip : Zip_Type;
    Fcity : city_Type;
    FOrigin : Origin_Type;
  private
    function wstHas_Origin() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property number : PostOfficeType_number_Type read Fnumber write Fnumber;
    property Zip : Zip_Type read FZip write FZip;
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
    function wstHas_Name() : Boolean;
    function wstHas_vatID() : Boolean;
    function wstHas_Bank() : Boolean;
    function wstHas_note() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Name : NameType read FName write FName stored wstHas_Name;
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
    FidentCode : identCode_Type;
    FlicensePlate : licensePlate_Type;
    FairwayBill : airwayBill_Type;
    FshipmentNumber : cis_base.shipmentNumber;
  private
    function wstHas_identCode() : Boolean;
    function wstHas_licensePlate() : Boolean;
    function wstHas_airwayBill() : Boolean;
    function wstHas_shipmentNumber() : Boolean;
  published
    property identCode : identCode_Type read FidentCode write FidentCode stored wstHas_identCode;
    property licensePlate : licensePlate_Type read FlicensePlate write FlicensePlate stored wstHas_licensePlate;
    property airwayBill : airwayBill_Type read FairwayBill write FairwayBill stored wstHas_airwayBill;
    property shipmentNumber : cis_base.shipmentNumber read FshipmentNumber write FshipmentNumber stored wstHas_shipmentNumber;
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

Implementation
uses metadata_repository, record_rtti, wst_types;

function ZipType.wstHas_germany() : Boolean;
begin
  Result := ( Fgermany <> '' );
end;

function ZipType.wstHas_england() : Boolean;
begin
  Result := ( Fengland <> '' );
end;

function ZipType.wstHas_other() : Boolean;
begin
  Result := ( Fother <> '' );
end;

function CountryType.wstHas_country() : Boolean;
begin
  Result := ( Fcountry <> '' );
end;

function CountryType.wstHas_countryISOCode() : Boolean;
begin
  Result := ( FcountryISOCode <> '' );
end;

function CountryType.wstHas_state() : Boolean;
begin
  Result := ( Fstate <> '' );
end;

function AuthentificationType.wstHas_accountNumber() : Boolean;
begin
  Result := ( FaccountNumber <> '' );
end;

function Version_Type.wstHas_build() : Boolean;
begin
  Result := ( Fbuild <> '' );
end;

{ NativeAddressType }

constructor NativeAddressType.Create();
begin
  inherited Create();
  FZip := Zip_Type.Create();
  FOrigin := Origin_Type.Create();
end;

procedure NativeAddressType.FreeObjectProperties();
begin
  if Assigned(FZip) then
    FreeAndNil(FZip);
  if Assigned(FOrigin) then
    FreeAndNil(FOrigin);
  inherited FreeObjectProperties();
end;

function NativeAddressType.wstHas_careOfName() : Boolean;
begin
  Result := ( FcareOfName <> '' );
end;

function NativeAddressType.wstHas_district() : Boolean;
begin
  Result := ( Fdistrict <> '' );
end;

function NativeAddressType.wstHas_Origin() : Boolean;
begin
  Result := ( FOrigin <> nil );
end;

function NativeAddressType.wstHas_floorNumber() : Boolean;
begin
  Result := ( FfloorNumber <> '' );
end;

function NativeAddressType.wstHas_roomNumber() : Boolean;
begin
  Result := ( FroomNumber <> '' );
end;

function NativeAddressType.wstHas_languageCodeISO() : Boolean;
begin
  Result := ( FlanguageCodeISO <> '' );
end;

function NativeAddressType.wstHas_note() : Boolean;
begin
  Result := ( Fnote <> '' );
end;

{ PickupAddressType }

constructor PickupAddressType.Create();
begin
  inherited Create();
  FNativeAddress := NativeAddressType.Create();
  FPackStation := PackStationType.Create();
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
  FNativeAddress := NativeAddressType.Create();
  FPostOffice := PostOfficeType.Create();
  FPackStation := PackStationType.Create();
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

function BankType.wstHas_accountNumber() : Boolean;
begin
  Result := ( FaccountNumber <> '' );
end;

function BankType.wstHas_bankCode() : Boolean;
begin
  Result := ( FbankCode <> '' );
end;

function BankType.wstHas_bankName() : Boolean;
begin
  Result := ( FbankName <> '' );
end;

function BankType.wstHas_iban() : Boolean;
begin
  Result := ( Fiban <> '' );
end;

function BankType.wstHas_note() : Boolean;
begin
  Result := ( Fnote <> '' );
end;

function BankType.wstHas_bic() : Boolean;
begin
  Result := ( Fbic <> '' );
end;

function NameType_Person_Type.wstHas_salutation() : Boolean;
begin
  Result := ( Fsalutation <> '' );
end;

function NameType_Person_Type.wstHas_title() : Boolean;
begin
  Result := ( Ftitle <> '' );
end;

function NameType_Person_Type.wstHas_middlename() : Boolean;
begin
  Result := ( Fmiddlename <> '' );
end;

function NameType_Company_Type.wstHas_name2() : Boolean;
begin
  Result := ( Fname2 <> '' );
end;

{ NameType }

constructor NameType.Create();
begin
  inherited Create();
  FPerson := NameType_Person_Type.Create();
  FCompany := NameType_Company_Type.Create();
end;

procedure NameType.FreeObjectProperties();
begin
  if Assigned(FPerson) then
    FreeAndNil(FPerson);
  if Assigned(FCompany) then
    FreeAndNil(FCompany);
  inherited FreeObjectProperties();
end;

function NameType.wstHas_Person() : Boolean;
begin
  Result := ( FPerson <> nil );
end;

function NameType.wstHas_Company() : Boolean;
begin
  Result := ( FCompany <> nil );
end;

function CommunicationType.wstHas_phone() : Boolean;
begin
  Result := ( Fphone <> '' );
end;

function CommunicationType.wstHas_email() : Boolean;
begin
  Result := ( Femail <> '' );
end;

function CommunicationType.wstHas_fax() : Boolean;
begin
  Result := ( Ffax <> '' );
end;

function CommunicationType.wstHas_mobile() : Boolean;
begin
  Result := ( Fmobile <> '' );
end;

function CommunicationType.wstHas_internet() : Boolean;
begin
  Result := ( Finternet <> '' );
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
  FZip := Zip_Type.Create();
  FOrigin := Origin_Type.Create();
end;

procedure PackStationType.FreeObjectProperties();
begin
  if Assigned(FZip) then
    FreeAndNil(FZip);
  if Assigned(FOrigin) then
    FreeAndNil(FOrigin);
  inherited FreeObjectProperties();
end;

function PackStationType.wstHas_Origin() : Boolean;
begin
  Result := ( FOrigin <> nil );
end;

{ PostOfficeType }

constructor PostOfficeType.Create();
begin
  inherited Create();
  FZip := Zip_Type.Create();
  FOrigin := Origin_Type.Create();
end;

procedure PostOfficeType.FreeObjectProperties();
begin
  if Assigned(FZip) then
    FreeAndNil(FZip);
  if Assigned(FOrigin) then
    FreeAndNil(FOrigin);
  inherited FreeObjectProperties();
end;

function PostOfficeType.wstHas_Origin() : Boolean;
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

function CustomerType.wstHas_Name() : Boolean;
begin
  Result := ( FName <> nil );
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

function ShipmentNumberType.wstHas_identCode() : Boolean;
begin
  Result := ( FidentCode <> '' );
end;

function ShipmentNumberType.wstHas_licensePlate() : Boolean;
begin
  Result := ( FlicensePlate <> '' );
end;

function ShipmentNumberType.wstHas_airwayBill() : Boolean;
begin
  Result := ( FairwayBill <> '' );
end;

function ShipmentNumberType.wstHas_shipmentNumber() : Boolean;
begin
  Result := ( FshipmentNumber <> '' );
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


var
  typeRegistryInstance : TTypeRegistry = nil;
initialization
  typeRegistryInstance := GetTypeRegistry();

  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(Dimension_unit_Type),'Dimension_unit_Type');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ZipType),'ZipType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CountryType),'CountryType',[trioqualifiedElement, triounqualifiedAttribute]);
  // DeclaredName AuthentificationType wurde in Authentification gändert
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(AuthentificationType),'Authentification',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(Version_Type),'Version',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(NativeAddressType),'NativeAddressType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(PickupAddressType),'PickupAddressType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DeliveryAddressType),'DeliveryAddressType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(BankType),'BankType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(NameType_Person_Type),'NameType_Person_Type',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(NameType_Company_Type),'NameType_Company_Type',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(NameType),'NameType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CommunicationType),'CommunicationType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ContactType),'ContactType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(PackStationType),'PackStationType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(PostOfficeType),'PostOfficeType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CustomerType),'CustomerType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ErrorType),'ErrorType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ShipmentNumberType),'ShipmentNumberType',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(Status),'Status',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(Dimension),'Dimension',[trioqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(TimeFrame),'TimeFrame',[trioqualifiedElement, triounqualifiedAttribute]);

  typeRegistryInstance.ItemByTypeInfo[TypeInfo(AuthentificationType)].RegisterExternalPropertyName('_type','type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(Dimension)].RegisterExternalPropertyName('_unit','unit');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(TimeFrame)].RegisterExternalPropertyName('_until','until');

End.

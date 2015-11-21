{
This unit has been produced by ws_helper.
  Input unit name : "is_base_de".
  This unit name  : "is_base_de".
  Date            : "08.11.2015 00:56:36".
}
unit is_base_de;
{$IFDEF FPC}
  {$mode objfpc} {$H+}
{$ENDIF}
{$DEFINE WST_RECORD_RTTI}
interface

uses SysUtils, Classes, TypInfo, base_service_intf, service_intf,
     cis_base;

const
  sEMPTY_NAME_SPACE = '';
  sNAME_SPACE = 'http://de.ws.intraship';
  sUNIT_NAME = 'is_base_de';

type

  CreateShipmentTDRequest_ShipmentOrderArray = class;
  CreateShipmentTDRequest = class;
  CreateShipmentResponse_CreationStateArray = class;
  CreateShipmentResponse = class;
  CreateShipmentDDRequest_ShipmentOrderArray = class;
  CreateShipmentDDRequest = class;
  DeleteShipmentTDRequest_ShipmentNumberArray = class;
  DeleteShipmentTDRequest = class;
  DeleteShipmentResponse_DeletionStateArray = class;
  DeleteShipmentResponse = class;
  DeleteShipmentDDRequest_ShipmentNumberArray = class;
  DeleteShipmentDDRequest = class;
  DoManifestTDRequest_ShipmentNumberArray = class;
  DoManifestTDRequest = class;
  DoManifestResponse_ManifestStateArray = class;
  DoManifestResponse = class;
  DoManifestDDRequest_ShipmentNumberArray = class;
  DoManifestDDRequest = class;
  GetLabelTDRequest_ShipmentNumberArray = class;
  GetLabelTDRequest = class;
  GetLabelResponse_LabelDataArray = class;
  GetLabelResponse = class;
  GetLabelDDRequest_ShipmentNumberArray = class;
  GetLabelDDRequest = class;
  BookPickupRequest = class;
  BookPickupResponse = class;
  CancelPickupRequest = class;
  CancelPickupResponse = class;
  GetVersionResponse = class;
  GetExportDocTDRequest_ShipmentNumberArray = class;
  GetExportDocTDRequest = class;
  GetExportDocResponse_ExportDocDataArray = class;
  GetExportDocResponse = class;
  GetExportDocDDRequest_ShipmentNumberArray = class;
  GetExportDocDDRequest = class;
  GetManifestDDRequest_manifestDateRange_Type = class;
  GetManifestDDRequest = class;
  GetManifestDDResponse = class;
  UpdateShipmentDDRequest = class;
  UpdateShipmentResponse = class;
  DeveloperAuthentification = class;
  CreationState_StatusMessageArray = class;
  CreationState_PieceInformationArray = class;
  CreationState = class;
  Statusinformation = class;
  PieceInformation = class;
  ShipmentOrderTDType_Shipment_Type = class;
  ShipmentOrderTDType_Pickup_Type = class;
  ShipmentOrderTDType = class;
  ShipmentOrderDDType_Shipment_Type = class;
  ShipmentOrderDDType_Pickup_Type = class;
  ShipmentOrderDDType = class;
  ShipperType = class;
  ShipperTDType = class;
  ShipperDDType = class;
  ReceiverType = class;
  ReceiverTDType = class;
  ReceiverDDType = class;
  IdentityType = class;
  ShipmentDetailsType = class;
  ShipmentDetailsTDType_Account_Type = class;
  ShipmentDetailsTDType_AccountPaidBy_Type = class;
  ShipmentDetailsTDType_ShipmentItemArray = class;
  ShipmentDetailsTDType_ServiceArray = class;
  ShipmentDetailsTDType_NotificationArray = class;
  ShipmentDetailsTDType = class;
  ShipmentDetailsDDType_Attendance_Type = class;
  ShipmentDetailsDDType_ShipmentItemArray = class;
  ShipmentDetailsDDType_ServiceArray = class;
  ShipmentDetailsDDType_NotificationArray = class;
  ShipmentDetailsDDType = class;
  ShipmentItemType = class;
  ShipmentItemTDType = class;
  ShipmentItemDDType = class;
  ShipmentServiceTD = class;
  TDServiceGroupDateTimeOptionType_ExpressSaturday_Type = class;
  TDServiceGroupDateTimeOptionType = class;
  TDServiceGroupOtherType_Insurance_Type = class;
  TDServiceGroupOtherType = class;
  ShipmentServiceDD = class;
  DDServiceGroupDateTimeOptionType_DeliveryOnTime_Type = class;
  DDServiceGroupDateTimeOptionType = class;
  DDShipmentServiceGroupIdentType_Ident_Type = class;
  DDShipmentServiceGroupIdentType_IdentExtra_Type = class;
  DDShipmentServiceGroupIdentType_IdentPremium_Type = class;
  DDShipmentServiceGroupIdentType_ContractSubmission_Type = class;
  DDShipmentServiceGroupIdentType_SMSAviso_Type = class;
  DDShipmentServiceGroupIdentType_CheckMinimumAge_Type = class;
  DDShipmentServiceGroupIdentType = class;
  DDShipmentServiceGroupPickupType = class;
  DDServiceGroupBusinessPackInternationalType_Endorsement_Type = class;
  DDServiceGroupBusinessPackInternationalType = class;
  DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type = class;
  DDServiceGroupDHLPaketType_ShipmentAdvisory_Type = class;
  DDServiceGroupDHLPaketType_Endorsement_Type = class;
  DDServiceGroupDHLPaketType = class;
  EndorsementServiceconfiguration = class;
  EndorsementServiceconfigurationTeZu = class;
  DDServiceGroupOtherType_HigherInsurance_Type = class;
  DDServiceGroupOtherType_COD_Type = class;
  DDServiceGroupOtherType_Unfree_Type = class;
  DDServiceGroupOtherType_DangerousGoods_Type = class;
  DDServiceGroupOtherType_Bulkfreight_Type = class;
  DDServiceGroupOtherType = class;
  ShipmentNotificationType = class;
  ExportDocumentTDType_ExportDocPosition_Type = class;
  ExportDocumentTDType_ExportDocPositionArray = class;
  ExportDocumentTDType = class;
  ExportDocumentDDType_ExportDocPosition_Type = class;
  ExportDocumentDDType_ExportDocPositionArray = class;
  ExportDocumentDDType = class;
  FurtherAddressesDDType_DeliveryAdress_Type = class;
  FurtherAddressesDDType = class;
  LabelData = class;
  ExportDocData = class;
  ManifestState = class;
  DeletionState = class;
  PickupDetailsType = class;
  PickupAddressType = class;
  PickupOrdererType = class;
  PickupBookingInformationType = class;
  IdentityData_DrivingLicense_Type = class;
  IdentityData_IdentityCard_Type = class;
  IdentityData_BankCard_Type = class;
  IdentityData = class;
  PackstationType = class;
  PostfilialeType = class;

  GetExportDocTDRequest_DocType_Type = ( 
    PDF
    ,URL
  );

  GetExportDocDDRequest_DocType_Type = ( 
    GetExportDocDDRequest_DocType_Type_PDF
    ,GetExportDocDDRequest_DocType_Type_URL
  );

  ShipmentOrderTDType_LabelResponseType_Type = ( 
    ShipmentOrderTDType_LabelResponseType_Type_URL
    ,XML
  );

  ShipmentOrderDDType_LabelResponseType_Type = ( 
    ShipmentOrderDDType_LabelResponseType_Type_URL
    ,ShipmentOrderDDType_LabelResponseType_Type_XML
  );

  ShipmentOrderDDType_PRINTONLYIFCODEABLE_Type = ( 
    ShipmentOrderDDType_PRINTONLYIFCODEABLE_Type__0
    ,ShipmentOrderDDType_PRINTONLYIFCODEABLE_Type__1
  );

  ShipmentDetailsTDType_Dutiable_Type = ( 
    ShipmentDetailsTDType_Dutiable_Type__0
    ,ShipmentDetailsTDType_Dutiable_Type__1
  );

  EndorsementServiceconfiguration_active_Type = ( 
    EndorsementServiceconfiguration_active_Type__0
    ,EndorsementServiceconfiguration_active_Type__1
  );

  EndorsementServiceconfigurationTeZu_active_Type = ( 
    EndorsementServiceconfigurationTeZu_active_Type__0
    ,EndorsementServiceconfigurationTeZu_active_Type__1
  );

  DDServiceGroupOtherType_Unfree_Type_PaymentType_Type = ( 
    DDServiceGroupOtherType_Unfree_Type_PaymentType_Type__0
    ,DDServiceGroupOtherType_Unfree_Type_PaymentType_Type__1
  );

  DDServiceGroupOtherType_Bulkfreight_Type_BulkfreightType_Type = ( 
    Lang
    ,L
    ,XL
    ,XXL
  );

  ExportDocumentTDType_InvoiceType_Type = ( 
    proforma
    ,commercial
  );

  ExportDocumentTDType_ExportType_Type = ( 
    P
    ,T
    ,R
  );

  ExportDocumentDDType_InvoiceType_Type = ( 
    ExportDocumentDDType_InvoiceType_Type_proforma
    ,ExportDocumentDDType_InvoiceType_Type_commercial
  );

  ExportDocumentDDType_ExportType_Type = ( 
    ExportDocumentDDType_ExportType_Type__0
    ,ExportDocumentDDType_ExportType_Type__1
    ,ExportDocumentDDType_ExportType_Type__2
    ,ExportDocumentDDType_ExportType_Type__3
    ,ExportDocumentDDType_ExportType_Type__4
  );

  PickupBookingInformationType_ProductID_Type = ( 
    TDI
    ,TDN
    ,DDI
    ,DDN
  );

  SequenceNumber = type UnicodeString;

  CreationState_StatusCode_Type = type UnicodeString;

  CreationState_StatusMessage_Type = type UnicodeString;

  ShipmentDetailsType_ShipmentDate_Type = type UnicodeString;

  ShipmentDetailsType_DeclaredValueOfGoods_Type = type Single;

  ShipmentItemType_WeightInKG_Type = type Currency;

  ShipmentItemType_LengthInCM_Type = type integer;

  ShipmentItemType_WidthInCM_Type = type integer;

  ShipmentItemType_HeightInCM_Type = type integer;

  TDServiceGroupDateTimeOptionType_ExpressSaturday_Type_ShippingDate_Type = type UnicodeString;

  TDServiceGroupOtherType_Insurance_Type_InsuranceAmount_Type = type Currency;

  TDServiceGroupOtherType_Insurance_Type_InsuranceCurrency_Type = type UnicodeString;

  DDShipmentServiceGroupIdentType_Ident_Type_DateOfBirth_Type = type UnicodeString;

  DDShipmentServiceGroupIdentType_IdentPremium_Type_DateOfBirth_Type = type UnicodeString;

  DDShipmentServiceGroupIdentType_ContractSubmission_Type_TotalPages_Type = type integer;

  DDShipmentServiceGroupIdentType_ContractSubmission_Type_TotalSignatures_Type = type integer;

  DDShipmentServiceGroupIdentType_ContractSubmission_Type_TotalDocsSender_Type = type integer;

  DDShipmentServiceGroupIdentType_ContractSubmission_Type_TotalDocsReceiver_Type = type integer;

  EndorsementServiceconfigurationTeZu_tezuDate_Type = type UnicodeString;

  DDServiceGroupOtherType_HigherInsurance_Type_InsuranceAmount_Type = type Currency;

  DDServiceGroupOtherType_COD_Type_CODAmount_Type = type Currency;

  ExportDocumentTDType_InvoiceDate_Type = type UnicodeString;

  ExportDocumentTDType_ExportDocPosition_Type_Amount_Type = type integer;

  ExportDocumentTDType_ExportDocPosition_Type_ValuePerPiece_Type = type Currency;

  ExportDocumentTDType_ExportDocPosition_Type_NetWeightInKG_Type = type Currency;

  ExportDocumentTDType_ExportDocPosition_Type_GrossWeightInKG_Type = type Currency;

  ExportDocumentTDType_ExportDocPosition_Type_ISOCountryCodeOfOrigin_Type = type UnicodeString;

  ExportDocumentDDType_InvoiceDate_Type = type UnicodeString;

  ExportDocumentDDType_Amount_Type = type integer;

  ExportDocumentDDType_AdditionalFee_Type = type Currency;

  ExportDocumentDDType_CustomsValue_Type = type Currency;

  ExportDocumentDDType_ExportDocPosition_Type_Amount_Type = type integer;

  ExportDocumentDDType_ExportDocPosition_Type_NetWeightInKG_Type = type Currency;

  ExportDocumentDDType_ExportDocPosition_Type_GrossWeightInKG_Type = type Currency;

  ExportDocumentDDType_ExportDocPosition_Type_CustomsValue_Type = type Currency;

  PickupDetailsType_PickupDate_Type = type UnicodeString;

  PickupDetailsType_ReadyByTime_Type = type UnicodeString;

  PickupDetailsType_ClosingTime_Type = type UnicodeString;

  PickupBookingInformationType_PickupDate_Type = type UnicodeString;

  PickupBookingInformationType_ReadyByTime_Type = type UnicodeString;

  PickupBookingInformationType_ClosingTime_Type = type UnicodeString;

  PickupBookingInformationType_AmountOfPieces_Type = type integer;

  PickupBookingInformationType_AmountOfPallets_Type = type integer;

  PickupBookingInformationType_WeightInKG_Type = type Currency;

  PickupBookingInformationType_CountOfShipments_Type = type integer;

  PickupBookingInformationType_TotalVolumeWeight_Type = type Currency;

  PickupBookingInformationType_MaxLengthInCM_Type = type Currency;

  PickupBookingInformationType_MaxWidthInCM_Type = type Currency;

  PickupBookingInformationType_MaxHeightInCM_Type = type Currency;

  PackstationType_Zip_Type = type UnicodeString;

  PackstationType_City_Type = type UnicodeString;

  PostfilialeType_Zip_Type = type UnicodeString;

  PostfilialeType_City_Type = type UnicodeString;

  CreateShipmentTDRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FShipmentOrder : CreateShipmentTDRequest_ShipmentOrderArray;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property ShipmentOrder : CreateShipmentTDRequest_ShipmentOrderArray read FShipmentOrder write FShipmentOrder;
  end;

  CreateShipmentResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    Fstatus : Statusinformation;
    FCreationState : CreateShipmentResponse_CreationStateArray;
  private
    function wstHas_CreationState() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property status : Statusinformation read Fstatus write Fstatus;
    property CreationState : CreateShipmentResponse_CreationStateArray read FCreationState write FCreationState stored wstHas_CreationState;
  end;

  CreateShipmentDDRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FShipmentOrder : CreateShipmentDDRequest_ShipmentOrderArray;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property ShipmentOrder : CreateShipmentDDRequest_ShipmentOrderArray read FShipmentOrder write FShipmentOrder;
  end;

  DeleteShipmentTDRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FShipmentNumber : DeleteShipmentTDRequest_ShipmentNumberArray;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property ShipmentNumber : DeleteShipmentTDRequest_ShipmentNumberArray read FShipmentNumber write FShipmentNumber;
  end;

  DeleteShipmentResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FStatus : Statusinformation;
    FDeletionState : DeleteShipmentResponse_DeletionStateArray;
  private
    function wstHas_DeletionState() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property Status : Statusinformation read FStatus write FStatus;
    property DeletionState : DeleteShipmentResponse_DeletionStateArray read FDeletionState write FDeletionState stored wstHas_DeletionState;
  end;

  DeleteShipmentDDRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FShipmentNumber : DeleteShipmentDDRequest_ShipmentNumberArray;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property ShipmentNumber : DeleteShipmentDDRequest_ShipmentNumberArray read FShipmentNumber write FShipmentNumber;
  end;

  DoManifestTDRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FShipmentNumber : DoManifestTDRequest_ShipmentNumberArray;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property ShipmentNumber : DoManifestTDRequest_ShipmentNumberArray read FShipmentNumber write FShipmentNumber;
  end;

  DoManifestResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FStatus : Statusinformation;
    FManifestState : DoManifestResponse_ManifestStateArray;
  private
    function wstHas_ManifestState() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property Status : Statusinformation read FStatus write FStatus;
    property ManifestState : DoManifestResponse_ManifestStateArray read FManifestState write FManifestState stored wstHas_ManifestState;
  end;

  DoManifestDDRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FShipmentNumber : DoManifestDDRequest_ShipmentNumberArray;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property ShipmentNumber : DoManifestDDRequest_ShipmentNumberArray read FShipmentNumber write FShipmentNumber;
  end;

  GetLabelTDRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FShipmentNumber : GetLabelTDRequest_ShipmentNumberArray;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property ShipmentNumber : GetLabelTDRequest_ShipmentNumberArray read FShipmentNumber write FShipmentNumber;
  end;

  GetLabelResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    Fstatus : Statusinformation;
    FLabelData : GetLabelResponse_LabelDataArray;
  private
    function wstHas_LabelData() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property status : Statusinformation read Fstatus write Fstatus;
    property LabelData : GetLabelResponse_LabelDataArray read FLabelData write FLabelData stored wstHas_LabelData;
  end;

  GetLabelDDRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FShipmentNumber : GetLabelDDRequest_ShipmentNumberArray;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property ShipmentNumber : GetLabelDDRequest_ShipmentNumberArray read FShipmentNumber write FShipmentNumber;
  end;

  BookPickupRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FBookingInformation : PickupBookingInformationType;
    FPickupAddress : PickupAddressType;
    FContactOrderer : PickupOrdererType;
  private
    function wstHas_ContactOrderer() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property BookingInformation : PickupBookingInformationType read FBookingInformation write FBookingInformation;
    property PickupAddress : PickupAddressType read FPickupAddress write FPickupAddress;
    property ContactOrderer : PickupOrdererType read FContactOrderer write FContactOrderer stored wstHas_ContactOrderer;
  end;

  BookPickupResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FStatus : Statusinformation;
    FConfirmationNumber : UnicodeString;
    FShipmentNumber : UnicodeString;
  private
    function wstHas_ConfirmationNumber() : Boolean;
    function wstHas_ShipmentNumber() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property Status : Statusinformation read FStatus write FStatus;
    property ConfirmationNumber : UnicodeString read FConfirmationNumber write FConfirmationNumber stored wstHas_ConfirmationNumber;
    property ShipmentNumber : UnicodeString read FShipmentNumber write FShipmentNumber stored wstHas_ShipmentNumber;
  end;

  CancelPickupRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FBookingConfirmationNumber : UnicodeString;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property BookingConfirmationNumber : UnicodeString read FBookingConfirmationNumber write FBookingConfirmationNumber;
  end;

  CancelPickupResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FStatus : Statusinformation;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property Status : Statusinformation read FStatus write FStatus;
  end;

  GetVersionResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
  end;

  GetExportDocTDRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FShipmentNumber : GetExportDocTDRequest_ShipmentNumberArray;
    FDocType : GetExportDocTDRequest_DocType_Type;
  private
    function wstHas_DocType() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property ShipmentNumber : GetExportDocTDRequest_ShipmentNumberArray read FShipmentNumber write FShipmentNumber;
    property DocType : GetExportDocTDRequest_DocType_Type read FDocType write FDocType stored wstHas_DocType;
  end;

  GetExportDocResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    Fstatus : Statusinformation;
    FExportDocData : GetExportDocResponse_ExportDocDataArray;
  private
    function wstHas_ExportDocData() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property status : Statusinformation read Fstatus write Fstatus;
    property ExportDocData : GetExportDocResponse_ExportDocDataArray read FExportDocData write FExportDocData stored wstHas_ExportDocData;
  end;

  GetExportDocDDRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FShipmentNumber : GetExportDocDDRequest_ShipmentNumberArray;
    FDocType : GetExportDocDDRequest_DocType_Type;
  private
    function wstHas_DocType() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property ShipmentNumber : GetExportDocDDRequest_ShipmentNumberArray read FShipmentNumber write FShipmentNumber;
    property DocType : GetExportDocDDRequest_DocType_Type read FDocType write FDocType stored wstHas_DocType;
  end;

  GetManifestDDRequest_manifestDateRange_Type = class(TBaseComplexRemotable)
  private
    FfromDate : UnicodeString;
    FtoDate : UnicodeString;
  published
    property fromDate : UnicodeString read FfromDate write FfromDate;
    property toDate : UnicodeString read FtoDate write FtoDate;
  end;

  GetManifestDDRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FmanifestDate : UnicodeString;
    FmanifestDateRange : GetManifestDDRequest_manifestDateRange_Type;
  private
    function wstHas_manifestDate() : Boolean;
    function wstHas_manifestDateRange() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property manifestDate : UnicodeString read FmanifestDate write FmanifestDate stored wstHas_manifestDate;
    property manifestDateRange : GetManifestDDRequest_manifestDateRange_Type read FmanifestDateRange write FmanifestDateRange stored wstHas_manifestDateRange;
  end;

  GetManifestDDResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    Fstatus : Statusinformation;
    FManifestPDFData : UnicodeString;
  private
    function wstHas_ManifestPDFData() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property status : Statusinformation read Fstatus write Fstatus;
    property ManifestPDFData : UnicodeString read FManifestPDFData write FManifestPDFData stored wstHas_ManifestPDFData;
  end;

  UpdateShipmentDDRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FShipmentNumber : ShipmentNumberType;
    FShipmentOrder : ShipmentOrderDDType;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property ShipmentNumber : ShipmentNumberType read FShipmentNumber write FShipmentNumber;
    property ShipmentOrder : ShipmentOrderDDType read FShipmentOrder write FShipmentOrder;
  end;

  UpdateShipmentResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    Fstatus : Statusinformation;
    FCreationState : is_base_de.CreationState;
  private
    function wstHas_CreationState() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property status : Statusinformation read Fstatus write Fstatus;
    property CreationState : is_base_de.CreationState read FCreationState write FCreationState stored wstHas_CreationState;
  end;

  DeveloperAuthentification = class(TBaseComplexRemotable)
  private
    FDEVID : UnicodeString;
    FAPPID : UnicodeString;
    FCERTID : UnicodeString;
  published
    property DEVID : UnicodeString read FDEVID write FDEVID;
    property APPID : UnicodeString read FAPPID write FAPPID;
    property CERTID : UnicodeString read FCERTID write FCERTID;
  end;

  CreationState = class(TBaseComplexRemotable)
  private
    FStatusCode : CreationState_StatusCode_Type;
    FStatusMessage : CreationState_StatusMessageArray;
    FSequenceNumber : is_base_de.SequenceNumber;
    FShipmentNumber : ShipmentNumberType;
    FPieceInformation : CreationState_PieceInformationArray;
    FLabelurl : UnicodeString;
    FXMLLabel : UnicodeString;
    FPickupConfirmationNumber : UnicodeString;
  private
    function wstHas_StatusMessage() : Boolean;
    function wstHas_ShipmentNumber() : Boolean;
    function wstHas_PieceInformation() : Boolean;
    function wstHas_Labelurl() : Boolean;
    function wstHas_XMLLabel() : Boolean;
    function wstHas_PickupConfirmationNumber() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property StatusCode : CreationState_StatusCode_Type read FStatusCode write FStatusCode;
    property StatusMessage : CreationState_StatusMessageArray read FStatusMessage write FStatusMessage stored wstHas_StatusMessage;
    property SequenceNumber : is_base_de.SequenceNumber read FSequenceNumber write FSequenceNumber;
    property ShipmentNumber : ShipmentNumberType read FShipmentNumber write FShipmentNumber stored wstHas_ShipmentNumber;
    property PieceInformation : CreationState_PieceInformationArray read FPieceInformation write FPieceInformation stored wstHas_PieceInformation;
    property Labelurl : UnicodeString read FLabelurl write FLabelurl stored wstHas_Labelurl;
    property XMLLabel : UnicodeString read FXMLLabel write FXMLLabel stored wstHas_XMLLabel;
    property PickupConfirmationNumber : UnicodeString read FPickupConfirmationNumber write FPickupConfirmationNumber stored wstHas_PickupConfirmationNumber;
  end;

  Statusinformation = class(TBaseComplexRemotable)
  private
    FStatusCode : integer;
    FStatusMessage : UnicodeString;
  published
    property StatusCode : integer read FStatusCode write FStatusCode;
    property StatusMessage : UnicodeString read FStatusMessage write FStatusMessage;
  end;

  PieceInformation = class(TBaseComplexRemotable)
  private
    FPieceNumber : ShipmentNumberType;
  private
    function wstHas_PieceNumber() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property PieceNumber : ShipmentNumberType read FPieceNumber write FPieceNumber stored wstHas_PieceNumber;
  end;

  ShipmentOrderTDType_Shipment_Type = class(TBaseComplexRemotable)
  private
    FShipmentDetails : ShipmentDetailsTDType;
    FShipper : ShipperTDType;
    FReceiver : ReceiverTDType;
    FExportDocument : ExportDocumentTDType;
  private
    function wstHas_ExportDocument() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property ShipmentDetails : ShipmentDetailsTDType read FShipmentDetails write FShipmentDetails;
    property Shipper : ShipperTDType read FShipper write FShipper;
    property Receiver : ReceiverTDType read FReceiver write FReceiver;
    property ExportDocument : ExportDocumentTDType read FExportDocument write FExportDocument stored wstHas_ExportDocument;
  end;

  ShipmentOrderTDType_Pickup_Type = class(TBaseComplexRemotable)
  private
    FPickupDetails : PickupDetailsType;
    FPickupAddress : PickupAddressType;
  private
    function wstHas_PickupAddress() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property PickupDetails : PickupDetailsType read FPickupDetails write FPickupDetails;
    property PickupAddress : PickupAddressType read FPickupAddress write FPickupAddress stored wstHas_PickupAddress;
  end;

  ShipmentOrderTDType = class(TBaseComplexRemotable)
  private
    FSequenceNumber : is_base_de.SequenceNumber;
    FShipment : ShipmentOrderTDType_Shipment_Type;
    FPickup : ShipmentOrderTDType_Pickup_Type;
    FLabelResponseType : ShipmentOrderTDType_LabelResponseType_Type;
  private
    function wstHas_Pickup() : Boolean;
    function wstHas_LabelResponseType() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property SequenceNumber : is_base_de.SequenceNumber read FSequenceNumber write FSequenceNumber;
    property Shipment : ShipmentOrderTDType_Shipment_Type read FShipment write FShipment;
    property Pickup : ShipmentOrderTDType_Pickup_Type read FPickup write FPickup stored wstHas_Pickup;
    property LabelResponseType : ShipmentOrderTDType_LabelResponseType_Type read FLabelResponseType write FLabelResponseType stored wstHas_LabelResponseType;
  end;

  ShipmentOrderDDType_Shipment_Type = class(TBaseComplexRemotable)
  private
    FShipmentDetails : ShipmentDetailsDDType;
    FShipper : ShipperDDType;
    FReceiver : ReceiverDDType;
    FExportDocument : ExportDocumentDDType;
    FIdentity : IdentityType;
    FFurtherAddresses : FurtherAddressesDDType;
  private
    function wstHas_ExportDocument() : Boolean;
    function wstHas_Identity() : Boolean;
    function wstHas_FurtherAddresses() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property ShipmentDetails : ShipmentDetailsDDType read FShipmentDetails write FShipmentDetails;
    property Shipper : ShipperDDType read FShipper write FShipper;
    property Receiver : ReceiverDDType read FReceiver write FReceiver;
    property ExportDocument : ExportDocumentDDType read FExportDocument write FExportDocument stored wstHas_ExportDocument;
    property Identity : IdentityType read FIdentity write FIdentity stored wstHas_Identity;
    property FurtherAddresses : FurtherAddressesDDType read FFurtherAddresses write FFurtherAddresses stored wstHas_FurtherAddresses;
  end;

  ShipmentOrderDDType_Pickup_Type = class(TBaseComplexRemotable)
  private
    FPickupDetails : PickupDetailsType;
    FPickupAddress : PickupAddressType;
  private
    function wstHas_PickupAddress() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property PickupDetails : PickupDetailsType read FPickupDetails write FPickupDetails;
    property PickupAddress : PickupAddressType read FPickupAddress write FPickupAddress stored wstHas_PickupAddress;
  end;

  ShipmentOrderDDType = class(TBaseComplexRemotable)
  private
    FSequenceNumber : is_base_de.SequenceNumber;
    FShipment : ShipmentOrderDDType_Shipment_Type;
    FPickup : ShipmentOrderDDType_Pickup_Type;
    FLabelResponseType : ShipmentOrderDDType_LabelResponseType_Type;
    FPRINTONLYIFCODEABLE : ShipmentOrderDDType_PRINTONLYIFCODEABLE_Type;
  private
    function wstHas_Pickup() : Boolean;
    function wstHas_LabelResponseType() : Boolean;
    function wstHas_PRINTONLYIFCODEABLE() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property SequenceNumber : is_base_de.SequenceNumber read FSequenceNumber write FSequenceNumber;
    property Shipment : ShipmentOrderDDType_Shipment_Type read FShipment write FShipment;
    property Pickup : ShipmentOrderDDType_Pickup_Type read FPickup write FPickup stored wstHas_Pickup;
    property LabelResponseType : ShipmentOrderDDType_LabelResponseType_Type read FLabelResponseType write FLabelResponseType stored wstHas_LabelResponseType;
    property PRINTONLYIFCODEABLE : ShipmentOrderDDType_PRINTONLYIFCODEABLE_Type read FPRINTONLYIFCODEABLE write FPRINTONLYIFCODEABLE stored wstHas_PRINTONLYIFCODEABLE;
  end;

  ShipperType = class(TBaseComplexRemotable)
  private
    FCompany : NameType;
    FAddress : NativeAddressType;
    FCommunication : CommunicationType;
    FVAT : UnicodeString;
  private
    function wstHas_VAT() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Company : NameType read FCompany write FCompany;
    property Address : NativeAddressType read FAddress write FAddress;
    property Communication : CommunicationType read FCommunication write FCommunication;
    property VAT : UnicodeString read FVAT write FVAT stored wstHas_VAT;
  end;

  ShipperTDType = class(ShipperType)
  end;

  ShipperDDType = class(ShipperType)
  private
    FRemark : UnicodeString;
  private
    function wstHas_Remark() : Boolean;
  published
    property Remark : UnicodeString read FRemark write FRemark stored wstHas_Remark;
  end;

  ReceiverType = class(TBaseComplexRemotable)
  private
    FCompany : NameType;
    FAddress : NativeAddressType;
    FPackstation : PackstationType;
    FPostfiliale : PostfilialeType;
    FCommunication : CommunicationType;
    FVAT : UnicodeString;
  private
    function wstHas_Address() : Boolean;
    function wstHas_Packstation() : Boolean;
    function wstHas_Postfiliale() : Boolean;
    function wstHas_VAT() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Company : NameType read FCompany write FCompany;
    property Address : NativeAddressType read FAddress write FAddress stored wstHas_Address;
    property Packstation : PackstationType read FPackstation write FPackstation stored wstHas_Packstation;
    property Postfiliale : PostfilialeType read FPostfiliale write FPostfiliale stored wstHas_Postfiliale;
    property Communication : CommunicationType read FCommunication write FCommunication;
    property VAT : UnicodeString read FVAT write FVAT stored wstHas_VAT;
  end;

  ReceiverTDType = class(ReceiverType)
  end;

  ReceiverDDType = class(ReceiverType)
  private
    FCompanyName3 : UnicodeString;
  private
    function wstHas_CompanyName3() : Boolean;
  published
    property CompanyName3 : UnicodeString read FCompanyName3 write FCompanyName3 stored wstHas_CompanyName3;
  end;

  IdentityType = class(TBaseComplexRemotable)
  private
    FFirstName : UnicodeString;
    FLastName : UnicodeString;
    FStreet : UnicodeString;
    FHouseNumber : UnicodeString;
    FPostcode : UnicodeString;
    FCity : UnicodeString;
    FDateOfBirth : UnicodeString;
    FNationality : UnicodeString;
  published
    property FirstName : UnicodeString read FFirstName write FFirstName;
    property LastName : UnicodeString read FLastName write FLastName;
    property Street : UnicodeString read FStreet write FStreet;
    property HouseNumber : UnicodeString read FHouseNumber write FHouseNumber;
    property Postcode : UnicodeString read FPostcode write FPostcode;
    property City : UnicodeString read FCity write FCity;
    property DateOfBirth : UnicodeString read FDateOfBirth write FDateOfBirth;
    property Nationality : UnicodeString read FNationality write FNationality;
  end;

  ShipmentDetailsType = class(TBaseComplexRemotable)
  private
    FProductCode : UnicodeString;
    FShipmentDate : ShipmentDetailsType_ShipmentDate_Type;
    FDeclaredValueOfGoods : ShipmentDetailsType_DeclaredValueOfGoods_Type;
    FDeclaredValueOfGoodsCurrency : UnicodeString;
  private
    function wstHas_DeclaredValueOfGoods() : Boolean;
    function wstHas_DeclaredValueOfGoodsCurrency() : Boolean;
  published
    property ProductCode : UnicodeString read FProductCode write FProductCode;
    property ShipmentDate : ShipmentDetailsType_ShipmentDate_Type read FShipmentDate write FShipmentDate;
    property DeclaredValueOfGoods : ShipmentDetailsType_DeclaredValueOfGoods_Type read FDeclaredValueOfGoods write FDeclaredValueOfGoods stored wstHas_DeclaredValueOfGoods;
    property DeclaredValueOfGoodsCurrency : UnicodeString read FDeclaredValueOfGoodsCurrency write FDeclaredValueOfGoodsCurrency stored wstHas_DeclaredValueOfGoodsCurrency;
  end;

  ShipmentDetailsTDType_Account_Type = class(TBaseComplexRemotable)
  private
    FaccountNumberExpress : accountNumberExpress_Type;
  published
    property accountNumberExpress : accountNumberExpress_Type read FaccountNumberExpress write FaccountNumberExpress;
  end;

  ShipmentDetailsTDType_AccountPaidBy_Type = class(TBaseComplexRemotable)
  private
    FaccountNumberExpress : accountNumberExpress_Type;
  published
    property accountNumberExpress : accountNumberExpress_Type read FaccountNumberExpress write FaccountNumberExpress;
  end;

  ShipmentDetailsTDType = class(ShipmentDetailsType)
  private
    FAccount : ShipmentDetailsTDType_Account_Type;
    FDutiable : ShipmentDetailsTDType_Dutiable_Type;
    FDescriptionOfContent : UnicodeString;
    FAccountPaidBy : ShipmentDetailsTDType_AccountPaidBy_Type;
    FShipmentReference : UnicodeString;
    FTermsOfTrade : UnicodeString;
    FShipmentItem : ShipmentDetailsTDType_ShipmentItemArray;
    FService : ShipmentDetailsTDType_ServiceArray;
    FNotification : ShipmentDetailsTDType_NotificationArray;
    FNotificationEmailText : UnicodeString;
  private
    function wstHas_AccountPaidBy() : Boolean;
    function wstHas_ShipmentReference() : Boolean;
    function wstHas_TermsOfTrade() : Boolean;
    function wstHas_Service() : Boolean;
    function wstHas_Notification() : Boolean;
    function wstHas_NotificationEmailText() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Account : ShipmentDetailsTDType_Account_Type read FAccount write FAccount;
    property Dutiable : ShipmentDetailsTDType_Dutiable_Type read FDutiable write FDutiable;
    property DescriptionOfContent : UnicodeString read FDescriptionOfContent write FDescriptionOfContent;
    property AccountPaidBy : ShipmentDetailsTDType_AccountPaidBy_Type read FAccountPaidBy write FAccountPaidBy stored wstHas_AccountPaidBy;
    property ShipmentReference : UnicodeString read FShipmentReference write FShipmentReference stored wstHas_ShipmentReference;
    property TermsOfTrade : UnicodeString read FTermsOfTrade write FTermsOfTrade stored wstHas_TermsOfTrade;
    property ShipmentItem : ShipmentDetailsTDType_ShipmentItemArray read FShipmentItem write FShipmentItem;
    property Service : ShipmentDetailsTDType_ServiceArray read FService write FService stored wstHas_Service;
    property Notification : ShipmentDetailsTDType_NotificationArray read FNotification write FNotification stored wstHas_Notification;
    property NotificationEmailText : UnicodeString read FNotificationEmailText write FNotificationEmailText stored wstHas_NotificationEmailText;
  end;

  ShipmentDetailsDDType_Attendance_Type = class(TBaseComplexRemotable)
  private
    FpartnerID : partnerID_Type;
  published
    property partnerID : partnerID_Type read FpartnerID write FpartnerID;
  end;

  ShipmentDetailsDDType = class(ShipmentDetailsType)
  private
    FEKP : EKP_Type;
    FAttendance : ShipmentDetailsDDType_Attendance_Type;
    FCustomerReference : UnicodeString;
    FDescription : UnicodeString;
    FDeliveryRemarks : UnicodeString;
    FShipmentItem : ShipmentDetailsDDType_ShipmentItemArray;
    FService : ShipmentDetailsDDType_ServiceArray;
    FNotification : ShipmentDetailsDDType_NotificationArray;
    FNotificationEmailText : UnicodeString;
    FBankData : BankType;
  private
    function wstHas_CustomerReference() : Boolean;
    function wstHas_Description() : Boolean;
    function wstHas_DeliveryRemarks() : Boolean;
    function wstHas_Service() : Boolean;
    function wstHas_Notification() : Boolean;
    function wstHas_NotificationEmailText() : Boolean;
    function wstHas_BankData() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property EKP : EKP_Type read FEKP write FEKP;
    property Attendance : ShipmentDetailsDDType_Attendance_Type read FAttendance write FAttendance;
    property CustomerReference : UnicodeString read FCustomerReference write FCustomerReference stored wstHas_CustomerReference;
    property Description : UnicodeString read FDescription write FDescription stored wstHas_Description;
    property DeliveryRemarks : UnicodeString read FDeliveryRemarks write FDeliveryRemarks stored wstHas_DeliveryRemarks;
    property ShipmentItem : ShipmentDetailsDDType_ShipmentItemArray read FShipmentItem write FShipmentItem;
    property Service : ShipmentDetailsDDType_ServiceArray read FService write FService stored wstHas_Service;
    property Notification : ShipmentDetailsDDType_NotificationArray read FNotification write FNotification stored wstHas_Notification;
    property NotificationEmailText : UnicodeString read FNotificationEmailText write FNotificationEmailText stored wstHas_NotificationEmailText;
    property BankData : BankType read FBankData write FBankData stored wstHas_BankData;
  end;

  ShipmentItemType = class(TBaseComplexRemotable)
  private
    FWeightInKG : ShipmentItemType_WeightInKG_Type;
    FLengthInCM : ShipmentItemType_LengthInCM_Type;
    FWidthInCM : ShipmentItemType_WidthInCM_Type;
    FHeightInCM : ShipmentItemType_HeightInCM_Type;
  private
    function wstHas_LengthInCM() : Boolean;
    function wstHas_WidthInCM() : Boolean;
    function wstHas_HeightInCM() : Boolean;
  published
    property WeightInKG : ShipmentItemType_WeightInKG_Type read FWeightInKG write FWeightInKG;
    property LengthInCM : ShipmentItemType_LengthInCM_Type read FLengthInCM write FLengthInCM stored wstHas_LengthInCM;
    property WidthInCM : ShipmentItemType_WidthInCM_Type read FWidthInCM write FWidthInCM stored wstHas_WidthInCM;
    property HeightInCM : ShipmentItemType_HeightInCM_Type read FHeightInCM write FHeightInCM stored wstHas_HeightInCM;
  end;

  ShipmentItemTDType = class(ShipmentItemType)
  end;

  ShipmentItemDDType = class(ShipmentItemType)
  private
    FPackageType : UnicodeString;
  published
    property PackageType : UnicodeString read FPackageType write FPackageType;
  end;

  ShipmentServiceTD = class(TBaseComplexRemotable)
  private
    FServiceGroupDateTimeOption : TDServiceGroupDateTimeOptionType;
    FServiceGroupOther : TDServiceGroupOtherType;
  private
    function wstHas_ServiceGroupDateTimeOption() : Boolean;
    function wstHas_ServiceGroupOther() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property ServiceGroupDateTimeOption : TDServiceGroupDateTimeOptionType read FServiceGroupDateTimeOption write FServiceGroupDateTimeOption stored wstHas_ServiceGroupDateTimeOption;
    property ServiceGroupOther : TDServiceGroupOtherType read FServiceGroupOther write FServiceGroupOther stored wstHas_ServiceGroupOther;
  end;

  TDServiceGroupDateTimeOptionType_ExpressSaturday_Type = class(TBaseComplexRemotable)
  private
    FShippingDate : TDServiceGroupDateTimeOptionType_ExpressSaturday_Type_ShippingDate_Type;
  published
    property ShippingDate : TDServiceGroupDateTimeOptionType_ExpressSaturday_Type_ShippingDate_Type read FShippingDate write FShippingDate;
  end;

  TDServiceGroupDateTimeOptionType = class(TBaseComplexRemotable)
  private
    FExpressSaturday : TDServiceGroupDateTimeOptionType_ExpressSaturday_Type;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property ExpressSaturday : TDServiceGroupDateTimeOptionType_ExpressSaturday_Type read FExpressSaturday write FExpressSaturday;
  end;

  TDServiceGroupOtherType_Insurance_Type = class(TBaseComplexRemotable)
  private
    FInsuranceAmount : TDServiceGroupOtherType_Insurance_Type_InsuranceAmount_Type;
    FInsuranceCurrency : TDServiceGroupOtherType_Insurance_Type_InsuranceCurrency_Type;
  published
    property InsuranceAmount : TDServiceGroupOtherType_Insurance_Type_InsuranceAmount_Type read FInsuranceAmount write FInsuranceAmount;
    property InsuranceCurrency : TDServiceGroupOtherType_Insurance_Type_InsuranceCurrency_Type read FInsuranceCurrency write FInsuranceCurrency;
  end;

  TDServiceGroupOtherType = class(TBaseComplexRemotable)
  private
    FInsurance : TDServiceGroupOtherType_Insurance_Type;
    FGoGreen : boolean;
  private
    function wstHas_Insurance() : Boolean;
    function wstHas_GoGreen() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Insurance : TDServiceGroupOtherType_Insurance_Type read FInsurance write FInsurance stored wstHas_Insurance;
    property GoGreen : boolean read FGoGreen write FGoGreen stored wstHas_GoGreen;
  end;

  ShipmentServiceDD = class(TBaseComplexRemotable)
  private
    FServiceGroupDateTimeOption : DDServiceGroupDateTimeOptionType;
    FShipmentServiceGroupIdent : DDShipmentServiceGroupIdentType;
    FShipmentServiceGroupPickup : DDShipmentServiceGroupPickupType;
    FServiceGroupBusinessPackInternational : DDServiceGroupBusinessPackInternationalType;
    FServiceGroupDHLPaket : DDServiceGroupDHLPaketType;
    FServiceGroupOther : DDServiceGroupOtherType;
  private
    function wstHas_ServiceGroupDateTimeOption() : Boolean;
    function wstHas_ShipmentServiceGroupIdent() : Boolean;
    function wstHas_ShipmentServiceGroupPickup() : Boolean;
    function wstHas_ServiceGroupBusinessPackInternational() : Boolean;
    function wstHas_ServiceGroupDHLPaket() : Boolean;
    function wstHas_ServiceGroupOther() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property ServiceGroupDateTimeOption : DDServiceGroupDateTimeOptionType read FServiceGroupDateTimeOption write FServiceGroupDateTimeOption stored wstHas_ServiceGroupDateTimeOption;
    property ShipmentServiceGroupIdent : DDShipmentServiceGroupIdentType read FShipmentServiceGroupIdent write FShipmentServiceGroupIdent stored wstHas_ShipmentServiceGroupIdent;
    property ShipmentServiceGroupPickup : DDShipmentServiceGroupPickupType read FShipmentServiceGroupPickup write FShipmentServiceGroupPickup stored wstHas_ShipmentServiceGroupPickup;
    property ServiceGroupBusinessPackInternational : DDServiceGroupBusinessPackInternationalType read FServiceGroupBusinessPackInternational write FServiceGroupBusinessPackInternational stored wstHas_ServiceGroupBusinessPackInternational;
    property ServiceGroupDHLPaket : DDServiceGroupDHLPaketType read FServiceGroupDHLPaket write FServiceGroupDHLPaket stored wstHas_ServiceGroupDHLPaket;
    property ServiceGroupOther : DDServiceGroupOtherType read FServiceGroupOther write FServiceGroupOther stored wstHas_ServiceGroupOther;
  end;

  DDServiceGroupDateTimeOptionType_DeliveryOnTime_Type = class(TBaseComplexRemotable)
  private
    Ftime : UnicodeString;
  published
    property time : UnicodeString read Ftime write Ftime;
  end;

  DDServiceGroupDateTimeOptionType = class(TBaseComplexRemotable)
  private
    FDeliveryOnTime : DDServiceGroupDateTimeOptionType_DeliveryOnTime_Type;
    FDeliveryEarly : boolean;
    FExpress0900 : boolean;
    FExpress1000 : boolean;
    FExpress1200 : boolean;
    FDeliveryAfternoon : boolean;
    FDeliveryEvening : boolean;
    FExpressSaturday : boolean;
    FExpressSunday : boolean;
  private
    function wstHas_DeliveryOnTime() : Boolean;
    function wstHas_DeliveryEarly() : Boolean;
    function wstHas_Express0900() : Boolean;
    function wstHas_Express1000() : Boolean;
    function wstHas_Express1200() : Boolean;
    function wstHas_DeliveryAfternoon() : Boolean;
    function wstHas_DeliveryEvening() : Boolean;
    function wstHas_ExpressSaturday() : Boolean;
    function wstHas_ExpressSunday() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property DeliveryOnTime : DDServiceGroupDateTimeOptionType_DeliveryOnTime_Type read FDeliveryOnTime write FDeliveryOnTime stored wstHas_DeliveryOnTime;
    property DeliveryEarly : boolean read FDeliveryEarly write FDeliveryEarly stored wstHas_DeliveryEarly;
    property Express0900 : boolean read FExpress0900 write FExpress0900 stored wstHas_Express0900;
    property Express1000 : boolean read FExpress1000 write FExpress1000 stored wstHas_Express1000;
    property Express1200 : boolean read FExpress1200 write FExpress1200 stored wstHas_Express1200;
    property DeliveryAfternoon : boolean read FDeliveryAfternoon write FDeliveryAfternoon stored wstHas_DeliveryAfternoon;
    property DeliveryEvening : boolean read FDeliveryEvening write FDeliveryEvening stored wstHas_DeliveryEvening;
    property ExpressSaturday : boolean read FExpressSaturday write FExpressSaturday stored wstHas_ExpressSaturday;
    property ExpressSunday : boolean read FExpressSunday write FExpressSunday stored wstHas_ExpressSunday;
  end;

  DDShipmentServiceGroupIdentType_Ident_Type = class(TBaseComplexRemotable)
  private
    FName : UnicodeString;
    FDateOfBirth : DDShipmentServiceGroupIdentType_Ident_Type_DateOfBirth_Type;
    FIdentityCardType : UnicodeString;
    FIdentityCardNumber : UnicodeString;
  published
    property Name : UnicodeString read FName write FName;
    property DateOfBirth : DDShipmentServiceGroupIdentType_Ident_Type_DateOfBirth_Type read FDateOfBirth write FDateOfBirth;
    property IdentityCardType : UnicodeString read FIdentityCardType write FIdentityCardType;
    property IdentityCardNumber : UnicodeString read FIdentityCardNumber write FIdentityCardNumber;
  end;

  DDShipmentServiceGroupIdentType_IdentExtra_Type = class(TBaseComplexRemotable)
  private
    FGroup1 : IdentityData;
    FGroup2 : IdentityData;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Group1 : IdentityData read FGroup1 write FGroup1;
    property Group2 : IdentityData read FGroup2 write FGroup2;
  end;

  DDShipmentServiceGroupIdentType_IdentPremium_Type = class(TBaseComplexRemotable)
  private
    FFirstname : UnicodeString;
    FName : UnicodeString;
    FIdentityCardType : UnicodeString;
    FIdentityCardNumber : UnicodeString;
    FMinimumAge : UnicodeString;
    FDateOfBirth : DDShipmentServiceGroupIdentType_IdentPremium_Type_DateOfBirth_Type;
    FStreetAndHouseNumber : UnicodeString;
    FPostcodeAndCity : UnicodeString;
    FDistrict : UnicodeString;
    FWithIDPContract : boolean;
    FContractID : UnicodeString;
    FNationality : UnicodeString;
    FFreeText1 : UnicodeString;
    FFreeText2 : UnicodeString;
    FCorrOfNameAllowed : boolean;
    FCorrOfFirstNameAllowed : boolean;
    FCorrOfDayOfBirthAllowed : boolean;
    FCorrOfMinimumAgeAllowed : boolean;
    FCorrOfIdentityCardTypeAllowed : boolean;
    FCorrOfIdentityCardNumberAllowed : boolean;
    FCorrOfAddressAllowed : boolean;
    FCorrOfContractAllowed : boolean;
    FCorrOfContractIdAllowed : boolean;
    FCorrOfNationalityAllowed : boolean;
    FCorrOfFreetextsAllowed : boolean;
  private
    function wstHas_Firstname() : Boolean;
    function wstHas_Name() : Boolean;
    function wstHas_IdentityCardType() : Boolean;
    function wstHas_IdentityCardNumber() : Boolean;
    function wstHas_MinimumAge() : Boolean;
    function wstHas_DateOfBirth() : Boolean;
    function wstHas_PostcodeAndCity() : Boolean;
    function wstHas_District() : Boolean;
    function wstHas_WithIDPContract() : Boolean;
    function wstHas_ContractID() : Boolean;
    function wstHas_Nationality() : Boolean;
    function wstHas_FreeText1() : Boolean;
    function wstHas_FreeText2() : Boolean;
    function wstHas_CorrOfNameAllowed() : Boolean;
    function wstHas_CorrOfFirstNameAllowed() : Boolean;
    function wstHas_CorrOfDayOfBirthAllowed() : Boolean;
    function wstHas_CorrOfMinimumAgeAllowed() : Boolean;
    function wstHas_CorrOfIdentityCardTypeAllowed() : Boolean;
    function wstHas_CorrOfIdentityCardNumberAllowed() : Boolean;
    function wstHas_CorrOfAddressAllowed() : Boolean;
    function wstHas_CorrOfContractAllowed() : Boolean;
    function wstHas_CorrOfContractIdAllowed() : Boolean;
    function wstHas_CorrOfNationalityAllowed() : Boolean;
    function wstHas_CorrOfFreetextsAllowed() : Boolean;
  published
    property Firstname : UnicodeString read FFirstname write FFirstname stored wstHas_Firstname;
    property Name : UnicodeString read FName write FName stored wstHas_Name;
    property IdentityCardType : UnicodeString read FIdentityCardType write FIdentityCardType stored wstHas_IdentityCardType;
    property IdentityCardNumber : UnicodeString read FIdentityCardNumber write FIdentityCardNumber stored wstHas_IdentityCardNumber;
    property MinimumAge : UnicodeString read FMinimumAge write FMinimumAge stored wstHas_MinimumAge;
    property DateOfBirth : DDShipmentServiceGroupIdentType_IdentPremium_Type_DateOfBirth_Type read FDateOfBirth write FDateOfBirth stored wstHas_DateOfBirth;
    property StreetAndHouseNumber : UnicodeString read FStreetAndHouseNumber write FStreetAndHouseNumber;
    property PostcodeAndCity : UnicodeString read FPostcodeAndCity write FPostcodeAndCity stored wstHas_PostcodeAndCity;
    property District : UnicodeString read FDistrict write FDistrict stored wstHas_District;
    property WithIDPContract : boolean read FWithIDPContract write FWithIDPContract stored wstHas_WithIDPContract;
    property ContractID : UnicodeString read FContractID write FContractID stored wstHas_ContractID;
    property Nationality : UnicodeString read FNationality write FNationality stored wstHas_Nationality;
    property FreeText1 : UnicodeString read FFreeText1 write FFreeText1 stored wstHas_FreeText1;
    property FreeText2 : UnicodeString read FFreeText2 write FFreeText2 stored wstHas_FreeText2;
    property CorrOfNameAllowed : boolean read FCorrOfNameAllowed write FCorrOfNameAllowed stored wstHas_CorrOfNameAllowed;
    property CorrOfFirstNameAllowed : boolean read FCorrOfFirstNameAllowed write FCorrOfFirstNameAllowed stored wstHas_CorrOfFirstNameAllowed;
    property CorrOfDayOfBirthAllowed : boolean read FCorrOfDayOfBirthAllowed write FCorrOfDayOfBirthAllowed stored wstHas_CorrOfDayOfBirthAllowed;
    property CorrOfMinimumAgeAllowed : boolean read FCorrOfMinimumAgeAllowed write FCorrOfMinimumAgeAllowed stored wstHas_CorrOfMinimumAgeAllowed;
    property CorrOfIdentityCardTypeAllowed : boolean read FCorrOfIdentityCardTypeAllowed write FCorrOfIdentityCardTypeAllowed stored wstHas_CorrOfIdentityCardTypeAllowed;
    property CorrOfIdentityCardNumberAllowed : boolean read FCorrOfIdentityCardNumberAllowed write FCorrOfIdentityCardNumberAllowed stored wstHas_CorrOfIdentityCardNumberAllowed;
    property CorrOfAddressAllowed : boolean read FCorrOfAddressAllowed write FCorrOfAddressAllowed stored wstHas_CorrOfAddressAllowed;
    property CorrOfContractAllowed : boolean read FCorrOfContractAllowed write FCorrOfContractAllowed stored wstHas_CorrOfContractAllowed;
    property CorrOfContractIdAllowed : boolean read FCorrOfContractIdAllowed write FCorrOfContractIdAllowed stored wstHas_CorrOfContractIdAllowed;
    property CorrOfNationalityAllowed : boolean read FCorrOfNationalityAllowed write FCorrOfNationalityAllowed stored wstHas_CorrOfNationalityAllowed;
    property CorrOfFreetextsAllowed : boolean read FCorrOfFreetextsAllowed write FCorrOfFreetextsAllowed stored wstHas_CorrOfFreetextsAllowed;
  end;

  DDShipmentServiceGroupIdentType_ContractSubmission_Type = class(TBaseComplexRemotable)
  private
    FTotalPages : DDShipmentServiceGroupIdentType_ContractSubmission_Type_TotalPages_Type;
    FTotalSignatures : DDShipmentServiceGroupIdentType_ContractSubmission_Type_TotalSignatures_Type;
    FTotalDocsSender : DDShipmentServiceGroupIdentType_ContractSubmission_Type_TotalDocsSender_Type;
    FTotalDocsReceiver : DDShipmentServiceGroupIdentType_ContractSubmission_Type_TotalDocsReceiver_Type;
  published
    property TotalPages : DDShipmentServiceGroupIdentType_ContractSubmission_Type_TotalPages_Type read FTotalPages write FTotalPages;
    property TotalSignatures : DDShipmentServiceGroupIdentType_ContractSubmission_Type_TotalSignatures_Type read FTotalSignatures write FTotalSignatures;
    property TotalDocsSender : DDShipmentServiceGroupIdentType_ContractSubmission_Type_TotalDocsSender_Type read FTotalDocsSender write FTotalDocsSender;
    property TotalDocsReceiver : DDShipmentServiceGroupIdentType_ContractSubmission_Type_TotalDocsReceiver_Type read FTotalDocsReceiver write FTotalDocsReceiver;
  end;

  DDShipmentServiceGroupIdentType_SMSAviso_Type = class(TBaseComplexRemotable)
  private
    FMobilePhoneNumberSender : UnicodeString;
    FMobilePhoneNumberReceiver : UnicodeString;
    FAvisoIdent : UnicodeString;
  published
    property MobilePhoneNumberSender : UnicodeString read FMobilePhoneNumberSender write FMobilePhoneNumberSender;
    property MobilePhoneNumberReceiver : UnicodeString read FMobilePhoneNumberReceiver write FMobilePhoneNumberReceiver;
    property AvisoIdent : UnicodeString read FAvisoIdent write FAvisoIdent;
  end;

  DDShipmentServiceGroupIdentType_CheckMinimumAge_Type = class(TBaseComplexRemotable)
  private
    FMinimumAge : UnicodeString;
  published
    property MinimumAge : UnicodeString read FMinimumAge write FMinimumAge;
  end;

  DDShipmentServiceGroupIdentType = class(TBaseComplexRemotable)
  private
    FIdent : DDShipmentServiceGroupIdentType_Ident_Type;
    FIdentExtra : DDShipmentServiceGroupIdentType_IdentExtra_Type;
    FIdentPremium : DDShipmentServiceGroupIdentType_IdentPremium_Type;
    FPersonally : boolean;
    FReturnReceipt : boolean;
    FProofOfDelivery : boolean;
    FContractSubmission : DDShipmentServiceGroupIdentType_ContractSubmission_Type;
    FSMSAviso : DDShipmentServiceGroupIdentType_SMSAviso_Type;
    FCheckMinimumAge : DDShipmentServiceGroupIdentType_CheckMinimumAge_Type;
  private
    function wstHas_Ident() : Boolean;
    function wstHas_IdentExtra() : Boolean;
    function wstHas_IdentPremium() : Boolean;
    function wstHas_Personally() : Boolean;
    function wstHas_ReturnReceipt() : Boolean;
    function wstHas_ProofOfDelivery() : Boolean;
    function wstHas_ContractSubmission() : Boolean;
    function wstHas_SMSAviso() : Boolean;
    function wstHas_CheckMinimumAge() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Ident : DDShipmentServiceGroupIdentType_Ident_Type read FIdent write FIdent stored wstHas_Ident;
    property IdentExtra : DDShipmentServiceGroupIdentType_IdentExtra_Type read FIdentExtra write FIdentExtra stored wstHas_IdentExtra;
    property IdentPremium : DDShipmentServiceGroupIdentType_IdentPremium_Type read FIdentPremium write FIdentPremium stored wstHas_IdentPremium;
    property Personally : boolean read FPersonally write FPersonally stored wstHas_Personally;
    property ReturnReceipt : boolean read FReturnReceipt write FReturnReceipt stored wstHas_ReturnReceipt;
    property ProofOfDelivery : boolean read FProofOfDelivery write FProofOfDelivery stored wstHas_ProofOfDelivery;
    property ContractSubmission : DDShipmentServiceGroupIdentType_ContractSubmission_Type read FContractSubmission write FContractSubmission stored wstHas_ContractSubmission;
    property SMSAviso : DDShipmentServiceGroupIdentType_SMSAviso_Type read FSMSAviso write FSMSAviso stored wstHas_SMSAviso;
    property CheckMinimumAge : DDShipmentServiceGroupIdentType_CheckMinimumAge_Type read FCheckMinimumAge write FCheckMinimumAge stored wstHas_CheckMinimumAge;
  end;

  DDShipmentServiceGroupPickupType = class(TBaseComplexRemotable)
  private
    FPickupSaturday : boolean;
    FPickupLate : boolean;
  private
    function wstHas_PickupSaturday() : Boolean;
    function wstHas_PickupLate() : Boolean;
  published
    property PickupSaturday : boolean read FPickupSaturday write FPickupSaturday stored wstHas_PickupSaturday;
    property PickupLate : boolean read FPickupLate write FPickupLate stored wstHas_PickupLate;
  end;

  DDServiceGroupBusinessPackInternationalType_Endorsement_Type = class(TBaseComplexRemotable)
  private
    FIdent : UnicodeString;
    FDays : integer;
  published
    property Ident : UnicodeString read FIdent write FIdent;
    property Days : integer read FDays write FDays;
  end;

  DDServiceGroupBusinessPackInternationalType = class(TBaseComplexRemotable)
  private
    FEconomy : boolean;
    FPremium : boolean;
    FSeapacket : boolean;
    FCoilWithoutHelp : boolean;
    FEndorsement : DDServiceGroupBusinessPackInternationalType_Endorsement_Type;
    FAmountInternational : boolean;
  private
    function wstHas_Economy() : Boolean;
    function wstHas_Premium() : Boolean;
    function wstHas_Seapacket() : Boolean;
    function wstHas_CoilWithoutHelp() : Boolean;
    function wstHas_Endorsement() : Boolean;
    function wstHas_AmountInternational() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Economy : boolean read FEconomy write FEconomy stored wstHas_Economy;
    property Premium : boolean read FPremium write FPremium stored wstHas_Premium;
    property Seapacket : boolean read FSeapacket write FSeapacket stored wstHas_Seapacket;
    property CoilWithoutHelp : boolean read FCoilWithoutHelp write FCoilWithoutHelp stored wstHas_CoilWithoutHelp;
    property Endorsement : DDServiceGroupBusinessPackInternationalType_Endorsement_Type read FEndorsement write FEndorsement stored wstHas_Endorsement;
    property AmountInternational : boolean read FAmountInternational write FAmountInternational stored wstHas_AmountInternational;
  end;

  DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type = class(TBaseComplexRemotable)
  private
    FModuleType : UnicodeString;
    FMobilePhoneNumber : UnicodeString;
    FEmailAddress : UnicodeString;
    FReference : UnicodeString;
    FLanguage : UnicodeString;
  private
    function wstHas_ModuleType() : Boolean;
    function wstHas_MobilePhoneNumber() : Boolean;
    function wstHas_EmailAddress() : Boolean;
    function wstHas_Reference() : Boolean;
    function wstHas_Language() : Boolean;
  published
    property ModuleType : UnicodeString read FModuleType write FModuleType stored wstHas_ModuleType;
    property MobilePhoneNumber : UnicodeString read FMobilePhoneNumber write FMobilePhoneNumber stored wstHas_MobilePhoneNumber;
    property EmailAddress : UnicodeString read FEmailAddress write FEmailAddress stored wstHas_EmailAddress;
    property Reference : UnicodeString read FReference write FReference stored wstHas_Reference;
    property Language : UnicodeString read FLanguage write FLanguage stored wstHas_Language;
  end;

  DDServiceGroupDHLPaketType_Endorsement_Type = class(TBaseComplexRemotable)
  private
    FUZN : EndorsementServiceconfiguration;
    FKeNa : EndorsementServiceconfiguration;
    FNSI : EndorsementServiceconfiguration;
    FTeZu : EndorsementServiceconfigurationTeZu;
    FSoZue : EndorsementServiceconfiguration;
  private
    function wstHas_UZN() : Boolean;
    function wstHas_KeNa() : Boolean;
    function wstHas_NSI() : Boolean;
    function wstHas_TeZu() : Boolean;
    function wstHas_SoZue() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property UZN : EndorsementServiceconfiguration read FUZN write FUZN stored wstHas_UZN;
    property KeNa : EndorsementServiceconfiguration read FKeNa write FKeNa stored wstHas_KeNa;
    property NSI : EndorsementServiceconfiguration read FNSI write FNSI stored wstHas_NSI;
    property TeZu : EndorsementServiceconfigurationTeZu read FTeZu write FTeZu stored wstHas_TeZu;
    property SoZue : EndorsementServiceconfiguration read FSoZue write FSoZue stored wstHas_SoZue;
  end;

  DDServiceGroupDHLPaketType = class(TBaseComplexRemotable)
  private
    FMultipack : boolean;
    FRegioPacket : boolean;
    FParticularDelivery : boolean;
    FShipmentAdvisory : DDServiceGroupDHLPaketType_ShipmentAdvisory_Type;
    FEndorsement : DDServiceGroupDHLPaketType_Endorsement_Type;
  private
    function wstHas_Multipack() : Boolean;
    function wstHas_RegioPacket() : Boolean;
    function wstHas_ParticularDelivery() : Boolean;
    function wstHas_ShipmentAdvisory() : Boolean;
    function wstHas_Endorsement() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Multipack : boolean read FMultipack write FMultipack stored wstHas_Multipack;
    property RegioPacket : boolean read FRegioPacket write FRegioPacket stored wstHas_RegioPacket;
    property ParticularDelivery : boolean read FParticularDelivery write FParticularDelivery stored wstHas_ParticularDelivery;
    property ShipmentAdvisory : DDServiceGroupDHLPaketType_ShipmentAdvisory_Type read FShipmentAdvisory write FShipmentAdvisory stored wstHas_ShipmentAdvisory;
    property Endorsement : DDServiceGroupDHLPaketType_Endorsement_Type read FEndorsement write FEndorsement stored wstHas_Endorsement;
  end;

  EndorsementServiceconfiguration = class(TBaseComplexRemotable)
  private
    Factive : EndorsementServiceconfiguration_active_Type;
  published
    property active : EndorsementServiceconfiguration_active_Type read Factive write Factive;
  end;

  EndorsementServiceconfigurationTeZu = class(TBaseComplexRemotable)
  private
    Factive : EndorsementServiceconfigurationTeZu_active_Type;
    FtezuDate : EndorsementServiceconfigurationTeZu_tezuDate_Type;
  published
    property active : EndorsementServiceconfigurationTeZu_active_Type read Factive write Factive;
    property tezuDate : EndorsementServiceconfigurationTeZu_tezuDate_Type read FtezuDate write FtezuDate;
  end;

  DDServiceGroupOtherType_HigherInsurance_Type = class(TBaseComplexRemotable)
  private
    FInsuranceAmount : DDServiceGroupOtherType_HigherInsurance_Type_InsuranceAmount_Type;
    FInsuranceCurrency : UnicodeString;
  published
    property InsuranceAmount : DDServiceGroupOtherType_HigherInsurance_Type_InsuranceAmount_Type read FInsuranceAmount write FInsuranceAmount;
    property InsuranceCurrency : UnicodeString read FInsuranceCurrency write FInsuranceCurrency;
  end;

  DDServiceGroupOtherType_COD_Type = class(TBaseComplexRemotable)
  private
    FCODAmount : DDServiceGroupOtherType_COD_Type_CODAmount_Type;
    FCODCurrency : UnicodeString;
  published
    property CODAmount : DDServiceGroupOtherType_COD_Type_CODAmount_Type read FCODAmount write FCODAmount;
    property CODCurrency : UnicodeString read FCODCurrency write FCODCurrency;
  end;

  DDServiceGroupOtherType_Unfree_Type = class(TBaseComplexRemotable)
  private
    FPaymentType : DDServiceGroupOtherType_Unfree_Type_PaymentType_Type;
    FCustomerNumber : UnicodeString;
  private
    function wstHas_CustomerNumber() : Boolean;
  published
    property PaymentType : DDServiceGroupOtherType_Unfree_Type_PaymentType_Type read FPaymentType write FPaymentType;
    property CustomerNumber : UnicodeString read FCustomerNumber write FCustomerNumber stored wstHas_CustomerNumber;
  end;

  DDServiceGroupOtherType_DangerousGoods_Type = class(TBaseComplexRemotable)
  private
    FDangerousGoodsClass : UnicodeString;
    FDangerousGoodsPackagingType : UnicodeString;
    FDangerousGoodsUNCode : UnicodeString;
  published
    property DangerousGoodsClass : UnicodeString read FDangerousGoodsClass write FDangerousGoodsClass;
    property DangerousGoodsPackagingType : UnicodeString read FDangerousGoodsPackagingType write FDangerousGoodsPackagingType;
    property DangerousGoodsUNCode : UnicodeString read FDangerousGoodsUNCode write FDangerousGoodsUNCode;
  end;

  DDServiceGroupOtherType_Bulkfreight_Type = class(TBaseComplexRemotable)
  private
    FBulkfreightType : DDServiceGroupOtherType_Bulkfreight_Type_BulkfreightType_Type;
  private
    function wstHas_BulkfreightType() : Boolean;
  published
    property BulkfreightType : DDServiceGroupOtherType_Bulkfreight_Type_BulkfreightType_Type read FBulkfreightType write FBulkfreightType stored wstHas_BulkfreightType;
  end;

  DDServiceGroupOtherType = class(TBaseComplexRemotable)
  private
    FHigherInsurance : DDServiceGroupOtherType_HigherInsurance_Type;
    FCOD : DDServiceGroupOtherType_COD_Type;
    FUnfree : DDServiceGroupOtherType_Unfree_Type;
    FDangerousGoods : DDServiceGroupOtherType_DangerousGoods_Type;
    FBulkfreight : DDServiceGroupOtherType_Bulkfreight_Type;
    FDirectInjection : boolean;
    FBypass : boolean;
  private
    function wstHas_HigherInsurance() : Boolean;
    function wstHas_COD() : Boolean;
    function wstHas_Unfree() : Boolean;
    function wstHas_DangerousGoods() : Boolean;
    function wstHas_Bulkfreight() : Boolean;
    function wstHas_DirectInjection() : Boolean;
    function wstHas_Bypass() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property HigherInsurance : DDServiceGroupOtherType_HigherInsurance_Type read FHigherInsurance write FHigherInsurance stored wstHas_HigherInsurance;
    property COD : DDServiceGroupOtherType_COD_Type read FCOD write FCOD stored wstHas_COD;
    property Unfree : DDServiceGroupOtherType_Unfree_Type read FUnfree write FUnfree stored wstHas_Unfree;
    property DangerousGoods : DDServiceGroupOtherType_DangerousGoods_Type read FDangerousGoods write FDangerousGoods stored wstHas_DangerousGoods;
    property Bulkfreight : DDServiceGroupOtherType_Bulkfreight_Type read FBulkfreight write FBulkfreight stored wstHas_Bulkfreight;
    property DirectInjection : boolean read FDirectInjection write FDirectInjection stored wstHas_DirectInjection;
    property Bypass : boolean read FBypass write FBypass stored wstHas_Bypass;
  end;

  ShipmentNotificationType = class(TBaseComplexRemotable)
  private
    FRecipientName : UnicodeString;
    FRecipientEmailAddress : UnicodeString;
  published
    property RecipientName : UnicodeString read FRecipientName write FRecipientName;
    property RecipientEmailAddress : UnicodeString read FRecipientEmailAddress write FRecipientEmailAddress;
  end;

  ExportDocumentTDType_ExportDocPosition_Type = class(TBaseComplexRemotable)
  private
    FDescription : UnicodeString;
    FAmount : ExportDocumentTDType_ExportDocPosition_Type_Amount_Type;
    FValuePerPiece : ExportDocumentTDType_ExportDocPosition_Type_ValuePerPiece_Type;
    FNetWeightInKG : ExportDocumentTDType_ExportDocPosition_Type_NetWeightInKG_Type;
    FGrossWeightInKG : ExportDocumentTDType_ExportDocPosition_Type_GrossWeightInKG_Type;
    FISOCountryCodeOfOrigin : ExportDocumentTDType_ExportDocPosition_Type_ISOCountryCodeOfOrigin_Type;
    FCommodityCode : UnicodeString;
  private
    function wstHas_CommodityCode() : Boolean;
  published
    property Description : UnicodeString read FDescription write FDescription;
    property Amount : ExportDocumentTDType_ExportDocPosition_Type_Amount_Type read FAmount write FAmount;
    property ValuePerPiece : ExportDocumentTDType_ExportDocPosition_Type_ValuePerPiece_Type read FValuePerPiece write FValuePerPiece;
    property NetWeightInKG : ExportDocumentTDType_ExportDocPosition_Type_NetWeightInKG_Type read FNetWeightInKG write FNetWeightInKG;
    property GrossWeightInKG : ExportDocumentTDType_ExportDocPosition_Type_GrossWeightInKG_Type read FGrossWeightInKG write FGrossWeightInKG;
    property ISOCountryCodeOfOrigin : ExportDocumentTDType_ExportDocPosition_Type_ISOCountryCodeOfOrigin_Type read FISOCountryCodeOfOrigin write FISOCountryCodeOfOrigin;
    property CommodityCode : UnicodeString read FCommodityCode write FCommodityCode stored wstHas_CommodityCode;
  end;

  ExportDocumentTDType = class(TBaseComplexRemotable)
  private
    FInvoiceType : ExportDocumentTDType_InvoiceType_Type;
    FInvoiceDate : ExportDocumentTDType_InvoiceDate_Type;
    FInvoiceNumber : UnicodeString;
    FExportType : ExportDocumentTDType_ExportType_Type;
    FSignerTitle : UnicodeString;
    FRemark : UnicodeString;
    FCommodityCode : UnicodeString;
    FExportReason : UnicodeString;
    FExportDocPosition : ExportDocumentTDType_ExportDocPositionArray;
  private
    function wstHas_InvoiceNumber() : Boolean;
    function wstHas_SignerTitle() : Boolean;
    function wstHas_Remark() : Boolean;
    function wstHas_CommodityCode() : Boolean;
    function wstHas_ExportReason() : Boolean;
    function wstHas_ExportDocPosition() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property InvoiceType : ExportDocumentTDType_InvoiceType_Type read FInvoiceType write FInvoiceType;
    property InvoiceDate : ExportDocumentTDType_InvoiceDate_Type read FInvoiceDate write FInvoiceDate;
    property InvoiceNumber : UnicodeString read FInvoiceNumber write FInvoiceNumber stored wstHas_InvoiceNumber;
    property ExportType : ExportDocumentTDType_ExportType_Type read FExportType write FExportType;
    property SignerTitle : UnicodeString read FSignerTitle write FSignerTitle stored wstHas_SignerTitle;
    property Remark : UnicodeString read FRemark write FRemark stored wstHas_Remark;
    property CommodityCode : UnicodeString read FCommodityCode write FCommodityCode stored wstHas_CommodityCode;
    property ExportReason : UnicodeString read FExportReason write FExportReason stored wstHas_ExportReason;
    property ExportDocPosition : ExportDocumentTDType_ExportDocPositionArray read FExportDocPosition write FExportDocPosition stored wstHas_ExportDocPosition;
  end;

  ExportDocumentDDType_ExportDocPosition_Type = class(TBaseComplexRemotable)
  private
    FDescription : UnicodeString;
    FCountryCodeOrigin : UnicodeString;
    FCommodityCode : UnicodeString;
    FAmount : ExportDocumentDDType_ExportDocPosition_Type_Amount_Type;
    FNetWeightInKG : ExportDocumentDDType_ExportDocPosition_Type_NetWeightInKG_Type;
    FGrossWeightInKG : ExportDocumentDDType_ExportDocPosition_Type_GrossWeightInKG_Type;
    FCustomsValue : ExportDocumentDDType_ExportDocPosition_Type_CustomsValue_Type;
    FCustomsCurrency : UnicodeString;
  private
    function wstHas_CommodityCode() : Boolean;
  published
    property Description : UnicodeString read FDescription write FDescription;
    property CountryCodeOrigin : UnicodeString read FCountryCodeOrigin write FCountryCodeOrigin;
    property CommodityCode : UnicodeString read FCommodityCode write FCommodityCode stored wstHas_CommodityCode;
    property Amount : ExportDocumentDDType_ExportDocPosition_Type_Amount_Type read FAmount write FAmount;
    property NetWeightInKG : ExportDocumentDDType_ExportDocPosition_Type_NetWeightInKG_Type read FNetWeightInKG write FNetWeightInKG;
    property GrossWeightInKG : ExportDocumentDDType_ExportDocPosition_Type_GrossWeightInKG_Type read FGrossWeightInKG write FGrossWeightInKG;
    property CustomsValue : ExportDocumentDDType_ExportDocPosition_Type_CustomsValue_Type read FCustomsValue write FCustomsValue;
    property CustomsCurrency : UnicodeString read FCustomsCurrency write FCustomsCurrency;
  end;

  ExportDocumentDDType = class(TBaseComplexRemotable)
  private
    FInvoiceType : ExportDocumentDDType_InvoiceType_Type;
    FInvoiceDate : ExportDocumentDDType_InvoiceDate_Type;
    FInvoiceNumber : UnicodeString;
    FExportType : ExportDocumentDDType_ExportType_Type;
    FExportTypeDescription : UnicodeString;
    FCommodityCode : UnicodeString;
    FTermsOfTrade : UnicodeString;
    FAmount : ExportDocumentDDType_Amount_Type;
    FDescription : UnicodeString;
    FCountryCodeOrigin : UnicodeString;
    FAdditionalFee : ExportDocumentDDType_AdditionalFee_Type;
    FCustomsValue : ExportDocumentDDType_CustomsValue_Type;
    FCustomsCurrency : UnicodeString;
    FPermitNumber : UnicodeString;
    FAttestationNumber : UnicodeString;
    FWithElectronicExportNtfctn : boolean;
    FMRNNumber : UnicodeString;
    FExportDocPosition : ExportDocumentDDType_ExportDocPositionArray;
  private
    function wstHas_InvoiceType() : Boolean;
    function wstHas_InvoiceNumber() : Boolean;
    function wstHas_ExportType() : Boolean;
    function wstHas_ExportTypeDescription() : Boolean;
    function wstHas_CommodityCode() : Boolean;
    function wstHas_AdditionalFee() : Boolean;
    function wstHas_PermitNumber() : Boolean;
    function wstHas_AttestationNumber() : Boolean;
    function wstHas_WithElectronicExportNtfctn() : Boolean;
    function wstHas_MRNNumber() : Boolean;
    function wstHas_ExportDocPosition() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property InvoiceType : ExportDocumentDDType_InvoiceType_Type read FInvoiceType write FInvoiceType stored wstHas_InvoiceType;
    property InvoiceDate : ExportDocumentDDType_InvoiceDate_Type read FInvoiceDate write FInvoiceDate;
    property InvoiceNumber : UnicodeString read FInvoiceNumber write FInvoiceNumber stored wstHas_InvoiceNumber;
    property ExportType : ExportDocumentDDType_ExportType_Type read FExportType write FExportType stored wstHas_ExportType;
    property ExportTypeDescription : UnicodeString read FExportTypeDescription write FExportTypeDescription stored wstHas_ExportTypeDescription;
    property CommodityCode : UnicodeString read FCommodityCode write FCommodityCode stored wstHas_CommodityCode;
    property TermsOfTrade : UnicodeString read FTermsOfTrade write FTermsOfTrade;
    property Amount : ExportDocumentDDType_Amount_Type read FAmount write FAmount;
    property Description : UnicodeString read FDescription write FDescription;
    property CountryCodeOrigin : UnicodeString read FCountryCodeOrigin write FCountryCodeOrigin;
    property AdditionalFee : ExportDocumentDDType_AdditionalFee_Type read FAdditionalFee write FAdditionalFee stored wstHas_AdditionalFee;
    property CustomsValue : ExportDocumentDDType_CustomsValue_Type read FCustomsValue write FCustomsValue;
    property CustomsCurrency : UnicodeString read FCustomsCurrency write FCustomsCurrency;
    property PermitNumber : UnicodeString read FPermitNumber write FPermitNumber stored wstHas_PermitNumber;
    property AttestationNumber : UnicodeString read FAttestationNumber write FAttestationNumber stored wstHas_AttestationNumber;
    property WithElectronicExportNtfctn : boolean read FWithElectronicExportNtfctn write FWithElectronicExportNtfctn stored wstHas_WithElectronicExportNtfctn;
    property MRNNumber : UnicodeString read FMRNNumber write FMRNNumber stored wstHas_MRNNumber;
    property ExportDocPosition : ExportDocumentDDType_ExportDocPositionArray read FExportDocPosition write FExportDocPosition stored wstHas_ExportDocPosition;
  end;

  FurtherAddressesDDType_DeliveryAdress_Type = class(TBaseComplexRemotable)
  private
    FCompany : NameType;
    FName3 : UnicodeString;
    FAddress : NativeAddressType;
    FCommunication : CommunicationType;
  private
    function wstHas_Name3() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Company : NameType read FCompany write FCompany;
    property Name3 : UnicodeString read FName3 write FName3 stored wstHas_Name3;
    property Address : NativeAddressType read FAddress write FAddress;
    property Communication : CommunicationType read FCommunication write FCommunication;
  end;

  FurtherAddressesDDType = class(TBaseComplexRemotable)
  private
    FDeliveryAdress : FurtherAddressesDDType_DeliveryAdress_Type;
  private
    function wstHas_DeliveryAdress() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property DeliveryAdress : FurtherAddressesDDType_DeliveryAdress_Type read FDeliveryAdress write FDeliveryAdress stored wstHas_DeliveryAdress;
  end;

  LabelData = class(TBaseComplexRemotable)
  private
    FShipmentNumber : ShipmentNumberType;
    FStatus : Statusinformation;
    FLabelurl : UnicodeString;
    FXMLLabel : UnicodeString;
  private
    function wstHas_Labelurl() : Boolean;
    function wstHas_XMLLabel() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property ShipmentNumber : ShipmentNumberType read FShipmentNumber write FShipmentNumber;
    property Status : Statusinformation read FStatus write FStatus;
    property Labelurl : UnicodeString read FLabelurl write FLabelurl stored wstHas_Labelurl;
    property XMLLabel : UnicodeString read FXMLLabel write FXMLLabel stored wstHas_XMLLabel;
  end;

  ExportDocData = class(TBaseComplexRemotable)
  private
    FShipmentNumber : ShipmentNumberType;
    FStatus : Statusinformation;
    FExportDocPDFData : UnicodeString;
    FExportDocURL : UnicodeString;
  private
    function wstHas_ExportDocPDFData() : Boolean;
    function wstHas_ExportDocURL() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property ShipmentNumber : ShipmentNumberType read FShipmentNumber write FShipmentNumber;
    property Status : Statusinformation read FStatus write FStatus;
    property ExportDocPDFData : UnicodeString read FExportDocPDFData write FExportDocPDFData stored wstHas_ExportDocPDFData;
    property ExportDocURL : UnicodeString read FExportDocURL write FExportDocURL stored wstHas_ExportDocURL;
  end;

  ManifestState = class(TBaseComplexRemotable)
  private
    FShipmentNumber : ShipmentNumberType;
    FStatus : Statusinformation;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property ShipmentNumber : ShipmentNumberType read FShipmentNumber write FShipmentNumber;
    property Status : Statusinformation read FStatus write FStatus;
  end;

  DeletionState = class(TBaseComplexRemotable)
  private
    FShipmentNumber : ShipmentNumberType;
    FStatus : Statusinformation;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property ShipmentNumber : ShipmentNumberType read FShipmentNumber write FShipmentNumber;
    property Status : Statusinformation read FStatus write FStatus;
  end;

  PickupDetailsType = class(TBaseComplexRemotable)
  private
    FPickupDate : PickupDetailsType_PickupDate_Type;
    FReadyByTime : PickupDetailsType_ReadyByTime_Type;
    FClosingTime : PickupDetailsType_ClosingTime_Type;
    FRemark : UnicodeString;
    FPickupLocation : UnicodeString;
  private
    function wstHas_Remark() : Boolean;
  published
    property PickupDate : PickupDetailsType_PickupDate_Type read FPickupDate write FPickupDate;
    property ReadyByTime : PickupDetailsType_ReadyByTime_Type read FReadyByTime write FReadyByTime;
    property ClosingTime : PickupDetailsType_ClosingTime_Type read FClosingTime write FClosingTime;
    property Remark : UnicodeString read FRemark write FRemark stored wstHas_Remark;
    property PickupLocation : UnicodeString read FPickupLocation write FPickupLocation;
  end;

  PickupAddressType = class(TBaseComplexRemotable)
  private
    FNativeAddress : NativeAddressType;
    FPackStation : PackstationType;
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
    property PackStation : PackstationType read FPackStation write FPackStation stored wstHas_PackStation;
    property streetNameCode : streetNameCode_Type read FstreetNameCode write FstreetNameCode stored wstHas_streetNameCode;
    property streetNumberCode : streetNumberCode_Type read FstreetNumberCode write FstreetNumberCode stored wstHas_streetNumberCode;
  end;

  PickupOrdererType = class(TBaseComplexRemotable)
  private
    FCompany : NameType;
    FName3 : UnicodeString;
    FAddress : NativeAddressType;
    FCommunication : CommunicationType;
  private
    function wstHas_Name3() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Company : NameType read FCompany write FCompany;
    property Name3 : UnicodeString read FName3 write FName3 stored wstHas_Name3;
    property Address : NativeAddressType read FAddress write FAddress;
    property Communication : CommunicationType read FCommunication write FCommunication;
  end;

  PickupBookingInformationType = class(TBaseComplexRemotable)
  private
    FProductID : PickupBookingInformationType_ProductID_Type;
    FAccount : UnicodeString;
    FAttendance : UnicodeString;
    FPickupDate : PickupBookingInformationType_PickupDate_Type;
    FReadyByTime : PickupBookingInformationType_ReadyByTime_Type;
    FClosingTime : PickupBookingInformationType_ClosingTime_Type;
    FRemark : UnicodeString;
    FPickupLocation : UnicodeString;
    FAmountOfPieces : PickupBookingInformationType_AmountOfPieces_Type;
    FAmountOfPallets : PickupBookingInformationType_AmountOfPallets_Type;
    FWeightInKG : PickupBookingInformationType_WeightInKG_Type;
    FCountOfShipments : PickupBookingInformationType_CountOfShipments_Type;
    FTotalVolumeWeight : PickupBookingInformationType_TotalVolumeWeight_Type;
    FMaxLengthInCM : PickupBookingInformationType_MaxLengthInCM_Type;
    FMaxWidthInCM : PickupBookingInformationType_MaxWidthInCM_Type;
    FMaxHeightInCM : PickupBookingInformationType_MaxHeightInCM_Type;
  private
    function wstHas_Attendance() : Boolean;
    function wstHas_Remark() : Boolean;
    function wstHas_PickupLocation() : Boolean;
    function wstHas_AmountOfPieces() : Boolean;
    function wstHas_AmountOfPallets() : Boolean;
    function wstHas_WeightInKG() : Boolean;
    function wstHas_CountOfShipments() : Boolean;
    function wstHas_TotalVolumeWeight() : Boolean;
    function wstHas_MaxLengthInCM() : Boolean;
    function wstHas_MaxWidthInCM() : Boolean;
    function wstHas_MaxHeightInCM() : Boolean;
  published
    property ProductID : PickupBookingInformationType_ProductID_Type read FProductID write FProductID;
    property Account : UnicodeString read FAccount write FAccount;
    property Attendance : UnicodeString read FAttendance write FAttendance stored wstHas_Attendance;
    property PickupDate : PickupBookingInformationType_PickupDate_Type read FPickupDate write FPickupDate;
    property ReadyByTime : PickupBookingInformationType_ReadyByTime_Type read FReadyByTime write FReadyByTime;
    property ClosingTime : PickupBookingInformationType_ClosingTime_Type read FClosingTime write FClosingTime;
    property Remark : UnicodeString read FRemark write FRemark stored wstHas_Remark;
    property PickupLocation : UnicodeString read FPickupLocation write FPickupLocation stored wstHas_PickupLocation;
    property AmountOfPieces : PickupBookingInformationType_AmountOfPieces_Type read FAmountOfPieces write FAmountOfPieces stored wstHas_AmountOfPieces;
    property AmountOfPallets : PickupBookingInformationType_AmountOfPallets_Type read FAmountOfPallets write FAmountOfPallets stored wstHas_AmountOfPallets;
    property WeightInKG : PickupBookingInformationType_WeightInKG_Type read FWeightInKG write FWeightInKG stored wstHas_WeightInKG;
    property CountOfShipments : PickupBookingInformationType_CountOfShipments_Type read FCountOfShipments write FCountOfShipments stored wstHas_CountOfShipments;
    property TotalVolumeWeight : PickupBookingInformationType_TotalVolumeWeight_Type read FTotalVolumeWeight write FTotalVolumeWeight stored wstHas_TotalVolumeWeight;
    property MaxLengthInCM : PickupBookingInformationType_MaxLengthInCM_Type read FMaxLengthInCM write FMaxLengthInCM stored wstHas_MaxLengthInCM;
    property MaxWidthInCM : PickupBookingInformationType_MaxWidthInCM_Type read FMaxWidthInCM write FMaxWidthInCM stored wstHas_MaxWidthInCM;
    property MaxHeightInCM : PickupBookingInformationType_MaxHeightInCM_Type read FMaxHeightInCM write FMaxHeightInCM stored wstHas_MaxHeightInCM;
  end;

  IdentityData_DrivingLicense_Type = class(TBaseComplexRemotable)
  private
    FLicenseNumber : UnicodeString;
    FAuthority : UnicodeString;
  published
    property LicenseNumber : UnicodeString read FLicenseNumber write FLicenseNumber;
    property Authority : UnicodeString read FAuthority write FAuthority;
  end;

  IdentityData_IdentityCard_Type = class(TBaseComplexRemotable)
  private
    FCardNumber : UnicodeString;
    FCardAuthority : UnicodeString;
  published
    property CardNumber : UnicodeString read FCardNumber write FCardNumber;
    property CardAuthority : UnicodeString read FCardAuthority write FCardAuthority;
  end;

  IdentityData_BankCard_Type = class(TBaseComplexRemotable)
  private
    FCardType : UnicodeString;
    FCardNumber : UnicodeString;
    FBankName : UnicodeString;
    FBankCode : UnicodeString;
  published
    property CardType : UnicodeString read FCardType write FCardType;
    property CardNumber : UnicodeString read FCardNumber write FCardNumber;
    property BankName : UnicodeString read FBankName write FBankName;
    property BankCode : UnicodeString read FBankCode write FBankCode;
  end;

  IdentityData = class(TBaseComplexRemotable)
  private
    FDrivingLicense : IdentityData_DrivingLicense_Type;
    FIdentityCard : IdentityData_IdentityCard_Type;
    FBankCard : IdentityData_BankCard_Type;
  private
    function wstHas_DrivingLicense() : Boolean;
    function wstHas_IdentityCard() : Boolean;
    function wstHas_BankCard() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property DrivingLicense : IdentityData_DrivingLicense_Type read FDrivingLicense write FDrivingLicense stored wstHas_DrivingLicense;
    property IdentityCard : IdentityData_IdentityCard_Type read FIdentityCard write FIdentityCard stored wstHas_IdentityCard;
    property BankCard : IdentityData_BankCard_Type read FBankCard write FBankCard stored wstHas_BankCard;
  end;

  PackstationType = class(TBaseComplexRemotable)
  private
    FPackstationNumber : UnicodeString;
    FPostNumber : UnicodeString;
    FZip : PackstationType_Zip_Type;
    FCity : PackstationType_City_Type;
  published
    property PackstationNumber : UnicodeString read FPackstationNumber write FPackstationNumber;
    property PostNumber : UnicodeString read FPostNumber write FPostNumber;
    property Zip : PackstationType_Zip_Type read FZip write FZip;
    property City : PackstationType_City_Type read FCity write FCity;
  end;

  PostfilialeType = class(TBaseComplexRemotable)
  private
    FPostfilialNumber : UnicodeString;
    FPostNumber : UnicodeString;
    FZip : PostfilialeType_Zip_Type;
    FCity : PostfilialeType_City_Type;
  private
    function wstHas_PostNumber() : Boolean;
  published
    property PostfilialNumber : UnicodeString read FPostfilialNumber write FPostfilialNumber;
    property PostNumber : UnicodeString read FPostNumber write FPostNumber stored wstHas_PostNumber;
    property Zip : PostfilialeType_Zip_Type read FZip write FZip;
    property City : PostfilialeType_City_Type read FCity write FCity;
  end;

  CreateShipmentTDRequest_ShipmentOrderArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ShipmentOrderTDType;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ShipmentOrderTDType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ShipmentOrderTDType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ShipmentOrderTDType Read GetItem;Default;
  end;

  CreateShipmentResponse_CreationStateArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): CreationState;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): CreationState; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : CreationState; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : CreationState Read GetItem;Default;
  end;

  CreateShipmentDDRequest_ShipmentOrderArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ShipmentOrderDDType;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ShipmentOrderDDType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ShipmentOrderDDType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ShipmentOrderDDType Read GetItem;Default;
  end;

  DeleteShipmentTDRequest_ShipmentNumberArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ShipmentNumberType;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ShipmentNumberType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ShipmentNumberType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ShipmentNumberType Read GetItem;Default;
  end;

  DeleteShipmentResponse_DeletionStateArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): DeletionState;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): DeletionState; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : DeletionState; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : DeletionState Read GetItem;Default;
  end;

  DeleteShipmentDDRequest_ShipmentNumberArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ShipmentNumberType;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ShipmentNumberType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ShipmentNumberType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ShipmentNumberType Read GetItem;Default;
  end;

  DoManifestTDRequest_ShipmentNumberArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ShipmentNumberType;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ShipmentNumberType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ShipmentNumberType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ShipmentNumberType Read GetItem;Default;
  end;

  DoManifestResponse_ManifestStateArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ManifestState;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ManifestState; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ManifestState; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ManifestState Read GetItem;Default;
  end;

  DoManifestDDRequest_ShipmentNumberArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ShipmentNumberType;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ShipmentNumberType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ShipmentNumberType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ShipmentNumberType Read GetItem;Default;
  end;

  GetLabelTDRequest_ShipmentNumberArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ShipmentNumberType;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ShipmentNumberType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ShipmentNumberType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ShipmentNumberType Read GetItem;Default;
  end;

  GetLabelResponse_LabelDataArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): LabelData;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): LabelData; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : LabelData; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : LabelData Read GetItem;Default;
  end;

  GetLabelDDRequest_ShipmentNumberArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ShipmentNumberType;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ShipmentNumberType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ShipmentNumberType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ShipmentNumberType Read GetItem;Default;
  end;

  GetExportDocTDRequest_ShipmentNumberArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ShipmentNumberType;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ShipmentNumberType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ShipmentNumberType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ShipmentNumberType Read GetItem;Default;
  end;

  GetExportDocResponse_ExportDocDataArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ExportDocData;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ExportDocData; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ExportDocData; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ExportDocData Read GetItem;Default;
  end;

  GetExportDocDDRequest_ShipmentNumberArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ShipmentNumberType;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ShipmentNumberType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ShipmentNumberType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ShipmentNumberType Read GetItem;Default;
  end;

  CreationState_StatusMessageArray = class(TBaseSimpleTypeArrayRemotable)
  private
    FData : array of CreationState_StatusMessage_Type;
  private
    function GetItem(AIndex: Integer): CreationState_StatusMessage_Type;
    procedure SetItem(AIndex: Integer; const AValue: CreationState_StatusMessage_Type);
  protected
    function GetLength():Integer;override;
    procedure SaveItem(AStore : IFormatterBase;const AName : String;const AIndex : Integer);override;
    procedure LoadItem(AStore : IFormatterBase;const AIndex : Integer);override;
  public
    class function GetItemTypeInfo():PTypeInfo;override;
    procedure SetLength(const ANewSize : Integer);override;
    procedure Assign(Source: TPersistent); override;
    property Item[AIndex:Integer] : CreationState_StatusMessage_Type read GetItem write SetItem; default;
  end;

  CreationState_PieceInformationArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): PieceInformation;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): PieceInformation; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : PieceInformation; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : PieceInformation Read GetItem;Default;
  end;

  ShipmentDetailsTDType_ShipmentItemArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ShipmentItemTDType;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ShipmentItemTDType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ShipmentItemTDType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ShipmentItemTDType Read GetItem;Default;
  end;

  ShipmentDetailsTDType_ServiceArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ShipmentServiceTD;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ShipmentServiceTD; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ShipmentServiceTD; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ShipmentServiceTD Read GetItem;Default;
  end;

  ShipmentDetailsTDType_NotificationArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ShipmentNotificationType;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ShipmentNotificationType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ShipmentNotificationType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ShipmentNotificationType Read GetItem;Default;
  end;

  ShipmentDetailsDDType_ShipmentItemArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ShipmentItemDDType;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ShipmentItemDDType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ShipmentItemDDType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ShipmentItemDDType Read GetItem;Default;
  end;

  ShipmentDetailsDDType_ServiceArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ShipmentServiceDD;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ShipmentServiceDD; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ShipmentServiceDD; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ShipmentServiceDD Read GetItem;Default;
  end;

  ShipmentDetailsDDType_NotificationArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ShipmentNotificationType;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ShipmentNotificationType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ShipmentNotificationType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ShipmentNotificationType Read GetItem;Default;
  end;

  DDServiceGroupDHLPaketType_ShipmentAdvisory_Type = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type Read GetItem;Default;
  end;

  ExportDocumentTDType_ExportDocPositionArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ExportDocumentTDType_ExportDocPosition_Type;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ExportDocumentTDType_ExportDocPosition_Type; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ExportDocumentTDType_ExportDocPosition_Type; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ExportDocumentTDType_ExportDocPosition_Type Read GetItem;Default;
  end;

  ExportDocumentDDType_ExportDocPositionArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ExportDocumentDDType_ExportDocPosition_Type;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ExportDocumentDDType_ExportDocPosition_Type; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ExportDocumentDDType_ExportDocPosition_Type; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ExportDocumentDDType_ExportDocPosition_Type Read GetItem;Default;
  end;

Implementation
uses metadata_repository, record_rtti, wst_types;

{ CreateShipmentTDRequest }

constructor CreateShipmentTDRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FShipmentOrder := CreateShipmentTDRequest_ShipmentOrderArray.Create();
end;

procedure CreateShipmentTDRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FShipmentOrder) then
    FreeAndNil(FShipmentOrder);
  inherited FreeObjectProperties();
end;

{ CreateShipmentResponse }

constructor CreateShipmentResponse.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  Fstatus := Statusinformation.Create();
  FCreationState := CreateShipmentResponse_CreationStateArray.Create();
end;

procedure CreateShipmentResponse.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(Fstatus) then
    FreeAndNil(Fstatus);
  if Assigned(FCreationState) then
    FreeAndNil(FCreationState);
  inherited FreeObjectProperties();
end;

function CreateShipmentResponse.wstHas_CreationState() : Boolean;
begin
  Result := ( FCreationState <> CreateShipmentResponse_CreationStateArray(0) );
end;

{ CreateShipmentDDRequest }

constructor CreateShipmentDDRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FShipmentOrder := CreateShipmentDDRequest_ShipmentOrderArray.Create();
end;

procedure CreateShipmentDDRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FShipmentOrder) then
    FreeAndNil(FShipmentOrder);
  inherited FreeObjectProperties();
end;

{ DeleteShipmentTDRequest }

constructor DeleteShipmentTDRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FShipmentNumber := DeleteShipmentTDRequest_ShipmentNumberArray.Create();
end;

procedure DeleteShipmentTDRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FShipmentNumber) then
    FreeAndNil(FShipmentNumber);
  inherited FreeObjectProperties();
end;

{ DeleteShipmentResponse }

constructor DeleteShipmentResponse.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FStatus := Statusinformation.Create();
  FDeletionState := DeleteShipmentResponse_DeletionStateArray.Create();
end;

procedure DeleteShipmentResponse.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  if Assigned(FDeletionState) then
    FreeAndNil(FDeletionState);
  inherited FreeObjectProperties();
end;

function DeleteShipmentResponse.wstHas_DeletionState() : Boolean;
begin
  Result := ( FDeletionState <> DeleteShipmentResponse_DeletionStateArray(0) );
end;

{ DeleteShipmentDDRequest }

constructor DeleteShipmentDDRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FShipmentNumber := DeleteShipmentDDRequest_ShipmentNumberArray.Create();
end;

procedure DeleteShipmentDDRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FShipmentNumber) then
    FreeAndNil(FShipmentNumber);
  inherited FreeObjectProperties();
end;

{ DoManifestTDRequest }

constructor DoManifestTDRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FShipmentNumber := DoManifestTDRequest_ShipmentNumberArray.Create();
end;

procedure DoManifestTDRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FShipmentNumber) then
    FreeAndNil(FShipmentNumber);
  inherited FreeObjectProperties();
end;

{ DoManifestResponse }

constructor DoManifestResponse.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FStatus := Statusinformation.Create();
  FManifestState := DoManifestResponse_ManifestStateArray.Create();
end;

procedure DoManifestResponse.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  if Assigned(FManifestState) then
    FreeAndNil(FManifestState);
  inherited FreeObjectProperties();
end;

function DoManifestResponse.wstHas_ManifestState() : Boolean;
begin
  Result := ( FManifestState <> DoManifestResponse_ManifestStateArray(0) );
end;

{ DoManifestDDRequest }

constructor DoManifestDDRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FShipmentNumber := DoManifestDDRequest_ShipmentNumberArray.Create();
end;

procedure DoManifestDDRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FShipmentNumber) then
    FreeAndNil(FShipmentNumber);
  inherited FreeObjectProperties();
end;

{ GetLabelTDRequest }

constructor GetLabelTDRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FShipmentNumber := GetLabelTDRequest_ShipmentNumberArray.Create();
end;

procedure GetLabelTDRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FShipmentNumber) then
    FreeAndNil(FShipmentNumber);
  inherited FreeObjectProperties();
end;

{ GetLabelResponse }

constructor GetLabelResponse.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  Fstatus := Statusinformation.Create();
  FLabelData := GetLabelResponse_LabelDataArray.Create();
end;

procedure GetLabelResponse.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(Fstatus) then
    FreeAndNil(Fstatus);
  if Assigned(FLabelData) then
    FreeAndNil(FLabelData);
  inherited FreeObjectProperties();
end;

function GetLabelResponse.wstHas_LabelData() : Boolean;
begin
  Result := ( FLabelData <> GetLabelResponse_LabelDataArray(0) );
end;

{ GetLabelDDRequest }

constructor GetLabelDDRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FShipmentNumber := GetLabelDDRequest_ShipmentNumberArray.Create();
end;

procedure GetLabelDDRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FShipmentNumber) then
    FreeAndNil(FShipmentNumber);
  inherited FreeObjectProperties();
end;

{ BookPickupRequest }

constructor BookPickupRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FBookingInformation := PickupBookingInformationType.Create();
  FPickupAddress := PickupAddressType.Create();
  FContactOrderer := PickupOrdererType.Create();
end;

procedure BookPickupRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FBookingInformation) then
    FreeAndNil(FBookingInformation);
  if Assigned(FPickupAddress) then
    FreeAndNil(FPickupAddress);
  if Assigned(FContactOrderer) then
    FreeAndNil(FContactOrderer);
  inherited FreeObjectProperties();
end;

function BookPickupRequest.wstHas_ContactOrderer() : Boolean;
begin
  Result := ( FContactOrderer <> nil );
end;

{ BookPickupResponse }

constructor BookPickupResponse.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FStatus := Statusinformation.Create();
end;

procedure BookPickupResponse.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  inherited FreeObjectProperties();
end;

function BookPickupResponse.wstHas_ConfirmationNumber() : Boolean;
begin
  Result := ( FConfirmationNumber <> '' );
end;

function BookPickupResponse.wstHas_ShipmentNumber() : Boolean;
begin
  Result := ( FShipmentNumber <> '' );
end;

{ CancelPickupRequest }

constructor CancelPickupRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
end;

procedure CancelPickupRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  inherited FreeObjectProperties();
end;

{ CancelPickupResponse }

constructor CancelPickupResponse.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FStatus := Statusinformation.Create();
end;

procedure CancelPickupResponse.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  inherited FreeObjectProperties();
end;

{ GetVersionResponse }

constructor GetVersionResponse.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
end;

procedure GetVersionResponse.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  inherited FreeObjectProperties();
end;

{ GetExportDocTDRequest }

constructor GetExportDocTDRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FShipmentNumber := GetExportDocTDRequest_ShipmentNumberArray.Create();
end;

procedure GetExportDocTDRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FShipmentNumber) then
    FreeAndNil(FShipmentNumber);
  inherited FreeObjectProperties();
end;

function GetExportDocTDRequest.wstHas_DocType() : Boolean;
begin
  Result := True;
end;

{ GetExportDocResponse }

constructor GetExportDocResponse.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  Fstatus := Statusinformation.Create();
  FExportDocData := GetExportDocResponse_ExportDocDataArray.Create();
end;

procedure GetExportDocResponse.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(Fstatus) then
    FreeAndNil(Fstatus);
  if Assigned(FExportDocData) then
    FreeAndNil(FExportDocData);
  inherited FreeObjectProperties();
end;

function GetExportDocResponse.wstHas_ExportDocData() : Boolean;
begin
  Result := ( FExportDocData <> GetExportDocResponse_ExportDocDataArray(0) );
end;

{ GetExportDocDDRequest }

constructor GetExportDocDDRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FShipmentNumber := GetExportDocDDRequest_ShipmentNumberArray.Create();
end;

procedure GetExportDocDDRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FShipmentNumber) then
    FreeAndNil(FShipmentNumber);
  inherited FreeObjectProperties();
end;

function GetExportDocDDRequest.wstHas_DocType() : Boolean;
begin
  Result := True;
end;

{ GetManifestDDRequest }

constructor GetManifestDDRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FmanifestDateRange := GetManifestDDRequest_manifestDateRange_Type.Create();
end;

procedure GetManifestDDRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FmanifestDateRange) then
    FreeAndNil(FmanifestDateRange);
  inherited FreeObjectProperties();
end;

function GetManifestDDRequest.wstHas_manifestDate() : Boolean;
begin
  Result := ( FmanifestDate <> '' );
end;

function GetManifestDDRequest.wstHas_manifestDateRange() : Boolean;
begin
  Result := ( FmanifestDateRange <> nil );
end;

{ GetManifestDDResponse }

constructor GetManifestDDResponse.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  Fstatus := Statusinformation.Create();
end;

procedure GetManifestDDResponse.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(Fstatus) then
    FreeAndNil(Fstatus);
  inherited FreeObjectProperties();
end;

function GetManifestDDResponse.wstHas_ManifestPDFData() : Boolean;
begin
  Result := ( FManifestPDFData <> '' );
end;

{ UpdateShipmentDDRequest }

constructor UpdateShipmentDDRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FShipmentNumber := ShipmentNumberType.Create();
  FShipmentOrder := ShipmentOrderDDType.Create();
end;

procedure UpdateShipmentDDRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FShipmentNumber) then
    FreeAndNil(FShipmentNumber);
  if Assigned(FShipmentOrder) then
    FreeAndNil(FShipmentOrder);
  inherited FreeObjectProperties();
end;

{ UpdateShipmentResponse }

constructor UpdateShipmentResponse.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  Fstatus := Statusinformation.Create();
  FCreationState := is_base_de.CreationState.Create();
end;

procedure UpdateShipmentResponse.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(Fstatus) then
    FreeAndNil(Fstatus);
  if Assigned(FCreationState) then
    FreeAndNil(FCreationState);
  inherited FreeObjectProperties();
end;

function UpdateShipmentResponse.wstHas_CreationState() : Boolean;
begin
  Result := ( FCreationState <> nil );
end;

{ CreationState }

constructor CreationState.Create();
begin
  inherited Create();
  FStatusMessage := CreationState_StatusMessageArray.Create();
  FShipmentNumber := ShipmentNumberType.Create();
  FPieceInformation := CreationState_PieceInformationArray.Create();
end;

procedure CreationState.FreeObjectProperties();
begin
  if Assigned(FStatusMessage) then
    FreeAndNil(FStatusMessage);
  if Assigned(FShipmentNumber) then
    FreeAndNil(FShipmentNumber);
  if Assigned(FPieceInformation) then
    FreeAndNil(FPieceInformation);
  inherited FreeObjectProperties();
end;

function CreationState.wstHas_StatusMessage() : Boolean;
begin
  Result := ( FStatusMessage <> CreationState_StatusMessageArray(0) );
end;

function CreationState.wstHas_ShipmentNumber() : Boolean;
begin
  Result := ( FShipmentNumber <> nil );
end;

function CreationState.wstHas_PieceInformation() : Boolean;
begin
  Result := ( FPieceInformation <> CreationState_PieceInformationArray(0) );
end;

function CreationState.wstHas_Labelurl() : Boolean;
begin
  Result := ( FLabelurl <> '' );
end;

function CreationState.wstHas_XMLLabel() : Boolean;
begin
  Result := ( FXMLLabel <> '' );
end;

function CreationState.wstHas_PickupConfirmationNumber() : Boolean;
begin
  Result := ( FPickupConfirmationNumber <> '' );
end;

{ PieceInformation }

constructor PieceInformation.Create();
begin
  inherited Create();
  FPieceNumber := ShipmentNumberType.Create();
end;

procedure PieceInformation.FreeObjectProperties();
begin
  if Assigned(FPieceNumber) then
    FreeAndNil(FPieceNumber);
  inherited FreeObjectProperties();
end;

function PieceInformation.wstHas_PieceNumber() : Boolean;
begin
  Result := ( FPieceNumber <> nil );
end;

{ ShipmentOrderTDType_Shipment_Type }

constructor ShipmentOrderTDType_Shipment_Type.Create();
begin
  inherited Create();
  FShipmentDetails := ShipmentDetailsTDType.Create();
  FShipper := ShipperTDType.Create();
  FReceiver := ReceiverTDType.Create();
  FExportDocument := ExportDocumentTDType.Create();
end;

procedure ShipmentOrderTDType_Shipment_Type.FreeObjectProperties();
begin
  if Assigned(FShipmentDetails) then
    FreeAndNil(FShipmentDetails);
  if Assigned(FShipper) then
    FreeAndNil(FShipper);
  if Assigned(FReceiver) then
    FreeAndNil(FReceiver);
  if Assigned(FExportDocument) then
    FreeAndNil(FExportDocument);
  inherited FreeObjectProperties();
end;

function ShipmentOrderTDType_Shipment_Type.wstHas_ExportDocument() : Boolean;
begin
  Result := ( FExportDocument <> nil );
end;

{ ShipmentOrderTDType_Pickup_Type }

constructor ShipmentOrderTDType_Pickup_Type.Create();
begin
  inherited Create();
  FPickupDetails := PickupDetailsType.Create();
  FPickupAddress := PickupAddressType.Create();
end;

procedure ShipmentOrderTDType_Pickup_Type.FreeObjectProperties();
begin
  if Assigned(FPickupDetails) then
    FreeAndNil(FPickupDetails);
  if Assigned(FPickupAddress) then
    FreeAndNil(FPickupAddress);
  inherited FreeObjectProperties();
end;

function ShipmentOrderTDType_Pickup_Type.wstHas_PickupAddress() : Boolean;
begin
  Result := ( FPickupAddress <> nil );
end;

{ ShipmentOrderTDType }

constructor ShipmentOrderTDType.Create();
begin
  inherited Create();
  FShipment := ShipmentOrderTDType_Shipment_Type.Create();
  FPickup := ShipmentOrderTDType_Pickup_Type.Create();
end;

procedure ShipmentOrderTDType.FreeObjectProperties();
begin
  if Assigned(FShipment) then
    FreeAndNil(FShipment);
  if Assigned(FPickup) then
    FreeAndNil(FPickup);
  inherited FreeObjectProperties();
end;

function ShipmentOrderTDType.wstHas_Pickup() : Boolean;
begin
  Result := ( FPickup <> nil );
end;

function ShipmentOrderTDType.wstHas_LabelResponseType() : Boolean;
begin
  Result := True;
end;

{ ShipmentOrderDDType_Shipment_Type }

constructor ShipmentOrderDDType_Shipment_Type.Create();
begin
  inherited Create();
  FShipmentDetails := ShipmentDetailsDDType.Create();
  FShipper := ShipperDDType.Create();
  FReceiver := ReceiverDDType.Create();
  FExportDocument := ExportDocumentDDType.Create();
  FIdentity := IdentityType.Create();
  FFurtherAddresses := FurtherAddressesDDType.Create();
end;

procedure ShipmentOrderDDType_Shipment_Type.FreeObjectProperties();
begin
  if Assigned(FShipmentDetails) then
    FreeAndNil(FShipmentDetails);
  if Assigned(FShipper) then
    FreeAndNil(FShipper);
  if Assigned(FReceiver) then
    FreeAndNil(FReceiver);
  if Assigned(FExportDocument) then
    FreeAndNil(FExportDocument);
  if Assigned(FIdentity) then
    FreeAndNil(FIdentity);
  if Assigned(FFurtherAddresses) then
    FreeAndNil(FFurtherAddresses);
  inherited FreeObjectProperties();
end;

function ShipmentOrderDDType_Shipment_Type.wstHas_ExportDocument() : Boolean;
begin
  Result := ( FExportDocument <> nil );
end;

function ShipmentOrderDDType_Shipment_Type.wstHas_Identity() : Boolean;
begin
  Result := ( FIdentity <> nil );
end;

function ShipmentOrderDDType_Shipment_Type.wstHas_FurtherAddresses() : Boolean;
begin
  Result := ( FFurtherAddresses <> nil );
end;

{ ShipmentOrderDDType_Pickup_Type }

constructor ShipmentOrderDDType_Pickup_Type.Create();
begin
  inherited Create();
  FPickupDetails := PickupDetailsType.Create();
  FPickupAddress := PickupAddressType.Create();
end;

procedure ShipmentOrderDDType_Pickup_Type.FreeObjectProperties();
begin
  if Assigned(FPickupDetails) then
    FreeAndNil(FPickupDetails);
  if Assigned(FPickupAddress) then
    FreeAndNil(FPickupAddress);
  inherited FreeObjectProperties();
end;

function ShipmentOrderDDType_Pickup_Type.wstHas_PickupAddress() : Boolean;
begin
  Result := ( FPickupAddress <> nil );
end;

{ ShipmentOrderDDType }

constructor ShipmentOrderDDType.Create();
begin
  inherited Create();
  FShipment := ShipmentOrderDDType_Shipment_Type.Create();
  FPickup := ShipmentOrderDDType_Pickup_Type.Create();
end;

procedure ShipmentOrderDDType.FreeObjectProperties();
begin
  if Assigned(FShipment) then
    FreeAndNil(FShipment);
  if Assigned(FPickup) then
    FreeAndNil(FPickup);
  inherited FreeObjectProperties();
end;

function ShipmentOrderDDType.wstHas_Pickup() : Boolean;
begin
  Result := ( FPickup <> nil );
end;

function ShipmentOrderDDType.wstHas_LabelResponseType() : Boolean;
begin
  Result := True;
end;

function ShipmentOrderDDType.wstHas_PRINTONLYIFCODEABLE() : Boolean;
begin
  Result := True;
end;

{ ShipperType }

constructor ShipperType.Create();
begin
  inherited Create();
  FCompany := NameType.Create();
  FAddress := NativeAddressType.Create();
  FCommunication := CommunicationType.Create();
end;

procedure ShipperType.FreeObjectProperties();
begin
  if Assigned(FCompany) then
    FreeAndNil(FCompany);
  if Assigned(FAddress) then
    FreeAndNil(FAddress);
  if Assigned(FCommunication) then
    FreeAndNil(FCommunication);
  inherited FreeObjectProperties();
end;

function ShipperType.wstHas_VAT() : Boolean;
begin
  Result := ( FVAT <> '' );
end;

function ShipperDDType.wstHas_Remark() : Boolean;
begin
  Result := ( FRemark <> '' );
end;

{ ReceiverType }

constructor ReceiverType.Create();
begin
  inherited Create();
  FCompany := NameType.Create();
  FAddress := NativeAddressType.Create();
  FPackstation := PackstationType.Create();
  FPostfiliale := PostfilialeType.Create();
  FCommunication := CommunicationType.Create();
end;

procedure ReceiverType.FreeObjectProperties();
begin
  if Assigned(FCompany) then
    FreeAndNil(FCompany);
  if Assigned(FAddress) then
    FreeAndNil(FAddress);
  if Assigned(FPackstation) then
    FreeAndNil(FPackstation);
  if Assigned(FPostfiliale) then
    FreeAndNil(FPostfiliale);
  if Assigned(FCommunication) then
    FreeAndNil(FCommunication);
  inherited FreeObjectProperties();
end;

function ReceiverType.wstHas_Address() : Boolean;
begin
  Result := ( FAddress <> nil );
end;

function ReceiverType.wstHas_Packstation() : Boolean;
begin
  Result := ( FPackstation <> nil );
end;

function ReceiverType.wstHas_Postfiliale() : Boolean;
begin
  Result := ( FPostfiliale <> nil );
end;

function ReceiverType.wstHas_VAT() : Boolean;
begin
  Result := ( FVAT <> '' );
end;

function ReceiverDDType.wstHas_CompanyName3() : Boolean;
begin
  Result := ( FCompanyName3 <> '' );
end;

function ShipmentDetailsType.wstHas_DeclaredValueOfGoods() : Boolean;
begin
  Result := ( FDeclaredValueOfGoods <> 0 );
end;

function ShipmentDetailsType.wstHas_DeclaredValueOfGoodsCurrency() : Boolean;
begin
  Result := ( FDeclaredValueOfGoodsCurrency <> '' );
end;

{ ShipmentDetailsTDType }

constructor ShipmentDetailsTDType.Create();
begin
  inherited Create();
  FAccount := ShipmentDetailsTDType_Account_Type.Create();
  FAccountPaidBy := ShipmentDetailsTDType_AccountPaidBy_Type.Create();
  FShipmentItem := ShipmentDetailsTDType_ShipmentItemArray.Create();
  FService := ShipmentDetailsTDType_ServiceArray.Create();
  FNotification := ShipmentDetailsTDType_NotificationArray.Create();
end;

procedure ShipmentDetailsTDType.FreeObjectProperties();
begin
  if Assigned(FAccount) then
    FreeAndNil(FAccount);
  if Assigned(FAccountPaidBy) then
    FreeAndNil(FAccountPaidBy);
  if Assigned(FShipmentItem) then
    FreeAndNil(FShipmentItem);
  if Assigned(FService) then
    FreeAndNil(FService);
  if Assigned(FNotification) then
    FreeAndNil(FNotification);
  inherited FreeObjectProperties();
end;

function ShipmentDetailsTDType.wstHas_AccountPaidBy() : Boolean;
begin
  Result := ( FAccountPaidBy <> nil );
end;

function ShipmentDetailsTDType.wstHas_ShipmentReference() : Boolean;
begin
  Result := ( FShipmentReference <> '' );
end;

function ShipmentDetailsTDType.wstHas_TermsOfTrade() : Boolean;
begin
  Result := ( FTermsOfTrade <> '' );
end;

function ShipmentDetailsTDType.wstHas_Service() : Boolean;
begin
  Result := ( FService <> ShipmentDetailsTDType_ServiceArray(0) );
end;

function ShipmentDetailsTDType.wstHas_Notification() : Boolean;
begin
  Result := ( FNotification <> ShipmentDetailsTDType_NotificationArray(0) );
end;

function ShipmentDetailsTDType.wstHas_NotificationEmailText() : Boolean;
begin
  Result := ( FNotificationEmailText <> '' );
end;

{ ShipmentDetailsDDType }

constructor ShipmentDetailsDDType.Create();
begin
  inherited Create();
  FAttendance := ShipmentDetailsDDType_Attendance_Type.Create();
  FShipmentItem := ShipmentDetailsDDType_ShipmentItemArray.Create();
  FService := ShipmentDetailsDDType_ServiceArray.Create();
  FNotification := ShipmentDetailsDDType_NotificationArray.Create();
  FBankData := BankType.Create();
end;

procedure ShipmentDetailsDDType.FreeObjectProperties();
begin
  if Assigned(FAttendance) then
    FreeAndNil(FAttendance);
  if Assigned(FShipmentItem) then
    FreeAndNil(FShipmentItem);
  if Assigned(FService) then
    FreeAndNil(FService);
  if Assigned(FNotification) then
    FreeAndNil(FNotification);
  if Assigned(FBankData) then
    FreeAndNil(FBankData);
  inherited FreeObjectProperties();
end;

function ShipmentDetailsDDType.wstHas_CustomerReference() : Boolean;
begin
  Result := ( FCustomerReference <> '' );
end;

function ShipmentDetailsDDType.wstHas_Description() : Boolean;
begin
  Result := ( FDescription <> '' );
end;

function ShipmentDetailsDDType.wstHas_DeliveryRemarks() : Boolean;
begin
  Result := ( FDeliveryRemarks <> '' );
end;

function ShipmentDetailsDDType.wstHas_Service() : Boolean;
begin
  Result := ( FService <> ShipmentDetailsDDType_ServiceArray(0) );
end;

function ShipmentDetailsDDType.wstHas_Notification() : Boolean;
begin
  Result := ( FNotification <> ShipmentDetailsDDType_NotificationArray(0) );
end;

function ShipmentDetailsDDType.wstHas_NotificationEmailText() : Boolean;
begin
  Result := ( FNotificationEmailText <> '' );
end;

function ShipmentDetailsDDType.wstHas_BankData() : Boolean;
begin
  Result := ( FBankData <> nil );
end;

function ShipmentItemType.wstHas_LengthInCM() : Boolean;
begin
  Result := ( FLengthInCM <> ShipmentItemType_LengthInCM_Type(0) );
end;

function ShipmentItemType.wstHas_WidthInCM() : Boolean;
begin
  Result := ( FWidthInCM <> ShipmentItemType_WidthInCM_Type(0) );
end;

function ShipmentItemType.wstHas_HeightInCM() : Boolean;
begin
  Result := ( FHeightInCM <> ShipmentItemType_HeightInCM_Type(0) );
end;

{ ShipmentServiceTD }

constructor ShipmentServiceTD.Create();
begin
  inherited Create();
  FServiceGroupDateTimeOption := TDServiceGroupDateTimeOptionType.Create();
  FServiceGroupOther := TDServiceGroupOtherType.Create();
end;

procedure ShipmentServiceTD.FreeObjectProperties();
begin
  if Assigned(FServiceGroupDateTimeOption) then
    FreeAndNil(FServiceGroupDateTimeOption);
  if Assigned(FServiceGroupOther) then
    FreeAndNil(FServiceGroupOther);
  inherited FreeObjectProperties();
end;

function ShipmentServiceTD.wstHas_ServiceGroupDateTimeOption() : Boolean;
begin
  Result := ( FServiceGroupDateTimeOption <> nil );
end;

function ShipmentServiceTD.wstHas_ServiceGroupOther() : Boolean;
begin
  Result := ( FServiceGroupOther <> nil );
end;

{ TDServiceGroupDateTimeOptionType }

constructor TDServiceGroupDateTimeOptionType.Create();
begin
  inherited Create();
  FExpressSaturday := TDServiceGroupDateTimeOptionType_ExpressSaturday_Type.Create();
end;

procedure TDServiceGroupDateTimeOptionType.FreeObjectProperties();
begin
  if Assigned(FExpressSaturday) then
    FreeAndNil(FExpressSaturday);
  inherited FreeObjectProperties();
end;

{ TDServiceGroupOtherType }

constructor TDServiceGroupOtherType.Create();
begin
  inherited Create();
  FInsurance := TDServiceGroupOtherType_Insurance_Type.Create();
end;

procedure TDServiceGroupOtherType.FreeObjectProperties();
begin
  if Assigned(FInsurance) then
    FreeAndNil(FInsurance);
  inherited FreeObjectProperties();
end;

function TDServiceGroupOtherType.wstHas_Insurance() : Boolean;
begin
  Result := ( FInsurance <> nil );
end;

function TDServiceGroupOtherType.wstHas_GoGreen() : Boolean;
begin
  Result := ( FGoGreen <> boolean(0) );
end;

{ ShipmentServiceDD }

constructor ShipmentServiceDD.Create();
begin
  inherited Create();
  FServiceGroupDateTimeOption := DDServiceGroupDateTimeOptionType.Create();
  FShipmentServiceGroupIdent := DDShipmentServiceGroupIdentType.Create();
  FShipmentServiceGroupPickup := DDShipmentServiceGroupPickupType.Create();
  FServiceGroupBusinessPackInternational := DDServiceGroupBusinessPackInternationalType.Create();
  FServiceGroupDHLPaket := DDServiceGroupDHLPaketType.Create();
  FServiceGroupOther := DDServiceGroupOtherType.Create();
end;

procedure ShipmentServiceDD.FreeObjectProperties();
begin
  if Assigned(FServiceGroupDateTimeOption) then
    FreeAndNil(FServiceGroupDateTimeOption);
  if Assigned(FShipmentServiceGroupIdent) then
    FreeAndNil(FShipmentServiceGroupIdent);
  if Assigned(FShipmentServiceGroupPickup) then
    FreeAndNil(FShipmentServiceGroupPickup);
  if Assigned(FServiceGroupBusinessPackInternational) then
    FreeAndNil(FServiceGroupBusinessPackInternational);
  if Assigned(FServiceGroupDHLPaket) then
    FreeAndNil(FServiceGroupDHLPaket);
  if Assigned(FServiceGroupOther) then
    FreeAndNil(FServiceGroupOther);
  inherited FreeObjectProperties();
end;

function ShipmentServiceDD.wstHas_ServiceGroupDateTimeOption() : Boolean;
begin
  Result := ( FServiceGroupDateTimeOption <> nil );
end;

function ShipmentServiceDD.wstHas_ShipmentServiceGroupIdent() : Boolean;
begin
  Result := ( FShipmentServiceGroupIdent <> nil );
end;

function ShipmentServiceDD.wstHas_ShipmentServiceGroupPickup() : Boolean;
begin
  Result := ( FShipmentServiceGroupPickup <> nil );
end;

function ShipmentServiceDD.wstHas_ServiceGroupBusinessPackInternational() : Boolean;
begin
  Result := ( FServiceGroupBusinessPackInternational <> nil );
end;

function ShipmentServiceDD.wstHas_ServiceGroupDHLPaket() : Boolean;
begin
  Result := ( FServiceGroupDHLPaket <> nil );
end;

function ShipmentServiceDD.wstHas_ServiceGroupOther() : Boolean;
begin
  Result := ( FServiceGroupOther <> nil );
end;

{ DDServiceGroupDateTimeOptionType }

constructor DDServiceGroupDateTimeOptionType.Create();
begin
  inherited Create();
  FDeliveryOnTime := DDServiceGroupDateTimeOptionType_DeliveryOnTime_Type.Create();
end;

procedure DDServiceGroupDateTimeOptionType.FreeObjectProperties();
begin
  if Assigned(FDeliveryOnTime) then
    FreeAndNil(FDeliveryOnTime);
  inherited FreeObjectProperties();
end;

function DDServiceGroupDateTimeOptionType.wstHas_DeliveryOnTime() : Boolean;
begin
  Result := ( FDeliveryOnTime <> nil );
end;

function DDServiceGroupDateTimeOptionType.wstHas_DeliveryEarly() : Boolean;
begin
  Result := ( FDeliveryEarly <> boolean(0) );
end;

function DDServiceGroupDateTimeOptionType.wstHas_Express0900() : Boolean;
begin
  Result := ( FExpress0900 <> boolean(0) );
end;

function DDServiceGroupDateTimeOptionType.wstHas_Express1000() : Boolean;
begin
  Result := ( FExpress1000 <> boolean(0) );
end;

function DDServiceGroupDateTimeOptionType.wstHas_Express1200() : Boolean;
begin
  Result := ( FExpress1200 <> boolean(0) );
end;

function DDServiceGroupDateTimeOptionType.wstHas_DeliveryAfternoon() : Boolean;
begin
  Result := ( FDeliveryAfternoon <> boolean(0) );
end;

function DDServiceGroupDateTimeOptionType.wstHas_DeliveryEvening() : Boolean;
begin
  Result := ( FDeliveryEvening <> boolean(0) );
end;

function DDServiceGroupDateTimeOptionType.wstHas_ExpressSaturday() : Boolean;
begin
  Result := ( FExpressSaturday <> boolean(0) );
end;

function DDServiceGroupDateTimeOptionType.wstHas_ExpressSunday() : Boolean;
begin
  Result := ( FExpressSunday <> boolean(0) );
end;

{ DDShipmentServiceGroupIdentType_IdentExtra_Type }

constructor DDShipmentServiceGroupIdentType_IdentExtra_Type.Create();
begin
  inherited Create();
  FGroup1 := IdentityData.Create();
  FGroup2 := IdentityData.Create();
end;

procedure DDShipmentServiceGroupIdentType_IdentExtra_Type.FreeObjectProperties();
begin
  if Assigned(FGroup1) then
    FreeAndNil(FGroup1);
  if Assigned(FGroup2) then
    FreeAndNil(FGroup2);
  inherited FreeObjectProperties();
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_Firstname() : Boolean;
begin
  Result := ( FFirstname <> '' );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_Name() : Boolean;
begin
  Result := ( FName <> '' );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_IdentityCardType() : Boolean;
begin
  Result := ( FIdentityCardType <> '' );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_IdentityCardNumber() : Boolean;
begin
  Result := ( FIdentityCardNumber <> '' );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_MinimumAge() : Boolean;
begin
  Result := ( FMinimumAge <> '' );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_DateOfBirth() : Boolean;
begin
  Result := ( FDateOfBirth <> '' );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_PostcodeAndCity() : Boolean;
begin
  Result := ( FPostcodeAndCity <> '' );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_District() : Boolean;
begin
  Result := ( FDistrict <> '' );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_WithIDPContract() : Boolean;
begin
  Result := ( FWithIDPContract <> boolean(0) );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_ContractID() : Boolean;
begin
  Result := ( FContractID <> '' );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_Nationality() : Boolean;
begin
  Result := ( FNationality <> '' );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_FreeText1() : Boolean;
begin
  Result := ( FFreeText1 <> '' );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_FreeText2() : Boolean;
begin
  Result := ( FFreeText2 <> '' );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_CorrOfNameAllowed() : Boolean;
begin
  Result := ( FCorrOfNameAllowed <> boolean(0) );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_CorrOfFirstNameAllowed() : Boolean;
begin
  Result := ( FCorrOfFirstNameAllowed <> boolean(0) );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_CorrOfDayOfBirthAllowed() : Boolean;
begin
  Result := ( FCorrOfDayOfBirthAllowed <> boolean(0) );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_CorrOfMinimumAgeAllowed() : Boolean;
begin
  Result := ( FCorrOfMinimumAgeAllowed <> boolean(0) );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_CorrOfIdentityCardTypeAllowed() : Boolean;
begin
  Result := ( FCorrOfIdentityCardTypeAllowed <> boolean(0) );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_CorrOfIdentityCardNumberAllowed() : Boolean;
begin
  Result := ( FCorrOfIdentityCardNumberAllowed <> boolean(0) );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_CorrOfAddressAllowed() : Boolean;
begin
  Result := ( FCorrOfAddressAllowed <> boolean(0) );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_CorrOfContractAllowed() : Boolean;
begin
  Result := ( FCorrOfContractAllowed <> boolean(0) );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_CorrOfContractIdAllowed() : Boolean;
begin
  Result := ( FCorrOfContractIdAllowed <> boolean(0) );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_CorrOfNationalityAllowed() : Boolean;
begin
  Result := ( FCorrOfNationalityAllowed <> boolean(0) );
end;

function DDShipmentServiceGroupIdentType_IdentPremium_Type.wstHas_CorrOfFreetextsAllowed() : Boolean;
begin
  Result := ( FCorrOfFreetextsAllowed <> boolean(0) );
end;

{ DDShipmentServiceGroupIdentType }

constructor DDShipmentServiceGroupIdentType.Create();
begin
  inherited Create();
  FIdent := DDShipmentServiceGroupIdentType_Ident_Type.Create();
  FIdentExtra := DDShipmentServiceGroupIdentType_IdentExtra_Type.Create();
  FIdentPremium := DDShipmentServiceGroupIdentType_IdentPremium_Type.Create();
  FContractSubmission := DDShipmentServiceGroupIdentType_ContractSubmission_Type.Create();
  FSMSAviso := DDShipmentServiceGroupIdentType_SMSAviso_Type.Create();
  FCheckMinimumAge := DDShipmentServiceGroupIdentType_CheckMinimumAge_Type.Create();
end;

procedure DDShipmentServiceGroupIdentType.FreeObjectProperties();
begin
  if Assigned(FIdent) then
    FreeAndNil(FIdent);
  if Assigned(FIdentExtra) then
    FreeAndNil(FIdentExtra);
  if Assigned(FIdentPremium) then
    FreeAndNil(FIdentPremium);
  if Assigned(FContractSubmission) then
    FreeAndNil(FContractSubmission);
  if Assigned(FSMSAviso) then
    FreeAndNil(FSMSAviso);
  if Assigned(FCheckMinimumAge) then
    FreeAndNil(FCheckMinimumAge);
  inherited FreeObjectProperties();
end;

function DDShipmentServiceGroupIdentType.wstHas_Ident() : Boolean;
begin
  Result := ( FIdent <> nil );
end;

function DDShipmentServiceGroupIdentType.wstHas_IdentExtra() : Boolean;
begin
  Result := ( FIdentExtra <> nil );
end;

function DDShipmentServiceGroupIdentType.wstHas_IdentPremium() : Boolean;
begin
  Result := ( FIdentPremium <> nil );
end;

function DDShipmentServiceGroupIdentType.wstHas_Personally() : Boolean;
begin
  Result := ( FPersonally <> boolean(0) );
end;

function DDShipmentServiceGroupIdentType.wstHas_ReturnReceipt() : Boolean;
begin
  Result := ( FReturnReceipt <> boolean(0) );
end;

function DDShipmentServiceGroupIdentType.wstHas_ProofOfDelivery() : Boolean;
begin
  Result := ( FProofOfDelivery <> boolean(0) );
end;

function DDShipmentServiceGroupIdentType.wstHas_ContractSubmission() : Boolean;
begin
  Result := ( FContractSubmission <> nil );
end;

function DDShipmentServiceGroupIdentType.wstHas_SMSAviso() : Boolean;
begin
  Result := ( FSMSAviso <> nil );
end;

function DDShipmentServiceGroupIdentType.wstHas_CheckMinimumAge() : Boolean;
begin
  Result := ( FCheckMinimumAge <> nil );
end;

function DDShipmentServiceGroupPickupType.wstHas_PickupSaturday() : Boolean;
begin
  Result := ( FPickupSaturday <> boolean(0) );
end;

function DDShipmentServiceGroupPickupType.wstHas_PickupLate() : Boolean;
begin
  Result := ( FPickupLate <> boolean(0) );
end;

{ DDServiceGroupBusinessPackInternationalType }

constructor DDServiceGroupBusinessPackInternationalType.Create();
begin
  inherited Create();
  FEndorsement := DDServiceGroupBusinessPackInternationalType_Endorsement_Type.Create();
end;

procedure DDServiceGroupBusinessPackInternationalType.FreeObjectProperties();
begin
  if Assigned(FEndorsement) then
    FreeAndNil(FEndorsement);
  inherited FreeObjectProperties();
end;

function DDServiceGroupBusinessPackInternationalType.wstHas_Economy() : Boolean;
begin
  Result := ( FEconomy <> boolean(0) );
end;

function DDServiceGroupBusinessPackInternationalType.wstHas_Premium() : Boolean;
begin
  Result := ( FPremium <> boolean(0) );
end;

function DDServiceGroupBusinessPackInternationalType.wstHas_Seapacket() : Boolean;
begin
  Result := ( FSeapacket <> boolean(0) );
end;

function DDServiceGroupBusinessPackInternationalType.wstHas_CoilWithoutHelp() : Boolean;
begin
  Result := ( FCoilWithoutHelp <> boolean(0) );
end;

function DDServiceGroupBusinessPackInternationalType.wstHas_Endorsement() : Boolean;
begin
  Result := ( FEndorsement <> nil );
end;

function DDServiceGroupBusinessPackInternationalType.wstHas_AmountInternational() : Boolean;
begin
  Result := ( FAmountInternational <> boolean(0) );
end;

function DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type.wstHas_ModuleType() : Boolean;
begin
  Result := ( FModuleType <> '' );
end;

function DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type.wstHas_MobilePhoneNumber() : Boolean;
begin
  Result := ( FMobilePhoneNumber <> '' );
end;

function DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type.wstHas_EmailAddress() : Boolean;
begin
  Result := ( FEmailAddress <> '' );
end;

function DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type.wstHas_Reference() : Boolean;
begin
  Result := ( FReference <> '' );
end;

function DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type.wstHas_Language() : Boolean;
begin
  Result := ( FLanguage <> '' );
end;

{ DDServiceGroupDHLPaketType_Endorsement_Type }

constructor DDServiceGroupDHLPaketType_Endorsement_Type.Create();
begin
  inherited Create();
  FUZN := EndorsementServiceconfiguration.Create();
  FKeNa := EndorsementServiceconfiguration.Create();
  FNSI := EndorsementServiceconfiguration.Create();
  FTeZu := EndorsementServiceconfigurationTeZu.Create();
  FSoZue := EndorsementServiceconfiguration.Create();
end;

procedure DDServiceGroupDHLPaketType_Endorsement_Type.FreeObjectProperties();
begin
  if Assigned(FUZN) then
    FreeAndNil(FUZN);
  if Assigned(FKeNa) then
    FreeAndNil(FKeNa);
  if Assigned(FNSI) then
    FreeAndNil(FNSI);
  if Assigned(FTeZu) then
    FreeAndNil(FTeZu);
  if Assigned(FSoZue) then
    FreeAndNil(FSoZue);
  inherited FreeObjectProperties();
end;

function DDServiceGroupDHLPaketType_Endorsement_Type.wstHas_UZN() : Boolean;
begin
  Result := ( FUZN <> nil );
end;

function DDServiceGroupDHLPaketType_Endorsement_Type.wstHas_KeNa() : Boolean;
begin
  Result := ( FKeNa <> nil );
end;

function DDServiceGroupDHLPaketType_Endorsement_Type.wstHas_NSI() : Boolean;
begin
  Result := ( FNSI <> nil );
end;

function DDServiceGroupDHLPaketType_Endorsement_Type.wstHas_TeZu() : Boolean;
begin
  Result := ( FTeZu <> nil );
end;

function DDServiceGroupDHLPaketType_Endorsement_Type.wstHas_SoZue() : Boolean;
begin
  Result := ( FSoZue <> nil );
end;

{ DDServiceGroupDHLPaketType }

constructor DDServiceGroupDHLPaketType.Create();
begin
  inherited Create();
  FShipmentAdvisory := DDServiceGroupDHLPaketType_ShipmentAdvisory_Type.Create();
  FEndorsement := DDServiceGroupDHLPaketType_Endorsement_Type.Create();
end;

procedure DDServiceGroupDHLPaketType.FreeObjectProperties();
begin
  if Assigned(FShipmentAdvisory) then
    FreeAndNil(FShipmentAdvisory);
  if Assigned(FEndorsement) then
    FreeAndNil(FEndorsement);
  inherited FreeObjectProperties();
end;

function DDServiceGroupDHLPaketType.wstHas_Multipack() : Boolean;
begin
  Result := ( FMultipack <> boolean(0) );
end;

function DDServiceGroupDHLPaketType.wstHas_RegioPacket() : Boolean;
begin
  Result := ( FRegioPacket <> boolean(0) );
end;

function DDServiceGroupDHLPaketType.wstHas_ParticularDelivery() : Boolean;
begin
  Result := ( FParticularDelivery <> boolean(0) );
end;

function DDServiceGroupDHLPaketType.wstHas_ShipmentAdvisory() : Boolean;
begin
  Result := ( FShipmentAdvisory <> DDServiceGroupDHLPaketType_ShipmentAdvisory_Type(0) );
end;

function DDServiceGroupDHLPaketType.wstHas_Endorsement() : Boolean;
begin
  Result := ( FEndorsement <> nil );
end;

function DDServiceGroupOtherType_Unfree_Type.wstHas_CustomerNumber() : Boolean;
begin
  Result := ( FCustomerNumber <> '' );
end;

function DDServiceGroupOtherType_Bulkfreight_Type.wstHas_BulkfreightType() : Boolean;
begin
  Result := True;
end;

{ DDServiceGroupOtherType }

constructor DDServiceGroupOtherType.Create();
begin
  inherited Create();
  FHigherInsurance := DDServiceGroupOtherType_HigherInsurance_Type.Create();
  FCOD := DDServiceGroupOtherType_COD_Type.Create();
  FUnfree := DDServiceGroupOtherType_Unfree_Type.Create();
  FDangerousGoods := DDServiceGroupOtherType_DangerousGoods_Type.Create();
  FBulkfreight := DDServiceGroupOtherType_Bulkfreight_Type.Create();
end;

procedure DDServiceGroupOtherType.FreeObjectProperties();
begin
  if Assigned(FHigherInsurance) then
    FreeAndNil(FHigherInsurance);
  if Assigned(FCOD) then
    FreeAndNil(FCOD);
  if Assigned(FUnfree) then
    FreeAndNil(FUnfree);
  if Assigned(FDangerousGoods) then
    FreeAndNil(FDangerousGoods);
  if Assigned(FBulkfreight) then
    FreeAndNil(FBulkfreight);
  inherited FreeObjectProperties();
end;

function DDServiceGroupOtherType.wstHas_HigherInsurance() : Boolean;
begin
  Result := ( FHigherInsurance <> nil );
end;

function DDServiceGroupOtherType.wstHas_COD() : Boolean;
begin
  Result := ( FCOD <> nil );
end;

function DDServiceGroupOtherType.wstHas_Unfree() : Boolean;
begin
  Result := ( FUnfree <> nil );
end;

function DDServiceGroupOtherType.wstHas_DangerousGoods() : Boolean;
begin
  Result := ( FDangerousGoods <> nil );
end;

function DDServiceGroupOtherType.wstHas_Bulkfreight() : Boolean;
begin
  Result := ( FBulkfreight <> nil );
end;

function DDServiceGroupOtherType.wstHas_DirectInjection() : Boolean;
begin
  Result := ( FDirectInjection <> boolean(0) );
end;

function DDServiceGroupOtherType.wstHas_Bypass() : Boolean;
begin
  Result := ( FBypass <> boolean(0) );
end;

function ExportDocumentTDType_ExportDocPosition_Type.wstHas_CommodityCode() : Boolean;
begin
  Result := ( FCommodityCode <> '' );
end;

{ ExportDocumentTDType }

constructor ExportDocumentTDType.Create();
begin
  inherited Create();
  FExportDocPosition := ExportDocumentTDType_ExportDocPositionArray.Create();
end;

procedure ExportDocumentTDType.FreeObjectProperties();
begin
  if Assigned(FExportDocPosition) then
    FreeAndNil(FExportDocPosition);
  inherited FreeObjectProperties();
end;

function ExportDocumentTDType.wstHas_InvoiceNumber() : Boolean;
begin
  Result := ( FInvoiceNumber <> '' );
end;

function ExportDocumentTDType.wstHas_SignerTitle() : Boolean;
begin
  Result := ( FSignerTitle <> '' );
end;

function ExportDocumentTDType.wstHas_Remark() : Boolean;
begin
  Result := ( FRemark <> '' );
end;

function ExportDocumentTDType.wstHas_CommodityCode() : Boolean;
begin
  Result := ( FCommodityCode <> '' );
end;

function ExportDocumentTDType.wstHas_ExportReason() : Boolean;
begin
  Result := ( FExportReason <> '' );
end;

function ExportDocumentTDType.wstHas_ExportDocPosition() : Boolean;
begin
  Result := ( FExportDocPosition <> ExportDocumentTDType_ExportDocPositionArray(0) );
end;

function ExportDocumentDDType_ExportDocPosition_Type.wstHas_CommodityCode() : Boolean;
begin
  Result := ( FCommodityCode <> '' );
end;

{ ExportDocumentDDType }

constructor ExportDocumentDDType.Create();
begin
  inherited Create();
  FExportDocPosition := ExportDocumentDDType_ExportDocPositionArray.Create();
end;

procedure ExportDocumentDDType.FreeObjectProperties();
begin
  if Assigned(FExportDocPosition) then
    FreeAndNil(FExportDocPosition);
  inherited FreeObjectProperties();
end;

function ExportDocumentDDType.wstHas_InvoiceType() : Boolean;
begin
  Result := True;
end;

function ExportDocumentDDType.wstHas_InvoiceNumber() : Boolean;
begin
  Result := ( FInvoiceNumber <> '' );
end;

function ExportDocumentDDType.wstHas_ExportType() : Boolean;
begin
  Result := True;
end;

function ExportDocumentDDType.wstHas_ExportTypeDescription() : Boolean;
begin
  Result := ( FExportTypeDescription <> '' );
end;

function ExportDocumentDDType.wstHas_CommodityCode() : Boolean;
begin
  Result := ( FCommodityCode <> '' );
end;

function ExportDocumentDDType.wstHas_AdditionalFee() : Boolean;
begin
  Result := ( FAdditionalFee <> 0 );
end;

function ExportDocumentDDType.wstHas_PermitNumber() : Boolean;
begin
  Result := ( FPermitNumber <> '' );
end;

function ExportDocumentDDType.wstHas_AttestationNumber() : Boolean;
begin
  Result := ( FAttestationNumber <> '' );
end;

function ExportDocumentDDType.wstHas_WithElectronicExportNtfctn() : Boolean;
begin
  Result := ( FWithElectronicExportNtfctn <> boolean(0) );
end;

function ExportDocumentDDType.wstHas_MRNNumber() : Boolean;
begin
  Result := ( FMRNNumber <> '' );
end;

function ExportDocumentDDType.wstHas_ExportDocPosition() : Boolean;
begin
  Result := ( FExportDocPosition <> ExportDocumentDDType_ExportDocPositionArray(0) );
end;

{ FurtherAddressesDDType_DeliveryAdress_Type }

constructor FurtherAddressesDDType_DeliveryAdress_Type.Create();
begin
  inherited Create();
  FCompany := NameType.Create();
  FAddress := NativeAddressType.Create();
  FCommunication := CommunicationType.Create();
end;

procedure FurtherAddressesDDType_DeliveryAdress_Type.FreeObjectProperties();
begin
  if Assigned(FCompany) then
    FreeAndNil(FCompany);
  if Assigned(FAddress) then
    FreeAndNil(FAddress);
  if Assigned(FCommunication) then
    FreeAndNil(FCommunication);
  inherited FreeObjectProperties();
end;

function FurtherAddressesDDType_DeliveryAdress_Type.wstHas_Name3() : Boolean;
begin
  Result := ( FName3 <> '' );
end;

{ FurtherAddressesDDType }

constructor FurtherAddressesDDType.Create();
begin
  inherited Create();
  FDeliveryAdress := FurtherAddressesDDType_DeliveryAdress_Type.Create();
end;

procedure FurtherAddressesDDType.FreeObjectProperties();
begin
  if Assigned(FDeliveryAdress) then
    FreeAndNil(FDeliveryAdress);
  inherited FreeObjectProperties();
end;

function FurtherAddressesDDType.wstHas_DeliveryAdress() : Boolean;
begin
  Result := ( FDeliveryAdress <> nil );
end;

{ LabelData }

constructor LabelData.Create();
begin
  inherited Create();
  FShipmentNumber := ShipmentNumberType.Create();
  FStatus := Statusinformation.Create();
end;

procedure LabelData.FreeObjectProperties();
begin
  if Assigned(FShipmentNumber) then
    FreeAndNil(FShipmentNumber);
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  inherited FreeObjectProperties();
end;

function LabelData.wstHas_Labelurl() : Boolean;
begin
  Result := ( FLabelurl <> '' );
end;

function LabelData.wstHas_XMLLabel() : Boolean;
begin
  Result := ( FXMLLabel <> '' );
end;

{ ExportDocData }

constructor ExportDocData.Create();
begin
  inherited Create();
  FShipmentNumber := ShipmentNumberType.Create();
  FStatus := Statusinformation.Create();
end;

procedure ExportDocData.FreeObjectProperties();
begin
  if Assigned(FShipmentNumber) then
    FreeAndNil(FShipmentNumber);
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  inherited FreeObjectProperties();
end;

function ExportDocData.wstHas_ExportDocPDFData() : Boolean;
begin
  Result := ( FExportDocPDFData <> '' );
end;

function ExportDocData.wstHas_ExportDocURL() : Boolean;
begin
  Result := ( FExportDocURL <> '' );
end;

{ ManifestState }

constructor ManifestState.Create();
begin
  inherited Create();
  FShipmentNumber := ShipmentNumberType.Create();
  FStatus := Statusinformation.Create();
end;

procedure ManifestState.FreeObjectProperties();
begin
  if Assigned(FShipmentNumber) then
    FreeAndNil(FShipmentNumber);
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  inherited FreeObjectProperties();
end;

{ DeletionState }

constructor DeletionState.Create();
begin
  inherited Create();
  FShipmentNumber := ShipmentNumberType.Create();
  FStatus := Statusinformation.Create();
end;

procedure DeletionState.FreeObjectProperties();
begin
  if Assigned(FShipmentNumber) then
    FreeAndNil(FShipmentNumber);
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  inherited FreeObjectProperties();
end;

function PickupDetailsType.wstHas_Remark() : Boolean;
begin
  Result := ( FRemark <> '' );
end;

{ PickupAddressType }

constructor PickupAddressType.Create();
begin
  inherited Create();
  FNativeAddress := NativeAddressType.Create();
  FPackStation := PackstationType.Create();
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

{ PickupOrdererType }

constructor PickupOrdererType.Create();
begin
  inherited Create();
  FCompany := NameType.Create();
  FAddress := NativeAddressType.Create();
  FCommunication := CommunicationType.Create();
end;

procedure PickupOrdererType.FreeObjectProperties();
begin
  if Assigned(FCompany) then
    FreeAndNil(FCompany);
  if Assigned(FAddress) then
    FreeAndNil(FAddress);
  if Assigned(FCommunication) then
    FreeAndNil(FCommunication);
  inherited FreeObjectProperties();
end;

function PickupOrdererType.wstHas_Name3() : Boolean;
begin
  Result := ( FName3 <> '' );
end;

function PickupBookingInformationType.wstHas_Attendance() : Boolean;
begin
  Result := ( FAttendance <> '' );
end;

function PickupBookingInformationType.wstHas_Remark() : Boolean;
begin
  Result := ( FRemark <> '' );
end;

function PickupBookingInformationType.wstHas_PickupLocation() : Boolean;
begin
  Result := ( FPickupLocation <> '' );
end;

function PickupBookingInformationType.wstHas_AmountOfPieces() : Boolean;
begin
  Result := ( FAmountOfPieces <> PickupBookingInformationType_AmountOfPieces_Type(0) );
end;

function PickupBookingInformationType.wstHas_AmountOfPallets() : Boolean;
begin
  Result := ( FAmountOfPallets <> PickupBookingInformationType_AmountOfPallets_Type(0) );
end;

function PickupBookingInformationType.wstHas_WeightInKG() : Boolean;
begin
  Result := ( FWeightInKG <> 0 );
end;

function PickupBookingInformationType.wstHas_CountOfShipments() : Boolean;
begin
  Result := ( FCountOfShipments <> PickupBookingInformationType_CountOfShipments_Type(0) );
end;

function PickupBookingInformationType.wstHas_TotalVolumeWeight() : Boolean;
begin
  Result := ( FTotalVolumeWeight <> 0 );
end;

function PickupBookingInformationType.wstHas_MaxLengthInCM() : Boolean;
begin
  Result := ( FMaxLengthInCM <> 0 );
end;

function PickupBookingInformationType.wstHas_MaxWidthInCM() : Boolean;
begin
  Result := ( FMaxWidthInCM <> 0 );
end;

function PickupBookingInformationType.wstHas_MaxHeightInCM() : Boolean;
begin
  Result := ( FMaxHeightInCM <> 0 );
end;

{ IdentityData }

constructor IdentityData.Create();
begin
  inherited Create();
  FDrivingLicense := IdentityData_DrivingLicense_Type.Create();
  FIdentityCard := IdentityData_IdentityCard_Type.Create();
  FBankCard := IdentityData_BankCard_Type.Create();
end;

procedure IdentityData.FreeObjectProperties();
begin
  if Assigned(FDrivingLicense) then
    FreeAndNil(FDrivingLicense);
  if Assigned(FIdentityCard) then
    FreeAndNil(FIdentityCard);
  if Assigned(FBankCard) then
    FreeAndNil(FBankCard);
  inherited FreeObjectProperties();
end;

function IdentityData.wstHas_DrivingLicense() : Boolean;
begin
  Result := ( FDrivingLicense <> nil );
end;

function IdentityData.wstHas_IdentityCard() : Boolean;
begin
  Result := ( FIdentityCard <> nil );
end;

function IdentityData.wstHas_BankCard() : Boolean;
begin
  Result := ( FBankCard <> nil );
end;

function PostfilialeType.wstHas_PostNumber() : Boolean;
begin
  Result := ( FPostNumber <> '' );
end;

{ CreateShipmentTDRequest_ShipmentOrderArray }

function CreateShipmentTDRequest_ShipmentOrderArray.GetItem(AIndex: Integer): ShipmentOrderTDType;
begin
  Result := ShipmentOrderTDType(Inherited GetItem(AIndex));
end;

class function CreateShipmentTDRequest_ShipmentOrderArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ShipmentOrderTDType;
end;

function CreateShipmentTDRequest_ShipmentOrderArray.Add() : ShipmentOrderTDType;
begin
  Result := ShipmentOrderTDType(inherited Add());
end;

function CreateShipmentTDRequest_ShipmentOrderArray.AddAt(const APosition : Integer) : ShipmentOrderTDType;
begin
  Result := ShipmentOrderTDType(inherited AddAt(APosition));
end;

{ CreateShipmentResponse_CreationStateArray }

function CreateShipmentResponse_CreationStateArray.GetItem(AIndex: Integer): CreationState;
begin
  Result := CreationState(Inherited GetItem(AIndex));
end;

class function CreateShipmentResponse_CreationStateArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= CreationState;
end;

function CreateShipmentResponse_CreationStateArray.Add() : CreationState;
begin
  Result := CreationState(inherited Add());
end;

function CreateShipmentResponse_CreationStateArray.AddAt(const APosition : Integer) : CreationState;
begin
  Result := CreationState(inherited AddAt(APosition));
end;

{ CreateShipmentDDRequest_ShipmentOrderArray }

function CreateShipmentDDRequest_ShipmentOrderArray.GetItem(AIndex: Integer): ShipmentOrderDDType;
begin
  Result := ShipmentOrderDDType(Inherited GetItem(AIndex));
end;

class function CreateShipmentDDRequest_ShipmentOrderArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ShipmentOrderDDType;
end;

function CreateShipmentDDRequest_ShipmentOrderArray.Add() : ShipmentOrderDDType;
begin
  Result := ShipmentOrderDDType(inherited Add());
end;

function CreateShipmentDDRequest_ShipmentOrderArray.AddAt(const APosition : Integer) : ShipmentOrderDDType;
begin
  Result := ShipmentOrderDDType(inherited AddAt(APosition));
end;

{ DeleteShipmentTDRequest_ShipmentNumberArray }

function DeleteShipmentTDRequest_ShipmentNumberArray.GetItem(AIndex: Integer): ShipmentNumberType;
begin
  Result := ShipmentNumberType(Inherited GetItem(AIndex));
end;

class function DeleteShipmentTDRequest_ShipmentNumberArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ShipmentNumberType;
end;

function DeleteShipmentTDRequest_ShipmentNumberArray.Add() : ShipmentNumberType;
begin
  Result := ShipmentNumberType(inherited Add());
end;

function DeleteShipmentTDRequest_ShipmentNumberArray.AddAt(const APosition : Integer) : ShipmentNumberType;
begin
  Result := ShipmentNumberType(inherited AddAt(APosition));
end;

{ DeleteShipmentResponse_DeletionStateArray }

function DeleteShipmentResponse_DeletionStateArray.GetItem(AIndex: Integer): DeletionState;
begin
  Result := DeletionState(Inherited GetItem(AIndex));
end;

class function DeleteShipmentResponse_DeletionStateArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= DeletionState;
end;

function DeleteShipmentResponse_DeletionStateArray.Add() : DeletionState;
begin
  Result := DeletionState(inherited Add());
end;

function DeleteShipmentResponse_DeletionStateArray.AddAt(const APosition : Integer) : DeletionState;
begin
  Result := DeletionState(inherited AddAt(APosition));
end;

{ DeleteShipmentDDRequest_ShipmentNumberArray }

function DeleteShipmentDDRequest_ShipmentNumberArray.GetItem(AIndex: Integer): ShipmentNumberType;
begin
  Result := ShipmentNumberType(Inherited GetItem(AIndex));
end;

class function DeleteShipmentDDRequest_ShipmentNumberArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ShipmentNumberType;
end;

function DeleteShipmentDDRequest_ShipmentNumberArray.Add() : ShipmentNumberType;
begin
  Result := ShipmentNumberType(inherited Add());
end;

function DeleteShipmentDDRequest_ShipmentNumberArray.AddAt(const APosition : Integer) : ShipmentNumberType;
begin
  Result := ShipmentNumberType(inherited AddAt(APosition));
end;

{ DoManifestTDRequest_ShipmentNumberArray }

function DoManifestTDRequest_ShipmentNumberArray.GetItem(AIndex: Integer): ShipmentNumberType;
begin
  Result := ShipmentNumberType(Inherited GetItem(AIndex));
end;

class function DoManifestTDRequest_ShipmentNumberArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ShipmentNumberType;
end;

function DoManifestTDRequest_ShipmentNumberArray.Add() : ShipmentNumberType;
begin
  Result := ShipmentNumberType(inherited Add());
end;

function DoManifestTDRequest_ShipmentNumberArray.AddAt(const APosition : Integer) : ShipmentNumberType;
begin
  Result := ShipmentNumberType(inherited AddAt(APosition));
end;

{ DoManifestResponse_ManifestStateArray }

function DoManifestResponse_ManifestStateArray.GetItem(AIndex: Integer): ManifestState;
begin
  Result := ManifestState(Inherited GetItem(AIndex));
end;

class function DoManifestResponse_ManifestStateArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ManifestState;
end;

function DoManifestResponse_ManifestStateArray.Add() : ManifestState;
begin
  Result := ManifestState(inherited Add());
end;

function DoManifestResponse_ManifestStateArray.AddAt(const APosition : Integer) : ManifestState;
begin
  Result := ManifestState(inherited AddAt(APosition));
end;

{ DoManifestDDRequest_ShipmentNumberArray }

function DoManifestDDRequest_ShipmentNumberArray.GetItem(AIndex: Integer): ShipmentNumberType;
begin
  Result := ShipmentNumberType(Inherited GetItem(AIndex));
end;

class function DoManifestDDRequest_ShipmentNumberArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ShipmentNumberType;
end;

function DoManifestDDRequest_ShipmentNumberArray.Add() : ShipmentNumberType;
begin
  Result := ShipmentNumberType(inherited Add());
end;

function DoManifestDDRequest_ShipmentNumberArray.AddAt(const APosition : Integer) : ShipmentNumberType;
begin
  Result := ShipmentNumberType(inherited AddAt(APosition));
end;

{ GetLabelTDRequest_ShipmentNumberArray }

function GetLabelTDRequest_ShipmentNumberArray.GetItem(AIndex: Integer): ShipmentNumberType;
begin
  Result := ShipmentNumberType(Inherited GetItem(AIndex));
end;

class function GetLabelTDRequest_ShipmentNumberArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ShipmentNumberType;
end;

function GetLabelTDRequest_ShipmentNumberArray.Add() : ShipmentNumberType;
begin
  Result := ShipmentNumberType(inherited Add());
end;

function GetLabelTDRequest_ShipmentNumberArray.AddAt(const APosition : Integer) : ShipmentNumberType;
begin
  Result := ShipmentNumberType(inherited AddAt(APosition));
end;

{ GetLabelResponse_LabelDataArray }

function GetLabelResponse_LabelDataArray.GetItem(AIndex: Integer): LabelData;
begin
  Result := LabelData(Inherited GetItem(AIndex));
end;

class function GetLabelResponse_LabelDataArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= LabelData;
end;

function GetLabelResponse_LabelDataArray.Add() : LabelData;
begin
  Result := LabelData(inherited Add());
end;

function GetLabelResponse_LabelDataArray.AddAt(const APosition : Integer) : LabelData;
begin
  Result := LabelData(inherited AddAt(APosition));
end;

{ GetLabelDDRequest_ShipmentNumberArray }

function GetLabelDDRequest_ShipmentNumberArray.GetItem(AIndex: Integer): ShipmentNumberType;
begin
  Result := ShipmentNumberType(Inherited GetItem(AIndex));
end;

class function GetLabelDDRequest_ShipmentNumberArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ShipmentNumberType;
end;

function GetLabelDDRequest_ShipmentNumberArray.Add() : ShipmentNumberType;
begin
  Result := ShipmentNumberType(inherited Add());
end;

function GetLabelDDRequest_ShipmentNumberArray.AddAt(const APosition : Integer) : ShipmentNumberType;
begin
  Result := ShipmentNumberType(inherited AddAt(APosition));
end;

{ GetExportDocTDRequest_ShipmentNumberArray }

function GetExportDocTDRequest_ShipmentNumberArray.GetItem(AIndex: Integer): ShipmentNumberType;
begin
  Result := ShipmentNumberType(Inherited GetItem(AIndex));
end;

class function GetExportDocTDRequest_ShipmentNumberArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ShipmentNumberType;
end;

function GetExportDocTDRequest_ShipmentNumberArray.Add() : ShipmentNumberType;
begin
  Result := ShipmentNumberType(inherited Add());
end;

function GetExportDocTDRequest_ShipmentNumberArray.AddAt(const APosition : Integer) : ShipmentNumberType;
begin
  Result := ShipmentNumberType(inherited AddAt(APosition));
end;

{ GetExportDocResponse_ExportDocDataArray }

function GetExportDocResponse_ExportDocDataArray.GetItem(AIndex: Integer): ExportDocData;
begin
  Result := ExportDocData(Inherited GetItem(AIndex));
end;

class function GetExportDocResponse_ExportDocDataArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ExportDocData;
end;

function GetExportDocResponse_ExportDocDataArray.Add() : ExportDocData;
begin
  Result := ExportDocData(inherited Add());
end;

function GetExportDocResponse_ExportDocDataArray.AddAt(const APosition : Integer) : ExportDocData;
begin
  Result := ExportDocData(inherited AddAt(APosition));
end;

{ GetExportDocDDRequest_ShipmentNumberArray }

function GetExportDocDDRequest_ShipmentNumberArray.GetItem(AIndex: Integer): ShipmentNumberType;
begin
  Result := ShipmentNumberType(Inherited GetItem(AIndex));
end;

class function GetExportDocDDRequest_ShipmentNumberArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ShipmentNumberType;
end;

function GetExportDocDDRequest_ShipmentNumberArray.Add() : ShipmentNumberType;
begin
  Result := ShipmentNumberType(inherited Add());
end;

function GetExportDocDDRequest_ShipmentNumberArray.AddAt(const APosition : Integer) : ShipmentNumberType;
begin
  Result := ShipmentNumberType(inherited AddAt(APosition));
end;

{ CreationState_StatusMessageArray }

function CreationState_StatusMessageArray.GetItem(AIndex: Integer): CreationState_StatusMessage_Type;
begin
  CheckIndex(AIndex);
  Result := FData[AIndex];
end;

procedure CreationState_StatusMessageArray.SetItem(AIndex: Integer;const AValue: CreationState_StatusMessage_Type);
begin
  CheckIndex(AIndex);
  FData[AIndex] := AValue;
end;

function CreationState_StatusMessageArray.GetLength(): Integer;
begin
  Result := System.Length(FData);
end;

procedure CreationState_StatusMessageArray.SaveItem(AStore: IFormatterBase;const AName: String; const AIndex: Integer);
begin
  AStore.Put('StatusMessage',TypeInfo(CreationState_StatusMessage_Type),FData[AIndex]);
end;

procedure CreationState_StatusMessageArray.LoadItem(AStore: IFormatterBase;const AIndex: Integer);
var
  sName : string;
begin
  sName := 'StatusMessage';
  AStore.Get(TypeInfo(CreationState_StatusMessage_Type),sName,FData[AIndex]);
end;

class function CreationState_StatusMessageArray.GetItemTypeInfo(): PTypeInfo;
begin
  Result := TypeInfo(CreationState_StatusMessage_Type);
end;

procedure CreationState_StatusMessageArray.SetLength(const ANewSize: Integer);
var
  i : Integer;
begin
  if ( ANewSize < 0 ) then
    i := 0
  else
    i := ANewSize;
  System.SetLength(FData,i);
end;

procedure CreationState_StatusMessageArray.Assign(Source: TPersistent);
var
  src : CreationState_StatusMessageArray;
  i, c : Integer;
begin
  if Assigned(Source) and Source.InheritsFrom(CreationState_StatusMessageArray) then begin
    src := CreationState_StatusMessageArray(Source);
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

{ CreationState_PieceInformationArray }

function CreationState_PieceInformationArray.GetItem(AIndex: Integer): PieceInformation;
begin
  Result := PieceInformation(Inherited GetItem(AIndex));
end;

class function CreationState_PieceInformationArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= PieceInformation;
end;

function CreationState_PieceInformationArray.Add() : PieceInformation;
begin
  Result := PieceInformation(inherited Add());
end;

function CreationState_PieceInformationArray.AddAt(const APosition : Integer) : PieceInformation;
begin
  Result := PieceInformation(inherited AddAt(APosition));
end;

{ ShipmentDetailsTDType_ShipmentItemArray }

function ShipmentDetailsTDType_ShipmentItemArray.GetItem(AIndex: Integer): ShipmentItemTDType;
begin
  Result := ShipmentItemTDType(Inherited GetItem(AIndex));
end;

class function ShipmentDetailsTDType_ShipmentItemArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ShipmentItemTDType;
end;

function ShipmentDetailsTDType_ShipmentItemArray.Add() : ShipmentItemTDType;
begin
  Result := ShipmentItemTDType(inherited Add());
end;

function ShipmentDetailsTDType_ShipmentItemArray.AddAt(const APosition : Integer) : ShipmentItemTDType;
begin
  Result := ShipmentItemTDType(inherited AddAt(APosition));
end;

{ ShipmentDetailsTDType_ServiceArray }

function ShipmentDetailsTDType_ServiceArray.GetItem(AIndex: Integer): ShipmentServiceTD;
begin
  Result := ShipmentServiceTD(Inherited GetItem(AIndex));
end;

class function ShipmentDetailsTDType_ServiceArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ShipmentServiceTD;
end;

function ShipmentDetailsTDType_ServiceArray.Add() : ShipmentServiceTD;
begin
  Result := ShipmentServiceTD(inherited Add());
end;

function ShipmentDetailsTDType_ServiceArray.AddAt(const APosition : Integer) : ShipmentServiceTD;
begin
  Result := ShipmentServiceTD(inherited AddAt(APosition));
end;

{ ShipmentDetailsTDType_NotificationArray }

function ShipmentDetailsTDType_NotificationArray.GetItem(AIndex: Integer): ShipmentNotificationType;
begin
  Result := ShipmentNotificationType(Inherited GetItem(AIndex));
end;

class function ShipmentDetailsTDType_NotificationArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ShipmentNotificationType;
end;

function ShipmentDetailsTDType_NotificationArray.Add() : ShipmentNotificationType;
begin
  Result := ShipmentNotificationType(inherited Add());
end;

function ShipmentDetailsTDType_NotificationArray.AddAt(const APosition : Integer) : ShipmentNotificationType;
begin
  Result := ShipmentNotificationType(inherited AddAt(APosition));
end;

{ ShipmentDetailsDDType_ShipmentItemArray }

function ShipmentDetailsDDType_ShipmentItemArray.GetItem(AIndex: Integer): ShipmentItemDDType;
begin
  Result := ShipmentItemDDType(Inherited GetItem(AIndex));
end;

class function ShipmentDetailsDDType_ShipmentItemArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ShipmentItemDDType;
end;

function ShipmentDetailsDDType_ShipmentItemArray.Add() : ShipmentItemDDType;
begin
  Result := ShipmentItemDDType(inherited Add());
end;

function ShipmentDetailsDDType_ShipmentItemArray.AddAt(const APosition : Integer) : ShipmentItemDDType;
begin
  Result := ShipmentItemDDType(inherited AddAt(APosition));
end;

{ ShipmentDetailsDDType_ServiceArray }

function ShipmentDetailsDDType_ServiceArray.GetItem(AIndex: Integer): ShipmentServiceDD;
begin
  Result := ShipmentServiceDD(Inherited GetItem(AIndex));
end;

class function ShipmentDetailsDDType_ServiceArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ShipmentServiceDD;
end;

function ShipmentDetailsDDType_ServiceArray.Add() : ShipmentServiceDD;
begin
  Result := ShipmentServiceDD(inherited Add());
end;

function ShipmentDetailsDDType_ServiceArray.AddAt(const APosition : Integer) : ShipmentServiceDD;
begin
  Result := ShipmentServiceDD(inherited AddAt(APosition));
end;

{ ShipmentDetailsDDType_NotificationArray }

function ShipmentDetailsDDType_NotificationArray.GetItem(AIndex: Integer): ShipmentNotificationType;
begin
  Result := ShipmentNotificationType(Inherited GetItem(AIndex));
end;

class function ShipmentDetailsDDType_NotificationArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ShipmentNotificationType;
end;

function ShipmentDetailsDDType_NotificationArray.Add() : ShipmentNotificationType;
begin
  Result := ShipmentNotificationType(inherited Add());
end;

function ShipmentDetailsDDType_NotificationArray.AddAt(const APosition : Integer) : ShipmentNotificationType;
begin
  Result := ShipmentNotificationType(inherited AddAt(APosition));
end;

{ DDServiceGroupDHLPaketType_ShipmentAdvisory_Type }

function DDServiceGroupDHLPaketType_ShipmentAdvisory_Type.GetItem(AIndex: Integer): DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type;
begin
  Result := DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type(Inherited GetItem(AIndex));
end;

class function DDServiceGroupDHLPaketType_ShipmentAdvisory_Type.GetItemClass(): TBaseRemotableClass;
begin
  Result:= DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type;
end;

function DDServiceGroupDHLPaketType_ShipmentAdvisory_Type.Add() : DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type;
begin
  Result := DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type(inherited Add());
end;

function DDServiceGroupDHLPaketType_ShipmentAdvisory_Type.AddAt(const APosition : Integer) : DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type;
begin
  Result := DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type(inherited AddAt(APosition));
end;

{ ExportDocumentTDType_ExportDocPositionArray }

function ExportDocumentTDType_ExportDocPositionArray.GetItem(AIndex: Integer): ExportDocumentTDType_ExportDocPosition_Type;
begin
  Result := ExportDocumentTDType_ExportDocPosition_Type(Inherited GetItem(AIndex));
end;

class function ExportDocumentTDType_ExportDocPositionArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ExportDocumentTDType_ExportDocPosition_Type;
end;

function ExportDocumentTDType_ExportDocPositionArray.Add() : ExportDocumentTDType_ExportDocPosition_Type;
begin
  Result := ExportDocumentTDType_ExportDocPosition_Type(inherited Add());
end;

function ExportDocumentTDType_ExportDocPositionArray.AddAt(const APosition : Integer) : ExportDocumentTDType_ExportDocPosition_Type;
begin
  Result := ExportDocumentTDType_ExportDocPosition_Type(inherited AddAt(APosition));
end;

{ ExportDocumentDDType_ExportDocPositionArray }

function ExportDocumentDDType_ExportDocPositionArray.GetItem(AIndex: Integer): ExportDocumentDDType_ExportDocPosition_Type;
begin
  Result := ExportDocumentDDType_ExportDocPosition_Type(Inherited GetItem(AIndex));
end;

class function ExportDocumentDDType_ExportDocPositionArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ExportDocumentDDType_ExportDocPosition_Type;
end;

function ExportDocumentDDType_ExportDocPositionArray.Add() : ExportDocumentDDType_ExportDocPosition_Type;
begin
  Result := ExportDocumentDDType_ExportDocPosition_Type(inherited Add());
end;

function ExportDocumentDDType_ExportDocPositionArray.AddAt(const APosition : Integer) : ExportDocumentDDType_ExportDocPosition_Type;
begin
  Result := ExportDocumentDDType_ExportDocPosition_Type(inherited AddAt(APosition));
end;


var
  typeRegistryInstance : TTypeRegistry = nil;
initialization
  typeRegistryInstance := GetTypeRegistry();
  EndorsementServiceconfiguration.RegisterAttributeProperty('active');
  EndorsementServiceconfigurationTeZu.RegisterAttributeProperty('active');
  EndorsementServiceconfigurationTeZu.RegisterAttributeProperty('tezuDate');

  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(GetExportDocTDRequest_DocType_Type),'GetExportDocTDRequest_DocType_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(GetExportDocDDRequest_DocType_Type),'GetExportDocDDRequest_DocType_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(GetExportDocDDRequest_DocType_Type)].RegisterExternalPropertyName('GetExportDocDDRequest_DocType_Type_PDF','PDF');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(GetExportDocDDRequest_DocType_Type)].RegisterExternalPropertyName('GetExportDocDDRequest_DocType_Type_URL','URL');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentOrderTDType_LabelResponseType_Type),'ShipmentOrderTDType_LabelResponseType_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ShipmentOrderTDType_LabelResponseType_Type)].RegisterExternalPropertyName('ShipmentOrderTDType_LabelResponseType_Type_URL','URL');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentOrderDDType_LabelResponseType_Type),'ShipmentOrderDDType_LabelResponseType_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ShipmentOrderDDType_LabelResponseType_Type)].RegisterExternalPropertyName('ShipmentOrderDDType_LabelResponseType_Type_URL','URL');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ShipmentOrderDDType_LabelResponseType_Type)].RegisterExternalPropertyName('ShipmentOrderDDType_LabelResponseType_Type_XML','XML');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentOrderDDType_PRINTONLYIFCODEABLE_Type),'ShipmentOrderDDType_PRINTONLYIFCODEABLE_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ShipmentOrderDDType_PRINTONLYIFCODEABLE_Type)].RegisterExternalPropertyName('ShipmentOrderDDType_PRINTONLYIFCODEABLE_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ShipmentOrderDDType_PRINTONLYIFCODEABLE_Type)].RegisterExternalPropertyName('ShipmentOrderDDType_PRINTONLYIFCODEABLE_Type__1','1');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentDetailsTDType_Dutiable_Type),'ShipmentDetailsTDType_Dutiable_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ShipmentDetailsTDType_Dutiable_Type)].RegisterExternalPropertyName('ShipmentDetailsTDType_Dutiable_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ShipmentDetailsTDType_Dutiable_Type)].RegisterExternalPropertyName('ShipmentDetailsTDType_Dutiable_Type__1','1');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(EndorsementServiceconfiguration_active_Type),'EndorsementServiceconfiguration_active_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(EndorsementServiceconfiguration_active_Type)].RegisterExternalPropertyName('EndorsementServiceconfiguration_active_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(EndorsementServiceconfiguration_active_Type)].RegisterExternalPropertyName('EndorsementServiceconfiguration_active_Type__1','1');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(EndorsementServiceconfigurationTeZu_active_Type),'EndorsementServiceconfigurationTeZu_active_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(EndorsementServiceconfigurationTeZu_active_Type)].RegisterExternalPropertyName('EndorsementServiceconfigurationTeZu_active_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(EndorsementServiceconfigurationTeZu_active_Type)].RegisterExternalPropertyName('EndorsementServiceconfigurationTeZu_active_Type__1','1');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDServiceGroupOtherType_Unfree_Type_PaymentType_Type),'DDServiceGroupOtherType_Unfree_Type_PaymentType_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(DDServiceGroupOtherType_Unfree_Type_PaymentType_Type)].RegisterExternalPropertyName('DDServiceGroupOtherType_Unfree_Type_PaymentType_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(DDServiceGroupOtherType_Unfree_Type_PaymentType_Type)].RegisterExternalPropertyName('DDServiceGroupOtherType_Unfree_Type_PaymentType_Type__1','1');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDServiceGroupOtherType_Bulkfreight_Type_BulkfreightType_Type),'DDServiceGroupOtherType_Bulkfreight_Type_BulkfreightType_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ExportDocumentTDType_InvoiceType_Type),'ExportDocumentTDType_InvoiceType_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ExportDocumentTDType_ExportType_Type),'ExportDocumentTDType_ExportType_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ExportDocumentDDType_InvoiceType_Type),'ExportDocumentDDType_InvoiceType_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ExportDocumentDDType_InvoiceType_Type)].RegisterExternalPropertyName('ExportDocumentDDType_InvoiceType_Type_proforma','proforma');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ExportDocumentDDType_InvoiceType_Type)].RegisterExternalPropertyName('ExportDocumentDDType_InvoiceType_Type_commercial','commercial');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ExportDocumentDDType_ExportType_Type),'ExportDocumentDDType_ExportType_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ExportDocumentDDType_ExportType_Type)].RegisterExternalPropertyName('ExportDocumentDDType_ExportType_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ExportDocumentDDType_ExportType_Type)].RegisterExternalPropertyName('ExportDocumentDDType_ExportType_Type__1','1');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ExportDocumentDDType_ExportType_Type)].RegisterExternalPropertyName('ExportDocumentDDType_ExportType_Type__2','2');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ExportDocumentDDType_ExportType_Type)].RegisterExternalPropertyName('ExportDocumentDDType_ExportType_Type__3','3');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ExportDocumentDDType_ExportType_Type)].RegisterExternalPropertyName('ExportDocumentDDType_ExportType_Type__4','4');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(PickupBookingInformationType_ProductID_Type),'PickupBookingInformationType_ProductID_Type');

  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CreateShipmentTDRequest),'CreateShipmentTDRequest');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CreateShipmentResponse),'CreateShipmentResponse');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CreateShipmentDDRequest),'CreateShipmentDDRequest');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DeleteShipmentTDRequest),'DeleteShipmentTDRequest');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DeleteShipmentResponse),'DeleteShipmentResponse');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DeleteShipmentDDRequest),'DeleteShipmentDDRequest');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DoManifestTDRequest),'DoManifestTDRequest');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DoManifestResponse),'DoManifestResponse');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DoManifestDDRequest),'DoManifestDDRequest');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetLabelTDRequest),'GetLabelTDRequest');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetLabelResponse),'GetLabelResponse');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetLabelDDRequest),'GetLabelDDRequest');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(BookPickupRequest),'BookPickupRequest');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(BookPickupResponse),'BookPickupResponse');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CancelPickupRequest),'CancelPickupRequest');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CancelPickupResponse),'CancelPickupResponse');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetVersionResponse),'GetVersionResponse');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetExportDocTDRequest),'GetExportDocTDRequest');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetExportDocResponse),'GetExportDocResponse');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetExportDocDDRequest),'GetExportDocDDRequest');

  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(GetManifestDDRequest_manifestDateRange_Type),'GetManifestDDRequest_manifestDateRange_Type');

  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetManifestDDRequest),'GetManifestDDRequest');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetManifestDDResponse),'GetManifestDDResponse');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(UpdateShipmentDDRequest),'UpdateShipmentDDRequest');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(UpdateShipmentResponse),'UpdateShipmentResponse');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DeveloperAuthentification),'DeveloperAuthentification');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CreationState),'CreationState');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(Statusinformation),'Statusinformation');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(PieceInformation),'PieceInformation');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentOrderTDType_Shipment_Type),'ShipmentOrderTDType_Shipment_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentOrderTDType_Pickup_Type),'ShipmentOrderTDType_Pickup_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentOrderTDType),'ShipmentOrderTDType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentOrderDDType_Shipment_Type),'ShipmentOrderDDType_Shipment_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentOrderDDType_Pickup_Type),'ShipmentOrderDDType_Pickup_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentOrderDDType),'ShipmentOrderDDType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipperType),'ShipperType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipperTDType),'ShipperTDType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipperDDType),'ShipperDDType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ReceiverType),'ReceiverType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ReceiverTDType),'ReceiverTDType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ReceiverDDType),'ReceiverDDType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(IdentityType),'IdentityType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentDetailsType),'ShipmentDetailsType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentDetailsTDType_Account_Type),'ShipmentDetailsTDType_Account_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentDetailsTDType_AccountPaidBy_Type),'ShipmentDetailsTDType_AccountPaidBy_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentDetailsTDType),'ShipmentDetailsTDType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentDetailsDDType_Attendance_Type),'ShipmentDetailsDDType_Attendance_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentDetailsDDType),'ShipmentDetailsDDType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentItemType),'ShipmentItemType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentItemTDType),'ShipmentItemTDType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentItemDDType),'ShipmentItemDDType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentServiceTD),'ShipmentServiceTD');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(TDServiceGroupDateTimeOptionType_ExpressSaturday_Type),'TDServiceGroupDateTimeOptionType_ExpressSaturday_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(TDServiceGroupDateTimeOptionType),'TDServiceGroupDateTimeOptionType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(TDServiceGroupOtherType_Insurance_Type),'TDServiceGroupOtherType_Insurance_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(TDServiceGroupOtherType),'TDServiceGroupOtherType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentServiceDD),'ShipmentServiceDD');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDServiceGroupDateTimeOptionType_DeliveryOnTime_Type),'DDServiceGroupDateTimeOptionType_DeliveryOnTime_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDServiceGroupDateTimeOptionType),'DDServiceGroupDateTimeOptionType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDShipmentServiceGroupIdentType_Ident_Type),'DDShipmentServiceGroupIdentType_Ident_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDShipmentServiceGroupIdentType_IdentExtra_Type),'DDShipmentServiceGroupIdentType_IdentExtra_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDShipmentServiceGroupIdentType_IdentPremium_Type),'DDShipmentServiceGroupIdentType_IdentPremium_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDShipmentServiceGroupIdentType_ContractSubmission_Type),'DDShipmentServiceGroupIdentType_ContractSubmission_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDShipmentServiceGroupIdentType_SMSAviso_Type),'DDShipmentServiceGroupIdentType_SMSAviso_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDShipmentServiceGroupIdentType_CheckMinimumAge_Type),'DDShipmentServiceGroupIdentType_CheckMinimumAge_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDShipmentServiceGroupIdentType),'DDShipmentServiceGroupIdentType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDShipmentServiceGroupPickupType),'DDShipmentServiceGroupPickupType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDServiceGroupBusinessPackInternationalType_Endorsement_Type),'DDServiceGroupBusinessPackInternationalType_Endorsement_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDServiceGroupBusinessPackInternationalType),'DDServiceGroupBusinessPackInternationalType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type),'DDServiceGroupDHLPaketType_ShipmentAdvisory_Type_AdvisoryData_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDServiceGroupDHLPaketType_Endorsement_Type),'DDServiceGroupDHLPaketType_Endorsement_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDServiceGroupDHLPaketType),'DDServiceGroupDHLPaketType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(EndorsementServiceconfiguration),'EndorsementServiceconfiguration');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(EndorsementServiceconfigurationTeZu),'EndorsementServiceconfigurationTeZu');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDServiceGroupOtherType_HigherInsurance_Type),'DDServiceGroupOtherType_HigherInsurance_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDServiceGroupOtherType_COD_Type),'DDServiceGroupOtherType_COD_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDServiceGroupOtherType_Unfree_Type),'DDServiceGroupOtherType_Unfree_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDServiceGroupOtherType_DangerousGoods_Type),'DDServiceGroupOtherType_DangerousGoods_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDServiceGroupOtherType_Bulkfreight_Type),'DDServiceGroupOtherType_Bulkfreight_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDServiceGroupOtherType),'DDServiceGroupOtherType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentNotificationType),'ShipmentNotificationType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ExportDocumentTDType_ExportDocPosition_Type),'ExportDocumentTDType_ExportDocPosition_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ExportDocumentTDType),'ExportDocumentTDType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ExportDocumentDDType_ExportDocPosition_Type),'ExportDocumentDDType_ExportDocPosition_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ExportDocumentDDType),'ExportDocumentDDType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(FurtherAddressesDDType_DeliveryAdress_Type),'FurtherAddressesDDType_DeliveryAdress_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(FurtherAddressesDDType),'FurtherAddressesDDType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(LabelData),'LabelData');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ExportDocData),'ExportDocData');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ManifestState),'ManifestState');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DeletionState),'DeletionState');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(PickupDetailsType),'PickupDetailsType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(PickupAddressType),'PickupAddressType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(PickupOrdererType),'PickupOrdererType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(PickupBookingInformationType),'PickupBookingInformationType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(IdentityData_DrivingLicense_Type),'IdentityData_DrivingLicense_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(IdentityData_IdentityCard_Type),'IdentityData_IdentityCard_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(IdentityData_BankCard_Type),'IdentityData_BankCard_Type');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(IdentityData),'IdentityData');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(PackstationType),'PackstationType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(PostfilialeType),'PostfilialeType');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(CreateShipmentTDRequest_ShipmentOrderArray),'CreateShipmentTDRequest_ShipmentOrderArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(CreateShipmentTDRequest_ShipmentOrderArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(CreateShipmentResponse_CreationStateArray),'CreateShipmentResponse_CreationStateArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(CreateShipmentResponse_CreationStateArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(CreateShipmentDDRequest_ShipmentOrderArray),'CreateShipmentDDRequest_ShipmentOrderArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(CreateShipmentDDRequest_ShipmentOrderArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DeleteShipmentTDRequest_ShipmentNumberArray),'DeleteShipmentTDRequest_ShipmentNumberArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(DeleteShipmentTDRequest_ShipmentNumberArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DeleteShipmentResponse_DeletionStateArray),'DeleteShipmentResponse_DeletionStateArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(DeleteShipmentResponse_DeletionStateArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DeleteShipmentDDRequest_ShipmentNumberArray),'DeleteShipmentDDRequest_ShipmentNumberArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(DeleteShipmentDDRequest_ShipmentNumberArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DoManifestTDRequest_ShipmentNumberArray),'DoManifestTDRequest_ShipmentNumberArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(DoManifestTDRequest_ShipmentNumberArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DoManifestResponse_ManifestStateArray),'DoManifestResponse_ManifestStateArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(DoManifestResponse_ManifestStateArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DoManifestDDRequest_ShipmentNumberArray),'DoManifestDDRequest_ShipmentNumberArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(DoManifestDDRequest_ShipmentNumberArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(GetLabelTDRequest_ShipmentNumberArray),'GetLabelTDRequest_ShipmentNumberArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(GetLabelTDRequest_ShipmentNumberArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(GetLabelResponse_LabelDataArray),'GetLabelResponse_LabelDataArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(GetLabelResponse_LabelDataArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(GetLabelDDRequest_ShipmentNumberArray),'GetLabelDDRequest_ShipmentNumberArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(GetLabelDDRequest_ShipmentNumberArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(GetExportDocTDRequest_ShipmentNumberArray),'GetExportDocTDRequest_ShipmentNumberArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(GetExportDocTDRequest_ShipmentNumberArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(GetExportDocResponse_ExportDocDataArray),'GetExportDocResponse_ExportDocDataArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(GetExportDocResponse_ExportDocDataArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(GetExportDocDDRequest_ShipmentNumberArray),'GetExportDocDDRequest_ShipmentNumberArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(GetExportDocDDRequest_ShipmentNumberArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(CreationState_StatusMessageArray),'CreationState_StatusMessageArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(CreationState_StatusMessageArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(CreationState_PieceInformationArray),'CreationState_PieceInformationArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(CreationState_PieceInformationArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentDetailsTDType_ShipmentItemArray),'ShipmentDetailsTDType_ShipmentItemArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ShipmentDetailsTDType_ShipmentItemArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentDetailsTDType_ServiceArray),'ShipmentDetailsTDType_ServiceArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ShipmentDetailsTDType_ServiceArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentDetailsTDType_NotificationArray),'ShipmentDetailsTDType_NotificationArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ShipmentDetailsTDType_NotificationArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentDetailsDDType_ShipmentItemArray),'ShipmentDetailsDDType_ShipmentItemArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ShipmentDetailsDDType_ShipmentItemArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentDetailsDDType_ServiceArray),'ShipmentDetailsDDType_ServiceArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ShipmentDetailsDDType_ServiceArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ShipmentDetailsDDType_NotificationArray),'ShipmentDetailsDDType_NotificationArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ShipmentDetailsDDType_NotificationArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(DDServiceGroupDHLPaketType_ShipmentAdvisory_Type),'DDServiceGroupDHLPaketType_ShipmentAdvisory_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(DDServiceGroupDHLPaketType_ShipmentAdvisory_Type)].RegisterExternalPropertyName(sARRAY_ITEM,'AdvisoryData');
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ExportDocumentTDType_ExportDocPositionArray),'ExportDocumentTDType_ExportDocPositionArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ExportDocumentTDType_ExportDocPositionArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sEMPTY_NAME_SPACE,TypeInfo(ExportDocumentDDType_ExportDocPositionArray),'ExportDocumentDDType_ExportDocPositionArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ExportDocumentDDType_ExportDocPositionArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);

End.

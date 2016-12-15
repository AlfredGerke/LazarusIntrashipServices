{
This unit has been produced by ws_helper.
  Input unit name : "geschaeftskundenversand-api-2.2".
  This unit name  : "geschaeftskundenversand-api-2.2".
  Date            : "14.12.2016 12:51:16".
}
unit geschaeftskundenversand_api_2_2;
{$IFDEF FPC}
  {$mode objfpc} {$H+}
{$ENDIF}
{$DEFINE WST_RECORD_RTTI}
interface

uses SysUtils, Classes, TypInfo, base_service_intf, service_intf,
     geschaeftskundenversand_api_2_2_schema_cis_base;

const
  sNAME_SPACE = 'http://dhl.de/webservices/businesscustomershipping';
  sUNIT_NAME = 'geschaeftskundenversand_api_2_2';

type

  GetVersionResponse = class;
  CreateShipmentOrderRequest_ShipmentOrderArray = class;
  CreateShipmentOrderRequest = class;
  ValidateShipmentOrderRequest_ShipmentOrderArray = class;
  ValidateShipmentOrderRequest = class;
  CreateShipmentOrderResponse_CreationStateArray = class;
  CreateShipmentOrderResponse = class;
  ValidateShipmentResponse_ValidationStateArray = class;
  ValidateShipmentResponse = class;
  GetLabelRequest_shipmentNumberArray = class;
  GetLabelRequest = class;
  GetLabelResponse_LabelDataArray = class;
  GetLabelResponse = class;
  DoManifestRequest_shipmentNumberArray = class;
  DoManifestRequest = class;
  DoManifestResponse_ManifestStateArray = class;
  DoManifestResponse = class;
  DeleteShipmentOrderRequest_shipmentNumberArray = class;
  DeleteShipmentOrderRequest = class;
  DeleteShipmentOrderResponse_DeletionStateArray = class;
  DeleteShipmentOrderResponse = class;
  GetExportDocRequest_shipmentNumberArray = class;
  GetExportDocRequest = class;
  GetExportDocResponse_ExportDocDataArray = class;
  GetExportDocResponse = class;
  GetManifestRequest = class;
  GetManifestResponse = class;
  UpdateShipmentOrderRequest = class;
  UpdateShipmentOrderResponse = class;
  CreationState = class;
  ValidationState = class;
  Statusinformation_statusMessageArray = class;
  Statusinformation = class;
  PieceInformation = class;
  ShipmentOrderType_Shipment_Type = class;
  ShipmentOrderType = class;
  ValidateShipmentOrderType_Shipment_Type = class;
  ValidateShipmentOrderType = class;
  ShipperTypeType = class;
  ShipperType = class;
  ReceiverTypeType = class;
  ReceiverType = class;
  Ident = class;
  ShipmentDetailsType = class;
  ShipmentDetailsTypeType = class;
  ShipmentItemType = class;
  ShipmentItemTypeType = class;
  ShipmentService = class;
  Serviceconfiguration = class;
  ServiceconfigurationDetails = class;
  ServiceconfigurationType = class;
  ServiceconfigurationEndorsement = class;
  ServiceconfigurationISR = class;
  ServiceconfigurationDH = class;
  ServiceconfigurationVisualAgeCheck = class;
  ServiceconfigurationDeliveryTimeframe = class;
  ServiceconfigurationDateOfDelivery = class;
  ServiceconfigurationAdditionalInsurance = class;
  ServiceconfigurationCashOnDelivery = class;
  ServiceconfigurationShipmentHandling = class;
  ServiceconfigurationUnfree = class;
  ServiceconfigurationIC_Ident_Type = class;
  ServiceconfigurationIC = class;
  ShipmentNotificationType = class;
  ExportDocumentType_ExportDocPosition_Type = class;
  ExportDocumentType_ExportDocPositionArray = class;
  ExportDocumentType = class;
  FurtherAddressesType_DeliveryAdress_Type = class;
  FurtherAddressesType = class;
  LabelData = class;
  ExportDocData = class;
  ManifestState = class;
  DeletionState = class;
  BookPickupRequest = class;
  BookPickupResponse = class;
  PickupDetailsType = class;
  PickupAddressType = class;
  PickupOrdererType = class;
  PickupBookingInformationType = class;
  CancelPickupRequest = class;
  CancelPickupResponse = class;
  IdentityData_DrivingLicense_Type = class;
  IdentityData_IdentityCard_Type = class;
  IdentityData_BankCard_Type = class;
  IdentityData = class;
  PackstationType = class;
  PostfilialeType = class;
  ParcelShopType = class;
  ReadShipmentOrderResponse_CreationStateArray = class;
  ReadShipmentOrderResponse = class;
  Version_Type = class;

  GetLabelRequest_labelResponseType_Type = ( 
    B64
    ,URL
  );

  GetExportDocRequest_exportDocResponseType_Type = ( 
    GetExportDocRequest_exportDocResponseType_Type_URL
    ,GetExportDocRequest_exportDocResponseType_Type_B64
  );

  ShipmentOrderType_labelResponseType_Type = ( 
    ShipmentOrderType_labelResponseType_Type_URL
    ,ShipmentOrderType_labelResponseType_Type_B64
  );

  Serviceconfiguration_active_Type = ( 
    Serviceconfiguration_active_Type__0
    ,Serviceconfiguration_active_Type__1
  );

  ServiceconfigurationDetails_active_Type = ( 
    ServiceconfigurationDetails_active_Type__0
    ,ServiceconfigurationDetails_active_Type__1
  );

  ServiceconfigurationType_active_Type = ( 
    ServiceconfigurationType_active_Type__0
    ,ServiceconfigurationType_active_Type__1
  );

  ServiceconfigurationEndorsement_active_Type = ( 
    ServiceconfigurationEndorsement_active_Type__0
    ,ServiceconfigurationEndorsement_active_Type__1
  );

  ServiceconfigurationEndorsement_type_Type = ( 
    SOZU
    ,ZWZU
    ,IMMEDIATE
    ,AFTER_DEADLINE
    ,ABANDONMENT
  );

  ServiceconfigurationISR_active_Type = ( 
    ServiceconfigurationISR_active_Type__0
    ,ServiceconfigurationISR_active_Type__1
  );

  ServiceconfigurationDH_active_Type = ( 
    ServiceconfigurationDH_active_Type__0
    ,ServiceconfigurationDH_active_Type__1
  );

  ServiceconfigurationVisualAgeCheck_active_Type = ( 
    ServiceconfigurationVisualAgeCheck_active_Type__0
    ,ServiceconfigurationVisualAgeCheck_active_Type__1
  );

  ServiceconfigurationDeliveryTimeframe_active_Type = ( 
    ServiceconfigurationDeliveryTimeframe_active_Type__0
    ,ServiceconfigurationDeliveryTimeframe_active_Type__1
  );

  ServiceconfigurationDeliveryTimeframe_type_Type = ( 
    ServiceconfigurationDeliveryTimeframe_type_Type__10001200
    ,ServiceconfigurationDeliveryTimeframe_type_Type__12001400
    ,ServiceconfigurationDeliveryTimeframe_type_Type__14001600
    ,ServiceconfigurationDeliveryTimeframe_type_Type__16001800
    ,ServiceconfigurationDeliveryTimeframe_type_Type__18002000
    ,ServiceconfigurationDeliveryTimeframe_type_Type__19002100
  );

  ServiceconfigurationDateOfDelivery_active_Type = ( 
    ServiceconfigurationDateOfDelivery_active_Type__0
    ,ServiceconfigurationDateOfDelivery_active_Type__1
  );

  ServiceconfigurationAdditionalInsurance_active_Type = ( 
    ServiceconfigurationAdditionalInsurance_active_Type__0
    ,ServiceconfigurationAdditionalInsurance_active_Type__1
  );

  ServiceconfigurationCashOnDelivery_active_Type = ( 
    ServiceconfigurationCashOnDelivery_active_Type__0
    ,ServiceconfigurationCashOnDelivery_active_Type__1
  );

  ServiceconfigurationCashOnDelivery_addFee_Type = ( 
    ServiceconfigurationCashOnDelivery_addFee_Type__0
    ,ServiceconfigurationCashOnDelivery_addFee_Type__1
  );

  ServiceconfigurationShipmentHandling_active_Type = ( 
    ServiceconfigurationShipmentHandling_active_Type__0
    ,ServiceconfigurationShipmentHandling_active_Type__1
  );

  ServiceconfigurationUnfree_active_Type = ( 
    ServiceconfigurationUnfree_active_Type__0
    ,ServiceconfigurationUnfree_active_Type__1
  );

  ServiceconfigurationUnfree_PaymentType_Type = ( 
    ServiceconfigurationUnfree_PaymentType_Type__0
    ,ServiceconfigurationUnfree_PaymentType_Type__1
  );

  ServiceconfigurationIC_active_Type = ( 
    ServiceconfigurationIC_active_Type__0
    ,ServiceconfigurationIC_active_Type__1
  );

  ExportDocumentType_exportType_Type = ( 
    OTHER
    ,PRESENT
    ,COMMERCIAL_SAMPLE
    ,DOCUMENT
    ,RETURN_OF_GOODS
  );

  ExportDocumentType_termsOfTrade_Type = ( 
    DDP
    ,DXV
    ,DDU
    ,DDX
  );

  SequenceNumber = type UnicodeString;

  ShipmentDetailsType_customerReference_Type = type UnicodeString;

  ShipmentDetailsType_shipmentDate_Type = type UnicodeString;

  ShipmentDetailsType_returnShipmentAccountNumber_Type = type UnicodeString;

  ShipmentDetailsType_returnShipmentReference_Type = type UnicodeString;

  ShipmentItemType_weightInKG_Type = type Currency;

  ShipmentItemType_lengthInCM_Type = type integer;

  ShipmentItemType_widthInCM_Type = type integer;

  ShipmentItemType_heightInCM_Type = type integer;

  ServiceconfigurationDetails_details_Type = type UnicodeString;

  ServiceconfigurationType_Type_Type = type UnicodeString;

  ServiceconfigurationISR_details_Type = type UnicodeString;

  ServiceconfigurationDH_Days_Type = type UnicodeString;

  ServiceconfigurationVisualAgeCheck_type_Type = type UnicodeString;

  ServiceconfigurationDateOfDelivery_details_Type = type UnicodeString;

  ServiceconfigurationAdditionalInsurance_insuranceAmount_Type = type Currency;

  ServiceconfigurationCashOnDelivery_codAmount_Type = type Currency;

  ServiceconfigurationShipmentHandling_type_Type = type UnicodeString;

  ServiceconfigurationUnfree_CustomerNumber_Type = type UnicodeString;

  ServiceconfigurationIC_Ident_Type_surname_Type = type UnicodeString;

  ServiceconfigurationIC_Ident_Type_givenName_Type = type UnicodeString;

  ServiceconfigurationIC_Ident_Type_dateOfBirth_Type = type UnicodeString;

  ServiceconfigurationIC_Ident_Type_minimumAge_Type = type UnicodeString;

  ShipmentNotificationType_recipientEmailAddress_Type = type UnicodeString;

  ExportDocumentType_invoiceNumber_Type = type UnicodeString;

  ExportDocumentType_exportTypeDescription_Type = type UnicodeString;

  ExportDocumentType_placeOfCommital_Type = type UnicodeString;

  ExportDocumentType_additionalFee_Type = type Currency;

  ExportDocumentType_permitNumber_Type = type UnicodeString;

  ExportDocumentType_attestationNumber_Type = type UnicodeString;

  ExportDocumentType_ExportDocPosition_Type_description_Type = type UnicodeString;

  ExportDocumentType_ExportDocPosition_Type_countryCodeOrigin_Type = type UnicodeString;

  ExportDocumentType_ExportDocPosition_Type_customsTariffNumber_Type = type UnicodeString;

  ExportDocumentType_ExportDocPosition_Type_amount_Type = type integer;

  ExportDocumentType_ExportDocPosition_Type_netWeightInKG_Type = type Currency;

  ExportDocumentType_ExportDocPosition_Type_customsValue_Type = type Currency;

  PickupDetailsType_PickupDate_Type = type UnicodeString;

  PickupDetailsType_ReadyByTime_Type = type UnicodeString;

  PickupDetailsType_ClosingTime_Type = type UnicodeString;

  PickupBookingInformationType_Account_Type = type UnicodeString;

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

  GetVersionResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
  end;

  CreateShipmentOrderRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FShipmentOrder : CreateShipmentOrderRequest_ShipmentOrderArray;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property ShipmentOrder : CreateShipmentOrderRequest_ShipmentOrderArray read FShipmentOrder write FShipmentOrder;
  end;

  ValidateShipmentOrderRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FShipmentOrder : ValidateShipmentOrderRequest_ShipmentOrderArray;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property ShipmentOrder : ValidateShipmentOrderRequest_ShipmentOrderArray read FShipmentOrder write FShipmentOrder;
  end;

  CreateShipmentOrderResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FStatus : Statusinformation;
    FCreationState : CreateShipmentOrderResponse_CreationStateArray;
  private
    function wstHas_CreationState() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property Status : Statusinformation read FStatus write FStatus;
    property CreationState : CreateShipmentOrderResponse_CreationStateArray read FCreationState write FCreationState stored wstHas_CreationState;
  end;

  ValidateShipmentResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FStatus : Statusinformation;
    FValidationState : ValidateShipmentResponse_ValidationStateArray;
  private
    function wstHas_ValidationState() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property Status : Statusinformation read FStatus write FStatus;
    property ValidationState : ValidateShipmentResponse_ValidationStateArray read FValidationState write FValidationState stored wstHas_ValidationState;
  end;

  GetLabelRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FshipmentNumber : GetLabelRequest_shipmentNumberArray;
    FlabelResponseType : GetLabelRequest_labelResponseType_Type;
  private
    function wstHas_labelResponseType() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property shipmentNumber : GetLabelRequest_shipmentNumberArray read FshipmentNumber write FshipmentNumber;
    property labelResponseType : GetLabelRequest_labelResponseType_Type read FlabelResponseType write FlabelResponseType stored wstHas_labelResponseType;
  end;

  GetLabelResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FStatus : Statusinformation;
    FLabelData : GetLabelResponse_LabelDataArray;
  private
    function wstHas_LabelData() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property Status : Statusinformation read FStatus write FStatus;
    property LabelData : GetLabelResponse_LabelDataArray read FLabelData write FLabelData stored wstHas_LabelData;
  end;

  DoManifestRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FshipmentNumber : DoManifestRequest_shipmentNumberArray;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property shipmentNumber : DoManifestRequest_shipmentNumberArray read FshipmentNumber write FshipmentNumber;
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

  DeleteShipmentOrderRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FshipmentNumber : DeleteShipmentOrderRequest_shipmentNumberArray;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property shipmentNumber : DeleteShipmentOrderRequest_shipmentNumberArray read FshipmentNumber write FshipmentNumber;
  end;

  DeleteShipmentOrderResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FStatus : Statusinformation;
    FDeletionState : DeleteShipmentOrderResponse_DeletionStateArray;
  private
    function wstHas_DeletionState() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property Status : Statusinformation read FStatus write FStatus;
    property DeletionState : DeleteShipmentOrderResponse_DeletionStateArray read FDeletionState write FDeletionState stored wstHas_DeletionState;
  end;

  GetExportDocRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FshipmentNumber : GetExportDocRequest_shipmentNumberArray;
    FexportDocResponseType : GetExportDocRequest_exportDocResponseType_Type;
  private
    function wstHas_exportDocResponseType() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property shipmentNumber : GetExportDocRequest_shipmentNumberArray read FshipmentNumber write FshipmentNumber;
    property exportDocResponseType : GetExportDocRequest_exportDocResponseType_Type read FexportDocResponseType write FexportDocResponseType stored wstHas_exportDocResponseType;
  end;

  GetExportDocResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FStatus : Statusinformation;
    FExportDocData : GetExportDocResponse_ExportDocDataArray;
  private
    function wstHas_ExportDocData() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property Status : Statusinformation read FStatus write FStatus;
    property ExportDocData : GetExportDocResponse_ExportDocDataArray read FExportDocData write FExportDocData stored wstHas_ExportDocData;
  end;

  GetManifestRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FmanifestDate : UnicodeString;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property manifestDate : UnicodeString read FmanifestDate write FmanifestDate;
  end;

  GetManifestResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FStatus : Statusinformation;
    FmanifestData : TBase64StringRemotable;
  private
    function wstHas_manifestData() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property Status : Statusinformation read FStatus write FStatus;
    property manifestData : TBase64StringRemotable read FmanifestData write FmanifestData stored wstHas_manifestData;
  end;

  UpdateShipmentOrderRequest = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FshipmentNumber : shipmentNumber_Type;
    FShipmentOrder : ShipmentOrderType;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property shipmentNumber : shipmentNumber_Type read FshipmentNumber write FshipmentNumber;
    property ShipmentOrder : ShipmentOrderType read FShipmentOrder write FShipmentOrder;
  end;

  UpdateShipmentOrderResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    FStatus : Statusinformation;
    FLabelData : geschaeftskundenversand_api_2_2.LabelData;
  private
    function wstHas_LabelData() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property Status : Statusinformation read FStatus write FStatus;
    property LabelData : geschaeftskundenversand_api_2_2.LabelData read FLabelData write FLabelData stored wstHas_LabelData;
  end;

  CreationState = class(TBaseComplexRemotable)
  private
    FsequenceNumber : geschaeftskundenversand_api_2_2.SequenceNumber;
    FLabelData : geschaeftskundenversand_api_2_2.LabelData;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property sequenceNumber : geschaeftskundenversand_api_2_2.SequenceNumber read FsequenceNumber write FsequenceNumber;
    property LabelData : geschaeftskundenversand_api_2_2.LabelData read FLabelData write FLabelData;
  end;

  ValidationState = class(TBaseComplexRemotable)
  private
    FsequenceNumber : geschaeftskundenversand_api_2_2.SequenceNumber;
    FStatus : Statusinformation;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property sequenceNumber : geschaeftskundenversand_api_2_2.SequenceNumber read FsequenceNumber write FsequenceNumber;
    property Status : Statusinformation read FStatus write FStatus;
  end;

  Statusinformation = class(TBaseComplexRemotable)
  private
    FstatusCode : integer;
    FstatusText : UnicodeString;
    FstatusMessage : Statusinformation_statusMessageArray;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property statusCode : integer read FstatusCode write FstatusCode;
    property statusText : UnicodeString read FstatusText write FstatusText;
    property statusMessage : Statusinformation_statusMessageArray read FstatusMessage write FstatusMessage;
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

  ShipmentOrderType_Shipment_Type = class(TBaseComplexRemotable)
  private
    FShipmentDetails : ShipmentDetailsTypeType;
    FShipper : ShipperType;
    FReceiver : ReceiverType;
    FReturnReceiver : ShipperType;
    FExportDocument : ExportDocumentType;
  private
    function wstHas_ReturnReceiver() : Boolean;
    function wstHas_ExportDocument() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property ShipmentDetails : ShipmentDetailsTypeType read FShipmentDetails write FShipmentDetails;
    property Shipper : ShipperType read FShipper write FShipper;
    property Receiver : ReceiverType read FReceiver write FReceiver;
    property ReturnReceiver : ShipperType read FReturnReceiver write FReturnReceiver stored wstHas_ReturnReceiver;
    property ExportDocument : ExportDocumentType read FExportDocument write FExportDocument stored wstHas_ExportDocument;
  end;

  ShipmentOrderType = class(TBaseComplexRemotable)
  private
    FsequenceNumber : geschaeftskundenversand_api_2_2.SequenceNumber;
    FShipment : ShipmentOrderType_Shipment_Type;
    FPrintOnlyIfCodeable : Serviceconfiguration;
    FlabelResponseType : ShipmentOrderType_labelResponseType_Type;
  private
    function wstHas_PrintOnlyIfCodeable() : Boolean;
    function wstHas_labelResponseType() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property sequenceNumber : geschaeftskundenversand_api_2_2.SequenceNumber read FsequenceNumber write FsequenceNumber;
    property Shipment : ShipmentOrderType_Shipment_Type read FShipment write FShipment;
    property PrintOnlyIfCodeable : Serviceconfiguration read FPrintOnlyIfCodeable write FPrintOnlyIfCodeable stored wstHas_PrintOnlyIfCodeable;
    property labelResponseType : ShipmentOrderType_labelResponseType_Type read FlabelResponseType write FlabelResponseType stored wstHas_labelResponseType;
  end;

  ValidateShipmentOrderType_Shipment_Type = class(TBaseComplexRemotable)
  private
    FShipmentDetails : ShipmentDetailsTypeType;
    FShipper : ShipperType;
    FReceiver : ReceiverType;
    FReturnReceiver : ShipperType;
    FExportDocument : ExportDocumentType;
  private
    function wstHas_ReturnReceiver() : Boolean;
    function wstHas_ExportDocument() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property ShipmentDetails : ShipmentDetailsTypeType read FShipmentDetails write FShipmentDetails;
    property Shipper : ShipperType read FShipper write FShipper;
    property Receiver : ReceiverType read FReceiver write FReceiver;
    property ReturnReceiver : ShipperType read FReturnReceiver write FReturnReceiver stored wstHas_ReturnReceiver;
    property ExportDocument : ExportDocumentType read FExportDocument write FExportDocument stored wstHas_ExportDocument;
  end;

  ValidateShipmentOrderType = class(TBaseComplexRemotable)
  private
    FsequenceNumber : geschaeftskundenversand_api_2_2.SequenceNumber;
    FShipment : ValidateShipmentOrderType_Shipment_Type;
    FPrintOnlyIfCodeable : Serviceconfiguration;
  private
    function wstHas_PrintOnlyIfCodeable() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property sequenceNumber : geschaeftskundenversand_api_2_2.SequenceNumber read FsequenceNumber write FsequenceNumber;
    property Shipment : ValidateShipmentOrderType_Shipment_Type read FShipment write FShipment;
    property PrintOnlyIfCodeable : Serviceconfiguration read FPrintOnlyIfCodeable write FPrintOnlyIfCodeable stored wstHas_PrintOnlyIfCodeable;
  end;

  ShipperTypeType = class(TBaseComplexRemotable)
  private
    FName : NameType;
    FAddress : NativeAddressType;
    FCommunication : CommunicationType;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Name : NameType read FName write FName;
    property Address : NativeAddressType read FAddress write FAddress;
    property Communication : CommunicationType read FCommunication write FCommunication;
  end;

  ShipperType = class(ShipperTypeType)
  end;

  ReceiverTypeType = class(TBaseComplexRemotable)
  private
    Fname1 : name1_Type;
    FAddress : ReceiverNativeAddressType;
    FPackstation : PackStationType;
    FPostfiliale : PostfilialeType;
    FParcelShop : ParcelShopType;
    FCommunication : CommunicationType;
  private
    function wstHas_Address() : Boolean;
    function wstHas_Packstation() : Boolean;
    function wstHas_Postfiliale() : Boolean;
    function wstHas_ParcelShop() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property name1 : name1_Type read Fname1 write Fname1;
    property Address : ReceiverNativeAddressType read FAddress write FAddress stored wstHas_Address;
    property Packstation : PackStationType read FPackstation write FPackstation stored wstHas_Packstation;
    property Postfiliale : PostfilialeType read FPostfiliale write FPostfiliale stored wstHas_Postfiliale;
    property ParcelShop : ParcelShopType read FParcelShop write FParcelShop stored wstHas_ParcelShop;
    property Communication : CommunicationType read FCommunication write FCommunication;
  end;

  ReceiverType = class(ReceiverTypeType)
  end;

  Ident = class(TBaseComplexRemotable)
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
    Fproduct : UnicodeString;
    FaccountNumber : accountNumber_Type;
    FcustomerReference : ShipmentDetailsType_customerReference_Type;
    FshipmentDate : ShipmentDetailsType_shipmentDate_Type;
    FreturnShipmentAccountNumber : ShipmentDetailsType_returnShipmentAccountNumber_Type;
    FreturnShipmentReference : ShipmentDetailsType_returnShipmentReference_Type;
  private
    function wstHas_customerReference() : Boolean;
    function wstHas_returnShipmentAccountNumber() : Boolean;
    function wstHas_returnShipmentReference() : Boolean;
  published
    property product : UnicodeString read Fproduct write Fproduct;
    property accountNumber : accountNumber_Type read FaccountNumber write FaccountNumber;
    property customerReference : ShipmentDetailsType_customerReference_Type read FcustomerReference write FcustomerReference stored wstHas_customerReference;
    property shipmentDate : ShipmentDetailsType_shipmentDate_Type read FshipmentDate write FshipmentDate;
    property returnShipmentAccountNumber : ShipmentDetailsType_returnShipmentAccountNumber_Type read FreturnShipmentAccountNumber write FreturnShipmentAccountNumber stored wstHas_returnShipmentAccountNumber;
    property returnShipmentReference : ShipmentDetailsType_returnShipmentReference_Type read FreturnShipmentReference write FreturnShipmentReference stored wstHas_returnShipmentReference;
  end;

  ShipmentDetailsTypeType = class(ShipmentDetailsType)
  private
    FShipmentItem : ShipmentItemType;
    FService : ShipmentService;
    FNotification : ShipmentNotificationType;
    FBankData : BankType;
  private
    function wstHas_Service() : Boolean;
    function wstHas_Notification() : Boolean;
    function wstHas_BankData() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property ShipmentItem : ShipmentItemType read FShipmentItem write FShipmentItem;
    property Service : ShipmentService read FService write FService stored wstHas_Service;
    property Notification : ShipmentNotificationType read FNotification write FNotification stored wstHas_Notification;
    property BankData : BankType read FBankData write FBankData stored wstHas_BankData;
  end;

  ShipmentItemType = class(TBaseComplexRemotable)
  private
    FweightInKG : ShipmentItemType_weightInKG_Type;
    FlengthInCM : ShipmentItemType_lengthInCM_Type;
    FwidthInCM : ShipmentItemType_widthInCM_Type;
    FheightInCM : ShipmentItemType_heightInCM_Type;
  private
    function wstHas_lengthInCM() : Boolean;
    function wstHas_widthInCM() : Boolean;
    function wstHas_heightInCM() : Boolean;
  published
    property weightInKG : ShipmentItemType_weightInKG_Type read FweightInKG write FweightInKG;
    property lengthInCM : ShipmentItemType_lengthInCM_Type read FlengthInCM write FlengthInCM stored wstHas_lengthInCM;
    property widthInCM : ShipmentItemType_widthInCM_Type read FwidthInCM write FwidthInCM stored wstHas_widthInCM;
    property heightInCM : ShipmentItemType_heightInCM_Type read FheightInCM write FheightInCM stored wstHas_heightInCM;
  end;

  ShipmentItemTypeType = class(ShipmentItemType)
  end;

  ShipmentService = class(TBaseComplexRemotable)
  private
    FDayOfDelivery : ServiceconfigurationDateOfDelivery;
    FDeliveryTimeframe : ServiceconfigurationDeliveryTimeframe;
    FPreferredTime : ServiceconfigurationDeliveryTimeframe;
    FIndividualSenderRequirement : ServiceconfigurationISR;
    FPackagingReturn : Serviceconfiguration;
    FReturnImmediately : Serviceconfiguration;
    FNoticeOfNonDeliverability : Serviceconfiguration;
    FShipmentHandling : ServiceconfigurationShipmentHandling;
    FEndorsement : ServiceconfigurationEndorsement;
    FVisualCheckOfAge : ServiceconfigurationVisualAgeCheck;
    FPreferredLocation : ServiceconfigurationDetails;
    FPreferredNeighbour : ServiceconfigurationDetails;
    FPreferredDay : ServiceconfigurationDetails;
    FGoGreen : Serviceconfiguration;
    FPerishables : Serviceconfiguration;
    FPersonally : Serviceconfiguration;
    FNoNeighbourDelivery : Serviceconfiguration;
    FNamedPersonOnly : Serviceconfiguration;
    FReturnReceipt : Serviceconfiguration;
    FPremium : Serviceconfiguration;
    FCashOnDelivery : ServiceconfigurationCashOnDelivery;
    FAdditionalInsurance : ServiceconfigurationAdditionalInsurance;
    FBulkyGoods : Serviceconfiguration;
    FIdentCheck : ServiceconfigurationIC;
  private
    function wstHas_DayOfDelivery() : Boolean;
    function wstHas_DeliveryTimeframe() : Boolean;
    function wstHas_PreferredTime() : Boolean;
    function wstHas_IndividualSenderRequirement() : Boolean;
    function wstHas_PackagingReturn() : Boolean;
    function wstHas_ReturnImmediately() : Boolean;
    function wstHas_NoticeOfNonDeliverability() : Boolean;
    function wstHas_ShipmentHandling() : Boolean;
    function wstHas_Endorsement() : Boolean;
    function wstHas_VisualCheckOfAge() : Boolean;
    function wstHas_PreferredLocation() : Boolean;
    function wstHas_PreferredNeighbour() : Boolean;
    function wstHas_PreferredDay() : Boolean;
    function wstHas_GoGreen() : Boolean;
    function wstHas_Perishables() : Boolean;
    function wstHas_Personally() : Boolean;
    function wstHas_NoNeighbourDelivery() : Boolean;
    function wstHas_NamedPersonOnly() : Boolean;
    function wstHas_ReturnReceipt() : Boolean;
    function wstHas_Premium() : Boolean;
    function wstHas_CashOnDelivery() : Boolean;
    function wstHas_AdditionalInsurance() : Boolean;
    function wstHas_BulkyGoods() : Boolean;
    function wstHas_IdentCheck() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property DayOfDelivery : ServiceconfigurationDateOfDelivery read FDayOfDelivery write FDayOfDelivery stored wstHas_DayOfDelivery;
    property DeliveryTimeframe : ServiceconfigurationDeliveryTimeframe read FDeliveryTimeframe write FDeliveryTimeframe stored wstHas_DeliveryTimeframe;
    property PreferredTime : ServiceconfigurationDeliveryTimeframe read FPreferredTime write FPreferredTime stored wstHas_PreferredTime;
    property IndividualSenderRequirement : ServiceconfigurationISR read FIndividualSenderRequirement write FIndividualSenderRequirement stored wstHas_IndividualSenderRequirement;
    property PackagingReturn : Serviceconfiguration read FPackagingReturn write FPackagingReturn stored wstHas_PackagingReturn;
    property ReturnImmediately : Serviceconfiguration read FReturnImmediately write FReturnImmediately stored wstHas_ReturnImmediately;
    property NoticeOfNonDeliverability : Serviceconfiguration read FNoticeOfNonDeliverability write FNoticeOfNonDeliverability stored wstHas_NoticeOfNonDeliverability;
    property ShipmentHandling : ServiceconfigurationShipmentHandling read FShipmentHandling write FShipmentHandling stored wstHas_ShipmentHandling;
    property Endorsement : ServiceconfigurationEndorsement read FEndorsement write FEndorsement stored wstHas_Endorsement;
    property VisualCheckOfAge : ServiceconfigurationVisualAgeCheck read FVisualCheckOfAge write FVisualCheckOfAge stored wstHas_VisualCheckOfAge;
    property PreferredLocation : ServiceconfigurationDetails read FPreferredLocation write FPreferredLocation stored wstHas_PreferredLocation;
    property PreferredNeighbour : ServiceconfigurationDetails read FPreferredNeighbour write FPreferredNeighbour stored wstHas_PreferredNeighbour;
    property PreferredDay : ServiceconfigurationDetails read FPreferredDay write FPreferredDay stored wstHas_PreferredDay;
    property GoGreen : Serviceconfiguration read FGoGreen write FGoGreen stored wstHas_GoGreen;
    property Perishables : Serviceconfiguration read FPerishables write FPerishables stored wstHas_Perishables;
    property Personally : Serviceconfiguration read FPersonally write FPersonally stored wstHas_Personally;
    property NoNeighbourDelivery : Serviceconfiguration read FNoNeighbourDelivery write FNoNeighbourDelivery stored wstHas_NoNeighbourDelivery;
    property NamedPersonOnly : Serviceconfiguration read FNamedPersonOnly write FNamedPersonOnly stored wstHas_NamedPersonOnly;
    property ReturnReceipt : Serviceconfiguration read FReturnReceipt write FReturnReceipt stored wstHas_ReturnReceipt;
    property Premium : Serviceconfiguration read FPremium write FPremium stored wstHas_Premium;
    property CashOnDelivery : ServiceconfigurationCashOnDelivery read FCashOnDelivery write FCashOnDelivery stored wstHas_CashOnDelivery;
    property AdditionalInsurance : ServiceconfigurationAdditionalInsurance read FAdditionalInsurance write FAdditionalInsurance stored wstHas_AdditionalInsurance;
    property BulkyGoods : Serviceconfiguration read FBulkyGoods write FBulkyGoods stored wstHas_BulkyGoods;
    property IdentCheck : ServiceconfigurationIC read FIdentCheck write FIdentCheck stored wstHas_IdentCheck;
  end;

  Serviceconfiguration = class(TBaseComplexRemotable)
  private
    Factive : Serviceconfiguration_active_Type;
  published
    property active : Serviceconfiguration_active_Type read Factive write Factive;
  end;

  ServiceconfigurationDetails = class(TBaseComplexRemotable)
  private
    Factive : ServiceconfigurationDetails_active_Type;
    Fdetails : ServiceconfigurationDetails_details_Type;
  published
    property active : ServiceconfigurationDetails_active_Type read Factive write Factive;
    property details : ServiceconfigurationDetails_details_Type read Fdetails write Fdetails;
  end;

  ServiceconfigurationType = class(TBaseComplexRemotable)
  private
    Factive : ServiceconfigurationType_active_Type;
    F_Type : ServiceconfigurationType_Type_Type;
  published
    property active : ServiceconfigurationType_active_Type read Factive write Factive;
    property _Type : ServiceconfigurationType_Type_Type read F_Type write F_Type;
  end;

  ServiceconfigurationEndorsement = class(TBaseComplexRemotable)
  private
    Factive : ServiceconfigurationEndorsement_active_Type;
    F_type : ServiceconfigurationEndorsement_type_Type;
  published
    property active : ServiceconfigurationEndorsement_active_Type read Factive write Factive;
    property _type : ServiceconfigurationEndorsement_type_Type read F_type write F_type;
  end;

  ServiceconfigurationISR = class(TBaseComplexRemotable)
  private
    Factive : ServiceconfigurationISR_active_Type;
    Fdetails : ServiceconfigurationISR_details_Type;
  published
    property active : ServiceconfigurationISR_active_Type read Factive write Factive;
    property details : ServiceconfigurationISR_details_Type read Fdetails write Fdetails;
  end;

  ServiceconfigurationDH = class(TBaseComplexRemotable)
  private
    Factive : ServiceconfigurationDH_active_Type;
    FDays : ServiceconfigurationDH_Days_Type;
  published
    property active : ServiceconfigurationDH_active_Type read Factive write Factive;
    property Days : ServiceconfigurationDH_Days_Type read FDays write FDays;
  end;

  ServiceconfigurationVisualAgeCheck = class(TBaseComplexRemotable)
  private
    Factive : ServiceconfigurationVisualAgeCheck_active_Type;
    F_type : ServiceconfigurationVisualAgeCheck_type_Type;
  published
    property active : ServiceconfigurationVisualAgeCheck_active_Type read Factive write Factive;
    property _type : ServiceconfigurationVisualAgeCheck_type_Type read F_type write F_type;
  end;

  ServiceconfigurationDeliveryTimeframe = class(TBaseComplexRemotable)
  private
    Factive : ServiceconfigurationDeliveryTimeframe_active_Type;
    F_type : ServiceconfigurationDeliveryTimeframe_type_Type;
  published
    property active : ServiceconfigurationDeliveryTimeframe_active_Type read Factive write Factive;
    property _type : ServiceconfigurationDeliveryTimeframe_type_Type read F_type write F_type;
  end;

  ServiceconfigurationDateOfDelivery = class(TBaseComplexRemotable)
  private
    Factive : ServiceconfigurationDateOfDelivery_active_Type;
    Fdetails : ServiceconfigurationDateOfDelivery_details_Type;
  published
    property active : ServiceconfigurationDateOfDelivery_active_Type read Factive write Factive;
    property details : ServiceconfigurationDateOfDelivery_details_Type read Fdetails write Fdetails;
  end;

  ServiceconfigurationAdditionalInsurance = class(TBaseComplexRemotable)
  private
    Factive : ServiceconfigurationAdditionalInsurance_active_Type;
    FinsuranceAmount : ServiceconfigurationAdditionalInsurance_insuranceAmount_Type;
  published
    property active : ServiceconfigurationAdditionalInsurance_active_Type read Factive write Factive;
    property insuranceAmount : ServiceconfigurationAdditionalInsurance_insuranceAmount_Type read FinsuranceAmount write FinsuranceAmount;
  end;

  ServiceconfigurationCashOnDelivery = class(TBaseComplexRemotable)
  private
    Factive : ServiceconfigurationCashOnDelivery_active_Type;
    FaddFee : ServiceconfigurationCashOnDelivery_addFee_Type;
    FcodAmount : ServiceconfigurationCashOnDelivery_codAmount_Type;
  private
    function wstHas_addFee() : Boolean;
  published
    property active : ServiceconfigurationCashOnDelivery_active_Type read Factive write Factive;
    property addFee : ServiceconfigurationCashOnDelivery_addFee_Type read FaddFee write FaddFee stored wstHas_addFee;
    property codAmount : ServiceconfigurationCashOnDelivery_codAmount_Type read FcodAmount write FcodAmount;
  end;

  ServiceconfigurationShipmentHandling = class(TBaseComplexRemotable)
  private
    Factive : ServiceconfigurationShipmentHandling_active_Type;
    F_type : ServiceconfigurationShipmentHandling_type_Type;
  published
    property active : ServiceconfigurationShipmentHandling_active_Type read Factive write Factive;
    property _type : ServiceconfigurationShipmentHandling_type_Type read F_type write F_type;
  end;

  ServiceconfigurationUnfree = class(TBaseComplexRemotable)
  private
    Factive : ServiceconfigurationUnfree_active_Type;
    FPaymentType : ServiceconfigurationUnfree_PaymentType_Type;
    FCustomerNumber : ServiceconfigurationUnfree_CustomerNumber_Type;
  private
    function wstHas_CustomerNumber() : Boolean;
  published
    property active : ServiceconfigurationUnfree_active_Type read Factive write Factive;
    property PaymentType : ServiceconfigurationUnfree_PaymentType_Type read FPaymentType write FPaymentType;
    property CustomerNumber : ServiceconfigurationUnfree_CustomerNumber_Type read FCustomerNumber write FCustomerNumber stored wstHas_CustomerNumber;
  end;

  ServiceconfigurationIC_Ident_Type = class(TBaseComplexRemotable)
  private
    Fsurname : ServiceconfigurationIC_Ident_Type_surname_Type;
    FgivenName : ServiceconfigurationIC_Ident_Type_givenName_Type;
    FdateOfBirth : ServiceconfigurationIC_Ident_Type_dateOfBirth_Type;
    FminimumAge : ServiceconfigurationIC_Ident_Type_minimumAge_Type;
  published
    property surname : ServiceconfigurationIC_Ident_Type_surname_Type read Fsurname write Fsurname;
    property givenName : ServiceconfigurationIC_Ident_Type_givenName_Type read FgivenName write FgivenName;
    property dateOfBirth : ServiceconfigurationIC_Ident_Type_dateOfBirth_Type read FdateOfBirth write FdateOfBirth;
    property minimumAge : ServiceconfigurationIC_Ident_Type_minimumAge_Type read FminimumAge write FminimumAge;
  end;

  ServiceconfigurationIC = class(TBaseComplexRemotable)
  private
    FIdent : ServiceconfigurationIC_Ident_Type;
    Factive : ServiceconfigurationIC_active_Type;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Ident : ServiceconfigurationIC_Ident_Type read FIdent write FIdent;
    property active : ServiceconfigurationIC_active_Type read Factive write Factive;
  end;

  ShipmentNotificationType = class(TBaseComplexRemotable)
  private
    FrecipientEmailAddress : ShipmentNotificationType_recipientEmailAddress_Type;
  published
    property recipientEmailAddress : ShipmentNotificationType_recipientEmailAddress_Type read FrecipientEmailAddress write FrecipientEmailAddress;
  end;

  ExportDocumentType_ExportDocPosition_Type = class(TBaseComplexRemotable)
  private
    Fdescription : ExportDocumentType_ExportDocPosition_Type_description_Type;
    FcountryCodeOrigin : ExportDocumentType_ExportDocPosition_Type_countryCodeOrigin_Type;
    FcustomsTariffNumber : ExportDocumentType_ExportDocPosition_Type_customsTariffNumber_Type;
    Famount : ExportDocumentType_ExportDocPosition_Type_amount_Type;
    FnetWeightInKG : ExportDocumentType_ExportDocPosition_Type_netWeightInKG_Type;
    FcustomsValue : ExportDocumentType_ExportDocPosition_Type_customsValue_Type;
  published
    property description : ExportDocumentType_ExportDocPosition_Type_description_Type read Fdescription write Fdescription;
    property countryCodeOrigin : ExportDocumentType_ExportDocPosition_Type_countryCodeOrigin_Type read FcountryCodeOrigin write FcountryCodeOrigin;
    property customsTariffNumber : ExportDocumentType_ExportDocPosition_Type_customsTariffNumber_Type read FcustomsTariffNumber write FcustomsTariffNumber;
    property amount : ExportDocumentType_ExportDocPosition_Type_amount_Type read Famount write Famount;
    property netWeightInKG : ExportDocumentType_ExportDocPosition_Type_netWeightInKG_Type read FnetWeightInKG write FnetWeightInKG;
    property customsValue : ExportDocumentType_ExportDocPosition_Type_customsValue_Type read FcustomsValue write FcustomsValue;
  end;

  ExportDocumentType = class(TBaseComplexRemotable)
  private
    FinvoiceNumber : ExportDocumentType_invoiceNumber_Type;
    FexportType : ExportDocumentType_exportType_Type;
    FexportTypeDescription : ExportDocumentType_exportTypeDescription_Type;
    FtermsOfTrade : ExportDocumentType_termsOfTrade_Type;
    FplaceOfCommital : ExportDocumentType_placeOfCommital_Type;
    FadditionalFee : ExportDocumentType_additionalFee_Type;
    FpermitNumber : ExportDocumentType_permitNumber_Type;
    FattestationNumber : ExportDocumentType_attestationNumber_Type;
    FWithElectronicExportNtfctn : Serviceconfiguration;
    FExportDocPosition : ExportDocumentType_ExportDocPositionArray;
  private
    function wstHas_invoiceNumber() : Boolean;
    function wstHas_exportTypeDescription() : Boolean;
    function wstHas_termsOfTrade() : Boolean;
    function wstHas_permitNumber() : Boolean;
    function wstHas_attestationNumber() : Boolean;
    function wstHas_WithElectronicExportNtfctn() : Boolean;
    function wstHas_ExportDocPosition() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property invoiceNumber : ExportDocumentType_invoiceNumber_Type read FinvoiceNumber write FinvoiceNumber stored wstHas_invoiceNumber;
    property exportType : ExportDocumentType_exportType_Type read FexportType write FexportType;
    property exportTypeDescription : ExportDocumentType_exportTypeDescription_Type read FexportTypeDescription write FexportTypeDescription stored wstHas_exportTypeDescription;
    property termsOfTrade : ExportDocumentType_termsOfTrade_Type read FtermsOfTrade write FtermsOfTrade stored wstHas_termsOfTrade;
    property placeOfCommital : ExportDocumentType_placeOfCommital_Type read FplaceOfCommital write FplaceOfCommital;
    property additionalFee : ExportDocumentType_additionalFee_Type read FadditionalFee write FadditionalFee;
    property permitNumber : ExportDocumentType_permitNumber_Type read FpermitNumber write FpermitNumber stored wstHas_permitNumber;
    property attestationNumber : ExportDocumentType_attestationNumber_Type read FattestationNumber write FattestationNumber stored wstHas_attestationNumber;
    property WithElectronicExportNtfctn : Serviceconfiguration read FWithElectronicExportNtfctn write FWithElectronicExportNtfctn stored wstHas_WithElectronicExportNtfctn;
    property ExportDocPosition : ExportDocumentType_ExportDocPositionArray read FExportDocPosition write FExportDocPosition stored wstHas_ExportDocPosition;
  end;

  FurtherAddressesType_DeliveryAdress_Type = class(TBaseComplexRemotable)
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

  FurtherAddressesType = class(TBaseComplexRemotable)
  private
    FDeliveryAdress : FurtherAddressesType_DeliveryAdress_Type;
  private
    function wstHas_DeliveryAdress() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property DeliveryAdress : FurtherAddressesType_DeliveryAdress_Type read FDeliveryAdress write FDeliveryAdress stored wstHas_DeliveryAdress;
  end;

  LabelData = class(TBaseComplexRemotable)
  private
    FStatus : Statusinformation;
    FshipmentNumber : shipmentNumber_Type;
    FlabelUrl : UnicodeString;
    FlabelData : TBase64StringRemotable;
    FreturnLabelUrl : UnicodeString;
    FreturnLabelData : TBase64StringRemotable;
    FexportLabelUrl : UnicodeString;
    FexportLabelData : TBase64StringRemotable;
    FcodLabelUrl : UnicodeString;
    FcodLabelData : TBase64StringRemotable;
  private
    function wstHas_shipmentNumber() : Boolean;
    function wstHas_labelUrl() : Boolean;
    function wstHas_labelData() : Boolean;
    function wstHas_returnLabelUrl() : Boolean;
    function wstHas_returnLabelData() : Boolean;
    function wstHas_exportLabelUrl() : Boolean;
    function wstHas_exportLabelData() : Boolean;
    function wstHas_codLabelUrl() : Boolean;
    function wstHas_codLabelData() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Status : Statusinformation read FStatus write FStatus;
    property shipmentNumber : shipmentNumber_Type read FshipmentNumber write FshipmentNumber stored wstHas_shipmentNumber;
    property labelUrl : UnicodeString read FlabelUrl write FlabelUrl stored wstHas_labelUrl;
    property labelData : TBase64StringRemotable read FlabelData write FlabelData stored wstHas_labelData;
    property returnLabelUrl : UnicodeString read FreturnLabelUrl write FreturnLabelUrl stored wstHas_returnLabelUrl;
    property returnLabelData : TBase64StringRemotable read FreturnLabelData write FreturnLabelData stored wstHas_returnLabelData;
    property exportLabelUrl : UnicodeString read FexportLabelUrl write FexportLabelUrl stored wstHas_exportLabelUrl;
    property exportLabelData : TBase64StringRemotable read FexportLabelData write FexportLabelData stored wstHas_exportLabelData;
    property codLabelUrl : UnicodeString read FcodLabelUrl write FcodLabelUrl stored wstHas_codLabelUrl;
    property codLabelData : TBase64StringRemotable read FcodLabelData write FcodLabelData stored wstHas_codLabelData;
  end;

  ExportDocData = class(TBaseComplexRemotable)
  private
    FshipmentNumber : shipmentNumber_Type;
    FStatus : Statusinformation;
    FexportDocData : TBase64StringRemotable;
    FexportDocURL : UnicodeString;
  private
    function wstHas_exportDocData() : Boolean;
    function wstHas_exportDocURL() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property shipmentNumber : shipmentNumber_Type read FshipmentNumber write FshipmentNumber;
    property Status : Statusinformation read FStatus write FStatus;
    property exportDocData : TBase64StringRemotable read FexportDocData write FexportDocData stored wstHas_exportDocData;
    property exportDocURL : UnicodeString read FexportDocURL write FexportDocURL stored wstHas_exportDocURL;
  end;

  ManifestState = class(TBaseComplexRemotable)
  private
    FshipmentNumber : shipmentNumber_Type;
    FStatus : Statusinformation;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property shipmentNumber : shipmentNumber_Type read FshipmentNumber write FshipmentNumber;
    property Status : Statusinformation read FStatus write FStatus;
  end;

  DeletionState = class(TBaseComplexRemotable)
  private
    FshipmentNumber : shipmentNumber_Type;
    FStatus : Statusinformation;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property shipmentNumber : shipmentNumber_Type read FshipmentNumber write FshipmentNumber;
    property Status : Statusinformation read FStatus write FStatus;
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
    FAccount : PickupBookingInformationType_Account_Type;
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
    property Account : PickupBookingInformationType_Account_Type read FAccount write FAccount;
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

  ReadShipmentOrderResponse = class(TBaseComplexRemotable)
  private
    FVersion : Version_Type;
    Fstatus : Statusinformation;
    FCreationState : ReadShipmentOrderResponse_CreationStateArray;
  private
    function wstHas_CreationState() : Boolean;
  public
    constructor Create();override;
    procedure FreeObjectProperties();override;
  published
    property Version : Version_Type read FVersion write FVersion;
    property status : Statusinformation read Fstatus write Fstatus;
    property CreationState : ReadShipmentOrderResponse_CreationStateArray read FCreationState write FCreationState stored wstHas_CreationState;
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

  CreateShipmentOrderRequest_ShipmentOrderArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ShipmentOrderType;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ShipmentOrderType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ShipmentOrderType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ShipmentOrderType Read GetItem;Default;
  end;

  ValidateShipmentOrderRequest_ShipmentOrderArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ValidateShipmentOrderType;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ValidateShipmentOrderType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ValidateShipmentOrderType; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ValidateShipmentOrderType Read GetItem;Default;
  end;

  CreateShipmentOrderResponse_CreationStateArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): CreationState;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): CreationState; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : CreationState; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : CreationState Read GetItem;Default;
  end;

  ValidateShipmentResponse_ValidationStateArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ValidationState;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ValidationState; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ValidationState; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ValidationState Read GetItem;Default;
  end;

  GetLabelRequest_shipmentNumberArray = class(TBaseSimpleTypeArrayRemotable)
  private
    FData : array of shipmentNumber_Type;
  private
    function GetItem(AIndex: Integer): shipmentNumber_Type;
    procedure SetItem(AIndex: Integer; const AValue: shipmentNumber_Type);
  protected
    function GetLength():Integer;override;
    procedure SaveItem(AStore : IFormatterBase;const AName : String;const AIndex : Integer);override;
    procedure LoadItem(AStore : IFormatterBase;const AIndex : Integer);override;
  public
    class function GetItemTypeInfo():PTypeInfo;override;
    procedure SetLength(const ANewSize : Integer);override;
    procedure Assign(Source: TPersistent); override;
    property Item[AIndex:Integer] : shipmentNumber_Type read GetItem write SetItem; default;
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

  DoManifestRequest_shipmentNumberArray = class(TBaseSimpleTypeArrayRemotable)
  private
    FData : array of shipmentNumber_Type;
  private
    function GetItem(AIndex: Integer): shipmentNumber_Type;
    procedure SetItem(AIndex: Integer; const AValue: shipmentNumber_Type);
  protected
    function GetLength():Integer;override;
    procedure SaveItem(AStore : IFormatterBase;const AName : String;const AIndex : Integer);override;
    procedure LoadItem(AStore : IFormatterBase;const AIndex : Integer);override;
  public
    class function GetItemTypeInfo():PTypeInfo;override;
    procedure SetLength(const ANewSize : Integer);override;
    procedure Assign(Source: TPersistent); override;
    property Item[AIndex:Integer] : shipmentNumber_Type read GetItem write SetItem; default;
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

  DeleteShipmentOrderRequest_shipmentNumberArray = class(TBaseSimpleTypeArrayRemotable)
  private
    FData : array of shipmentNumber_Type;
  private
    function GetItem(AIndex: Integer): shipmentNumber_Type;
    procedure SetItem(AIndex: Integer; const AValue: shipmentNumber_Type);
  protected
    function GetLength():Integer;override;
    procedure SaveItem(AStore : IFormatterBase;const AName : String;const AIndex : Integer);override;
    procedure LoadItem(AStore : IFormatterBase;const AIndex : Integer);override;
  public
    class function GetItemTypeInfo():PTypeInfo;override;
    procedure SetLength(const ANewSize : Integer);override;
    procedure Assign(Source: TPersistent); override;
    property Item[AIndex:Integer] : shipmentNumber_Type read GetItem write SetItem; default;
  end;

  DeleteShipmentOrderResponse_DeletionStateArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): DeletionState;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): DeletionState; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : DeletionState; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : DeletionState Read GetItem;Default;
  end;

  GetExportDocRequest_shipmentNumberArray = class(TBaseSimpleTypeArrayRemotable)
  private
    FData : array of shipmentNumber_Type;
  private
    function GetItem(AIndex: Integer): shipmentNumber_Type;
    procedure SetItem(AIndex: Integer; const AValue: shipmentNumber_Type);
  protected
    function GetLength():Integer;override;
    procedure SaveItem(AStore : IFormatterBase;const AName : String;const AIndex : Integer);override;
    procedure LoadItem(AStore : IFormatterBase;const AIndex : Integer);override;
  public
    class function GetItemTypeInfo():PTypeInfo;override;
    procedure SetLength(const ANewSize : Integer);override;
    procedure Assign(Source: TPersistent); override;
    property Item[AIndex:Integer] : shipmentNumber_Type read GetItem write SetItem; default;
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

  Statusinformation_statusMessageArray = class(TBaseSimpleTypeArrayRemotable)
  private
    FData : array of UnicodeString;
  private
    function GetItem(AIndex: Integer): UnicodeString;
    procedure SetItem(AIndex: Integer; const AValue: UnicodeString);
  protected
    function GetLength():Integer;override;
    procedure SaveItem(AStore : IFormatterBase;const AName : String;const AIndex : Integer);override;
    procedure LoadItem(AStore : IFormatterBase;const AIndex : Integer);override;
  public
    class function GetItemTypeInfo():PTypeInfo;override;
    procedure SetLength(const ANewSize : Integer);override;
    procedure Assign(Source: TPersistent); override;
    property Item[AIndex:Integer] : UnicodeString read GetItem write SetItem; default;
  end;

  ExportDocumentType_ExportDocPositionArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): ExportDocumentType_ExportDocPosition_Type;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): ExportDocumentType_ExportDocPosition_Type; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : ExportDocumentType_ExportDocPosition_Type; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : ExportDocumentType_ExportDocPosition_Type Read GetItem;Default;
  end;

  ReadShipmentOrderResponse_CreationStateArray = class(TObjectCollectionRemotable)
  private
    function GetItem(AIndex: Integer): CreationState;
  public
    class function GetItemClass():TBaseRemotableClass;override;
    function Add(): CreationState; {$IFDEF USE_INLINE}inline;{$ENDIF}
    function AddAt(const APosition : Integer) : CreationState; {$IFDEF USE_INLINE}inline;{$ENDIF}
    property Item[AIndex:Integer] : CreationState Read GetItem;Default;
  end;

  GKVAPIServicePortType = interface(IInvokable)
    ['{F11FFD6E-7996-422E-B844-F3BA05FA8B00}']
    function createShipmentOrder(
      const  CreateShipmentOrderRequestParam : CreateShipmentOrderRequest
    ):CreateShipmentOrderResponse;
    function validateShipment(
      const  ValidateShipmentOrderRequestParam : ValidateShipmentOrderRequest
    ):ValidateShipmentResponse;
    function deleteShipmentOrder(
      const  DeleteShipmentOrderRequestParam : DeleteShipmentOrderRequest
    ):DeleteShipmentOrderResponse;
    function doManifest(
      const  DoManifestRequestParam : DoManifestRequest
    ):DoManifestResponse;
    function getLabel(
      const  GetLabelRequestParam : GetLabelRequest
    ):GetLabelResponse;
    function getVersion(
      const  VersionParam : Version_Type
    ):GetVersionResponse;
    function getExportDoc(
      const  GetExportDocRequestParam : GetExportDocRequest
    ):GetExportDocResponse;
    function getManifest(
      const  GetManifestRequestParam : GetManifestRequest
    ):GetManifestResponse;
    function updateShipmentOrder(
      const  UpdateShipmentOrderRequestParam : UpdateShipmentOrderRequest
    ):UpdateShipmentOrderResponse;
  end;

  procedure Register_geschaeftskundenversand_api_2_2_ServiceMetadata();

Implementation
uses metadata_repository, record_rtti, wst_types;

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

{ CreateShipmentOrderRequest }

constructor CreateShipmentOrderRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FShipmentOrder := CreateShipmentOrderRequest_ShipmentOrderArray.Create();
end;

procedure CreateShipmentOrderRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FShipmentOrder) then
    FreeAndNil(FShipmentOrder);
  inherited FreeObjectProperties();
end;

{ ValidateShipmentOrderRequest }

constructor ValidateShipmentOrderRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FShipmentOrder := ValidateShipmentOrderRequest_ShipmentOrderArray.Create();
end;

procedure ValidateShipmentOrderRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FShipmentOrder) then
    FreeAndNil(FShipmentOrder);
  inherited FreeObjectProperties();
end;

{ CreateShipmentOrderResponse }

constructor CreateShipmentOrderResponse.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FStatus := Statusinformation.Create();
  FCreationState := CreateShipmentOrderResponse_CreationStateArray.Create();
end;

procedure CreateShipmentOrderResponse.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  if Assigned(FCreationState) then
    FreeAndNil(FCreationState);
  inherited FreeObjectProperties();
end;

function CreateShipmentOrderResponse.wstHas_CreationState() : Boolean;
begin
  Result := ( FCreationState <> CreateShipmentOrderResponse_CreationStateArray(0) );
end;

{ ValidateShipmentResponse }

constructor ValidateShipmentResponse.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FStatus := Statusinformation.Create();
  FValidationState := ValidateShipmentResponse_ValidationStateArray.Create();
end;

procedure ValidateShipmentResponse.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  if Assigned(FValidationState) then
    FreeAndNil(FValidationState);
  inherited FreeObjectProperties();
end;

function ValidateShipmentResponse.wstHas_ValidationState() : Boolean;
begin
  Result := ( FValidationState <> ValidateShipmentResponse_ValidationStateArray(0) );
end;

{ GetLabelRequest }

constructor GetLabelRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FshipmentNumber := GetLabelRequest_shipmentNumberArray.Create();
end;

procedure GetLabelRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FshipmentNumber) then
    FreeAndNil(FshipmentNumber);
  inherited FreeObjectProperties();
end;

function GetLabelRequest.wstHas_labelResponseType() : Boolean;
begin
  Result := True;
end;

{ GetLabelResponse }

constructor GetLabelResponse.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FStatus := Statusinformation.Create();
  FLabelData := GetLabelResponse_LabelDataArray.Create();
end;

procedure GetLabelResponse.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  if Assigned(FLabelData) then
    FreeAndNil(FLabelData);
  inherited FreeObjectProperties();
end;

function GetLabelResponse.wstHas_LabelData() : Boolean;
begin
  Result := ( FLabelData <> GetLabelResponse_LabelDataArray(0) );
end;

{ DoManifestRequest }

constructor DoManifestRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FshipmentNumber := DoManifestRequest_shipmentNumberArray.Create();
end;

procedure DoManifestRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FshipmentNumber) then
    FreeAndNil(FshipmentNumber);
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

{ DeleteShipmentOrderRequest }

constructor DeleteShipmentOrderRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FshipmentNumber := DeleteShipmentOrderRequest_shipmentNumberArray.Create();
end;

procedure DeleteShipmentOrderRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FshipmentNumber) then
    FreeAndNil(FshipmentNumber);
  inherited FreeObjectProperties();
end;

{ DeleteShipmentOrderResponse }

constructor DeleteShipmentOrderResponse.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FStatus := Statusinformation.Create();
  FDeletionState := DeleteShipmentOrderResponse_DeletionStateArray.Create();
end;

procedure DeleteShipmentOrderResponse.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  if Assigned(FDeletionState) then
    FreeAndNil(FDeletionState);
  inherited FreeObjectProperties();
end;

function DeleteShipmentOrderResponse.wstHas_DeletionState() : Boolean;
begin
  Result := ( FDeletionState <> DeleteShipmentOrderResponse_DeletionStateArray(0) );
end;

{ GetExportDocRequest }

constructor GetExportDocRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FshipmentNumber := GetExportDocRequest_shipmentNumberArray.Create();
end;

procedure GetExportDocRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FshipmentNumber) then
    FreeAndNil(FshipmentNumber);
  inherited FreeObjectProperties();
end;

function GetExportDocRequest.wstHas_exportDocResponseType() : Boolean;
begin
  Result := True;
end;

{ GetExportDocResponse }

constructor GetExportDocResponse.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FStatus := Statusinformation.Create();
  FExportDocData := GetExportDocResponse_ExportDocDataArray.Create();
end;

procedure GetExportDocResponse.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  if Assigned(FExportDocData) then
    FreeAndNil(FExportDocData);
  inherited FreeObjectProperties();
end;

function GetExportDocResponse.wstHas_ExportDocData() : Boolean;
begin
  Result := ( FExportDocData <> GetExportDocResponse_ExportDocDataArray(0) );
end;

{ GetManifestRequest }

constructor GetManifestRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
end;

procedure GetManifestRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  inherited FreeObjectProperties();
end;

{ GetManifestResponse }

constructor GetManifestResponse.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FStatus := Statusinformation.Create();
  FmanifestData := TBase64StringRemotable.Create();
end;

procedure GetManifestResponse.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  if Assigned(FmanifestData) then
    FreeAndNil(FmanifestData);
  inherited FreeObjectProperties();
end;

function GetManifestResponse.wstHas_manifestData() : Boolean;
begin
  Result := ( FmanifestData <> nil );
end;

{ UpdateShipmentOrderRequest }

constructor UpdateShipmentOrderRequest.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FShipmentOrder := ShipmentOrderType.Create();
end;

procedure UpdateShipmentOrderRequest.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FShipmentOrder) then
    FreeAndNil(FShipmentOrder);
  inherited FreeObjectProperties();
end;

{ UpdateShipmentOrderResponse }

constructor UpdateShipmentOrderResponse.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  FStatus := Statusinformation.Create();
  FLabelData := geschaeftskundenversand_api_2_2.LabelData.Create();
end;

procedure UpdateShipmentOrderResponse.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  if Assigned(FLabelData) then
    FreeAndNil(FLabelData);
  inherited FreeObjectProperties();
end;

function UpdateShipmentOrderResponse.wstHas_LabelData() : Boolean;
begin
  Result := ( FLabelData <> nil );
end;

{ CreationState }

constructor CreationState.Create();
begin
  inherited Create();
  FLabelData := geschaeftskundenversand_api_2_2.LabelData.Create();
end;

procedure CreationState.FreeObjectProperties();
begin
  if Assigned(FLabelData) then
    FreeAndNil(FLabelData);
  inherited FreeObjectProperties();
end;

{ ValidationState }

constructor ValidationState.Create();
begin
  inherited Create();
  FStatus := Statusinformation.Create();
end;

procedure ValidationState.FreeObjectProperties();
begin
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  inherited FreeObjectProperties();
end;

{ Statusinformation }

constructor Statusinformation.Create();
begin
  inherited Create();
  FstatusMessage := Statusinformation_statusMessageArray.Create();
end;

procedure Statusinformation.FreeObjectProperties();
begin
  if Assigned(FstatusMessage) then
    FreeAndNil(FstatusMessage);
  inherited FreeObjectProperties();
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

{ ShipmentOrderType_Shipment_Type }

constructor ShipmentOrderType_Shipment_Type.Create();
begin
  inherited Create();
  FShipmentDetails := ShipmentDetailsTypeType.Create();
  FShipper := ShipperType.Create();
  FReceiver := ReceiverType.Create();
  FReturnReceiver := ShipperType.Create();
  FExportDocument := ExportDocumentType.Create();
end;

procedure ShipmentOrderType_Shipment_Type.FreeObjectProperties();
begin
  if Assigned(FShipmentDetails) then
    FreeAndNil(FShipmentDetails);
  if Assigned(FShipper) then
    FreeAndNil(FShipper);
  if Assigned(FReceiver) then
    FreeAndNil(FReceiver);
  if Assigned(FReturnReceiver) then
    FreeAndNil(FReturnReceiver);
  if Assigned(FExportDocument) then
    FreeAndNil(FExportDocument);
  inherited FreeObjectProperties();
end;

function ShipmentOrderType_Shipment_Type.wstHas_ReturnReceiver() : Boolean;
begin
  Result := ( FReturnReceiver <> nil );
end;

function ShipmentOrderType_Shipment_Type.wstHas_ExportDocument() : Boolean;
begin
  Result := ( FExportDocument <> nil );
end;

{ ShipmentOrderType }

constructor ShipmentOrderType.Create();
begin
  inherited Create();
  FShipment := ShipmentOrderType_Shipment_Type.Create();
  FPrintOnlyIfCodeable := Serviceconfiguration.Create();
end;

procedure ShipmentOrderType.FreeObjectProperties();
begin
  if Assigned(FShipment) then
    FreeAndNil(FShipment);
  if Assigned(FPrintOnlyIfCodeable) then
    FreeAndNil(FPrintOnlyIfCodeable);
  inherited FreeObjectProperties();
end;

function ShipmentOrderType.wstHas_PrintOnlyIfCodeable() : Boolean;
begin
  Result := ( FPrintOnlyIfCodeable <> nil );
end;

function ShipmentOrderType.wstHas_labelResponseType() : Boolean;
begin
  Result := True;
end;

{ ValidateShipmentOrderType_Shipment_Type }

constructor ValidateShipmentOrderType_Shipment_Type.Create();
begin
  inherited Create();
  FShipmentDetails := ShipmentDetailsTypeType.Create();
  FShipper := ShipperType.Create();
  FReceiver := ReceiverType.Create();
  FReturnReceiver := ShipperType.Create();
  FExportDocument := ExportDocumentType.Create();
end;

procedure ValidateShipmentOrderType_Shipment_Type.FreeObjectProperties();
begin
  if Assigned(FShipmentDetails) then
    FreeAndNil(FShipmentDetails);
  if Assigned(FShipper) then
    FreeAndNil(FShipper);
  if Assigned(FReceiver) then
    FreeAndNil(FReceiver);
  if Assigned(FReturnReceiver) then
    FreeAndNil(FReturnReceiver);
  if Assigned(FExportDocument) then
    FreeAndNil(FExportDocument);
  inherited FreeObjectProperties();
end;

function ValidateShipmentOrderType_Shipment_Type.wstHas_ReturnReceiver() : Boolean;
begin
  Result := ( FReturnReceiver <> nil );
end;

function ValidateShipmentOrderType_Shipment_Type.wstHas_ExportDocument() : Boolean;
begin
  Result := ( FExportDocument <> nil );
end;

{ ValidateShipmentOrderType }

constructor ValidateShipmentOrderType.Create();
begin
  inherited Create();
  FShipment := ValidateShipmentOrderType_Shipment_Type.Create();
  FPrintOnlyIfCodeable := Serviceconfiguration.Create();
end;

procedure ValidateShipmentOrderType.FreeObjectProperties();
begin
  if Assigned(FShipment) then
    FreeAndNil(FShipment);
  if Assigned(FPrintOnlyIfCodeable) then
    FreeAndNil(FPrintOnlyIfCodeable);
  inherited FreeObjectProperties();
end;

function ValidateShipmentOrderType.wstHas_PrintOnlyIfCodeable() : Boolean;
begin
  Result := ( FPrintOnlyIfCodeable <> nil );
end;

{ ShipperTypeType }

constructor ShipperTypeType.Create();
begin
  inherited Create();
  FName := NameType.Create();
  FAddress := NativeAddressType.Create();
  FCommunication := CommunicationType.Create();
end;

procedure ShipperTypeType.FreeObjectProperties();
begin
  if Assigned(FName) then
    FreeAndNil(FName);
  if Assigned(FAddress) then
    FreeAndNil(FAddress);
  if Assigned(FCommunication) then
    FreeAndNil(FCommunication);
  inherited FreeObjectProperties();
end;

{ ReceiverTypeType }

constructor ReceiverTypeType.Create();
begin
  inherited Create();
  FCommunication := CommunicationType.Create();
end;

procedure ReceiverTypeType.FreeObjectProperties();
begin
  if Assigned(FAddress) then
    FreeAndNil(FAddress);
  if Assigned(FPackstation) then
    FreeAndNil(FPackstation);
  if Assigned(FPostfiliale) then
    FreeAndNil(FPostfiliale);
  if Assigned(FParcelShop) then
    FreeAndNil(FParcelShop);
  if Assigned(FCommunication) then
    FreeAndNil(FCommunication);
  inherited FreeObjectProperties();
end;

function ReceiverTypeType.wstHas_Address() : Boolean;
begin
  Result := ( FAddress <> nil );
end;

function ReceiverTypeType.wstHas_Packstation() : Boolean;
begin
  Result := ( FPackstation <> nil );
end;

function ReceiverTypeType.wstHas_Postfiliale() : Boolean;
begin
  Result := ( FPostfiliale <> nil );
end;

function ReceiverTypeType.wstHas_ParcelShop() : Boolean;
begin
  Result := ( FParcelShop <> nil );
end;

function ShipmentDetailsType.wstHas_customerReference() : Boolean;
begin
  Result := ( FcustomerReference <> '' );
end;

function ShipmentDetailsType.wstHas_returnShipmentAccountNumber() : Boolean;
begin
  Result := ( FreturnShipmentAccountNumber <> '' );
end;

function ShipmentDetailsType.wstHas_returnShipmentReference() : Boolean;
begin
  Result := ( FreturnShipmentReference <> '' );
end;

{ ShipmentDetailsTypeType }

constructor ShipmentDetailsTypeType.Create();
begin
  inherited Create();
  FShipmentItem := ShipmentItemType.Create();
  FService := ShipmentService.Create();
  FNotification := ShipmentNotificationType.Create();
  FBankData := BankType.Create();
end;

procedure ShipmentDetailsTypeType.FreeObjectProperties();
begin
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

function ShipmentDetailsTypeType.wstHas_Service() : Boolean;
begin
  Result := ( FService <> nil );
end;

function ShipmentDetailsTypeType.wstHas_Notification() : Boolean;
begin
  Result := ( FNotification <> nil );
end;

function ShipmentDetailsTypeType.wstHas_BankData() : Boolean;
begin
  Result := ( FBankData <> nil );
end;

function ShipmentItemType.wstHas_lengthInCM() : Boolean;
begin
  Result := ( FlengthInCM <> ShipmentItemType_lengthInCM_Type(0) );
end;

function ShipmentItemType.wstHas_widthInCM() : Boolean;
begin
  Result := ( FwidthInCM <> ShipmentItemType_widthInCM_Type(0) );
end;

function ShipmentItemType.wstHas_heightInCM() : Boolean;
begin
  Result := ( FheightInCM <> ShipmentItemType_heightInCM_Type(0) );
end;

{ ShipmentService }

constructor ShipmentService.Create();
begin
  inherited Create();
  FDayOfDelivery := ServiceconfigurationDateOfDelivery.Create();
  FDeliveryTimeframe := ServiceconfigurationDeliveryTimeframe.Create();
  FPreferredTime := ServiceconfigurationDeliveryTimeframe.Create();
  FIndividualSenderRequirement := ServiceconfigurationISR.Create();
  FPackagingReturn := Serviceconfiguration.Create();
  FReturnImmediately := Serviceconfiguration.Create();
  FNoticeOfNonDeliverability := Serviceconfiguration.Create();
  FShipmentHandling := ServiceconfigurationShipmentHandling.Create();
  FEndorsement := ServiceconfigurationEndorsement.Create();
  FVisualCheckOfAge := ServiceconfigurationVisualAgeCheck.Create();
  FPreferredLocation := ServiceconfigurationDetails.Create();
  FPreferredNeighbour := ServiceconfigurationDetails.Create();
  FPreferredDay := ServiceconfigurationDetails.Create();
  FGoGreen := Serviceconfiguration.Create();
  FPerishables := Serviceconfiguration.Create();
  FPersonally := Serviceconfiguration.Create();
  FNoNeighbourDelivery := Serviceconfiguration.Create();
  FNamedPersonOnly := Serviceconfiguration.Create();
  FReturnReceipt := Serviceconfiguration.Create();
  FPremium := Serviceconfiguration.Create();
  FCashOnDelivery := ServiceconfigurationCashOnDelivery.Create();
  FAdditionalInsurance := ServiceconfigurationAdditionalInsurance.Create();
  FBulkyGoods := Serviceconfiguration.Create();
  FIdentCheck := ServiceconfigurationIC.Create();
end;

procedure ShipmentService.FreeObjectProperties();
begin
  if Assigned(FDayOfDelivery) then
    FreeAndNil(FDayOfDelivery);
  if Assigned(FDeliveryTimeframe) then
    FreeAndNil(FDeliveryTimeframe);
  if Assigned(FPreferredTime) then
    FreeAndNil(FPreferredTime);
  if Assigned(FIndividualSenderRequirement) then
    FreeAndNil(FIndividualSenderRequirement);
  if Assigned(FPackagingReturn) then
    FreeAndNil(FPackagingReturn);
  if Assigned(FReturnImmediately) then
    FreeAndNil(FReturnImmediately);
  if Assigned(FNoticeOfNonDeliverability) then
    FreeAndNil(FNoticeOfNonDeliverability);
  if Assigned(FShipmentHandling) then
    FreeAndNil(FShipmentHandling);
  if Assigned(FEndorsement) then
    FreeAndNil(FEndorsement);
  if Assigned(FVisualCheckOfAge) then
    FreeAndNil(FVisualCheckOfAge);
  if Assigned(FPreferredLocation) then
    FreeAndNil(FPreferredLocation);
  if Assigned(FPreferredNeighbour) then
    FreeAndNil(FPreferredNeighbour);
  if Assigned(FPreferredDay) then
    FreeAndNil(FPreferredDay);
  if Assigned(FGoGreen) then
    FreeAndNil(FGoGreen);
  if Assigned(FPerishables) then
    FreeAndNil(FPerishables);
  if Assigned(FPersonally) then
    FreeAndNil(FPersonally);
  if Assigned(FNoNeighbourDelivery) then
    FreeAndNil(FNoNeighbourDelivery);
  if Assigned(FNamedPersonOnly) then
    FreeAndNil(FNamedPersonOnly);
  if Assigned(FReturnReceipt) then
    FreeAndNil(FReturnReceipt);
  if Assigned(FPremium) then
    FreeAndNil(FPremium);
  if Assigned(FCashOnDelivery) then
    FreeAndNil(FCashOnDelivery);
  if Assigned(FAdditionalInsurance) then
    FreeAndNil(FAdditionalInsurance);
  if Assigned(FBulkyGoods) then
    FreeAndNil(FBulkyGoods);
  if Assigned(FIdentCheck) then
    FreeAndNil(FIdentCheck);
  inherited FreeObjectProperties();
end;

function ShipmentService.wstHas_DayOfDelivery() : Boolean;
begin
  Result := ( FDayOfDelivery <> nil );
end;

function ShipmentService.wstHas_DeliveryTimeframe() : Boolean;
begin
  Result := ( FDeliveryTimeframe <> nil );
end;

function ShipmentService.wstHas_PreferredTime() : Boolean;
begin
  Result := ( FPreferredTime <> nil );
end;

function ShipmentService.wstHas_IndividualSenderRequirement() : Boolean;
begin
  Result := ( FIndividualSenderRequirement <> nil );
end;

function ShipmentService.wstHas_PackagingReturn() : Boolean;
begin
  Result := ( FPackagingReturn <> nil );
end;

function ShipmentService.wstHas_ReturnImmediately() : Boolean;
begin
  Result := ( FReturnImmediately <> nil );
end;

function ShipmentService.wstHas_NoticeOfNonDeliverability() : Boolean;
begin
  Result := ( FNoticeOfNonDeliverability <> nil );
end;

function ShipmentService.wstHas_ShipmentHandling() : Boolean;
begin
  Result := ( FShipmentHandling <> nil );
end;

function ShipmentService.wstHas_Endorsement() : Boolean;
begin
  Result := ( FEndorsement <> nil );
end;

function ShipmentService.wstHas_VisualCheckOfAge() : Boolean;
begin
  Result := ( FVisualCheckOfAge <> nil );
end;

function ShipmentService.wstHas_PreferredLocation() : Boolean;
begin
  Result := ( FPreferredLocation <> nil );
end;

function ShipmentService.wstHas_PreferredNeighbour() : Boolean;
begin
  Result := ( FPreferredNeighbour <> nil );
end;

function ShipmentService.wstHas_PreferredDay() : Boolean;
begin
  Result := ( FPreferredDay <> nil );
end;

function ShipmentService.wstHas_GoGreen() : Boolean;
begin
  Result := ( FGoGreen <> nil );
end;

function ShipmentService.wstHas_Perishables() : Boolean;
begin
  Result := ( FPerishables <> nil );
end;

function ShipmentService.wstHas_Personally() : Boolean;
begin
  Result := ( FPersonally <> nil );
end;

function ShipmentService.wstHas_NoNeighbourDelivery() : Boolean;
begin
  Result := ( FNoNeighbourDelivery <> nil );
end;

function ShipmentService.wstHas_NamedPersonOnly() : Boolean;
begin
  Result := ( FNamedPersonOnly <> nil );
end;

function ShipmentService.wstHas_ReturnReceipt() : Boolean;
begin
  Result := ( FReturnReceipt <> nil );
end;

function ShipmentService.wstHas_Premium() : Boolean;
begin
  Result := ( FPremium <> nil );
end;

function ShipmentService.wstHas_CashOnDelivery() : Boolean;
begin
  Result := ( FCashOnDelivery <> nil );
end;

function ShipmentService.wstHas_AdditionalInsurance() : Boolean;
begin
  Result := ( FAdditionalInsurance <> nil );
end;

function ShipmentService.wstHas_BulkyGoods() : Boolean;
begin
  Result := ( FBulkyGoods <> nil );
end;

function ShipmentService.wstHas_IdentCheck() : Boolean;
begin
  Result := ( FIdentCheck <> nil );
end;

function ServiceconfigurationCashOnDelivery.wstHas_addFee() : Boolean;
begin
  Result := True;
end;

function ServiceconfigurationUnfree.wstHas_CustomerNumber() : Boolean;
begin
  Result := ( FCustomerNumber <> '' );
end;

{ ServiceconfigurationIC }

constructor ServiceconfigurationIC.Create();
begin
  inherited Create();
  FIdent := ServiceconfigurationIC_Ident_Type.Create();
end;

procedure ServiceconfigurationIC.FreeObjectProperties();
begin
  if Assigned(FIdent) then
    FreeAndNil(FIdent);
  inherited FreeObjectProperties();
end;

{ ExportDocumentType }

constructor ExportDocumentType.Create();
begin
  inherited Create();
  FWithElectronicExportNtfctn := Serviceconfiguration.Create();
  FExportDocPosition := ExportDocumentType_ExportDocPositionArray.Create();
end;

procedure ExportDocumentType.FreeObjectProperties();
begin
  if Assigned(FWithElectronicExportNtfctn) then
    FreeAndNil(FWithElectronicExportNtfctn);
  if Assigned(FExportDocPosition) then
    FreeAndNil(FExportDocPosition);
  inherited FreeObjectProperties();
end;

function ExportDocumentType.wstHas_invoiceNumber() : Boolean;
begin
  Result := ( FinvoiceNumber <> '' );
end;

function ExportDocumentType.wstHas_exportTypeDescription() : Boolean;
begin
  Result := ( FexportTypeDescription <> '' );
end;

function ExportDocumentType.wstHas_termsOfTrade() : Boolean;
begin
  Result := True;
end;

function ExportDocumentType.wstHas_permitNumber() : Boolean;
begin
  Result := ( FpermitNumber <> '' );
end;

function ExportDocumentType.wstHas_attestationNumber() : Boolean;
begin
  Result := ( FattestationNumber <> '' );
end;

function ExportDocumentType.wstHas_WithElectronicExportNtfctn() : Boolean;
begin
  Result := ( FWithElectronicExportNtfctn <> nil );
end;

function ExportDocumentType.wstHas_ExportDocPosition() : Boolean;
begin
  Result := ( FExportDocPosition <> ExportDocumentType_ExportDocPositionArray(0) );
end;

{ FurtherAddressesType_DeliveryAdress_Type }

constructor FurtherAddressesType_DeliveryAdress_Type.Create();
begin
  inherited Create();
  FCompany := NameType.Create();
  FAddress := NativeAddressType.Create();
  FCommunication := CommunicationType.Create();
end;

procedure FurtherAddressesType_DeliveryAdress_Type.FreeObjectProperties();
begin
  if Assigned(FCompany) then
    FreeAndNil(FCompany);
  if Assigned(FAddress) then
    FreeAndNil(FAddress);
  if Assigned(FCommunication) then
    FreeAndNil(FCommunication);
  inherited FreeObjectProperties();
end;

function FurtherAddressesType_DeliveryAdress_Type.wstHas_Name3() : Boolean;
begin
  Result := ( FName3 <> '' );
end;

{ FurtherAddressesType }

constructor FurtherAddressesType.Create();
begin
  inherited Create();
  FDeliveryAdress := FurtherAddressesType_DeliveryAdress_Type.Create();
end;

procedure FurtherAddressesType.FreeObjectProperties();
begin
  if Assigned(FDeliveryAdress) then
    FreeAndNil(FDeliveryAdress);
  inherited FreeObjectProperties();
end;

function FurtherAddressesType.wstHas_DeliveryAdress() : Boolean;
begin
  Result := ( FDeliveryAdress <> nil );
end;

{ LabelData }

constructor LabelData.Create();
begin
  inherited Create();
  FStatus := Statusinformation.Create();
end;

procedure LabelData.FreeObjectProperties();
begin
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  if Assigned(FlabelData) then
    FreeAndNil(FlabelData);
  if Assigned(FreturnLabelData) then
    FreeAndNil(FreturnLabelData);
  if Assigned(FexportLabelData) then
    FreeAndNil(FexportLabelData);
  if Assigned(FcodLabelData) then
    FreeAndNil(FcodLabelData);
  inherited FreeObjectProperties();
end;

function LabelData.wstHas_shipmentNumber() : Boolean;
begin
  Result := ( FshipmentNumber <> '' );
end;

function LabelData.wstHas_labelUrl() : Boolean;
begin
  Result := ( FlabelUrl <> '' );
end;

function LabelData.wstHas_labelData() : Boolean;
begin
  Result := ( FlabelData <> nil );
end;

function LabelData.wstHas_returnLabelUrl() : Boolean;
begin
  Result := ( FreturnLabelUrl <> '' );
end;

function LabelData.wstHas_returnLabelData() : Boolean;
begin
  Result := ( FreturnLabelData <> nil );
end;

function LabelData.wstHas_exportLabelUrl() : Boolean;
begin
  Result := ( FexportLabelUrl <> '' );
end;

function LabelData.wstHas_exportLabelData() : Boolean;
begin
  Result := ( FexportLabelData <> nil );
end;

function LabelData.wstHas_codLabelUrl() : Boolean;
begin
  Result := ( FcodLabelUrl <> '' );
end;

function LabelData.wstHas_codLabelData() : Boolean;
begin
  Result := ( FcodLabelData <> nil );
end;

{ ExportDocData }

constructor ExportDocData.Create();
begin
  inherited Create();
  FStatus := Statusinformation.Create();
end;

procedure ExportDocData.FreeObjectProperties();
begin
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  if Assigned(FexportDocData) then
    FreeAndNil(FexportDocData);
  inherited FreeObjectProperties();
end;

function ExportDocData.wstHas_exportDocData() : Boolean;
begin
  Result := ( FexportDocData <> nil );
end;

function ExportDocData.wstHas_exportDocURL() : Boolean;
begin
  Result := ( FexportDocURL <> '' );
end;

{ ManifestState }

constructor ManifestState.Create();
begin
  inherited Create();
  FStatus := Statusinformation.Create();
end;

procedure ManifestState.FreeObjectProperties();
begin
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
  inherited FreeObjectProperties();
end;

{ DeletionState }

constructor DeletionState.Create();
begin
  inherited Create();
  FStatus := Statusinformation.Create();
end;

procedure DeletionState.FreeObjectProperties();
begin
  if Assigned(FStatus) then
    FreeAndNil(FStatus);
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

function PickupDetailsType.wstHas_Remark() : Boolean;
begin
  Result := ( FRemark <> '' );
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

{ IdentityData }

constructor IdentityData.Create();
begin
  inherited Create();
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

{ ReadShipmentOrderResponse }

constructor ReadShipmentOrderResponse.Create();
begin
  inherited Create();
  FVersion := Version_Type.Create();
  Fstatus := Statusinformation.Create();
  FCreationState := ReadShipmentOrderResponse_CreationStateArray.Create();
end;

procedure ReadShipmentOrderResponse.FreeObjectProperties();
begin
  if Assigned(FVersion) then
    FreeAndNil(FVersion);
  if Assigned(Fstatus) then
    FreeAndNil(Fstatus);
  if Assigned(FCreationState) then
    FreeAndNil(FCreationState);
  inherited FreeObjectProperties();
end;

function ReadShipmentOrderResponse.wstHas_CreationState() : Boolean;
begin
  Result := ( FCreationState <> ReadShipmentOrderResponse_CreationStateArray(0) );
end;

function Version_Type.wstHas_build() : Boolean;
begin
  Result := ( Fbuild <> '' );
end;

{ CreateShipmentOrderRequest_ShipmentOrderArray }

function CreateShipmentOrderRequest_ShipmentOrderArray.GetItem(AIndex: Integer): ShipmentOrderType;
begin
  Result := ShipmentOrderType(Inherited GetItem(AIndex));
end;

class function CreateShipmentOrderRequest_ShipmentOrderArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ShipmentOrderType;
end;

function CreateShipmentOrderRequest_ShipmentOrderArray.Add() : ShipmentOrderType;
begin
  Result := ShipmentOrderType(inherited Add());
end;

function CreateShipmentOrderRequest_ShipmentOrderArray.AddAt(const APosition : Integer) : ShipmentOrderType;
begin
  Result := ShipmentOrderType(inherited AddAt(APosition));
end;

{ ValidateShipmentOrderRequest_ShipmentOrderArray }

function ValidateShipmentOrderRequest_ShipmentOrderArray.GetItem(AIndex: Integer): ValidateShipmentOrderType;
begin
  Result := ValidateShipmentOrderType(Inherited GetItem(AIndex));
end;

class function ValidateShipmentOrderRequest_ShipmentOrderArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ValidateShipmentOrderType;
end;

function ValidateShipmentOrderRequest_ShipmentOrderArray.Add() : ValidateShipmentOrderType;
begin
  Result := ValidateShipmentOrderType(inherited Add());
end;

function ValidateShipmentOrderRequest_ShipmentOrderArray.AddAt(const APosition : Integer) : ValidateShipmentOrderType;
begin
  Result := ValidateShipmentOrderType(inherited AddAt(APosition));
end;

{ CreateShipmentOrderResponse_CreationStateArray }

function CreateShipmentOrderResponse_CreationStateArray.GetItem(AIndex: Integer): CreationState;
begin
  Result := CreationState(Inherited GetItem(AIndex));
end;

class function CreateShipmentOrderResponse_CreationStateArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= CreationState;
end;

function CreateShipmentOrderResponse_CreationStateArray.Add() : CreationState;
begin
  Result := CreationState(inherited Add());
end;

function CreateShipmentOrderResponse_CreationStateArray.AddAt(const APosition : Integer) : CreationState;
begin
  Result := CreationState(inherited AddAt(APosition));
end;

{ ValidateShipmentResponse_ValidationStateArray }

function ValidateShipmentResponse_ValidationStateArray.GetItem(AIndex: Integer): ValidationState;
begin
  Result := ValidationState(Inherited GetItem(AIndex));
end;

class function ValidateShipmentResponse_ValidationStateArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ValidationState;
end;

function ValidateShipmentResponse_ValidationStateArray.Add() : ValidationState;
begin
  Result := ValidationState(inherited Add());
end;

function ValidateShipmentResponse_ValidationStateArray.AddAt(const APosition : Integer) : ValidationState;
begin
  Result := ValidationState(inherited AddAt(APosition));
end;

{ GetLabelRequest_shipmentNumberArray }

function GetLabelRequest_shipmentNumberArray.GetItem(AIndex: Integer): shipmentNumber_Type;
begin
  CheckIndex(AIndex);
  Result := FData[AIndex];
end;

procedure GetLabelRequest_shipmentNumberArray.SetItem(AIndex: Integer;const AValue: shipmentNumber_Type);
begin
  CheckIndex(AIndex);
  FData[AIndex] := AValue;
end;

function GetLabelRequest_shipmentNumberArray.GetLength(): Integer;
begin
  Result := System.Length(FData);
end;

procedure GetLabelRequest_shipmentNumberArray.SaveItem(AStore: IFormatterBase;const AName: String; const AIndex: Integer);
begin
  AStore.Put('shipmentNumber',TypeInfo(shipmentNumber_Type),FData[AIndex]);
end;

procedure GetLabelRequest_shipmentNumberArray.LoadItem(AStore: IFormatterBase;const AIndex: Integer);
var
  sName : string;
begin
  sName := 'shipmentNumber';
  AStore.Get(TypeInfo(shipmentNumber_Type),sName,FData[AIndex]);
end;

class function GetLabelRequest_shipmentNumberArray.GetItemTypeInfo(): PTypeInfo;
begin
  Result := TypeInfo(shipmentNumber_Type);
end;

procedure GetLabelRequest_shipmentNumberArray.SetLength(const ANewSize: Integer);
var
  i : Integer;
begin
  if ( ANewSize < 0 ) then
    i := 0
  else
    i := ANewSize;
  System.SetLength(FData,i);
end;

procedure GetLabelRequest_shipmentNumberArray.Assign(Source: TPersistent);
var
  src : GetLabelRequest_shipmentNumberArray;
  i, c : Integer;
begin
  if Assigned(Source) and Source.InheritsFrom(GetLabelRequest_shipmentNumberArray) then begin
    src := GetLabelRequest_shipmentNumberArray(Source);
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

{ DoManifestRequest_shipmentNumberArray }

function DoManifestRequest_shipmentNumberArray.GetItem(AIndex: Integer): shipmentNumber_Type;
begin
  CheckIndex(AIndex);
  Result := FData[AIndex];
end;

procedure DoManifestRequest_shipmentNumberArray.SetItem(AIndex: Integer;const AValue: shipmentNumber_Type);
begin
  CheckIndex(AIndex);
  FData[AIndex] := AValue;
end;

function DoManifestRequest_shipmentNumberArray.GetLength(): Integer;
begin
  Result := System.Length(FData);
end;

procedure DoManifestRequest_shipmentNumberArray.SaveItem(AStore: IFormatterBase;const AName: String; const AIndex: Integer);
begin
  AStore.Put('shipmentNumber',TypeInfo(shipmentNumber_Type),FData[AIndex]);
end;

procedure DoManifestRequest_shipmentNumberArray.LoadItem(AStore: IFormatterBase;const AIndex: Integer);
var
  sName : string;
begin
  sName := 'shipmentNumber';
  AStore.Get(TypeInfo(shipmentNumber_Type),sName,FData[AIndex]);
end;

class function DoManifestRequest_shipmentNumberArray.GetItemTypeInfo(): PTypeInfo;
begin
  Result := TypeInfo(shipmentNumber_Type);
end;

procedure DoManifestRequest_shipmentNumberArray.SetLength(const ANewSize: Integer);
var
  i : Integer;
begin
  if ( ANewSize < 0 ) then
    i := 0
  else
    i := ANewSize;
  System.SetLength(FData,i);
end;

procedure DoManifestRequest_shipmentNumberArray.Assign(Source: TPersistent);
var
  src : DoManifestRequest_shipmentNumberArray;
  i, c : Integer;
begin
  if Assigned(Source) and Source.InheritsFrom(DoManifestRequest_shipmentNumberArray) then begin
    src := DoManifestRequest_shipmentNumberArray(Source);
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

{ DeleteShipmentOrderRequest_shipmentNumberArray }

function DeleteShipmentOrderRequest_shipmentNumberArray.GetItem(AIndex: Integer): shipmentNumber_Type;
begin
  CheckIndex(AIndex);
  Result := FData[AIndex];
end;

procedure DeleteShipmentOrderRequest_shipmentNumberArray.SetItem(AIndex: Integer;const AValue: shipmentNumber_Type);
begin
  CheckIndex(AIndex);
  FData[AIndex] := AValue;
end;

function DeleteShipmentOrderRequest_shipmentNumberArray.GetLength(): Integer;
begin
  Result := System.Length(FData);
end;

procedure DeleteShipmentOrderRequest_shipmentNumberArray.SaveItem(AStore: IFormatterBase;const AName: String; const AIndex: Integer);
begin
  AStore.Put('shipmentNumber',TypeInfo(shipmentNumber_Type),FData[AIndex]);
end;

procedure DeleteShipmentOrderRequest_shipmentNumberArray.LoadItem(AStore: IFormatterBase;const AIndex: Integer);
var
  sName : string;
begin
  sName := 'shipmentNumber';
  AStore.Get(TypeInfo(shipmentNumber_Type),sName,FData[AIndex]);
end;

class function DeleteShipmentOrderRequest_shipmentNumberArray.GetItemTypeInfo(): PTypeInfo;
begin
  Result := TypeInfo(shipmentNumber_Type);
end;

procedure DeleteShipmentOrderRequest_shipmentNumberArray.SetLength(const ANewSize: Integer);
var
  i : Integer;
begin
  if ( ANewSize < 0 ) then
    i := 0
  else
    i := ANewSize;
  System.SetLength(FData,i);
end;

procedure DeleteShipmentOrderRequest_shipmentNumberArray.Assign(Source: TPersistent);
var
  src : DeleteShipmentOrderRequest_shipmentNumberArray;
  i, c : Integer;
begin
  if Assigned(Source) and Source.InheritsFrom(DeleteShipmentOrderRequest_shipmentNumberArray) then begin
    src := DeleteShipmentOrderRequest_shipmentNumberArray(Source);
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

{ DeleteShipmentOrderResponse_DeletionStateArray }

function DeleteShipmentOrderResponse_DeletionStateArray.GetItem(AIndex: Integer): DeletionState;
begin
  Result := DeletionState(Inherited GetItem(AIndex));
end;

class function DeleteShipmentOrderResponse_DeletionStateArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= DeletionState;
end;

function DeleteShipmentOrderResponse_DeletionStateArray.Add() : DeletionState;
begin
  Result := DeletionState(inherited Add());
end;

function DeleteShipmentOrderResponse_DeletionStateArray.AddAt(const APosition : Integer) : DeletionState;
begin
  Result := DeletionState(inherited AddAt(APosition));
end;

{ GetExportDocRequest_shipmentNumberArray }

function GetExportDocRequest_shipmentNumberArray.GetItem(AIndex: Integer): shipmentNumber_Type;
begin
  CheckIndex(AIndex);
  Result := FData[AIndex];
end;

procedure GetExportDocRequest_shipmentNumberArray.SetItem(AIndex: Integer;const AValue: shipmentNumber_Type);
begin
  CheckIndex(AIndex);
  FData[AIndex] := AValue;
end;

function GetExportDocRequest_shipmentNumberArray.GetLength(): Integer;
begin
  Result := System.Length(FData);
end;

procedure GetExportDocRequest_shipmentNumberArray.SaveItem(AStore: IFormatterBase;const AName: String; const AIndex: Integer);
begin
  AStore.Put('shipmentNumber',TypeInfo(shipmentNumber_Type),FData[AIndex]);
end;

procedure GetExportDocRequest_shipmentNumberArray.LoadItem(AStore: IFormatterBase;const AIndex: Integer);
var
  sName : string;
begin
  sName := 'shipmentNumber';
  AStore.Get(TypeInfo(shipmentNumber_Type),sName,FData[AIndex]);
end;

class function GetExportDocRequest_shipmentNumberArray.GetItemTypeInfo(): PTypeInfo;
begin
  Result := TypeInfo(shipmentNumber_Type);
end;

procedure GetExportDocRequest_shipmentNumberArray.SetLength(const ANewSize: Integer);
var
  i : Integer;
begin
  if ( ANewSize < 0 ) then
    i := 0
  else
    i := ANewSize;
  System.SetLength(FData,i);
end;

procedure GetExportDocRequest_shipmentNumberArray.Assign(Source: TPersistent);
var
  src : GetExportDocRequest_shipmentNumberArray;
  i, c : Integer;
begin
  if Assigned(Source) and Source.InheritsFrom(GetExportDocRequest_shipmentNumberArray) then begin
    src := GetExportDocRequest_shipmentNumberArray(Source);
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

{ Statusinformation_statusMessageArray }

function Statusinformation_statusMessageArray.GetItem(AIndex: Integer): UnicodeString;
begin
  CheckIndex(AIndex);
  Result := FData[AIndex];
end;

procedure Statusinformation_statusMessageArray.SetItem(AIndex: Integer;const AValue: UnicodeString);
begin
  CheckIndex(AIndex);
  FData[AIndex] := AValue;
end;

function Statusinformation_statusMessageArray.GetLength(): Integer;
begin
  Result := System.Length(FData);
end;

procedure Statusinformation_statusMessageArray.SaveItem(AStore: IFormatterBase;const AName: String; const AIndex: Integer);
begin
  AStore.Put('statusMessage',TypeInfo(UnicodeString),FData[AIndex]);
end;

procedure Statusinformation_statusMessageArray.LoadItem(AStore: IFormatterBase;const AIndex: Integer);
var
  sName : string;
begin
  sName := 'statusMessage';
  AStore.Get(TypeInfo(UnicodeString),sName,FData[AIndex]);
end;

class function Statusinformation_statusMessageArray.GetItemTypeInfo(): PTypeInfo;
begin
  Result := TypeInfo(UnicodeString);
end;

procedure Statusinformation_statusMessageArray.SetLength(const ANewSize: Integer);
var
  i : Integer;
begin
  if ( ANewSize < 0 ) then
    i := 0
  else
    i := ANewSize;
  System.SetLength(FData,i);
end;

procedure Statusinformation_statusMessageArray.Assign(Source: TPersistent);
var
  src : Statusinformation_statusMessageArray;
  i, c : Integer;
begin
  if Assigned(Source) and Source.InheritsFrom(Statusinformation_statusMessageArray) then begin
    src := Statusinformation_statusMessageArray(Source);
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

{ ExportDocumentType_ExportDocPositionArray }

function ExportDocumentType_ExportDocPositionArray.GetItem(AIndex: Integer): ExportDocumentType_ExportDocPosition_Type;
begin
  Result := ExportDocumentType_ExportDocPosition_Type(Inherited GetItem(AIndex));
end;

class function ExportDocumentType_ExportDocPositionArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= ExportDocumentType_ExportDocPosition_Type;
end;

function ExportDocumentType_ExportDocPositionArray.Add() : ExportDocumentType_ExportDocPosition_Type;
begin
  Result := ExportDocumentType_ExportDocPosition_Type(inherited Add());
end;

function ExportDocumentType_ExportDocPositionArray.AddAt(const APosition : Integer) : ExportDocumentType_ExportDocPosition_Type;
begin
  Result := ExportDocumentType_ExportDocPosition_Type(inherited AddAt(APosition));
end;

{ ReadShipmentOrderResponse_CreationStateArray }

function ReadShipmentOrderResponse_CreationStateArray.GetItem(AIndex: Integer): CreationState;
begin
  Result := CreationState(Inherited GetItem(AIndex));
end;

class function ReadShipmentOrderResponse_CreationStateArray.GetItemClass(): TBaseRemotableClass;
begin
  Result:= CreationState;
end;

function ReadShipmentOrderResponse_CreationStateArray.Add() : CreationState;
begin
  Result := CreationState(inherited Add());
end;

function ReadShipmentOrderResponse_CreationStateArray.AddAt(const APosition : Integer) : CreationState;
begin
  Result := CreationState(inherited AddAt(APosition));
end;


procedure Register_geschaeftskundenversand_api_2_2_ServiceMetadata();
var
  mm : IModuleMetadataMngr;
begin
  mm := GetModuleMetadataMngr();
  mm.SetRepositoryNameSpace(sUNIT_NAME, sNAME_SPACE);
  mm.SetRepositoryCustomData(sUNIT_NAME, 'elementFormDefault', 'unqualified');
  mm.SetRepositoryCustomData(sUNIT_NAME, 'attributeFormDefault', 'unqualified');
  mm.SetServiceCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'TRANSPORT_Address',
    'https://cig.dhl.de/services/production/soap'
  );
  mm.SetServiceCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'FORMAT_Style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'createShipmentOrder',
    '_E_N_',
    'createShipmentOrder'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'createShipmentOrder',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'createShipmentOrder',
    'TRANSPORT_soapAction',
    'urn:createShipmentOrder'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'createShipmentOrder',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'createShipmentOrder',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'validateShipment',
    '_E_N_',
    'validateShipment'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'validateShipment',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'validateShipment',
    'TRANSPORT_soapAction',
    'urn:validateShipment'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'validateShipment',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'validateShipment',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'deleteShipmentOrder',
    '_E_N_',
    'deleteShipmentOrder'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'deleteShipmentOrder',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'deleteShipmentOrder',
    'TRANSPORT_soapAction',
    'urn:deleteShipmentOrder'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'deleteShipmentOrder',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'deleteShipmentOrder',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'doManifest',
    '_E_N_',
    'doManifest'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'doManifest',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'doManifest',
    'TRANSPORT_soapAction',
    'urn:doManifest'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'doManifest',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'doManifest',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getLabel',
    '_E_N_',
    'getLabel'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getLabel',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getLabel',
    'TRANSPORT_soapAction',
    'urn:getLabel'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getLabel',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getLabel',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getVersion',
    '_E_N_',
    'getVersion'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getVersion',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getVersion',
    'TRANSPORT_soapAction',
    'urn:getVersion'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getVersion',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getVersion',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getExportDoc',
    '_E_N_',
    'getExportDoc'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getExportDoc',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getExportDoc',
    'TRANSPORT_soapAction',
    'urn:getExportDoc'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getExportDoc',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getExportDoc',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getManifest',
    '_E_N_',
    'getManifest'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getManifest',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getManifest',
    'TRANSPORT_soapAction',
    'urn:getManifest'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getManifest',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'getManifest',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'updateShipmentOrder',
    '_E_N_',
    'updateShipmentOrder'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'updateShipmentOrder',
    'style',
    'document'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'updateShipmentOrder',
    'TRANSPORT_soapAction',
    'urn:updateShipmentOrder'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'updateShipmentOrder',
    'FORMAT_Input_EncodingStyle',
    'literal'
  );
  mm.SetOperationCustomData(
    sUNIT_NAME,
    'GKVAPIServicePortType',
    'updateShipmentOrder',
    'FORMAT_OutputEncodingStyle',
    'literal'
  );
end;


var
  typeRegistryInstance : TTypeRegistry = nil;
initialization
  typeRegistryInstance := GetTypeRegistry();
  Serviceconfiguration.RegisterAttributeProperty('active');
  ServiceconfigurationDetails.RegisterAttributeProperty('active');
  ServiceconfigurationDetails.RegisterAttributeProperty('details');
  ServiceconfigurationType.RegisterAttributeProperty('active');
  ServiceconfigurationType.RegisterAttributeProperty('_Type');
  ServiceconfigurationEndorsement.RegisterAttributeProperty('active');
  ServiceconfigurationEndorsement.RegisterAttributeProperty('_type');
  ServiceconfigurationISR.RegisterAttributeProperty('active');
  ServiceconfigurationISR.RegisterAttributeProperty('details');
  ServiceconfigurationDH.RegisterAttributeProperty('active');
  ServiceconfigurationDH.RegisterAttributeProperty('Days');
  ServiceconfigurationVisualAgeCheck.RegisterAttributeProperty('active');
  ServiceconfigurationVisualAgeCheck.RegisterAttributeProperty('_type');
  ServiceconfigurationDeliveryTimeframe.RegisterAttributeProperty('active');
  ServiceconfigurationDeliveryTimeframe.RegisterAttributeProperty('_type');
  ServiceconfigurationDateOfDelivery.RegisterAttributeProperty('active');
  ServiceconfigurationDateOfDelivery.RegisterAttributeProperty('details');
  ServiceconfigurationAdditionalInsurance.RegisterAttributeProperty('active');
  ServiceconfigurationAdditionalInsurance.RegisterAttributeProperty('insuranceAmount');
  ServiceconfigurationCashOnDelivery.RegisterAttributeProperty('active');
  ServiceconfigurationCashOnDelivery.RegisterAttributeProperty('addFee');
  ServiceconfigurationCashOnDelivery.RegisterAttributeProperty('codAmount');
  ServiceconfigurationShipmentHandling.RegisterAttributeProperty('active');
  ServiceconfigurationShipmentHandling.RegisterAttributeProperty('_type');
  ServiceconfigurationUnfree.RegisterAttributeProperty('active');
  ServiceconfigurationUnfree.RegisterAttributeProperty('PaymentType');
  ServiceconfigurationUnfree.RegisterAttributeProperty('CustomerNumber');
  ServiceconfigurationIC.RegisterAttributeProperty('active');

  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetLabelRequest_labelResponseType_Type),'GetLabelRequest_labelResponseType_Type');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetExportDocRequest_exportDocResponseType_Type),'GetExportDocRequest_exportDocResponseType_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(GetExportDocRequest_exportDocResponseType_Type)].RegisterExternalPropertyName('GetExportDocRequest_exportDocResponseType_Type_URL','URL');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(GetExportDocRequest_exportDocResponseType_Type)].RegisterExternalPropertyName('GetExportDocRequest_exportDocResponseType_Type_B64','B64');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ShipmentOrderType_labelResponseType_Type),'ShipmentOrderType_labelResponseType_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ShipmentOrderType_labelResponseType_Type)].RegisterExternalPropertyName('ShipmentOrderType_labelResponseType_Type_URL','URL');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ShipmentOrderType_labelResponseType_Type)].RegisterExternalPropertyName('ShipmentOrderType_labelResponseType_Type_B64','B64');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(Serviceconfiguration_active_Type),'Serviceconfiguration_active_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(Serviceconfiguration_active_Type)].RegisterExternalPropertyName('Serviceconfiguration_active_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(Serviceconfiguration_active_Type)].RegisterExternalPropertyName('Serviceconfiguration_active_Type__1','1');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationDetails_active_Type),'ServiceconfigurationDetails_active_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationDetails_active_Type)].RegisterExternalPropertyName('ServiceconfigurationDetails_active_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationDetails_active_Type)].RegisterExternalPropertyName('ServiceconfigurationDetails_active_Type__1','1');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationType_active_Type),'ServiceconfigurationType_active_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationType_active_Type)].RegisterExternalPropertyName('ServiceconfigurationType_active_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationType_active_Type)].RegisterExternalPropertyName('ServiceconfigurationType_active_Type__1','1');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationEndorsement_active_Type),'ServiceconfigurationEndorsement_active_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationEndorsement_active_Type)].RegisterExternalPropertyName('ServiceconfigurationEndorsement_active_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationEndorsement_active_Type)].RegisterExternalPropertyName('ServiceconfigurationEndorsement_active_Type__1','1');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationEndorsement_type_Type),'ServiceconfigurationEndorsement_type_Type');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationISR_active_Type),'ServiceconfigurationISR_active_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationISR_active_Type)].RegisterExternalPropertyName('ServiceconfigurationISR_active_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationISR_active_Type)].RegisterExternalPropertyName('ServiceconfigurationISR_active_Type__1','1');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationDH_active_Type),'ServiceconfigurationDH_active_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationDH_active_Type)].RegisterExternalPropertyName('ServiceconfigurationDH_active_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationDH_active_Type)].RegisterExternalPropertyName('ServiceconfigurationDH_active_Type__1','1');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationVisualAgeCheck_active_Type),'ServiceconfigurationVisualAgeCheck_active_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationVisualAgeCheck_active_Type)].RegisterExternalPropertyName('ServiceconfigurationVisualAgeCheck_active_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationVisualAgeCheck_active_Type)].RegisterExternalPropertyName('ServiceconfigurationVisualAgeCheck_active_Type__1','1');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationDeliveryTimeframe_active_Type),'ServiceconfigurationDeliveryTimeframe_active_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationDeliveryTimeframe_active_Type)].RegisterExternalPropertyName('ServiceconfigurationDeliveryTimeframe_active_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationDeliveryTimeframe_active_Type)].RegisterExternalPropertyName('ServiceconfigurationDeliveryTimeframe_active_Type__1','1');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationDeliveryTimeframe_type_Type),'ServiceconfigurationDeliveryTimeframe_type_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationDeliveryTimeframe_type_Type)].RegisterExternalPropertyName('ServiceconfigurationDeliveryTimeframe_type_Type__10001200','10001200');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationDeliveryTimeframe_type_Type)].RegisterExternalPropertyName('ServiceconfigurationDeliveryTimeframe_type_Type__12001400','12001400');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationDeliveryTimeframe_type_Type)].RegisterExternalPropertyName('ServiceconfigurationDeliveryTimeframe_type_Type__14001600','14001600');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationDeliveryTimeframe_type_Type)].RegisterExternalPropertyName('ServiceconfigurationDeliveryTimeframe_type_Type__16001800','16001800');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationDeliveryTimeframe_type_Type)].RegisterExternalPropertyName('ServiceconfigurationDeliveryTimeframe_type_Type__18002000','18002000');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationDeliveryTimeframe_type_Type)].RegisterExternalPropertyName('ServiceconfigurationDeliveryTimeframe_type_Type__19002100','19002100');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationDateOfDelivery_active_Type),'ServiceconfigurationDateOfDelivery_active_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationDateOfDelivery_active_Type)].RegisterExternalPropertyName('ServiceconfigurationDateOfDelivery_active_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationDateOfDelivery_active_Type)].RegisterExternalPropertyName('ServiceconfigurationDateOfDelivery_active_Type__1','1');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationAdditionalInsurance_active_Type),'ServiceconfigurationAdditionalInsurance_active_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationAdditionalInsurance_active_Type)].RegisterExternalPropertyName('ServiceconfigurationAdditionalInsurance_active_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationAdditionalInsurance_active_Type)].RegisterExternalPropertyName('ServiceconfigurationAdditionalInsurance_active_Type__1','1');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationCashOnDelivery_active_Type),'ServiceconfigurationCashOnDelivery_active_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationCashOnDelivery_active_Type)].RegisterExternalPropertyName('ServiceconfigurationCashOnDelivery_active_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationCashOnDelivery_active_Type)].RegisterExternalPropertyName('ServiceconfigurationCashOnDelivery_active_Type__1','1');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationCashOnDelivery_addFee_Type),'ServiceconfigurationCashOnDelivery_addFee_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationCashOnDelivery_addFee_Type)].RegisterExternalPropertyName('ServiceconfigurationCashOnDelivery_addFee_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationCashOnDelivery_addFee_Type)].RegisterExternalPropertyName('ServiceconfigurationCashOnDelivery_addFee_Type__1','1');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationShipmentHandling_active_Type),'ServiceconfigurationShipmentHandling_active_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationShipmentHandling_active_Type)].RegisterExternalPropertyName('ServiceconfigurationShipmentHandling_active_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationShipmentHandling_active_Type)].RegisterExternalPropertyName('ServiceconfigurationShipmentHandling_active_Type__1','1');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationUnfree_active_Type),'ServiceconfigurationUnfree_active_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationUnfree_active_Type)].RegisterExternalPropertyName('ServiceconfigurationUnfree_active_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationUnfree_active_Type)].RegisterExternalPropertyName('ServiceconfigurationUnfree_active_Type__1','1');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationUnfree_PaymentType_Type),'ServiceconfigurationUnfree_PaymentType_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationUnfree_PaymentType_Type)].RegisterExternalPropertyName('ServiceconfigurationUnfree_PaymentType_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationUnfree_PaymentType_Type)].RegisterExternalPropertyName('ServiceconfigurationUnfree_PaymentType_Type__1','1');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationIC_active_Type),'ServiceconfigurationIC_active_Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationIC_active_Type)].RegisterExternalPropertyName('ServiceconfigurationIC_active_Type__0','0');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationIC_active_Type)].RegisterExternalPropertyName('ServiceconfigurationIC_active_Type__1','1');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ExportDocumentType_exportType_Type),'ExportDocumentType_exportType_Type');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ExportDocumentType_termsOfTrade_Type),'ExportDocumentType_termsOfTrade_Type');
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetVersionResponse),'GetVersionResponse',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CreateShipmentOrderRequest),'CreateShipmentOrderRequest',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ValidateShipmentOrderRequest),'ValidateShipmentOrderRequest',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CreateShipmentOrderResponse),'CreateShipmentOrderResponse',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ValidateShipmentResponse),'ValidateShipmentResponse',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetLabelRequest),'GetLabelRequest',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetLabelResponse),'GetLabelResponse',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DoManifestRequest),'DoManifestRequest',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DoManifestResponse),'DoManifestResponse',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DeleteShipmentOrderRequest),'DeleteShipmentOrderRequest',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DeleteShipmentOrderResponse),'DeleteShipmentOrderResponse',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetExportDocRequest),'GetExportDocRequest',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetExportDocResponse),'GetExportDocResponse',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetManifestRequest),'GetManifestRequest',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetManifestResponse),'GetManifestResponse',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(UpdateShipmentOrderRequest),'UpdateShipmentOrderRequest',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(UpdateShipmentOrderResponse),'UpdateShipmentOrderResponse',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CreationState),'CreationState',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ValidationState),'ValidationState',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(Statusinformation),'Statusinformation',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(PieceInformation),'PieceInformation',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ShipmentOrderType_Shipment_Type),'ShipmentOrderType_Shipment_Type',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ShipmentOrderType),'ShipmentOrderType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ValidateShipmentOrderType_Shipment_Type),'ValidateShipmentOrderType_Shipment_Type',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ValidateShipmentOrderType),'ValidateShipmentOrderType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ShipperTypeType),'ShipperTypeType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ShipperType),'ShipperType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ReceiverTypeType),'ReceiverTypeType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ReceiverType),'ReceiverType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(Ident),'Ident',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ShipmentDetailsType),'ShipmentDetailsType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ShipmentDetailsTypeType),'ShipmentDetailsTypeType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ShipmentItemType),'ShipmentItemType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ShipmentItemTypeType),'ShipmentItemTypeType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ShipmentService),'ShipmentService',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(Serviceconfiguration),'Serviceconfiguration',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationDetails),'ServiceconfigurationDetails',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationType),'ServiceconfigurationType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationEndorsement),'ServiceconfigurationEndorsement',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationISR),'ServiceconfigurationISR',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationDH),'ServiceconfigurationDH',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationVisualAgeCheck),'ServiceconfigurationVisualAgeCheck',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationDeliveryTimeframe),'ServiceconfigurationDeliveryTimeframe',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationDateOfDelivery),'ServiceconfigurationDateOfDelivery',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationAdditionalInsurance),'ServiceconfigurationAdditionalInsurance',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationCashOnDelivery),'ServiceconfigurationCashOnDelivery',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationShipmentHandling),'ServiceconfigurationShipmentHandling',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationUnfree),'ServiceconfigurationUnfree',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationIC_Ident_Type),'ServiceconfigurationIC_Ident_Type',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ServiceconfigurationIC),'ServiceconfigurationIC',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ShipmentNotificationType),'ShipmentNotificationType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ExportDocumentType_ExportDocPosition_Type),'ExportDocumentType_ExportDocPosition_Type',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ExportDocumentType),'ExportDocumentType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(FurtherAddressesType_DeliveryAdress_Type),'FurtherAddressesType_DeliveryAdress_Type',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(FurtherAddressesType),'FurtherAddressesType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(LabelData),'LabelData',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ExportDocData),'ExportDocData',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ManifestState),'ManifestState',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DeletionState),'DeletionState',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(BookPickupRequest),'BookPickupRequest',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(BookPickupResponse),'BookPickupResponse',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(PickupDetailsType),'PickupDetailsType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(PickupAddressType),'PickupAddressType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(PickupOrdererType),'PickupOrdererType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(PickupBookingInformationType),'PickupBookingInformationType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CancelPickupRequest),'CancelPickupRequest',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CancelPickupResponse),'CancelPickupResponse',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(IdentityData_DrivingLicense_Type),'IdentityData_DrivingLicense_Type',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(IdentityData_IdentityCard_Type),'IdentityData_IdentityCard_Type',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(IdentityData_BankCard_Type),'IdentityData_BankCard_Type',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(IdentityData),'IdentityData',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(PackstationType),'PackstationType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(PostfilialeType),'PostfilialeType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ParcelShopType),'ParcelShopType',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ReadShipmentOrderResponse),'ReadShipmentOrderResponse',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(Version_Type),'Version',[triounqualifiedElement, triounqualifiedAttribute]);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CreateShipmentOrderRequest_ShipmentOrderArray),'CreateShipmentOrderRequest_ShipmentOrderArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(CreateShipmentOrderRequest_ShipmentOrderArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ValidateShipmentOrderRequest_ShipmentOrderArray),'ValidateShipmentOrderRequest_ShipmentOrderArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ValidateShipmentOrderRequest_ShipmentOrderArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(CreateShipmentOrderResponse_CreationStateArray),'CreateShipmentOrderResponse_CreationStateArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(CreateShipmentOrderResponse_CreationStateArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ValidateShipmentResponse_ValidationStateArray),'ValidateShipmentResponse_ValidationStateArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ValidateShipmentResponse_ValidationStateArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetLabelRequest_shipmentNumberArray),'GetLabelRequest_shipmentNumberArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(GetLabelRequest_shipmentNumberArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetLabelResponse_LabelDataArray),'GetLabelResponse_LabelDataArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(GetLabelResponse_LabelDataArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DoManifestRequest_shipmentNumberArray),'DoManifestRequest_shipmentNumberArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(DoManifestRequest_shipmentNumberArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DoManifestResponse_ManifestStateArray),'DoManifestResponse_ManifestStateArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(DoManifestResponse_ManifestStateArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DeleteShipmentOrderRequest_shipmentNumberArray),'DeleteShipmentOrderRequest_shipmentNumberArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(DeleteShipmentOrderRequest_shipmentNumberArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(DeleteShipmentOrderResponse_DeletionStateArray),'DeleteShipmentOrderResponse_DeletionStateArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(DeleteShipmentOrderResponse_DeletionStateArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetExportDocRequest_shipmentNumberArray),'GetExportDocRequest_shipmentNumberArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(GetExportDocRequest_shipmentNumberArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(GetExportDocResponse_ExportDocDataArray),'GetExportDocResponse_ExportDocDataArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(GetExportDocResponse_ExportDocDataArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(Statusinformation_statusMessageArray),'Statusinformation_statusMessageArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(Statusinformation_statusMessageArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ExportDocumentType_ExportDocPositionArray),'ExportDocumentType_ExportDocPositionArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ExportDocumentType_ExportDocPositionArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);
  typeRegistryInstance.Register(sNAME_SPACE,TypeInfo(ReadShipmentOrderResponse_CreationStateArray),'ReadShipmentOrderResponse_CreationStateArray');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ReadShipmentOrderResponse_CreationStateArray)].RegisterExternalPropertyName(sARRAY_STYLE,sEmbedded);

  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationType)].RegisterExternalPropertyName('_Type','Type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationEndorsement)].RegisterExternalPropertyName('_type','type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationVisualAgeCheck)].RegisterExternalPropertyName('_type','type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationDeliveryTimeframe)].RegisterExternalPropertyName('_type','type');
  typeRegistryInstance.ItemByTypeInfo[TypeInfo(ServiceconfigurationShipmentHandling)].RegisterExternalPropertyName('_type','type');


End.

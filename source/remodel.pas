
unit Remodel;

{$mode delphi}{$H+}

interface

uses
  Classes,
  SysUtils,
  DOM,
  IntrashipServicesTypes;

type

  { TRemodelRequest }

  TOnHandleChildNode = procedure(AChildNode: TDOMNode) of object;

  TRemodelRequest = class
  private
    FXMLDocument: TXMLDocument;
    FOnMonitor: TOnMonitor;
  protected
    procedure AlterChildNodeNamespaceProc(AChildnode: TDOMNode);
    procedure RemoveEmptyChildNodeProc(AChildNode: TDOMNode);
    procedure LoopChildNodes(AHandleChildNodeProc: TOnHandleChildNode); overload;
    procedure LoopChildNodes(AChildNode: TDOMNode;
                             AHandleChildNodeProc: TOnHandleChildNode); overload;
    procedure RemoveEmptyChildNodes;
    procedure AlterNamespace;

    procedure GetXMLByStream(AStream: TStream);
    procedure SetXMLToStream(AStream: TStream);
  public
    class function GetInstance(AOnMonitor: TOnMonitor = nil): TRemodelRequest;
    class procedure FreeSingletonInstance;

    destructor Destroy; override;

    procedure DoMonitor(ALog: string);
    procedure RemodelByStream(ARequest: TStream);

    property OnMonitor: TOnMonitor
      read FOnMonitor
      write FOnMonitor;
  end;


implementation

{ TRemodelRequest }

uses
  XMLRead,
  XMLWrite,
  dbugintf;

var
  remodel_request: TRemodelRequest;

procedure TRemodelRequest.GetXMLByStream(AStream: TStream);
begin
  if Assigned(FXMLDocument) then
    FreeAndNil(FXMLDocument);
  FXMLDocument := TXMLDocument.Create;

  ReadXMLFile(FXMLDocument, AStream);
end;

procedure TRemodelRequest.SetXMLToStream(AStream: TStream);
begin
  AStream.Position:=0;
  AStream.Size:=0;

  WriteXML(FXMLDocument, AStream);
end;

class function TRemodelRequest.GetInstance(AOnMonitor: TOnMonitor = nil): TRemodelRequest;
begin
  if not Assigned(remodel_request) then
    remodel_request := TRemodelRequest.Create;

  remodel_request.OnMonitor := AOnMonitor;

  Result := remodel_request;
end;

class procedure TRemodelRequest.FreeSingletonInstance;
begin
  if Assigned(remodel_request) then
    FreeAndNil(remodel_request);
end;

procedure TRemodelRequest.RemodelByStream(ARequest: TStream);
begin
  remodel_request.DoMonitor('// ReModel');
  remodel_request.DoMonitor('-----------------------------');
  remodel_request.DoMonitor('//!<-- Beginnt hier: ReModel');

  GetXMLByStream(ARequest);

  RemoveEmptyChildNodes;
  AlterNamespace;

  SetXMLToStream(ARequest);

  remodel_request.DoMonitor('// Endet hier: ReModel -->');
  remodel_request.DoMonitor('-----------------------------');
end;

procedure TRemodelRequest.AlterChildNodeNamespaceProc(AChildnode: TDOMNode);
var
  anz: integer;
begin
  if Assigned(AChildnode) then
  begin
    SendDebug(Format('NodeName: %s', [AChildnode.NodeName]));

    if AChildnode.HasAttributes then
      for anz := 0 to AChildnode.Attributes.Length-1 do
        SendDebug(Format('Attribute: %s', [AChildnode.Attributes.Item[anz].NodeName]));
  end;
end;

procedure TRemodelRequest.RemoveEmptyChildNodeProc(AChildNode: TDOMNode);
begin
  if Assigned(AChildNode) then
    if (Trim(AChildNode.TextContent) = EmptyStr) then
       AChildNode.ParentNode.RemoveChild(AChildNode);
end;

procedure TRemodelRequest.LoopChildNodes(AHandleChildNodeProc: TOnHandleChildNode);
var
  anz: integer;
  child_node: TDOMNode;
begin
  for anz := 0 to FXMLDocument.DocumentElement.ChildNodes.Count-1 do
  begin
    child_node := FXMLDocument.DocumentElement.ChildNodes.Item[anz];
    if Assigned(AHandleChildNodeProc) then
      LoopChildNodes(child_node, AHandleChildNodeProc);
  end;
end;

procedure TRemodelRequest.LoopChildNodes(AChildNode: TDOMNode;
  AHandleChildNodeProc: TOnHandleChildNode);
var
  anz: integer;
begin
  if Assigned(AChildNode) then
  begin
    if AChildNode.HasChildNodes then
      for anz := AChildNode.ChildNodes.Count-1 downto 0 do
        LoopChildNodes(AChildNode.ChildNodes.Item[anz], AHandleChildNodeProc);

    if Assigned(AHandleChildNodeProc) then
       AHandleChildNodeProc(AChildNode);
  end;
end;

procedure TRemodelRequest.RemoveEmptyChildNodes;
begin
  LoopChildNodes(RemoveEmptyChildNodeProc);
end;

procedure TRemodelRequest.AlterNamespace;
begin
  LoopChildNodes(AlterChildNodeNamespaceProc);
end;

destructor TRemodelRequest.Destroy;
begin
  if Assigned(FXMLDocument) then
    FreeAndNil(FXMLDocument);

  inherited Destroy;
end;

procedure TRemodelRequest.DoMonitor(ALog: string);
begin
  if Assigned(FOnMonitor) then
    FOnMonitor(ALog);
end;

finalization
  TRemodelRequest.FreeSingletonInstance;

end.


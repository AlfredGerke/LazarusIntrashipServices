
unit Remodel;

{$mode delphi}{$H+}

interface

uses
  Classes,
  SysUtils,
  DOM;

type

  { TRemodelRequest }

  TOnHandleChildNode = procedure(AChildNode: TDOMNode) of object;

  TRemodelRequest = class
  private
    FXMLDocument: TXMLDocument;
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
    class function GetInstance: TRemodelRequest;
    class procedure FreeSingletonInstance;

    procedure RemodelByStream(ARequest: TStream);

    destructor Destroy; override;
  end;


implementation

{ TRemodelRequest }

uses
  XMLRead,
  XMLWrite,
  Dialogs;

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

class function TRemodelRequest.GetInstance: TRemodelRequest;
begin
  if not Assigned(remodel_request) then
    remodel_request := TRemodelRequest.Create;

  Result := remodel_request;
end;

class procedure TRemodelRequest.FreeSingletonInstance;
begin
  if Assigned(remodel_request) then
    FreeAndNil(remodel_request);
end;

procedure TRemodelRequest.RemodelByStream(ARequest: TStream);
begin
  GetXMLByStream(ARequest);

  RemoveEmptyChildNodes;
  AlterNamespace;

  SetXMLToStream(ARequest);
end;

procedure TRemodelRequest.AlterChildNodeNamespaceProc(AChildnode: tDOMNode);
begin
  { TODO -oAlfred Gerke -cremodel : Hier muss tns: wenn vorhanden entfernt werden }
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

finalization
  TRemodelRequest.FreeSingletonInstance;

end.


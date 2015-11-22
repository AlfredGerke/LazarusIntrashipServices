
unit Remodel;

{$mode delphi}{$H+}

interface

uses
  Classes,
  SysUtils,
  DOM;

type

  { TRemodelRequest }

  TRemodelRequest = class
  private
    FXMLDocument: TXMLDocument;
  protected
    procedure RemoveEmptyElements(AChildNode: TDOMNode); overload;
    procedure RemoveEmptyElements; overload;
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
  XMLWrite;

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

  RemoveEmptyElements;
  AlterNamespace;

  SetXMLToStream(ARequest);
end;

procedure TRemodelRequest.RemoveEmptyElements(AChildNode: TDOMNode);
var
  anz: integer;
begin
  if AChildNode.HasChildNodes then
    for anz := AChildNode.ChildNodes.Count-1 downto 0 do
      RemoveEmptyElements(AChildNode.ChildNodes.Item[anz]);

  if (Trim(AChildNode.NodeValue) = EmptyStr) then
     AChildNode.ParentNode.RemoveChild(AChildNode);
end;

procedure TRemodelRequest.RemoveEmptyElements;
var
  anz: integer;
  child_node: TDOMNode;
begin
  for anz := 0 to FXMLDocument.DocumentElement.ChildNodes.Count-1 do
  begin
    child_node := FXMLDocument.DocumentElement.ChildNodes.Item[anz];
    RemoveEmptyElements(child_node);
  end;
end;

procedure TRemodelRequest.AlterNamespace;
begin

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


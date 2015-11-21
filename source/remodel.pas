
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
    procedure LoadXMLByStream(AStream: TStream);
  public
    class function GetInstance: TRemodelRequest;
    class procedure FreeSingletonInstance;

    procedure RemodelByStream(ARequest: TStream);
    procedure RemoveEmptyElements;
    procedure AlterNamespace;

    destructor Destroy; override;
  end;


implementation

{ TRemodelRequest }

uses
  XMLRead;

var
  remodel_request: TRemodelRequest;

procedure TRemodelRequest.LoadXMLByStream(AStream: TStream);
begin
  if Assigned(FXMLDocument) then
    FreeAndNil(FXMLDocument);
  FXMLDocument := TXMLDocument.Create;

  ReadXMLFile(FXMLDocument, AStream);
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
  LoadXMLByStream(ARequest);

  RemoveEmptyElements;
  AlterNamespace;
end;

procedure TRemodelRequest.RemoveEmptyElements;
begin

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


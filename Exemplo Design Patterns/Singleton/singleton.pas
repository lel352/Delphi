unit singleton;

interface

uses
  vcl.ExtCtrls, vcl.Forms, System.SysUtils;

type
  TSingletonINI = class
  strict Private
  class var
    FSingleton: TSingletonINI;
    FShutdown: boolean;
    FArq: Textfile;
  strict protected
    class function GetInstance: TSingletonINI; static;
  public
    class destructor Destroy;
    class function NewInstance: TObject; override;
    class property Instance: TSingletonINI read GetInstance;
    procedure FreeInstance; override;
    procedure Log(const msg: string);

  end;

implementation

{ TSingletonINI }

class destructor TSingletonINI.Destroy;
begin
  FShutdown := True;
  FreeAndNil(FSingleton);
  inherited;
end;

procedure TSingletonINI.FreeInstance;
begin
  if FShutdown then
    inherited;
end;

class function TSingletonINI.GetInstance: TSingletonINI;
var
  lDiretorio: String;
begin
  lDiretorio := ExtractFilePath(Application.ExeName);
  AssignFile(FArq, lDiretorio + 'LOG.TXT');

  if not FileExists(lDiretorio + 'LOG.TXT') then
  begin
    Rewrite(FArq);
    CloseFile(FArq);
  end;

  Result := TSingletonINI.Create;

end;

procedure TSingletonINI.Log(const msg: string);
var
  lData: string;
begin
  Append(FArq);

  lData := FormatDateTime('[dd/mm/yyyy  hh:mm:ss]', now);
  Writeln(FArq, lData + msg);
  CloseFile(FArq)
end;

class function TSingletonINI.NewInstance: TObject;
begin
  if not Assigned(FSingleton) then
    FSingleton := TSingletonINI(inherited NewInstance);
  Result := FSingleton;
end;

end.

unit uEnum;

interface

uses vcl.stdCtrls, Typinfo;

type
  TExemplo = (Algumacoisa, Algumacoisa2);
{$SCOPEDENUMS ON}
  TDias = (Domingo, Segunda, Terca, Quarta, Quinta, Sexta, Sabado);
{$SCOPEDENUMS OFF}

  TDIasHelper = record helper for TDias
    function GetValue: String;
  end;

procedure CarregarComboBox(const aComboBox: TComboBox);

implementation

uses System.SysUtils;

{ TDIasHelper }

function TDIasHelper.GetValue: String;
begin
 result := IntToStr(ord(Self));
end;

procedure CarregarComboBox(const aComboBox: TComboBox);
var
  dia: TDias;
  dias: Integer;
begin
  aComboBox.clear;
  for dia := TDias.Domingo to TDias.Sabado do
    aComboBox.Items.add(GetEnumName(TypeInfo(TDias),Integer(dia)));
end;

end.


Memo1
OI--- /-/ OI---
---OI /-/ ---OI
 OI   /-/ -OI--



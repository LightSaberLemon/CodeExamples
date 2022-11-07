unit ControlInfo;

//{$mode ObjFPC}{$H+}

interface

uses
  Windows, Classes, SysUtils;


function GetControlClass(HW: THandle): string;
function GetControlText(HW: THandle; out ReportedLength: Integer; out RawText: string): string;


implementation


uses
  Forms
  {$IFnDEF FPC}
    , Messages
  {$ENDIF}
  ;

{$IFnDEF FPC}
  type
    {$IFDEF CPU64}
      PtrInt = Int64;
    {$ELSE}
      PtrInt = Longint;
    {$ENDIF}
{$ENDIF}


function GetControlText(HW: THandle; out ReportedLength: Integer; out RawText: string): string;
var
  TextLength: Integer;
begin
  Result := '';
  TextLength := SendMessage(HW, WM_GETTEXTLENGTH, 0, 0);
  ReportedLength := TextLength;

  if TextLength <> 0 then
  begin
    SetLength(Result, TextLength shl 2 + 2);  //Allocating four times the size, might be extreme, but better safe than crash. Still not sure about UTF8 compatibility for 4-byte chars.
    SendMessage(HW, WM_GETTEXT, TextLength + 1, PtrInt(@Result[1]));

    RawText := Result;               //should be the same as the untruncated, if working properly
    SetLength(Result, TextLength);   //this will truncate the unicode string to half its length
  end;
end;


function GetControlClass(HW: THandle): string;
var
  TempCompClass: array[0..1023] of Char;
begin
  try
    if GetClassName(HW, @TempCompClass[0], Length(TempCompClass) - 1) > 0 then
      Result := string(TempCompClass)
    else
      Result := '';
  except
    on E: Exception do
      MessageBox(0, PChar('Ex on GetClassName: ' + E.Message), PChar(Application.Title), MB_ICONERROR);
  end;
end;


end.


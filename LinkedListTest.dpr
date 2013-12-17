program LinkedListTest;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  TOperativeUnit in 'TOperativeUnit.pas';

procedure Append(item : TElemType); stdcall
	external 'LinkedList.dll' name 'Append';
procedure WriteEach; stdcall
	external 'LinkedList.dll' name 'WriteEach';
procedure Seed; stdcall
	external 'LinkedList.dll' name 'Seed';

var
	bolek, stokrotka : TOperative;
begin
	Seed;
	WriteEach;
end.

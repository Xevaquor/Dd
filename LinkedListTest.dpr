program LinkedListTest;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  TOperativeUnit in 'TOperativeUnit.pas';

procedure Append(item : TElemType); stdcall
	external 'LinkedList.dll' name 'Append';
procedure WriteEach; stdcall
	external 'LinkedList.dll' name 'WriteEach';

var
	bolek, stokrotka : TOperative;
begin
	bolek.FirstName := 'Lech';
	stokrotka.FirstName := 'Monika';
	WriteEach;
	Append(bolek);
	WriteEach;
	Append(stokrotka);
	WriteEach;
end.

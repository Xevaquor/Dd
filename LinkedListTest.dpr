program LinkedListTest;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  TOperativeUnit in 'TOperativeUnit.pas';

function dodo(s :ShortString) : Integer; stdcall
	external 'LinkedList.dll' name 'dodo';

var
	x : Integer;
begin
	x := dodo('omg');
	writeln(x);
end.

unit MainApplication;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TOperativeUnit, ComCtrls;
  
procedure Append(item : TElemType); stdcall
	external 'LinkedList.dll' name 'Append';
procedure WriteEach; stdcall
	external 'LinkedList.dll' name 'WriteEach';
procedure Seed; stdcall
	external 'LinkedList.dll' name 'Seed';
procedure WriteToFile; stdcall
	external 'LinkedList.dll' name 'WriteToFile';
procedure ReadFromFile; stdcall
  external 'LinkedList.dll' name 'ReadFromFile';
function GetHead : PElem; stdcall
  external 'LinkedList.dll' name 'GetHead';

type
  TMainForm = class(TForm)
    lvOperatives: TListView;
    procedure FormCreate(Sender: TObject);
  private
    procedure FillListBox;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  ReadFromFile;
  FillListBox;
end;

procedure TMainForm.FillListBox;
var
  iter : PElem;
  item : TListItem;
begin
  lvOperatives.Items.Clear;
  iter := GetHead;

  while iter <> nil do
  begin
    item := lvOperatives.Items.Add;
    item.Caption := iter^.Val.FirstName;
    item.SubItems.Add(iter^.Val.LastName);
    item.SubItems.Add(DateToStr(iter^.Val.DateOfBirth));
    item.SubItems.Add(iter^.Val.BirthPlace);

    iter := iter^.Next;
  end;

end;

end.

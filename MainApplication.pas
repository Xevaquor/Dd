unit MainApplication;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TOperativeUnit, ComCtrls, StdCtrls;
  
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
function EqualTOperatives : PElem; stdcall
  external 'LinkedList.dll' name 'EqualTOperatives';
procedure Remove(op : TOperative); stdcall
  external 'LinkedList.dll' name 'Remove';

type
  TMainForm = class(TForm)
    lvOperatives: TListView;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtFirstName: TEdit;
    edtLastName: TEdit;
    edtNickName: TEdit;
    dtpBirthDate: TDateTimePicker;
    edtBirthPlace: TEdit;
    Label5: TLabel;
    btnAddOperative: TButton;
    btnDelete: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnAddOperativeClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    procedure FillListBox;
    function ValidateAdd : Bool;
    function OperativeFromSelected : TOperative;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

function TMainForm.ValidateAdd : Bool;
begin
  Result := (Length(edtFirstName.Text) > 0) and
            (Length(edtLastName.Text) > 0) and
            (Length(edtNickName.Text) > 0) and
            (Length(edtBirthPlace.Text) > 0);
end;

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
    item.SubItems.Add(iter^.Val.NickName);
    item.SubItems.Add(DateToStr(iter^.Val.DateOfBirth));
    item.SubItems.Add(iter^.Val.BirthPlace);

    iter := iter^.Next;
  end;

end;

procedure TMainForm.btnAddOperativeClick(Sender: TObject);
var
  row : TOperative;
begin
  if not ValidateAdd then
  begin
    ShowMessage('Podane dane są nieprawidłowe');
    Exit;
  end;
  row.FirstName := edtFirstName.Text;
  row.LastName := edtLastName.Text;
  row.NickName := edtNickName.Text;
  row.DateOfBirth := dtpBirthDate.Date;
  row.BirthPlace := edtBirthPlace.Text;

  Append(row);
  WriteToFile;
  FillListBox;

end;

function TMainForm.OperativeFromSelected : TOperative;
var
  op : TOperative;
  i : Integer;
begin
  for i := 0 to lvOperatives.Items.Count - 1 do
  begin
    if lvOperatives.Items[i].Selected then //DAFUQ
      begin
        op.FirstName := lvOperatives.Items[i].Caption;
        op.LastName := lvOperatives.Items[i].SubItems[0];
        op.NickName := lvOperatives.Items[i].SubItems[1];
        op.DateOfBirth := StrToDate(lvOperatives.Items[i].SubItems[2]);
        op.BirthPlace := lvOperatives.Items[i].SubItems[3];
        Result := op;
        Exit;
      end;
  end;
end;

procedure TMainForm.btnDeleteClick(Sender: TObject);
var
  op : TOperative;
begin
  if lvOperatives.Selected <> nil then
  begin
    op := OperativeFromSelected;
    Remove(op);
    WriteToFile;
    FillListBox;
  end;
end;

end.

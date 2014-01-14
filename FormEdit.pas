unit FormEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  System.RegularExpressions, DateUtils, Types, TOperativeUnit, Vcl.ExtDlgs;

procedure Append(item : TElemType); stdcall
	external 'LinkedList.dll' name 'Append';

type
  TForm2 = class(TForm)
    edtFirstName: TEdit;
    Label1: TLabel;
    edtLastName: TEdit;
    edtNickName: TEdit;
    edtPlaceOfBirth: TEdit;
    dtpBirthDate: TDateTimePicker;
    Nazwisko: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    epFirstName: TLabel;
    epLastName: TLabel;
    epNickName: TLabel;
    epDateOfBirth: TLabel;
    epPlaceOfBirth: TLabel;
    btnAdd: TButton;
    btnClose: TButton;
    edtImagePath: TEdit;
    btnSelectImage: TButton;
    Label2: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure btnAddClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSelectImageClick(Sender: TObject);
  private
    RealFileName : String;
    function ValidateForm : Boolean;
  public
    OperativeBeingEdited : POperative;
  end;

var
  Form2: TForm2;

implementation

function TForm2.ValidateForm: Boolean;
var
isValid, tmp : Boolean;
namePattern : string;
regex : TRegEx;
begin
     isValid := True;
     namePattern := '^[a-zA-z\-\ Œ£êó³œ¹¿Ÿæñ]+$';
     regex.Create(namePattern);

     tmp := regex.IsMatch(edtFirstName.Text, namePattern);
     epFirstName.Visible := not tmp;
     isValid := isValid and tmp;

     tmp := regex.IsMatch(edtLastName.Text);
     epLastName.Visible := not tmp;
     isValid := isValid and tmp;

     tmp := regex.IsMatch(edtNickName.Text);
     epNickName.Visible := not tmp;
     isValid := isValid and tmp;

     tmp := regex.IsMatch(edtPlaceOfBirth.Text);
     epPlaceOfBirth.Visible := not tmp;
     isValid := isValid and tmp;

     tmp := (CompareDate( dtpBirthDate.Date, Now) <> GreaterThanValue);
     epDateOfBirth.Visible := not tmp;
     isValid := isValid and tmp;

     Result := isValid;
end;


{$R *.dfm}

procedure TForm2.btnAddClick(Sender: TObject);
begin
     if ValidateForm then
     begin
       //TODO dodaj co trzeba
       OperativeBeingEdited^.FirstName := edtFirstName.Text;
       OperativeBeingEdited^.LastName := edtLastName.Text;
       OperativeBeingEdited^.NickName := edtNickName.Text;
       OperativeBeingEdited^.BirthPlace := edtPlaceOfBirth.Text;
       OperativeBeingEdited^.DateOfBirth := dtpBirthDate.DateTime;
       OperativeBeingEdited^.ImagePath := RealFileName;

       Close;

     end;
end;

procedure TForm2.btnCloseClick(Sender: TObject);
begin
     OperativeBeingEdited := nil;
     Close;
end;

procedure TForm2.btnSelectImageClick(Sender: TObject);
var
unique : TGuid;
begin

     if OpenPictureDialog1.Execute then
     begin
          CreateGUID(unique);
         RealFileName := guidTostring(unique) + '.bmp';
         edtImagePath.Text := OpenPictureDialog1.FileName;
          CopyFile(PChar( OpenPictureDialog1.FileName),  PChar(GetCurrentDir + '\\media\\' + RealFileName ),False );
     end;
end;

end.

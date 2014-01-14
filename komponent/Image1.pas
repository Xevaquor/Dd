unit Image1;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.ExtCtrls;

type
  TImage1 = class(TImage)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    constructor Create(AOwner : TComponent); override;
    procedure SetDefaultImage(path: String);
  published
    { Published declarations }
  end;

procedure Register;

implementation


constructor TImage1.Create(AOwner : TComponent);
begin
     inherited Create(AOwner);

   // SetDefaultImage('xd');

end;

procedure TImage1.SetDefaultImage(path : String);
begin
try
        begin

     if FileExists(path) then
        Picture.LoadFromFile(path)
     else
         Picture.LoadFromFile(GetCurrentDir + '\\default.bmp');
             end;
finally
  begin


  end;
end;
end;

procedure Register;
begin
  RegisterComponents('Samples', [TImage1]);
end;

end.








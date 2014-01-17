unit Image17;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.ExtCtrls, JPEG;

type
  TImage17 = class(TImage)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    procedure SetDefaultImage(path, defaultImg: String);
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure TImage17.SetDefaultImage(path, defaultImg: String);
begin
  try
    begin

      if FileExists(path) then
        Picture.LoadFromFile(path)
      else if FileExists(defaultImg) then
        Picture.LoadFromFile(defaultImg)
    end;
  finally
    begin

    end;
  end;
end;

procedure Register;
begin
  RegisterComponents('Samples', [TImage17]);
end;

end.

unit Notenumrechner;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Actions,
  Vcl.ActnList, Vcl.Menus;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    MainMenu1: TMainMenu;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;
  gnoten, faecher : integer;
  gnoten1, faecher1 : real;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
begin

  if strtoint(Edit1.Text) > 15 then beep
  else
    begin

      if strtoint(Edit1.Text) < 0 then beep

      else
      begin

      if Button2.Caption='Berechne meinen Schnitt!' then
        begin
          gnoten := strtoint(Edit1.Text)*2 + gnoten;
          faecher := faecher + 2;
          Edit1.Text := '';
        end

      else
      begin
        gnoten:= strtoint(Edit1.Text) + gnoten;
        Edit1.Text := '';
        Button2.enabled:=true;
        faecher := faecher + 1;

      end;
      end;
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Label2.Caption:='Gebe nun die Noten deiner Lks ein und drücke "Berechne meinen Schnitt!"';
  Label2.Font.size:=12;
  if Button2.Caption='Berechne meinen Schnitt!' then
    begin
       gnoten1 := round(gnoten);                     //Praktisch int to real, da int aber ohne Kommazahl
       faecher1 := round(faecher);
       gnoten1 := 17 - gnoten1/faecher1;
       gnoten1 := gnoten1/3;
       Label4.Caption := floattostr(gnoten1);
       Label4.Visible:=True;
       Button1.Visible:=False;
       Button2.Visible:=False;
       Edit1.Visible:=False;
       Label2.Caption:='Dein Notenschnitt lautet: ';
    end;
    Button2.Caption:='Berechne meinen Schnitt!';
    Button1.Default:=True;
  end;

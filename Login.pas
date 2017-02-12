unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private-Deklarationen }
    // Made by Andro 2k17
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;
  bn, pw, tester, nbn, npw{,path} : string;
  list : TStringList;
  zeilennr, kappa : Integer;
  Bnvf, Anef {(Anmeldung erfolgt?)} : boolean;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
begin
  bn := Edit1.Text;
  pw := Edit2.Text;
  list := TStringList.Create;
  //path := 'C:\Benutzer\HP\Desktop\Delphi-Projekte\LogIn';
  //list.SaveToFile('Logs.txt');

  {try
      list.LoadFromFile('logs.txt');
      while tester <> 'Benutzer: '+ bn do
        begin
          for zeilennr := 1 to list.Count-1 do
            begin
              tester := list[zeilennr];
              if tester = 'Benutzer: '+ bn then showmessage ('Anmeldung erfolgt');
              //else showmessage ('Anmeldung fehlgeschlagen Benutzername oder Passwort falsch');
            end;
            //if tester <> bn then showmessage ('Benutzername oder Passwort falsch');
        end;
  finally
    list.free;
  end;                    }



  list.LoadFromFile('Logs.txt');
  kappa := list.Count div 2;
  anef := false;

    try
      list.LoadFromFile('logs.txt');
          for zeilennr := 0 to kappa-1 do
            begin
              if list[zeilennr*2] = 'Benutzer: '+ bn then
              begin
                if list[zeilennr*2 + 1] = 'Passwort: '+ pw then
                anef := true;
                //Label3.Caption := 'Anmeldung erfolgt';
              end;
            end;
  finally
    //list.free;
  end;
  if anef = true then
  showmessage ('Anmeldung erfolgt!') else showmessage ('Anmeldung fehlgeschlagen Benutzername oder Passwort falsch');
  Edit1.Text := '';
  Edit2.Text := '';


  //try

  {zeilennr := 0;
  list.LoadFromFile('Logs.txt');
  begin
    if readln('logs.txt', zeilennr);
    zeilennr := zeilennr + 1;
  end;}
  //for zeilennr := 0 to list.Count-1 do
   // if readln('logs.txt, zeilennr') = bn then showmessage('nice');
  //finally
   //list.Free;
  //end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Label1.Caption := 'Wähle einen Benutzernamen';
  Label2.Caption := 'Wähle ein Passwort';
  Edit1.Text := '';
  Edit2.Text := '';
  Button1.Visible := False;
  Button2.Visible := False;
  Button3.Visible := True;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin


  bnvf := true;
  nbn := Edit1.Text;
  npw := Edit2.Text;
  list := TStringList.Create;
  list.LoadFromFile('Logs.txt');
  kappa := list.Count div 2;
  //if kappa = 1 then kappa := 2;
  if length(Edit1.Text) >= 6 then
  begin
    if length(Edit2.Text) >= 6 then
      begin
        try
          list.LoadFromFile('Logs.txt');
          for zeilennr := 0 to kappa-1 do
            begin
              if list[zeilennr*2] = 'Benutzer: '+ nbn then
                begin
                  bnvf := false;
                  showmessage ('Benutzername bereits vergeben');
                end;
            end;
        finally
          //list.Free;
        end;
          if bnvf = true then
            begin
              list.LoadFromFile('Logs.txt');
              list.add ('Benutzer: '+ nbn);
              list.Add('Passwort: '+ npw);
              //list.Add('');
              list.SaveToFile('Logs.txt');
              showmessage ('Du hast dich erfolgreich angemeldet!');
              Button4.Visible := True;
              Button3.Enabled := False;
              Edit1.Text := '';
              Edit2.Text := '';
            end;
      end
      else showmessage ('Passwort zu kurz min. 6 Zeichen erforderlich');
  end
  else showmessage ('Benutzername zu kurz min. 6 Zeichen erforderlich');
end;




        {

  nbn := Edit1.Text;
  npw := Edit2.Text;
  list := TStringList.Create;
  if length(Edit1.Text) >= 6 then
  begin
    if length(Edit2.Text) >= 6 then
      begin
        list.LoadFromFile('Logs.txt');
        list.add ('Benutzer: '+ nbn);
        list.Add('Passwort: '+ npw);
        //list.Add('');
        list.SaveToFile('Logs.txt');
        showmessage ('Du hast dich erfolgreich angemeldet!');
        Button4.Visible := True;
        Button3.Enabled := False;
        Edit1.Text := '';
        Edit2.Text := '';
      end
      else showmessage ('Passwort zu kurz min. 6 Zeichen erforderlich');
  end
  else showmessage ('Benutzername zu kurz min. 6 Zeichen erforderlich');
end;            }

procedure TForm1.Button4Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Button1.Visible := True;
  Button3.Visible := False;
  Button2.Visible := False;
  Button4.Visible := False;
  Label1.Caption := 'Login-Name: ';
  Label2.Caption := 'Passwort: ';
end;


end.

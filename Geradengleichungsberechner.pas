unit Geradengleichungsberechner;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button3: TButton;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;
  x1, x2, y1, y2, yg, xg, m, b : double;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if label8.Caption = 'buttonpressed' then
  begin
    y1 := strtofloat(Edit1.Text);
    Edit1.Enabled := False;
    Button1.Enabled := False;
    Button2.Default := True;
  end
  else
    begin
      x1 := strtofloat(Edit1.Text);
      label8.Caption := 'buttonpressed';
    end;
  Edit1.Text := '';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

  if label9.Caption = 'buttonpressed' then
  begin
    y2 := strtofloat(Edit2.Text);
    Edit2.Enabled := False;
    Button2.Enabled := False;
    Button3.Default := True;
  end
  else
    begin
      x2 := strtofloat(Edit2.Text);
      label9.Caption := 'buttonpressed';
      if x1 = x2 then
        begin
          beep;
          showmessage('Du darfst nicht denselben Punkt zweimal eingeben!!');
          Button2.Enabled := False;
          Button3.Enabled := False;
          Edit2.Enabled := False;
        end;
    end;
  Edit2.Text := '';

//  if Button2.Enabled = False and Button1.Enabled = False then
//   begin
//        yg := y2-y1;
//      xg := x2-x1;
//      m := yg / xg;
//      b := y1 - m*x1;
//      label10.Caption := 'f(x)=' + floattostr(m)+ 'x' + floattostr(b);
//  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
        yg := y2-y1;
        xg := x2-x1;
        m := yg / xg;
        b := y1 - m*x1;
        Label7.Visible := True;
        if b > 0 then
        label10.Caption := 'f(x)= ' + floattostrf(m,ffnumber,4,2)+ ' x + ' + floattostrf(b,ffnumber,4,2)
          else if b < 0 then
            label10.Caption := 'f(x)= ' + floattostrf(m,ffnumber,4,2)+ ' x ' + floattostrf(b,ffnumber,4,2)
              else
                label10.Caption := 'f(x)= ' + floattostrf(m,ffnumber,4,2)+ ' x ';
        Label10.Visible := True;
        Button3.Enabled := False;
end;

end.

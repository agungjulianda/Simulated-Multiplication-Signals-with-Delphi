unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a1,a2,f1,f2,xt,yt,ft,dt: double;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
n,x:double;
begin
Series1.Clear;
x:=1;
dt:= 0.01;
a1 := strtoint(Edit1.Text);
f1 := strtoint(Edit2.Text);

for n := 0 to x do
  begin
    xt := a1*sin(2*pi*f1*n);
    Series1.AddXY(n,xt) ;
    n:= n+dt;
  end;




end;

procedure TForm1.Button2Click(Sender: TObject);
var
n,x:double;
begin
Series2.Clear;
x:=1;
dt:= 0.01;
a2 := strtoint(Edit4.Text);
f2 := strtoint(Edit5.Text);


for n := 0 to x do
  begin
    yt := a2*cos(2*pi*f2*n);
    Series2.AddXY(n,yt)  ;
    n:= n+dt;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
n,x:double;
begin
Series3.Clear;
dt:=0.01;
x:=0;


for n := 0 to x do
  begin
    ft := (a2*sin(2*pi*f2*n)) * (a1*cos(2*pi*f1*n)) ;
    Series3.AddXY(n,ft) ;
    n:= n+dt;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit4.Clear;
Edit5.Clear;
Series1.Clear;
Series2.Clear;
Series3.Clear;
end;

end.

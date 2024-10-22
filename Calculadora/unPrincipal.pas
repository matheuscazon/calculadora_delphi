unit unPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Styles, Vcl.Themes;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    txtNum1: TEdit;
    Label2: TLabel;
    txtNum2: TEdit;
    btSomar: TButton;
    btSubtrair: TButton;
    btMultiplicar: TButton;
    btDividir: TButton;
    Label3: TLabel;
    txtResultado: TEdit;
    opcVisual: TRadioGroup;
    procedure btSomarClick(Sender: TObject);
    procedure btSubtrairClick(Sender: TObject);
    procedure btMultiplicarClick(Sender: TObject);
    procedure btDividirClick(Sender: TObject);
    procedure opcVisualClick(Sender: TObject);
  private
    { Private declarations }
    function calcularResultado(num1, num2: Real; operacao: String): Real;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btDividirClick(Sender: TObject);
begin
  if txtNum2.Text = '0' then
    ShowMessage('Impossível dividir por zero!')
  else
  txtResultado.Text := FloatToStr(calcularResultado(StrToFloat(txtNum1.Text), StrToFloat(txtNum2.Text), 'dividir'));
end;

procedure TForm1.btMultiplicarClick(Sender: TObject);
begin
  txtResultado.Text := FloatToStr(calcularResultado(StrToFloat(txtNum1.Text), StrToFloat(txtNum2.Text), 'multiplicar'));
end;

procedure TForm1.btSomarClick(Sender: TObject);
begin
  txtResultado.Text := FloatToStr(calcularResultado(StrToFloat(txtNum1.Text), StrToFloat(txtNum2.Text), 'somar'));
end;

procedure TForm1.btSubtrairClick(Sender: TObject);
begin
  txtResultado.Text := FloatToStr(calcularResultado(StrToFloat(txtNum1.Text), StrToFloat(txtNum2.Text), 'subtrair'));
end;

function TForm1.calcularResultado(num1, num2: Real; operacao: String): Real;
var
  resultado: Real;
begin

  if operacao = 'somar' then
    resultado:= num1 + num2;

  if operacao = 'subtrair' then
    resultado:= num1 - num2;

  if operacao = 'multiplicar' then
    resultado:= num1 * num2;

  if operacao = 'dividir' then
    resultado:= num1 / num2;

  Result := resultado;
end;

procedure TForm1.opcVisualClick(Sender: TObject);
begin
    case opcVisual.ItemIndex of
       0: TStyleManager.SetStyle('Windows');
       1: TStyleManager.SetStyle('Glow');
       2: TStyleManager.SetStyle('Aqua Light Slate');
    end;

end;

end.

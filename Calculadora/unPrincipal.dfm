object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 405
  ClientWidth = 247
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 53
    Height = 15
    Caption = 'N'#250'mero 1'
  end
  object Label2: TLabel
    Left = 32
    Top = 88
    Width = 53
    Height = 15
    Caption = 'N'#250'mero 2'
  end
  object Label3: TLabel
    Left = 32
    Top = 208
    Width = 52
    Height = 15
    Caption = 'Resultado'
  end
  object txtNum1: TEdit
    Left = 32
    Top = 45
    Width = 166
    Height = 23
    TabOrder = 0
  end
  object txtNum2: TEdit
    Left = 32
    Top = 109
    Width = 166
    Height = 23
    TabOrder = 1
  end
  object btSomar: TButton
    Left = 32
    Top = 152
    Width = 37
    Height = 33
    Caption = '+'
    TabOrder = 2
    OnClick = btSomarClick
  end
  object btSubtrair: TButton
    Left = 75
    Top = 152
    Width = 37
    Height = 33
    Caption = '-'
    TabOrder = 3
    OnClick = btSubtrairClick
  end
  object btMultiplicar: TButton
    Left = 118
    Top = 152
    Width = 37
    Height = 33
    Caption = '*'
    TabOrder = 4
    OnClick = btMultiplicarClick
  end
  object btDividir: TButton
    Left = 161
    Top = 152
    Width = 37
    Height = 33
    Caption = '/'
    TabOrder = 5
    OnClick = btDividirClick
  end
  object txtResultado: TEdit
    Left = 32
    Top = 229
    Width = 166
    Height = 23
    TabOrder = 6
  end
  object opcVisual: TRadioGroup
    Left = 32
    Top = 258
    Width = 166
    Height = 121
    Caption = 'alterar o Visual da Calculadora'
    ItemIndex = 0
    Items.Strings = (
      'Windows Classic'
      'Glow'
      'Aqua Light Slate')
    TabOrder = 7
    OnClick = opcVisualClick
  end
end

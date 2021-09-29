object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 540
  ClientWidth = 660
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 25
  object Button_Executar: TButton
    Left = 24
    Top = 47
    Width = 129
    Height = 81
    Caption = 'Executar'
    TabOrder = 0
    OnClick = Button_ExecutarClick
  end
  object Button_TTask: TButton
    Left = 159
    Top = 47
    Width = 129
    Height = 81
    Caption = 'TTask'
    TabOrder = 1
    OnClick = Button_TTaskClick
  end
  object Edit_Horas: TEdit
    Left = 16
    Top = 8
    Width = 313
    Height = 33
    TabOrder = 2
  end
  object Button1: TButton
    Left = 80
    Top = 225
    Width = 161
    Height = 81
    Caption = 'Cria'#231#227'o tarefas'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 384
    Top = 215
    Width = 233
    Height = 81
    Caption = 'Resultado das tarefas'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Edit_Valor1: TEdit
    Left = 32
    Top = 312
    Width = 121
    Height = 33
    TabOrder = 5
    Text = '0'
  end
  object Edit_Valor2: TEdit
    Left = 159
    Top = 312
    Width = 121
    Height = 33
    TabOrder = 6
    Text = '0'
  end
  object Edit_Resultado: TEdit
    Left = 431
    Top = 312
    Width = 121
    Height = 33
    TabOrder = 7
    Text = '0'
  end
  object ActivityIndicator1: TActivityIndicator
    Left = 456
    Top = 368
    IndicatorSize = aisXLarge
  end
end

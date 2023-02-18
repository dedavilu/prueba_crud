object FormBclientes: TFormBclientes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'BUSCAR CLIENTE'
  ClientHeight = 276
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 545
    Height = 223
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '1'
    Visible = False
  end
  object Button1: TButton
    Left = 424
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    Visible = False
  end
  object Edit2: TEdit
    Left = 280
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'A'
    Visible = False
  end
  object Edit3: TEdit
    Left = 152
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'A'
    Visible = False
  end
  object DBNavigator1: TDBNavigator
    Left = 96
    Top = 237
    Width = 376
    Height = 33
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 5
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ClientDataSet1
    Left = 424
    Top = 216
  end
end

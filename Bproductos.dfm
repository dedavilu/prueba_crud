object FormBproducto: TFormBproducto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'BUSCAR PRODUCTO'
  ClientHeight = 336
  ClientWidth = 495
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
  object DBNavigator1: TDBNavigator
    Left = 56
    Top = 295
    Width = 376
    Height = 33
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 51
    Width = 473
    Height = 230
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 2
    Visible = False
  end
  object Button2: TButton
    Left = 152
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
    Visible = False
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 248
    Top = 10
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit2'
    Visible = False
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ClientDataSet2
    Left = 16
    Top = 290
  end
end

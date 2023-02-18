object FormNproductos: TFormNproductos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'PRODUCTOS'
  ClientHeight = 317
  ClientWidth = 486
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
  object Label1: TLabel
    Left = 37
    Top = 69
    Width = 118
    Height = 19
    Caption = 'C'#243'digo Producto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 37
    Top = 142
    Width = 125
    Height = 19
    Caption = 'Nombre Producto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 37
    Top = 215
    Width = 133
    Height = 19
    Caption = 'Valor Del Producto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 128
    Top = 273
    Width = 97
    Height = 36
    Caption = 'Guardar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBEditCodigo: TDBEdit
    Left = 183
    Top = 61
    Width = 257
    Height = 27
    DataField = 'producto'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = DBEditCodigoKeyPress
  end
  object DBEditNombre: TDBEdit
    Left = 183
    Top = 134
    Width = 257
    Height = 27
    CharCase = ecUpperCase
    DataField = 'nombre_producto'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyPress = DBEditNombreKeyPress
  end
  object DBEditValor: TDBEdit
    Left = 183
    Top = 207
    Width = 257
    Height = 27
    CharCase = ecUpperCase
    DataField = 'valor'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnKeyPress = DBEditValorKeyPress
  end
  object Button2: TButton
    Left = 248
    Top = 273
    Width = 97
    Height = 36
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ClientDataSet2
    Left = 400
    Top = 272
  end
end

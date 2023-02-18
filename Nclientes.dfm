object FormNClientes: TFormNClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'CLIENTES'
  ClientHeight = 280
  ClientWidth = 479
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
    Left = 29
    Top = 36
    Width = 147
    Height = 19
    Caption = 'Identificaci'#243'n Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 29
    Top = 93
    Width = 140
    Height = 19
    Caption = 'Nombre y Apellidos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 29
    Top = 158
    Width = 144
    Height = 19
    Caption = 'Direcci'#243'n Residencia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 112
    Top = 208
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
  object DBEditNombre: TDBEdit
    Left = 192
    Top = 85
    Width = 257
    Height = 27
    CharCase = ecUpperCase
    DataField = 'nombre_cliente'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEditDireccion: TDBEdit
    Left = 192
    Top = 150
    Width = 257
    Height = 27
    CharCase = ecUpperCase
    DataField = 'direccion'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEditIdentificacion: TDBEdit
    Left = 192
    Top = 33
    Width = 257
    Height = 27
    CharCase = ecUpperCase
    DataField = 'cliente'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 3
    OnKeyPress = DBEditIdentificacionKeyPress
  end
  object Button2: TButton
    Left = 280
    Top = 208
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
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ClientDataSet1
    Left = 40
    Top = 216
  end
end

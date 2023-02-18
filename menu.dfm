object FormMenu: TFormMenu
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Menu Principal'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 96
    Top = 56
    object CL1: TMenuItem
      Caption = 'FACTURA'
      OnClick = CL1Click
    end
    object PRODUCTOS1: TMenuItem
      Caption = 'CLIENTES'
      OnClick = PRODUCTOS1Click
    end
    object PRODUCTOS2: TMenuItem
      Caption = 'PRODUCTOS'
      OnClick = PRODUCTOS2Click
    end
  end
end

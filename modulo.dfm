object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 343
  Width = 722
  object FDQuery1: TFDQuery
    Connection = ClienteConnection
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 48
    Top = 96
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    Left = 48
    Top = 152
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 48
    Top = 216
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 128
    Top = 8
  end
  object ClienteConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=cliente')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 11
  end
  object FDQuery2: TFDQuery
    Connection = ClienteConnection
    SQL.Strings = (
      'SELECT * FROM PRODUCTO')
    Left = 152
    Top = 96
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = FDQuery2
    Left = 152
    Top = 152
  end
  object ClientDataSet2: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 152
    Top = 216
  end
  object FDQuery3: TFDQuery
    Connection = ClienteConnection
    SQL.Strings = (
      
        'SELECT * FROM producto WHERE nombre_producto='#39'RESMA TAMA'#209'O CARTA' +
        #39)
    Left = 256
    Top = 96
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = FDQuery3
    Left = 256
    Top = 152
  end
  object ClientDataSet3: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'NOM_PRODUCTO'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider3'
    Left = 256
    Top = 216
  end
  object FDQuery4: TFDQuery
    Connection = ClienteConnection
    SQL.Strings = (
      
        'SELECT * FROM cliente WHERE cliente=:id_cliente AND nombre_clien' +
        'te=:nom_cliente AND direccion=:dire')
    Left = 352
    Top = 96
    ParamData = <
      item
        Position = 1
        Name = 'ID_CLIENTE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'NOM_CLIENTE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'DIRE'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DataSetProvider4: TDataSetProvider
    DataSet = FDQuery4
    Left = 352
    Top = 152
  end
  object ClientDataSet4: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ID_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOM_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DIRE'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider4'
    Left = 352
    Top = 216
  end
  object ClientDataSet5: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider5'
    Left = 440
    Top = 216
  end
  object DataSetProvider5: TDataSetProvider
    DataSet = FDQuery5
    Left = 440
    Top = 152
  end
  object FDQuery5: TFDQuery
    Connection = ClienteConnection
    SQL.Strings = (
      'SELECT * FROM CABEZA_FACTURA')
    Left = 440
    Top = 96
  end
  object FDQuery6: TFDQuery
    Connection = ClienteConnection
    SQL.Strings = (
      'SELECT * FROM DETALLE_FACTURAS')
    Left = 528
    Top = 96
  end
  object DataSetProvider6: TDataSetProvider
    DataSet = FDQuery6
    Left = 528
    Top = 152
  end
  object ClientDataSet6: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider6'
    Left = 528
    Top = 216
  end
  object FDQuery7: TFDQuery
    Connection = ClienteConnection
    SQL.Strings = (
      'SELECT  COUNT (*) FROM CABEZA_FACTURA ')
    Left = 616
    Top = 96
  end
  object DataSetProvider7: TDataSetProvider
    DataSet = FDQuery7
    Left = 616
    Top = 152
  end
  object ClientDataSet7: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider7'
    Left = 624
    Top = 216
  end
end

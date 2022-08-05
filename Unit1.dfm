object Form1: TForm1
  Left = 1514
  Top = 0
  Caption = 'Form1'
  ClientHeight = 1629
  ClientWidth = 2291
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 2169
    Height = 305
    DataSource = DataSource4
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Memo1: TMemo
    Left = 376
    Top = 512
    Width = 1401
    Height = 953
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Button1: TButton
    Left = 376
    Top = 472
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object DataSource2: TDataSource
    Left = 120
    Top = 1128
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=SQLite_Demo')
    Connected = True
    Left = 1288
    Top = 360
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM {id Orders}')
    Left = 888
    Top = 380
  end
  object FDQuery2: TFDQuery
    Active = True
    MasterSource = DataSource3
    MasterFields = 'OrderID'
    DetailFields = 'OrderID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM {id Order Details} WHERE OrderID = :OrderID')
    Left = 820
    Top = 600
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 11077
      end>
  end
  object DataSource3: TDataSource
    DataSet = FDQuery1
    Left = 988
    Top = 496
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = FDQuery1
    Left = 604
    Top = 376
  end
  object ClientDataSet2: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 1168
    Top = 936
    object ClientDataSet2OrderID: TAutoIncField
      FieldName = 'OrderID'
      Origin = 'OrderID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ClientDataSet2CustomerID: TStringField
      FieldName = 'CustomerID'
      Origin = 'CustomerID'
      FixedChar = True
      Size = 5
    end
    object ClientDataSet2EmployeeID: TIntegerField
      FieldName = 'EmployeeID'
      Origin = 'EmployeeID'
    end
    object ClientDataSet2OrderDate: TDateTimeField
      FieldName = 'OrderDate'
      Origin = 'OrderDate'
    end
    object ClientDataSet2RequiredDate: TDateTimeField
      FieldName = 'RequiredDate'
      Origin = 'RequiredDate'
    end
    object ClientDataSet2ShippedDate: TDateTimeField
      FieldName = 'ShippedDate'
      Origin = 'ShippedDate'
    end
    object ClientDataSet2ShipVia: TIntegerField
      FieldName = 'ShipVia'
      Origin = 'ShipVia'
    end
    object ClientDataSet2Freight: TCurrencyField
      FieldName = 'Freight'
      Origin = 'Freight'
    end
    object ClientDataSet2ShipName: TStringField
      FieldName = 'ShipName'
      Origin = 'ShipName'
      Size = 40
    end
    object ClientDataSet2ShipAddress: TStringField
      FieldName = 'ShipAddress'
      Origin = 'ShipAddress'
      Size = 60
    end
    object ClientDataSet2ShipCity: TStringField
      FieldName = 'ShipCity'
      Origin = 'ShipCity'
      Size = 15
    end
    object ClientDataSet2ShipRegion: TStringField
      FieldName = 'ShipRegion'
      Origin = 'ShipRegion'
      Size = 15
    end
    object ClientDataSet2ShipPostalCode: TStringField
      FieldName = 'ShipPostalCode'
      Origin = 'ShipPostalCode'
      Size = 10
    end
    object ClientDataSet2ShipCountry: TStringField
      FieldName = 'ShipCountry'
      Origin = 'ShipCountry'
      Size = 15
    end
    object ClientDataSet2FDQuery2: TDataSetField
      FieldName = 'FDQuery2'
    end
    object ClientDataSet2FDQuery4: TDataSetField
      FieldName = 'FDQuery4'
    end
    object ClientDataSet2FDQuery3: TDataSetField
      FieldName = 'FDQuery3'
    end
  end
  object DataSource4: TDataSource
    DataSet = ClientDataSet2
    Left = 920
    Top = 928
  end
  object FDQuery3: TFDQuery
    Active = True
    MasterSource = DataSource3
    MasterFields = 'OrderID'
    DetailFields = 'OrderID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM {id Order Details} WHERE OrderID = :OrderID')
    Left = 1032
    Top = 624
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 11077
      end>
  end
  object FDQuery4: TFDQuery
    Active = True
    MasterSource = DataSource3
    MasterFields = 'OrderID'
    DetailFields = 'OrderID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM {id Order Details} WHERE OrderID = :OrderID')
    Left = 1192
    Top = 616
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 11077
      end>
  end
  object FDMemTable1: TFDMemTable
    MasterFields = 'OrderID'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    LocalSQL = FDLocalSQL1
    Left = 1216
    Top = 792
  end
  object FDLocalSQL1: TFDLocalSQL
    Connection = FDConnection1
    DataSets = <>
    Left = 920
    Top = 792
  end
end

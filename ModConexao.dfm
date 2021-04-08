object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 421
  Width = 413
  object SQLConnection: TSQLConnection
    ConnectionName = 'financeiro'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver260.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver260.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'Database=financeiro'
      'User_Name=root'
      'Password=1234'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'HostName=localhost')
    Connected = True
    Left = 62
    Top = 32
  end
  object sdsCaixa: TSQLDataSet
    CommandText = 'SELECT *  FROM CAIXA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 62
    Top = 104
  end
  object dspCaixa: TDataSetProvider
    DataSet = sdsCaixa
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 178
    Top = 104
  end
  object cdsCaixa: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCaixa'
    Left = 303
    Top = 104
    object cdsCaixaid: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCaixanumero_doc: TStringField
      DisplayLabel = 'Doc'
      FieldName = 'numero_doc'
      Required = True
    end
    object cdsCaixadescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 200
    end
    object cdsCaixavalor: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      currency = True
      Precision = 20
      Size = 2
    end
    object cdsCaixatipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsCaixadt_cadastro: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dt_cadastro'
      Required = True
    end
  end
  object sdsContas_Pagar: TSQLDataSet
    CommandText = 'SELECT *  FROM CONTAS_PAGAR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 62
    Top = 176
  end
  object dspContas_Pagar: TDataSetProvider
    DataSet = sdsContas_Pagar
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 178
    Top = 176
  end
  object cdsContas_Pagar: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContas_Pagar'
    Left = 301
    Top = 176
    object cdsContas_Pagarid: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContas_Pagarnumero_doc: TStringField
      DisplayLabel = 'Nr. Doc'
      FieldName = 'numero_doc'
      Required = True
    end
    object cdsContas_Pagardescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 200
    end
    object cdsContas_Pagarparcela: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'parcela'
      Required = True
    end
    object cdsContas_Pagarvlr_parcela: TFMTBCDField
      DisplayLabel = 'Valor da Parcela'
      FieldName = 'vlr_parcela'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdsContas_Pagarvlr_compra: TFMTBCDField
      DisplayLabel = 'Valor da Compra'
      FieldName = 'vlr_compra'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdsContas_Pagarvlr_abatido: TFMTBCDField
      DisplayLabel = 'Valor abatido'
      FieldName = 'vlr_abatido'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdsContas_Pagardt_cadastro: TDateField
      DisplayLabel = 'Dt Cadastro'
      FieldName = 'dt_cadastro'
      Required = True
    end
    object cdsContas_Pagardt_compra: TDateField
      DisplayLabel = 'Dt Compra'
      FieldName = 'dt_compra'
      Required = True
    end
    object cdsContas_Pagardt_vencimento: TDateField
      DisplayLabel = 'Dt Vencimento'
      FieldName = 'dt_vencimento'
      Required = True
    end
    object cdsContas_Pagarstatus: TStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object sdsContas_Receber: TSQLDataSet
    CommandText = 'SELECT * FROM CONTAS_RECEBER'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 62
    Top = 248
  end
  object dspContas_Receber: TDataSetProvider
    DataSet = sdsContas_Receber
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 178
    Top = 248
  end
  object cdsContas_Receber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContas_Receber'
    Left = 301
    Top = 248
    object cdsContas_Receberid: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'id'
      Required = True
    end
    object cdsContas_Receberdocumento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'documento'
      Required = True
    end
    object cdsContas_Receberdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 200
    end
    object cdsContas_Receberparcela: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'parcela'
      Required = True
    end
    object cdsContas_Recebervlr_parcela: TFMTBCDField
      DisplayLabel = 'Vlr Parcela'
      FieldName = 'vlr_parcela'
      Required = True
      currency = True
      Precision = 20
      Size = 2
    end
    object cdsContas_Recebervlr_compra: TFMTBCDField
      DisplayLabel = 'Vlr Compra'
      FieldName = 'vlr_compra'
      Required = True
      currency = True
      Precision = 20
      Size = 2
    end
    object cdsContas_Recebervlr_abatido: TFMTBCDField
      DisplayLabel = 'Vlr Abatido'
      FieldName = 'vlr_abatido'
      Required = True
      currency = True
      Precision = 20
      Size = 2
    end
    object cdsContas_Receberdt_compra: TDateField
      DisplayLabel = 'Data Compra'
      FieldName = 'dt_compra'
      Required = True
    end
    object cdsContas_Receberdt_vencimento: TDateField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'dt_vencimento'
      Required = True
    end
    object cdsContas_Receberdt_cadastro: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dt_cadastro'
      Required = True
    end
    object cdsContas_Receberstatus: TStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 10
    end
    object cdsContas_Receberdt_pagamento: TDateField
      DisplayLabel = 'Data Pagamento'
      FieldName = 'dt_pagamento'
    end
  end
  object sdsUsuarios: TSQLDataSet
    CommandText = 'SELECT *  FROM USUARIOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 46
    Top = 320
  end
  object dpsUsuarios: TDataSetProvider
    DataSet = sdsUsuarios
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 178
    Top = 320
  end
  object cdsUsuarios: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsUsuarios'
    Left = 296
    Top = 320
    object cdsUsuariosid: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUsuariosnome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Required = True
      Size = 30
    end
    object cdsUsuarioslogin: TStringField
      DisplayLabel = 'Login'
      FieldName = 'login'
      Required = True
    end
    object cdsUsuariossenha: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'senha'
      Required = True
      Size = 1
    end
    object cdsUsuariosstatus: TStringField
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsUsuariosdt_cadastro: TDateField
      DisplayLabel = 'Data de Cadastro'
      FieldName = 'dt_cadastro'
      Required = True
    end
  end
end

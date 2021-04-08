unit ModConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, MidasLib;

type
  TDataModule1 = class(TDataModule)
    SQLConnection: TSQLConnection;
    sdsCaixa: TSQLDataSet;
    dspCaixa: TDataSetProvider;
    cdsCaixa: TClientDataSet;
    sdsContas_Pagar: TSQLDataSet;
    dspContas_Pagar: TDataSetProvider;
    cdsContas_Pagar: TClientDataSet;
    sdsContas_Receber: TSQLDataSet;
    dspContas_Receber: TDataSetProvider;
    cdsContas_Receber: TClientDataSet;
    sdsUsuarios: TSQLDataSet;
    dpsUsuarios: TDataSetProvider;
    cdsCaixaid: TIntegerField;
    cdsCaixanumero_doc: TStringField;
    cdsCaixadescricao: TStringField;
    cdsCaixavalor: TFMTBCDField;
    cdsCaixatipo: TStringField;
    cdsCaixadt_cadastro: TDateField;
    cdsContas_Pagarid: TIntegerField;
    cdsContas_Pagarnumero_doc: TStringField;
    cdsContas_Pagardescricao: TStringField;
    cdsContas_Pagarparcela: TIntegerField;
    cdsContas_Pagarvlr_parcela: TFMTBCDField;
    cdsContas_Pagarvlr_compra: TFMTBCDField;
    cdsContas_Pagarvlr_abatido: TFMTBCDField;
    cdsContas_Pagardt_compra: TDateField;
    cdsContas_Pagardt_cadastro: TDateField;
    cdsContas_Pagardt_vencimento: TDateField;
    cdsContas_Pagarstatus: TStringField;
    cdsContas_Receberid: TIntegerField;
    cdsContas_Receberdocumento: TStringField;
    cdsContas_Receberdescricao: TStringField;
    cdsContas_Receberparcela: TIntegerField;
    cdsContas_Recebervlr_parcela: TFMTBCDField;
    cdsContas_Recebervlr_compra: TFMTBCDField;
    cdsContas_Recebervlr_abatido: TFMTBCDField;
    cdsContas_Receberdt_compra: TDateField;
    cdsContas_Receberdt_vencimento: TDateField;
    cdsContas_Receberdt_cadastro: TDateField;
    cdsContas_Receberstatus: TStringField;
    cdsContas_Receberdt_pagamento: TDateField;
    cdsUsuarios: TClientDataSet;
    cdsUsuariosid: TIntegerField;
    cdsUsuariosnome: TStringField;
    cdsUsuarioslogin: TStringField;
    cdsUsuariossenha: TStringField;
    cdsUsuariosstatus: TStringField;
    cdsUsuariosdt_cadastro: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uFuncoes, ufrm_Cadastro_Usuarios, Uprincipal, udmRelatorios,
  ufrmCadastroCaixa;

{$R *.dfm}

end.

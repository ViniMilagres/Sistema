unit udmRelatorios;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, frxExportBaseDialog,
  frxExportPDF, frxExportXLS;

type
  TDataModule2 = class(TDataModule)
    frxDBDataset1: TfrxDBDataset;
    frxReport: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxDBDatasetCaixa: TfrxDBDataset;
    frxReportCaixa: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ufrm_Cadastro_Usuarios, ModConexao;

{$R *.dfm}

end.

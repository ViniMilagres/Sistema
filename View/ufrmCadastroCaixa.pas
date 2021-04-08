unit ufrmCadastroCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadastro_Basico, Data.DB,
  IDETheme.ActnCtrls, Vcl.Menus, Vcl.ActnPopup, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, tpEdit;

type
  TfrmCadastro_Caixa = class(TfrmCadastro_Basico)
    NrDocCaixa: TLabel;
    Descrição_Caixa: TLabel;
    Valor_Caixa: TLabel;
    EdtNumero: TEdit;
    EdtDescricao: TEdit;
    RadioGroup1: TRadioGroup;
    EdtValor: TtpEdit;
    CbxFiltros: TComboBoxEx;
    Label3: TLabel;
    procedure acSalvarExecute(Sender: TObject);
    procedure acPesquisarExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro_Caixa: TfrmCadastro_Caixa;

implementation

{$R *.dfm}

uses ModConexao, uFuncoes, System.Math, udmRelatorios;

procedure TfrmCadastro_Caixa.acEditarExecute(Sender: TObject);
begin
  inherited;
  EdtNumero.Text := DataModule1.cdsCaixanumero_doc.AsString;
  EdtDescricao.Text := DataModule1.cdsCaixadescricao.AsString;

  {Para o valor}
  EdtValor.Text:= FormatFloat(',#0.00',DataModule1.cdsCaixavalor.AsCurrency);

  {Para o RadioGroup}
  {Comando Ifthen, selecionar ele e pressionar
  ctrl + shift + a, e implentar o commando ao delphi}
  RadioGroup1.ItemIndex := Ifthen(DataModule1.cdsCaixatipo.AsString = 'C',0,1);
end;

procedure TfrmCadastro_Caixa.acImprimirExecute(Sender: TObject);
begin
    DataModule2 := TDataModule2.Create(Nil);
    try
      DataModule2.frxReport.LoadFromFile(ExtractFilePath(Application.ExeName)+'Relatorios\RelCadCaixa.fr3');
      DataModule2.frxReport.ShowReport(true);
    finally
      FreeAndNil(DataModule2);

    end;

end;

procedure TfrmCadastro_Caixa.acPesquisarExecute(Sender: TObject);
begin
  inherited;
  DataModule1.cdsCaixa.Close;
  DataModule1.cdsCaixa.CommandText := 'SELECT * FROM CAIXA';
  DataModule1.cdsCaixa.Open;

end;

procedure TfrmCadastro_Caixa.acSalvarExecute(Sender: TObject);
begin
    if Trim(EdtNumero.Text) = '' then
    begin
      Application.MessageBox('Preencha o campo número do Documento!', 'Atenção', MB_OK+MB_ICONWARNING);
      EdtNumero.SetFocus;
      Abort;
    end;

  if Trim(EdtDescricao.Text) = '' then
    begin
      Application.MessageBox('Preencha o campo Descrição!', 'Atenção', MB_OK+MB_ICONWARNING);
      EdtDescricao.SetFocus;
      Abort;
    end;

  if StringParaFloat(EdtValor.Text) <= 0 then
    begin
      Application.MessageBox('Preencha  um valor maior que zero!', 'Atenção', MB_OK+MB_ICONWARNING);
      EdtValor.SetFocus;
      Abort;
    end;

  DataModule1.cdsCaixaid.AsInteger := GetId('ID', 'CAIXA');
  DataModule1.cdsCaixanumero_doc.AsString:= trim(EdtNumero.Text);
  DataModule1.cdsCaixadescricao.AsString:= trim(EdtDescricao.Text);
  DataModule1.cdsCaixavalor.AsCurrency:= StringParaFloat(EdtValor.Text);

  case RadioGroup1.ItemIndex of
    0 : DataModule1.cdsCaixatipo.AsString := 'C';
    1 : DataModule1.cdsCaixatipo.AsString := 'D';
  end;

  DataModule1.cdsCaixadt_cadastro.Asdatetime:= now;


  inherited;

end;

procedure TfrmCadastro_Caixa.btnFiltrarClick(Sender: TObject);
begin
   if EditPesquisar.Text ='' then
  {Caso não digite nada ele pesquisa todos}
    DataModule1.cdsCaixa.CommandText := 'SELECT * FROM CAIXA WHERE DESCRICAO LIKE  '+QuotedStr('%'+EditPesquisar.Text+'%')
  Else
    DataModule1.cdsCaixa.CommandText := 'SELECT * FROM CAIXA WHERE NUMERO_DOC LIKE  '+QuotedStr('%'+EditPesquisar.Text+'%');

{  Obriga o usuário a digitar um nome}
 { begin
    Application.MessageBox('Informe um valor a ser pesquisado', 'Atenção', MB_OK+MB_ICONWARNING);
    EditPesquisar.SetFocus;
    Abort;
  end;}

  inherited;

  DataModule1.cdsCaixa.Close;
  case CbxFiltros.ItemIndex of
  0 : DataModule1.cdsCaixa.CommandText := 'SELECT * FROM CAIXA WHERE DESCRICAO LIKE  '+QuotedStr('%'+EditPesquisar.Text+'%');
  1 : DataModule1.cdsCaixa.CommandText := 'SELECT * FROM CAIXA WHERE NUMERO_DOC LIKE  '+QuotedStr('%'+EditPesquisar.Text+'%');
  end;
  DataModule1.cdsCaixa.Open;
end;




end.

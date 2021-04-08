unit ufrmCadas_Contas_Pagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadastro_Basico, Data.DB,
  IDETheme.ActnCtrls, Vcl.Menus, Vcl.ActnPopup, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, tpEdit, Datasnap.DBClient;

type
  TfrmCadastro_Contas_Pagar = class(TfrmCadastro_Basico)
    EdtDocumento: TEdit;
    Documento: TLabel;
    Descrição: TLabel;
    EdtDescricao: TEdit;
    Quantidade_Parcelas: TLabel;
    EdtQtdParcelas: TEdit;
    ValorCompra: TLabel;
    EdtVlrCompra: TtpEdit;
    DtCompra: TLabel;
    EdtDataCompra: TtpEdit;
    EdtVariacao: TEdit;
    Variação: TLabel;
    CdsParcelas: TClientDataSet;
    DBGrid1: TDBGrid;
    DsParcelas: TDataSource;
    BtnGerarParcelas: TBitBtn;
    CdsParcelasParcela: TIntegerField;
    CdsParcelasValor: TCurrencyField;
    CdsParcelasVencimento: TDateField;
    BtnLimparParcelas: TBitBtn;
    CbxFiltros: TComboBoxEx;
    Label3: TLabel;
    Label2: TLabel;
    procedure BtnLimparParcelasClick(Sender: TObject);
    procedure BtnGerarParcelasClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure acSalvarExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure acPesquisarExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro_Contas_Pagar: TfrmCadastro_Contas_Pagar;

implementation

{$R *.dfm}

uses ModConexao, uFuncoes;

procedure TfrmCadastro_Contas_Pagar.acEditarExecute(Sender: TObject);
begin
      Application.MessageBox('Não é permitido editar!', 'Atenção', MB_OK+MB_ICONWARNING);

end;

procedure TfrmCadastro_Contas_Pagar.acExcluirExecute(Sender: TObject);
begin
//  inherited;
 if Application.MessageBox('Deseja realmente cancelar o documento?', 'Pergunta', MB_YESNO+MB_ICONQUESTION) = mrYes then
    begin
      try
        TClientDataSet(dsTabela.DataSet).Edit;
        DataModule1.cdsContas_Pagarstatus.AsString := 'C';
        TClientDataSet(dsTabela.DataSet).ApplyUpdates(0);

        Application.MessageBox('Documento cancelado com sucesso!', 'Informação', 0+64);
        TClientDataSet(dsTabela.DataSet).Open;

      except on e: Exception do

      raise Exception.Create('Erro ao excluir registros: ' + E.message);

      end;
    end;

end;




procedure TfrmCadastro_Contas_Pagar.acPesquisarExecute(Sender: TObject);
begin
  inherited;
  DataModule1.cdsContas_Pagar.Close;
  DataModule1.cdsContas_Pagar.CommandText := 'SELECT * FROM CONTAS_PAGAR';
  DataModule1.cdsContas_Pagar.Open;

end;

procedure TfrmCadastro_Contas_Pagar.acSalvarExecute(Sender: TObject);
var I : integer;
begin
 if Trim(EdtDocumento.Text) = '' then
  begin
      Application.MessageBox('Preencha o número do documento!', 'Atenção', MB_OK+MB_ICONWARNING);
      EdtDocumento.SetFocus;
      Abort;
  end;

  if Trim(EdtDescricao.Text) = '' then
  begin
      Application.MessageBox('Preencha a decrição!', 'Atenção', MB_OK+MB_ICONWARNING);
      EdtDescricao.SetFocus;
      Abort;
  end;

  if Trim(EdtQtdParcelas.Text) = '' then
  Begin
      Application.MessageBox('Informe a quantidade de parcelas!', 'Atenção', MB_OK+MB_ICONWARNING);
      EdtQtdParcelas.SetFocus;
      Abort;
  End;

  if StringParaFloat(EdtVlrCompra.Text)<= 0 then
  begin
      Application.MessageBox('Qual é o valor da compra?', 'Pergunta', MB_OK+MB_ICONINFORMATION);
      EdtVlrCompra.SetFocus;
      Abort;
  end;

 if Trim(EdtDataCompra.Text) = '' then
 Begin
      Application.MessageBox('Qual foi a data da compra?', 'Pergunta', MB_OK+MB_ICONQUESTION);
      EdtDataCompra.SetFocus;
      Abort;
 End;

 if trim(EdtVariacao.Text) = '' then
 Begin
      Application.MessageBox('De quantos em quantos dias as parcelas irão vencer?', 'Pergunta', MB_OK+MB_ICONERROR);
      EdtVariacao.SetFocus;
      Abort;
 End;


  CdsParcelas.First;

{A propriedade Eof é um boolean que quando é igual a true significa que o DataSet
(no seu caso a CDSParcelas.EOF) está posicionado no final.
O uso do Eof é bastante comum em looping's que fazem a leitura de várias linhas
de um DataSet para verificar se todas as linhas foram lidas e o looping deve ser interrompido.

  Ex:}
  while not CdsParcelas.Eof do

if dsTabela.State in [dsBrowse, dsInsert]  then

 Begin
  DataModule1.cdsContas_Pagar.Insert;
  DataModule1.cdsContas_Pagarid.AsInteger := GetId('ID', 'CONTAS_PAGAR');
  //DataModule1.cdsCaixaid.AsInteger := GetId('ID', 'CAIXA');
  DataModule1.cdsContas_Pagarnumero_doc.AsString:= trim(EdtDocumento.Text);
  DataModule1.cdsContas_Pagardescricao.AsString:= trim(EdtDescricao.Text);

  //Pegando do dataset local do a pagar
  DataModule1.cdsContas_Pagarparcela.AsInteger := CdsParcelasParcela.AsInteger;
  DataModule1.cdsContas_Pagarvlr_parcela.AsCurrency := CdsParcelasValor.AsInteger;

  DataModule1.cdsContas_Pagardt_cadastro.AsDateTime:=now;
  DataModule1.cdsContas_Pagarvlr_compra.AsCurrency:= StringParaFloat(EdtVlrCompra.Text);
  DataModule1.cdsContas_Pagardt_compra.AsDateTime:= StrToDate(EdtDataCompra.Text);
  DataModule1.cdsContas_Pagardt_vencimento.AsDateTime := CdsParcelasVencimento.AsDateTime;
  DataModule1.cdsContas_Pagarstatus.AsString := 'A';
  //Valor abatido não foi trabalhado
  Datamodule1.cdsContas_Pagarvlr_abatido.AsCurrency :=0;
  DataModule1.cdsContas_Pagar.Post;
  DataModule1.cdsContas_Pagar.ApplyUpdates(0);
  cdsParcelas.Next;

 End;

   Application.MessageBox('Registro inserido com sucesso!', 'Informãção', MB_OK+MB_ICONINFORMATION);
   TClientDataSet(dsTabela.DataSet).Open;

   for I := 0 to ComponentCount -1 do
    begin
      if Components [i] is TCustomEdit then
      TCustomEdit(Components[i]).Clear;
    end;

  if PageControl1.ActivePage = tbsCadastro then
  begin
      tbsCadastro.TabVisible:=false;
      PageControl1.ActivePage := tbsPesquisa;
  end;
  EditPesquisar.SetFocus;



   cdsParcelas.EmptyDataSet;

  //codigo botão salvar
  {except on E: Exception do
  raise Exception.Create('Erro ao Salvar Registro: '+E.Message);
  end;}

  //final do código do botão salvar


// inherited;

end;

procedure TfrmCadastro_Contas_Pagar.btnFiltrarClick(Sender: TObject);
begin
      inherited;
    if EditPesquisar.Text ='' then
  {Caso não digite nada ele pesquisa todos}
    DataModule1.cdsContas_Pagar.CommandText := 'SELECT * FROM CONTAS_PAGAR WHERE DESCRICAO LIKE  '+QuotedStr('%'+EditPesquisar.Text+'%')
  Else
    DataModule1.cdsContas_Pagar.CommandText := 'SELECT * FROM CONTAS_PAGAR WHERE NUMERO_DOC LIKE  '+QuotedStr('%'+EditPesquisar.Text+'%');

{  Obriga o usuário a digitar um nome}
 { begin
    Application.MessageBox('Informe um valor a ser pesquisado', 'Atenção', MB_OK+MB_ICONWARNING);
    EditPesquisar.SetFocus;
    Abort;
  end;}



  DataModule1.cdsContas_Pagar.Close;
  case CbxFiltros.ItemIndex of
  0 : DataModule1.cdsContas_Pagar.CommandText := 'SELECT * FROM CONTAS_PAGAR WHERE DESCRICAO LIKE  '+QuotedStr('%'+EditPesquisar.Text+'%');
  1 : DataModule1.cdsContas_Pagar.CommandText := 'SELECT * FROM CONTAS_PAGAR WHERE NUMERO_DOC LIKE  '+QuotedStr('%'+EditPesquisar.Text+'%');
  end;
  DataModule1.cdsContas_Pagar.Open;
end;

//end;

procedure TfrmCadastro_Contas_Pagar.BtnGerarParcelasClick(Sender: TObject);
var
  I: Integer;
begin
  if EdtDocumento.Text = '' then
  begin
      Application.MessageBox('Preencha o campo documento!', 'Atenção', MB_OK+MB_ICONWARNING);
      EdtDocumento.SetFocus;
      Abort
  end;

  if EdtDescricao.Text = '' then
  begin
      Application.MessageBox('Preencha o campo descrição!', 'Atenção', Mb_ok+MB_ICONWARNING);
      EdtDescricao.SetFocus;
      Abort
  end;

  if EdtQtdParcelas.Text = '' then
  Begin
      Application.MessageBox('Preencha o campo quantidade de parcelas!', 'Atenção', MB_OK+MB_ICONWARNING);
      EdtQtdParcelas.SetFocus;
      Abort
  End;

  if StringParaFloat(EdtVlrCompra.Text) = 0 then
  Begin
      Application.MessageBox('Preencha o campo valor da compra!', 'Atenção', Mb_ok+MB_ICONWARNING);
      EdtVlrCompra.SetFocus;
      Abort
  End;

  if EdtDataCompra.Text = '' then
  Begin
      Application.MessageBox('Informe a data da compra', 'Atenção', MB_OK+MB_ICONWARNING);
      EdtDataCompra.SetFocus;
  End;

  CdsParcelas.EmptyDataSet;

  for I := 1 to StrToInt(EdtQtdParcelas.Text) do
  Begin
      CdsParcelas.Insert;
      CdsParcelasParcela.AsInteger := I;
      CdsParcelasValor.AsCurrency := StringParaFloat(EdtVlrCompra.Text)/ StrToInt(EdtQtdParcelas.Text);
      CdsParcelasVencimento.AsDateTime := StrToDate(EdtDataCompra.Text) + (StrToInt(EdtVariacao.Text) * I);
      CdsParcelas.Post;

  End;



end;

procedure TfrmCadastro_Contas_Pagar.BtnLimparParcelasClick(Sender: TObject);
begin
  CdsParcelas.EmptyDataSet;
end;

procedure TfrmCadastro_Contas_Pagar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  EditarDBGrid(dsParcelas, DBgrid1, State, Rect, Column);


end;

end.

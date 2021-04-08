unit ufrmCadas_Contas_Receber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadastro_Basico, Data.DB,
  IDETheme.ActnCtrls, Vcl.Menus, Vcl.ActnPopup, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, Datasnap.DBClient, tpEdit;

type
  TfrmCadastro_AReceber = class(TfrmCadastro_Basico)
    CbxFiltros: TComboBoxEx;
    Label3: TLabel;
    Label2: TLabel;
    Documento: TLabel;
    EdtDocumento: TEdit;
    Descrição: TLabel;
    EdtDescricao: TEdit;
    Quantidade_Parcelas: TLabel;
    EdtQtdParcelas: TEdit;
    Variação: TLabel;
    EdtVariacao: TEdit;
    EdtVlrCompra: TtpEdit;
    ValorCompra: TLabel;
    DtCompra: TLabel;
    EdtDataCompra: TtpEdit;
    BtnGerarParcelas: TBitBtn;
    DBGrid1: TDBGrid;
    DsParcelas: TDataSource;
    CdsParcelas: TClientDataSet;
    CdsParcelasParcela: TIntegerField;
    CdsParcelasValor: TCurrencyField;
    CdsParcelasVencimento: TDateField;
    BtnLimparParcelas: TBitBtn;

    procedure BtnGerarParcelasClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure acPesquisarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure BtnLimparParcelasClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro_AReceber: TfrmCadastro_AReceber;

implementation

{$R *.dfm}

uses ModConexao, uFuncoes, Uprincipal;

procedure TfrmCadastro_AReceber.acEditarExecute(Sender: TObject);
begin

      Application.MessageBox('Não é permitido editar!', 'Atenção', MB_OK+MB_ICONWARNING);

end;

procedure TfrmCadastro_AReceber.acExcluirExecute(Sender: TObject);
begin
//  inherited;
 if Application.MessageBox('Deseja realmente cancelar o documento?', 'Pergunta', MB_YESNO+MB_ICONQUESTION) = mrYes then
    begin
      try
        TClientDataSet(dsTabela.DataSet).Edit;
        DataModule1.cdsContas_Receberstatus.AsString := 'C';
        TClientDataSet(dsTabela.DataSet).ApplyUpdates(0);

        Application.MessageBox('Documento cancelado com sucesso!', 'Informação', 0+64);
        TClientDataSet(dsTabela.DataSet).Open;

      except on e: Exception do

      raise Exception.Create('Erro ao excluir registros: ' + E.message);

      end;
    end;
end;

procedure TfrmCadastro_AReceber.acPesquisarExecute(Sender: TObject);
begin
  inherited;
  DataModule1.cdsContas_Receber.Close;
  DataModule1.cdsContas_Receber.CommandText := 'SELECT * FROM CONTAS_RECEBER';
  DataModule1.cdsContas_Receber.Open;

end;

procedure TfrmCadastro_AReceber.acSalvarExecute(Sender: TObject);
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
  DataModule1.cdsContas_Receber.Insert;
  DataModule1.cdsContas_Receberid.AsInteger := GetId('ID', 'CONTAS_RECEBER');
  //DataModule1.cdsCaixaid.AsInteger := GetId('ID', 'CAIXA');
  DataModule1.cdsContas_Receberdocumento.AsString:= trim(EdtDocumento.Text);
  DataModule1.cdsContas_Receberdescricao.AsString:= trim(EdtDescricao.Text);

  //Pegando do dataset local do a pagar
  DataModule1.cdsContas_Receberparcela.AsInteger := CdsParcelasParcela.AsInteger;
  DataModule1.cdsContas_Recebervlr_parcela.AsCurrency := CdsParcelasValor.AsInteger;

  DataModule1.cdsContas_Receberdt_cadastro.AsDateTime:=now;
  DataModule1.cdsContas_Recebervlr_compra.AsCurrency:= StringParaFloat(EdtVlrCompra.Text);
  DataModule1.cdsContas_Receberdt_compra.AsDateTime:= StrToDate(EdtDataCompra.Text);
  DataModule1.cdsContas_Receberdt_vencimento.AsDateTime := CdsParcelasVencimento.AsDateTime;
  DataModule1.cdsContas_Receberstatus.AsString := 'A';
  //Valor abatido não foi trabalhado
  Datamodule1.cdsContas_Recebervlr_abatido.AsCurrency :=0;
  DataModule1.cdsContas_Receber.Post;
  DataModule1.cdsContas_Receber.ApplyUpdates(0);
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

procedure TfrmCadastro_AReceber.btnFiltrarClick(Sender: TObject);
begin
  inherited;
    if EditPesquisar.Text ='' then
  {Caso não digite nada ele pesquisa todos}
    DataModule1.cdsContas_Receber.CommandText := 'SELECT * FROM CONTAS_RECEBER WHERE DESCRICAO LIKE  '+QuotedStr('%'+EditPesquisar.Text+'%')
  Else
    DataModule1.cdsContas_Receber.CommandText := 'SELECT * FROM CONTAS_RECEBER WHERE DOCUMENTO LIKE  '+QuotedStr('%'+EditPesquisar.Text+'%');

{  Obriga o usuário a digitar um nome}
 { begin
    Application.MessageBox('Informe um valor a ser pesquisado', 'Atenção', MB_OK+MB_ICONWARNING);
    EditPesquisar.SetFocus;
    Abort;
  end;}



  DataModule1.cdsContas_Receber.Close;
  case CbxFiltros.ItemIndex of
  0 : DataModule1.cdsContas_Receber.CommandText := 'SELECT * FROM CONTAS_RECEBER WHERE DESCRICAO LIKE  '+QuotedStr('%'+EditPesquisar.Text+'%');
  1 : DataModule1.cdsContas_Receber.CommandText := 'SELECT * FROM CONTAS_RECEBER WHERE DOCUMENTO LIKE  '+QuotedStr('%'+EditPesquisar.Text+'%');
  end;
  DataModule1.cdsContas_Receber.Open;
end;


procedure TfrmCadastro_AReceber.BtnGerarParcelasClick(Sender: TObject);
begin
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



end;


procedure TfrmCadastro_AReceber.BtnLimparParcelasClick(Sender: TObject);
begin
  CdsParcelas.EmptyDataSet;

end;

procedure TfrmCadastro_AReceber.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 EditarDBGrid(dsParcelas, DBgrid1, State, Rect, Column);

end;

end.

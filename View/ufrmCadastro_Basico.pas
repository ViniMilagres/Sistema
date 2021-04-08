unit ufrmCadastro_Basico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  IDETheme.ActnCtrls, Vcl.Menus, Vcl.ActnPopup, Vcl.ActnMenus,
  Vcl.StdStyleActnCtrls, Datasnap.DBClient, Vcl.Buttons;


type
  TfrmCadastro_Basico = class(TForm)
    dsTabela: TDataSource;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    PageControl1: TPageControl;
    tbsCadastro: TTabSheet;
    ImageListCadastro: TImageList;
    actAcoes: TActionList;
    PopupActionBar1: TPopupActionBar;
    EditPesquisar: TEdit;
    Label1: TLabel;
    btnFiltrar: TButton;
    acInserir: TAction;
    acEditar: TAction;
    acExcluir: TAction;
    acPesquisar: TAction;
    acSalvar: TAction;
    acCancelar: TAction;
    acImprimir: TAction;
    acFechar: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    dbgDados: TDBGrid;
    tbsPesquisa: TTabSheet;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Panel1Click(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure ActionToolBar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbsPesquisarShow(Sender: TObject);
    procedure acInserirExecute(Sender: TObject);
    procedure acInserirUpdate(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure acEditarUpdate(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acExcluirUpdate(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure acSalvarUpdate(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acCancelarUpdate(Sender: TObject);
    procedure acPesquisarExecute(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
    procedure acImprimirUpdate(Sender: TObject);
    procedure acFecharExecute(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure dbgDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    imodo:integer;

    { Private declarations }
    procedure LimparTudo;
  public
    { Public declarations }
  end;

var
  frmCadastro_Basico: TfrmCadastro_Basico;

implementation

{$R *.dfm}

uses ModConexao, uFuncoes;

procedure TfrmCadastro_Basico.acCancelarExecute(Sender: TObject);
begin
   //Limpar Tudo
  LimparTudo;

  TClientDataSet(dsTabela.DataSet).Cancel;

end;

procedure TfrmCadastro_Basico.acCancelarUpdate(Sender: TObject);
begin
  (acCancelar).Enabled:=TAction(acSalvar).Enabled;
end;

procedure TfrmCadastro_Basico.acEditarExecute(Sender: TObject);
begin
Imodo := 1;

  if PageControl1.ActivePage=tbsPesquisa then
  PageControl1.ActivePage:=tbsCadastro;
  TClientDataSet(dsTabela.DataSet).Edit;
end;

procedure TfrmCadastro_Basico.acEditarUpdate(Sender: TObject);
begin
 if (dsTabela.State in [dsBrowse]) and (not TClientDataSet(dsTabela.DataSet).IsEmpty) then

  acEditar.Enabled :=dsTabela.State in [dsBrowse];
end;

procedure TfrmCadastro_Basico.acExcluirExecute(Sender: TObject);
begin
 if Application.MessageBox('Deseja realmente exluir o registro?', 'Pergunta', MB_YESNO+MB_ICONQUESTION) = mrYes then
    begin
      try
        TClientDataSet(dsTabela.DataSet).Delete;
        TClientDataSet(dsTabela.DataSet).ApplyUpdates(0);

        Application.MessageBox('Resgistro excluido com sucesso!', 'Informação', 0+64);
        TClientDataSet(dsTabela.DataSet).Open;

      except on e: Exception do

      raise Exception.Create('Erro ao excluir registros: ' + E.message);

      end;
    end;

end;

procedure TfrmCadastro_Basico.acExcluirUpdate(Sender: TObject);
begin
if (dsTabela.State in [dsBrowse]) and not (TClientDataSet(dsTabela.DataSet).IsEmpty) then

  acExcluir.Enabled := dsTabela.State in [dsBrowse];
end;

procedure TfrmCadastro_Basico.acFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmCadastro_Basico.acImprimirExecute(Sender: TObject);
begin
    showmessage ('Em desenvolvimento');
end;

procedure TfrmCadastro_Basico.acImprimirUpdate(Sender: TObject);
begin
  if (dsTabela.State in [dsBrowse]) and (not TClientDataSet(dsTabela.DataSet).IsEmpty)then
  acImprimir.Enabled:=dsTabela.State in [dsBrowse];
end;

procedure TfrmCadastro_Basico.acInserirExecute(Sender: TObject);
begin
imodo := 0;

  if PageControl1.ActivePage = tbsPesquisa then
    PageControl1.ActivePage := tbsCadastro;

//  TclientDataSet(dstabela.DataSet).Open;
//  TClientDataSet(dsTabela.DataSet).Insert;

  if not TClientDataSet(dstabela.DataSet).Active then
    TClientDataSet(dsTabela.DataSet).Open;

  TClientDataSet(dsTabela.DataSet).Insert;
end;

procedure TfrmCadastro_Basico.acInserirUpdate(Sender: TObject);
begin
  acInserir.Enabled :=dsTabela.State in [dsBrowse, dsInactive];
end;

procedure TfrmCadastro_Basico.acPesquisarExecute(Sender: TObject);
begin
//      TClientDataSet(dsTabela.DataSet).Close;
//      TClientDataSet(dsTabela.DataSet).Open;
  EditPesquisar.Clear
end;

procedure TfrmCadastro_Basico.acSalvarExecute(Sender: TObject);
begin
 try

  TClientDataSet(dsTabela.DataSet).Post;
  TClientDataSet(dsTabela.DataSet).ApplyUpdates(0);

    case IModo of
      1 : Application.MessageBox('Registro editado com sucesso!', 'Informãção', MB_OK+MB_ICONINFORMATION);
      0 : Application.MessageBox('Registro inserido com sucesso!', 'Informãção', MB_OK+MB_ICONINFORMATION);
    end;

        //limpar os campos
      LimparTudo;
      TClientDataSet(dsTabela.DataSet).Open;

  except on E: Exception do
  raise Exception.Create('Erro ao Salvar Registro: '+E.Message);
  end;
end;

procedure TfrmCadastro_Basico.acSalvarUpdate(Sender: TObject);
begin
  acSalvar.Enabled := dsTabela.State in [dsInsert, dsEdit]
end;

procedure TfrmCadastro_Basico.actFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmCadastro_Basico.ActionToolBar1Click(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Basico.btnFiltrarClick(Sender: TObject);
begin
 //
end;

procedure TfrmCadastro_Basico.ComboBox1Change(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Basico.dbgDadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  EditarDbGrid(dsTabela,dbgDados,State,Rect,Column);
end;

procedure TfrmCadastro_Basico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TClientDataSet(dsTabela.DataSet).Cancel;
  TClientDataSet(dsTabela.DataSet).Close;
end;

procedure TfrmCadastro_Basico.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    close;
  if key = #13 then
    Perform(WM_NEXTDLGCTL, 0, 0);

end;

procedure TfrmCadastro_Basico.LimparTudo;
var
  I: Integer;
begin
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
end;

procedure TfrmCadastro_Basico.Panel1Click(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Basico.tbsPesquisarShow(Sender: TObject);
begin
  PageControl1.ActivePage := tbsPesquisa;
end;

end.

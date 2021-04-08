unit ufrmCadastro_Basico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  IDETheme.ActnCtrls;

type
  TfrmCadastro_Basico = class(TForm)
    dsTabela: TDataSource;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    ActionToolBar1: TActionToolBar;
    PageControl1: TPageControl;
    tbsCadastro: TTabSheet;
    tbsPesquisa: TTabSheet;
    DBGrid1: TDBGrid;
    ActionManagerCadastro: TActionManager;
    ImageListCadastro: TImageList;
    actInserir: TAction;
    actEditar: TAction;
    actExcluir: TAction;
    actSalvar: TAction;
    actCancelar: TAction;
    actPesquisar: TAction;
    actImprimir: TAction;
    actFechar: TAction;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Panel1Click(Sender: TObject);
    procedure actInserirExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro_Basico: TfrmCadastro_Basico;

implementation

{$R *.dfm}

procedure TfrmCadastro_Basico.actCancelarExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Basico.actEditarExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Basico.actExcluirExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Basico.actFecharExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Basico.actImprimirExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Basico.actInserirExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastro_Basico.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    close;
  if key = #13 then
    Perform(WM_NEXTDLGCTL, 0, 0);

end;

procedure TfrmCadastro_Basico.Panel1Click(Sender: TObject);
begin
//
end;

end.

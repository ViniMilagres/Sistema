unit ufrm_Cadastro_Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadastro_Basico, Data.DB,
  IDETheme.ActnCtrls, Vcl.Menus, Vcl.ActnPopup, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmCadastro_Usuarios = class(TfrmCadastro_Basico)
    Label2: TLabel;
    Label4: TLabel;
    edtNome: TEdit;
    edtLogin: TEdit;
    edtSenha: TEdit;
    Nome: TLabel;
    Label3: TLabel;
    CbxFiltros: TComboBoxEx;
    procedure acSalvarExecute(Sender: TObject);
    procedure edtLoginChange(Sender: TObject);
    procedure edtSenhaChange(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure CbxFiltrosClick(Sender: TObject);
    procedure CbxFiltrosEnter(Sender: TObject);
    procedure acPesquisarExecute(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro_Usuarios: TfrmCadastro_Usuarios;

implementation

{$R *.dfm}

uses ModConexao, uFuncoes, udmRelatorios;

procedure TfrmCadastro_Usuarios.acEditarExecute(Sender: TObject);
begin
  inherited;
  edtNome.Text := DataModule1.cdsUsuariosnome.AsString;
  edtLogin.Text := DataModule1.cdsUsuarioslogin.AsString;
  edtSenha.Text:= DataModule1.cdsUsuariossenha.AsString;
end;

procedure TfrmCadastro_Usuarios.acImprimirExecute(Sender: TObject);
begin
    DataModule2 := TDataModule2.Create(Nil);
    try
      DataModule2.frxReport.LoadFromFile(ExtractFilePath(Application.ExeName)+'Relatorios\RelCadUsuarios.FR3');
      DataModule2.frxReport.ShowReport(true);
    finally
      FreeAndNil(DataModule2);

    end;


end;

procedure TfrmCadastro_Usuarios.acPesquisarExecute(Sender: TObject);
begin
  inherited;
  DataModule1.cdsUsuarios.Close;
  DataModule1.cdsUsuarios.CommandText := 'SELECT * FROM USUARIOS';
  DataModule1.cdsUsuarios.Open;
end;

procedure TfrmCadastro_Usuarios.acSalvarExecute(Sender: TObject);
begin

  if (dsTabela.State in [dsInsert]) and (GetLoginCadastrado(trim(edtLogin.Text))) then
  begin
      Application.MessageBox('Este Login já está cadastrado!', 'Atenção', MB_OK+MB_ICONWARNING);
      edtLogin.SetFocus;
      Abort;
  end;


  if Trim(edtNome.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo Nome!', 'Atenção', MB_OK+MB_ICONWARNING);
    edtNome.SetFocus;
    Abort;
  end;

    if Trim(edtLogin.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo Login!', 'Atenção', MB_OK+MB_ICONWARNING);
    edtLogin.SetFocus;
    Abort;
  end;


  if Trim(edtSenha.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo Senha!', 'Atenção', MB_OK+MB_ICONWARNING);
    edtSenha.SetFocus;
    Abort;
  end;



  DataModule1.cdsUsuariosid.AsInteger := GetId ('ID', 'USUARIOS');
  DataModule1.cdsUsuariosNome.AsString:= trim(edtNome.Text);
  DataModule1.cdsUsuariosLogin.AsString:= trim(edtlogin.Text);
  DataModule1.cdsUsuariosSenha.AsString:= trim(edtSenha.Text);
  DataModule1.cdsUsuariosstatus.AsString:= 'A';
  DataModule1.cdsUsuariosdt_cadastro.Asdatetime:= now;

  inherited;

end;

procedure TfrmCadastro_Usuarios.btnFiltrarClick(Sender: TObject);
begin
  if EditPesquisar.Text ='' then
  {Caso não digite nada ele pesquisa todos}
    DataModule1.cdsUsuarios.CommandText := 'SELECT * FROM USUARIOS WHERE NOME LIKE  '+QuotedStr('%'+EditPesquisar.Text+'%')+ 'ORDER BY ID'
  Else
    DataModule1.cdsUsuarios.CommandText := 'SELECT * FROM USUARIOS WHERE LOGIN LIKE  '+QuotedStr('%'+EditPesquisar.Text+'%')+ 'ORDER BY ID';

{  Obrigada o usuário a digitar um nome}
 { begin
    Application.MessageBox('Informe um valor a ser pesquisado', 'Atenção', MB_OK+MB_ICONWARNING);
    EditPesquisar.SetFocus;
    Abort;
  end;}

  inherited;

  DataModule1.cdsUsuarios.Close;
  case CbxFiltros.ItemIndex of
  0 : DataModule1.cdsUsuarios.CommandText := 'SELECT * FROM USUARIOS WHERE NOME LIKE  '+QuotedStr('%'+EditPesquisar.Text+'%');
  1 : DataModule1.cdsUsuarios.CommandText := 'SELECT * FROM USUARIOS WHERE LOGIN LIKE  '+QuotedStr('%'+EditPesquisar.Text+'%');
  end;
  DataModule1.cdsUsuarios.Open;
end;

procedure TfrmCadastro_Usuarios.CbxFiltrosClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmCadastro_Usuarios.CbxFiltrosEnter(Sender: TObject);
begin
  inherited;
 CbxFiltros.ItemIndex :=0;
end;

procedure TfrmCadastro_Usuarios.edtLoginChange(Sender: TObject);
begin
{  if Trim(edtLogin.Text) = '' then
    begin
    Application.MessageBox('Preencha o campo Login!', 'Atenção rapaz!', MB_OK+MB_ICONWARNING);
    edtLogin.SetFocus;
    Abort;

    end;}

  inherited;

end;

procedure TfrmCadastro_Usuarios.edtSenhaChange(Sender: TObject);
begin
{  if edtSenha.Text ='' then
  begin
    Application.MessageBox('Preencher a senha é necessário', 'Atenção amigão', MB_OK+MB_ICONEXCLAMATION);
    edtSenha.SetFocus;
    Abort;
  end;    }





  inherited;

end;

end.

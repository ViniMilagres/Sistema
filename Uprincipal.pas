unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    imgUsuarios: TImage;
    imgReceber: TImage;
    imgCaixa: TImage;
    imgPagar: TImage;
    imgConContasReceber: TImage;
    imgConPagar: TImage;
    Label2: TLabel;
    imfRelPagar: TImage;
    Label3: TLabel;
    imgConfig: TImage;
    Image3: TImage;
    Image5: TImage;
    Image6: TImage;
    imgRelReceber: TImage;
    imgRelCaixa: TImage;
    BalloonHint1: TBalloonHint;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    BitBtn1: TBitBtn;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure imgUsuariosClick(Sender: TObject);
    procedure imgReceberClick(Sender: TObject);
    procedure imgPagarClick(Sender: TObject);
    procedure imgCaixaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses ufrmCadastro_Basico, IDETheme.ActnCtrls, ufrm_Cadastro_Usuarios,
  ModConexao, uFuncoes, ufrmCadastroCaixa, ufrmCadas_Contas_Pagar,
  ufrmCadas_Contas_Receber;


procedure TfrmPrincipal.BitBtn1Click(Sender: TObject);
begin
{Conexão nova}
frmCadastro_Usuarios :=TfrmCadastro_Usuarios.Create(nil);
  try
    frmCadastro_Usuarios.ShowModal;

  finally
    FreeAndNil (frmCadastro_Usuarios)
  end;
end;

{Conexão antinga
frmCadastro_Basico :=TfrmCadastro_Basico.Create(nil);
  try
    frmCadastro_Basico.ShowModal;

  finally
    FreeAndNil (frmCadastro_Basico)
  end;
end;}

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
// Para criar a caixa perguntando se quer fechar MB_YesNO+MB_Iconquestion = mR = Yes
begin
  if
  Application.MessageBox ('Deseja realmente sair?', 'Informação', MB_YESNO+MB_ICONQUESTION) = mrYes then
  Application.Terminate
  Else Abort;
end;

procedure TfrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    Close;
end;

procedure TfrmPrincipal.imgCaixaClick(Sender: TObject);
begin
{Conexão Nova}
  frmCadastro_AReceber := TfrmCadastro_AReceber.Create(nil);
  try
    frmCadastro_AReceber.ShowModal;

  finally
    FreeAndNil (frmCadastro_AReceber)
  end;
end;

procedure TfrmPrincipal.imgPagarClick(Sender: TObject);
begin
{Conexão Nova}
  frmCadastro_Contas_Pagar := TfrmCadastro_Contas_Pagar.Create(nil);
  try
    frmCadastro_Contas_Pagar.ShowModal;

  finally
    FreeAndNil (frmCadastro_Contas_Pagar)
  end;
end;

procedure TfrmPrincipal.imgReceberClick(Sender: TObject);
begin
{Conexão nova}
  frmCadastro_Caixa := TfrmCadastro_Caixa.Create(nil);
  try
    frmCadastro_Caixa.ShowModal;

  finally
    FreeAndNil (frmCadastro_Caixa)
  end;
end;

procedure TfrmPrincipal.imgUsuariosClick(Sender: TObject);
begin
{Conexão nova}
frmCadastro_Usuarios :=TfrmCadastro_Usuarios.Create(nil);
  try
    frmCadastro_Usuarios.ShowModal;

  finally
    FreeAndNil (frmCadastro_Usuarios)

  end;

end;

//Colocando a data e hora dentro da barra de espaço
procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.

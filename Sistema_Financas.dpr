program Sistema_Financas;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  ufrmCadastro_Basico in 'View\ufrmCadastro_Basico.pas' {frmCadastro_Basico},
  IDETheme.ActnCtrls in 'View\IDETheme.ActnCtrls.pas',
  ufrm_Cadastro_Usuarios in 'View\ufrm_Cadastro_Usuarios.pas' {frmCadastro_Usuarios},
  uFuncoes in 'Classes\uFuncoes.pas',
  ModConexao in 'ModConexao.pas' {DataModule1: TDataModule},
  ufrmCadastroCaixa in 'View\ufrmCadastroCaixa.pas' {frmCadastro_Caixa},
  ufrmCadas_Contas_Pagar in 'View\ufrmCadas_Contas_Pagar.pas' {frmCadastro_Contas_Pagar},
  ufrmCadas_Contas_Receber in 'View\ufrmCadas_Contas_Receber.pas' {frmCadastro_AReceber},
  udmRelatorios in 'DataModule\udmRelatorios.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.

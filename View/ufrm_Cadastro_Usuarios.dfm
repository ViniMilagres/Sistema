inherited frmCadastro_Usuarios: TfrmCadastro_Usuarios
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 439
  ClientWidth = 974
  ExplicitWidth = 990
  ExplicitHeight = 478
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 420
    Width = 974
    ExplicitTop = 420
    ExplicitWidth = 974
  end
  inherited Panel1: TPanel
    Top = 354
    Width = 974
    ExplicitTop = 354
    ExplicitWidth = 974
    inherited SpeedButton4: TSpeedButton
      Left = 386
      ExplicitLeft = 386
    end
  end
  inherited PageControl1: TPageControl
    Width = 974
    Height = 354
    ExplicitWidth = 974
    ExplicitHeight = 354
    inherited tbsCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 966
      ExplicitHeight = 326
      object Label2: TLabel
        Left = 24
        Top = 81
        Width = 45
        Height = 19
        Caption = 'Login:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 24
        Top = 128
        Width = 49
        Height = 19
        Caption = 'Senha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Nome: TLabel
        Left = 24
        Top = 28
        Width = 48
        Height = 19
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtLogin: TEdit
        Left = 92
        Top = 82
        Width = 325
        Height = 21
        MaxLength = 20
        TabOrder = 0
        OnChange = edtLoginChange
      end
      object edtNome: TEdit
        Left = 92
        Top = 29
        Width = 325
        Height = 21
        MaxLength = 50
        TabOrder = 1
      end
      object edtSenha: TEdit
        Left = 92
        Top = 129
        Width = 325
        Height = 21
        MaxLength = 20
        PasswordChar = '*'
        TabOrder = 2
        OnChange = edtSenhaChange
      end
    end
    inherited tbsPesquisa: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 966
      ExplicitHeight = 326
      inherited Label1: TLabel
        Left = 192
        ExplicitLeft = 192
      end
      object Label3: TLabel [1]
        Left = 12
        Top = 10
        Width = 110
        Height = 18
        Caption = 'Tipo de pesquisa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      inherited btnFiltrar: TButton
        Left = 502
        ExplicitLeft = 502
      end
      inherited dbgDados: TDBGrid
        Top = 157
        Width = 966
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'login'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'senha'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'status'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'dt_cadastro'
            Visible = True
          end>
      end
      inherited EditPesquisar: TEdit
        Left = 192
        Width = 288
        ExplicitLeft = 192
        ExplicitWidth = 288
      end
      object CbxFiltros: TComboBoxEx
        Left = 11
        Top = 34
        Width = 158
        Height = 22
        ItemsEx = <
          item
            Caption = 'Nome'
          end
          item
            Caption = 'Login'
          end>
        Style = csExDropDownList
        TabOrder = 3
        OnClick = CbxFiltrosClick
        OnEnter = CbxFiltrosEnter
      end
    end
  end
  inherited dsTabela: TDataSource
    DataSet = DataModule1.cdsUsuarios
  end
  inherited ImageListCadastro: TImageList
    Left = 628
    Top = 200
  end
  inherited actAcoes: TActionList
    Left = 712
  end
  inherited PopupActionBar1: TPopupActionBar
    Left = 712
  end
end

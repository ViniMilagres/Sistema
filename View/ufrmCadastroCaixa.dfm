inherited frmCadastro_Caixa: TfrmCadastro_Caixa
  Caption = 'Lan'#231'amentos no Caixa'
  ClientHeight = 398
  ExplicitHeight = 437
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 379
    ExplicitTop = 379
  end
  inherited Panel1: TPanel
    Top = 313
    ExplicitTop = 313
  end
  inherited PageControl1: TPageControl
    Height = 313
    ExplicitHeight = 313
    inherited tbsCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 782
      ExplicitHeight = 285
      object NrDocCaixa: TLabel
        Left = 24
        Top = 16
        Width = 109
        Height = 13
        Caption = 'N'#250'mero do Documento'
      end
      object Descrição_Caixa: TLabel
        Left = 24
        Top = 57
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Valor_Caixa: TLabel
        Left = 24
        Top = 93
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object EdtNumero: TEdit
        Left = 153
        Top = 13
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object EdtDescricao: TEdit
        Left = 88
        Top = 54
        Width = 377
        Height = 21
        TabOrder = 1
      end
      object RadioGroup1: TRadioGroup
        Left = 24
        Top = 136
        Width = 169
        Height = 97
        Caption = 'Tipo'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Cr'#233'dito'
          'D'#233'bito')
        TabOrder = 2
      end
      object EdtValor: TtpEdit
        Left = 70
        Top = 90
        Width = 204
        Height = 21
        Alignment = taRightJustify
        CharCase = ecUpperCase
        TabOrder = 3
        Text = '0,00'
        Caracter = tcReal
      end
    end
    inherited tbsPesquisa: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 782
      ExplicitHeight = 285
      object Label3: TLabel [1]
        Left = 4
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
      inherited dbgDados: TDBGrid
        Top = 116
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numero_doc'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipo'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dt_cadastro'
            Width = 80
            Visible = True
          end>
      end
      object CbxFiltros: TComboBoxEx
        Left = 3
        Top = 34
        Width = 158
        Height = 22
        ItemsEx = <
          item
            Caption = 'Descri'#231#227'o'
          end
          item
            Caption = 'Documento'
          end>
        Style = csExDropDownList
        TabOrder = 3
      end
    end
  end
  inherited dsTabela: TDataSource
    DataSet = DataModule1.cdsCaixa
  end
  inherited actAcoes: TActionList
    Left = 672
    Top = 232
  end
  inherited PopupActionBar1: TPopupActionBar
    Left = 720
    Top = 88
  end
end

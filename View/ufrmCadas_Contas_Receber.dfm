inherited frmCadastro_AReceber: TfrmCadastro_AReceber
  Caption = 'Cadastro de Contas a Receber'
  ClientHeight = 552
  ClientWidth = 1092
  ExplicitWidth = 1108
  ExplicitHeight = 591
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 533
    Width = 1092
    ExplicitWidth = 1013
  end
  inherited Panel1: TPanel
    Top = 467
    Width = 1092
    ExplicitWidth = 1013
  end
  inherited PageControl1: TPageControl
    Width = 1092
    Height = 467
    ExplicitWidth = 1013
    inherited tbsCadastro: TTabSheet
      ExplicitTop = 28
      ExplicitWidth = 1084
      ExplicitHeight = 439
      object Documento: TLabel
        Left = 24
        Top = 24
        Width = 54
        Height = 13
        Caption = 'Documento'
      end
      object Descrição: TLabel
        Left = 24
        Top = 64
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Quantidade_Parcelas: TLabel
        Left = 24
        Top = 112
        Width = 99
        Height = 13
        Caption = 'Quantidade Parcelas'
      end
      object Variação: TLabel
        Left = 329
        Top = 112
        Width = 41
        Height = 13
        Caption = 'Varia'#231#227'o'
      end
      object ValorCompra: TLabel
        Left = 24
        Top = 155
        Width = 79
        Height = 13
        Caption = 'Valor da Compra'
      end
      object DtCompra: TLabel
        Left = 24
        Top = 195
        Width = 78
        Height = 13
        Caption = 'Data da Compra'
      end
      object EdtDocumento: TEdit
        Left = 88
        Top = 21
        Width = 393
        Height = 21
        MaxLength = 20
        TabOrder = 0
      end
      object EdtDescricao: TEdit
        Left = 88
        Top = 61
        Width = 393
        Height = 21
        MaxLength = 200
        TabOrder = 1
      end
      object EdtQtdParcelas: TEdit
        Left = 129
        Top = 109
        Width = 168
        Height = 21
        NumbersOnly = True
        TabOrder = 2
      end
      object EdtVariacao: TEdit
        Left = 376
        Top = 109
        Width = 105
        Height = 21
        NumbersOnly = True
        TabOrder = 3
      end
      object EdtVlrCompra: TtpEdit
        Left = 109
        Top = 152
        Width = 193
        Height = 21
        Alignment = taRightJustify
        CharCase = ecUpperCase
        TabOrder = 4
        Text = '0,00'
        Caracter = tcReal
      end
      object EdtDataCompra: TtpEdit
        Left = 114
        Top = 192
        Width = 367
        Height = 21
        Alignment = taRightJustify
        CharCase = ecUpperCase
        MaxLength = 8
        TabOrder = 5
        Check = ckDate
        Caracter = tcNumeric
      end
      object BtnGerarParcelas: TBitBtn
        Left = 114
        Top = 226
        Width = 111
        Height = 25
        Caption = 'Gerar Parcelas'
        TabOrder = 6
        OnClick = BtnGerarParcelasClick
      end
      object DBGrid1: TDBGrid
        Left = 24
        Top = 270
        Width = 457
        Height = 139
        DataSource = DsParcelas
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'Parcela'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vencimento'
            Width = 150
            Visible = True
          end>
      end
      object BtnLimparParcelas: TBitBtn
        Left = 241
        Top = 226
        Width = 119
        Height = 25
        Caption = 'Limpar Parcelas'
        TabOrder = 8
        OnClick = BtnLimparParcelasClick
      end
    end
    inherited tbsPesquisa: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1005
      ExplicitHeight = 273
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
      object Label2: TLabel [2]
        Left = 3
        Top = 75
        Width = 245
        Height = 15
        Caption = 'Status: CANCELADO, ATIVO OU BAIXADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Square721 BT'
        Font.Style = []
        ParentFont = False
      end
      inherited dbgDados: TDBGrid
        Top = 112
        Width = 1084
        Height = 327
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'documento'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 155
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'parcela'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_parcela'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_compra'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_abatido'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dt_compra'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dt_vencimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dt_cadastro'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dt_pagamento'
            Width = 85
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
            Caption = 'Descricao'
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
    DataSet = DataModule1.cdsContas_Receber
  end
  inherited actAcoes: TActionList
    Left = 864
    Top = 40
  end
  inherited PopupActionBar1: TPopupActionBar
    Left = 768
    Top = 48
  end
  object DsParcelas: TDataSource
    DataSet = CdsParcelas
    Left = 928
    Top = 56
  end
  object CdsParcelas: TClientDataSet
    PersistDataPacket.Data = {
      5F0000009619E0BD0100000018000000030000000000030000005F0007506172
      63656C6104000100000000000556616C6F720800040000000100075355425459
      50450200490006004D6F6E6579000A56656E63696D656E746F04000600000000
      000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 992
    Top = 64
    object CdsParcelasParcela: TIntegerField
      FieldName = 'Parcela'
    end
    object CdsParcelasValor: TCurrencyField
      FieldName = 'Valor'
    end
    object CdsParcelasVencimento: TDateField
      FieldName = 'Vencimento'
    end
  end
end

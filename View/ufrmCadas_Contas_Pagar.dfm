inherited frmCadastro_Contas_Pagar: TfrmCadastro_Contas_Pagar
  Caption = 'Cadastro de Contas a Pagar'
  ClientHeight = 556
  ClientWidth = 1066
  ExplicitWidth = 1082
  ExplicitHeight = 595
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 537
    Width = 1066
    ExplicitTop = 537
    ExplicitWidth = 1066
  end
  inherited Panel1: TPanel
    Top = 471
    Width = 1066
    OnClick = Panel1Click
    ExplicitTop = 471
    ExplicitWidth = 1066
  end
  inherited PageControl1: TPageControl
    Width = 1066
    Height = 471
    ExplicitWidth = 1066
    ExplicitHeight = 471
    inherited tbsCadastro: TTabSheet
      ExplicitLeft = 5
      ExplicitTop = 22
      ExplicitWidth = 1058
      ExplicitHeight = 443
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
      object Variação: TLabel
        Left = 329
        Top = 112
        Width = 41
        Height = 13
        Caption = 'Varia'#231#227'o'
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
      object EdtVlrCompra: TtpEdit
        Left = 109
        Top = 152
        Width = 193
        Height = 21
        Alignment = taRightJustify
        CharCase = ecUpperCase
        TabOrder = 3
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
        TabOrder = 4
        Check = ckDate
        Caracter = tcNumeric
      end
      object EdtVariacao: TEdit
        Left = 376
        Top = 109
        Width = 105
        Height = 21
        NumbersOnly = True
        TabOrder = 5
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
      ExplicitWidth = 1058
      ExplicitHeight = 443
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
        Top = 82
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
        Top = 120
        Width = 1058
        Height = 323
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_compra'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_abatido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dt_cadastro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dt_compra'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dt_vencimento'
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
    DataSet = DataModule1.cdsContas_Pagar
    Left = 704
    Top = 48
  end
  inherited actAcoes: TActionList
    Left = 752
    Top = 96
  end
  inherited PopupActionBar1: TPopupActionBar
    Left = 952
    Top = 48
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
    Left = 872
    Top = 40
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
  object DsParcelas: TDataSource
    DataSet = CdsParcelas
    Left = 800
    Top = 40
  end
end

object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 341
  Width = 505
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'nome=nome'
      'login=login'
      'senha=senha'
      'status=status'
      'dt_cadastro=dt_cadastro')
    DataSet = DataModule1.cdsUsuarios
    BCDToCurrency = False
    Left = 184
    Top = 72
  end
  object frxReport: TfrxReport
    Version = '6.8.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44171.836043969900000000
    ReportOptions.LastChange = 44171.964352002320000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 88
    Top = 72
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -7
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Width = 721.890230000000000000
          Height = 30.236240000000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 7.559060000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Usu'#225'rios')
          ParentFont = False
          VAlign = vaCenter
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 514.236550000000000000
          Top = 14.897650000000000000
          Width = 196.535560000000000000
          Height = 11.338590000000000000
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 664.417750000000000000
          Top = 2.000000000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 649.488560000000000000
          Top = 1.000000000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'g')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Width = 238.110390000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 714.331170000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object frxDBDataset1id: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 2.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'id'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."id"]')
          ParentFont = False
        end
        object frxDBDataset1login: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 2.559060000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'login'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."login"]')
          ParentFont = False
        end
        object frxDBDataset1login1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 340.157700000000000000
          Top = 2.559060000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'login'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."login"]')
          ParentFont = False
        end
        object frxDBDataset1dt_cadastro: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 2.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'dt_cadastro'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."dt_cadastro"]')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Width = 98.267780000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 336.378170000000000000
          Width = 211.653680000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 79.370130000000000000
        Width = 718.110700000000000000
        object Shape8: TfrxShapeView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Width = 238.110390000000000000
          Height = 30.236240000000000000
          Frame.Typ = []
        end
        object Shape9: TfrxShapeView
          AllowVectorExport = True
          Left = 336.464750000000000000
          Width = 211.653680000000000000
          Height = 30.236240000000000000
          Frame.Typ = []
        end
        object Shape10: TfrxShapeView
          AllowVectorExport = True
          Left = 548.118430000000000000
          Width = 166.299320000000000000
          Height = 30.236240000000000000
          Frame.Typ = []
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 7.559060000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 347.023810000000000000
          Top = 7.559060000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LOGIN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 581.677490000000000000
          Top = 7.559060000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CADASTRO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          Frame.Typ = []
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sistema desenvolvido por Marcus Vinicius da Silva Milagres')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 111.929190000000000000
          Top = 7.779530000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = -9.440940000000000000
          Top = 7.779530000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total de Usu'#225'rios')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 376
    Top = 16
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 376
    Top = 88
  end
  object frxDBDatasetCaixa: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'numero_doc=numero_doc'
      'descricao=descricao'
      'valor=valor'
      'tipo=tipo'
      'dt_cadastro=dt_cadastro')
    DataSet = DataModule1.cdsCaixa
    BCDToCurrency = False
    Left = 184
    Top = 152
  end
  object frxReportCaixa: TfrxReport
    Version = '6.8.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44293.875271527800000000
    ReportOptions.LastChange = 44293.906968472220000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 88
    Top = 152
    Datasets = <
      item
        DataSet = frxDBDatasetCaixa
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 19.677180000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 555.590910000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Lan'#231'amentos no Caixa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 4.779530000000000000
          Top = 34.795300000000000000
          Width = 706.772110000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 79.370130000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nr. Documento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 130.063080000000000000
          Top = 3.779530000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 374.055350000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 577.606680000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data do Cadastro')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Top = 28.236240000000000000
          Width = 706.772110000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetCaixa
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2numero_doc: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'numero_doc'
          DataSet = frxDBDatasetCaixa
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."numero_doc"]')
        end
        object frxDBDataset2descricao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 7.559060000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'descricao'
          DataSet = frxDBDatasetCaixa
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."descricao"]')
        end
        object frxDBDataset2valor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 7.559060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = frxDBDatasetCaixa
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."valor"]')
        end
        object frxDBDataset2tipo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 7.559060000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'tipo'
          DataSet = frxDBDatasetCaixa
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."tipo"]')
        end
        object frxDBDataset2dt_cadastro: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'dt_cadastro'
          DataSet = frxDBDatasetCaixa
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."dt_cadastro"]')
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 30.236240000000000000
          Width = 706.772110000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
      end
    end
  end
end

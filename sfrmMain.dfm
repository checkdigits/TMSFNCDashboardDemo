object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'TMS FNC Dashboard Demo'
  ClientHeight = 624
  ClientWidth = 1041
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  StyleName = 'Sky'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pcMain: TPageControl
    Left = 0
    Top = 0
    Width = 688
    Height = 624
    ActivePage = tabArrow
    Align = alClient
    TabOrder = 0
    OnChange = pcMainChange
    object tabArrow: TTabSheet
      Caption = 'Arrow'
      object lblArrowEURUSD: TLabel
        Left = 3
        Top = 53
        Width = 119
        Height = 33
        Caption = 'USDEUR: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object wigArrow: TTMSFNCWidgetArrow
        Left = 0
        Top = 99
        Width = 250
        Height = 250
        ParentDoubleBuffered = False
        DoubleBuffered = True
        TabOrder = 0
        ArrowOptions.Border.Kind = gskSolid
        ArrowOptions.Border.Color = 6908265
        Border.Kind = gskSolid
        Border.Color = 6908265
        CaptionOptions.Font.Charset = DEFAULT_CHARSET
        CaptionOptions.Font.Color = clGray
        CaptionOptions.Font.Height = -19
        CaptionOptions.Font.Name = 'Arial'
        CaptionOptions.Font.Style = []
        Value = 90
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = clGray
        ValueFont.Height = -12
        ValueFont.Name = 'Arial'
        ValueFont.Style = []
        ValueText = 'UP'
      end
      object edArrowAPIKey: TLabeledEdit
        Left = 3
        Top = 24
        Width = 166
        Height = 21
        EditLabel.Width = 132
        EditLabel.Height = 13
        EditLabel.Caption = 'Currencylayer.com API Key'
        TabOrder = 1
      end
      object btnArrowStart: TButton
        Left = 175
        Top = 22
        Width = 75
        Height = 25
        Caption = '&Start'
        TabOrder = 2
        OnClick = btnArrowStartClick
      end
    end
    object tabDistributionIndicator: TTabSheet
      Caption = 'Distribution Indicator'
      ImageIndex = 1
      DesignSize = (
        680
        596)
      object Label1: TLabel
        Left = 24
        Top = 377
        Width = 85
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Distribution Type:'
      end
      object coDistIndType: TComboBox
        Left = 144
        Top = 374
        Width = 169
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akBottom]
        TabOrder = 0
        OnChange = coDistIndTypeChange
        Items.Strings = (
          'Donut'
          'Pie'
          'Funnel'
          'Horizontal Bar'
          'Vertical Var')
      end
      object rdDistIndAbs: TRadioButton
        Left = 240
        Top = 416
        Width = 185
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'Show Absolute Values'
        TabOrder = 1
        OnClick = rdDistIndClick
      end
      object rdDistIndPer: TRadioButton
        Left = 24
        Top = 416
        Width = 185
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'Show Percentages'
        Checked = True
        TabOrder = 2
        TabStop = True
        OnClick = rdDistIndClick
      end
      object wigDistributionIndicator: TTMSFNCWidgetDistributionIndicator
        Left = 1
        Top = 1
        Width = 683
        Height = 350
        ParentDoubleBuffered = False
        DoubleBuffered = True
        TabOrder = 3
        Border.Kind = gskSolid
        Border.Color = 6908265
        DonutThickness = 0.250000000000000000
        BarWidth = 0.300000011920929000
        BarLength = 0.899999976158142100
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = 5197615
        ValueFont.Height = -16
        ValueFont.Name = 'Arial'
        ValueFont.Style = []
        ValueType = vtPercentage
        ValueFormatPercentage = '%.0n%%'
        ValueFormatAbsolute = '%.0n'
        DistributionType = dtHorizontalBar
        Values = <
          item
            Value = 22.000000000000000000
            Text = 'UK'
            Fill.Kind = gfkSolid
            Fill.Orientation = gfoVertical
            Fill.Color = 13749760
            Fill.ColorTo = clGray
            Fill.ColorMirror = -1
            Fill.ColorMirrorTo = -1
            Fill.TextureMode = gtmStretch
            Stroke.Kind = gskSolid
            Stroke.Color = 6908265
          end
          item
            Value = 10.000000000000000000
            Text = 'Italy'
            Fill.Kind = gfkSolid
            Fill.Orientation = gfoVertical
            Fill.Color = 42495
            Fill.ColorTo = clGray
            Fill.ColorMirror = -1
            Fill.ColorMirrorTo = -1
            Fill.TextureMode = gtmStretch
            Stroke.Kind = gskSolid
            Stroke.Color = 6908265
          end
          item
            Value = 21.000000000000000000
            Text = 'Belgium'
            Fill.Kind = gfkSolid
            Fill.Orientation = gfoVertical
            Fill.Color = 3329330
            Fill.ColorTo = clGray
            Fill.ColorMirror = -1
            Fill.ColorMirrorTo = -1
            Fill.TextureMode = gtmStretch
            Stroke.Kind = gskSolid
            Stroke.Color = 6908265
          end
          item
            Value = 25.000000000000000000
            Text = 'USA'
            Fill.Kind = gfkSolid
            Fill.Orientation = gfoVertical
            Fill.Color = 15631086
            Fill.ColorTo = clGray
            Fill.ColorMirror = -1
            Fill.ColorMirrorTo = -1
            Fill.TextureMode = gtmStretch
            Stroke.Kind = gskSolid
            Stroke.Color = 6908265
          end
          item
            Value = 16.000000000000000000
            Text = 'Germany'
            Fill.Kind = gfkSolid
            Fill.Orientation = gfoVertical
            Fill.Color = clYellow
            Fill.ColorTo = clGray
            Fill.ColorMirror = -1
            Fill.ColorMirrorTo = -1
            Fill.TextureMode = gtmStretch
            Stroke.Kind = gskSolid
            Stroke.Color = 6908265
          end
          item
            Value = 6.000000000000000000
            Text = 'Spain'
            Fill.Kind = gfkSolid
            Fill.Orientation = gfoVertical
            Fill.Color = 17919
            Fill.ColorTo = clGray
            Fill.ColorMirror = -1
            Fill.ColorMirrorTo = -1
            Fill.TextureMode = gtmStretch
            Stroke.Kind = gskSolid
            Stroke.Color = 6908265
          end>
        Header.Text = 'Sales by Countries'
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clGray
        Header.Font.Height = -19
        Header.Font.Name = 'Arial'
        Header.Font.Style = []
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clGray
        Footer.Font.Height = -19
        Footer.Font.Name = 'Arial'
        Footer.Font.Style = []
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clGray
        Legend.Font.Height = -16
        Legend.Font.Name = 'Arial Narrow'
        Legend.Font.Style = []
        Legend.Position = lpBottom
        Funnel.WidthTop = 0.600000023841857900
        Funnel.WidthBottom = 0.330000013113021900
        Funnel.Gap = 0.019999999552965160
      end
    end
    object tabGauge: TTabSheet
      Caption = 'Gauge'
      ImageIndex = 2
      object wigGauge: TTMSFNCWidgetGauge
        Left = 2
        Top = 2
        Width = 562
        Height = 318
        ParentDoubleBuffered = False
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        TabOrder = 0
        Border.Kind = gskSolid
        Border.Color = 6908265
        MaximumValue = 100.000000000000000000
        OuterCircle.Width = 0.030000000000000000
        InnerCircle.Color = 15130800
        OuterRim.Color = 9470064
        OuterRim.Width = 2
        Arc.Width = 0.030000000000000000
        Arc.Threshold.Center = 10.000000000000000000
        Arc.Threshold.EndValue = 100.000000000000000000
        DialText = 'Temperature'
        GaugeValuesFormat = '0'
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = 5197615
        ValueFont.Height = -16
        ValueFont.Name = 'Arial'
        ValueFont.Style = []
        ValueFormat = '000.00'
        Sections = <>
        ExtraNeedles = <>
      end
      object edGaugeKey: TLabeledEdit
        Left = 3
        Top = 344
        Width = 166
        Height = 21
        EditLabel.Width = 131
        EditLabel.Height = 13
        EditLabel.Caption = 'Weatherstack.com API Key'
        TabOrder = 1
      end
      object btnGaugeStart: TButton
        Left = 347
        Top = 342
        Width = 75
        Height = 25
        Caption = '&Start'
        TabOrder = 2
        OnClick = btnGaugeStartClick
      end
      object edGaugeLocation: TLabeledEdit
        Left = 175
        Top = 344
        Width = 166
        Height = 21
        EditLabel.Width = 40
        EditLabel.Height = 13
        EditLabel.Caption = 'Location'
        TabOrder = 3
        Text = 'Kurunegala'
      end
    end
    object tabMarqueeProgress: TTabSheet
      Caption = 'Marquee Progress'
      ImageIndex = 3
      object wigMarqueeCntdProg: TTMSFNCWidgetMarqueeContinuousProgress
        Left = 3
        Top = 3
        Width = 300
        Height = 300
        ParentDoubleBuffered = False
        DoubleBuffered = True
        TabOrder = 0
        CircleOptions.Margin = 30
        CircleOptions.Fill.Kind = gfkSolid
        CircleOptions.Fill.Orientation = gfoVertical
        CircleOptions.Fill.Color = 15130800
        CircleOptions.Fill.ColorTo = clGray
        CircleOptions.Fill.ColorMirror = -1
        CircleOptions.Fill.ColorMirrorTo = -1
        CircleOptions.Fill.TextureMode = gtmStretch
        CircleOptions.UnfinishedFill.Kind = gfkSolid
        CircleOptions.UnfinishedFill.Orientation = gfoVertical
        CircleOptions.UnfinishedFill.Color = clWhite
        CircleOptions.UnfinishedFill.ColorTo = clGray
        CircleOptions.UnfinishedFill.ColorMirror = -1
        CircleOptions.UnfinishedFill.ColorMirrorTo = -1
        CircleOptions.UnfinishedFill.TextureMode = gtmStretch
        MarqueeAnimation.Fill.Kind = gfkSolid
        MarqueeAnimation.Fill.Orientation = gfoVertical
        MarqueeAnimation.Fill.Color = 42495
        MarqueeAnimation.Fill.ColorTo = clGray
        MarqueeAnimation.Fill.ColorMirror = -1
        MarqueeAnimation.Fill.ColorMirrorTo = -1
        MarqueeAnimation.Fill.TextureMode = gtmStretch
        MarqueeAnimation.SideFill.Kind = gfkSolid
        MarqueeAnimation.SideFill.Orientation = gfoVertical
        MarqueeAnimation.SideFill.Color = 55295
        MarqueeAnimation.SideFill.ColorTo = clGray
        MarqueeAnimation.SideFill.ColorMirror = -1
        MarqueeAnimation.SideFill.ColorMirrorTo = -1
        MarqueeAnimation.SideFill.TextureMode = gtmStretch
        CenterText = 'Processing...'
        CenterTextFont.Charset = DEFAULT_CHARSET
        CenterTextFont.Color = clGray
        CenterTextFont.Height = -27
        CenterTextFont.Name = 'Arial Narrow'
        CenterTextFont.Style = []
        Border.Kind = gskSolid
        Border.Color = 6908265
        CaptionOptions.Font.Charset = DEFAULT_CHARSET
        CaptionOptions.Font.Color = clGray
        CaptionOptions.Font.Height = -19
        CaptionOptions.Font.Name = 'Arial'
        CaptionOptions.Font.Style = []
      end
      object wigMarqueeProg: TTMSFNCWidgetMarqueeProgress
        Left = 309
        Top = 3
        Width = 300
        Height = 300
        ParentDoubleBuffered = False
        DoubleBuffered = True
        TabOrder = 1
        CircleOptions.Margin = 30
        CircleOptions.Fill.Kind = gfkSolid
        CircleOptions.Fill.Orientation = gfoVertical
        CircleOptions.Fill.Color = 13749760
        CircleOptions.Fill.ColorTo = clGray
        CircleOptions.Fill.ColorMirror = -1
        CircleOptions.Fill.ColorMirrorTo = -1
        CircleOptions.Fill.TextureMode = gtmStretch
        CircleOptions.UnfinishedFill.Kind = gfkSolid
        CircleOptions.UnfinishedFill.Orientation = gfoVertical
        CircleOptions.UnfinishedFill.Color = clWhite
        CircleOptions.UnfinishedFill.ColorTo = clGray
        CircleOptions.UnfinishedFill.ColorMirror = -1
        CircleOptions.UnfinishedFill.ColorMirrorTo = -1
        CircleOptions.UnfinishedFill.TextureMode = gtmStretch
        Border.Kind = gskSolid
        Border.Color = 6908265
        CaptionOptions.Font.Charset = DEFAULT_CHARSET
        CaptionOptions.Font.Color = clGray
        CaptionOptions.Font.Height = -19
        CaptionOptions.Font.Name = 'Arial'
        CaptionOptions.Font.Style = []
        Value = 30.000000000000000000
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = clGray
        ValueFont.Height = -33
        ValueFont.Name = 'Arial Narrow'
        ValueFont.Style = []
        ValueFormat = '%g%%'
      end
    end
    object tabMultiProgress: TTabSheet
      Caption = 'Multi Progress'
      ImageIndex = 4
      object wigMultiProg: TTMSFNCWidgetMultiProgress
        Left = 0
        Top = 0
        Width = 680
        Height = 596
        Align = alClient
        ParentDoubleBuffered = False
        DoubleBuffered = True
        TabOrder = 0
        CircleOptions.Margin = 30
        CircleItems = <
          item
            Fill.Kind = gfkSolid
            Fill.Orientation = gfoVertical
            Fill.Color = 13749760
            Fill.ColorTo = clGray
            Fill.ColorMirror = -1
            Fill.ColorMirrorTo = -1
            Fill.TextureMode = gtmStretch
            UnfinishedFill.Kind = gfkSolid
            UnfinishedFill.Orientation = gfoVertical
            UnfinishedFill.Color = clWhite
            UnfinishedFill.ColorTo = clGray
            UnfinishedFill.ColorMirror = -1
            UnfinishedFill.ColorMirrorTo = -1
            UnfinishedFill.TextureMode = gtmStretch
            Value = 50.000000000000000000
            Caption = 'Item 1'
          end
          item
            Fill.Kind = gfkSolid
            Fill.Orientation = gfoVertical
            Fill.Color = 42495
            Fill.ColorTo = clGray
            Fill.ColorMirror = -1
            Fill.ColorMirrorTo = -1
            Fill.TextureMode = gtmStretch
            UnfinishedFill.Kind = gfkSolid
            UnfinishedFill.Orientation = gfoVertical
            UnfinishedFill.Color = clWhite
            UnfinishedFill.ColorTo = clGray
            UnfinishedFill.ColorMirror = -1
            UnfinishedFill.ColorMirrorTo = -1
            UnfinishedFill.TextureMode = gtmStretch
            Value = 50.000000000000000000
            Caption = 'Item 2'
          end
          item
            Fill.Kind = gfkSolid
            Fill.Orientation = gfoVertical
            Fill.Color = 3329330
            Fill.ColorTo = clGray
            Fill.ColorMirror = -1
            Fill.ColorMirrorTo = -1
            Fill.TextureMode = gtmStretch
            UnfinishedFill.Kind = gfkSolid
            UnfinishedFill.Orientation = gfoVertical
            UnfinishedFill.Color = clWhite
            UnfinishedFill.ColorTo = clGray
            UnfinishedFill.ColorMirror = -1
            UnfinishedFill.ColorMirrorTo = -1
            UnfinishedFill.TextureMode = gtmStretch
            Value = 50.000000000000000000
            Caption = 'Item 3'
          end>
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clGray
        Legend.Font.Height = -16
        Legend.Font.Name = 'Arial Narrow'
        Legend.Font.Style = []
        Legend.Position = lpTopRight
        Legend.Border.Kind = gskNone
        Legend.Border.Color = 11119017
        Legend.Fill.Kind = gfkSolid
        Legend.Fill.Orientation = gfoVertical
        Legend.Fill.Color = clWhite
        Legend.Fill.ColorTo = clGray
        Legend.Fill.ColorMirror = -1
        Legend.Fill.ColorMirrorTo = -1
        Legend.Fill.TextureMode = gtmStretch
        Border.Kind = gskSolid
        Border.Color = 6908265
        CaptionOptions.Font.Charset = DEFAULT_CHARSET
        CaptionOptions.Font.Color = clGray
        CaptionOptions.Font.Height = -19
        CaptionOptions.Font.Name = 'Arial'
        CaptionOptions.Font.Style = []
        CaptionOptions.Position = cpTop
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = 5197615
        ValueFont.Height = -16
        ValueFont.Name = 'Arial Narrow'
        ValueFont.Style = [fsBold]
        ValueFormat = '%g%%'
      end
    end
    object tabProgress: TTabSheet
      Caption = 'Progress'
      ImageIndex = 7
      object Label3: TLabel
        Left = 48
        Top = 263
        Width = 157
        Height = 13
        Caption = 'Animated Value Change Example'
      end
      object Label2: TLabel
        Left = 312
        Top = 263
        Width = 150
        Height = 13
        Caption = 'Bitmap Value Indicator Example'
      end
      object tmsBitmapContainer: TTMSFNCBitmapContainer
        Left = 176
        Top = 152
        Width = 26
        Height = 26
        Visible = True
        Items = <
          item
            Bitmap.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200806000000737A7AF4000000097048597300000B1300000B1301009A9C18
              000004BA4944415478DAD597CF6B5C5514C7CFBBF32633E92418DAA869EBC411
              5BADA974615504C5851870552C360945A45B77128BFE0D2E4CC485E04E5C0826
              8D28A282082E04C50A89B58BF82359A44D9AFE20416B9A647EBC79CFCF79F7BE
              7466CCD4A44E101F7C7BEFCCBCBEEFE79E73EEB92F5E1445F25F5EDEFF0AE080
              C8136D22434744FABA451EC98974EBF7AB224B4B2253E745A6CB2263B322DFB7
              1400E3E13E91D17EE647517B93FBD6D124FA0A4D8BBC0AC85BFF0A00E38182C8
              DB2F8AECEDDB666801900F442ECF89BC02C8996D031C8CA2F1670018F23C496F
              D33CB92A688CE77F0DC08CE70D6E19E041FEC3F32227FA6B6FDCA679ED533525
              9F884CFCCA82FE1140CD9FC6FCF86D1A3703F9187DB309441DC003144E5E64E4
              65E66D2D0628A177D1C586E2DC00A0E0EEC988CC9F625E40A605E6B510219A43
              EF495C1B792016EA0008FD281AD6F8A49C792B01545534867EC10B80D375000F
              73CF319B860D80565E090035A005293F3B8B1840F7FB6E91F197F8629703D889
              2B406BE87D745D6450FB4302304EA319784E6CF1B532FF8D11A055CB17361267
              00188C011EE2C3636C3D24991D04D0422CA2B3E8076D4E3500D1937CC9212359
              D9B9146804F4BCF8097D6BA3E0C500843F3ACC171A81AE260071A9866E25FC53
              D7BF3C1BB1948EA63980D6C0EF2E02D3B50087781E92FD689F83687769887387
              71087E558D43BB925A008E8B386DC65888644C6022B77235D7CD7F49E2AD2833
              09C041578474C1F8804FD2E0636670F342ABD02901891CA41AE9E8A7ACB9F1DC
              0350606CE1052EFFD7C436A499DA22D45D703F0080480FCAB9845551E0468D82
              8E0AA0E6D210018530895216469572D2A8ADA045B7FA850680813B81D022EC45
              9D55BBF28A8ABE196018041646A53510D600E88A556AE403E0FB2269E669DF2A
              0640CB129F05724E1AFA805E5A075A84F761D68D99EFCC15A2CC5876E615178D
              468094B1E689711B635BDA01A032F32BDC87A9FC887EABED847A1185910227D5
              110CF602D04EE2AA0AC0BCC8585210E695D0A5C5ED04CFAD3E318F8D31CCAA1C
              80BED1AC325EE4B729EEBBB2D959A0A721F7CC3FCEC30B18DEA1E767D9464101
              8A9897021B894A580F9072006A9E4959F3F6B4034015DAEB329AE5B74913EFE6
              BF9F860E62784F28A38F627817259B4141C902AC075671245C04340DC601A479
              7046578DC92E4CDB9967303568956DB5C87896DF564C93F7810D8850C67BAB32
              7018E32E4E0E0F8822F3B5F24D8872680B3374DB50579F3176F56A9E284D5F0F
              68284B004CF1F99A6F2BBFD66FD3774220267A2BF2C221CC73BCF48780AC31BF
              4124D61C4425BC1901058857CEAA731875B0DA2CA621E6D7395ECFF3F9AA2F1F
              CD1A39D1E8D5F4ADF84020137B020BD1E920D615A2644134158103D0D56BC83B
              31CAA939C611C6CB8CD380FCD9C4FC96000EE224DDF0CD7C51F6EDA797FA4054
              3525A4A3E4FA8316A1169F165C96901B0C4B985FC07C312D97AA464ECFFAF18B
              906C1B40AFFCE781C93CEBBF662279A39BD5EFD6B400E007B6BFC6FD5E5B2E00
              2B002CA13F50D593D78B9FDD185938DE11DEEAF95BFEDB30FF69D164FAB34F51
              75435145EEC5F728D1E9894CCC7199D36812900BFCFE61E9CBE277F3C7B2E156
              9E7B5B7F1DF7BC73CE988E2EF1EF2EC4E75D70752E5C3C55D89261E3F517264F
              28DFC188B96B0000000049454E44AE426082}
            Name = 'BlueBall'
            Tag = 0
          end>
      end
      object wigProgressAni: TTMSFNCWidgetProgress
        Left = 3
        Top = 3
        Width = 250
        Height = 250
        ParentDoubleBuffered = False
        DoubleBuffered = True
        TabOrder = 1
        CircleOptions.Fill.Kind = gfkSolid
        CircleOptions.Fill.Orientation = gfoVertical
        CircleOptions.Fill.Color = 13749760
        CircleOptions.Fill.ColorTo = clGray
        CircleOptions.Fill.ColorMirror = -1
        CircleOptions.Fill.ColorMirrorTo = -1
        CircleOptions.Fill.TextureMode = gtmStretch
        CircleOptions.UnfinishedFill.Kind = gfkSolid
        CircleOptions.UnfinishedFill.Orientation = gfoVertical
        CircleOptions.UnfinishedFill.Color = 16119285
        CircleOptions.UnfinishedFill.ColorTo = clGray
        CircleOptions.UnfinishedFill.ColorMirror = -1
        CircleOptions.UnfinishedFill.ColorMirrorTo = -1
        CircleOptions.UnfinishedFill.TextureMode = gtmStretch
        Border.Kind = gskSolid
        Border.Color = 6908265
        ValueIndicator.Fill.Kind = gfkSolid
        ValueIndicator.Fill.Orientation = gfoVertical
        ValueIndicator.Fill.Color = 13749760
        ValueIndicator.Fill.ColorTo = clGray
        ValueIndicator.Fill.ColorMirror = -1
        ValueIndicator.Fill.ColorMirrorTo = -1
        ValueIndicator.Fill.TextureMode = gtmStretch
        ValueIndicator.InnerDotFill.Kind = gfkSolid
        ValueIndicator.InnerDotFill.Orientation = gfoVertical
        ValueIndicator.InnerDotFill.Color = clWhite
        ValueIndicator.InnerDotFill.ColorTo = clGray
        ValueIndicator.InnerDotFill.ColorMirror = -1
        ValueIndicator.InnerDotFill.ColorMirrorTo = -1
        ValueIndicator.InnerDotFill.TextureMode = gtmStretch
        Tickmarks.Stroke.Kind = gskSolid
        Tickmarks.Stroke.Color = 13749760
        Tickmarks.Stroke.Width = 2.000000000000000000
        Tickmarks.TextFont.Charset = DEFAULT_CHARSET
        Tickmarks.TextFont.Color = 5197615
        Tickmarks.TextFont.Height = -16
        Tickmarks.TextFont.Name = 'Arial Narrow'
        Tickmarks.TextFont.Style = []
        CaptionOptions.Font.Charset = DEFAULT_CHARSET
        CaptionOptions.Font.Color = clGray
        CaptionOptions.Font.Height = -19
        CaptionOptions.Font.Name = 'Arial'
        CaptionOptions.Font.Style = []
        ValueAnimation.Active = True
        Value = 49.998016357421880000
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = clGray
        ValueFont.Height = -33
        ValueFont.Name = 'Arial Narrow'
        ValueFont.Style = []
        ValueFormat = '%g%%'
      end
      object wigProgressBMP: TTMSFNCWidgetProgress
        Left = 259
        Top = 3
        Width = 250
        Height = 250
        ParentDoubleBuffered = False
        DoubleBuffered = True
        TabOrder = 2
        CircleOptions.Fill.Kind = gfkSolid
        CircleOptions.Fill.Orientation = gfoVertical
        CircleOptions.Fill.Color = 13749760
        CircleOptions.Fill.ColorTo = clGray
        CircleOptions.Fill.ColorMirror = -1
        CircleOptions.Fill.ColorMirrorTo = -1
        CircleOptions.Fill.TextureMode = gtmStretch
        CircleOptions.UnfinishedFill.Kind = gfkSolid
        CircleOptions.UnfinishedFill.Orientation = gfoVertical
        CircleOptions.UnfinishedFill.Color = 16119285
        CircleOptions.UnfinishedFill.ColorTo = clGray
        CircleOptions.UnfinishedFill.ColorMirror = -1
        CircleOptions.UnfinishedFill.ColorMirrorTo = -1
        CircleOptions.UnfinishedFill.TextureMode = gtmStretch
        Border.Kind = gskSolid
        Border.Color = 6908265
        ValueIndicator.Kind = piBitmap
        ValueIndicator.Fill.Kind = gfkSolid
        ValueIndicator.Fill.Orientation = gfoVertical
        ValueIndicator.Fill.Color = 13749760
        ValueIndicator.Fill.ColorTo = clGray
        ValueIndicator.Fill.ColorMirror = -1
        ValueIndicator.Fill.ColorMirrorTo = -1
        ValueIndicator.Fill.TextureMode = gtmStretch
        ValueIndicator.BitmapName = 'BlueBall'
        ValueIndicator.InnerDotFill.Kind = gfkSolid
        ValueIndicator.InnerDotFill.Orientation = gfoVertical
        ValueIndicator.InnerDotFill.Color = clWhite
        ValueIndicator.InnerDotFill.ColorTo = clGray
        ValueIndicator.InnerDotFill.ColorMirror = -1
        ValueIndicator.InnerDotFill.ColorMirrorTo = -1
        ValueIndicator.InnerDotFill.TextureMode = gtmStretch
        Tickmarks.Stroke.Kind = gskSolid
        Tickmarks.Stroke.Color = 13749760
        Tickmarks.Stroke.Width = 2.000000000000000000
        Tickmarks.TextFont.Charset = DEFAULT_CHARSET
        Tickmarks.TextFont.Color = 5197615
        Tickmarks.TextFont.Height = -16
        Tickmarks.TextFont.Name = 'Arial Narrow'
        Tickmarks.TextFont.Style = []
        CaptionOptions.Font.Charset = DEFAULT_CHARSET
        CaptionOptions.Font.Color = clGray
        CaptionOptions.Font.Height = -19
        CaptionOptions.Font.Name = 'Arial'
        CaptionOptions.Font.Style = []
        BitmapContainer = tmsBitmapContainer
        Value = 50.000000000000000000
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = clGray
        ValueFont.Height = -33
        ValueFont.Name = 'Arial Narrow'
        ValueFont.Style = []
        ValueFormat = '%g%%'
      end
    end
    object tabSetPointAndLcdLabel: TTabSheet
      Caption = 'Set Point and LCD Label'
      ImageIndex = 6
      DesignSize = (
        680
        596)
      object Label4: TLabel
        Left = 24
        Top = 311
        Width = 134
        Height = 13
        Caption = 'Ambient Room Temperature'
      end
      object wigLCDLabel: TTMSFNCWidgetLCDLabel
        Left = 224
        Top = 306
        Width = 200
        Height = 50
        ParentDoubleBuffered = False
        Color = clBlack
        DoubleBuffered = True
        TabOrder = 0
        Fill.Kind = gfkGradient
        Fill.Color = clBlack
        Caption.Fill.Kind = gfkGradient
        Caption.Fill.Orientation = gfoVertical
        Caption.Fill.Color = 17919
        Caption.Fill.ColorTo = clRed
        Caption.Fill.ColorMirror = -1
        Caption.Fill.ColorMirrorTo = -1
        Caption.Fill.TextureMode = gtmStretch
        Caption.FillOff.Kind = gfkSolid
        Caption.FillOff.Orientation = gfoVertical
        Caption.FillOff.Color = clGray
        Caption.FillOff.ColorTo = clGray
        Caption.FillOff.ColorMirror = -1
        Caption.FillOff.ColorMirrorTo = -1
        Caption.FillOff.TextureMode = gtmStretch
        Caption.Value = 25.000000000000000000
        Caption.Format = '000.00'
        Caption.TimeFormat = 'hh:nn:ss'
        Caption.TimeValue = 43160.455653842590000000
        Border.Kind = gskSolid
        Border.Color = 6908265
      end
      object tbarSetPointTemp: TTrackBar
        Left = 0
        Top = 338
        Width = 200
        Height = 28
        Anchors = [akLeft, akBottom]
        Max = 50
        Min = 10
        Position = 45
        TabOrder = 1
        TabStop = False
        OnChange = tbarSetPointTempChange
      end
      object btnChangeSetPoint: TButton
        Left = 7
        Top = 378
        Width = 120
        Height = 25
        Caption = 'Change Setpoint'
        TabOrder = 2
        OnClick = btnChangeSetPointClick
      end
      object wigSetPoint: TTMSFNCWidgetSetPoint
        Left = 74
        Top = 0
        Width = 300
        Height = 300
        ParentDoubleBuffered = False
        DoubleBuffered = True
        TabOrder = 3
        Value = 0.000000000000000000
        ValueOptions.Max = 100.000000000000000000
        ValueOptions.Step = 1.000000000000000000
        ValueOptions.Font.Charset = DEFAULT_CHARSET
        ValueOptions.Font.Color = clGray
        ValueOptions.Font.Height = -33
        ValueOptions.Font.Name = 'Arial Narrow'
        ValueOptions.Font.Style = []
        ValueOptions.Format = '%g'
        CircleOptions.Fill.Kind = gfkSolid
        CircleOptions.Fill.Orientation = gfoVertical
        CircleOptions.Fill.Color = 13434880
        CircleOptions.Fill.ColorTo = clGray
        CircleOptions.Fill.ColorMirror = -1
        CircleOptions.Fill.ColorMirrorTo = -1
        CircleOptions.Fill.TextureMode = gtmStretch
        CircleOptions.UnfinishedFill.Kind = gfkSolid
        CircleOptions.UnfinishedFill.Orientation = gfoVertical
        CircleOptions.UnfinishedFill.Color = 16119285
        CircleOptions.UnfinishedFill.ColorTo = clGray
        CircleOptions.UnfinishedFill.ColorMirror = -1
        CircleOptions.UnfinishedFill.ColorMirrorTo = -1
        CircleOptions.UnfinishedFill.TextureMode = gtmStretch
        CircleOptions.Margin = 10
        CircleOptions.Thickness = 3
        CircleOptions.UnfinishedThickness = 3
        CircleOptions.StartAngle = 230
        CircleOptions.EndAngle = 130
        SetPoint = 25.000000000000000000
        SetPointIndicator.Fill.Kind = gfkSolid
        SetPointIndicator.Fill.Orientation = gfoVertical
        SetPointIndicator.Fill.Color = 13458026
        SetPointIndicator.Fill.ColorTo = clGray
        SetPointIndicator.Fill.ColorMirror = -1
        SetPointIndicator.Fill.ColorMirrorTo = -1
        SetPointIndicator.Fill.TextureMode = gtmStretch
        SetPointIndicator.Size = 40
        SetPointIndicator.InnerDotSize = 15
        SetPointIndicator.InnerDotFill.Kind = gfkSolid
        SetPointIndicator.InnerDotFill.Orientation = gfoVertical
        SetPointIndicator.InnerDotFill.Color = 16443110
        SetPointIndicator.InnerDotFill.ColorTo = clGray
        SetPointIndicator.InnerDotFill.ColorMirror = -1
        SetPointIndicator.InnerDotFill.ColorMirrorTo = -1
        SetPointIndicator.InnerDotFill.TextureMode = gtmStretch
        SetPointStripFill.Kind = gfkSolid
        SetPointStripFill.Orientation = gfoVertical
        SetPointStripFill.Color = 16443110
        SetPointStripFill.ColorTo = clGray
        SetPointStripFill.ColorMirror = -1
        SetPointStripFill.ColorMirrorTo = -1
        SetPointStripFill.TextureMode = gtmStretch
        Border.Kind = gskSolid
        Border.Color = 6908265
        CaptionOptions.Text = 'Thermostat'
        CaptionOptions.Font.Charset = DEFAULT_CHARSET
        CaptionOptions.Font.Color = clGray
        CaptionOptions.Font.Height = -19
        CaptionOptions.Font.Name = 'Arial'
        CaptionOptions.Font.Style = []
        Tickmarks.Count = 15
        Tickmarks.Size = 12
        Tickmarks.Stroke.Kind = gskSolid
        Tickmarks.Stroke.Color = 13434880
        Tickmarks.StartEndMarkSize = 25
        Tickmarks.StartText = 'Green'
        Tickmarks.EndText = 'Comfort'
        Tickmarks.TextFont.Charset = DEFAULT_CHARSET
        Tickmarks.TextFont.Color = 5197615
        Tickmarks.TextFont.Height = -16
        Tickmarks.TextFont.Name = 'Arial Narrow'
        Tickmarks.TextFont.Style = []
        Tickmarks.CenterText = 'Cooling'
        ValueIndicator.Fill.Kind = gfkSolid
        ValueIndicator.Fill.Orientation = gfoVertical
        ValueIndicator.Fill.Color = 13458026
        ValueIndicator.Fill.ColorTo = clGray
        ValueIndicator.Fill.ColorMirror = -1
        ValueIndicator.Fill.ColorMirrorTo = -1
        ValueIndicator.Fill.TextureMode = gtmStretch
        ValueIndicator.Size = 40
        ValueIndicator.InnerDotFill.Kind = gfkSolid
        ValueIndicator.InnerDotFill.Orientation = gfoVertical
        ValueIndicator.InnerDotFill.Color = clWhite
        ValueIndicator.InnerDotFill.ColorTo = clGray
        ValueIndicator.InnerDotFill.ColorMirror = -1
        ValueIndicator.InnerDotFill.ColorMirrorTo = -1
        ValueIndicator.InnerDotFill.TextureMode = gtmStretch
      end
      object spSetPoint: TSpinEdit
        Left = 133
        Top = 380
        Width = 92
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 4
        Value = 25
      end
    end
    object tabTrendIndicator: TTabSheet
      Caption = 'Trend Indicator'
      ImageIndex = 7
      object wigTrendIndicator: TTMSFNCWidgetTrendIndicator
        Left = 3
        Top = 0
        Width = 580
        Height = 310
        ParentDoubleBuffered = False
        DoubleBuffered = True
        TabOrder = 0
        Border.Kind = gskSolid
        Border.Color = 6908265
        ValueFont.Charset = DEFAULT_CHARSET
        ValueFont.Color = clGray
        ValueFont.Height = -19
        ValueFont.Name = 'Arial'
        ValueFont.Style = []
        ValueFormat = '%.6f'
        DescriptionFont.Charset = DEFAULT_CHARSET
        DescriptionFont.Color = 5197615
        DescriptionFont.Height = -16
        DescriptionFont.Name = 'Arial'
        DescriptionFont.Style = []
        DescriptionText = 'EUR/USD'
        GraphColor.Kind = gskSolid
        GraphColor.Color = clNavy
        GraphColor.Width = 2.000000000000000000
        GraphFill.Kind = gfkSolid
        GraphFill.Orientation = gfoVertical
        GraphFill.Color = 15130800
        GraphFill.ColorTo = clGray
        GraphFill.ColorMirror = -1
        GraphFill.ColorMirrorTo = -1
        GraphFill.TextureMode = gtmStretch
        Values = <>
      end
      object btnStartTrendIndi: TButton
        Left = 175
        Top = 334
        Width = 75
        Height = 25
        Caption = '&Start'
        TabOrder = 1
        OnClick = btnStartTrendIndiClick
      end
      object edTrendIndKey: TLabeledEdit
        Left = 3
        Top = 336
        Width = 166
        Height = 21
        EditLabel.Width = 77
        EditLabel.Height = 13
        EditLabel.Caption = 'Fixer.io API Key'
        TabOrder = 2
      end
    end
  end
  object memTerminal: TMemo
    Left = 688
    Top = 0
    Width = 353
    Height = 624
    Align = alRight
    Lines.Strings = (
      '')
    TabOrder = 1
  end
  object tmrArrowUpdate: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = tmrArrowUpdateTimer
    Left = 952
    Top = 40
  end
  object RESTClient: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    Params = <>
    Left = 774
    Top = 64
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Method = rmPOST
    Params = <>
    Response = RESTResponse
    Left = 774
    Top = 128
  end
  object RESTResponse: TRESTResponse
    ContentType = 'text/plain'
    Left = 774
    Top = 200
  end
  object tmrGaugeUpdate: TTimer
    Enabled = False
    OnTimer = tmrGaugeUpdateTimer
    Left = 956
    Top = 144
  end
  object tmrMarqueeUpdate: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmrMarqueeUpdateTimer
    Left = 952
    Top = 231
  end
  object tmrMultiProgUpdate: TTimer
    Enabled = False
    OnTimer = tmrMultiProgUpdateTimer
    Left = 960
    Top = 320
  end
  object tmrProgUpdate: TTimer
    Enabled = False
    OnTimer = tmrProgUpdateTimer
    Left = 952
    Top = 400
  end
  object tmrTrendIndicatorUpdate: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = tmrTrendIndicatorUpdateTimer
    Left = 948
    Top = 472
  end
end

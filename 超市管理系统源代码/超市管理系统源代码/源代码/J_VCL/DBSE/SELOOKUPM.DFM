object FMSELOOKUPM: TFMSELOOKUPM
  Left = 525
  Top = 234
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsToolWindow
  Caption = ' '
  ClientHeight = 274
  ClientWidth = 192
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = '新宋体'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  Position = poDefault
  PrintScale = poNone
  Scaled = False
  WindowState = wsMinimized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel
    Left = 5
    Top = 249
    Width = 84
    Height = 12
    Caption = 'PageUp名称查询'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = '新宋体'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 100
    Top = 249
    Width = 84
    Height = 12
    Caption = 'PageDn编号查询'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = '新宋体'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 65
    Top = 262
    Width = 66
    Height = 12
    Caption = 'F12快速新增'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = '新宋体'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 193
    Height = 250
    Ctl3D = False
    DataSource = DSSYSLST
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = '新宋体'
    Font.Style = []
    ImeName = '中文 (简体) - 智能 ABC'
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = '新宋体'
    TitleFont.Style = []
    Columns = <
      item
        Color = clWhite
        Expanded = False
        FieldName = 'LSTITM'
        Title.Alignment = taCenter
        Title.Caption = '编号'
        Title.Color = 9211135
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LSTNAM'
        Title.Alignment = taCenter
        Title.Caption = '名称'
        Title.Color = 16501680
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LSTMRK'
        Title.Alignment = taCenter
        Title.Caption = '备注'
        Title.Color = 14155007
        Width = 55
        Visible = True
      end>
  end
  object QSYSLST: TQuery
    CachedUpdates = True
    DatabaseName = 'MAIN'
    SQL.Strings = (
      'SELECT * FROM SYSLST')
    Left = 115
    Top = 130
    object QSYSLSTLSTNAM: TStringField
      FieldName = 'LSTNAM'
      Origin = 'SYSLST.LSTNAM'
      Size = 40
    end
    object QSYSLSTLSTMRK: TStringField
      FieldName = 'LSTMRK'
      Origin = 'SYSLST.LSTMRK'
      Size = 40
    end
    object QSYSLSTLSTENO: TStringField
      FieldName = 'LSTENO'
      Origin = 'MAIN.SYSLST.LSTENO'
      Size = 10
    end
    object QSYSLSTLSTITM: TStringField
      FieldName = 'LSTITM'
      Origin = 'MAIN.SYSLST.LSTITM'
      Size = 3
    end
  end
  object DSSYSLST: TDataSource
    DataSet = QSYSLST
    Left = 150
    Top = 130
  end
end

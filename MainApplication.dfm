object MainForm: TMainForm
  Left = 343
  Top = 309
  Caption = 'Bolek - Ewidencja Tajnych Wsp'#243#322'pracownik'#243'w'
  ClientHeight = 487
  ClientWidth = 998
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  DesignSize = (
    998
    487)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 35
    Height = 13
    Caption = 'Szukaj:'
  end
  object Label2: TLabel
    Left = 549
    Top = 3
    Width = 205
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = 
      'Zbie'#380'no'#347#263' danych z prawdziwymi osobami  przypadkowa i niezamierz' +
      'ona'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = 13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
    ExplicitLeft = 548
  end
  object lvOperatives: TListView
    Left = 8
    Top = 35
    Width = 901
    Height = 439
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = <
      item
        AutoSize = True
        Caption = 'Imi'#281
      end
      item
        AutoSize = True
        Caption = 'Nazwisko'
      end
      item
        AutoSize = True
        Caption = 'Pseudonim'
      end
      item
        AutoSize = True
        Caption = 'Data urodzenia'
      end
      item
        Caption = 'Miejsce urodzenia'
      end>
    ReadOnly = True
    RowSelect = True
    TabOrder = 0
    ViewStyle = vsReport
    OnColumnClick = lvOperativesColumnClick
    OnCompare = lvOperativesCompare
    OnSelectItem = lvOperativesSelectItem
  end
  object btnDelete: TButton
    Left = 915
    Top = 97
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Usu'#324
    Enabled = False
    TabOrder = 1
    OnClick = btnDeleteClick
  end
  object btnAddOperative: TButton
    Left = 915
    Top = 35
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Dodaj'
    TabOrder = 2
    OnClick = btnAddOperativeClick
  end
  object btnEdit: TButton
    Left = 915
    Top = 66
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Edytuj'
    Enabled = False
    TabOrder = 3
    OnClick = btnEditClick
  end
  object btnSave: TButton
    Left = 915
    Top = 454
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Zapisz'
    TabOrder = 4
    OnClick = btnSaveClick
  end
  object WatermarkEdit1: TWatermarkEdit
    Left = 240
    Top = 8
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = 'watermark'
  end
  object tbSearchLastName: TWatermarkEdit
    Left = 49
    Top = 8
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = 'watermark'
    OnChange = tbSearchLastNameChange
  end
end

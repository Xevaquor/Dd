object MainForm: TMainForm
  Left = 343
  Top = 309
  Caption = 'MainForm'
  ClientHeight = 636
  ClientWidth = 1289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lvOperatives: TListView
    Left = 32
    Top = 184
    Width = 649
    Height = 353
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
    RowSelect = True
    TabOrder = 0
    ViewStyle = vsReport
    OnColumnClick = lvOperativesColumnClick
    OnCompare = lvOperativesCompare
    OnSelectItem = lvOperativesSelectItem
  end
  object btnDelete: TButton
    Left = 688
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Usu'#324
    Enabled = False
    TabOrder = 1
    OnClick = btnDeleteClick
  end
  object btnAddOperative: TButton
    Left = 687
    Top = 261
    Width = 75
    Height = 25
    Caption = 'Dodaj'
    TabOrder = 2
    OnClick = btnAddOperativeClick
  end
  object btnEdit: TButton
    Left = 687
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Edytuj'
    Enabled = False
    TabOrder = 3
    OnClick = btnEditClick
  end
end

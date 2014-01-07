object MainForm: TMainForm
  Left = 343
  Top = 309
  Caption = 'Bolek'
  ClientHeight = 369
  ClientWidth = 764
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
    764
    369)
  PixelsPerInch = 96
  TextHeight = 13
  object lvOperatives: TListView
    Left = 8
    Top = 8
    Width = 666
    Height = 353
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
    Left = 681
    Top = 96
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Usu'#324
    Enabled = False
    TabOrder = 1
    OnClick = btnDeleteClick
  end
  object btnAddOperative: TButton
    Left = 681
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Dodaj'
    TabOrder = 2
    OnClick = btnAddOperativeClick
    ExplicitLeft = 680
  end
  object btnEdit: TButton
    Left = 681
    Top = 39
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Edytuj'
    Enabled = False
    TabOrder = 3
    OnClick = btnEditClick
  end
  object btnSave: TButton
    Left = 681
    Top = 336
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Zapisz'
    TabOrder = 4
    OnClick = btnSaveClick
  end
end

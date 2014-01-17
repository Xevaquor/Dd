object MainForm: TMainForm
  Left = 343
  Top = 309
  Caption = 'Bolek - Ewidencja Tajnych Wsp'#243#322'pracownik'#243'w'
  ClientHeight = 487
  ClientWidth = 997
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
    997
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
    Left = 759
    Top = 408
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
  end
  object Image171: TImage17
    Left = 759
    Top = 35
    Width = 230
    Height = 214
    Proportional = True
    Stretch = True
  end
  object lvOperatives: TListView
    Left = 8
    Top = 35
    Width = 745
    Height = 444
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
    Left = 759
    Top = 317
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Usu'#324
    Enabled = False
    TabOrder = 1
    OnClick = btnDeleteClick
  end
  object btnAddOperative: TButton
    Left = 759
    Top = 255
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Dodaj'
    TabOrder = 2
    OnClick = btnAddOperativeClick
  end
  object btnEdit: TButton
    Left = 759
    Top = 286
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Edytuj'
    Enabled = False
    TabOrder = 3
    OnClick = btnEditClick
  end
  object btnSave: TButton
    Left = 759
    Top = 454
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Zapisz'
    TabOrder = 4
    OnClick = btnSaveClick
  end
  object tbSearchLastName: TEdit
    Left = 49
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 5
    OnChange = tbSearchLastNameChange
  end
end

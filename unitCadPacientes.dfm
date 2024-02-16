object formCadPacientes: TformCadPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 529
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object Label2: TLabel
    Left = 13
    Top = 113
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 173
    Top = 113
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label4: TLabel
    Left = 8
    Top = 174
    Width = 75
    Height = 13
    Caption = 'Nome Completo'
  end
  object Label5: TLabel
    Left = 13
    Top = 232
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object Label6: TLabel
    Left = 189
    Top = 232
    Width = 85
    Height = 13
    Caption = 'Data de Cadastro'
  end
  object Label7: TLabel
    Left = 414
    Top = 113
    Width = 81
    Height = 13
    Caption = 'Buscar Pacientes'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 28
      Width = 233
      Height = 25
      Caption = 'Cadastro de Pacientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 384
      Top = 19
      Width = 340
      Height = 54
      DataSource = DM.dsPaciente
      TabOrder = 0
    end
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 132
    Width = 121
    Height = 21
    DataField = 'id'
    DataSource = DM.dsPaciente
    TabOrder = 1
  end
  object txtCpf: TDBEdit
    Left = 173
    Top = 132
    Width = 201
    Height = 21
    DataField = 'cpf'
    DataSource = DM.dsPaciente
    MaxLength = 14
    TabOrder = 2
  end
  object txtNome: TDBEdit
    Left = 8
    Top = 193
    Width = 366
    Height = 21
    DataField = 'nome'
    DataSource = DM.dsPaciente
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 251
    Width = 153
    Height = 21
    DataField = 'celular'
    DataSource = DM.dsPaciente
    MaxLength = 16
    TabOrder = 4
  end
  object txtDataCadastro: TDBEdit
    Left = 189
    Top = 251
    Width = 185
    Height = 21
    DataField = 'data_cadastro'
    DataSource = DM.dsPaciente
    ReadOnly = True
    TabOrder = 5
  end
  object grid: TDBGrid
    Left = 414
    Top = 174
    Width = 320
    Height = 339
    DataSource = DM.dsPaciente
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'PACIENTES CADASTRADOS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object txtBusca: TEdit
    Left = 414
    Top = 132
    Width = 314
    Height = 21
    TabOrder = 7
    OnChange = txtBuscaChange
  end
end

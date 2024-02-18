object formCadAgendamentos: TformCadAgendamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Agendamentos'
  ClientHeight = 439
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object Label4: TLabel
    Left = 152
    Top = 113
    Width = 75
    Height = 13
    Caption = 'Nome Completo'
  end
  object Label2: TLabel
    Left = 8
    Top = 113
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 8
    Top = 174
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label6: TLabel
    Left = 8
    Top = 236
    Width = 64
    Height = 13
    Caption = 'Especialidade'
  end
  object Label7: TLabel
    Left = 240
    Top = 236
    Width = 78
    Height = 13
    Caption = 'Nome do M'#233'dico'
  end
  object Hora: TLabel
    Left = 173
    Top = 177
    Width = 23
    Height = 13
    Caption = 'Hora'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 28
      Width = 156
      Height = 25
      Caption = 'Agendamentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 432
      Top = 18
      Width = 340
      Height = 63
      DataSource = DM.dsAgendamento
      TabOrder = 0
    end
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 132
    Width = 121
    Height = 21
    DataField = 'id'
    DataSource = DM.dsAgendamento
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 152
    Top = 132
    Width = 305
    Height = 21
    DataField = 'id_paciente'
    DataSource = DM.dsAgendamento
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsPaciente
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 196
    Width = 121
    Height = 21
    DataField = 'data'
    DataSource = DM.dsAgendamento
    MaxLength = 10
    TabOrder = 3
  end
  object DBComboBox1: TDBComboBox
    Left = 8
    Top = 255
    Width = 209
    Height = 21
    DataField = 'especialidade'
    DataSource = DM.dsAgendamento
    Items.Strings = (
      'Cardiologista'
      'Ortopedista'
      'Nutricionista')
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 240
    Top = 255
    Width = 217
    Height = 21
    DataField = 'medico'
    DataSource = DM.dsAgendamento
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 463
    Top = 174
    Width = 320
    Height = 243
    DataSource = DM.dsAgendamento
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'especialidade'
        Title.Caption = 'ESPECIALIDADE'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'medico'
        Title.Caption = 'M'#201'DICO'
        Visible = True
      end>
  end
  object DBEdit3: TDBEdit
    Left = 173
    Top = 196
    Width = 168
    Height = 21
    DataField = 'hora'
    DataSource = DM.dsAgendamento
    MaxLength = 5
    TabOrder = 7
  end
end

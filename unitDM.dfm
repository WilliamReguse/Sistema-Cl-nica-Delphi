object DM: TDM
  Height = 347
  Width = 420
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=clinica'
      'User_Name=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 80
  end
  object tbPaciente: TFDTable
    Active = True
    AfterInsert = tbPacienteAfterInsert
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    UpdateOptions.UpdateTableName = 'clinica.paciente'
    TableName = 'clinica.paciente'
    Left = 192
    Top = 40
    object tbPacienteid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbPacientenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 80
    end
    object tbPacientecelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Required = True
      EditMask = '(##) #.####-####;1;_'
      Size = 16
    end
    object tbPacientedata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      Required = True
    end
    object tbPacientecpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      EditMask = '###.###.###-##;1;_'
      Size = 14
    end
  end
  object tbAgendamento: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    UpdateOptions.UpdateTableName = 'clinica.agendamento'
    TableName = 'clinica.agendamento'
    Left = 344
    Top = 40
    object tbAgendamentoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbAgendamentoid_paciente: TIntegerField
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
      Required = True
    end
    object tbAgendamentodata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object tbAgendamentoespecialidade: TStringField
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Required = True
      Size = 30
    end
    object tbAgendamentomedico: TStringField
      FieldName = 'medico'
      Origin = 'medico'
      Required = True
      Size = 30
    end
  end
  object dsPaciente: TDataSource
    DataSet = tbPaciente
    Left = 192
    Top = 112
  end
  object dsAgendamento: TDataSource
    DataSet = tbAgendamento
    Left = 344
    Top = 112
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\Sandro\Desktop\SistemaClinica-Delphi-master\libmysql.dl' +
      'l'
    Left = 160
    Top = 264
  end
end

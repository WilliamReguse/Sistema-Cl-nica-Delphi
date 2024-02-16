unit unitCadPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TformCadPacientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    txtCpf: TDBEdit;
    txtNome: TDBEdit;
    DBEdit4: TDBEdit;
    txtDataCadastro: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    grid: TDBGrid;
    txtBusca: TEdit;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    procedure txtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadPacientes: TformCadPacientes;

implementation

{$R *.dfm}

uses unitDM;

procedure TformCadPacientes.txtBuscaChange(Sender: TObject);
begin
  DM.tbPaciente.Locate('nome',txtBusca.Text,[loPartialKey]);
end;

end.

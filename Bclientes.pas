unit Bclientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFormBclientes = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    DBNavigator1: TDBNavigator;
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBclientes: TFormBclientes;

implementation

{$R *.dfm}

uses modulo, facturar;

procedure TFormBclientes.DBGrid1CellClick(Column: TColumn);
begin
  DataModule1.modificar;
  FormFacturar.Edit5.SetFocus;
  FormBclientes.close();
end;

end.

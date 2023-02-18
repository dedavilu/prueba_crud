unit Bproductos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TFormBproducto = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Button2: TButton;
    Edit2: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBproducto: TFormBproducto;

implementation

{$R *.dfm}

uses facturar, modulo;

procedure TFormBproducto.Button2Click(Sender: TObject);
begin
  DataModule1.buscarproducto(Edit1.text);
end;

procedure TFormBproducto.DBGrid1CellClick(Column: TColumn);
begin
  DataModule1.Mproducto;
  FormFacturar.Edit5.SetFocus;
  FormBproducto.close();
end;

end.

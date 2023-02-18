unit clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormClientes = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientes: TFormClientes;

implementation

{$R *.dfm}

uses modulo,  Nclientes, menu;

procedure TFormClientes.Button1Click(Sender: TObject);
begin
  DataModule1.nuevo;
  FormNclientes.showmodal;
end;

procedure TFormClientes.Button2Click(Sender: TObject);
begin
  DataModule1.modificar;
  FormNclientes.showmodal;
end;

procedure TFormClientes.Button3Click(Sender: TObject);
begin
  if MessageDlg ('¿Esta Seguro Que Desea Eliminar El Cliente?',mtConfirmation,mbYesNo,0)=6 then
    begin
       DataModule1.eliminar;
    end;
end;

end.

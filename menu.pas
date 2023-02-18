unit menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormMenu = class(TForm)
    MainMenu1: TMainMenu;
    CL1: TMenuItem;
    PRODUCTOS1: TMenuItem;
    PRODUCTOS2: TMenuItem;
    procedure PRODUCTOS1Click(Sender: TObject);
    procedure PRODUCTOS2Click(Sender: TObject);
    procedure CL1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

uses productos, Nclientes, clientes, facturar;
{$R *.dfm}

procedure TFormMenu.CL1Click(Sender: TObject);
begin
  FormFacturar.show();
end;

procedure TFormMenu.PRODUCTOS1Click(Sender: TObject);
begin
 FormClientes.Show();
end;

procedure TFormMenu.PRODUCTOS2Click(Sender: TObject);
begin
  FormProductos.show();
end;

end.

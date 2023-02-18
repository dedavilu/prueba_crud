unit productos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormProductos = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProductos: TFormProductos;

implementation

{$R *.dfm}

uses menu, modulo, Nproductos;

procedure TFormProductos.Button1Click(Sender: TObject);
begin
  DataModule1.Nproducto;
  FormNproductos.showmodal;
end;

procedure TFormProductos.Button2Click(Sender: TObject);
begin
  DataModule1.Mproducto;
  FormNproductos.showmodal;
end;

procedure TFormProductos.Button3Click(Sender: TObject);
begin
  if MessageDlg ('¿Esta Seguro Que Desea Eliminar El Producto?',mtConfirmation,mbYesNo,0)=6 then
    begin
       DataModule1.Eproducto;
    end;
end;

end.

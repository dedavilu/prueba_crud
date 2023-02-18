unit Nclientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB;

type
  TFormNClientes = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DataSource1: TDataSource;
    DBEditNombre: TDBEdit;
    DBEditDireccion: TDBEdit;
    DBEditIdentificacion: TDBEdit;
    Button2: TButton;
    procedure EditNombreKeyPress(Sender: TObject; var Key: Char);
    procedure EditDireccionKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEditIdentificacionKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNClientes: TFormNClientes;

implementation

uses menu, clientes, modulo;

{$R *.dfm}

procedure TFormNClientes.Button1Click(Sender: TObject);
begin
  if (DBEditIdentificacion.Text ='') or (DBEditNombre.Text ='') or (DBEditDireccion.Text ='') then
  begin
    showmessage('Todo Los Campos Deben Ser Diligenciados.');
  end
  else
  begin
    DataModule1.aplicar;
    Close;
  end;
end;

procedure TFormNClientes.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TFormNClientes.DBEditIdentificacionKeyPress(Sender: TObject;
  var Key: Char);
begin
if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) )
  then
  else begin
     Key := #0;
  end;
end;

procedure TFormNClientes.EditDireccionKeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ 0123456789-',Key) <> nil ) or ( Key = Char(VK_BACK) )
  then
  else begin
     Key := #0;
  end;
end;

procedure TFormNClientes.EditNombreKeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('abcdefghijklmnopqrstuvwxñyzABCDEFGHIJKLMNOPQRSTUVWÑXYZ ',Key) <> nil ) or ( Key = Char(VK_BACK) )
  then
  else begin
     Key := #0;
  end;
end;

end.

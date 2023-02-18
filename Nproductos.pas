unit Nproductos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB;

type
  TFormNproductos = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEditCodigo: TDBEdit;
    DBEditNombre: TDBEdit;
    DBEditValor: TDBEdit;
    Button2: TButton;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure DBEditCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditNombreKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditValorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNproductos: TFormNproductos;

implementation

uses menu, modulo, productos;

{$R *.dfm}

procedure TFormNproductos.Button1Click(Sender: TObject);
begin
  if (DBEditCodigo.Text ='') or (DBEditNombre.Text ='') or (DBEditValor.Text ='') then
  begin
    showmessage('Todo Los Campos Deben Ser Diligenciados.');
  end
  else
  begin
    DataModule1.Aproducto;
    Close;
  end;
end;

procedure TFormNproductos.DBEditCodigoKeyPress(Sender: TObject; var Key: Char);

begin
if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) )
  then
  else begin
     Key := #0;
  end;
end;

procedure TFormNproductos.DBEditNombreKeyPress(Sender: TObject; var Key: Char);
begin
  if ( StrScan('abcdefghijklmnopqrstñuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZÑ ',Key) <> nil ) or ( Key = Char(VK_BACK) )
   then
  else begin
     Key := #0;
  end;
end;

procedure TFormNproductos.DBEditValorKeyPress(Sender: TObject; var Key: Char);
begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) )
   then
  else begin
     Key := #0;
  end;
end;

end.

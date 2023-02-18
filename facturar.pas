unit facturar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormFacturar = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    SGProductos: TStringGrid;
    Edit5: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DataSource1: TDataSource;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DataSource2: TDataSource;
    Button2: TButton;
    DBEdit7: TDBEdit;
    DataSource3: TDataSource;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DataSource4: TDataSource;
    DBNumero: TDBEdit;
    DBProducto: TDBEdit;
    DBCantidad: TDBEdit;
    DBValor: TDBEdit;
    DataSource5: TDataSource;
    DBNumFac: TDBEdit;
    procedure DBEdit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFacturar: TFormFacturar;
  contf: Integer;
  total: Integer;

implementation

{$R *.dfm}

uses menu, Bproductos, modulo, Bclientes;

procedure TFormFacturar.Button1Click(Sender: TObject);
begin
if (DBEdit1.Text ='') or (Edit5.text ='') or (Edit5.text ='0') then
  begin
     showmessage('Todo Los Campos Deben Ser Diligenciados.');
  end
  else
  begin
  contf:=contf+1;
  SGProductos.RowCount:= SGProductos.RowCount +1;
  SGProductos.Cells[0,contf]:= DBEdit1.Text;
  SGProductos.Cells[1,contf]:= DBEdit2.Text;
  SGProductos.Cells[2,contf]:= Edit5.Text;
  SGProductos.Cells[3,contf]:= DBEdit3.Text;
  SGProductos.Cells[4,contf]:= (StrToInt(DBEdit3.Text) * StrToInt(Edit5.Text)).ToString;
  total:= total + (StrToInt(DBEdit3.Text) * StrToInt(Edit5.Text));
  DBEdit7.Text:= total.ToString;
  DBEdit10.Text:=IntToStr(StrToInt(DBNumFac.Text) + 1);
  Edit5.Clear;
  DataModule1.Nproducto;
  end;
end;

procedure TFormFacturar.Button2Click(Sender: TObject);
var f:Integer;
begin
if (DBEdit4.Text ='') or (DBEdit7.text ='') then
  begin
     showmessage('Todo Los Campos Deben Ser Diligenciados.');
  end
  else
  begin
    DataModule1.ACabFactura;
    for f := 1 to SGProductos.RowCount-1 do
      begin
        DataModule1.NDetFactura;
        DBNumero.Text:=IntToStr(StrToInt(DBNumFac.Text) + 1);
        DBProducto.Text:=SGProductos.Cells[0,f];
        DBCantidad.Text:=SGProductos.Cells[2,f];;
        DBValor.Text:=SGProductos.Cells[3,f];
        DataModule1.ADetFactura;
      end;
      Close;
  end;
end;

procedure TFormFacturar.DBEdit1Click(Sender: TObject);
begin
 FormBproducto.ShowModal();
end;

procedure TFormFacturar.DBEdit4Change(Sender: TObject);
begin
  DBEdit8.Text:=DBEdit4.Text;
end;

procedure TFormFacturar.DBEdit4Click(Sender: TObject);
begin
  FormBclientes.ShowModal();
end;

procedure TFormFacturar.FormCreate(Sender: TObject);
begin
  DataModule1.NCabFactura;
  DBEdit9.Text:=  DateToStr(Date());
  DataModule1.Nproducto;
  DataModule1.nuevo;
  SGProductos.ColWidths[0] :=100;
  SGProductos.ColWidths[1] :=280;
  SGProductos.ColWidths[2] :=70;
  SGProductos.ColWidths[3] :=120;
  SGProductos.ColWidths[4] :=100;
  SGProductos.Cells[0,0]:='Código';
  SGProductos.Cells[1,0]:='Nombre Producto';
  SGProductos.Cells[2,0]:='Cantidad';
  SGProductos.Cells[3,0]:='Valor Unitario';
  SGProductos.Cells[4,0]:='Valor Total';
end;

end.

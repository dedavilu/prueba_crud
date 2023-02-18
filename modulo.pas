unit modulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Datasnap.DBClient, Datasnap.Provider,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI;

type
  TDataModule1 = class(TDataModule)
    FDQuery1: TFDQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    ClienteConnection: TFDConnection;
    FDQuery2: TFDQuery;
    DataSetProvider2: TDataSetProvider;
    ClientDataSet2: TClientDataSet;
    FDQuery3: TFDQuery;
    DataSetProvider3: TDataSetProvider;
    ClientDataSet3: TClientDataSet;
    FDQuery4: TFDQuery;
    DataSetProvider4: TDataSetProvider;
    ClientDataSet4: TClientDataSet;
    ClientDataSet5: TClientDataSet;
    DataSetProvider5: TDataSetProvider;
    FDQuery5: TFDQuery;
    FDQuery6: TFDQuery;
    DataSetProvider6: TDataSetProvider;
    ClientDataSet6: TClientDataSet;
    FDQuery7: TFDQuery;
    DataSetProvider7: TDataSetProvider;
    ClientDataSet7: TClientDataSet;
    procedure aplicar;
    procedure nuevo;
    procedure modificar;
    procedure eliminar;
    procedure Aproducto;
    procedure Nproducto;
    procedure Mproducto;
    procedure Eproducto;
    procedure ACabFactura;
    procedure NCabFactura;
    procedure ADetFactura;
    procedure NDetFactura;

  private
    { Private declarations }
  public
  procedure buscarproducto(nomb_producto:String);
  procedure buscarcliente(id_cliente,nom_cliente,dir_cliente:String);
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Bproductos, Bclientes;

{$R *.dfm}

procedure TDataModule1.ACabFactura;
begin
  ClientDataSet5.Post;
  ClientDataSet5.ApplyUpdates(0);
  ClientDataSet5.Close;
  ClientDataSet5.Open;
end;

procedure TDataModule1.ADetFactura;
begin
  ClientDataSet6.Post;
  ClientDataSet6.ApplyUpdates(0);
  ClientDataSet6.Close;
  ClientDataSet6.Open;
end;

procedure TDataModule1.aplicar;
begin
  ClientDataSet1.Post;
  ClientDataSet1.ApplyUpdates(0);
  ClientDataSet1.Close;
  ClientDataSet1.Open;
end;

procedure TDataModule1.eliminar;
begin
  ClientDataSet1.Delete;
  ClientDataSet1.ApplyUpdates(0);
  ClientDataSet1.Close;
  ClientDataSet1.Open;
end;

procedure TDataModule1.modificar;
begin
  ClientDataSet1.Edit;
end;

procedure TDataModule1.nuevo;
begin
  ClientDataSet1.Insert;
end;

procedure TDataModule1.Aproducto;
begin
  ClientDataSet2.Post;
  ClientDataSet2.ApplyUpdates(0);
  ClientDataSet2.Close;
  ClientDataSet2.Open;
end;


procedure TDataModule1.buscarcliente(id_cliente, nom_cliente,
  dir_cliente: String);
begin
  ClientDataSet4.Open;
  ClientDataSet4.Params.ParamByName('id_cliente').AsString:=id_cliente;
  ClientDataSet4.Params.ParamByName('nom_cliente').AsString:=nom_cliente;
  ClientDataSet4.Params.ParamByName('dire').AsString:=dir_cliente;
  ClientDataSet4.Close;
end;

procedure TDataModule1.buscarproducto(nomb_producto: String);
begin
  FormBproducto.Edit2.Text:=nomb_producto;
  ClientDataSet3.Open;
  ClientDataSet3.Params.ParamByName('nom_producto').AsString:=nomb_producto;
  ClientDataSet3.Close;
end;

procedure TDataModule1.NCabFactura;
begin
  ClientDataSet5.Insert;
end;

procedure TDataModule1.NDetFactura;
begin
  ClientDataSet6.Insert;
end;

procedure TDataModule1.Nproducto;
begin
  ClientDataSet2.Insert;
end;

procedure TDataModule1.Mproducto;
begin
  ClientDataSet2.Edit;
end;

procedure TDataModule1.Eproducto;
begin
  ClientDataSet2.Delete;
  ClientDataSet2.ApplyUpdates(0);
  ClientDataSet2.Close;
  ClientDataSet2.Open;
end;

end.

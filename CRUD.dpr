program CRUD;

uses
  Vcl.Forms,
  menu in 'menu.pas' {FormMenu},
  Nclientes in 'Nclientes.pas' {FormNClientes},
  Nproductos in 'Nproductos.pas' {FormNproductos},
  modulo in 'modulo.pas' {DataModule1: TDataModule},
  clientes in 'clientes.pas' {FormClientes},
  productos in 'productos.pas' {FormProductos},
  facturar in 'facturar.pas' {FormFacturar},
  Bproductos in 'Bproductos.pas' {FormBproducto},
  Bclientes in 'Bclientes.pas' {FormBclientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormBclientes, FormBclientes);
  Application.CreateForm(TFormNClientes, FormNClientes);
  Application.CreateForm(TFormNproductos, FormNproductos);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormClientes, FormClientes);
  Application.CreateForm(TFormProductos, FormProductos);
  Application.CreateForm(TFormFacturar, FormFacturar);
  Application.CreateForm(TFormBproducto, FormBproducto);
  Application.Run;
end.

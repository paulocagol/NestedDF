unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, Data.DbxSqlite, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, DataSet.Serialize,
  Vcl.StdCtrls, FireDAC.Phys.SQLiteVDataSet;

type
  TForm1 = class(TForm)
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    DataSource3: TDataSource;
    DataSetProvider2: TDataSetProvider;
    ClientDataSet2: TClientDataSet;
    ClientDataSet2OrderID: TAutoIncField;
    ClientDataSet2CustomerID: TStringField;
    ClientDataSet2EmployeeID: TIntegerField;
    ClientDataSet2OrderDate: TDateTimeField;
    ClientDataSet2RequiredDate: TDateTimeField;
    ClientDataSet2ShippedDate: TDateTimeField;
    ClientDataSet2ShipVia: TIntegerField;
    ClientDataSet2Freight: TCurrencyField;
    ClientDataSet2ShipName: TStringField;
    ClientDataSet2ShipAddress: TStringField;
    ClientDataSet2ShipCity: TStringField;
    ClientDataSet2ShipRegion: TStringField;
    ClientDataSet2ShipPostalCode: TStringField;
    ClientDataSet2ShipCountry: TStringField;
    ClientDataSet2FDQuery2: TDataSetField;
    DataSource4: TDataSource;
    Memo1: TMemo;
    Button1: TButton;
    FDQuery3: TFDQuery;
    FDQuery4: TFDQuery;
    ClientDataSet2FDQuery4: TDataSetField;
    ClientDataSet2FDQuery3: TDataSetField;
    FDMemTable1: TFDMemTable;
    FDLocalSQL1: TFDLocalSQL;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Text := ClientDataSet2.ToJSONArray().ToString;
end;

end.

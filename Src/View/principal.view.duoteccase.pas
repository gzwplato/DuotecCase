unit Principal.View.DuotecCase;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, ComCtrls, Grids, DBGrids, ConfiguracaoCores.frameworkduotec,
  funcoes.frameworkduotec, memds, DB, JvNotebookPageList, JvTabBarXPPainter,
  ExtendedTabControls, SynCompletion;

type

  { TView_Menu }

  TView_Menu = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    ImageList1: TImageList;
    JvNotebookPageList1: TJvNotebookPageList;
    Label1: TLabel;
    DtSt_Tabela: TMemDataset;
    Page1: TPage;
    Panel1: TPanel;
    Pnl_BackgroundPesquisa: TPanel;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure Pnl_BackgroundClick(Sender: TObject);
  private
    ConfiguracaoCores : IConfiguracaoCores;

  public

  end;

var
  View_Menu: TView_Menu;

implementation

{$R *.lfm}

{ TView_Menu }

procedure TView_Menu.FormCreate(Sender: TObject);
begin
   ConfiguracaoCores := TConfiguracaoCores.New;
   TFuncoes.PadronizarPanel(Pnl_BackgroundPesquisa,ConfiguracaoCores.CorBackGround);

end;

procedure TView_Menu.Pnl_BackgroundClick(Sender: TObject);
begin

end;

end.


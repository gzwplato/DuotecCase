unit CadastroTabela.View;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, DBGrids, ActnList, DBCtrls, view.modelocadastro,
  TabelaSistema.Controller.Interfaces, TabelaSistema.Controller, DB;

type

  { TView_CadastroTabela }

  TView_CadastroTabela = class(TView_ModeloCadastro)
    CheckBox1: TCheckBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    DtSrc_DadosDetalhe: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Memo1: TMemo;
    procedure Edt_PesquisaEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FControllerTabelaSistema: IControllerTabelaSistema;
  public

  end;

var
  View_CadastroTabela: TView_CadastroTabela;

implementation

uses Dm.Containter.frameworkduotec;

{$R *.lfm}

{ TView_CadastroTabela }

procedure TView_CadastroTabela.FormCreate(Sender: TObject);
begin
  inherited;

  FControllerTabelaSistema := TControllerTabelaSistema.New;

  DtSrc_Pesquisa.DataSet := FControllerTabelaSistema.ModelTabelaSistema.Dataset;

  FControllerTabelaSistema.ModelTabelaSistema.DM.PopularTeste;
end;


procedure TView_CadastroTabela.Edt_PesquisaEnter(Sender: TObject);
begin
  Edt_Pesquisa.BorderStyle := bsNone;
end;



end.




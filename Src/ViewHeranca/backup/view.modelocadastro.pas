unit view.modelocadastro;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBGrids,
  Buttons, StdCtrls, EditBtn, ActnList, DBCtrls, view.pai, DB,
  ConfiguracaoCores.frameworkduotec,
  LCLType {unit VK_};

type
  TStatusTela = (stNavegandoGrid, stInserindo, stEditando, stNavegandoEdits);

  { TEdit }
  TEdit = class(StdCtrls.TEdit)
  protected
    procedure doEnter; override;
    procedure doExit; override;
  end;


  { TView_ModeloCadastro }
  TView_ModeloCadastro = class(TView_Pai)
    Btn_Apagar: TBitBtn;
    Btn_Incluir: TBitBtn;
    Btn_Pesquisar: TBitBtn;
    Btn_Salvar: TBitBtn;
    Btn_Cancelar: TBitBtn;
    Btn_Imprimir: TBitBtn;
    Btn_Alterar: TBitBtn;
    CmbBx_CamposPesquisa: TComboBox;
    DtSrc_Pesquisa: TDataSource;
    DBGrd_Pesquisa: TDBGrid;
    DtSrc_Dados: TDataSource;
    Edt_Pesquisa: TEdit;
    Lbl_CampoPesquisa: TLabel;
    Lbl_PesquisarPor: TLabel;
    Lbl_StatusTela: TLabel;
    Nb_Cadastro: TNotebook;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Pnl_BackGroundDados: TPanel;
    Pnl_GridPesquisa: TPanel;
    Pnl_TopPesquisa: TPanel;
    Pg_Dados: TPage;
    Pg_Pesquisa: TPage;
    Btn_PrimeiroRegistro: TSpeedButton;
    Btn_ProximoRegistro: TSpeedButton;
    Btn_RegistroAnterior: TSpeedButton;
    Btn_UltimoRegistro: TSpeedButton;
    procedure Act_PesquisarExecute(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_SairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure Pnl_TopPesquisaClick(Sender: TObject);

  private
    FStatusTela: TStatusTela;
    procedure SetStatusTela(AValue: TStatusTela);
  protected
    procedure IncluirRegistro; virtual;
    procedure AlterarRegistro;
    procedure ImprimirRegistro;
    procedure ApagarRegistro;
    procedure CancelarEdicaoRegistro;
    procedure GravarRegistro;
    procedure ConfigurarBotoes;
  public
  published
    property StatusTela: TStatusTela read FStatusTela write SetStatusTela;
  end;

var
  View_ModeloCadastro: TView_ModeloCadastro;
  ShpBack: TShape;


implementation

uses Dm.Containter.frameworkduotec;



{$R *.lfm}

{ TEdit }

procedure TEdit.doEnter;
begin
  inherited doEnter;
  ShpBack.Parent := Self.Parent;
  ShpBack.Width := Self.Width + 4;
  ShpBack.Height := Self.Height + 4;
  ShpBack.Left := Self.Left - 2;
  ShpBack.Top := Self.Top - 2;
  ShpBack.Visible := True;
end;

procedure TEdit.doExit;
begin
  inherited doExit;
  ShpBack.Visible := False;
end;


{ TView_ModeloCadastro }



procedure TView_ModeloCadastro.FormCreate(Sender: TObject);
var
  ConfiguracaoCores: IConfiguracaoCores;
begin
  inherited;
  Nb_Cadastro.PageIndex := 0;
  ConfiguracaoCores := TConfiguracaoCores.New;
  Pnl_GridPesquisa.ParentBackground := False;
  Pnl_TopPesquisa.ParentBackground := False;
  Pnl_GridPesquisa.Color := ConfiguracaoCores.CorBackGround;
  Pnl_TopPesquisa.Color := ConfiguracaoCores.CorBackGround;
  StatusTela := stNavegandoGrid;
end;

procedure TView_ModeloCadastro.FormKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
    IncluirRegistro
  else if Key = VK_F3 then
    AlterarRegistro
  else if Key = VK_F4 then
    ImprimirRegistro
  else if Key = VK_F2 then
    ApagarRegistro
  else if Key = VK_ESCAPE then
    CancelarEdicaoRegistro
  else if Key = VK_F10 then
    GravarRegistro;

end;

procedure TView_ModeloCadastro.FormKeyPress(Sender: TObject; var Key: char);
begin
      ShowMessage('KeyPress');
end;

procedure TView_ModeloCadastro.Act_PesquisarExecute(Sender: TObject);
begin
  Nb_Cadastro.PageIndex := 1;

end;

procedure TView_ModeloCadastro.Btn_CancelarClick(Sender: TObject);
begin
  DtSrc_Dados.DataSet.Cancel;
  Nb_Cadastro.PageIndex := 0;
  Edt_Pesquisa.SetFocus;
  StatusTela := stNavegandoGrid;
  ;
end;

procedure TView_ModeloCadastro.Btn_IncluirClick(Sender: TObject);
begin
  IncluirRegistro;
end;

procedure TView_ModeloCadastro.Btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TView_ModeloCadastro.Pnl_TopPesquisaClick(Sender: TObject);
begin

end;

procedure TView_ModeloCadastro.SetStatusTela(AValue: TStatusTela);
begin
  FStatusTela := AValue;
  ConfigurarBotoes;

end;

procedure TView_ModeloCadastro.IncluirRegistro;
begin
  if not Assigned(DtSrc_Dados.DataSet) then
    raise Exception.Create('Não foi aribuído a tabela para o datasource ');
  DtSrc_Dados.DataSet.Append;
  StatusTela := stInserindo;
  Nb_Cadastro.PageIndex := 1;
end;

procedure TView_ModeloCadastro.AlterarRegistro;
begin
  if not Assigned(DtSrc_Dados.DataSet) then
    raise Exception.Create('Não foi aribuído a tabela para o datasource ');
  DtSrc_Dados.DataSet.Edit;
  StatusTela := stEditando;
  Nb_Cadastro.PageIndex := 1;
end;

procedure TView_ModeloCadastro.ImprimirRegistro;
begin

end;

procedure TView_ModeloCadastro.ApagarRegistro;
begin

end;

procedure TView_ModeloCadastro.CancelarEdicaoRegistro;
begin

end;

procedure TView_ModeloCadastro.GravarRegistro;
begin

end;

procedure TView_ModeloCadastro.ConfigurarBotoes;
begin

  Btn_Alterar.Visible := False;
  Btn_Apagar.Visible := False;
  Btn_Cancelar.Visible := False;
  Btn_Imprimir.Visible := False;
  Btn_Incluir.Visible := False;
  Lbl_StatusTela.Visible := False;
  Btn_Salvar.Visible := False;

  case FStatusTela of
    stNavegandoGrid:
    begin
      Btn_Alterar.Visible := True;
      Btn_Apagar.Visible := True;
      Btn_Cancelar.Visible := False;
      Btn_Imprimir.Visible := True;
      Btn_Incluir.Visible := True;
      Lbl_StatusTela.Visible := False;
      Btn_Salvar.Visible := False;
    end;
    stInserindo, stEditando:
    begin
      Btn_Cancelar.Visible := True;
      Btn_Salvar.Visible := True;
      Lbl_StatusTela.Visible := False;
    end;
    stNavegandoEdits:
    begin
      Btn_Alterar.Visible := True;
      Btn_Apagar.Visible := True;
      Btn_Cancelar.Visible := False;
      Btn_Imprimir.Visible := True;
      Btn_Incluir.Visible := True;
      Lbl_StatusTela.Visible := False;
      Btn_Salvar.Visible := False;
    end;
  end;

end;


initialization
  ShpBack := TShape.Create(nil);
  ShpBack.Brush.Style := bsClear;
  ShpBack.Pen.Color := clBlue;


finalization
  ShpBack.Free;
end.







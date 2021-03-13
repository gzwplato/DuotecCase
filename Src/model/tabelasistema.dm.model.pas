unit TabelaSistema.DM.Model;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, BufDataset, DB, Dialogs,
  campos.tabelasistema;

type

  { TDM_TabelaSistema }
  TDM_TabelaSistema = class(TDataModule)
    TabelaSistema: TBufDataset;
    procedure DataModuleCreate(Sender: TObject);
  private
  public
    procedure PopularTeste;
  end;


implementation

{$R *.lfm}

{ TDM_TabelaSistema }

procedure TDM_TabelaSistema.DataModuleCreate(Sender: TObject);
begin
  TCamposTabelaSistema.CriarCamposTabela(TabelaSistema);
  TabelaSistema.CreateDataset;
end;

procedure TDM_TabelaSistema.PopularTeste;
begin

  TabelaSistema.Active := True;
  TabelaSistema.Append;
  TabelaSistema.
    FieldByName(TCamposTabelaSistema.ID).
    AsString := '1';
  TabelaSistema.
    FieldByName(TCamposTabelaSistema.COD_TABELA).
    AsString := 'TBL0001';
  TabelaSistema.
    FieldByName(TCamposTabelaSistema.NOME_TABELA).
    AsString := 'Usuario';
  TabelaSistema.
    FieldByName(TCamposTabelaSistema.DESCRICAO_TABELA).
    AsString := 'Usuarios do Sistema';
  TabelaSistema.Post;

  TabelaSistema.Append;
  TabelaSistema.
    FieldByName(TCamposTabelaSistema.ID).
    AsString := '2';
  TabelaSistema.
    FieldByName(TCamposTabelaSistema.COD_TABELA).
    AsString := 'TBL0002';
  TabelaSistema.
    FieldByName(TCamposTabelaSistema.NOME_TABELA).
    AsString := 'Dominio';
  TabelaSistema.
    FieldByName(TCamposTabelaSistema.DESCRICAO_TABELA).
    AsString := 'Dominio dos Campos';
  TabelaSistema.Post;

  TabelaSistema.Append;
  TabelaSistema.
    FieldByName(TCamposTabelaSistema.ID).
    AsString := '3';
  TabelaSistema.
    FieldByName(TCamposTabelaSistema.COD_TABELA).
    AsString := 'TBL0003';
  TabelaSistema.
    FieldByName(TCamposTabelaSistema.NOME_TABELA).
    AsString := 'Tabela';
  TabelaSistema.
    FieldByName(TCamposTabelaSistema.DESCRICAO_TABELA).
    AsString := 'Tabelas do Sistema';
  TabelaSistema.Post;

  TabelaSistema.Append;
  TabelaSistema.
    FieldByName(TCamposTabelaSistema.ID).
    AsString := '4';
  TabelaSistema.
    FieldByName(TCamposTabelaSistema.COD_TABELA).
    AsString := 'TBL0003_A';
  TabelaSistema.
    FieldByName(TCamposTabelaSistema.NOME_TABELA).
    AsString := 'CamposTabela';
  TabelaSistema.
    FieldByName(TCamposTabelaSistema.DESCRICAO_TABELA).
    AsString := 'Campos das Tabela';
  TabelaSistema.Post;

end;

end.

unit campos.tabelasistema;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, bufdataset, Campos.Sistema, DB;

type
  { TCamposTabelaSistema }

  TCamposTabelaSistema = class(TCamposSistema)
    class function COD_TABELA: string;
    class function NOME_TABELA: string;
    class function DESCRICAO_TABELA: string;
    class procedure CriarCampoCodTabela(DataSet: TBufDataSet);
    class procedure CriarCampoNomeTabela(DataSet: TBufDataSet);
    class procedure CriarCampoDescricaoTabela(DataSet: TBufDataSet);
    class procedure CriarCamposTabela(DataSet :TBufDataSet);
  end;



implementation

{ TCamposTabelaSistema }


class function TCamposTabelaSistema.COD_TABELA: string;
begin
  Result := 'COD_TABELA';
end;

class function TCamposTabelaSistema.NOME_TABELA: string;
begin
  Result := 'NOME_TABELA';
end;

class function TCamposTabelaSistema.DESCRICAO_TABELA: string;
begin
  Result := 'DESCRICAO_TABELA';
end;

class procedure TCamposTabelaSistema.CriarCampoCodTabela(DataSet: TBufDataSet);
begin
  DataSet.FieldDefs.Add(TCamposTabelaSistema.COD_TABELA, ftString, 30);
end;

class procedure TCamposTabelaSistema.CriarCampoNomeTabela(DataSet: TBufDataSet);
begin
  DataSet.FieldDefs.Add(TCamposTabelaSistema.NOME_TABELA, ftString, 256);
end;

class procedure TCamposTabelaSistema.CriarCampoDescricaoTabela(DataSet: TBufDataSet);
begin
  DataSet.FieldDefs.Add(TCamposTabelaSistema.DESCRICAO_TABELA, ftString, 1024);
end;

class procedure TCamposTabelaSistema.CriarCamposTabela(DataSet :TBufDataSet);
begin
  CriarCampoCodTabela(DataSet);
  CriarCampoDescricaoTabela(DataSet);
  CriarCampoNomeTabela(DataSet);
  CriarCa
end;

end.



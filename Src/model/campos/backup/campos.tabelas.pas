unit campos.tabelas;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  { CTabelaSistema }

  TCampoTabelaSistema = class
    class function COD_TABELA: string;
    class function NOME_TABELA: string;
    class function DESCRICAO_TABELA: string;
    class procedure CriarCampoCodTabela(DataSet : TBufDataSet);
    class procedure CriarNomeTabela(DataSet : TBufDataSet);
    class procedure CriarCampoDescricaoTabela(DataSet : TBufDataSet);
const



implementation

{ CTabelaSistema }

class function CTabelaSistema.COD: string;
begin
  result := 'COD';
end;

class function CTabelaSistema.NOME: string;
begin
   result := 'NOME';
end;

class function CTabelaSistema.DESCRICAO: string;
begin
   result := 'DESCRICAO';
end;

end.


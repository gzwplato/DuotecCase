unit cmp.tabelasistema;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  { tabelaSistema }

  TtabelaSistema = class
    class function COD: string;
    class function NOME: string;
    class function DESCRICAO: string;
  end;

const


  SIZE_COD = 30;
  SIZE_NOME = 60;
  SIZE_DESCRICAO = 1024;

implementation

{ tabelaSistema }

class function tabelaSistema.COD: string;
begin
  result := 'COD';
end;

class function tabelaSistema.NOME: string;
begin
   result := 'NOME';
end;

class function tabelaSistema.DESCRICAO: string;
begin
   result := 'DESCRICAO';
end;

end.


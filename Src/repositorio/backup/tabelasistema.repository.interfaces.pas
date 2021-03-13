unit TabelaSistema.Repository.Interfaces;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

Type
  ITabelaSistemaRepository = interface
  ['{57681100-9B51-401A-8DC3-5964AF457093}']
  function Pesquisar(id : Int64) : ITabelaSistemaRepository;
  function PesquisarQualquerCampo(Where: string): ITabelaSistemaRepository;
  function Apagar(id: int64): ITabelaSistemaRepository;
  function IsOk : Boolean;
  end;

implementation

end.


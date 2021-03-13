unit TabelaSistema.Repository.Interfaces;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  ITabelaSistemaRepository = interface
    ['{57681100-9B51-401A-8DC3-5964AF457093}']
    function Pesquisar(id: int64): ITabelaSistemaRepository;
    function PesquisarQualquerCampo(Where: string): ITabelaSistemaRepository;
    function Apagar(id: int64): ITabelaSistemaRepository;
    function IsOk: boolean;
  end;

implementation

end.


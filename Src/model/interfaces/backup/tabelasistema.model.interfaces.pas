unit TabelaSistema.Model.Interfaces;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,bufdataset,
  TabelaSistema.DM.Model;

type
  IModelTabelaSistema = interface
    ['{B6253EC5-8B8C-4D59-8752-45F52B71C786}']
    function Dataset: TBufDataset;
    function DM : TDM_TabelaSistema;
    function Pesquisar(id : Int64) : IModelTabelaSistema;
    function isOk : Boolean;
    function PesquisarQualquerCampo(Where : String):   IModelTabelaSistema
  end;

implementation

end.

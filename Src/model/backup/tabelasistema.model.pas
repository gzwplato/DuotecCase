unit TabelaSistema.Model;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, TabelaSistema.Model.Interfaces, TabelaSistema.DM.Model,
  BufDataset {TBufDataset}, Dialogs;

{
TModelTabelaSistema }
type
  TModelTabelaSistema = class(TInterfacedObject, IModelTabelaSistema)
  private
    FDM: TDM_TabelaSistema;
    FIsOk: boolean;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IModelTabelaSistema;
    function Dataset: TBufDataset;
    function DM: TDM_TabelaSistema;
    function Pesquisar(id: int64): IModelTabelaSistema;
    // Usar o par
    // Campo = Valor .
    // Ex:
    // NOME="Tone%", CIDADE="CIDADE"

    function PesquisarQualquerCampo(Where: string): IModelTabelaSistema;
    function Apagar(id: int64): IModelTabelaSistema;
    function isOk: boolean;
  end;


implementation


{ TModelTabelaSistema }

constructor TModelTabelaSistema.Create;
begin
  FDM := TDM_TabelaSistema.Create(nil);
end;

destructor TModelTabelaSistema.Destroy;
begin
  FDM.Free;
  inherited Destroy;
end;

class function TModelTabelaSistema.New: IModelTabelaSistema;
begin
  Result := Self.Create;
end;

function TModelTabelaSistema.Dataset: TBufDataset;
begin
  Result := FDM.TabelaSistema;
end;

function TModelTabelaSistema.DM: TDM_TabelaSistema;
begin
  Result := FDM;
end;

function TModelTabelaSistema.Pesquisar(id: int64): IModelTabelaSistema;
begin
  FIsOk := True;
end;

function TModelTabelaSistema.PesquisarQualquerCampo(Where: string): IModelTabelaSistema;

begin
  FIsOk := True;

end;

function TModelTabelaSistema.Apagar(id: int64): IModelTabelaSistema;
begin
  FIsOk := True;
end;

function TModelTabelaSistema.isOk: boolean;
begin
  Result := FIsOk;
end;



end.

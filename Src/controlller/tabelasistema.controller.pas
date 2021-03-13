unit TabelaSistema.Controller;

{$mode objfpc}{$H+}

interface


uses
  Classes, SysUtils,
  TabelaSistema.Controller.Interfaces,
  TabelaSistema.Model.Interfaces,
  TabelaSistema.Model
  ;

type

  { TControllerTabelaSistema }

  TControllerTabelaSistema = class(TInterfacedObject, IControllerTabelaSistema)
  private
    FModelTabelaSistema : IModelTabelaSistema;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerTabelaSistema;
    function  ModelTabelaSistema : IModelTabelaSistema;
  end;

implementation

{ TControllerTabelaSistema }

function TControllerTabelaSistema.ModelTabelaSistema : IModelTabelaSistema;
begin
  Result := FModelTabelaSistema;
end;

constructor TControllerTabelaSistema.Create;
begin
  FModelTabelaSistema := TModelTabelaSistema.New;
end;

destructor TControllerTabelaSistema.Destroy;
begin
  inherited Destroy;
end;

class function TControllerTabelaSistema.New: IControllerTabelaSistema;
begin
  Result := Self.Create;
end;

end.




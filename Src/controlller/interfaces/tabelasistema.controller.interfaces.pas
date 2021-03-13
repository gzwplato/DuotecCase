unit TabelaSistema.Controller.Interfaces;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, TabelaSistema.Model.Interfaces;

type
  IControllerTabelaSistema = interface
    ['{CEC77ACF-603F-48C1-9D78-41CF14A8CD10}']
    function ModelTabelaSistema: IModelTabelaSistema;
  end;


implementation

end.


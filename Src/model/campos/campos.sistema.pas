unit Campos.Sistema;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, bufdataset, db;

type

  { TCamposSistema }

  TCamposSistema = class
    class function ID: String ;
    class procedure CriarCampoId(DataSet: TBufDataSet);
  end;

implementation

{ TCamposSistema }

class function TCamposSistema.ID: String;
begin
  Result := 'ID';
end;

class procedure TCamposSistema.CriarCampoId(DataSet: TBufDataSet);
begin
  DataSet.FieldDefs.Add(TCamposSistema.ID, ftLargeInt, 0, true);
end;

end.

unit view.pai;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TView_Pai }

  TView_Pai = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
  protected
    Shp_Back: TShape;
  public

  end;

var
  View_Pai: TView_Pai;

implementation

{$R *.lfm}

{ TView_Pai }

procedure TView_Pai.FormCreate(Sender: TObject);
begin
  Shp_Back := TShape.Create(self);
end;

end.

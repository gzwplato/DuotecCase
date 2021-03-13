program DuotecCase;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Principal.View.DuotecCase, ConfiguracaoCores.frameworkduotec,
  lazcontrols, memdslaz, CadastroTabela.View, unit1;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TView_CadastroTabela, View_CadastroTabela);
  Application.Run;
end.


program ErrorDSh;

uses
  Forms,
  TextPad in 'TextPad.pas' {Head},
  Play in 'Play.pas' {Shifr},
  Deplay in 'Deplay.pas' {Deshi};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(THead, Head);
  Application.CreateForm(TShifr, Shifr);
  Application.CreateForm(TDeshi, Deshi);
  Application.Run;
end.

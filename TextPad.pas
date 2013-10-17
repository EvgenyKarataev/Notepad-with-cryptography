unit TextPad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, Play, Deplay;
 var
   bol:boolean;
type
  THead = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    mmOutput: TMemo;
    SaveDialog1: TSaveDialog;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    OpenDialog1: TOpenDialog;
    N15: TMenuItem;
    procedure N5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure mmOutputChange(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Head: THead;

implementation


{$R *.dfm}
procedure THead.N5Click(Sender: TObject);
begin
  case MessageDlg('Сохранить файл?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
    mrYes: if SaveDialog1.Execute then
      begin
        mmOutput.Lines.SaveToFile(SaveDialog1.FileName);
      end;
    mrCancel: Exit;
  end;

  Application.Terminate;
end;

procedure THead.N2Click(Sender: TObject);
begin
  mmOutput.Lines.Clear;
  bol := False;
  Self.Caption := 'Блокнот - Безымянный';
end;

function Shifrovka(st:string; cod:integer ):string;
 var
   j:integer;
   stch:char;
begin
  result:='';
     for j:=1 to length(st) do
       begin
          stch:=st[j];
          result:=result+chr(ord(stch) xor cod);
       end;
end;

procedure THead.N10Click(Sender: TObject);
var
 code,si:string;
 codeI,s,i:integer;
begin
  if not InputQuery('Окно ввода кода','Введите код',code) then Exit;
  
    codei:=StrToInt(Trim(code));
    s:=mmOutput.Lines.Count;
    for i:=0 to s-1 do
      begin
         si:=mmOutput.Lines[i];
         if si='' then
           mmOutput.Lines[i]:=''
         else
           mmOutput.Lines[i]:=(shifrovka(si,codei));
      end;
end;

procedure THead.N11Click(Sender: TObject);
var
 code,si:string;
 codeI,s,i:integer;
begin
        InputQuery('Окно ввода кода','Введите код',code);
        codei:=StrToInt(Trim(code));
        s:=mmOutput.Lines.Count;
    for i:=0 to s-1 do
      begin
         si:=mmOutput.Lines[i];
         if si='' then
           mmOutput.Lines[i]:=''
         else
           mmOutput.Lines[i]:=(shifrovka(si,codei));
      end;
end;

procedure THead.N3Click(Sender: TObject);
begin
   if OpenDialog1.Execute and FileExists(OpenDialog1.FileName) then
    begin
      mmOutput.Lines.LoadFromFile(OpenDialog1.FileName);
      Head.Caption := 'Блокнот - ' + OpenDialog1.FileName;
    end;  
end;

procedure THead.N4Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    begin
      mmOutput.Lines.SaveToFile(SaveDialog1.FileName+'.txt');
      Head.Caption:='Блокнот - '+SaveDialog1.FileName;
      bol:=false;
    end;
end;

procedure THead.mmOutputChange(Sender: TObject);
begin
     bol:=true;
end;

procedure THead.N7Click(Sender: TObject);
begin
  FontDialog1.Font.Assign(mmOutput.Font);

  if FontDialog1.Execute then
    mmOutput.Font.Assign(FontDialog1.Font);
end;

procedure THead.N8Click(Sender: TObject);
begin
  ColorDialog1.Color := mmOutput.Color;
  if ColorDialog1.Execute then mmOutput.Color:=ColorDialog1.Color;
end;

procedure THead.N13Click(Sender: TObject);
begin
  ShowMessage('Извениете но этот раздел еще не разработан.');
end;

procedure THead.N14Click(Sender: TObject);
begin
    ShowMessage('Извениете но этот раздел еще не разработан.');
end;

procedure THead.N15Click(Sender: TObject);
begin
  mmoutput.SelectAll;
end;

end.




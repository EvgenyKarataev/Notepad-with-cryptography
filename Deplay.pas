unit Deplay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Spin;
var
 s:string;
type
  TDeshi = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    bbSh: TBitBtn;
    SpinEdit1: TSpinEdit;
    procedure bbShClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Deshi: TDeshi;

implementation

{$R *.dfm}

procedure TDeshi.bbShClick(Sender: TObject);
begin
   Deshi.Visible:=False;
   
end;

end.

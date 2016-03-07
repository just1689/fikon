unit MainU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FikonU, Fikon2U;

type
  TfrmMain = class(TForm)
    edtIn: TEdit;
    memOut: TMemo;
    btnGo: TButton;
    edtOut: TEdit;
    procedure btnGoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnGoClick(Sender: TObject);
var ts : String;
begin
  memOut.clear;
  if edtIn.Text <> ''
    then begin
      ts := edtIn.Text;
      ts := Convert(ts);
      edtIn.Clear;
    end
    else if edtIn.text = ''
      then begin
        ts := edtOut.Text;
        ts := Konvert(ts);
        edtOut.Clear;
      end;
  memOut.Lines.add(ts);

end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  StartIt;

end;

end.

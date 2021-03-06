unit EDITOR;

interface

uses
  HELP, Winapi.Windows, System.Classes, Vcl.Graphics, Vcl.Forms, Vcl.Controls,
  Vcl.Menus, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.ImgList, Vcl.StdActns, Vcl.ActnList, Vcl.ToolWin, SysUtils, FIND, UITypes, Vcl.FileCtrl, ShellApi, ABOUT,
  System.Actions, System.ImageList;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    StaticText1: TStaticText;
    ActionList1: TActionList;
    ImageList1: TImageList;
    SaveFile: TAction;
    Button1: TButton;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    Memo1: TMemo;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  FileName: string;
implementation

{$R *.dfm}

Procedure SaveAs;
begin
  If Form3.SaveDialog1.Execute then
  begin
    Form3.Memo1.Lines.SaveToFile(Form3.SaveDialog1.FileName);
    //FileWork:=Form3.SaveDialog1.FileName;
  end;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  if FileName='' then SaveAs else Memo1.Lines.SaveToFile(StaticText1.Caption);
  Form3.Close;
end;

procedure TForm3.Button2Click(Sender: TObject);
var s : string;
begin
  SaveAs;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
  FileName := StaticText1.Caption;
  Memo1.Lines.LoadFromFile(StaticText1.Caption);
  //StatusBar1 := FileName;
end;

end.

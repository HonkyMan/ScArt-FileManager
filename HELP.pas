unit HELP;

interface

uses Winapi.Windows, System.Classes, Vcl.Graphics, Vcl.Forms, Vcl.Controls,
  Vcl.Menus, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.ImgList, Vcl.StdActns, Vcl.ActnList, Vcl.ToolWin, SysUtils, FIND, UITypes, Vcl.FileCtrl, ShellApi;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    ComboBox1: TComboBox;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure ComboBox1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.ComboBox1Click(Sender: TObject);
begin
  if ComboBox1.ItemIndex=0 then
    begin
      Memo1.Lines.Clear;
      Memo1.ReadOnly:=true;
      Memo1.Lines.Add('Delphi � ������������ ����������������� ��������-��������������� ���� ���������������� �� ������� ����������� ���������� ����������.');
      Memo1.Lines.Add('�������� ������� ������������� � ��������� ����������� ������������ �����������.');
    end;

  if ComboBox1.ItemIndex=1 then
  begin
    Memo1.Lines.Clear;
    Memo1.ReadOnly:=true;
    Memo1.Lines.Add('Object Pascal � ��������� �������� ����� ����� �������, �������, � ���� �������, �������� �� ����� �������.');
    end;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  ComboBox1.TextHint := '�������� ����...';
  ComboBox1.Hint := '�������� ����...';
  Memo1.Lines.Clear;
  Memo1.TextHint := '������� �������� ����...';
  Memo1.Hint := '������� �������� ����...';
end;

end.

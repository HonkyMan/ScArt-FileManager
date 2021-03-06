unit FIND;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.FileCtrl,
  Vcl.WinXCtrls, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Panel3: TPanel;
    CheckBox1: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    Panel4: TPanel;
    Button1: TButton;
    Button2: TButton;
    DriveComboBox1: TDriveComboBox;
    SearchBox1: TSearchBox;
    ListBox1: TListBox;
    DirectoryListBox1: TDirectoryListBox;
    ListBox2: TListBox;
    procedure Button2Click(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SearchBox1InvokeSearch(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFindFile: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var s:string;
SR: TSearchRec;
FindRes: Integer;
begin
  ListBox2.Clear;
  s := '';
  s := SearchBox1.Text;

  FindRes := FindFirst(s, faAnyFile, SR);
  if CheckBox1.Checked then
    FindRes := FindFirst(s, faReadOnly, SR);
  if CheckBox3.Checked then
    FindRes := FindFirst(s, faHidden, SR);
  if CheckBox4.Checked then
    FindRes := FindFirst(s, faSysFile, SR);
  if CheckBox7.Checked then
    FindRes := FindFirst(s, faArchive, SR);
  if CheckBox8.Checked then
    FindRes := FindFirst(s, faDirectory, SR);
  if CheckBox9.Checked then
    FindRes := FindFirst(s, faVolumeID, SR);

  while FindRes = 0 do // ���� �� ������� ����� (��������), �� ��������� ����
  begin
    if ((SR.Attr and faDirectory) = faDirectory) and
      ((SR.Name = '.') or (SR.Name = '..')) then
    begin
      FindRes := FindNext(SR);
      Continue;
    end;
    ListBox2.Items.Add(DirectoryListBox1.Directory + '\' + SR.Name); // ���������� � ������ ��������
    // ���������� ��������
    FindRes := FindNext(SR); // ����������� ������ �� �������� ��������
  end;
  FindClose(SR);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  fFindFile.CloseModal;
end;



procedure TForm1.DirectoryListBox1Change(Sender: TObject);
begin
  SearchBox1.Text := DirectoryListBox1.Directory + '\';
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  ListBox1.Clear;
  SearchBox1.Text := DirectoryListBox1.Directory + '\';
end;

procedure TForm1.SearchBox1InvokeSearch(Sender: TObject);
var s:string;
SR: TSearchRec;
FindRes: Integer;
begin
  ListBox2.Clear;
  s := '';
  s := SearchBox1.Text;

  FindRes := FindFirst(s, faAnyFile, SR);
  if CheckBox1.Checked then
    FindRes := FindFirst(s, faReadOnly, SR);
  if CheckBox3.Checked then
    FindRes := FindFirst(s, faHidden, SR);
  if CheckBox4.Checked then
    FindRes := FindFirst(s, faSysFile, SR);
  if CheckBox7.Checked then
    FindRes := FindFirst(s, faArchive, SR);
  if CheckBox8.Checked then
    FindRes := FindFirst(s, faDirectory, SR);
  if CheckBox9.Checked then
    FindRes := FindFirst(s, faVolumeID, SR);

  while FindRes = 0 do // ���� �� ������� ����� (��������), �� ��������� ����
  begin
    if ((SR.Attr and faDirectory) = faDirectory) and
      ((SR.Name = '.') or (SR.Name = '..')) then
    begin
      FindRes := FindNext(SR);
      Continue;
    end;
    ListBox2.Items.Add(DirectoryListBox1.Directory + '\' + SR.Name); // ���������� � ������ ��������
    // ���������� ��������
    FindRes := FindNext(SR); // ����������� ������ �� �������� ��������
  end;
  FindClose(SR);
end;

end.

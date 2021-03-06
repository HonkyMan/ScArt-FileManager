unit SDIMAIN;

interface
{$WARN UNIT_PLATFORM OFF}
uses IniFiles, HELP, EDITOR, Messages, Winapi.Windows, System.Classes, Vcl.Graphics, Vcl.Forms, Vcl.Controls,
  Vcl.Menus, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.ImgList, Vcl.StdActns, Vcl.ActnList, Vcl.ToolWin, SysUtils, FIND, UITypes, Vcl.FileCtrl, ShellApi, ABOUT;

type
  TSDIAppForm = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    Splitter2: TSplitter;
    GroupBox2: TGroupBox;
    FileListBoxL: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    PanelDn: TPanel;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    FileListBoxR: TFileListBox;
    MainMenu1: TMainMenu;
    help: TMenuItem;
    view: TMenuItem;
    progExit: TMenuItem;
    oneCol: TMenuItem;
    twoCol: TMenuItem;
    properties: TMenuItem;
    comand: TMenuItem;
    findFile: TMenuItem;
    DriveComboBox2: TDriveComboBox;
    FilterComboBox2: TFilterComboBox;
    DirectoryListBox2: TDirectoryListBox;
    N1: TMenuItem;
    N2: TMenuItem;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    PopupMenu1: TPopupMenu;
    MBRProp: TMenuItem;
    PopupMenu2: TPopupMenu;
    N4: TMenuItem;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FileListBoxLChange(Sender: TObject);
    procedure PanelDnResize(Sender: TObject);
    procedure FileListBoxLDblClick(Sender: TObject);
    procedure FileListBoxRChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FileListBoxREnter(Sender: TObject);
    procedure FileListBoxLEnter(Sender: TObject);
    procedure helpClick(Sender: TObject);
    procedure oneColClick(Sender: TObject);
    procedure twoColClick(Sender: TObject);
    procedure progExitClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure propertiesClick(Sender: TObject);
    procedure findFileClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FileListBoxLKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FileListBoxLKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FileListBoxRKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FileListBoxRKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FileListBoxRDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Button5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FileListBoxRDblClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure OperFiles(FileList: TFileListBox; flags: word);
    procedure FormResize(Sender: TObject);
    procedure FileListBoxLMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FileListBoxRMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    //procedure MBRPropClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure MBRPropClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    //procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    //procedure CMDialogKey(var msg: TCMDialogKey);
    //message CM_DIALOGKEY;
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure WMDropFiles (var Msg: TMessage);
    message wm_DropFiles;
  end;

var
  SDIAppForm: TSDIAppForm;
  ListBoxLeft: boolean;
  Alt: boolean;
implementation

{$R *.dfm}

procedure TSDIAppForm.FileListBoxLChange(Sender: TObject);
begin
  StatusBar1.Panels[1].Text:=ExtractFileName(FileListBoxL.FileName);
end;

procedure TSDIAppForm.FileListBoxRChange(Sender: TObject);
begin
  StatusBar1.Panels[1].Text:=ExtractFileName(FileListBoxR.FileName);
end;

procedure TSDIAppForm.FileListBoxREnter(Sender: TObject);
begin
  ListBoxLeft:=false;
  // ���������� ListBoxLeft ���������, ��� ����� ������ �� ��������.
  FileListBoxL.ItemIndex := -1 ;
  //FileListBoxL.Enabled:=false;
  // ������� ��������� � ��������� ����� ������.
  FileListBoxL.ClearSelection;
  // �������� �������� ������� ������ ������.
  FileListBoxR.Selected[FileListBoxR.ItemIndex+1]:=true;
end;

/////////////////DRAG&DROP///////////

procedure TSDIAppForm.WMDropFiles(var Msg: TMessage);
var   i: integer;
Filename: array[0..256] of char;
NewFileName, OldFileName: string;
begin
	DragQueryFile(THandle(Msg.WParam),0,Filename,SizeOf(Filename)); // � ���������� Filename ����� ���������� ���� � ���������������� �����.

	NewFileName:='';
	OldFileName:='';
	i:=0; // ���� � ���������������� ����� � ���������� OldFileName.

	while FileName[i]<>#0 do
	begin
    //i:= DragQueryFile(FileName);
		OldFileName:=OldFileName+FileName[i];
		i:=i+1;
	end;
	i:=i-1;

	// �� ���������������� ����� �������� �������.
	while FileName[i]<>'\' do
	begin
		NewFileName:=FileName[i]+NewFileName;
		i:=i-1;
	end;

	// ��������� ������� � ������ ����� � ����������� �� ��������� FileListBox.
	if ListBoxLeft then
		NewFileName := FileListBoxL.Directory+'\' + NewFileName
	else
		NewFileName := FileListBoxR.Directory + '\' + NewFileName;

	  if not CopyFile(PChar(OldFilename),PChar(NewFileName),true) then
		ShowMessage('������ �����������');

	// �������� �� ��������� ��������������.
	DragFinish(THandle(Msg.WParam));

	// ��������� �������� FileListBox.
		FileListBoxL.Update;
		FileListBoxR.Update;
end;

/////////////////////////////////////

procedure TSDIAppForm.FileListBoxLEnter(Sender: TObject);
begin
  ListBoxLeft:=true;
  // ������� ��������� � ��������� ����� ������.
  FileListBoxR.ClearSelection;
  // �������� �������� ������� ������ ������.
  FileListBoxL.Selected[FileListBoxL.ItemIndex+1]:=true;
end;

{procedure TSDIAppForm.CMDialogKey(var msg: TCMDialogKey);
begin
  if msg.Charcode <> VK_TAB then
  inherited;
end;                }

procedure TSDIAppForm.FileListBoxLKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Alt := true;
  if (Key=VK_F1) and Alt then
  begin
     DriveComboBox1.DroppedDown:=true;
  end;
  if (Key=VK_F2) and Alt then
  begin
    DriveComboBox2.DroppedDown:=true;
  end;
  if Key=VK_MENU then
    Alt:=true;
  if (Key=VK_F3) and Alt then
  begin
    FileName := SDIAppForm.FileListBoxL.FileName;
    Form3.StaticText1.Caption := FileName;
    Form3.ShowModal;
  end
  else Alt:=false;
end;

procedure TSDIAppForm.FileListBoxLKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Alt:=false;
end;

procedure TSDIAppForm.FileListBoxLMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var P: TPoint;
begin
  getCursorpos(P);
  if Button=mbRight then
  begin
    FileListBoxR.ClearSelection;
    FileListBoxL.ClearSelection;
    FileListBoxL.ItemIndex := FileListBoxL.ItemAtPos(Point(X, Y), true);
    FIleListBoxL.Selected[FileListBoxL.ItemIndex] := true;
    PopUpMenu1.Popup(P.X, P.Y);
  end;
end;

procedure TSDIAppForm.FileListBoxRMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var P: TPoint;
begin
  getCursorpos(P);
  if Button=mbRight then
  begin
    FileListBoxL.ClearSelection;
    FileListBoxR.ClearSelection;
    FileListBoxR.ItemIndex := FileListBoxR.ItemAtPos(Point(X, Y), true);
    FIleListBoxR.Selected[FileListBoxR.ItemIndex] := true;

    PopUpMenu2.Popup(P.X, P.Y);
  end;
end;

procedure TSDIAppForm.FileListBoxRKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_F1) and Alt then
  begin
     DriveComboBox2.DroppedDown:=true;
  end;
  if (Key=VK_F2) and Alt then
  begin
    DriveComboBox1.DroppedDown:=true;
  end;
  if Key=VK_MENU then
    Alt:=true;
  if (Key=VK_F3) and Alt then
  begin
    FileName := SDIAppForm.FileListBoxL.FileName;
    Form3.StaticText1.Caption := FileName;
    Form3.ShowModal;
  end
  else Alt:=false;
end;

procedure TSDIAppForm.FileListBoxRKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Alt := false;
end;

procedure TSDIAppForm.FileListBoxLDblClick(Sender: TObject);
var s : string;
begin
	s:=FileListBoxL.FileName;
	if Pos('[.]',s)>0 then
	begin        { ������� � ������ }
		s:=FileListBoxL.Drive;
		FileListBoxL.Directory:=s+':\';
	end
	else if Pos('[',s)>0 then
	begin   { ������� � ������������ }
		Delete(s,Pos('[',s),1);
		Delete(s,Pos(']',s),1);
		FileListBoxL.Directory:=s;
	end
	else
		ShellExecute(Application.Handle,{ �������� ����� �����. ���������� } Pchar('Open'),Pchar(s), nil, nil ,SW_SHOWNORMAL);
end;

procedure TSDIAppForm.FileListBoxRDblClick(Sender: TObject);
var s : string;
begin
	s:=FileListBoxR.FileName;
	if Pos('[.]',s)>0 then
	begin        { ������� � ������ }
		s:=FileListBoxR.Drive;
		FileListBoxR.Directory:=s+':\';
	end
	else if Pos('[',s)>0 then
	begin   { ������� � ������������ }
		Delete(s,Pos('[',s),1);
		Delete(s,Pos(']',s),1);
		FileListBoxR.Directory:=s;
	end
	else
		ShellExecute(Application.Handle,{ �������� ����� �����. ���������� } Pchar('Open'),Pchar(s), nil, nil ,SW_SHOWNORMAL);
end;

procedure TSDIAppForm.FileListBoxRDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  //Accept := Source = Edit1;
end;

procedure TSDIAppForm.FileNew1Execute(Sender: TObject);
begin
  { Do nothing }
end;

procedure TSDIAppForm.findFileClick(Sender: TObject);
begin
  fFindFile.ShowModal;
end;

procedure TSDIAppForm.FormActivate(Sender: TObject);
begin
  FileListBoxL.SetFocus;
  oneCol.Checked:=true;
end;


procedure TSDIAppForm.FormCreate(Sender: TObject);
var Ini : TIniFile;
begin

  Ini:=TiniFile.Create(ExtractFilePath(ParamStr(0))+'TDNComm.ini');
  Width:=Ini.ReadInteger('Size','Width',700);
  Height:=Ini.ReadInteger('Size','Height',500);
  Left:=Ini.ReadInteger('Position','X',100);
  Top:=Ini.ReadInteger('Position','Y',100);

  Ini.WriteInteger('SplitterL', 'HeightP3L', Panel3.Height);
  Ini.WriteInteger('SplitterL', 'HeightP4L', Panel4.Height);

  Ini.WriteString('Directory','Left',FileListBoxL.Directory);
  Ini.WriteString('Directory','Right',FileListBoxR.Directory);

  FileListBoxL.Directory := Ini.ReadString('Directory','Left', '/');
  FileListBoxR.Directory := Ini.ReadString('Directory','Right', '/');

  Panel3.Height := Ini.ReadInteger('SplitterL', 'HeightP3L', 150);
  Panel4.Height := Ini.ReadInteger('SplitterR', 'HeightP4R', 150);

  GroupBox1.Width:=Ini.ReadInteger('Panel','Left',350);
  Panel1.Height:=Ini.ReadInteger('Panel','Down',50);

  Ini.Free;

  DragAcceptFiles(Handle, true);
end;

procedure TSDIAppForm.FormResize(Sender: TObject);
begin
  GroupBox1.Width := PanelDN.Width div 2;
end;

{procedure TSDIAppForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_TAB then
  begin
    if ListBoxLeft then
      FileListBoxR.SetFocus
    else
    FileListBoxL.SetFocus;
  end
end;  }

procedure TSDIAppForm.Button3Click(Sender: TObject);
var FileName : string;
begin
  FileName := SDIAppForm.FileListBoxL.FileName;
  Form3.StaticText1.Caption := FileName;
  Form3.ShowModal;
end;

procedure TSDIAppForm.Button4Click(Sender: TObject);
begin
  if ListBoxLeft then
    operFiles(FileListBoxL, FO_COPY)
  else
    operFiles(FileListBoxR, FO_COPY)
end;

procedure TSDIAppForm.Button5Click(Sender: TObject);
var NewName, OldName: string;
begin
  if ListBoxLeft then
    operFiles(FileListBoxL, FO_MOVE)
  else
    operFiles(FileListBoxR, FO_MOVE)
  {if ListBoxLeft then // ���� ������� ����� ������
  begin
    OldName:=FileListBoxL.FileName;    // ����, ������� �����������������
    NewName:=FileListBoxR.Directory+'\'+ExtractFileName(OldName);    // ����� ��� �����
  end
  else // ���� ������� ������ ������
  begin
    OldName:=FileListBoxR.FileName;
    NewName:=FileListBoxL.Directory+'\'+ExtractFileName(OldName);
  end;
  if FileExists(NewName) then // ���� ���� ����������
  begin
    if MessageDlg('���� ����������. ��������?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
    then    // ���� ���� �������������, �� ������ �� ������
    else Exit;   // ���� ������� '���' ��� ������, �� ��������� �� ����� ���������
  end;
  if not RenameFile(OldName,NewName)  then
  ShowMessage('������ ��������������'); // �������������� �����. � ������ ������ - ��������������.
  FileListBoxL.Update;
  FileListBoxR.Update;}
end;

procedure TSDIAppForm.Button6Click(Sender: TObject);
var DirName: string;
begin
	DirName := '����� �����';
	if(InputQuery('�������� �����', '������� ��� �����:',DirName)) then
	begin
		if SysUtils.DirectoryExists(DirName) then
		begin
			if MessageDlg('����� � ����� ������ ��� ����������. ���������� ��� ���',mtConfirmation,mbOKCancel,0)= mrOk then
				Button6Click(Sender);

			if CreateDir(DirName) = false then
				ShowMessage('����� �� �������')
			else // ���������� ���������
				FileListBoxL.Update;
			FileListBoxR.Update;
		end
		else
		begin // �������� �����
			CreateDir(DirName);
			FileListBoxL.Update;
			FileListBoxR.Update;
		end;
	end;
  DirectoryListBox1.Update;
  DirectoryListBox2.Update;
end;

procedure TSDIAppForm.Button7Click(Sender: TObject);
{var FileName: string;
dir: string;
breakLeftIndex: integer;
breakRightIndex: integer;}
begin
  if ListBoxLeft then
    operFiles(FileListBoxL, FO_DELETE)
  else
    operFiles(FileListBoxR, FO_DELETE);
  {if MessageDlg('�� ������������� ������ �������?', mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    if (ListBoxLeft) then
    begin
      FileName := FileListBoxL.FileName;
      dir := FileListBoxL.Items.Strings[FileListBoxL.ItemIndex];
      breakLeftIndex := pos('[', dir);
      Delete(dir, breakLeftIndex, 1);
      breakRightIndex := pos(']', dir);
      Delete(dir, breakRightIndex, 1);
    end
    else
    begin
      FileName := FileListBoxR.FileName;   //�������, ��������� ����� ��� ����
      dir := FileListBoxR.Items.Strings[FileListBoxR.ItemIndex];
      breakLeftIndex := pos('[', dir);
      Delete(dir, breakLeftIndex, 1);
      breakRightIndex := pos(']', dir);
      Delete(dir, breakRightIndex, 1);
    end;
    //if Pos('.',FileName) = 0 then
    begin
      if RemoveDir(dir)
      then ShowMessage('"' + dir + '"' + ' ������')
    end;
    if Pos('.',FileName) > 0 then
      if DeleteFile(FileName) then
      begin // ����������
        FileListBoxL.Update;
        FileListBoxR.Update;
      end
      else
        ShowMessage('���� �� ����� ���� ������')
    else
    begin
      Delete(FileName,Pos('[',FileName),1);
      Delete(FileName,Pos(']',FileName),1);
      FileListBoxL.DeleteSelected();
      //DirectoryListBox1.DeleteSelected(FileName,true);
      FileListBoxL.Update;
      FileListBoxR.Update;
      if(SysUtils.DirectoryExists(FileName)) then
        ShowMessage('����� �� ����� ���� �������');
    end;
  end;}
  FileListBoxL.Update;
  FileListBoxR.Update;
end;

procedure TSDIAppForm.progExitClick(Sender: TObject);
begin
  if MessageDlg('Close the form?', mtConfirmation,
    [mbOk, mbCancel], 0) = mrOK then close;
end;

procedure TSDIAppForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TSDIAppForm.HelpAbout1Execute(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TSDIAppForm.helpClick(Sender: TObject);
begin
  Form2.ShowModal;
  //l := '����� ������ �� ����';
  //buttonSelected := MessageDlg(l, mtConfirmation, [mbOK], 0);
  //if buttonSelected = mrOK then MessageDlg('�����', mtConfirmation, [mbOK], 0);
end;

procedure TSDIAppForm.MBRPropClick(Sender: TObject);
var i : integer;
s : string;
dir : string;
begin
  For i:=0 To FileListBoxL.Items.Count-1 do begin
    If FileListBoxL.Selected[i] Then begin
      dir :=  FileListBoxL.Items[i];
      if Pos('[',dir) > 0 then
      begin
        Delete(dir, pos('[', dir), 1);
        Delete(dir, pos(']', dir), 1);
      end;
      s := FileListBoxL.Directory + '\' + dir;//FileListBoxL.Items[i];
    end;
  end;
  AboutBox.Placing.Text := s;
  //AboutBox.PropFileName.Text = ExtractFileName(AboutBox.Placing.Text);
  AboutBox.ShowModal;
end;

procedure TSDIAppForm.N2Click(Sender: TObject);
var FileName: string;
begin
  FileName := '����� ��������� ��������.txt';
	if(InputQuery('�������� �����', '������� ��� �����:',FileName)) then
	begin
		if SysUtils.FileExists(FileName) then
		begin
			if MessageDlg('���� � ����� ������ ��� ����������. ���������� ��� ���',mtConfirmation,mbOKCancel,0)= mrOk then
				Button6Click(Sender);

			if CreateDir(FileName) = false then
				ShowMessage('���� �� ������')
			else // ���������� ���������
				FileListBoxL.Update;
			FileListBoxR.Update;
		end
		else
		begin // �������� �����
			FileCreate(FileName);
			FileListBoxL.Update;
			FileListBoxR.Update;
		end;
	end;
  DirectoryListBox1.Update;
  DirectoryListBox2.Update;
end;


procedure TSDIAppForm.N4Click(Sender: TObject);
var i : integer;
s : string;
dir : string;
begin
  For i:=0 To FileListBoxR.Items.Count-1 do
  begin
    If FileListBoxR.Selected[i] Then
    begin
      dir := FileListBoxR.Items[i];
      if Pos('[',dir) > 0 then
      begin
        Delete(dir, pos('[', dir), 1);
        Delete(dir, pos(']', dir), 1);
      end;
      s := FileListBoxR.Directory + '\' + dir;
    end;
  end;
  AboutBox.Placing.Text := s;
  //AboutBox.PropFileName.Text = ExtractFileName(AboutBox.Placing.Text);
  AboutBox.ShowModal;
end;

procedure TSDIAppForm.propertiesClick(Sender: TObject);
var i : integer;
s : string;
dir : string;
begin
  if ListBoxLeft then
  begin
    //dir := FileListBoxL.Items.Strings[FileListBoxR.ItemIndex];

    For i:=0 To FileListBoxL.Items.Count-1 do begin
      If FileListBoxL.Selected[i] Then begin
        dir :=  FileListBoxL.Items[i];
        if Pos('[',dir) > 0 then
        begin
          Delete(dir, pos('[', dir), 1);
          Delete(dir, pos(']', dir), 1);
        end;
        s := FileListBoxL.Directory + '\' + dir;//FileListBoxL.Items[i];
      end;
    end;

  end
  else
  begin
    For i:=0 To FileListBoxR.Items.Count-1 do begin
      If FileListBoxR.Selected[i] Then begin
      dir :=  FileListBoxR.Items[i];
        if Pos('[',dir) > 0 then
        begin
          Delete(dir, pos('[', dir), 1);
          Delete(dir, pos(']', dir), 1);
        end;
        s := FileListBoxR.Directory + '\' + dir;
      end;
    end;
  end;
  AboutBox.Placing.Text := s;
  //AboutBox.PropFileName.Text = ExtractFileName(AboutBox.Placing.Text);
  AboutBox.ShowModal;
end;

procedure TSDIAppForm.oneColClick(Sender: TObject);
begin
  TDirectoryListBox(FileListBoxL).Columns:=1;
  oneCol.Checked:=true;
  twoCol.Checked:=false;
end;

procedure TSDIAppForm.twoColClick(Sender: TObject);
begin
  TDirectoryListBox(FileListBoxL).Columns:=2;
  twoCol.Checked:=true;
  oneCol.Checked:=false;
end;

procedure TSDIAppForm.PanelDnResize(Sender: TObject);
  var i,k,d : integer;
  leng  : integer;
begin    // ��������� ������ ���������� �� Panel2.
  k:=0;    // ������� ���������� � ������ 'But_Help.
  while Components[k+1].Name<>'Button3' do k:=k+1;    // ����� 8 ������, ������������� ������ ������ ������� ����� ����.
  leng:=PanelDn.Width div 5;
  d:=(PanelDn.Width mod 8) div 2;    // ������ ��� ���������� ����������� ���� �� ������. ������� � ����.
  for i:=1 to 5 do
    begin
      with TButton(Components[i+k]) do
      begin
        Left:=d+(i-1)*leng;
        Width:=leng;
      end;
    end;

  // ��������� StatusBar1.Panels[1].Width=50
  StatusBar1.Panels[1].Width:=StatusBar1.Width-50;

  //GroupBox1.Width := PanelDN.Width div 2;
end;

procedure TSDIAppForm.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text:=TimeToStr(Time);
end;

///////////////////////////////

procedure TSDIAppForm.OperFiles(FileList: TFileListBox; flags: word);
var   Fo: TSHFileOpStruct;
Buffer : array[0..4096] of char;
p: pchar;
i,k,n  : integer;
s : string;
begin
	FillChar(Buffer, sizeof(Buffer), #0);
	p := @Buffer;
	n:= FileList.SelCount;  { ���������� ���������� ������ }
	i:=0;                   { ������� ������ }
	k:=0;                   { ������� ���������� ������ }
	while k<n do
	begin
		if FileList.Selected[i] then
		begin                 { ���� i-�� ���� ������� }
			p:=StrECopy(p,PChar(FileList.Directory+'\'));
			s:=FileList.Items[i];
			if Pos('[',s)>0 then
			begin
				Delete(s,Pos('[',s),1);
				Delete(s,Pos(']',s),1);
			end;
			p:=StrECopy(p,PChar(s)) + 1;
			k:=k+1;
		end;
		i:=i+1;
	end;
	FillChar(Fo, sizeof(Fo), #0);
	Fo.Wnd := SDIAppForm.Handle;
	Fo.wFunc  := flags;
	Fo.pFrom  := @Buffer;
  if ListBoxLeft then
    Fo.pTo := PWideChar(WideString(FileListBoxR.Directory))
    //StringToWideChar(FileListBoxR.Directory, Fo.pTo)
    //Fo.pTo := FileListBoxR.Directory
  else
    Fo.pTo := PWideChar(WideString(FileListBoxL.Directory));
    //StringToWideChar(FileListBoxL.Directory, Fo.pTo);
    //Fo.pTo := FileListBoxL.Directory;
	//Fo.pTo    := 'C:\\';    { ����������� � ������ C: }
	Fo.fFlags := 0;
	if ((SHFileOperation(Fo) <> 0)or(Fo.fAnyOperationsAborted <> false)) then
	ShowMessage('Cancelled');     {���� �������� ��������, �� ���������}
  FileListBoxL.Update;
  FileListBoxR.Update;
end;

procedure TSDIAppForm.FormDestroy(Sender: TObject);
var Ini: Tinifile;
begin
  Ini:=TiniFile.Create(ExtractFilePath(paramstr(0))+'TDNComm.ini');

  Ini.WriteInteger('SplitterL', 'HeightP3L', Panel3.Height);
  Ini.WriteInteger('SplitterL', 'HeightP4L', Panel4.Height);

  Ini.WriteInteger('Size','Width',SDIAppForm.Width);
  Ini.WriteInteger('Size','Height',SDIAppForm.Height);
  Ini.WriteInteger('Position','X',SDIAppForm.Left);
  Ini.WriteInteger('Position','Y',SDIAppForm.Top);

  Ini.WriteString('Directory','Left',FileListBoxL.Directory);
  Ini.WriteString('Directory','Right',FileListBoxR.Directory);

  Ini.WriteInteger('Panel','Left',GroupBox1.Width);
  Ini.WriteInteger('Panel','Down',Panel1.Height);
  Ini.Free;
end;

end.

//TODO:
// �������� �������� �� ��������
// ���� �� �� TAB
// 2 ������� ��� ������� FileListBoxR
// ���������� "��������" ��� �����
//

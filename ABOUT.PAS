unit ABOUT;

interface

uses Winapi.Windows, System.Classes, Vcl.Graphics, Vcl.Forms, Vcl.Controls,
  Vcl.Menus, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.ImgList, Vcl.StdActns, Vcl.ActnList, Vcl.ToolWin, SysUtils, FIND, UITypes, Vcl.FileCtrl, ShellApi;
//Winapi.Windows, System.Classes, Vcl.Graphics, Vcl.Forms, Vcl.Controls,
  //Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, ShellApi, Vcl.Mask, UITypes;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    OKButton: TButton;
    Image1: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    PropFileName: TLinkLabel;
    PropType: TStaticText;
    PropPlacement: TStaticText;
    PropSize: TStaticText;
    PropCreate: TStaticText;
    PropChanged: TStaticText;
    StaticText6: TStaticText;
    PropAtributes: TStaticText;
    LabelType: TLabel;
    LabelSize: TLabel;
    LabelCreate: TLabel;
    LabelChanged: TLabel;
    LabelOpened: TLabel;
    CheckBoxHide: TCheckBox;
    CheckBoxArchive: TCheckBox;
    Placing: TEdit;
    procedure FormActivate(Sender: TObject);
  private
    procedure ShowIcon(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}

function FileTimeToDateTime(FileTime: TFileTime): TDateTime;
var
  ModifiedTime: TFileTime;
  SystemTime: TSystemTime;
begin
  Result := 0;
  if (FileTime.dwLowDateTime = 0) and (FileTime.dwHighDateTime = 0) then
    Exit;
  try
    FileTimeToLocalFileTime(FileTime, ModifiedTime);
    FileTimeToSystemTime(ModifiedTime, SystemTime);
    Result := SystemTimeToDateTime(SystemTime);
  except
    Result := Now; //В случае ошибки
  end;
end;

procedure TAboutBox.FormActivate(Sender: TObject);
var
  FileInf: WIN32_FILE_ATTRIBUTE_DATA;
begin
  if not GetFileAttributesEx(PChar(Placing.Text), GetFileExInfoStandard,@FileInf)
    then RaiseLastOSError;
  PropFileName.Caption := ExtractFileName(Placing.Text);
  LabelType.Caption := ExtractFileExt(Placing.Text);
  LabelSize.Caption:=IntToStr((FileInf.nFileSizeLow div 1048576))+'.'
   +IntToStr((FileInf.nFileSizeLow mod 1048576) div 1000)+'MБ';
  if (FileInf.dwFileAttributes and  FILE_ATTRIBUTE_ARCHIVE <>0) then
      CheckBoxArchive.Checked:=true;
  if (FileInf.dwFileAttributes and FILE_ATTRIBUTE_HIDDEN <>0) then
      CheckBoxHide.Checked:=true;
  ShowIcon(Sender);
  CheckBoxArchive.Enabled:=false;
  CheckBoxHide.Enabled:=false;

  LabelCreate.Caption := DateTimeToStr(FileTimeToDateTime(FileInf.ftCreationTime));
  LabelChanged.Caption := DateTimeToStr(FileTimeToDateTime(FileInf.ftLastAccessTime));
  LabelOpened.Caption := DateTimeToStr(FileTimeToDateTime(FileInf.ftLastWriteTime));
end;

procedure TAboutBox.ShowIcon(Sender: TObject);
var Icon : hIcon;
 IconIndex : word;
  begin
    IconIndex := 1;
    Icon := ExtractAssociatedIcon(HInstance, PChar(Placing.Text), IconIndex);
    //Image1.Canvas
    DrawIcon(Image1.Canvas.Handle, 0, 0, Icon);
  end;
end.
 

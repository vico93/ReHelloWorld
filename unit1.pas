unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Label1: TLabel;
    AbrirImg: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  filename: string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  AbrirImg.Free;
  Application.Terminate;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if AbrirImg.Execute then
  begin
    filename := AbrirImg.Filename;
    Image1.Picture.Clear;
    Image1.Picture.LoadFromFile(filename);
  end;
end;
end.


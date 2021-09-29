unit Unit1;

interface

uses
	Winapi.Windows,
	Winapi.Messages,
	System.Variants,
	System.Classes,
	Vcl.Graphics,
	Vcl.Controls,
	Vcl.Forms,
	Vcl.StdCtrls,
  System.Threading, Vcl.WinXCtrls;

type
	TForm1 = class(TForm)
		Button_Executar : TButton;
		Button_TTask : TButton;
		Edit_Horas : TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit_Valor1: TEdit;
    Edit_Valor2: TEdit;
    Edit_Resultado: TEdit;
    ActivityIndicator1: TActivityIndicator;
		procedure Button_ExecutarClick(Sender : TObject);
		procedure Button_TTaskClick(Sender : TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
		private
			arrayTarefas: array [0..1] of ITask;
		public
			{ Public declarations }
	end;

var
	Form1 : TForm1;

implementation

uses
	System.SysUtils,
	Vcl.Dialogs;

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
begin
	ActivityIndicator1.Animate := True;
	arrayTarefas[0] := TTask.Run(
                      procedure
                      begin
                      	sleep(10000);
                        TThread.Synchronize(TThread.CurrentThread,
                        	procedure
                          begin
                          	Edit_Valor1.Text := Random(50).ToString;
                          end);
                      end);

	arrayTarefas[1] := TTask.Run(
                      procedure
                      begin
                      	sleep(15000);
                        TThread.Synchronize(TThread.CurrentThread,
                        	procedure
                          begin
                          	Edit_Valor2.Text := Random(100).ToString;
                          end);
                      end);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
	ATask: ITask;
begin
	ATask := TTask.Run(procedure
                  begin
                    TTask.WaitForAll(arrayTarefas);
                  	TThread.Synchronize(TThread.CurrentThread,
                    	procedure
	                    begin
  	                    Edit_Resultado.Text := IntToStr(StrToInt(Edit_Valor1.Text) + StrToInt(Edit_Valor2.Text));
    	                  ActivityIndicator1.Animate := False;
      	              end);
                  end);
end;

procedure TForm1.Button_ExecutarClick(Sender : TObject);
begin
	Sleep(5000);
	Edit_Horas.Text := FormatDateTime('hh:mm:ss', now())
end;

procedure TForm1.Button_TTaskClick(Sender : TObject);
begin
	TTask.Run(
			procedure
		begin
			while true do
			begin
				Sleep(1000);

        TThread.Synchronize(TThread.CurrentThread,
					procedure
					begin
						Edit_Horas.Text := FormatDateTime('hh:mm:ss', now());
					end);
			end;
		end);
end;

end.

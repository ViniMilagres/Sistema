unit uFuncoes;

interface

  uses
  Vcl.Forms, System.SysUtils, System.Classes, Data.DB, Data.SqlExpr,
  Vcl.DBGrids, Vcl.Grids, System.Types, System.Generics.Collections;
{  Data.FMTBcd, Datasnap.DbClient, DataSnap.Provider;}


  {  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadastro_Basico, Data.DB,
  IDETheme.ActnCtrls, Vcl.Menus, Vcl.ActnPopup, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DBXMySQL, Data.SqlExpr,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider;}

function GetId(Campo, Tabela : string) :Integer;
function GetLoginCadastrado(Login : string) : Boolean;
Procedure EditarDbGrid(DataSource : TDataSource; Sender : TDBGrid; State : TGridDrawState;  Rect: TRect; Column : TColumn);
function StringParaFloat(s : string) : Extended;

implementation

uses ModConexao, ufrm_Cadastro_Usuarios;

function GetId(Campo, Tabela : string) :Integer;
  begin
    with
     TSQLQuery.Create(nil) do
    try
      SQLConnection := DataModule1.SQLConnection;
      sql.Add('SELECT '+Campo+' FROM '+Tabela+' ORDER BY '+Campo+' DESC LIMIT 1');
      open;
      Result := Fields[0].AsInteger + 1;
    finally
      close;
      free;
    end;
  end;


function GetLoginCadastrado(Login : string) : Boolean;
  begin
  result :=false;
    with
    TSQLQuery.Create(nil) do

    try
    SQLConnection := DataModule1.SQLConnection;
    sql.add('SELECT ID FROM USUARIOS WHERE LOGIN = :LOGIN');
    Params[0].AsString := Login;
    Open;

    if not IsEmpty then
      result:= true;
      finally
      close;
      Free;

    end;



  end;

{Implementar Cores intercalando nas linhas do grid}
  Procedure EditarDbGrid(DataSource : TDataSource; Sender : TDBGrid; State : TGridDrawState;  Rect: TRect; Column : TColumn);
  begin
    if not odd(DataSource.DataSet.RecNo) then
      begin
        if not (gdSelected in state) then
        Begin
          Sender.Canvas.Brush.Color := $00FFEFDF;
          Sender.Canvas.FillRect(Rect);
          Sender.DefaultDrawDataCell(Rect,Column.Field,State);
        End;

      end;

  end;

  function StringParaFloat(s : string) : Extended;
{ Filtra uma string qualquer, convertendo as suas partes
  numéricas para sua representação decimal, por exemplo:
  'R$ 1.200,00' para 1200,00 '1AB34TZ' para 134}
var
  i :Integer;
  t : string;
  SeenDecimal,SeenSgn : Boolean;
begin
   t := '';
   SeenDecimal := False;
   SeenSgn := False;
   {Percorre os caracteres da string:}
   for i := Length(s) downto 0 do
  {Filtra a string, aceitando somente números e separador decimal:}

     if (s[i] in ['0'..'9', '-','+',',']) then
     begin
        if (s[i] = ',') and (not SeenDecimal) then
        begin
           t := s[i] + t;
           SeenDecimal := True;
        end
        else if (s[i] in ['+','-']) and (not SeenSgn) and (i = 1) then
        begin
           t := s[i] + t;
           SeenSgn := True;
        end
        else if s[i] in ['0'..'9'] then
        begin
           t := s[i] + t;
        end;
     end;
   Result := StrToFloat(t);
end;

end.

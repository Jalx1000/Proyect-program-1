unit flaberinto;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Menus, ExtCtrls, Buttons, ujuego, flab;

type

  { TForm1 }

  TForm1 = class(TForm)
    UsarTeclado: TButton;
    Image1: TImage;
    MainMenu1: TMainMenu;
    Archivos: TMenuItem;
    Abrir: TMenuItem;
    Guardar: TMenuItem;
    OP: TOpenDialog;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure AbrirClick(Sender: TObject);
    procedure BAbaClick(Sender: TObject);
    procedure BArrClick(Sender: TObject);
    procedure BautoClick(Sender: TObject);
    procedure BIzqClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormMouseEnter(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure JugarClick(Sender: TObject);
    procedure BDerClick(Sender: TObject);
    procedure JugarKeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure GuardarClick(Sender: TObject);
    procedure Nivel2Click(Sender: TObject);
    procedure Nivel3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton7MouseLeave(Sender: TObject);
    procedure UsarTecladoKeyPress(Sender: TObject; var Key: char);
  private
    { private declarations }
    J:juego;
    r:posicion;
    fil,col,nivel:integer;


  public
    { public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.JugarClick(Sender: TObject);
var ComenzarEn:integer;
begin


   ComenzarEn:=j.getnivel;
   if comenzarEn=0 then begin
     comenzarEn:=1;
   end;

   J:=Juego.Crear(Lab);
   showmessage(inttostr(comenzarEn));


  J.CrearLab(comenzarEn,fil,col);

end;

procedure TForm1.BIzqClick(Sender: TObject);
begin
  J.MoverRaton(Izquierda);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   J:=Juego.Crear(Lab);
  J.CrearLab(1,fil,col);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   J:=Juego.Crear(Lab);
  J.CrearLab(2,fil,col);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   J:=Juego.Crear(Lab);
  J.CrearLab(3,fil,col);
end;

procedure TForm1.FormMouseEnter(Sender: TObject);
begin

end;

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.Image1MouseEnter(Sender: TObject);
begin

end;

procedure TForm1.BArrClick(Sender: TObject);
begin
  J.MoverRaton(Arriba);
end;

procedure TForm1.BAbaClick(Sender: TObject);
begin
  J.MoverRaton(Abajo);
end;

procedure TForm1.AbrirClick(Sender: TObject);
begin
  fil:=2;
  col:=1;

  if OP.execute then begin

   j.abrir();
   j.posicionar(0);
   j.leer(r);
        fil:=r.fil;
        col:=r.col;
        nivel:=r.nivelactual;


    j.cerrar();


  end;

   J:=Juego.Crear(Lab);
  J.CrearLab(nivel,fil,col);

end;

procedure TForm1.BDerClick(Sender: TObject);
begin
  J.MoverRaton(Derecha);
end;

procedure TForm1.JugarKeyPress(Sender: TObject; var Key: char);
begin
    case(key) of
      'w':begin
             J.MoverRaton(Arriba);
           end;
      's':begin
           J.MoverRaton(abajo);
           end;
      'd':begin
             J.MoverRaton(derecha);
           end;
      'a':begin
             J.MoverRaton(Izquierda);
           end;

    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  fil:=2;
  col:=1;
  J:=Juego.Crear(Lab);
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin

end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: char);
begin



end;

procedure TForm1.GuardarClick(Sender: TObject);
begin
  j.cargar();
  showmessage('Guardado con exito');
end;

procedure TForm1.Nivel2Click(Sender: TObject);
begin

    J.CrearLab(2,fil,col);
end;

procedure TForm1.Nivel3Click(Sender: TObject);
begin

    J.CrearLab(3,fil,col);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var ComenzarEn:integer;
begin



   ComenzarEn:=j.getnivel;
   if comenzarEn=0 then begin
     comenzarEn:=1;
   end;

   J:=Juego.Crear(Lab);


  J.CrearLab(comenzarEn,fil,col);

end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  J.MoverRaton(Arriba);
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  J.MoverRaton(Izquierda);
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  J.MoverRaton(Derecha);
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  J.MoverRaton(abajo);
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
   J.Automatico();
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin

end;

procedure TForm1.SpeedButton7MouseLeave(Sender: TObject);
begin

end;

procedure TForm1.UsarTecladoKeyPress(Sender: TObject; var Key: char);
begin
   case(key) of
      'w':begin
             J.MoverRaton(Arriba);
           end;
      's':begin
           J.MoverRaton(abajo);
           end;
      'd':begin
             J.MoverRaton(derecha);
           end;
      'a':begin
             J.MoverRaton(Izquierda);
           end;

       end;

end;

procedure TForm1.BautoClick(Sender: TObject);
begin
  J.Automatico();

end;

end.


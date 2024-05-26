int miVariable = 100;
int pestaña = 1, contador, animacion;
int fuente;
int posX;
int posY;
int alpha = 0;
float miRect = random(10,100);
String texto1 = "SUPERCAMPEONES \ncreado por Yōichi Takahashi";
String texto2 = "La historia tiene como \ntema principal el fútbol \nnarrando la vida y las \naventuras de Oliver Atom";
PImage imagen1;
PImage imagen2;
PImage imagen3;


void setup() {
  animacion = 0;
  size(640, 480);
  textSize(50);
  fill(255, 0, 0);
  posX = -width/2;
  posX = -height/2;
  textAlign(LEFT, TOP);
  contador = 0;
  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");

}


void draw(){
  contador++;
  miVariable = frameCount / 2;
  miRect = random(10,180);
  println(miVariable);
  if(pestaña == 1){
    push();
    image(imagen1, 0, 0, width, height);
    text(texto1, miVariable, 200);
    pop();
  }else if(pestaña == 2){
    push();
    image(imagen2, 0, 0, width, height);
    textAlign(CENTER);
    textSize(50);
    fill(255, 0 ,0 , alpha);
    text(texto2, 320, 240);
    alpha++;
    pop();
    }
   else if(pestaña == 3){
    push();
    image(imagen3, 0, 0, width, height);
    textSize(fuente);
    textAlign(CENTER);
    text("sin duda esta serie tuvo un \n gran inpacto generacional \n muchos jugadores admiten \n haberse iniciado en el deporte \n por este programa ", width/2, height/2);
    fuente++;
    pop();
  }
  
   if(frameCount%(60*3) == 0){
    pestaña = pestaña + 1;
  }
}


void mouseClicked(){
  pestaña = pestaña + 1;
  if(pestaña == 4){
    pestaña = 1;
  }
}

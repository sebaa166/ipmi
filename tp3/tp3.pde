PImage opart;
int cant=20;
int tam = 24;
int ancho = 24;
int altura = 24;
int ajusteAncho;
int ajusteAltura;
int posX = 400;
int posY = 24;

void setup() {
  size(800, 400);
  background(255);
  opart = loadImage("opart.jpg");
  noStroke(); 
}

void draw(){
  dibujoCirculo();
  image(opart, 0, 0, 400, 400);
}

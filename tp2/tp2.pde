// ROBLEDO SEBASTIAN

// COMISION 1

float mov, tamTexto;
PFont fuente1;
PFont fuente2;
int segundos, posX, otraFuente, tamX, tamY, ancho, alto;
PImage fondo1;
PImage fondo2;
PImage fondo3;
PImage fondo4;
String texto1 = "spider-man"; 
String texto2 = "la historia trata sobre\ncomo el adolescente\nPeter Parker es mordido\npor una araña radioactiva\ny adquiere fuerzas\nsobrehumanas como trepar\nparedes o tirar\ntelarañas"; 
String texto3 = "actores principales\n    Tobey Maguire \n    Kristen Dunst \n    Willem Dafoe \n    James Franco";
String texto4 = "  el hombre araña";

void setup(){
 size(640,480);
 fuente1 = loadFont("fuente1.vlw");
 fuente2 = loadFont("fuente2.vlw");
 fondo1 = loadImage("imagen1.jpg"); 
 fondo2 = loadImage("imagen2.jpg"); 
 fondo3 = loadImage("imagen3.jpg"); 
 fondo4 = loadImage("imagen4.jpg");
 textFont(fuente1);
 posX = 450;
 mov = 400;
 tamTexto = 30;
 tamX = 240;
 tamY = 380;
 ancho = 150;
 alto = 60;
 println(mouseX, mouseY);
}

void draw(){
  background(0);
  if (frameCount % 60==0){
    segundos ++;
  }
  if (segundos<=5){
    textFont(fuente1);
    image(fondo1 ,0 ,0, width, height);
    float tono = map(posX,550,100,0,255);
    fill(255,0,0,tono);
    text(texto1,posX,100);
    textSize(55);
    text(texto4,posX,400);
    if (posX>90){
      posX = posX-2;
    }
  }else if (segundos>5 && segundos <=10){
    fill(235,235,235);
    textFont(fuente2);
    textSize(tamTexto/3);
    image(fondo2 ,0 ,0, width, height);
    text(texto2,100,100);
    tamTexto = tamTexto + 0.3;

  }else if (segundos>10 && segundos<=15){
    textFont(fuente2);
    image(fondo3 ,0 ,0, width, height);
    text(texto3,135,mov);
    mov = mov - 1;
  }else {
    textFont(fuente1);
    image(fondo4 ,0 ,0, width, height);
    botonReiniciar();
    
  }
}

void mousePressed() {
  if (segundos >15 && mouseX > tamX && mouseX < tamX+ancho && mouseY > tamY && mouseY < tamY+alto) {
    segundos = 0;
    mov = 400;
    posX = 450;
    tamTexto = 30;
  }
}

void botonReiniciar() {
  fill(255, 0, 0);
  if (mouseX>tamX && mouseX<tamX+ancho && mouseY>tamY && mouseY<tamY+alto) {
    fill(245, 126, 126);
    } else {
      fill(235, 0, 0);
    }
  rect(tamX, tamY, ancho, alto);
  fill(0);
  textSize(28);
  text("reiniciar", 264, 420);
}

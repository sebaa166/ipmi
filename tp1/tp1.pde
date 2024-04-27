PImage imagenTanque;

void setup(){
  size(800, 400);
  imagenTanque = loadImage("tanque.jpg");
}

void draw(){
  background(#FFED90);
  println(mouseX, mouseY);
  image(imagenTanque, 0, 0, 400, 400);
  
  fill(#23581E);
  
  beginShape();
  vertex(450,272);
  vertex(441,267);
  vertex(433,260);
  vertex(430,258);
  vertex(427,256);
  vertex(425,250);
  vertex(425,222);
  vertex(450,219);
  vertex(710,236);
  vertex(710,248);
  vertex(684,274);
  vertex(450,272);
  endShape();
  
  fill(#3C9834);
  
  beginShape();
  ellipse(438,232,18,18);
  ellipse(465,248,40,40);
  ellipse(508,248,40,40);
  ellipse(551,248,40,40);
  ellipse(594,248,40,40);
  ellipse(637,248,40,40);
  ellipse(680,248,40,40);
  rect(749,155,25,15);
  rect(604,159,145,8);
  vertex(585,149);
  vertex(605,152);
  vertex(605,171);
  vertex(598,173);
  endShape();
  
  
  fill(#65B954);
  
  beginShape();
  vertex(424,229);
  vertex(419,224);
  vertex(419,203);
  vertex(464,182);
  vertex(481,182);
  vertex(649, 182);
  vertex(720, 198);
  vertex(721, 212);
  vertex(713, 235);
  vertex(677, 244);
  vertex(488, 244);
  vertex(424,229);
  endShape();
  
  fill(#264611);
  
  beginShape();
  vertex(477,176);
  vertex(477,152);
  vertex(496,139);
  vertex(508, 129);
  vertex(558,129);
  vertex(600,154);
  vertex(600,176);
  vertex(594,182);
  vertex(484,182);
  endShape();

  fill(#A9EA7D);
  
  
}

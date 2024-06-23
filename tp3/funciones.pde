void dibujoCirculo() {
  println(mouseX, mouseY);

  for (int y = 0; y < 17; y++) {
    for (int x = 0; x < 17; x++) {
      if ((x + y) % 2 == 0) {
        fill(0);
      } else {
        fill(255);
      }
      ajusteAncho = ancho - (cant - 1 - x);
      ajusteAltura = altura - y;
      ellipse(posX + x * tam , posY + y * tam, ajusteAncho, ajusteAltura);
    }
  }
}

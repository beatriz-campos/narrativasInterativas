class Curva {
  float ponto1x, ponto1y, ponto4x, ponto4y, ponto3x, ponto3y, ponto2x, ponto2y, velocidade, velocidade2;

  Curva() {
    ponto1x = 0; 
    ponto1y = 0;
    ponto2x = 240; 
    ponto2y = 80;
    ponto3x = 900 - 240; 
    ponto3y = height - 80;
    ponto4x = width; 
    ponto4y = height;
    velocidade = random(-5, 6);
    velocidade2 = random(-5, 6);
  }

  void desenhaCurva() {
    noFill();
    strokeWeight(1);
    bezier(ponto1x, ponto1y, ponto2x, ponto2y, ponto3x, ponto3y, ponto4x, ponto4y);
    bezier(ponto1x, ponto1y, ponto2x-15, ponto2y-15, ponto3x-15, ponto3y-15, ponto4x, ponto4y);
    strokeWeight(5);
    point(ponto1x, ponto1y);
    fill(255, 0, 0);
    point(ponto2x, ponto2y);
    fill(0, 0, 255);
    point(ponto3x, ponto3y);
    fill(0, 255, 0);
    point(ponto4x, ponto4y);
  }

  void velocidade() {
    println(mouseX, " + " , mouseY);

    //ponto1x -= velocidade;
    //ponto1y += velocidade;

    ponto2x -= velocidade;
    ponto2y -= velocidade2;

    ponto3x += velocidade;
    ponto3y -= velocidade2;

    //ponto4x += velocidade;
    //ponto4y -= velocidade;*/
  }

  void reiniciaVelocidade() {
    //velocidade = random(-5, 6);
    //velocidade2 = random(-5, 6);
    velocidade *= -1;
    velocidade2 *= -1;
  }
}
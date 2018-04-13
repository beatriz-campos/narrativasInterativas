class Curva {

  // arrays com pontos x e y das curvas de bezier
  float[] pontosXCurva = new float[4];
  float[] pontosYCurva = new float[4];
  
  // distancia entre as duas curvas
  float dist;
  
  //cinza aleatório das curvas
  color cinza = color(random(0,255));
  
  float velocidade; // velocidade de deslocamento dos pontos da curva OBS: ASSOCIAR ESSA VELOCIDADE A PARAMETROS DO AUDIO DPS
  
  

  Curva() {
    // atribui valores aleatórios aos pontos X e Y das curvas
    for (int i = 1; i < pontosXCurva.length; i++) {
      pontosXCurva[i] = random(0, width);
      pontosYCurva[i] = random(0,height);
    }
    
    // coloca o ponto inicial das curvas no centro da tela
    pontosXCurva[0] = width/2;
    pontosYCurva[0] = height/2;
    
    // atribui valor à distância entre as curvas
    dist = 15;
    
    velocidade = (int)random(-10,11); // atribui valor à velocidae de deslocamento dos pontos da curva
  }

  void desenhaCurva() {
    stroke(cinza);
    // tira o preenchimento das curvas
    noFill();
    // primeira curva de  bezier
    bezier(pontosXCurva[0], pontosYCurva[0], pontosXCurva[1], pontosYCurva[1], pontosXCurva[2], pontosYCurva[2], pontosXCurva[3], pontosYCurva[3]);
    // segunda curva de bezier, igual a primeira, a uma distancia dist da segunda
    bezier(pontosXCurva[0], pontosYCurva[0], pontosXCurva[1]-dist, pontosYCurva[1]-dist, pontosXCurva[2]-dist, pontosYCurva[2]-dist, pontosXCurva[3], pontosYCurva[3]);
}

 void velocidadeInicial() {
   pontosXCurva[1] -= velocidade;
   pontosXCurva[2] += velocidade;
 }
 
 void velocidadeContraria() {
   velocidade *= -1;
 }
   
  
  
}
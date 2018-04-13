Curva curva;
int savedTime, totalTime;
void setup() {
  size(900, 600);
  totalTime = 5000;
  //atribui o valor do tempo em que o programa iniciou à variável savedTime
  savedTime = millis();
  curva = new Curva();
}

void draw() {
  background(255);
  //desenha curva e pontos
  curva.desenhaCurva();
  // faz a curva se movimentar
  curva.velocidade();
  //calcula quanto tempo passou
  int passedTime = millis() - savedTime;
  //teste se passaram cinco segundos
  if (passedTime > totalTime) {
    savedTime = millis(); // salva o tempo atual para reiniciar o contador
    curva.reiniciaVelocidade();
  }
}
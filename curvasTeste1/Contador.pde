class Contador{
  int tempoSalvo, tempoTotal;
  
  Contador(int xtempoTotal) {
    tempoTotal = xtempoTotal;
  }
  
  void iniciar(){
    tempoSalvo = millis();
  }
  
  boolean terminou() {
    int tempoPassado = millis() - tempoSalvo;
    if(tempoPassado > tempoTotal) {
      return true;
    }
    else {
      return false;
    }
  }
  
  
}
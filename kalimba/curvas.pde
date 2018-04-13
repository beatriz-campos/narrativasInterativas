class Curva {
  float x1, y1, x2, y2, x3, y3, x4, y4;
  Curva(){
    x1 = random(0,600);
    x2 = random(0,600);
    x2 = random(0,600);
    y2 = random(0,600);
    x3 = random(0,600);
    y3 = random(0,600);
    x4 = random(0,600);
    y4 = random(0,600);
  }
  
  void desenhaCurva () {
    bezier(x1, y1, x2, y2, x3, y3, x4, y4);
  }
  
  
  
  
}
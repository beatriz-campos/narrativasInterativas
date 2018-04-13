class Bola {
  int x,y, velocidadex, velocidadey, diam, r, g, b, sorteiaVeloc;
  color cor;
  
  Bola(){
    velocidadex = (int)random(-3,4);
    velocidadey = (int)random(-3,4);
    diam = (int)random(1,80);
    
    x = (int)random(diam/2, width-(diam/2));
    y = (int)random(diam/2, height-(diam/2));
    
    r = (int)random(0,256);
    g = (int)random(0,256);
    b = (int)random(0,256);
    cor = color(r,g,b);
  }
  
  void mostrar() {
    noStroke();
    fill(cor);
    ellipse(x,y,diam,diam);
    
  }
  
  void mover() {
   while(velocidadex == 0) {
     velocidadex = (int)random(-1,2);
   }   
   
    while(velocidadey == 0) {
     velocidadey = (int)random(-1,2);
   }
   
   while(diam%2 != 0){
     diam = (int)random(2,81);
   }
   
    x += velocidadex;
    y += velocidadey;
  
  if(x >= width - (diam/2) || x <= diam/2) {
    velocidadex *= -1;
  }
  
  if(y >= height - (diam/2) || y <= diam/2) {
    velocidadey *= -1;
  }
  }
}

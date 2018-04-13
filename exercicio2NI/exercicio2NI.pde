color linha1 = color(0);
color linha2 = color(255,0,0);
color linha3 = color(255,255,0);
color linha4 = color(0,0,255);
color linha5 = color(255);
int espacamento, x, y, diam, ballspeed;

void setup(){
  size(600,600);
  espacamento =  width/5;
  x = width/10;
  y = height/10;
  diam = 100;
  ballspeed = 1;
}

void draw(){
  background(155);
  noStroke();
  for(int a = 0; a < 5; a++ ) {
    for(int b = 0; b < 5 ; b++){
    
      if(b == 0){
      fill(linha1);
      }
      else if (b == 1){
        fill(linha2);
      }
      else if (b == 2){
        fill(linha3);
      }
      else if (b == 3){
        fill(linha4);
      }
      else if (b == 4){
        fill(linha5);
      }
      
      ellipse(x + (a * espacamento),y + (b * espacamento),diam,diam);
     }
  }
}

void mousePressed() {
  diam += ballspeed;
  if(diam == 100 || diam == 120)  {
    ballspeed *= -1;
  }
 
}
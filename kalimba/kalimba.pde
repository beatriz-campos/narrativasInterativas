import ddf.minim.*;
Minim minim;
AudioPlayer player;
PImage img;
int x,y,pictureSide, xlocation, ylocation, distx, disty;
Curva[] curvex = new Curva[500];

void setup() {
  size(800,800);
  minim = new Minim(this);
  player = minim.loadFile("kalimba.mp3");
  img = loadImage("space_invader.png");
  x = (int) random(0,width);
  y = (int) random(0,height);
  pictureSide = 40;
  for (int i = 0; i < curvex.length; i++) {
  curvex[i] = new Curva();
}
  
}

void draw() {
  background(255);
  image(img,x,y,pictureSide,pictureSide);
  noFill();
  for(int i = 0; i < curvex.length; i++)
  curvex[i].desenhaCurva();
}

void mousePressed() {
  if ((mouseX >= x) && (mouseX <= x + pictureSide) && (mouseY >= y) && (mouseY <= y + pictureSide) ) {
  player.play();
  }
  
  xlocation = mouseX;
  ylocation = mouseY;
  distx = xlocation - x;
  disty = ylocation - y;
  
 
}

void mouseDragged() {

  if ((mouseX >= x) && (mouseX <= x + pictureSide) && (mouseY >= y) && (mouseY <= y + pictureSide) ) {   
  x = mouseX - distx ;
  y = mouseY - disty;
  }
}
import ddf.minim.*;
Minim minim;
AudioPlayer player;

void setup() {
  size(200,200);
  minim = new Minim(this);
  
}

void stop() {
  super.stop();
}
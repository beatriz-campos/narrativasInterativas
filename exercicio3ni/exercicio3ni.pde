Bola[] bolas = new Bola[100];

void setup() {
  size(400, 400,P3D);
  for(int i = 0; i < bolas.length; i ++) {
    bolas[i] = new Bola();
  }
}

void draw() {
  background(255);
   for(int i = 0; i < bolas.length; i ++) {
    bolas[i].mostrar();
    bolas[i].mover();
  }

}

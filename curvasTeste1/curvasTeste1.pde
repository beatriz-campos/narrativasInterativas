// inicializa um array de curvas
Curva[] curvas = new Curva[100];
// declara um objeto da classe Contador
Contador contagem;

void setup() {
  size(960,540);
  // inicializa cada objeto do array de curvas
  for(int i = 0; i < curvas.length; i++){
      curvas[i] = new Curva();
  }
  // inicializa o objeto contagem, da classe Contador
  contagem = new Contador((int)random(5000,12000));
  
  //inicia o contador
  contagem.iniciar();
}

void draw(){
  background(255);
  // inicia o método desenhaCurva para todos os objetos do array curvas 
  for(int i = 0; i < curvas.length; i++){
    curvas[i].desenhaCurva();
    curvas[i].velocidadeInicial();
  }
  
 //verifica quanto tempo se passou para reiniciar ou nao o contador
 if (contagem.terminou()){
   for(int i = 0; i < curvas.length; i++){
    curvas[i].velocidadeContraria();
  }
   contagem.iniciar();
 }
 
 saveFrame("vid/linhas_####.png");
}
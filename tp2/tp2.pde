PFont font;
PImage foto;
//estado es para saber en que pagina deberia estar
int estado;
//frames es utilizado para saber cuantos frames se van contando, para medir tiempo
int frames;
/*
automatico es utilizado para comprobar si pasar de pagina en pagina 
automaticamente o usando el click
*/
boolean automatico;
float posX, posY, veloX,veloY;
int tamaño, velTamaño, Transparense;


void setup(){
  stroke(0,0,0,0);
  size(640,480);
  fill(255,255,255);
  //defino la nueva fuente
  font = loadFont("FuenteNueva-48.vlw");
  textFont(font,35);
  textAlign(CENTER,CENTER);
  
  
  foto = loadImage("/data/imagen 4.png");
}
void draw(){
  image (foto,0,0,width,height);
  //aca verifico en que estado esta para poder cambiar de pantalla
  //estos son para las pantallas 0 y 4
  if(estado == 0){
    pantallaDeinicio();
  }else if(estado == 4){
    pantallaFinal();
  }
  // estos son para las pantallas 1,2 y 3
  if(estado == 1){
    pantalla1();
  }else if(estado == 2){
    pantalla2();
  }else if(estado == 3){
    pantalla3();
  }
  /*aca verifico si automatico es verdadero para ver si cambiara de pantalla
  con el tiempo*/
  if (automatico == true){
    frames = frames + 1;
    if(frames >= 60 * 5){
      frames = 0;
      aumentoDeEstado();
      cambioDeValores();
    }
  }
  
}
// aca estan las cosas que se van a ejecutar en la primera pantalla
void pantallaDeinicio(){
  fill(0,100);
  rect(170,30,300,50);
  rect(170,190,300,100);
  fill(255);
  text("Empezar",width/2,height/2);
  text("Daniel Rozín",width/2,height/8);
  automatico = false;

}
void pantalla1(){
  if(posY >= 100){
  posY = posY - veloY;
  posX = posX + veloX;
  }
  text("Él crea instalaciones y experiencias \n donde la obra reacciona al espectador \n y a su punto de vista",posX,posY);
  automatico = true;
}
//aca las cosas que se ejecutaran en la segunda pantalla
void pantalla2(){
  if (tamaño < 30){
    tamaño = tamaño + velTamaño;
  }
  if (tamaño >=30 && posY >= 100){
    posY = posY - veloY;
  }
  textFont(font,tamaño);
  text("En la mayoria de sus obras se puede ver \n como se replica lo que esta en frente \n de la obra",320,posY);
}
//aca las cosas que se ejecutaran en la tercera pantalla
void pantalla3(){
  if(posX >= 300){
    posX = posX + veloX;
  }
  text("Él usa objetos comunes para sus obras \n, por ejemplo aqui esta usando\n pinguinos de peluche",posX,posY);
}
//Y aca las cosas que se ejecutaran en la cuarta pantalla
void pantallaFinal(){
  automatico = false;
    if (posY <= 240){
      fill(0,Transparense);
      Transparense = Transparense + 6;
      rect(180,190,300,100);  
  }
  if (posY <= 238){
    posY = posY + 5;
  }
  if (posX >= 240){
    posX = posX - 5;
    
  }

  fill(255);
  //letras impares
  text("R",200,posY);
  text("T",300,posY);
  text("Y",400,posY);
  //letras pares
  text("E",250,posX);
  text("R",350,posX);
  text("?",450,posX);
  
}
// aca la funcion encargada de detectar cada vez que se hace click
void mousePressed(){
  //aca esta la funcion que al darle click a la caja se inicie o reinicie el proyecto
  if(automatico == false){
    if( mouseY <= 240 + 50 && mouseY >= 240 - 50  && mouseX <= 320 + 150 && mouseX >= 320 - 150 ){
      aumentoDeEstado();
    }
  }
  
}
// aca esta la funcion encargada de cambiar de pantalla y reiniciar el contador de frames
void aumentoDeEstado(){
  frames = 0; 
  estado= estado+1;
  cambioDeValores();
  println(estado);
  if (estado > 4 ){
    estado = 0;
    automatico = false;
  }
}
void cambioDeValores(){
    if (estado == 1){
      foto = loadImage("/data/imagen 1.png");
      posX = 0;
      veloX = 3;
      posY = 320;
      veloY = 2;
      textFont(font,35);
    }
    if (estado == 2){
      foto = loadImage("/data/imagen 2.png");
      tamaño = 0;
      velTamaño = 2;
      posY = 240;
      veloY = 3;
    }
    if (estado == 3){
      foto = loadImage("/data/imagen 3.png");
      posX = 640;
      posY = 350;
      veloX = -4;
      
    }
    if (estado == 4){
      foto = loadImage("/data/imagen 5.png");
      posY = 0;
      posX = 480;
    }
    if (estado == 5){
      Transparense = 0;
    }
}

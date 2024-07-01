// https://youtu.be/GayMpphSNG0

/*
Controles:
-Mouse : mover el mouse para interactuar con la imagen
-D/A : cambiar la distancia entre las lineas
-W/S : cambiar la cantidad de repeticiones a lo alto de la pantalla
-1/2/3 : cambiar el color de fondo
-R: reiniciar a los valores predeterminados
*/


PImage img;                //la variable que va a ocupar la imagen
float separa = 32;         //la distancia preestablecida entre cada una de las lineas
int cantY = 5;             // cantidad de diviciones 
float linY;                //primera interseccion entre lineas
float linY2;               //segunda interseccion entre lineas
float mousex;              //variable utilizada para obtener los limites del mouse
float mouseXinv;           // la posicion invertida en x del mouse
float altura;              //tamaño para cada una de las diviciones
int Color1 = 255, Color2 = 255,Color3 = 255;      //color preestablecido para el fondo

void setup(){
  size(800,400);
  strokeWeight(5);
  stroke(0);
  img = loadImage("data/img.jpg"); // definiendo la imagen a utilizar
}





void keyPressed(){
  if(key == 'a'){
    if(separa >= 30){
      separa = separa - 0.5;
      println(separa);          /* al presionar la letra "a" se disminuirá 
                               la distancia entre cada linea*/
    }
  }
    if(key == 'd'){
    separa = separa + 0.5;
    println(separa);        /* al presionar la letra "d" se aumentará 
                             la distancia entre cada linea*/
  }
    if(key == 's'){
    if(cantY >= 2){
      cantY = cantY - 1;
      println(cantY);          /*al presionar la letra "s" se disminuira la cantidad
                                de repeticiones en la que se dividira la pantalla*/
    }
  }
    if(key == 'w'){
    cantY = cantY + 1;
    println(cantY);              /*al presionar la letra "w" se aumentara la cantidad
                                de repeticiones en la que se dividira la pantalla*/
  }              //aqui dependiendo de que numero presiones cambiara el color del fondo
  if(key == '1'){          
    colors(255,0,0);          //con el numero "1" cambiará a rojo
  }else if(key == '2'){
    colors(0,255,0);          //con el numero "2" cambiará a verde
  } if(key == '3'){
    colors(0,0,255);           //con el numero "3" cambiará a azul
  }
  if (key == 'r'){
    colors(255,255,255);        
    separa = 32;
    cantY = 5;             /* al presionar la letra "r", volveran todos los valores
                              cambiados a sus valores predefinidos*/
  }
}




void draw(){
  
  
  
  linY =  altura/4; //primera conjuncion de lineas
  
  linY2 = altura * 0.75; // segunda conjuncion de lineas
  
  
  
      if(dist(width/2,mouseY,mouseX,mouseY) < 100){ 
    mousex = mouseX;
    /* funcion distancia para comparar la distancia entre
       el cursor y el centro de la pantalla*/
  }
  
  
  
  mouseXinv = invertirmouseX(width,mousex); // el valor invertido del mouse 
                                            // con la funcion que retorna valor
  
  altura = height / cantY; // obtener las divisiones por las que se va a dividir la pantalla
  
  
  
  background(Color1,Color2,Color3); /*cambiar los colores del 
                                      fondo con la funcion de "Colors"*/
                                      
                                      
                                      
  lineas(); //Convocar la funcion para dibujar las lineas en pantalla
  
  

  image(img,0,0,width/2,height); /*dibujar la imagen desde el principio
                                  de la pantalla hasta la mitad de la pantalla*/
}


void lineas(){
  
    for(int j = 0; j <= cantY; j = j+1){//el for utilizado para las filas que descienden
      for(int i = 0;i <= 30; i = i +1){
          // el for utilizado para las filas que se repiten hacia
          
          //primera fila
          line((width/2) + separa * i, j*altura , mousex + separa * i , linY + j*altura);
          line((width/2) - separa * i, j*altura , mousex - separa * i , linY + j*altura);
      
          //fila central
          line(mouseXinv + separa * i , linY2 + j*altura, mousex + separa * i , linY + j*altura);
          line(mouseXinv - separa * i , linY2 + j*altura, mousex - separa * i , linY + j*altura);
          
          // fila final
          line((width/2) + separa * i, altura + j*altura ,mouseXinv + separa * i , linY2 + j*altura); 
          line((width/2) - separa * i, altura + j*altura ,mouseXinv - separa * i , linY2 + j*altura);
          
      }
  }
}
void colors(int c1, int c2, int c3){
  Color1 = c1;  //cambiando las variables principales al valor introducido en la funcion
  Color2 = c2;
  Color3 = c3;
}

float invertirmouseX(float val1, float val2){
  
  return (val1 - val2);
}

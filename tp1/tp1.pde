PImage miFoto;
void setup(){
  size(800,400);
  line(400,0,400,400);

  //Generar la imagen
  
  miFoto = loadImage("data/imagen.jpg");
  image(miFoto,0,0,400,400); 
  
  //dibujo
  
  
  //Pelo detras de la cabeza
  
  beginShape();
  
  fill(30,30,15);
  noStroke();
  vertex(483,207);
  vertex(443,213);
  vertex(440,246);
  vertex(445,278);
  vertex(453,310);
  vertex(462,343);
  vertex(479,379);
  vertex(499,390);
  vertex(512,368);
  vertex(595,354);
  vertex(698,362);
  vertex(734,360);
  vertex(755,327);
  vertex(780,274);
  vertex(787,210);
  vertex(621,216);
  vertex(483,207);
 
  endShape();
                            //aca termina la parte de atras del pelo
                            
  
  //cuello
  beginShape();
    fill(213,181,162);
    stroke(0);
    vertex(510,360);
    vertex(509,400);
    vertex(719,400);
    vertex(710,383);
    vertex(703,364);
    vertex(710,334);
    vertex(723,303);
    vertex(622,329);
    vertex(510,371);
  endShape();
                                //aca se termina el cuello
  

  //cabeza
  beginShape();
    fill(253,221,202);
    stroke(0);
    vertex(489,200);
    vertex(475,244);
    vertex(483,330);
    vertex(493,340);
    vertex(527,386);
    vertex(564,400);
    vertex(614,394);
    vertex(652,385);
    vertex(680,368);
    vertex(716,329);
    vertex(728,270);
    vertex(725,199);
    vertex(710,134);
    vertex(648,74);
    vertex(601,59);
    vertex(554,71);
    vertex(505,113);
    vertex(494,155);
    vertex(489,200);
  endShape();                      //aca termina la cabeza
  
  //Pelo delante la cara
  fill(35,35,15);
  noStroke();
  beginShape();
    vertex(593,74);
    vertex(561,90);
    vertex(533,108);
    vertex(512,132);
    vertex(496,166);
    vertex(485,209);
    vertex(462,232);
    vertex(442,239);
    vertex(446,209);
    vertex(453,165);
    vertex(461,122);
    vertex(490,69);
    vertex(531,26);
    vertex(603,1);
    vertex(633,14);
    vertex(654,7);
    vertex(703,28);
    vertex(739,66);
    vertex(776,130);
    vertex(785,189);
    vertex(786,226);
    vertex(756,231);
    vertex(740,247);
    vertex(730,266);
    vertex(720,209);
    vertex(707,145);
    vertex(694,121);
    vertex(652,102);
    vertex(612,81);
    vertex(593,74);
  endShape();
                      //aca termina el pelo deante la cara
                      
                      
  //oreja
  
  beginShape();
    fill(213,181,162);
    stroke(0);
    vertex(732,238);
    vertex(740,233);
    vertex(764,216);
    vertex(782,233);
    vertex(767,262);
    vertex(754,282);
    vertex(741,295);
    vertex(721,297);
    vertex(721,261);
    vertex(732,238);
  endShape();
                          //aca termina la oreja
                          
  //Partes de la cara
  //ojos
  fill(240,240,240);
  stroke(0);
  ellipse(540,196,70,20);
  ellipse(630,196,70,20);
  //pupila
  fill(128,64,0);
  ellipse(522,195,15,15);
  ellipse(616,195,15,15);
                            //aca terminan los ojos
  
  //nariz
  fill(253,221,202);
  stroke(153,81,62);
  triangle(580,177,535,250,571,276);
  //boca
  
  beginShape();
  vertex(518,295);
  vertex(524,305);
  vertex(557,301);
  vertex(617,314);
  vertex(638,306);
  endShape();
                        //aca termina la boca
  
  //Cejas
  fill(128,64,0);
  quad(496,165,494,179,575,186,575,169);
  quad(603,168,597,185,682,190,684,180);
                        //aca terminan las cejas
  
  
}
void draw(){
}

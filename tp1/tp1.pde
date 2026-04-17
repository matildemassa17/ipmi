PImage cuadro;

int desplazar;

void setup(){
  size (800,400);
  
 cuadro = loadImage ("obra cubismo.jpg");
desplazar = width/2;

}

void draw (){
  background(#1ec1fe);
  image(cuadro,0,0,400,400);
  
  
  
  fill (#59dbfc);
  noStroke();
  quad(307+desplazar,127,399+desplazar,128,400+desplazar,0,339+desplazar,0); //cielo
  fill(#3d6fd2);
  quad(284+desplazar,222,307+desplazar,128,399+desplazar,128,399+desplazar,330);//mar azul oscuro
  
  
 //sombras bici
 
  noStroke();
   fill(#199ce2);
  quad(0+desplazar,355,66+desplazar,369,18+desplazar,258,0+desplazar,257); // rueda pared 1
  quad(19+desplazar,258,10+desplazar,207,0+desplazar,216,0+desplazar,258); // reuda pared 1
   triangle(38+desplazar,223,9+desplazar,207,18+desplazar,258);//rueda pared 1

   triangle (146+desplazar,172,184+desplazar,182,124+desplazar,225); //rueda pared 2
   quad (124+desplazar,225,184+desplazar,182,183+desplazar,266,121+desplazar,293); //rueda pared 2
 
   noStroke();
   fill(#1b95de);
   triangle (62+desplazar,88,82+desplazar,63,85+desplazar,103); //espejo
   triangle (117+desplazar,129,152+desplazar,106,178+desplazar,146); //asiento
   
   triangle (146+desplazar,172,184+desplazar,182,124+desplazar,225); //rueda 
   quad (124+desplazar,225,184+desplazar,182,183+desplazar,266,121+desplazar,293); //rueda
   strokeWeight(3);
   stroke(#1b95de);
   line (148+desplazar,137,118+desplazar,210); //tubo asiento
   line (148+desplazar,137,162+desplazar,178); //vaina superior
   
   strokeWeight(4);
   line (148+desplazar,137,26+desplazar,155);
   line (65+desplazar,86,26+desplazar,137); //manubrio izq
   line (0+desplazar,111,26+desplazar,137); //manubrio derecho
   line (29+desplazar,217,26+desplazar,137); //horquilla
   line (55+desplazar,195,26+desplazar,155); //tubo superior
   
  
   
  
  
  
 
  //Piso 
  fill(#c4eced);
  noStroke();
  quad(49+desplazar,398,285+desplazar,222,399+desplazar,331,400+desplazar,500);//piso parte luminosa
  triangle(0+desplazar,355,0+desplazar,397,66+desplazar,368); // seccion piso luz
 
  quad(658,234,657,248,699,236,684,223); //piso restos luz
  quad(526,296,578,303,546,328,526,321);//piso restos luz
  quad(526,321,550,328,482,374,463,370);//piso restos luz
  quad(482,374,463,368,395,398,450,500);//piso restos luiz
   
 //sombras piso
   fill(#199ce2);
   triangle(66+desplazar,368,0+desplazar,355,47+desplazar,329); //seccion sombra rueda 1 piso
   triangle(199+desplazar,306,178+desplazar,269,118+desplazar,296); //seccion sombra piso rueda 2 
   
   

  //Bicleta
  
   //Ruedas
    //relleno rueda 1
  fill(#196cc8);
  quad(65+desplazar,181,67+desplazar,367,124+desplazar,318,127+desplazar,223);
  triangle(66+desplazar,181,68+desplazar,367,20+desplazar,258); 
  //relleno rueda 2
  quad (168+desplazar,206,168+desplazar,242,200+desplazar,302,191+desplazar,159); 
  quad (199+desplazar,302,190+desplazar,158,260+desplazar,166,252+desplazar,277); 
 
 
 
  fill (0);
  quad (157+desplazar,192,136+desplazar,206,135+desplazar,242,156+desplazar,254); //plato 1
  quad (155+desplazar,192,173+desplazar,216,170+desplazar,241,154+desplazar,254); //plato 1
  
  quad (210+desplazar,196,233+desplazar,208,230+desplazar,241,208+desplazar,245); //plato 2
  triangle (210+desplazar,197,199+desplazar,223,210+desplazar,244); //plato 2
  
  triangle (78+desplazar,257,74+desplazar,266,78+desplazar,274); //piñon
  quad (78+desplazar,255,86+desplazar,264,84+desplazar,272,78+desplazar,276); //Piñon
 
  
  fill(0);
  triangle (170+desplazar,96,212+desplazar,69,220+desplazar,108); //asiento
  
  triangle (26+desplazar,30,48+desplazar,61,19+desplazar,64); //espejo 1
  triangle (149+desplazar,27,147+desplazar,63,123+desplazar,48); //espejo 2
  
 //lineas
  
  strokeWeight(1); 
  //punto de fuga linea piso 1
  stroke(0);
  line(284+desplazar,222,258+desplazar,233);
  line (178+desplazar,268,126+desplazar,290);
  line (48+desplazar,326,0+desplazar,347);
  //linea piso 2
  line (295+desplazar,233,257+desplazar,258);
  line (194+desplazar,297,34+desplazar,400);
  //linea piso 3
  line (307+desplazar,244,146+desplazar,400);
  //linea 4
  line (319+desplazar,254,218+desplazar,400);
  //linea 5
  line(334+desplazar,269,278+desplazar,400);
  //linea 6
  line (350+desplazar,285,322+desplazar,400);
  //linea 7
  line (369+desplazar,302,358+desplazar,400);
  //linea 8
  line (392+desplazar,324,392+desplazar,400);
  //linea diagonal
  strokeWeight (0.5);
  line (284+desplazar,222,400+desplazar,330);
  
  //detalles blancos
  stroke (#b1d4ec);
  line (343+desplazar,168,363+desplazar,169);
  line (364+desplazar,257,371+desplazar,258);
  
  //contorno bicicleta 
   strokeWeight(4); //rueda 1 
  stroke(0);
  line(65+desplazar,181,20+desplazar,258);
  line(20+desplazar,258,68+desplazar,368);
  line(68+desplazar,368,124+desplazar,320);
  line(124+desplazar,320,128+desplazar,222);
  line(128+desplazar,222,65+desplazar,181);
  
  strokeWeight(4); //rueda 2 
  stroke(0);
  line(189+desplazar,156,261+desplazar,166);
  line(261+desplazar,166,253+desplazar,278);
  line(253+desplazar,278,199+desplazar,302);
  line(199+desplazar,302,168+desplazar,244);
  line(166+desplazar,208,189+desplazar,156);
  
  strokeWeight(3);
  stroke(0);
  line (79+desplazar,259,85+desplazar,99); //horquilla
  line (126+desplazar,46,85+desplazar,101); //manubrio izq
  line (45+desplazar,58,85+desplazar,100); //manubrio derecho
  line (194+desplazar,100,160+desplazar,198); //tubo asiento
  line (190+desplazar,114,212+desplazar,200); //vaina superior
  line (190+desplazar,114,193+desplazar,154);
   
   line (154+desplazar,194,210+desplazar,201); //cadena superior
  line (210+desplazar,242,158+desplazar,250); //cadena inferior
  
  strokeWeight(4);
  line (85+desplazar,123,189+desplazar,112); //tubo superior
  line (84+desplazar,122,138+desplazar,206); //tubo inferior
  line (201+desplazar,224,171+desplazar,224); //vaina inferior
  
  
 }

  void mousePressed(){
    println (mouseX, mouseY);
    
  }
  
  
  
  

//https://youtu.be/ZS9Br1kdPLs
// disculpen si me pase un poco del limite :)


PImage obra;
int cantidad = 19;
float posX ;
float posY;
float tamaño;
float distanciaC;
float diametro;

float centroX = 200;
float centroY = 200;
float angulo;


color colorCirculo = color(255);
color colorBackground = color(0);

boolean cambiarForma = false;

void setup(){

size (800,400);
obra = loadImage("09.jpg");
 
tamaño=22.2;
rectMode (CENTER);

}//cierre setup


void draw(){
 
  background (colorBackground);
    
    pushMatrix();
  
  translate(400, 0);
 
  for(int x=0; x<cantidad; x++) {           //repeticion para fila de circulos
                                                        //   +                     //  = grilla
    for (int y=0; y<cantidad; y++) {       //repeticion de la fila
    
   posX = (x * tamaño)-2;     // posicion en X de circulo (le resto 2 para que quede con exactitud como la imagen)
   posY = (y * tamaño)+2;     // posicion en Y de circulo (le sumo 2 para que quede con exactitud como la imagen)
   
 float diametroCalculado = calcularDiametro (posX,posY,centroX,centroY); // hago una variable (diametroCalculado) asi se me guarda el resultado total en ella
    dibujarCirculo(posX,posY,diametroCalculado, colorCirculo);
   
    }
  }

   popMatrix();
 
 image (obra,0,0,400,400);

} //cirre draw

//FUNCION CON RETORNO : hace los circulos mas grandes/chicos repsecto a que tan cerca estan del centro

  float calcularDiametro (float posXcirculo, float posYcirculo, float posXcentro, float posYcentro) {
  
  float distanciaCentro = dist (posXcirculo, posYcirculo, posXcentro, posYcentro); //medir la distancia de un circulo respecto al centro de la pantalla
  
  return map (distanciaCentro, 0,240,0,24); // mapeo la distancia entre el centro así la hago proporcional al tamaño del círculo final. Puse 280 en vez de 200, porque si pongo la segunda las esquinas no se ven afectadas.
}
  
//FUNCION SIN RETORNO ; dibuja los circulos

void dibujarCirculo (float posicionX, float posicionY, float diametroFinal, color colorFinal){
  
  pushMatrix();
 
  translate(posicionX, posicionY);
  rotate(angulo);
  fill (colorFinal);
  noStroke();
  
  if (cambiarForma==true){
   rect (0,0,diametroFinal,diametroFinal);
} 
  else {    
  ellipse(0, 0, diametroFinal, diametroFinal);
}
 
 popMatrix();
}

//INTERACCIONES

//MOVER 
void mouseDragged (){
  centroX = mouseX-400; // resto 400 porque el lienzo fue trasladado y el mouseX mide desde el borde de la ventana (0,0) y no desde el inicio de mi grilla
  centroY = mouseY;
}


//CAMBIO DE COLOR FORMA
void keyPressed () {
  if (key == 'c' || key == 'C'){
    colorCirculo = color(random(255), random(255), random(255));
}

//CAMBIO DE COLOR BACKGROUND
if (key == 'b' || key == 'B'){
    colorBackground = color(random(255), random(255), random(255));
}

// CAMBIO DE FORMA
if (key == 'f' || key == 'F'){
   cambiarForma = !cambiarForma; // el ! invierte el valor (si es true pasa a false y viceversa) 
}
 
 //CAMBIO DE POSICION
if (key == 'i' || key == 'I'){
    angulo = angulo - 0.1; // gira  hacia la izquierda
}
if (key == 'd' || key == 'D'){
    angulo = angulo + 0.1; // gira  hacia la derecha
}


//REINICIO
if (key == 'r' || key == 'R'){
    centroX = 200;
    centroY = 200;
    colorCirculo = color(255);
    colorBackground = color(0);
    cambiarForma = false;
    angulo=0;
}

}

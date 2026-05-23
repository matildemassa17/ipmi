int estado;
int contador;


//Variables fuentes
PFont fuente;
PFont fuentefinal;
PFont arialbold;


//Variables Imagenes

PImage fondoinicio, fondo1, fondo2, fondofinal;
PImage titulo, jackietitulo, shaunatitulo, lottietitulo, nattitulo, taissatitulo, vantitulo;
PImage pelota, escudo, goyellowjackets1, goyellowjackets2, nueve, seis, cinco, siete, ocho, uno; 
PImage equipo1, equipo2, equipo3;
PImage jackiefoto, shaunafoto, lottiefoto, natfoto, taissafoto, vanfoto;

//Variables Texto

String texto1, texto2;
String jackietexto, shaunatexto, lottietexto, nattexto, taissatexto, vantexto;
String textofinal;

//Variables Estado 1 
   float fondoinicioX, fondoinicioY;
   int contadorfondoinicio;
   int contadorinicio;
   //boton
   boolean botoninicioActivado;
   int tamBoton; // diametro
   float posXboton, posYboton; 
   
//Variables estado 2/3

float xPelotas;
int p;

//variables transiciones
float transicionX, transicionXsalida; 
float transicionY;
float opacidad;

//variables estado 7
boolean botonfinalActivado;




void setup () {
  
size (640,480);
  
  estado = 1 ;
  contador= 0 ;
  
  //FUENTES
  fuentefinal = loadFont ("fuentefinal.vlw");
  arialbold = loadFont ("arialbold.vlw");
  fuente = loadFont ("fuente2.vlw");
  
  //FONDOS
  fondoinicio = loadImage ("fondoinicio.jpg");
  fondo1 = loadImage ("fondo1.jpg");
  fondo2 = loadImage ("fondo2.jpeg");
  fondofinal = loadImage ("fondofinal.jpg");
  
  //TITULOS
  titulo= loadImage ("titulo.png");
  jackietitulo = loadImage ("jackietitulo.png");
  shaunatitulo = loadImage ("shaunatitulo.png");
  lottietitulo = loadImage ("lottietitulo.png");
  nattitulo = loadImage ("nattitulo.png");
  taissatitulo = loadImage ("taissatitulo.png");
  vantitulo = loadImage ("vantitulo.png");
  
  //DECORACION
  pelota = loadImage ("pelota.png");
  escudo = loadImage ("escudo.png");
  goyellowjackets1 = loadImage ("goyellowjackets1.png");
  goyellowjackets2 = loadImage ("goyellowjackets2.png");
  nueve = loadImage ("9.png");
  seis = loadImage ("6.png");
  cinco = loadImage ("5.png");
  siete = loadImage ("7.png");
  ocho = loadImage ("8.png");
  uno = loadImage ("1.png");
  
  // FT EQUIPO
  equipo1 = loadImage ("equipo1.jpg");
  equipo2 = loadImage ("equipo2.jpg");
  equipo3 = loadImage ("equipo3.jpg");

  //FT CHICAS
  jackiefoto = loadImage ("jackiefoto.png");
  shaunafoto = loadImage ("shaunafoto.png");
  lottiefoto = loadImage ("lottiefoto.png");
  natfoto = loadImage ("natfoto.png");
  taissafoto = loadImage ("taissafoto.png");
  vanfoto = loadImage ("vanfoto.png");
  
  //TEXTOS
  texto1 = "En 1996, un equipo de jugadoras de fútbol de una escuela secundaria de Nueva \nJersey viaja a Seattle para un torneo nacional. Mientras volaban sobre Canadá,\n su avión se estrella en lo más profundo de la naturaleza.";
  texto2 = "Atrapadas durante 19 meses, las chicas deberán aprender a\nsobrevivir enfrentando hambre, miedo y conflictos internos. La\nhistoria alterna entre el pasado y el presente, mostrando cómo\naquella experiencia traumática marcó sus vidas para siempre.";
  jackietexto = "Capitana y delantera del equipo. Popular,\namable y líder natural, aunque puede ser\negocéntrica. Intenta mantener el orden tras\nel accidente, pero pierde influencia con el\ntiempo. Mejor amiga de Shauna.";
  shaunatexto = "Mediocampista rápida, inteligente y reservada.\nOculta secretos y conflictos emocionales,\nincluso de su mejor amiga, Jackie. En el bosque\ndesarrolla una personalidad más fuerte; en el\npresente sigue marcada por el pasado.";
  lottietexto = "Defensora talentosa y de personalidad tranquila.\nTras el accidente comienza a tener visiones y\nactitudes cada vez más extrañas, haciendo que\nmuchas crean que tiene una conexión especial con\nel bosque. Con el tiempo, se convierte en una figura\nvenerada por el grupo.";
  nattexto = "Rebelde, independiente y una de las más\nimportantes para la supervivencia. Destaca por su\nhabilidad para cazar y tomar decisiones difíciles.\nAunque parece dura y distante, es la que más\nintenta hacer lo correcto dentro del grupo.";
  taissatexto = "Competitiva, fuerte y muy racional. Siempre busca\nmantener el control y encontrar explicaciones lógicas,\nincluso cuando empiezan a ocurrir cosas extrañas en\nel bosque. Mientras intenta sobrevivir, también\ncomienza a enfrentarse a un lado oscuro de sí misma.";
  vantexto = "Arquera del equipo, valiente y con un gran sentido\ndel humor. Incluso en las peores situaciones logra\nmantener el ánimo del grupo y demuestra una\nenorme fortaleza. Su relación con Tai se vuelve una\nde las más importantes durante la supervivencia.";
  textofinal = " El bosque te\nesta llamando...";
  
  //estado1
   
   contadorfondoinicio = 0;
   tamBoton = 50;
   posXboton = 325;
   posYboton = 299;
     

  
} //cierre setup


void draw () {

  //ESTADO 1
  
  if (estado==1) { 
  
  background(0);
  
  contadorfondoinicio++;
  contadorinicio++;
  
  //aparicion inicial
  
 
  opacidad = map (contadorinicio,0,100,0,255);
  if (opacidad > 255) {
      opacidad = 255;
    }
 
  
  fondoinicioX = random(-4);
  fondoinicioY = random (-4);
  
  if (contadorfondoinicio<=120)  {
    tint(255,opacidad);
    image (fondoinicio, fondoinicioX, fondoinicioY, width, height);
  }
  
  if (contadorfondoinicio >= 120 && contadorfondoinicio <= 240) {
     tint(255,opacidad);
    image (fondoinicio, 0, 0, width, height);
  }
  
  if (contadorfondoinicio >= 240) {
    contadorfondoinicio = 0; }
     tint(255,opacidad);
   image (titulo,172,138,305,188);

 //boton
 
  noStroke();
 fill (#f6d809,opacidad);
 circle(posXboton,posYboton,tamBoton);
 
   //triangulo
 if (dist (mouseX, mouseY, posXboton, posYboton) > 25) {
   fill (255,opacidad);
   triangle (318,286,318,314,339,300);}
   else {
     fill (0,opacidad);
     triangle (320,290,320,310,335,300);
   }
   //activacion boton 
  
   if (botoninicioActivado == true) {
     estado=2; }
     
     else {
     botoninicioActivado = false;
   }
  
  } //ciere estado 1
  
  
  
  if (botoninicioActivado==true) {
    contador++;}
    
  if (estado >= 2) {

    // FONDO COMPARTIDO ESTADOS 2 y 3
    
    if (contador >= 0 && contador < 1480) { 
      
      // transicion de opacidad al entrar al estado 2
      if (contador > 0 && contador < 100) {
        opacidad = map(contador, 0, 100, 0, 255); 
      } else if (contador >= 100) {
        opacidad = 255; 
      }

      background(0); 
      
      tint(255, opacidad);
      image(fondo1, 0, 0);
      
      // franja azul estatica 
      noStroke();
      fill(#1a2657, opacidad); 
      rect(0, 72, width, 345);
      
      // pelotas 
      tint(255, opacidad);
      dibujarPelotas();
    }
    
  
    
    // ESTADO 2
    
    if (contador >= 0 && contador <= 640) {
    estado = 2;
  }
 
  if (estado==2) {

   
    //texto de estado 2
    textFont(fuente);
    fill (255,opacidad);
    textSize (17);
    text (texto1,25+transicionXsalida,108);  //hago + transicionX asi se mueven todas respecto al mismo valor de su posicion particular
   
   // imagenes estado 2
    image (equipo1,146+transicionXsalida,170);
    image (escudo,-45+transicionXsalida,221);
    image (escudo, 445+transicionXsalida,221);
    
     //transicion salida
     if (contador >= 540) {
      transicionXsalida = map(contador, 540, 640, 0, -width);
    } else {
      transicionXsalida = 0;
    }
    
   
    
  }  //  CIERRE ESTADO 2
      
     
      
      // ESTADO 3
      
        if (contador >= 540 && contador<1480){ //hasta 1480 en vez de 1280 asi se sigue moviando mientras baja el estado 4
      estado = 3;
    }
   
      //transicion entrada estado 3
    
     if (estado == 3) {
       
        if (contador >= 540 && contador <= 640) {
          transicionX = map(contador, 540, 640, width, 0); 
        } else {
          transicionX = 0; // cuando termina de entrar se queda en 0
        }
  
  //imagenes estado 3
  
  image (goyellowjackets1,0+transicionX,72);
  image (goyellowjackets2,576+transicionX,72);
  image (equipo2,80+transicionX,215);
  image (equipo3,338+transicionX,215);
  
  // texto estado 3
  
   fill(255);
  text (texto2,80+transicionX,120);

     } //CIERRE ESTADO 3
     
        
   //ESTADO 4
   
    if (contador > 1280 && contador < 1920) {
        estado = 4; }
        
    
    if  (estado==4) {
        
      //transicion entrada
     
     transicionY= map (contador,1280,1380,-height,0);
     
     if (transicionY > 0) {
    transicionY = 0;          //se queda quieto en 0
     }   
      
      tint(255);  
     image (fondo2,0,transicionY);
     
    
     
     // Jackie
    
    //franjas
     
     fill(#0f5192,opacidad);
     rect(0, 63 + transicionY, 71, 159);
     fill(#000f4a,opacidad);
     rect(71, 63 + transicionY, width - 71, 159);
     
     //imagenes 
     tint (255,opacidad);
     image(nueve, -12, 93 + transicionY);
     image(jackietitulo, 96, 28 + transicionY);
     image(jackiefoto, 415, -11 + transicionY);
     
     //texto
     fill(255,opacidad);
     text(jackietexto, 105, 118 + transicionY);
     
     // Shauna 
     
     //franjas
     fill(#0f5192,opacidad);
     rect(566, 283 + transicionY, 114, 160);
     fill(#000f4a,opacidad);
     rect(0, 283 + transicionY, 566, 160);
     
     //imagenes
     tint (255,opacidad);
     image(seis, 557,315+transicionY);
     image (shaunatitulo,172,253+transicionY);
     image (shaunafoto, -10,223+transicionY);
     
     //texto
     fill(255,opacidad);
     text (shaunatexto,188,336+transicionY);
     
      //transicion salida
     
     opacidad = map (contador,1820,1920,255,0);
     
    } // CIERRE ESTADO 4
    
    //ESTADO 5
    
    if (contador>=1920 && contador<2660) {
      estado=5;}
     
     if (estado==5) {
       
       //transicion entrada
       opacidad=map (contador,1920,1980,0,255);
       
       
       noTint();
       image(fondo2,0,0); // limpieza de fondo
       
       //Lottie
      
      //franja
       fill(#000f4a,opacidad);
       rect (32+transicionXsalida,71,620,174,15);
       
       //imagenes
       tint(225,opacidad);
       image (cinco,26+transicionXsalida,34);
       image (lottietitulo,236+transicionXsalida,29);
       image (lottiefoto,30+transicionXsalida,-25);
       
       //texto
       fill(255,opacidad);
        textSize(15.6);
       text(lottietexto, 252 + transicionXsalida, 117);
       
       //Nat
       
       //franja
       fill(#000f4a,opacidad);
       rect (-10+transicionXsalida,284,610,174,15);
       
       //imagenes
       tint(225,opacidad);
       image (siete,520+transicionXsalida,245);
       image (nattitulo,19+transicionXsalida,245);
       image (natfoto,366+transicionXsalida,254);
       
       //texto
       fill(255,opacidad);
       text (nattexto,42+transicionXsalida,340);
       
       // transicion salida
       if (contador >= 2560) {
         transicionXsalida = map(contador, 2560, 2660, 0, -width);
       } else {
         transicionXsalida = 0;
       }
       
       
     } // CIERRE ESTADO 5
            
       
     // ESTADO 6
       
     if (contador>=2560 && contador<3200) {
      estado=6;
   
      //transicion entrada
   
      if (contador >= 2560 && contador <= 2660) {
          transicionX = map(contador, 2560, 2660, width, 0);
        } else {   
          transicionX = 0;
        }
    
    
    if (contador > 2660 && contador<3200) {  //limpieza de fondo una vez que termina la transicion
        noTint();
        image(fondo2, 0, 0); 
      }
      
      // Tai
      
      //franja
      fill(#000f4a,opacidad);
      rect(0 + transicionX, 71, 448, 174);
      
      //imagenes
      tint(255,opacidad);
      image (ocho,515+transicionX,58);
      image (taissatitulo,20 +transicionX,28);
      image (taissafoto,384+transicionX,-5);
      
      //texto
      fill(255,opacidad);
      textSize(15.6);
      text(taissatexto,12+transicionX,120);
      
      // Van
     
     //franja
      fill(#000f4a,opacidad);
      rect(192 + transicionX, 284, 448, 174);
      
      //imagenes
      tint(255,opacidad);
      image(uno,2+transicionX,266);
      image(vantitulo,280+transicionX,245);
      image(vanfoto,32+transicionX,198);
      
      //texto
      fill(255,opacidad);
       textSize(16);
      text(vantexto,254+transicionX,336);
      
    
       //transicion salida
       
       if (contador>3100) {
       opacidad= map (contador,3100,3200,255,0);
       }  
    
      } // CIERRE ESTADO 6
      
      // ESTADO 7
      
      if (contador>3200) {
      estado=7;}
      
      if (estado==7){
        
        //transicion entrada
        
        transicionY = map(contador,3200,3300,height,0);
        
        if (transicionY < 0) {
         transicionY = 0;
          } 
          tint (255);
        image(fondofinal,0,0+transicionY);
        
        //aparicion texto
        
        opacidad = map (contador,3300,3400,0,255);
        
        if (contador>3300) {  //una vez que el fondo termino de moverse
        textFont(fuentefinal);
        textSize (32);
        textLeading(33);
        fill (#681916,opacidad);
        text (textofinal,430,222);
        
        
        //boton reset
        
        fill(#ffb500,opacidad);
        rect(519,433,100,34,10);
        textFont(arialbold);
        textSize (15);
        fill(#091a32,opacidad);
        text ("RESET",544,454);
        
        if(mouseX>519 && mouseX<519+100 && mouseY>433 && mouseY<433+34) {
     fill(255,opacidad);
        text ("RESET",544,454);
          }
        
        //activacion boton 
  
     if (botonfinalActivado == true) {
     estado=1; }
     
     else {
     botonfinalActivado = false;
     }
     
        } //cierre contador>3300 
      
      
      } //CIERRE ESTADO 7
  
}
     } //cierre draw



void mousePressed () {
  
  println (mouseX,mouseY);
  if (dist (mouseX, mouseY, posXboton, posYboton) < 25) {
    botoninicioActivado = true;
  }
  
  if(mouseX>519 && mouseX<519+100 && mouseY>433 && mouseY<433+34) {
    estado = 1;                    
    contador = 0;                
    contadorfondoinicio = 0;    
    contadorinicio = 0;
    botoninicioActivado = false;   
    botonfinalActivado = false;
  }
}


void dibujarPelotas() {

  xPelotas = xPelotas + 2; //movimiento de pelotas

  if (xPelotas > 0) {
    xPelotas = -60; //en -60 asi da la sensacion de bucle
  }

  for (int p = 0; p < 15; p=p+1) { //las pelotas (p) arrancan en 0 ; se repiten 15 veces ; suma de a 1 en cada vuelta para pegar las pelotas una al lado de la otra

    image(pelota, p*60+xPelotas , 0, 60, 60); //p*60 es donde dibuja la pelota, la primera vez cuando p=1 seria (1*60=60), la segunda vez seria p=2 entonces (2*60=120),etc

    image(pelota, p*60+xPelotas , 420, 60, 60);
  }
}

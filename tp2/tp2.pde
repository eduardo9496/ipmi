//Nombre y Apellido: Eduardo Medrano  Legajo: 93096/6
PImage imag1, imag2, imag3, imag4, imag5, boton, caja;
PFont fuente1, fuente2, fuente3, fuente4;
int minuto, tam1, degrade, posX, posY;
boolean llegoAlFinal;
boolean reiniciar;

void setup() {
  size( 640, 480);
  minuto=0;
  degrade=-15;
  tam1=0;
  posX=480;
  posY=480;
  fuente1=loadFont("LeelawadeeUI-Bold-48.vlw");
  fuente2=loadFont("TimesNewRomanPS-BoldMT-48.vlw");
  fuente3=loadFont("BadaBoomBB-48.vlw");
  fuente4=loadFont("Cambria-Bold-48.vlw");
  imag1=loadImage("img1.jpg");
  imag2=loadImage("img2.jpg");
  imag3=loadImage("img3.jpg");
  imag4=loadImage("img4.jpg");
  imag5=loadImage("img5.jpg");
  boton=loadImage("Boton.png");
  caja=loadImage("caja.png");
}

void draw() {
  if (frameCount % 60 == 0) {
    minuto = minuto + 1;
  };

  if (minuto == 0) {
    reiniciar=false;
    llegoAlFinal=false;
    image(imag1, 0, -60, 640, 750);
    if (tam1<20) {
      tam1 ++;
    }
    fill(0);
    textFont(fuente1, tam1);
    text("Este es el libro de Don quijote de la mancha se lanzo\nla primera parte salió en el año 1605 y la segunda parte\nen 1615.", 50, 50);
  } else if (minuto==3) {
    background(0);
    image(imag2, 0, 0, 400, 480);
    degrade=degrade +3;
    fill(255, 255, 255, degrade);
    textFont(fuente2, 20);
    text("Personajes Principales", 420, 50);
    text("-Don Quijote\n-Sancho Panza\n-Dulcinea del Toboso\n-Rocinante\n-Rucio\n-El cura\n-Entre otros", 420, 100);
  } else if (minuto==6) {
    background(32, 209, 183);
    image(imag3, 0, 120, 640, 400);
    if (posX>=50) {
      posX=posX-8;
    }
    textFont(fuente3, 20);
    fill(0);
    text("En la provincia de Buenos Aires se encuentra esta escultura de Don Quijote", posX, 50);
  } else if (minuto==9) {
    image(imag4, 0, 0, 640, 480);
    fill(255, 255, 255, 150);
    rect(5, 40, 340, 60, 10);
    fill(0);
    textFont(fuente4, 20);
    text("El es Miguel de Cervantes Saavedra\nautor de don quijote de la mancha", 10, posY);
    posY = posY-7;
  } else if (minuto==12) {
    image(imag5, 0, 0, 640, 480);
    image(caja, 370, 45, 290, 100);
    textSize(16);
    text("Gracias por llegar al final\nSi deseas volver a verlo\nhas click en el boton RESET", 418, 72);
  }

  if (minuto>=15) {
    image(boton, width/2-50, 350, 100, 100);
    llegoAlFinal=true;
  };

  if (llegoAlFinal==true && reiniciar== true) {
    minuto=0;
    degrade=-15;
    tam1=0;
    posX=480;
    posY=480;
  };
};

void mousePressed() {
  if (dist(mouseX, mouseY, width/2+50, 400) < 50) {
    reiniciar= true;
  };
};

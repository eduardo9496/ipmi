PImage fruta;

void setup () {
  size(800, 400);
  fruta = loadImage("granadilla.png");
}

void draw() {
  image(fruta, 0, 0, 400, 400);
  
  
}

void mouseClicked(){
 println(mouseX,mouseY);
}

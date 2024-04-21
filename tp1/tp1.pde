PImage fruta;

void setup () {
  size(800, 400);
  fruta = loadImage("granadilla.png");
}

void draw() {
  background(250);
  image(fruta, 0, 0, 400, 400);

  stroke(12, 155, 13);
  strokeWeight(6);

  line(561, 96, 570, 113);
  line(522, 144, 547, 148);
  line(618, 74, 603, 92);
  noStroke();
  fill(12, 155, 13);
  triangle(542, 112, 586, 85, 539, 20);
  triangle(599, 63, 647, 95, 682, 33);
  triangle(532, 133, 508, 166, 449, 101);
  fill(242, 148, 32);
  stroke(225, 125, 0);
  ellipse(632, 195, 200, 220);
  strokeWeight(15);
  line(694, 281, 736, 326);
  stroke(234, 234, 234);
  line(712, 300, 729, 317);


  fill(240, 143, 24);
  stroke(225, 125, 0);
  strokeWeight(5);
  ellipse(498, 233, 150, 166);
  fill(208, 222, 208);
  noStroke();
  strokeWeight(9);
  stroke(255);
  ellipse(486, 230, 110, 140);
  fill(59, 57, 55);
  noStroke();
  ellipse(458, 200, 20, 35);
  ellipse(465, 234, 20, 35);
  ellipse(486, 208, 20, 35);
  ellipse(488, 245, 20, 35);
  ellipse(471, 270, 20, 35);
  ellipse(510, 223, 20, 35);
  ellipse(515, 259, 20, 35);
}

int centerpunkty = 400;
float centerpunktx = -200;
float fps = 15;
int fart = 2;
  void setup() {
  size(1200, 800);
}

void draw() {
  background(225);
  
 circle(centerpunktx,centerpunkty,350);
  
  en_pøls();
  to_pøls();
  tre_pøls();
  fire_pøls();
  circle(centerpunktx, centerpunkty, 100);
  centerpunktx=centerpunktx + fart;
 
if (centerpunktx > 1400) {
  centerpunktx = -200;
}
}

void en_pøls() {
  pushMatrix();
  translate(centerpunktx, centerpunkty);
  rotate(frameCount/fps);
  println(frameRate);
  rect(0, 0, 150, 25); // roterer om hjørne punktet
  popMatrix();
}

void to_pøls() {
  pushMatrix();
  translate(centerpunktx, centerpunkty);
  rotate(0.5*PI);
  rotate(frameCount/fps);
  println(frameRate);
  rect(0, 0, 150, 25); // roterer om hjørne punktet
  popMatrix();
}

void tre_pøls() {
  pushMatrix();
  translate(centerpunktx, centerpunkty);
  rotate(1*PI);
  rotate(frameCount/fps);
  println(frameRate);
  rect(0, 0, 150, 25); // roterer om hjørne punktet
  popMatrix();
}

void fire_pøls() {
  pushMatrix();
  translate(centerpunktx, centerpunkty);
  rotate(1.5*PI);
  rotate(frameCount/fps);
  println(frameRate);
  rect(0, 0, 150, 25); // roterer om hjørne punktet
  popMatrix();
}

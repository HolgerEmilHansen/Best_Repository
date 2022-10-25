float rad = 0;
void setup(){
size(800, 800, P3D);
}

void draw(){
  

  background(227);
  pushMatrix();
  rotate(frameCount/14);
  translate(200, 200);
  box(150);
  popMatrix();
circle(300,200,100);
pushMatrix();
  rotate(frameCount/14);
  translate(400, 300);
  box(100);
popMatrix();


}

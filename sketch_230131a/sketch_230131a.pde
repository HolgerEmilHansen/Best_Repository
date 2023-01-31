import controlP5.*;

float R,G,B;
ControlP5 cp5;

void setup(){
 size(400,400);
 cp5 = new ControlP5(this);
  
  
  cp5.addKnob("R",10,255,10,280,100).setLabel("RED");
    cp5.addKnob("G",10,255,160,280,100).setLabel("GREEN");
    cp5.addKnob("B",10,255,270,280,100).setLabel("BLUE");
  
}

void draw() {
  background(R,G,B);
  
 
  
}

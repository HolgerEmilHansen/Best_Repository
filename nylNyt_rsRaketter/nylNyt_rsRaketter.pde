
float x=000;
float y=800;
int AntalRaketter = 6;

Raket[] niels;

void setup() {
  size(800, 800);
AntalRaketter = int (random(1,10));
niels = new Raket[AntalRaketter];
noStroke();
for (int i = 0; i < AntalRaketter; i++){ 
  niels [i] = new Raket(int(random(1,3)),color(random(0,255),random(0,255),random(0,255)), int (random(0,500)), 100, 10, (int) random(0, width), height);
}
}
void draw() {
  background(2);
for (int i = 0; i < AntalRaketter ; i++){
niels[i].visRaket();
}

}

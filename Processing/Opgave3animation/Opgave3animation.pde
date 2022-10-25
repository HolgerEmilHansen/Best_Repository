int rcirkelx = 100;
int rcirkely = 400;
int rcirkelstorrelse = 50;
color rcirkelfarve = color(255, 0, 0);
int antalrcirkel = 8;
int antalrcirkeltoeller = 0;

int bfirkantx = 20;
int bfirkanty = 0;
int bfirkantlaengde = 50;
int bfirkanthoejde = 50;
color bfirkantfarve = color(0, 0, 255);
int antalbfirkant = 16;

//************************************************************************************************
void setup() {
  size( 800, 800 );
}

//*************************************************************************************************
void draw() {
  rengore();
  grid();
  roedCirkel();
  blaafirkant();
}

//*************************************************************************************************

void rengore() {
  background(255);
}

//**********************************************************************

void roedCirkel() {

  int i = 0;
  while (i < antalrcirkel) {
    fill(rcirkelfarve);
    translate(rcirkelx*i+rcirkelstorrelse, rcirkely);
    circle(0, 0, rcirkelstorrelse);
    fill(255);
    translate(-rcirkelx*i-rcirkelstorrelse, -rcirkely);
    i++;
  }
}

//**********************************************************************

void blaafirkant() {
  int k = 0;
  while (k < antalbfirkant) {
    fill(bfirkantfarve);
    translate(bfirkantx, bfirkanty+bfirkanthoejde*k);
    rect(0, 0, bfirkantlaengde, bfirkanthoejde);
    fill(255);
    translate(-bfirkantx, -bfirkanty-bfirkanthoejde*k);
    k++;
  }
}

//**********************************************************************
void grid() {
  line(0, 0, width, 0);
  line(width, 0, width, height);
  line(0, 0, 0, height);
  line(0, height, width, height);
  line(width/4*1, 0, width/4*1, height);
  line(width/4*2, 0, width/4*2, height);
  line(width/4*3, 0, width/4*3, height);
  line(0, height/4*1, width, height/4*1);
  line(0, height/4*2, width, height/4*2);
  line(0, height/4*3, width, height/4*3);
}

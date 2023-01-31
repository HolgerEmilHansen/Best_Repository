class Raket {

  //attributter / tilstand
  int ladning;
  color farver;
  float xpos, ypos;
  int radius;
  int højde;
  int rigtigRadius;

int r=int(random(256));
  int g=int(random(256));
  int b=int(random(256));
  int alfa=255;




  //konstruktør
  Raket(int l, color f, int h, int r, int rad, int x, int y) {
    ladning=l;
    farver=f;
    højde=h;
    radius=r;
    rigtigRadius=rad;
    xpos=x;
    ypos=y;
  }


  void visRaket() {
    fill(farver);
    circle(xpos, ypos, 10);


    if (ladning<=1) {   //Ind og ud bang
      if (ypos>højde) {
        ypos=ypos-3;
      }
      if (ypos<=højde) {
        if (radius >rigtigRadius) {
          circle(xpos, ypos, sin(rigtigRadius / 100.0) * radius);
          rigtigRadius += 1;
        } else {
          circle(xpos, ypos, sin(rigtigRadius / 100.0) * radius);
          rigtigRadius += 1;
        }
      }
      if (rigtigRadius / 100.0 > PI) {
        ypos=height;
        rigtigRadius=0;
        xpos=(int) random(0, width);
      }
    }
    
    if(3> ladning && ladning > 1 ){
         if (ypos>højde) {
        ypos=ypos-3;
      }
      if (ypos<=højde) {
         pushMatrix();
    translate(xpos, ypos);
    stroke(r, b, g, alfa);

    for (int i=0; i<360; i++) {
      fill(r, g, b, alfa);
      rect(0, 0, 0, 1*i);
      rotate(1);
    }
    popMatrix();
    // gør eksplosion gennemsigtig
    alfa--; 
       if (alfa < 1) {
        ypos=height;
        alfa = 255;
        xpos=(int) random(0, width);
        }
      }
     
      }
      
  
    
    
}
}

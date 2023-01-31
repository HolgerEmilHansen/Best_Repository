class Raket {
  
  //attributter / tilstand
  color farver;
  float xpos,ypos;
  int radius;
  int højde;
int rigtigRadius;
 
  
  
  
  
  
  //konstruktør
  Raket(color f,int h,int r,int rad,int x,int y){
   farver=f;
   højde=h;
    radius=r;
    rigtigRadius=rad;
    xpos=x;
    ypos=y;
    
  }
  
  void rRaket(){
while(radius < rigtigRadius){
   background(255);
     circle(x,y,rigtigRadius);
    rigtigRadius++;
   }
   
   while(radius>rigtigRadius){
  background(255);
     circle(x,y,rigtigRadius);
     rigtigRadius--;
   }
   
  }

  
  void visRaket(){
   fill(farver);
    circle(xpos,ypos,10); 
    
     if (ypos>højde) {
    ypos=ypos-3;
  }
  if(ypos<=højde) {
    if (radius >rigtigRadius) {
      circle(xpos, ypos, sin(rigtigRadius / 100.0) * radius);
      rigtigRadius += 1;
    } else {
      circle(xpos, ypos, sin(rigtigRadius / 100.0) * radius);
     rigtigRadius += 1;
    }
  }
  if(rigtigRadius / 100.0 > PI){
    ypos=height;
    rigtigRadius=0;
    xpos=(int) random(0, width);
}
    
  }
  
  
  
  
}

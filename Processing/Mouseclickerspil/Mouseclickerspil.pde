//Mouseclicker
boolean morGlad = false;
boolean farGlad = false;
boolean sosGlad = false;
//mor
boolean blomst = false;
boolean rydop = false;
//far
boolean ol = false;
boolean gras = false;
//søs
boolean penge = false;
boolean toj = false;

void setup() {
  size(400, 300);
}

void draw() {
  tegnboard();
  morSmil();
farSmil();
søsSmil();
}

void mouseClicked() {
  float x = mouseX;
  float y = mouseY;
  if (( x>100 && x<200) && (y>200 && y<300)) { //penge lavst venstre
    penge = !penge;
  }
  if (( x>200 && x<300) && (y>200 && y<300)) { //tøj  lavst højre
    toj = !toj;
  }
  if (( x>100 && x<200) && (y>100 && y<200)) { //øl  middelvenstre
    ol = !ol;
  }
  if (( x>200 && x<300) && (y>100 && y<200)) { //slå græs middel højre
    gras = !gras;
  }
  if (( x>200 && x<300) && (y>0 && y<100)) { //ryd op høj højre
    rydop = !rydop;
  }
  if (( x>100 && x<200) && (y>0 && y<100)) { //blomst høj venstre
    blomst = !blomst;
  }
}

void tegnboard() {
  background(255);

  //                                                 Lines
  line(0, 0, width, 0);
  line(width, 0, width, height);
  line(0, 0, 0, height);
  line(0, height, width, height);
  line(width/4*1, 0, width/4*1, height);
  line(width/4*2, 0, width/4*2, height);
  line(width/4*3, 0, width/4*3, height);
  line(0, height/3*1, width, height/3*1);
  line(0, height/3*2, width, height/3*2);
  line(0, height/3*3, width, height/3*3);


  //                                Blomst
  if(blomst){  fill(0,255,0); }
  else{ fill(255,0,0);  }
  text("Giv blomster", 120, 50);
  //                                Ryd op
  if(rydop){  fill(0,255,0); }
  else{ fill(255,0,0);  }
  text("Ryd op", 220, 50);
   //                                øl
  if(ol){  fill(0,255,0); }
  else{ fill(255,0,0);  }
  text("Giv øl", 120, 150);
   //                                Slå græs
 if(gras){  fill(0,255,0); }
  else{ fill(255,0,0);  }
  text("Slå græs", 220, 150);
  //                                penge
  if(penge){  fill(0,255,0); }
  else{ fill(255,0,0);  }
  text("Giv penge", 120, 250);
  //                                tøj
 if(toj){  fill(0,255,0); }
  else{ fill(255,0,0);  }
  text("Køb tøj", 220, 250);
  
   //                                Mor
  fill(1);
  text("Mor", 20, 50);
   //                                Far
  fill(1);
  text("Far", 20, 150);
   //                                Søs
  fill(1);
  text("Søster", 20, 250);
}


void morSmil(){
if((blomst && rydop) && (farGlad && sosGlad)){
fill(0,255,0);
text("Mor er glad",320,50);
morGlad = true;
}
else{
fill(255,0,0);
text("Mor er sur",320,50);
morGlad = false;
}
}

void farSmil(){
  if((ol && gras) && sosGlad){
fill(0,255,0);
text("far er glad",320,150);
farGlad = true;
}
else{
fill(255,0,0);
text("far er sur",320,150);
farGlad = false;
}
}

void søsSmil(){
  if(penge ||
  toj){
fill(0,255,0);
text("Søster er glad",320,250);
sosGlad=true;
}
else{
fill(255,0,0);
text("Søster er sur",320,250);
sosGlad=false;
}
}

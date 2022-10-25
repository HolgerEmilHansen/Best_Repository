size(400, 600);                                     //width, height


circle(width/2, height/2, width/8*7);               //ansight
rect(width/4, height/6*2, 75, 80);                  //venstre øje
rect(width/4*2.275, height/6*2, 75, 80);            //højre øje

fill(255, 0, 0);                                    // rød næsefarve
circle(width/2, height/2, 125);                     //næse
fill(255);                                          // tilbage fra rød til hvid

fill(50);                                           //sort til mund
arc(width/2, height/9*5.5, width/2, height/9*3, 0, PI, CHORD);  //munden
fill(255);                                          //tilbage fra sort til hvid

fill(0);                                            //sort til hat
square(width/3.35, height/48, width/2.5);           //højde del af hatten
strokeWeight(32);                                   //linebredde til tyk
line(width/9, height/3.8, width/9*8, height/3.8);   //x1,y1,x2,y2
strokeWeight(0);                                    //linebredde tilbage til 0

fill(255);                                          //tilbage fra sort til hvid

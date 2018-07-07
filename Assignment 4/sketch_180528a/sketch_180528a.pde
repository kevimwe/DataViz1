/*
MSDS 6390 - Assignment 4

//Kevin Okiah

Task:  Dynamic Composition II

//References//
// http://natureofcode.com/book/chapter-3-oscillation/
//https://www.openprocessing.org/sketch/350341
*/

//Global Varibles
int angle = 0;
Windmill mymill;
int frame =0;

int m= 0;//x
int moveX=0;
int moveXX=800;
int moveY=410;
float box;
int sun = 0;
int lightx;
int lighty;

float xstart, xnoise, ystart, ynoise; 
float bird1X, bird1Y = 30;
float horizon;//To be used for ball drop
PVector location;  // Location of shape
PVector velocity;  // Velocity of shape
PVector gravity;   // Gravity acts at the shape's acceleration

PShape plane;
float fade = 255;

//Lightning
int endX;
int endY;

//These variables are to be used to simulate rain
int sz = 6;
float x[] = {
};
float y[] = {
};
float dirx[] = {
};
float diry[] = {
};

void setup() {
  size(1300, 500, P3D); //setup figure size
  p = new Pendulum(new PVector(width/2,10),160);
  mymill = new Windmill(350, 175, 1);
  //global sheet;
  sheet = loadImage("WalkingManSpriteSheet.png");
  plane = loadShape("plane.svg");
  plane.scale(0.09); 
  background(0); 
  frameRate(30);
  smooth();
}


void draw() {
 
frame = frame+1;
   background(#6B6666);

  
  // switch the background color when clouds eclipse the sun
  if(moveX-300>210 && moveX-300<250){
      background(#6B6666);
  }
    if(moveX-300>110 && moveX-300<170){
      background(208,208,208);
        
  }
    if(moveX-300>80 && moveX-300<110){
      
      background(random(0),random(255),random(0));
  }
  if(moveX-300>250 && moveX-300<280){
        background(169,169,169);
  }
    if(moveX-300>280 && moveX-300<330){
      background(96,96,96);
  }
 if(moveX-300>330 && moveX-300<340){
        background(random(250),random(0),random(0));
  }
    if(moveX-300>340 && moveX-300<370){
      background(#2b2121);
  }
   if(moveX-300>370 && moveX-300<430){
       background(169,169,169);
  }
      if(moveX-300>430 && moveX-300<570){
      background(random(255),random(255),random(0));
  }
        if(moveX-300>570 && moveX-300<630){
      background(169,169,169);
  }
     if(moveX-300>630 && moveX-300<830){
      background(random(0),random(205),random(0));
  }
      if(moveX-300>830 && moveX-300<930){
      background(208,208,208);
  }
  p.go();
  fill(192, 236, 250, 60);
  rect(0, 0, width, height);
  noStroke();
  fill(11, 150, 60);
  mymill.drawMill();
  SpiritMan();
  end();
  if(moveX>800){
  sun =1;
  }
  shape(plane, bird1X, bird1Y);

  
  if(moveX-300>=410 && moveX-300<=440){
     lightx = moveX-200; //the mouse location becomes
     lighty = 10;  //the source of the bolt
  //lightning
  //loop to draw 1 lightning bolt:
  while(lighty<260){//to bottom of screen
     endX = lightx + int(random(-4,4)); //x-value varies
     endY = lighty + 1;    //y just goes up
     strokeWeight(5);//bolt is a little thicker than a line
     stroke(255); //white line
     line(lightx,lighty,endX,endY);//draw a tiny segment
 
     lightx = endX;  //then x and y are moved to the 
     lighty = endY;  //end of the segment and so on
   }
  }
   

 
  if(moveX-300>=670 && moveX-300<=700){
  //lightning
   lightx = moveX-400; //the mouse location becomes
   lighty = 10;  //the source of the bolt
  while(lighty<400){//to bottom of screen
     endX = lightx + int(random(-4,4)); //x-value varies
     endY = lighty + 1;    //y just goes up
     strokeWeight(2);//bolt is a little thicker than a line
     stroke(255); //white line
     line(lightx,lighty,endX,endY);//draw a tiny segment
     //line(lightx,lighty,endX,endY);//draw a tiny segment
     //line(lightx,lighty,endX,endY);//draw a tiny segment
     lightx = endX;  //then x and y are moved to the 
     lighty = endY;  //end of the segment and so on
   }
  }
  
    if(frame>1260){
  //lightning
   lightx = moveX-800; //the mouse location becomes
   lighty = 10;  //the source of the bolt
  while(lighty<500){//to bottom of screen
     endX = lightx + int(random(-4,4)); //x-value varies
     endY = lighty + 1;    //y just goes up
     strokeWeight(2);//bolt is a little thicker than a line
     stroke(255); //white line
     line(lightx,lighty,endX,endY);//draw a tiny segment
     //line(lightx,lighty,endX,endY);//draw a tiny segment
     //line(lightx,lighty,endX,endY);//draw a tiny segment
     lightx = endX;  //then x and y are moved to the 
     lighty = endY;  //end of the segment and so on
   }
  }

//Running the end script
Theend();
println(255-frame%255);
 }
/*
MSDS 6390 - Assignment 3

//Kevin Okiah

Task:  Dynamic Composition I

//References//
// http://natureofcode.com/book/chapter-3-oscillation/
//https://www.openprocessing.org/sketch/350341

*/

//Global Varibles
int angle = 0;
Windmill mymill;

int m= 0;//x
int moveX=0;
float box;

float xstart, xnoise, ystart, ynoise; 
float bird1X, bird1Y = 30;
float horizon;//To be used for ball drop
PVector location;  // Location of shape
PVector velocity;  // Velocity of shape
PVector gravity;   // Gravity acts at the shape's acceleration

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
  size(1000, 500, P3D); //setup figure size
  p = new Pendulum(new PVector(width/2,10),160);
  mymill = new Windmill(150, 175, 1);
  background(0); 
  frameRate(20);
  smooth();
}


void draw() {
  background(216,216,216);
  
  // switch the background color when clouds eclipse the sun
  if(moveX-300>210 && moveX-300<250){
      background(208,208,208);
  }
  if(moveX-300>250 && moveX-300<280){
        background(169,169,169);
  }
    if(moveX-300>280 && moveX-300<330){
      background(96,96,96);
  }
 if(moveX-300>330 && moveX-300<340){
        background(169,169,169);
  }
    if(moveX-300>340 && moveX-300<370){
      background(208,208,208);
  }
  p.go();
  fill(192, 236, 250, 60);
  rect(0, 0, width, height);
  noStroke();
  fill(11, 150, 60);
  mymill.drawMill();
 
 }
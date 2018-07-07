/* MSDS 6390 - Assignment 2 */
/* Kevin Okiah, Ramesh Simhambhatla
   Task: Side by Side Portrait Sketching 

*/

PImage pic1;
PImage pic2;

void setup() {
  size(1000, 500);
  //load portraits
 
 // pic1= loadImage("portrait.JPG");//Kevin
  pic2 = loadImage("portrait.JPG");//Kevin
 //pic1= loadImage("Ramesh.jpg");//Ramesh
 //pic2 = loadImage("Ramesh.jpg");//Ramesh
  
  //resize Portraits
 // pic1.resize(500, 500); 
  //pic2.resize(500, 500);
 // image(pic1, 0, 0); //load Image
  //image(pic2, 500, 0); //load Image
  
  fill(254, 265, 215,90); //set opacity for tracing
  rect(0, 0, 500,500);
  rect(500, 0, 500,500);
  smooth();

}

void draw() {
  
  // Portrait Drawing
   drawKevin();
   drawRamesh();
}

//Manupulate background
 void mousePressed() {
  fill(random(200), random(150), random(100));
  rect(mouseX, mouseY,500, 500);
}
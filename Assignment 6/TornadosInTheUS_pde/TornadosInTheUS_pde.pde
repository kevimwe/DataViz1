
//Reference
//https://www.openprocessing.org/sketch/200581

// Variable storing the map
PShape baseMap;

// Variables to store the Data
String CSV[], myData[][];

// Variables to map the latitude and the longitude to the canvas
float Lat, Long, markerSize;

// Buttons and text to chose the display data and reset the map
boolean button1, button2, button3, button4, button5, button6, button7, button8, button9,button10, button11, button12, button13, button14, button15 = false;
float buttonHeight, buttonWidth, buttonX1, buttonX2, buttonX3, buttonX4, buttonX5, buttonX6, buttonX7,buttonX8, buttonY1, buttonY2, buttonY3, buttonY4, buttonY5, buttonY6, buttonY7, buttonY8, buttonY9, buttonY10, buttonY11, buttonY12, buttonY13, buttonY14, buttonY15;


void setup() {
  size(1200, 600);
  fill(#B3B3B3);
  rect(0,0,1200, 600);
  baseMap = loadShape("usmap.svg");
  
}

// Draw
void draw() {
  //beginRecord(PDF, "pene.pdf");
  shape(baseMap, 0, 20, width*.8, height*.8);
  fill(255);
  textSize(30); 
  text("Tornadoes count in 2018", 300,40);
  
  interElements();
  buttons();
  initialData();
  key();
 
  

}

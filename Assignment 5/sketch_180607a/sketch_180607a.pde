//Kevin Okiah  
// Assignment 5
// 
//motivations
//http://www.learningprocessing.com  
//https://processing.org/tutorials/pixels/


//global Variables
PImage img, freeze;
int loc, Action;
float r, g, b, distance, bright;
int index = 0;

void setup(){
  
  size(1200, 520);
  img = loadImage("bfly.jpg");
  img.resize(600,646);
  freeze = loadImage("bfly.jpg");
  freeze.resize(600,326);
  stroke(3);
  rect(0,0,600,500);
  //image(freeze, 0, 0);
}
  



color fillVal1 = color(0);
color fillVal2 = color(255);
color fillVal3 = color(255);
color fillVal4 = color(255);

void draw() {
  updatePixels();
  loadPixels();
  //println(frameRate);
  updatePixels();
  img.loadPixels();
  
  

  for (int y = 0; y < img.height; y++ ) {
    for (int x = 0; x < img.width; x++ ) {
      loc = x + y*img.width;
      // The functions red(), green(), and blue() pull out the three color components from a pixel.
      r = red(img.pixels [loc]); 
      g = green(img.pixels[loc]);
      b = blue(img.pixels[loc]);
      float adjustBrightness = ((float) mouseX / img.width) * 8.0; //to vary brightness
      float threshold = brightness(img.pixels[loc]); // to be used to convert image to back and White

     // Set the display pixel to the image pixel
      switch(Action){
       case 0://original image 
         pixels[loc] = color(r, g,b);
         break;
       case 1://playing with brightness - adjust brightness according to where the mouse is
         //float p = random(100);
         pixels[loc] = color(r*adjustBrightness, g*adjustBrightness, b*adjustBrightness);
         break;
       case 2://playing with threshold /convert to black and white based on pixel brightness.
         if(threshold>mouseX){
           pixels[loc] = color(255);
           }else{
            pixels[loc] = color(0);
           }
         break;
       case 3: //inverse of original picture 
           pixels[loc] = color(255-r, 255-g, 255-b);
         break;       
      }
      
    }
  }
  println("done");

  updatePixels();

  image(freeze,0,0);

  noFill();
  stroke(3);
  rect(0,0,600,500);
  stroke(3);
  rect(600,0,600,500);
  fill(120, 250,225);
  rect(0,316,1200,500);
  textSize(15);
  fill(0, 102, 153, 204);
  text("KEYBOARD KEY: 1 -  Original Image", 46, 367);
  fill(fillVal1);
  rect(15, 350, 20, 20);
  textSize(15);
  fill(0, 102, 153, 204);
  text("KEYBOARD KEY: 2 - Vary brightness by moving the mouse on the screen", 46, 407);
  fill(fillVal2);
  rect(15, 390, 20, 20);
  textSize(15);
  fill(0, 102, 153, 204);
  text("KEYBOARD KEY: 3 - Convert Image to Black and White. Vary Threshold by moving the mouse on the screen", 46, 447);
  fill(fillVal3);
  rect(15, 430, 20, 20);
  textSize(15);
  fill(0, 102, 153, 204);
  text("KEYBOARD KEY: 4: Invert the image pixels by substracting pixel's rgb from 255", 46, 487);
  fill(fillVal4);
  rect(15, 470, 20, 20);
  
}

void keyPressed() {
  if (keyPressed) {
    if (key == '1') {
     fillVal1 = 0;
     fillVal2 = 255;
     fillVal3 = 255;
     fillVal4 = 255;
     Action = 0;
     
    } 
    else if (key == '2') {
     fillVal1 = 255;
     fillVal2 = 0;
     fillVal3 = 255;
     fillVal4 = 255;
      Action = 1;
    } 
    else if (key == '3') {
     fillVal1 = 255;
     fillVal2 = 255;
     fillVal3 = 0;
     fillVal4 = 255;
      Action = 2;
    } 
   else if (key == '4') {
     fillVal1 = 255;
     fillVal2 = 255;
     fillVal3 = 255;
     fillVal4 = 0;
     Action = 3;
    } 
  }
  else {
    fillVal1 = 0;
  }
}
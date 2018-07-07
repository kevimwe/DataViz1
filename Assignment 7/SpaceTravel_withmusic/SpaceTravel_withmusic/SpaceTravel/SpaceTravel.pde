/***********************************************************************************/
/* Kevin Okia, Sabitri KC, Cynthia Alvarado                                        */
/* MSDS 6390   Ira Greenberg    June 28, 2018                                      */

//Reference
//https://stackoverflow.com/questions/11822144/processing-how-to-add-background-music
//https://www.youtube.com/watch?v=17WoOqgXsRM
//https://www.openprocessing.org/sketch/520915
//https://github.com/CodingTrain/website/tree/master/CodingChallenges/CC_001_StarField
/***********************************************************************************/

Star[] stars = new Star[400];
UFO[] ufo = new UFO[10];

import controlP5.*;
import processing.sound.*;

ControlP5 cp5; 
SoundFile song;
float speedS, speedUFO;


void setup()
{
  size(1200, 800);
  song = new SoundFile(this, "TwinkleTwinkleLittleStar.mp3");
  song.play();
  
  for (int i = 0; i <  stars.length; i++)
  {
    stars[i] = new Star();
  }
 
   for (int i = 0; i <  ufo.length; i++)
  {
    ufo[i] = new UFO();
  }
 
cp5 = new ControlP5(this);
  
cp5.addSlider("Throttle")
     .setPosition(1000,700)
     .setSize(50,600)
     .setRange(0,100)
     .setNumberOfTickMarks(10)
     .setSliderMode(Slider.FLEXIBLE)
     ;  

}

void draw()
{
  speedS = map(mouseY, height, 0, 0, 50);
  background(0);
  translate(width/2, height/2);
  for (int i =0; i< stars.length; i++)
  {
    stars[i].update();
    stars[i].show();
  }
  
  
  speedUFO = map(500, height, 0, 0, 100);
  for (int i =0; i< ufo.length; i++)
  {
    ufo[i].update();
    ufo[i].show();
    
  }
  /*
  if (keyPressed) {
    if (key == 'p' || key == 'P') {
      song.play();
    }
        
}*/
  
}
//Midterm
/* Authors: Cynthia Alvarado
            Kevin Okiah
            KC Sabitri
            
Title: Visulization of Tornados in the US 2000- 2017.
Description:

Data: 
 - The data that we visualize of opensource data from NOAA's National Weather Service Storm Prediction Center 
   URL http://www.spc.noaa.gov/wcm/#data
 - We downloaded csv file for tornado citing from 1950 to 2017. We chose to narrow down our analysis to data from
   2000 to 2017
 - Data maniopulation and cleaning in done in R
 - All the data that we use attached on the data folder

References:
  1. //https://www.openprocessing.org/sketch/200581
  2. //https://forum.processing.org/one/topic/using-a-world-map-in-processing.html
  3. //http://www.spc.noaa.gov/wcm/#data
  4. //https://github.com/JakaCikac/BubbleChart 
*/

//Import libraries
import controlP5.*;
import org.gicentre.utils.stat.*; 
import processing.serial.*;


//declearing objects
dashBoard d; //dashboard class object
charting c;
ControlP5 cp5;
BarChart barChart;
Knob myKnobB;

PImage backgroundMap;

void setup(){
  size(1900, 600);
  backgroundMap = loadImage("data/images/usmap.JPG");
  backgroundMap.resize(780, 520);
  mapWidth  = 775;
  mapHeight = 515;
  fill(#B3B3B3);
  //New class objects
  cp5 = new ControlP5(this);
  d = new dashBoard(); //Create a dashboard object 
  c = new charting();
  
   //smooth();
  //frameRate(30);

  titleFont = loadFont("Helvetica-22.vlw");
  smallFont = loadFont("Helvetica-12.vlw");
  textFont(smallFont);

  // ----------------------------------------------------------
  // read in the data to display and pass it to generate values
  // set the minx, maxx, miny, maxy according to the data!!

  // LOAD the DATA
  rd = new Data();//("/data/bubble/cars.tsv"
     table = rd.readData("cars");
   numRows = rd.getNumRows();
  xLabelText = "Tornado Count";
  yLabelText = "Total loss";
  colorLabel = "Change";
  maxx = int(rd.getMaxValue(xLabelText)) + 10; // add some number to make the plot look better
  maxy = int(rd.getMaxValue(yLabelText))+ 30; // add some number to make the plot look better
  minValueR = rd.getMinValue(radiusLabel);
  maxValueR = rd.getMaxValue(radiusLabel);
  // ----------------------------------------------------------
  // initialize plot
  plot = new Plot(leftMargin, topMargin, rightMargin, bottomMargin, width, height, color(235));
  // compute the space between ticks, to be able to plot data correctly
  plot.computeTickSpace(numTicksX, numTicksY);

  plot.generateValues(plot.xspace, plot.yspace, plot.yaxislen);
}
void draw() {
  image(backgroundMap, 0, 0);
  c.run();
}
//Global varibles
int selectYear= 2000;

Table table1, table2;
// Variables to store the Data
String CSV[], myData[][];
int [] tornado = {};
float [] fatality = {};
int [] injury = {};
int [] loss = {};
String [] state = {};
String [] State = {};
//slon  slat  elat  elon
float sLon [] ={};
float sLat [] ={};
float eLon [] ={};
float eLat [] ={};
int year [] ={};
int Year [] ={};
float mapWidth, mapHeight;   // Dimension of map in pixels
Plot plot;
Table table;
Data rd;

Bubble[] bubbles;
Bubble[] legendBubbles;
PFont titleFont, smallFont;

int leftMargin = 1190;
int rightMargin = 30;
int topMargin = 80;
int bottomMargin = 180;

// ----------------------
// A bunch of default data, later to be modified according to real data
String nameLabel = "State";
// on axis text
String xAxisText = "# of Tornados";
String yAxisText = "Total loss in Millions of $";
// in data
String xLabelText = "Total loss";
String yLabelText = "Tornado Count";
String colorLabel = "Change";
String radiusLabel = "Deaths";
// hover label (try to keep this short
int numRows = 20;

int minx= 0;
int maxx = 100;
int numTicksX = 10;

int miny = 0;
int maxy = 100;
int numTicksY = 10;

// Define the minimum radius of a bubble
int minRadius = 10;
// Define the maximum radius of a bubble
int maxRadius = 30;
// min value of data for radius
float minValueR = 0;
// max value of data for radius
float maxValueR = 20;

int numberOfBubbles = 54;
// ----------------------

// Define your colors
// ------------------------------------------
color red = color(255, 102, 102, 180);
color green = color(102, 255, 102, 180);
// ------------------------------------------
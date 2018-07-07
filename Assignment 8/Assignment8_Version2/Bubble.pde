class Bubble {
  // Define position and radius of the bubble.
  float xx, yy, radius, offsetx, offsety, radiusValue;
  // Define color
  color c;
  
  String name, initial;
 
  Bubble(String name_, float x_, float y_, float offsetx_, float offsety_, float radius_, float radiusValue_, color c_) {
    // coordinates to draw the bubble
    xx = x_;
    yy = y_;
    // radius of the bubble
    radius = radius_;
    radiusValue = radiusValue_;
    c = c_;
    
    // coordinates for correct data 
    offsetx = offsetx_;
    offsety = offsety_;
    
    // Name to display on bubble
    name = name_;
    //println(name);
    initial = name.substring(0);
    initial = initial.toUpperCase();
    
  }
  
  void display() {
    
    // Check if there is a mouse over.
    if (dist(mouseX, mouseY, xx, yy) <= radius) {
      // Color that the bubble takes on when hovering
      fill(255);
    } else {
      // If there is no mouse over leave the original color
      fill(c);
    }
    // display circle
    noStroke();
    ellipse(xx, yy, radius * 2, radius * 2);
    
    // display text on circle
    fill(0, 102, 153);
    textSize(14);
    text(initial, xx - textWidth(initial)/2, yy + textAscent()/2);
  }
  
  void displayLabel(String xaxis_, String yaxis_, String radiusLabel) {
    
    textSize(12);
    if (dist(mouseX, mouseY, xx, yy) <= radius) {
      int numRows = 4;
      String txt = name.toUpperCase() + "\n" + radiusLabel +": " + int(radiusValue) + ", \n" + xaxis_ + ": " + int(offsetx)
                                           + ", \n" + yaxis_ + ": " + int(offsety) + " Millions";
      Label label = new Label(txt, mouseX, mouseY, numRows, c);
    }
  }
  
}
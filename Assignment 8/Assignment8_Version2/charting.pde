
class charting extends dashBoard{

charting(){}

  void run(){
    heatmap();
    dashboard();
    key();
    
    rd.loadlocation(Integer.toString(selectYear));
    for (int i = 0; i <year.length; i++) {
      PVector lon = d.geoToPixel(new PVector(sLon[i], sLat[i]));  // TX
      fill(255, 0, 0);
      rect(lon.x,lon.y,3, 3);
      
  }
    table =rd.readData(Integer.toString(selectYear));
  maxx = int(rd.getMaxValue(xLabelText)) + 10; // add some number to make the plot look better
  maxy = int(rd.getMaxValue(yLabelText))+ 30; // add some number to make the plot look better
  minValueR = rd.getMinValue(radiusLabel);
  maxValueR = rd.getMaxValue(radiusLabel);
  
  // initialize plot
  plot = new Plot(leftMargin, topMargin, rightMargin, bottomMargin, width, height, color(235));
  // compute the space between ticks, to be able to plot data correctly
  plot.computeTickSpace(numTicksX, numTicksY);

  plot.generateValues(plot.xspace, plot.yspace, plot.yaxislen);
  // display plot
  plot.display();
  // draw axes and text
  plot.drawAxes(minx, maxx, numTicksX, miny, maxy, numTicksY, xAxisText, yAxisText);

  // display bubbles
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].display();
  }

  // display labels
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].displayLabel(xLabelText, yLabelText, radiusLabel);
  }

  // Dispaly headline text
  /*
  fill(30);
  textFont(titleFont);
  text("Tornado impact USA  2016", leftMargin, topMargin-30);
  //float textHeight = textAscent();
  textFont(smallFont);
  //text("Author: Jaka Cikac", leftMargin, 30 + textHeight);
  */
  
  color[] c = {green, red};
  plot.generateLegend(minRadius, maxRadius, minValueR, maxValueR, c,  plot.yaxislen);
  
  // display legend bubbles
  for (int i = 2; i < legendBubbles.length; i++) {
    legendBubbles[i].display();
  }
}
}
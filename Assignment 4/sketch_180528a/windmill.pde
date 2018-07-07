class Windmill {
  int wind;
  int x;
  int y;
  
  Windmill(int nx, int ny, int nwind) {
    wind = nwind;
    //location of the spinner
    x = nx;
    y = ny;
  }  

  void drawMill() {
    drawBase();
    pushMatrix();
    fill(255, 255, 255);
    translate(x+700, y); //Move the spinner 700 along x
    rotate(radians(frameCount/wind % 360));
    //println( (radians(frameCount/wind % 360)));
    //draw the wind mill spinner
    beginShape();
    vertex(0, 0);
    vertex(125, 0);
    vertex(125, 60);
    vertex(15, 60);
    vertex(15, 5);
    vertex(0, 5);
    endShape(CLOSE);
    beginShape();
    vertex(0, 0);
    vertex(0, -125);
    vertex(60, -125);
    vertex(60, -15);
    vertex(5, -15);
    vertex(5, 0);
    endShape(CLOSE);
    beginShape();
    vertex(0, 0);
    vertex(-125, 0);
    vertex(-125, -60);
    vertex(-15, -60);
    vertex(-15, -5);
    vertex(0, -5);
    endShape(CLOSE);
    beginShape();
    vertex(0, 0);
    vertex(0, 125);
    vertex(-60, 125);
    vertex(-60, 15);
    vertex(-5, 15);
    vertex(-5, 0);
    endShape(CLOSE);
    popMatrix();
    stroke(1);
    fill(0);
    ellipse(1050, 175, 10, 10);
  }

//draw the base of the wind mill
  void drawBase() {
    noStroke();
    fill(72,0,0);
    beginShape();
    vertex(1005, 200);
    vertex(1095, 200);
    vertex(1105, 500);
    vertex(995, 500);
    vertex(1005, 200);
    endShape();
    fill(72,0,0, 60);
    arc(1050, 200, 90, 90, PI, TWO_PI);
    fill(0);
    rect(0,488, 1300,488, 1300, 500, 0, 495);
  }
}
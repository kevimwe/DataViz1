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
    println( (radians(frameCount/wind % 360)));
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
    ellipse(850, 175, 10, 10);
  }

//draw the base of the wind mill
  void drawBase() {
    noStroke();
    fill(72,0,0);
    beginShape();
    vertex(805, 200);
    vertex(895, 200);
    vertex(905, 500);
    vertex(795, 500);
    vertex(805, 200);
    endShape();
    fill(72,0,0, 60);
    arc(850, 200, 90, 90, PI, TWO_PI);
  }
}
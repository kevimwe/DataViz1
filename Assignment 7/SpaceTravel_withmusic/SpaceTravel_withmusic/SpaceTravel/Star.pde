
class Star 
{
  float x, y, z;
  
  float r;
  
  float sx, sy;
  float px, py, pz;
  

  
  Star()
  {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    
    pz = z;
        
  }
  
  
  void update()
  {
    z -= speedS;
    if (z < 1)
    {
      z = width;
      x = random(-width, width);
      y = random(-height, height);
      
      pz = z;
    }
  }
  
  void show()
  {
    fill(random(255), random(255), random(255));
    noStroke();
    
    /* starting position of the star */
    sx = map(x / z, 0, 1, 0, width);
    sy = map(y / z, 0, 1, 0, height);
    
    /*Radius of the star, far away is small, and grows the closer we get */
    r = map(z, 0, width, 16, 0);
    
    //ellipse(sx, sy, r, r);
    beginShape();
    vertex(sx+20,sy+10);
    vertex(sx+23,sy+18);
    vertex(sx+30,sy+20);
    vertex(sx+23,sy+22);
    vertex(sx+20,sy+30);
    vertex(sx+17,sy+22);
    vertex(sx+10,sy+20);
    vertex(sx+17,sy+18);
    endShape(CLOSE);
    
    px = map(x/ pz, 0, 1, 0, width);
    py = map(y / pz, 0, 1, 0, height);
    
    pz = z;
    
    /* Accent movement with lines */
    stroke(random(255), random(255), random(255));
    line(px, py, sx, sy);
    
  }
  
}

class UFO 
{
  float x, y, z;
  
  float r;
  
  float sx, sy;
  float px, py, pz;
  

  
  UFO()
  {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    
    pz = z;
        
  }
  
  
  void update()
  {
    z -= speedUFO;
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
    fill(0, random(255), 0);
    noStroke();
    
    /* starting position of the UFO same as the stars */
    sx = map(x / z, 0, 1, 0, width);
    sy = map(y / z, 0, 1, 0, height);
    
    /*Radius of the star, far away is small, and grows the closer we get */
    r = map(z, 0, width, 20, 0);
    
    ellipse(sx, sy, r+25, r+12);
    
    px = map(x/ pz, 0, 1, 0, width);
    py = map(y / pz, 0, 1, 0, height);
    
    pz = z;
    
    
  }
  
}

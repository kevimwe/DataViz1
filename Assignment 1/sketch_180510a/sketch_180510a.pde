  /* 
  Kevin Okiah   
  MSDS 6390 Visualization of Information
  Assignment 1: Painting Recreation 
  Due Date: 5/17/2018 
  */ 
  
  size(630, 630); //set the figure size
  
  background(255,255, 255); // set the background color as white
  noStroke();
  //Large outer Cirlce. coloer random for now
  fill(random(255), random(255), random(255));
  ellipse(315,315, 622, 622); 
  
  //inner circle color set to white
  fill(255, 255, 255);
  ellipse(315,315, 400, 400); 
  
  //Botton triangle, Fill =Purple
  fill(102, 0, 102);
  triangle(470, 440, 315, 514, 160, 440);
  
  //Large center Cirle, Fill =Yellow
  fill(255, 204, 0);
  triangle(470, 440, 315, 115, 160, 440);
  
  //Left Traingle, Fill =Orange
  fill(255, 153, 51);
  triangle(470, 440, 315, 115, 500, 240);
  
  //Right Triangle, Fill= Green
  fill(0, 153, 51);
  triangle(130, 240, 315, 115, 160, 440);
  
  //Center triangle, bottom , Fill = blue
  fill(0, 102, 255);
  triangle(470, 440, 217, 320, 160, 440);
 
  // Right center triangle, Fill =  Red
  fill(204, 51, 0);
  triangle(317, 440, 317, 367, 470, 440);
  triangle(414, 322, 317, 368, 470, 440);

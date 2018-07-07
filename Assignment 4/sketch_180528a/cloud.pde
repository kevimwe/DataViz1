void clouds(){
  
     //Cloud #1
   
    noStroke();
    fill(240,255,240);
    //Cloud1
    
    ellipse(moveX+70, 50, 100, 50);
    ellipse(moveX-70, 50, 100, 50);
    ellipse(moveX, 50, 165, 80);
    fill(255,fade/2);
    shape(plane, bird1X-100, bird1Y-20);
    
    //sun
    if(sun==0){
    fill(#FFAA00);
    ellipse(moveX+300, 120-moveX/4, 80, 80);
   }
    
    //cloud2
    fill(240,255,255);    
    ellipse(moveX-370, 130, 100, 50);
    ellipse(moveX-220, 130, 100, 50);
    ellipse(moveX-300, 90, 50, 50);
    ellipse(moveX-300, 130, 195, 100);
    
    //cloud3
    fill(248,248,255);
    ellipse(moveX-670, 130, 100, 50);
    ellipse(moveX-520, 130, 100, 50);
    ellipse(moveX-600, 90, 50, 50);
    ellipse(moveX-600, 130, 195, 100);
    
    //Cloud #4  
    fill(255,250,250);
    ellipse(moveX-150, 70, 165, 80);
    ellipse(moveX-230, 70, 100, 50);
    ellipse(moveX-230, 70, 100, 50);
    
    //cloud5
    fill(240,255,255);
    ellipse(moveX-500, 80, 195, 100);
    ellipse(moveX-570, 80, 100, 50);
    ellipse(moveX-420, 80, 100, 50);
    ellipse(moveX-500, 40, 50, 50);
    
    //clou6
    fill(240,240,255);
    ellipse(moveX-800, 80, 195, 80);
    ellipse(moveX-870, 80, 100, 50);
    ellipse(moveX-720, 80, 100, 50);
    ellipse(moveX-800, 40, 50, 50);
    
    //cloud3
    if(moveX==width+360)
    moveX=-100;

    //moveX=-100;
  
}
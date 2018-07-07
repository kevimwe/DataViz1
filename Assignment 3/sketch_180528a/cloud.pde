void clouds(){
  
     //Cloud #1
    noStroke();
    fill(255);
    //Cloud1
    ellipse(moveX, 50, 165, 80);
    ellipse(moveX+70, 50, 100, 50);
    ellipse(moveX-70, 50, 100, 50);
    
    //sun
    fill(#FFAA00);
    ellipse(300, 120, 80, 80);
    
    //cloud2
    fill(255);
    ellipse(moveX-300, 130, 195, 100);
    ellipse(moveX-370, 130, 100, 50);
    ellipse(moveX-220, 130, 100, 50);
    ellipse(moveX-300, 90, 50, 50);
    
    //cloud3
    if(moveX==width+360)
    moveX=-100;

    //moveX=-100;
  
}
//This function draws a flying bird with an advertisement
 
 
 void birds() {
  bird1X+= random(3,5);
   if (bird1X>width-20) {
    //rotate(10);  
    bird1X=  80;
    bird1Y=  random(100,horizon);
  }
 fill( 255,0,0 );
  drawBird(bird1X, bird1Y-random(10) );
  textSize(20);
  pushMatrix();
  text("Nothing beats a good Swing, Come Rain or Sunshine.",bird1X, bird1Y-random(10)+20, 200, 200);
  popMatrix();
}
void drawBird( float x, float y ) {
  //// draw one bird /////
  triangle( x,y, x-60,y-10, x-60,y+10 );
   
  rect(x-45,y, 20, -20);
  //left wing
  rect(x-45,y, 20, 20);
  

}
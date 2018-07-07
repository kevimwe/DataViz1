//This function draws a flying birs
//later, I went with flying planes
 
 
 void birds() {
  bird1X+= random(3,5);
   if (bird1X>width-20) {
    //rotate(10);  
    bird1X=  80;
    bird1Y=  random(100,horizon);
  }
 fill( 255,0,0 );
}
void drawBird( float x, float y ) {
  //// draw one bird /////
  triangle( x,y, x-60,y-10, x-60,y+10 );
   
  rect(x-45,y, 20, -20);
  //left wing
  rect(x-45,y, 20, 20);
  

}
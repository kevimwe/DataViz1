// The code contains functions to build the walking man from a sprite sheet

int px = 0; //pos
int count = 0; // counter to move through each sheet
PImage sheet;
int Spx=0;
//int m = 0;
int Spy;


    
//int px = 0; //pos
void SpiritMan(){
//global count, px;
//background(255);
count = count + 1;
 // m = m + 1;

if(moveX<=150){
  Spx = count % 8; //sheet is 8x1
  //println(Spx);
  //y = count / 1; //integer division
  if(count == 8){ // reset
      count = 0;
      //x =0;
      //y =0;
  }
  px = px + 1; // move right\   
  copy(sheet,(Spx)*282,Spy*282,286,375,px,410,60,100);
  //copy(src, sx, sy, sw, sh, dx, dy, dw, dh)
  //sx  int: X coordinate of the source's upper left corner
  //sy  int: Y coordinate of the source's upper left corner
  //sw  int: source image width
  //sh  int: source image height
  //dx  int: X coordinate of the destination's upper left corner
  //dy  int: Y coordinate of the destination's upper left corner
  //dw  int: destination image width
  //dh  int: destination image height
  //src  PImage: an image variable referring to the source image.

}
 if(moveX>=151 & moveX<265){ 
 copy(sheet,(0)*282,Spy*282,282,375,px,410,60,100);

 }       
 textSize(17);
 if(moveX>=70 && moveX<80 && sun==0){
 text("Scooter!!!",moveX+10, 390, 200, 200);
 }
 if(moveX>=80 && moveX<90 && sun==0){
 text("Scooter!!!",moveX+10, 390, 200, 200);
 }
if(moveX>=110 && moveX<140 && sun==0){
 text("Scooter!!!",moveX+10, 390, 100, 200);
 }

 if(moveX>=161 && moveX<210 && sun==0){
 text("Come back in quickly!!! it's about rain",Spx+171, 390, 200, 200);
 }
 if(moveX>=251 && moveX<260 && sun==0){
 text("Suit yourself....",Spx+171, 390, 200, 200);
 }
 if(moveX>260){
  Spx = count % 8; //sheet is 4x4
  //y = count / 1; //integer division
  if(count == 7){ // reset
      count = 0;
      //x =0;
      //y =0;
  }
  px = px - 1; // move right\   
  
  copy(sheet,(Spx)*282,Spy*282,-283,375,px,410,60,100);
  //println(px);
}


}
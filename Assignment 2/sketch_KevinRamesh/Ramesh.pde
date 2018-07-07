void drawRamesh() {
  /////////////////////////////////
  // Ramesh
  ////////////////////////////////
  fill(#EAD6AA);
  stroke(0);
  
  //////////////////
  //head
  //////////////////
  
  int xHead = 230;
  int yHead= 220;
 
  ellipse(xHead, yHead, 215, 315);
  
  /////////////////////////
  //hair
  /////////////////////
  int xH = 130;
  int yH = 220;

  fill(60);
  beginShape();
    vertex(xH, yH);
    bezierVertex(xH, yH, xH-50, yH-30, xH+20, yH-180);
    bezierVertex(xH + 20, yH-180, xH+30, yH - 200, xH+120, yH-200);
    bezierVertex(xH+120, yH-200, xH+140, yH - 200, xH+165, yH-180);
    bezierVertex(xH+165, yH-180, xH+180, yH - 170, xH+180, yH-165);
    bezierVertex(xH+180, yH-165, xH+190, yH - 160, xH+200, yH-140);
    bezierVertex(xH+200, yH-140, xH+190, yH - 130, xH+180, yH-110);
    bezierVertex(xH+180, yH-110, xH+160, yH - 120, xH+140, yH-150);
    bezierVertex(xH+140, yH-150, xH+120, yH - 130, xH+100, yH-130);
    bezierVertex(xH+100, yH-130, xH+80, yH - 130, xH+60, yH-140);
    bezierVertex(xH+60, yH-140, xH+50, yH - 130, xH+40, yH-120);
    bezierVertex(xH+40, yH-120, xH+40, yH - 110, xH+30, yH-100);
    vertex(xH, yH);
  endShape();

   beginShape();
    vertex(xH+200, yH-140);
    bezierVertex(xH+200, yH-140, xH+205, yH-120, xH+210, yH-95);
    bezierVertex(xH+210, yH-95, xH+215, yH - 90, xH+220, yH-70);
    bezierVertex(xH+220, yH-70, xH+220, yH - 55, xH+220, yH-45);
    bezierVertex(xH+220, yH-45, xH+210, yH - 30, xH+205, yH-10);
    bezierVertex(xH+205, yH-10, xH+195, yH - 20, xH+180, yH-40);
//    bezierVertex(xH+100, yH-160, xH+80, yH - 160, xH+60, yH-140);
//    bezierVertex(xH+60, yH-140, xH+50, yH - 130, xH+40, yH-120);
//    bezierVertex(xH+40, yH-120, xH+40, yH - 110, xH+30, yH-100);
   vertex(xH+180, yH-110);
  endShape();
    
//#######################//
  //*      Nose          *//
  //#######################//
    noFill();
    stroke(0);
    beginShape();
      vertex(xH+80, yH-20);
      bezierVertex(xH+85, yH+10, xH+75, yH+15, xH+70, yH+18);
      bezierVertex(xH+70, yH+18, xH+50, yH+40, xH+70, yH+35);
      bezierVertex(xH+70, yH+35, xH+75, yH+38, xH+82, yH+42);
      bezierVertex(xH+82, yH+42, xH+85, yH+48, xH+95, yH+35);
      bezierVertex(xH+95, yH+35, xH+98, yH+35, xH+110, yH+42);
      bezierVertex(xH+95, yH+35, xH+98, yH+32, xH+110, yH+42);
      bezierVertex(xH+110, yH+42, xH+112, yH+45, xH+115, yH+42);
      bezierVertex(xH+115, yH+42, xH+117, yH+40, xH+117, yH+30);
      bezierVertex(xH+117, yH+30, xH+110, yH+25, xH+105, yH+10);
      vertex(xH+100, yH-20);
    endShape();
    
    fill(100);
    ellipse(xH+100, yH+40, 18, 5);
    ellipse(xH+73, yH+38, 18, 5);
    
    stroke(100);
     line(xH+120, yH+20, xH+140, yH +40);
    line(xH+60, yH+20, xH+40, yH +40);
     
 //    line(xH+110, yH+50, xH+140, yH +70);
 //    line(xH+70, yH+50, xH+40, yH +70);
     
  //#######################//
  //*      Right eye      *//
  //#######################//
    fill(#F5EEE1);
    stroke(55.0, 52.0, 43.0);
    
    beginShape();
      vertex(xH+115, yH-20);
      bezierVertex(xH+115, yH-20, xH+135, yH-38, xH+155, yH-20);
      bezierVertex(xH+155, yH-20, xH+135, yH, xH+115, yH-20);
    endShape();
    
    //pupil
    fill(80);
    ellipse(xH+135, yH-20, 13, 13);
 /*   
    //eyebrows
    fill(100);
    beginShape();
      vertex(xH+110, yH-40);
      bezierVertex(xH+110, yH-40, xH+115, yH-45, xH+135, yH-50);
      bezierVertex(xH+135, yH-50, xH+145, yH-65, xH+155, yH-40);
      bezierVertex(xH+155, yH-40, xH+165, yH-40, xH+165, yH-35);
    endShape();
  */
  
  // Right eyebrow
    strokeWeight(1);
    fill(100);
    beginShape();
      vertex(xH+110, yH-35);
      vertex(xH+120, yH-50);
      vertex(xH+140, yH-55);
      vertex(xH+160, yH-50);
      vertex(xH+165, yH-25);
      vertex(xH+155, yH-40);
      vertex(xH+145, yH-45);
      vertex(xH+120, yH-40);
      vertex(xH+110, yH-30);
    endShape(CLOSE);
    
   //#######################//
  //*      Left eye      *//
  //#######################//
    fill(#F5EEE1);
    stroke(55.0, 52.0, 43.0);
    
    beginShape();
      vertex(xH+25, yH-20);
      bezierVertex(xH+25, yH-20, xH+45, yH-38, xH+65, yH-20);
      bezierVertex(xH+65, yH-20, xH+45, yH, xH+25, yH-20);
    endShape();
    
    //pupil
    fill(80);
    ellipse(xH+45, yH-20, 13, 13);
    
    // Right eyebrow
    strokeWeight(1);
    fill(100);
    beginShape();
      vertex(xH+20, yH-35);
      vertex(xH+30, yH-50);
      vertex(xH+50, yH-55);
      vertex(xH+70, yH-50);
      vertex(xH+75, yH-25);
      vertex(xH+65, yH-40);
      vertex(xH+55, yH-45);
      vertex(xH+30, yH-40);
      vertex(xH+20, yH-30);
    endShape(CLOSE);
    
    // eye glasses 
    fill(25);
    //nose support
    rect(xH+80, yH-30, 20, 5);
    rect(xH+80, yH-25, 3, 20);
    rect(xH+100, yH-25, 3, 20);
    stroke(0);
    noFill();
    
    // glasses
    ellipse(xH+142, yH-18, 75, 50); //left
    ellipse(xH+42, yH-18, 75, 50);  //right
    
    // ear support on left only
    
 //   arc(xH+182, yH-30, 10, 10, radians(0), radians(90));
     fill(25);
     arc(xH+178, yH-25, 10, 20, PI, PI*2.5);
     quad(xH+180, yH-25, xH+185, yH-18, xH+190, yH-18, xH+205, yH-30);      

  /////////////
  // mouth
  /////////////
  
    fill(100);
    
 //   ellipse(xH+90, yH+70, 80, 10);
    beginShape();
      vertex(xH+50, yH+75);
      bezierVertex(xH+50, yH+75, xH+70, yH+70, xH+90, yH+68);
      bezierVertex(xH+90, yH+68, xH+110, yH+70, xH+130, yH+75);
    endShape();
    
    noFill();
    arc(xH+90, yH+120, 40, 20, 0, PI);
    
    line(xH+70, yH+90, xH+115, yH+90);
    
//////////////////
/// Left Ear
//////////////////

/*   
 // fill(200);
// noStroke();
  arc(xH+210, yH+10, 10, 25, PI, 2.3*PI);
  beginShape();
    vertex(xH+200, yH+15);
    bezierVertex(xH+200, yH+35,xH+210, yH-100, xH+225, yH+20);
    bezierVertex(xH+225, yH+20, xH+220, yH+40, xH+200, yH+60);
    bezierVertex(xH+185, yH+60, xH+190, yH+50, xH+200, yH+35);
    vertex(xH+210, yH+15);
  endShape(CLOSE);
*/
////////////////
//collar
////////////////
/*
  stroke(200);
 beginShape();
   vertex(xH+30, yH+120);
   bezierVertex(xH+30, yH+120, xH+55, yH+195, xH+55, yH+230);
 endShape();

 
 beginShape();
   vertex(xH+180, yH+105);
   bezierVertex(xH+180, yH+105, xH+170, yH+195, xH+155, yH+230);
 endShape();
 */
 ////////////////////////////
  //*      Right Ear      *//
 ///////////////////////////
 
    xH = 10;
    fill(#EAD6AA);//Skin tone
    beginShape();
    vertex(xH+311,210);
    vertex(xH+315,203);
    vertex(xH+320,200);
    vertex(xH+322,198);
    vertex(xH+327,200);
    vertex(xH+331,205);
    vertex(xH+330,217);
    vertex(xH+331,222);
    vertex(xH+333,233);
    vertex(xH+334,243);
    vertex(xH+333,250);
    vertex(xH+334,255);
    vertex(xH+333,258);
    vertex(xH+330,265);
    vertex(xH+325,275);
    vertex(xH+320,283);
    vertex(xH+310,287);
    endShape();
    
    strokeWeight(1);
    fill(57,41,28);
    arc(xH+316, 247, 5, 25, PI, 2.4*PI);
    stroke(0); 
    
    fill(57,41,28);
    stroke(120, 84, 50);
    beginShape();
    vertex(xH+312, 233);
    vertex(xH+315, 223);
    vertex(xH+321, 217);
    vertex(xH+323, 215);
    vertex(xH+327, 240);
    vertex(xH+328, 255);
    vertex(xH+327, 215);
    vertex(xH+323, 210);
    vertex(xH+317, 218);
    vertex(xH+312, 233);
    endShape();
    
    //#######################//
    //*      Left Ear      *//
    //#######################//
     xH = 45;
    fill(#EAD6AA);//Skin tone
    noStroke();
    beginShape();
    vertex(xH+77,218);
    vertex(xH+74,215);
    vertex(xH+72,213);
    vertex(xH+69,215);
    vertex(xH+68,215);
    vertex(xH+68,220);
    vertex(xH+72,240);
    vertex(xH+78,260);
    vertex(xH+81,270);
    vertex(xH+85,279);
    endShape();
    fill(55, 52, 43);
    //noFill();
    triangle(xH+70,218, xH+75, 219, xH+82, 270);
    
}

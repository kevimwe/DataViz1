void drawKevin(){
  //Kevin's Portrait Drawing
  //#######################//
  //*      Head           *//
  //#######################//
  noFill();
  stroke(120, 84, 50);
  int x =500; //to be used to offset the location of the sketch 
  fill(192, 161, 115);//Skin tone
  noStroke();
  beginShape();
  vertex(x+165,455);
  vertex(x+170,458);
  vertex(x+190,459);
  vertex(x+200,459);
  vertex(x+210,458);
  vertex(x+220,457);
  vertex(x+235,455);
  vertex(x+250,450);
  vertex(x+260,430);
  vertex(x+280,400);
  vertex(x+300,370);
  vertex(x+303,360);
  vertex(x+305,350);
  vertex(x+310,310);
  vertex(x+311,280);
  vertex(x+310,205);
  vertex(x+312,190);
  vertex(x+313,170);
  vertex(x+312,140);
  vertex(x+311,130);
  vertex(x+309,120);
  vertex(x+307,110);
  vertex(x+302,98);
  vertex(x+297,89);
  vertex(x+288,76);
  vertex(x+278,66);
  vertex(x+265,56);
  vertex(x+255,49);
  vertex(x+250,46);
  vertex(x+243,42);
  vertex(x+237,39);
  vertex(x+233,37);
  vertex(x+227,36);
  vertex(x+225,35);
  vertex(x+220,34);
  vertex(x+210,33);
  vertex(x+200,32);
  vertex(x+180,33);
  vertex(x+160,38);
  vertex(x+140,45);
  vertex(x+130,51);
  vertex(x+125,54);
  vertex(x+116,61);
  vertex(x+112,66);
  vertex(x+105,74);
  vertex(x+100,80);
  vertex(x+92,90);
  vertex(x+83,107);
  vertex(x+75,130);
  vertex(x+74,140);
  curveVertex(x+77, 250);
  curveVertex(x+68, 265);
  curveVertex(x+117, 375);  
  curveVertex(x+165, 455);
  curveVertex(x+180, 445);
  endShape();
  
  //#######################//
  //*      Left Ear      *//
  //#######################//
  noStroke();
  beginShape();
  vertex(x+77,218);
  vertex(x+74,215);
  vertex(x+72,213);
  vertex(x+69,215);
  vertex(x+68,215);
  vertex(x+68,220);
  vertex(x+72,240);
  vertex(x+78,260);
  vertex(x+81,270);
  vertex(x+85,279);
  endShape();
  fill(55, 52, 43);
  //noFill();
  triangle(x+70,218, x+75, 219, x+82, 270);
  
  
  //#######################//
  //*      Right Ear      *//
  //#######################//
  fill(192, 161, 115);//Skin tone
  beginShape();
  vertex(x+311,210);
  vertex(x+315,203);
  vertex(x+320,200);
  vertex(x+322,198);
  vertex(x+327,200);
  vertex(x+331,205);
  vertex(x+330,217);
  vertex(x+331,222);
  vertex(x+333,233);
  vertex(x+334,243);
  vertex(x+333,250);
  vertex(x+334,255);
  vertex(x+333,258);
  vertex(x+330,265);
  vertex(x+325,275);
  vertex(x+320,283);
  vertex(x+310,287);
  endShape();
  
  strokeWeight(1);
  fill(57,41,28);
  arc(x+316, 247, 10, 25, PI, 2.4*PI);
  stroke(0); 
  
  fill(57,41,28);
  stroke(120, 84, 50);
  beginShape();
  vertex(x+312, 233);
  vertex(x+315, 223);
  vertex(x+321, 217);
  vertex(x+323, 215);
  vertex(x+327, 240);
  vertex(x+328, 255);
  vertex(x+327, 215);
  vertex(x+323, 210);
  vertex(x+317, 218);
  vertex(x+312, 233);
  endShape();
  
  
  
  
  
  
  //#######################//
  //*      Nose          *//
  //#######################//
    noFill();
    stroke(120.0, 84.0, 50.0);
    beginShape();
    vertex(x+160, 272);
    curveVertex(x+158, 265);
    curveVertex(x+147, 296);
    curveVertex(x+143, 310);
    curveVertex(x+156, 320);
    curveVertex(x+165, 326);
    curveVertex(x+172, 327);
    vertex(x+178, 338);
    vertex(x+185, 338);
    vertex(x+195, 332);
    vertex(x+200, 330);
    curveVertex(x+207, 308);
    curveVertex(x+215, 312);
    curveVertex(x+219, 320);
    curveVertex(x+223, 318);
    curveVertex(x+229, 302);
    curveVertex(x+219, 286);
    curveVertex(x+210, 279);
    endShape();
    
    fill(55, 52, 43);
    beginShape();
    curveVertex(x+191, 349);
    curveVertex(x+192, 332);
    curveVertex(x+219, 328);
    curveVertex(x+227, 313);
    curveVertex(x+227, 315);
    curveVertex(x+224, 313);
    endShape();
    
    // Cheeks
    
    
    
    
    
    
  //#######################//
  //*      Mouth           *//
  //#######################//
  
    fill(155, 100, 100, 30);
    stroke(120.0, 84.0, 50.0);
    //noFill();
    beginShape();
    vertex(x+142, 370);
    vertex(x+137, 375);
    vertex(x+139, 380);
    vertex(x+144, 383);
    vertex(x+153, 395);
    vertex(x+157, 402);
    vertex(x+162, 405);
    vertex(x+167, 407);
    vertex(x+177, 410);
    vertex(x+190, 411);
    vertex(x+203, 409);
    vertex(x+213, 406);
    vertex(x+223, 400);
    vertex(x+237, 384);
    vertex(x+245, 375);
    vertex(x+239, 369);
    vertex(x+223, 359);
    vertex(x+213, 356);
    vertex(x+203, 354);
    vertex(x+200, 355);
    vertex(x+192, 359);
    vertex(x+187, 361);
    vertex(x+183, 361);
    vertex(x+179, 360);
    vertex(x+174, 356);
    vertex(x+164, 357);
    vertex(x+158, 359);
    vertex(x+150, 361);
    vertex(x+146, 365);
    vertex(x+142, 370);
    endShape();  
     
    fill(115, 80, 66);
    //noFill();
    noStroke();
    //fill(55, 52, 43);
    beginShape();
    vertex(x+152, 381);
    vertex(x+152, 379);
    vertex(x+155, 376);
    vertex(x+164, 378);
    vertex(x+173, 379);
    vertex(x+180, 377);
    vertex(x+185, 378);
    vertex(x+190, 378);
    vertex(x+200, 376);
    vertex(x+210, 377);
    vertex(x+215, 376);
    vertex(x+220, 375);
    vertex(x+230, 374);
    vertex(x+225, 376);
    vertex(x+215, 379);
    vertex(x+210, 380);
    vertex(x+200, 383);
    vertex(x+190, 384);
    vertex(x+185, 384);
    vertex(x+175, 385);
    vertex(x+165, 385);
    vertex(x+160, 383);
    vertex(x+155, 382);
    vertex(x+152, 381);
    endShape(CLOSE);
    
    
    //SideBurns
    //stroke(120.0, 84.0, 50.0);
    noStroke();
    //noFill();
    beginShape();
    fill(57,41,28);
    vertex(x+120, 370);
    vertex(x+127, 375);
    vertex(x+134, 360);
    vertex(x+139, 355);
    vertex(x+149, 350);
    vertex(x+159, 345);
    vertex(x+170, 342);
    vertex(x+180, 343);
    vertex(x+190, 342);
    vertex(x+210, 341);
    vertex(x+223, 346);
    vertex(x+233, 349);
    vertex(x+243, 357);
    vertex(x+258, 367);
    vertex(x+260, 397);
    vertex(x+270, 387);
    vertex(x+290, 367);
    vertex(x+312, 300);
    vertex(x+305, 367);
    vertex(x+290, 397);
    vertex(x+270, 420);
    vertex(x+250, 460);
    vertex(x+220, 467);
    vertex(x+190, 467);
    vertex(x+165, 466);
    vertex(x+135, 415);
    vertex(x+117, 375);
    vertex(x+121, 376);
    vertex(x+125, 380);
    vertex(x+145, 405);
    vertex(x+165, 435);
    vertex(x+175, 437);
    vertex(x+185, 438);
    vertex(x+205, 437);
    vertex(x+225, 435);
    vertex(x+235, 436);
    vertex(x+245, 433);
    vertex(x+250, 380);
    vertex(x+245, 370);
    vertex(x+242, 365);
    vertex(x+210, 350);
    vertex(x+192, 349);
    vertex(x+172, 351);
    vertex(x+162, 353);
    vertex(x+152, 356);
    vertex(x+142, 366);
    vertex(x+132, 376);
    vertex(x+130, 385);
    vertex(x+115, 373);
    vertex(x+120, 370);
    
    endShape(); 
    
    fill(57,41,28);
    noStroke();
    //noFill();
    beginShape();
    triangle(x+171, 413, x+195, 419, x+210, 412);
    endShape();
    
    //Hair
    fill(57,41,28);
    stroke(55, 52, 43);
    //noStroke();
    //noFill();
    beginShape();
    vertex(x+310,205);
    vertex(x+312,190);
    vertex(x+313,170);
    vertex(x+312,140);
    vertex(x+311,130);
    vertex(x+309,120);
    vertex(x+307,110);
    vertex(x+302,98);
    vertex(x+297,89);
    vertex(x+288,76);
    vertex(x+278,66);
    vertex(x+265,56);
    vertex(x+255,49);
    vertex(x+250,46);
    vertex(x+243,42);
    vertex(x+237,39);
    vertex(x+233,37);
    vertex(x+227,36);
    vertex(x+225,35);
    vertex(x+220,34);
    vertex(x+210,33);
    vertex(x+200,32);
    vertex(x+180,33);
    vertex(x+160,38);
    vertex(x+140,45);
    vertex(x+130,51);
    vertex(x+125,54);
    vertex(x+116,61);
    vertex(x+112,66);
    vertex(x+105,74);
    vertex(x+100,80);
    vertex(x+92,90);
    vertex(x+83,107);
    vertex(x+75,130);
    vertex(x+74,140);
    vertex(x+73,160);
    vertex(x+73,190);
    vertex(x+75,215);
    vertex(x+76,160);
    vertex(x+77,150);
    vertex(x+78,140);
    vertex(x+79,136);
    vertex(x+80,134);
    vertex(x+81,123);
    vertex(x+91,103);
    vertex(x+103,83);
    vertex(x+115,73);
    vertex(x+145,83);
    vertex(x+155,85);
    vertex(x+159,85);
    vertex(x+179,84);
    vertex(x+189,83);
    vertex(x+205,82);
    vertex(x+215,83);
    vertex(x+225,81);
    vertex(x+245,74);
    vertex(x+255,65);
    vertex(x+265,70);
    vertex(x+270,75);
    vertex(x+276,80);
    vertex(x+287,93);
    vertex(x+304,125);
    vertex(x+306,147);
    vertex(x+308,163);
    vertex(x+309,183);
    vertex(x+311,203);
    endShape();
    
    
  //#######################//
  //*      Right eye      *//
  //#######################//
    fill(218, 164, 138);
    stroke(55.0, 52.0, 43.0);
    beginShape();
    curveVertex(x+270, 243);
    curveVertex(x+268, 242);
    curveVertex(x+254, 243);
    curveVertex(x+244, 245);
    curveVertex(x+242, 245);
    curveVertex(x+222, 240);
    curveVertex(x+230, 230);
    curveVertex(x+244, 227);
    curveVertex(x+260, 233);
    curveVertex(x+269, 236);
    curveVertex(x+272, 237);
    curveVertex(x+271, 237);
    endShape(CLOSE);
    
    fill(55, 52, 43);
    beginShape();
    curveVertex(x+250, 226);
    curveVertex(x+238, 226);
    curveVertex(x+269, 228);
    curveVertex(x+279, 233);
    curveVertex(x+283, 237);
    curveVertex(x+276, 236);
    curveVertex(x+271, 239);
    curveVertex(x+264, 235);
    curveVertex(x+261, 234);
    curveVertex(x+260, 234);
    endShape();
    
    fill(37, 21, 22);
    ellipse(x+249, 235, 26, 13);
    fill(0);
    ellipse(x+249, 235, 5, 5);
    fill(125, 125, 125);
    ellipse(x+250, 236, 3, 3);
    noFill();
    
    strokeWeight(0.5);
    stroke(55, 52, 43);
    arc(x+270, 259, 100, 29 , 0.68*PI, PI);
    arc(x+240, 256, 70, 30 , 0.2*PI, 0.5*PI);
    strokeWeight(2);
    
    // Right eyebrow
    strokeWeight(1);
    fill(57,41,28);
    beginShape();
    vertex(x+286, 225);
    vertex(x+270, 211);
    vertex(x+250, 213);
    vertex(x+223, 227);
    vertex(x+215, 218);
    vertex(x+250, 202);
    vertex(x+267, 200);
    vertex(x+298, 226);
    endShape(CLOSE);
    
  //#######################//
  //*      Left eye      *//
  //#######################//
    fill(218, 164, 138);
    stroke(55.0, 52.0, 43.0);
    beginShape();
    curveVertex(x+160, 248);
    curveVertex(x+158, 246);
    curveVertex(x+144, 248);
    curveVertex(x+134, 249);
    curveVertex(x+132, 249);
    curveVertex(x+112, 245);
    curveVertex(x+120, 235);
    curveVertex(x+134, 232);
    curveVertex(x+150, 238);
    curveVertex(x+159, 242);
    curveVertex(x+162, 245);
    curveVertex(x+161, 247);
    endShape(CLOSE);
    //Pupil
    fill(37, 21, 22);
    ellipse(x+131, 240, 26, 15);
    fill(125, 125, 125);
    ellipse(x+131, 239, 6, 3);
    noFill();
    
    strokeWeight(0.5);
    stroke(55, 52, 43);
    arc(x+160, 259, 100, 29 , 0.65*PI, PI);
    arc(x+130, 256, 70, 30 , 0.2*PI, 0.5*PI);
    
    // Left eyebrow
    strokeWeight(1);
    fill(57,41,28);
    beginShape();
    vertex(x+165, 234);
    vertex(x+135, 220);
    vertex(x+119, 220);
    vertex(x+100, 234);
    vertex(x+95, 225);
    vertex(x+106, 215);
    vertex(x+128, 211);
    vertex(x+171, 225);
    endShape(CLOSE);
    
    //###################################//
    //           Neck                    //  
    //###################################//
    noFill();
    //stroke(120, 84, 50);
    fill(192, 161, 115);//Skin tone
    noStroke();
    beginShape();
    vertex(x+312, 300);
    vertex(x+320, 354);
    vertex(x+318, 358);
    vertex(x+310, 368);
    vertex(x+300, 383);
    vertex(x+290, 398);
    vertex(x+305, 367);
    endShape(CLOSE);
    

}
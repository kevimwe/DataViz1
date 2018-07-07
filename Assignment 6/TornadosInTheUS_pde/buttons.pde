void interElements() {


  // Rectangles forming the buttons
  fill(#020000);
  smooth();
  rect(buttonX1, buttonY1, buttonHeight, buttonWidth, 5);
  rect(buttonX1, buttonY2, buttonHeight, buttonWidth, 5);
  rect(buttonX2, buttonY3, buttonHeight, buttonWidth, 5);
  rect(buttonX2, buttonY4, buttonHeight, buttonWidth, 5);
  rect(buttonX3, buttonY5, buttonHeight, buttonWidth, 5);
  rect(buttonX3, buttonY6, buttonHeight, buttonWidth, 5);
  rect(buttonX4, buttonY7, buttonHeight, buttonWidth, 5);
  rect(buttonX4, buttonY8, buttonHeight, buttonWidth, 5);
  rect(buttonX5, buttonY9, buttonHeight, buttonWidth, 5);
  rect(buttonX5, buttonY10, buttonHeight, buttonWidth, 5);
  rect(buttonX6, buttonY11, buttonHeight, buttonWidth, 5);
  rect(buttonX6, buttonY12, buttonHeight, buttonWidth, 5);
  rect(buttonX7, buttonY13, buttonHeight, buttonWidth, 5);
  rect(buttonX7, buttonY14, buttonHeight, buttonWidth, 5);
  rect(buttonX8, buttonY15, buttonHeight, buttonWidth, 5);


}

// Interactivity of the map

void buttons() {

  // Variables related to the button size and position
  buttonHeight = 20;
  buttonWidth = 20;
  buttonX1 = 35;
  buttonX2 = 145;
  buttonX3 = 265;
  buttonX4 = 375;
  buttonX5 = 475;
  buttonX6 = 625;
  buttonX7 = 735;
  buttonX8 = 835;
  buttonY1 = 525;
  buttonY2 = 550;
  buttonY3 = 525;
  buttonY4 = 550;
  buttonY5 = 525;
  buttonY6 = 550;
  buttonY7 = 525;
  buttonY8 = 550;
  buttonY9 = 525;
  buttonY10= 550;
  buttonY11 = 525;
  buttonY12= 550;
  buttonY13 = 525;
  buttonY14= 550;
  buttonY15= 525;
  
  // Text on each of the buttons
  noStroke();
  smooth();
  fill(255);
  textSize(15); 
  //fill(#E6ADE1);
  text("Alabama", buttonX1+25, buttonY1+15);
  text("Arizona", buttonX1+25, buttonY2+15);
  text("Carlifonia", buttonX2+25, buttonY3+15);
  text("Florida", buttonX2+25, buttonY4+15);
  text("Georgia", buttonX3+25, buttonY5+15);
  text("Kentuky", buttonX3+25, buttonY6+15);
  text("Lousiana",buttonX4+25, buttonY7+15);
  text("Missouri",buttonX4+25, buttonY8+15);
  text("Mississipi", buttonX5+25, buttonY9+15);
  text("North Carolina", buttonX5+25, buttonY10+15);
  text("Ohio",    buttonX6+25, buttonY11+15);
  text("Tennessee", buttonX6+25, buttonY12+15);
  text("Texas",buttonX7+25, buttonY13+15); 
  text("Virginia", buttonX7+25, buttonY14+15);
  text("View All", buttonX8+25, buttonY15+15);
  
  // Each button shows the corresponding data
  if (button1) {
    smooth();
    fill(#ff0000);
    rect(buttonX1, buttonY1, buttonHeight, buttonWidth, 5);
    showAlabama();
  } else if (button2) {
    smooth();
    fill(#ff0000); 
    rect(buttonX1, buttonY2, buttonHeight, buttonWidth, 5);
    showArizona();
  } else if (button3) {
    smooth();
    fill(#ff0000);  
    rect(buttonX2, buttonY3, buttonHeight, buttonWidth, 5);
    showCarlifornia();
  } else if (button4) {
    smooth();
    fill(#ff0000);  
    rect(buttonX2, buttonY4, buttonHeight, buttonWidth, 5);
    showFlorida();
  } else if (button5) {
    smooth();
    fill(#ff0000);
    rect(buttonX3, buttonY5, buttonHeight, buttonWidth, 5);
    showGeorgia();
  } else if (button6) {
    smooth();
    fill(#ff0000);
    rect(buttonX3, buttonY6, buttonHeight, buttonWidth, 5);
    showKentuky();
  }else if (button7) {
    smooth();
    fill(#ff0000);
    rect(buttonX4, buttonY7, buttonHeight, buttonWidth, 5);
    showLousiana();
  }else if (button8) {
    smooth();
    fill(#ff0000);
    rect(buttonX4, buttonY8, buttonHeight, buttonWidth, 5);
    showMissouri();
  }else if (button9) {
    smooth();
    fill(#ff0000);
    rect(buttonX5, buttonY9, buttonHeight, buttonWidth, 5);
    showMississipi();
  }else if (button10) {
    smooth();
    fill(#ff0000);
    rect(buttonX5, buttonY10, buttonHeight, buttonWidth, 5);
    showNorthCarolina();
  }else if (button11) {
    smooth();
    fill(#ff0000);
    rect(buttonX6, buttonY11, buttonHeight, buttonWidth, 5);
    showOhio();
  }
  else if (button12) {
    smooth();
    fill(#ff0000);
    rect(buttonX6, buttonY12, buttonHeight, buttonWidth, 5);
    showTennessee();
  }
   else if (button13) {
    smooth();
    fill(#ff0000);
    rect(buttonX7, buttonY13, buttonHeight, buttonWidth, 5);
    showTexas();
  }
   else if (button14) {
    smooth();
    fill(#ff0000);
    rect(buttonX7, buttonY14, buttonHeight, buttonWidth, 5);
    showVirgina();
  }
   else if (button15) {
    smooth();
    fill(#ff0000);
    rect(buttonX8, buttonY15, buttonHeight, buttonWidth, 5);
     showAlabama();
     showArizona();
     showCarlifornia();
     showFlorida();
     showGeorgia();
     showKentuky();
     showLousiana();
     showMissouri();
     showMississipi();
     showVirgina();
     showTexas();
     showTennessee();
     showOhio();
     showNorthCarolina();
  }
}

void mousePressed() {

  // Mouse pressed on the button positions will activate the state
  // state if the button was already activated.
  if (mouseX > buttonX1 && mouseX < buttonX1+20 && mouseY > buttonY1 && mouseY < buttonY1+20) {
    button1 = !button1;
  } else if (mouseX > buttonX1 && mouseX < buttonX1+20 && mouseY > buttonY2 && mouseY < buttonY2+20) {
    button2 = !button2;
  } else if (mouseX > buttonX2 && mouseX < buttonX2+20 && mouseY > buttonY3 && mouseY < buttonY3+20) {
    button3 = !button3;
  } else if (mouseX > buttonX2 && mouseX < buttonX2+20 && mouseY > buttonY4 && mouseY < buttonY4+20) {
    button4 = !button4;
  } else if (mouseX > buttonX3 && mouseX < buttonX3+20 && mouseY > buttonY5 && mouseY < buttonY5+20) {
    button5 = !button5;
  } else if (mouseX > buttonX3 && mouseX < buttonX3+20 && mouseY > buttonY6 && mouseY < buttonY6+20) {
    button6 = !button6;
  }else if (mouseX > buttonX4 && mouseX < buttonX4+20 && mouseY > buttonY7 && mouseY < buttonY7+20) {
    button7 = !button7;
  }else if (mouseX > buttonX4 && mouseX < buttonX4+20 && mouseY > buttonY8 && mouseY < buttonY8+20) {
    button8 = !button8;
  }else if (mouseX > buttonX5 && mouseX < buttonX5+20 && mouseY > buttonY9 && mouseY < buttonY9+20) {
    button9 = !button9;
  }else if (mouseX > buttonX5 && mouseX < buttonX5+20 && mouseY > buttonY10 && mouseY < buttonY10+20) {
    button10 = !button10;
  }else if (mouseX > buttonX6 && mouseX < buttonX6+20 && mouseY > buttonY11 && mouseY < buttonY11+20) {
    button11 = !button11;
  }else if (mouseX > buttonX6 && mouseX < buttonX6+20 && mouseY > buttonY12 && mouseY < buttonY12+20) {
    button12 = !button12;
  }else if (mouseX > buttonX7 && mouseX < buttonX7+20 && mouseY > buttonY13 && mouseY < buttonY13+20) {
    button13 = !button13;
  }else if (mouseX > buttonX7 && mouseX < buttonX7+20 && mouseY > buttonY14 && mouseY < buttonY14+20) {
    button14 = !button14;
  }
    else if (mouseX > buttonX8 && mouseX < buttonX8+20 && mouseY > buttonY15 && mouseY < buttonY15+20) {
    button15 = !button15;
  }
}
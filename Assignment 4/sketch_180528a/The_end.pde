void Theend(){
 //The end 
  if(frame>1020  &&frame <1250){
  fill(255-frame%255, 0, 0, frame%255);
  rect(0,0, 1300,500);
    }
  if (frame>=1250){
    fill(0,0,0,255);
    rect(0,0, 1300,500);
    frameRate(40);
    fill(0, 102, 153);
    //textSize(4);
    text("'I have seen many storms in my life. Most storms have caught me by surprise",250, 150); 
    text("so I had to learn very quickly to look further and understand that I am not",250, 200);
    text("capable of controlling the weather, to exercise the art of patience and ",250, 250);
    text("to respect the fury of nature.'", 250, 300); 
    text("Paulo Coelho", 770, 350);

  }
}
  
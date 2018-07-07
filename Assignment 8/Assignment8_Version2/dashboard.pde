class dashBoard{
 
   int X=40; //heatmap dimensions
   int Y =35; //heatmap dimension 
   float mapGeoLeft   = -129.43;          // Longitude 126 degrees west
   float mapGeoRight  =  -64.04;          // Longitude 153 degrees east
   float mapGeoTop    =   52.02;          // Latitude 72 degrees north.
   float mapGeoBottom =  21.78;          // Latitude 56 degrees south.
  
  dashBoard(){
      knob();   
      key();
  }    
  void dashboard(){
    image(backgroundMap, 0, 0);
    fill(211,211,211);
    noStroke();
    rect(0,0,2000, 60);
    rect(0,500,2000, 440);
    rect(400,500,2000, 440);

    fill(255, 0, 0);
    textFont(titleFont);
    textSize(30); 
    text("Tornado Impact in USA in "+selectYear, 500,40);
    /*
    fill(255);
    rect(1090, 80, 760, 410);
    fill(0);
     textSize(10);

    float textHeight = textAscent();
    textSize(13);
    String title = selectYear+" Total Loss from Tornados in $US by State";
    text(title, 1330,85+textHeight);*/
   fill(211,211,211);
   rect(810, 70, 200, 30);
   fill(0);
   textSize(13);

   text(selectYear+" US Tornado Count HeatMap", 810,85);

    
  
  }
  void knob(){
      myKnobB = cp5.addKnob("selectYear")
             .setRange(2000,2017)
             .setValue(220)
             .setPosition(10,350)
             .setRadius(70)
             .setNumberOfTickMarks(16)
             .setTickMarkLength(4)
             .snapToTickMarks(true)
             .setColorForeground(color(255))
             .setColorBackground(color(0, 160, 100))
             .setColorActive(color(255,255,0))
             .setDragDirection(Knob.HORIZONTAL)
             ;

  }
  
  void key(){
     //stroke(2);
     //fill(211,211,211);
     //rect(700,0,800, 500);
     fill(0);
     text("Key",1020, 110);
     
     fill(#E21A1C);
     rect(1020, 120, 20,40);
     fill(0);
     text(">30",1050, 145);
     
     fill(#FC4E2B);
     rect(1020, 160, 20,40);
     fill(0);
     text("21-30",1050, 185);
     
     fill(#FD8C3C);
     rect(1020, 200, 20,40);
     fill(0);
     text("9-20",1050, 225);
     
     fill(#FDB24C);
     rect(1020, 240, 20,40);
     fill(0);
     text("6-10",1050, 265);
     
     fill(#FFD976);
     rect(1020, 280, 20,40);
     fill(0);
     text("1-4",1050, 305);
     
     fill(#FFE5CC);
     rect(1020, 320, 20,40);
     fill(0);
     text("<1",1050, 345);
  
  }


  void heatmap(){
    
      String filename3 =Integer.toString(selectYear);
      println(filename3);
      int [] tornado = {};
      java.util.Arrays.fill(tornado, -1000);//empty the array
      java.util.Arrays.fill(state, "");//empty the array
     fill(211,211,211);
     rect(700,0,1300, 800);
     filename3 = "/data/years/"+filename3+".csv";
  
     table = loadTable(filename3, "header");
      for (int i = 0; i < table.getRowCount(); i++) {
        TableRow row = table.getRow(i);
        tornado = append(tornado, row.getInt("Count"));
        State = append(State, row.getString("st"));
      }
      //impactData((Integer.toString(selectYear)));
      int t =0;
      //int y =105;
      //int x =800;
     for( int y =105; y<490; y=y+Y){
       for (int x=800; x<1000; x=x+X){
             if(tornado[t]>30){
             fill(#E21A1C);
             }
             if(tornado[t]>20&&tornado[t]<=30){
             fill(#FC4E2B);
             }
             if(tornado[t]>10&&tornado[t]<=20){
              fill(#FD8C3C);
             }
             if(tornado[t]>5&&tornado[t]<=10){
             fill(#FDB24C);
             }
             if(tornado[t]>=1&&tornado[t]<=5){
             fill(#FFD976);
             }
             if(tornado[t]<1){
              fill(#FFE5CC);
             }
             rect(x,y,X,Y);
             fill(0);//, 102, 153);
             textSize(13);
             text(State[t],x+X*.40, y+Y*0.93);
             t+=1;  
           }
           }
           
    }
  
  
    // Useful for drawing geographically referenced items on screen.
    public PVector geoToPixel(PVector geoLocation) {
        return new PVector(mapWidth*(geoLocation.x-mapGeoLeft)/(mapGeoRight-mapGeoLeft),
                           mapHeight - mapHeight*(geoLocation.y-mapGeoBottom)/(mapGeoTop-mapGeoBottom));
    }  
}
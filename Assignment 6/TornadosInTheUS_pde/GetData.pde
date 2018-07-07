void initialData() {
  CSV = loadStrings("torn18.csv");

  myData = new String[CSV.length][360];
  for (int i=0; i<CSV.length; i++) {
    myData[i] = CSV[i].split(";");
    
  }
  //println(myData[3][0]);
}
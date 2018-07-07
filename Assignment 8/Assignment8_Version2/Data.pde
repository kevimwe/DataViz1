

class Data {

  String tableName;
  Table table;

  Data() {//String tableName_

    //tableName = tableName_;
  }

  Table readData(String table1) {

    try {  
      table = loadTable("/data/bubble/"+table1+".csv", "header, csv");
    } 
    catch(Exception e) {
    }

    return table;
  }

  int getNumRows() {
    return table.getRowCount();
  }

  float getMaxValue(String column) {

    float maxValue = 0.0;

    if (table != null) {
      for (TableRow row : table.rows()) {
        maxValue = max(maxValue, row.getFloat(column));
      }
    }

    return maxValue;
  }

  float getMinValue(String column) {

    float minValue = MAX_FLOAT;

    if (table != null) {
      for (TableRow row : table.rows()) {
        minValue = min(minValue, row.getFloat(column));
      }
    }

    return minValue;
  }
  
  void impactData(String filename2){

    java.util.Arrays.fill(tornado, -1000);//empty the array
    java.util.Arrays.fill(loss, 0);//empty the array
    java.util.Arrays.fill(fatality, 0);//empty the array
    java.util.Arrays.fill(injury, 0);//empty the array
    java.util.Arrays.fill(year, 0);//empty the array
    java.util.Arrays.fill(state, "");//empty the array

   filename2 = "/data/years/"+filename2+".csv";
   //println()
   table1 = loadTable(filename2, "header");
    //println(filename2);
    for (int i = 0; i < table1.getRowCount(); i++) {
      TableRow row = table.getRow(i);
      //month = append(month, row.getInt("Month"));
      tornado = append(tornado, row.getInt("Count"));
      fatality = append(fatality, row.getInt("Fatality"));
      injury = append(injury, row.getInt("Injury"));
      loss = append(loss, row.getInt("Loss"));
      State = append(State, row.getString("st"));
      Year = append(Year, row.getInt("yr"));
      
    }
  

  } 
  
  void loadlocation(String filename){
    filename = "/data/loc/"+filename+".csv";
    ///println(filename);
    java.util.Arrays.fill(sLon, -1000);//empty the array
    java.util.Arrays.fill(sLat, -1000);//empty the array
    java.util.Arrays.fill(year, -1000);//empty the array
    java.util.Arrays.fill(state, "");//empty the array
    table2 = loadTable(filename, "header");
    for (int i = 0; i < table2.getRowCount(); i++) {
      TableRow row = table2.getRow(i);
      sLon = append(sLon, row.getInt("slon"));
      sLat = append(sLat, row.getInt("slat"));
      eLon = append(eLon, row.getInt("elon"));
      eLat = append(eLat, row.getInt("elat"));
      state = append(state, row.getString("st"));
      year = append(year, row.getInt("yr"));
      //println("Row: "+i+" year :"+year[i] +" State :"+state[i] +" Longitude: " +sLon[i] +" Latitude: "+sLat[i]);
  
    }  


}
}
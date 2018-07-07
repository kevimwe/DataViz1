void end(){
  for (int y = 350; y < 500; y += 10) {
    for (int x = 1; x < 60; x += 10) {
      line(x, y, x+6, y+6);
      line(x+6, y, x, y+6);
    }
  }
}
   
void rain(){
  
  //fast rain
    if (frameCount % 15 == 0) {
      x = append(x, random(moveX-1050, moveX+120));
      y = append(y, 100);//random(height));
      dirx = append(dirx, 1);
      diry = append(diry, 2);
      }
    //Slow rain  
   if (moveX-300>400) {  
   if (frameCount % 0.5 == 0) {
      x = append(x, random(moveX-850, moveX+120));
      y = append(y, 100);//random(height));
      dirx = append(dirx, 1);
      diry = append(diry, 2);
      }
   }

  int i = 0;
  while (i<x.length) {
    fill(91,192,222);
    ellipse(x[i], y[i], sz, sz);
    x[i] += dirx[i];
    y[i] += diry[i];
    i +=1;
  }
  
}
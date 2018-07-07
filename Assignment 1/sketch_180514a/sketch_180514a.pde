
size(815, 725); //set the figure size
//background(0,0, 0); // set the background
noStroke();
PImage img;
img = loadImage("ninja.PNG");
scale(1.5);
image(img, 100, 70); //load Image
fill(254, 254, 205,63); //set opacity for tracing
rect(100, 70, 327, 327);
stroke(10);
strokeWeight(3);
line(191, 135, 358, 280);
line(191, 135, 181, 195);
line(182, 195, 410, 383);
line(160, 282, 286, 283);
line(161, 282, 175, 372);
line(135, 375, 175, 372);
noFill();
arc(325, 235, 210, 260, 1.1*PI, 1.29*PI);
arc(344, 218, 245, 199.5, 0.9*PI, 1.1*PI);
arc(329, 230, 208, 175, 0.8*PI, 0.96*PI);
arc(283, 218, 150, 192, 1.2*PI, 1.55*PI);
//Working on fingers
arc(336, 276, 6, 22, 0.6*PI, 1.50*PI);
arc(342, 250, 17, 32, 1.9*PI, 2.60*PI);
line(349, 262, 362, 263);
line(344, 268, 368, 273);

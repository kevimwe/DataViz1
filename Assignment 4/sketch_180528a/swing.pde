Pendulum p;

class Pendulum  {
//Many, many variables to keep track of the Pendulum’s various properties
  PVector location;    // Location of bob
  PVector origin;      // Location of arm origin
  float r;             // Length of arm
  float angle;         // Pendulum arm angle
  float aVelocity;     // Angle velocity
  float aAcceleration; // Angle acceleration
  float damping;       // Arbitrary damping amount
  //int moveY =440;
 
  Pendulum(PVector origin_, float r_) {
    origin = origin_.get();
    location = new PVector();
    r = r_;
    angle = PI/4;
 
    aVelocity = 0.0;
    aAcceleration = 0.0;
    //An arbitrary damping so that the Pendulum slows over time
    damping = 0.995;
  }

 
  void go() {
    update();
    display();
    clouds();
    birds();
    rain();
    //house();
 
  }
  void update() {
    float gravity = 1;
    aAcceleration = (-1 * gravity / r) * sin(angle);
    aVelocity += aAcceleration;
    angle += aVelocity;
 
  }

  void display() {

    moveX++;
    stroke(0);
    fill(254, 265, 215,90); //set opacity for tracing
    //rect(250, 250, 250,250);
    location.set(r*sin(angle),r*cos(angle),0);
    location.add(origin);

    if(frame<1000){
    //tHE dUMMY
    //head
    strokeWeight(2);
    fill(#E2A684);
    ellipse(location.x-123,location.y+240,12,17);
    line(location.x-134,location.y+237,location.x-120,location.y+227);
    line(location.x-134,location.y+232,location.x-120,location.y+231);
    ellipse(location.x-123,location.y+235,2,3);
    ellipse(location.x-118,location.y+240,7,4);
    fill(255);
    textSize(17);
    if(moveX>=140 && moveX<165 && sun==0){
    text("What!!!",location.x-110, location.y+207, 100, 200);
     }
     
   if(moveX>=200 && moveX<230&&sun==0){
    text("GO away!!! LEAVE ME ALONE!!",location.x-110, location.y+207, 300, 200);
     }
     
   if(moveX>=260 && moveX<390 && sun==0){
    text("I hate when people tell me what to do!!",location.x-110, location.y+207, 300, 200);
     }
     
   if(moveX>=450 && moveX<560 && sun==0){
    text("Damn!!! This weather is acting up...",location.x-110, location.y+207, 300, 200);
     }
     
    if(moveX>=650 && moveX<700 && sun==0){
    text("Well, I'll just going to enjoy my swing",location.x-110, location.y+207, 300, 200);
     }
    
    //body
    fill(#8FB77B);
    ellipse(location.x-125,location.y+260,23,36);
    fill(175);
    ellipse(location.x-125,location.y+250,16,5);
    
    //legs
    fill(#EBD3D1);
    strokeWeight(1.4);
    ellipse(location.x-108,location.y+258,4,8);
    ellipse(location.x-105,location.y+265,4,8);
    strokeWeight(3);
    line(location.x-115,location.y+267,location.x-107,location.y+265);
    line(location.x-113,location.y+260,location.x-110,location.y+259);


    
    //Pendulum Wire
    strokeWeight(3);
    stroke(0);
    }
    line(origin.x-125,origin.y+260,location.x-125,location.y+280);
    line(location.x-136,location.y+290,location.x-110,location.y+270);
    
    
    

    beginShape();
    strokeWeight(4);
    ellipse(524,265,16,16);
    strokeWeight(6);
    line(460, 490, 520, 270);
    line(595, 490, 530, 270);
    endShape();
    
    /////collapsing body
    
     //head
    //translate(100, 100);
    //rotate(2);
    if(frame >1000 && frame<1100){
    pushMatrix();
    if(frame<1099){
    moveXX = moveXX+20;
    }
    
    //int fly = 0;
    strokeWeight(2);
    fill(#E2A684);
    ellipse(moveXX-123,moveY,12,17);
    line(moveXX-134,moveY-3,moveXX-120,moveY-13);
    line(moveXX-134,moveY-8,moveXX-120,moveY-9);
    ellipse(moveXX-123,moveY-5,2,3);
    ellipse(moveXX-118,moveY,7,4);
    fill(255);
    //body
    fill(#8FB77B);
    ellipse(moveXX-125,moveY+20,23,36);
    fill(175);
    ellipse(moveXX-125,moveY+10,16,5);
    
    //legs
    fill(#EBD3D1);
    strokeWeight(1.4);
    ellipse(moveXX-108,moveY+18,4,8);
    ellipse(moveXX-105,moveY+25,4,8);
    strokeWeight(3);
    line(moveXX-115,moveY+27,moveXX-107,moveY+25);
    line(moveXX-113,moveY+20,moveXX-110,moveY+19);

    //moveX =moveX-30;
    
    //Pendulum Wire
    strokeWeight(3);
    stroke(0);

    line(origin.x-125,origin.y+260,location.x-125,location.y+280);
    line(location.x-136,location.y+290,location.x-110,location.y+270);
    
    if(moveY<=450){
    moveY = moveY+10;
    }
    popMatrix();
    }
    println(frame);

  }
}
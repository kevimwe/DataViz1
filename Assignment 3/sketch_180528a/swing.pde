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


    //tHE dUMMY
    //head
    strokeWeight(2);
    fill(#E2A684);
    ellipse(location.x-123,location.y+240,12,17);
    line(location.x-134,location.y+237,location.x-120,location.y+227);
    line(location.x-134,location.y+232,location.x-120,location.y+231);
    ellipse(location.x-123,location.y+235,2,3);
    ellipse(location.x-118,location.y+240,7,4);
    
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

    line(origin.x-125,origin.y+260,location.x-125,location.y+280);
    line(location.x-136,location.y+290,location.x-110,location.y+270);
    
    stroke(0);
    fill(0);
    rect(0, 488, 1000,500, 1000, 500, 1000, 495);
    

    beginShape();
    strokeWeight(4);
    ellipse(374,260,16,16);
    strokeWeight(6);
    line(310, 490, 370, 270);
    line(445, 490, 380, 270);
    endShape();

  }
}
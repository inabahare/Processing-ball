class Ball {
  
  // The id of the ball (used for text)
  int id;
  
  // The vectors used to describe the movement
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  // The variables used to describe the ball
  float diameter;
  float dHalf;
  float mass;
  
  Ball(int tmpId, float tmpMass){
    acceleration = new PVector(0,0);
    id = tmpId + 1;
    mass = tmpMass;
  }
  
  void applyFriction(float fMag){
    float frictionMagnitude = fMag;
    PVector friction = velocity.get();
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMagnitude);
    this.applyForce(friction);
  }
  
  void applyForce(PVector tmpForce){
    PVector force = PVector.div(tmpForce, mass);
    acceleration.add(force);
  }
  
  // Set the startposision
  void setStart(float startX, float startY){
    location = new PVector(startX, startY);
  }
  
  // Sets the start velocity
  void setVelocity(float startVelX, float startVelY){
    velocity = new PVector(startVelX, startVelY);
  }
  
  // Sets the start size
  void setSize(float d){
    diameter = 5;
    dHalf = diameter/2;
  }
  
  void edgeDetection(float friction){
    
    if(location.x + dHalf > width){
      velocity.x *= -1;
      location.x = width - dHalf;
      this.applyFriction(friction);
    }
    
    if(location.x - dHalf <= 0){
      velocity.x *= -1;
      this.applyFriction(friction);
    }
    
    if(location.y + dHalf >= height){
      velocity.y *= -1;
      location.y = height - dHalf;
      this.applyFriction(friction);
    }
    
    if(location.y - dHalf == 0){
      velocity.y *= -1;
      this.applyFriction(friction);
    }
    
    
  }
  
  void move(){
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void run(){
    fill(0);
    diameter = 10;
    ellipse(location.x, location.y, diameter, diameter);
  }
}

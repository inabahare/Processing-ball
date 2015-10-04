class Ball {
  
  // The vectors used
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  // The variables used
  float diameter;
  
  Ball(){
    acceleration = new PVector(0,0);
  }
  
  // Set the startposision
  void setStart(float startX, float startY){
    location = new PVector(startX, startY);
  }
  
  // Sets the start velocity
  void setVel(float startVelX, float startVelY){
    velocity = new PVector(startVelX, startVelY);
  }
  
  // Sets the start size
  void setSize(float d){
    diameter = d;
  }
  
  
}

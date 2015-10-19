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

  color cc = color(10, 4, 90);

  Ball(int tmpId, float tmpMass) {
    // Initiate the acceleration vector
    acceleration = new PVector(0, 0);
    id = tmpId;
    mass = tmpMass;
  }

  // Set the startposision
  void setStart(float startX, float startY) {
    location = new PVector(startX, startY);
  }

  // Sets the start velocity
  void setVelocity(float startVelX, float startVelY) {
    velocity = new PVector(startVelX, startVelY);
  }

  // Sets the start size
  void setSize(float d) {
    diameter = d;
    dHalf = diameter/2;
  }

  void applyFriction(float fMag) {
    float frictionMagnitude = fMag;
    PVector friction = velocity.get();
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMagnitude);
    this.applyForce(friction);
  }

  // Apply a force
  void applyForce(PVector tmpForce) {
    PVector force = PVector.div(tmpForce, mass);
    acceleration.add(force);
  }


  // Detect edges
  void edgeDetection(float friction) {
    if (location.x + dHalf >= width) {
      velocity.x *= -1;
      location.x = width - dHalf;
      this.applyFriction(friction);
    }

    if (location.x - dHalf <= 0) {
      velocity.x *= -1;
      this.location.x = dHalf;
      this.applyFriction(friction);
    }

    if (location.y + dHalf >= height) {
      velocity.y *= -1;
      location.y = height - dHalf;
      this.applyFriction(friction);
    }
  }


  void bounce(ArrayList<Ball> bll) {
    // PVector otherBall;
    for (int i = 0; i < numberOfBalls; i++) {
      if (i == id) {
        continue;
      }
      Ball otherBall = bll.get(i);

      PVector dif = PVector.sub(this.location, otherBall.location);

      float diffMag = dif.mag();

      if (abs(diffMag) == diameter) {
        this.velocity.mult(-1);
      }
    }
  }

  void move() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void run() {
    fill(cc);
    ellipse(location.x, location.y, diameter, diameter);
    // text(nf(location.x, 2, 2) + ", " + nf(location.y, 2,2), location.x - 20, location.y - 10);
  }
}

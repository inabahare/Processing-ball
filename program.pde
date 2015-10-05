ArrayList<Ball> balls = new ArrayList<Ball>();

// Window data
color bg = color(255);
int sizeX = 200;
int sizeY = 200;

// Ball data
int numberOfBalls = 5;

// Global data
PVector gravity = new PVector(0,5);

void setup(){
  background(bg);
  size(sizeX, sizeY);
  
  // frameRate(60);
  smooth();
  
  // Add balls to array list
  for(int i = 0; i < numberOfBalls; i++){
    
    balls.add(new Ball(i, 100));
    balls.get(i).setStart(random(5, width - 5), random(5, 10));
    balls.get(i).setVelocity(random(-2 , 2), random(-3, 3));
    balls.get(i).setSize(random(1, 5));
  }
}

void draw(){
  background(bg);
  
  for(Ball ball : balls){
    // ball.applyFriction(0.1);
    ball.applyForce(gravity);
    ball.move();
    ball.run();
    ball.edgeDetection(30);
    ball.bounce(balls);
    
    // text(ball.location.x, 30, 5 * ball.id);
  }
}

ArrayList<Ball> balls = new ArrayList<Ball>();

// Window data
color bg = color(255);
int sizeX = 200;
int sizeY = 200;

// Ball data
int numberOfBalls = 100;

// Global data
PVector gravity = new PVector(0,4);

void setup(){
  background(bg);
  size(sizeX, sizeY);
  
  frameRate(60);
  smooth();
  
  // Add balls to array list
  for(int i = 0; i < numberOfBalls; i++){
    
    balls.add(new Ball(i, 100));
    balls.get(i).setStart(random(5, width - 5), random(5, 10));
    balls.get(i).setVelocity(random(-1 , 1), random(-1, 1));
    balls.get(i).setSize(10);
  }
}

void draw(){
  background(bg);
  
  for(Ball ball : balls){
    ball.applyForce(gravity);
    ball.edgeDetection(30);
    ball.bounce(balls);
    ball.move();
    ball.run();
    
  }
}

ArrayList<Ball> balls = new ArrayList<Ball>();

// Window data
color bg = color(255);
int sizeX = 800;
int sizeY = 800;

// Ball data
int numberOfBalls = 500;

// Global data
PVector gravity = new PVector(0,8);

void setup(){
  background(bg);
  size(sizeX, sizeY);
  
  frameRate(60);
  smooth();
  
  // Add balls to array list
  for(int i = 0; i < numberOfBalls; i++){
    
    balls.add(new Ball(i, 100));
    balls.get(i).setStart(random(5, width - 5), random(5, 10));
    balls.get(i).setVelocity(random(-2 , 2), random(-3, 3));
    balls.get(i).setSize(50);
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

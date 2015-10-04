ArrayList<Ball> balls = new ArrayList<Ball>();

// Window data
color bg = color(255);
int sizeX = 200;
int sizeY = 200;

// Ball data
int numberOfBalls = 1;

void setup(){
  background(bg);
  size(sizeX, sizeY);
  
  // Add balls to array list
  for(int i = 0; i < numberOfBalls; i++){
    balls.add(new Ball());
  }
}

void draw(){
  background(bg);
  
  for(Ball ball : balls){
    ball.setStart(random(5, width - 5), random(5, 10));
    ball.setVelocity(random(-2,2), random(-5, 5));
    ball.setSize(5);
  }
}

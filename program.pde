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
    balls.get(i).setStart(random(5, width - 5), random(5, 10));
    balls.get(i).setVelocity(random(-2,2), random(-5, 5));
    balls.get(i).setSize(random(1, 5));
  }
}

void draw(){
  background(bg);
  
  for(Ball ball : balls){
    
    
    ball.run();
  }
}

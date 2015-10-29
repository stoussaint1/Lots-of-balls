//declare variables
float x, y, velX, velY, diam;
float x1, y1, velX1, velY1, diam1;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  diam = 80;
  velX = random(-5, 5);
  velY = random(-5, 5);
  x1 = width/2;
  y1 = height/2;
  velX1 = random(-5, 5);
  velY1 = random(-5, 5);
  diam1 = 50;
}

void draw() {
  //draw background to cover previous frame
  background(random(25), random(255), random(255));

  //draw ball
  ellipse(x, y, diam, diam);
  fill(random(255), random(204), random(255));

  //add velocity to position
  x += velX;
  y += velY;

  //bounce ball if it hits walls
  if (x + diam/2 >= width) {
    velX = -abs(velX);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x - diam/2 <= 0) {
    velX = abs(velX);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y + diam/2 >= height) {
    velY = -abs(velY);
  } else if (y - diam/2 <= 0) {
    velY = abs(velY);
  }
  
  //draw ball
  ellipse(x1, y1, diam1, diam1);
  fill(random(255), random(204), random(255));
  
  //add velocity to position
  x1 += velX1;
 y1 += velY1;
 
 //bounce ball if it hits walls
  if (x1 + diam1/2 >= width) {
    velX1 = -abs(velX1);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x1 - diam1/2 <= 0) {
    velX1 = abs(velX1);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y1 + diam1/2 >= height) {
    velY1 = -abs(velY1);
  } else if (y1 - diam1/2 <= 0) {
    velY1 = abs(velY1);
  }
}
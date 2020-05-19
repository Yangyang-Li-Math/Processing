float x = 100, y = 0;

float speed = 0, gravity = 0.1;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  
  fill(0);
  noStroke();
  ellipse(x, y, 10, 10);
  
  y = y + speed;
  speed = speed + gravity;
  
  if (y > height) {
    speed = speed * -0.95;
    
    y = height;
  }
}

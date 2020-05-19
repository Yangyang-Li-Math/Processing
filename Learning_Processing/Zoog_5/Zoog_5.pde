float zoogX = 100, zoogY = 100, w = 60, h = 60, eyeSize = 16;

float xspeed = 3, yspeed = 1;

void setup() {
  size(200, 200);
  frameRate(30);
}

void draw() {
  zoogX = zoogX + xspeed;
  zoogY = zoogY + yspeed;
  
  if ((zoogX > width) || (zoogX < 0)) {
    xspeed = -xspeed;
  }
  
  if ((zoogY > height) || (zoogY < 0)) {
    yspeed = - yspeed;
  }
  
  background(255);
  
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  stroke(0);
  fill(150);
  rect(zoogX, zoogY, w/6, h*2);
  
  stroke(0);
  fill(255);
  ellipse(zoogX, zoogY-h/2, w, h);
  
  //Draw Zoog's eyes
  fill(0);
  ellipse(zoogX-w/3, zoogY-h/2, eyeSize, eyeSize * 2);
  ellipse(zoogX+w/3, zoogY-30, eyeSize, eyeSize * 2);
  
  // Draw Zoog's legs
  stroke(150);
  line(zoogX-w/12, zoogY+h, zoogX-w/4, zoogY + h + 10);
  line(zoogX+w/12, zoogY+h, zoogX+w/4, zoogY + h + 10);
}

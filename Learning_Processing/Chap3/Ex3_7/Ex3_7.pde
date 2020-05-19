void setup() {
  size(800, 800);
}

void draw() {
  stroke(0);
  strokeWeight(dist(pmouseX, pmouseY, mouseX, mouseY));
  line(pmouseX, pmouseY, mouseX, mouseY);
}

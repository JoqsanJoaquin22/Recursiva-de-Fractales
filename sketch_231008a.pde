int angle = 40;
float branchLength = 110;
float branchRatio = 0.67;

void setup() {
  size(500, 500);
  background(0,0,0);
  stroke(24,255,255);
  noLoop();
}

void draw() {
  translate(width / 2, height);
  branch(branchLength, 8);
}

void branch(float len, int level) {
  float sw = map(len, 2, branchLength, 1, 8);
  strokeWeight(sw);
  line(0, 0, 0, -len);
  translate(0, -len);
  
  if (level >0) {
    pushMatrix();
    rotate(radians(angle));
    branch(len * branchRatio, level - 1);
    popMatrix();
    
    pushMatrix();
    rotate(-radians(angle));
    branch(len * branchRatio, level - 1);
    popMatrix();
  }
}

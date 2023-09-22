int originX = (int) (Math.random()*800);
int originY = 0;
int endX = 0;
int endY = 0;

void draw() {
  frameRate(2);
  originX = (int) (Math.random()*800);
  originY = 0;
  endX = 0;
  endY = 0;
}

void setup() {
  size(800, 800);
  background(0);
  stroke(255);
}

void mousePressed() {
  while (endY < 800) {
    endX = originX + (int)(Math.random()*20);
    endY = originY + (int)(Math.random()*30);
    line(originX, originY, endX, endY);
    originX = endX;
    originY = endY;
  }
}

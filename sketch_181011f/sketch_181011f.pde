
Ball[] ballArray = new Ball[3];
int i;
int a, b, c;

void setup() {
  size(800, 800);
  ballArray[i] = new Ball();
}

void draw() {
  background(20);
  ballArray[i].update();
  ballArray[i].display();
}

class Ball {
  float x, y;
  float dx, dy;
  float s;

  // this function is called a constructor. 
  // it is called when a new Ball object is created.
  Ball() { 
    x = width/2;
    y = height/2;
    dx = random(-5, 5);
    dy = random(-5, 5);
    s = 50;
  }

  void display() {
    ellipse(x, y, s, s);
  }

  void update() {
    x += dx;
    y += dy;

    if (x > width - s/2 || x < s/2) {
      dx *= -1;
    }
    if (y > height - s/2 || y < s/2) {
      dy *= -1;
    }
  }
}

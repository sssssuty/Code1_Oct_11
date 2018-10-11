int num = 10;

float[] x = new float[num];
float[] y = new float[num];
float[] dx = new float[num];
float[] dy = new float[num];
float[] s = new float[num];

void setup() {
  size(800, 800);
  for (int i = 0; i < x.length; i++) {
    x[i] = width/2;
    y[i] = height/2;
    dx[i] = random(-10, 10);
    dy[i] = random(-10, 10);
    s[i] = i*3 + 1;
    println(s[i]);
  }
}

void draw() {
  background(200);

  for (int i = 0; i < x.length; i++) {
    //float s = 50;
    fill(20);
    ellipse(x[i], y[i], s[i], s[i]);
    x[i] += dx[i];
    y[i] += dy[i];

    if (x[i] > width-s[i]/2 || x[i] < s[i]/2) {
      dx[i] = -dx[i];
    }
    if (y[i] > height-s[i]/2 || y[i] < s[i]/2) {
      dy[i] = -dy[i];
    }
  }
}

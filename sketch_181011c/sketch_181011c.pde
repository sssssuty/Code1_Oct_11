int gridW = 10;
int gridH = 10;

boolean[][] isRed = new boolean[gridW][gridH];
float[][] s = new float [gridW][gridH];

void setup() {
  size(800, 800);
  noStroke();
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      
      if (i >= gridW/2 && j >= gridH/2) {
        isRed[i][j] = true;
      } else {
        isRed[i][j] = false;
      }
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      s[i][j]=(i+j)*3;
      
      if (isRed[i][j] == true) {
        fill(200, 0, 0);
      } else {
        fill(200, 200, 200);
      }
      //float w = width/gridW;
      //float h = height/gridH;
      float xPos = i * width/gridW + s[i][j]/2;
      float yPos = j * height/gridH + s[i][j]/2;
      
      ellipse(xPos, yPos, s[i][j], s[i][j]);
    }
  }
}

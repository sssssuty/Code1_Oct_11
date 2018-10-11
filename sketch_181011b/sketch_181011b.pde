int gridW = 6;
int gridH = 3;

String[][] my2dArray = new String[gridW][gridH];

void setup() {
  size(600, 600);
  textAlign(LEFT, TOP);
  noFill();
  stroke(255);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      my2dArray[i][j] = "i=" + i + ", j=" + j;
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      text(my2dArray[i][j], i * width/gridW, j * height/gridH);
    }
  }
}

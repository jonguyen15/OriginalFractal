public void buildCircle(int x, int y, int z, int j) {
  if (z < 10) ellipse(x, y, z, j);
  else {
    ellipse(x, y, z, j);
    buildCircle(x, y, z-10, j-10);
  }
}
public void setup() {
  background(255);
  size(500, 500);
}
public void draw() {
  noLoop();
  for(int i = 1; i < 5; i++){
    for (int k = 1; k < 5; k++){
      buildCircle(i * 100, k*100, 100, 100);
    }
  }
}

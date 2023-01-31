int i = 0;
int n = 0;
int m = 0;
float o = 0;
float b = 0;

void setup() {
  size(900, 900, P3D);
}

void draw() {
  background(0);
  fill(i, n, m);
  translate(width/2, height/2);
  rotateX(o);
  rotateZ(b);
  sphere(mouseX);
  i++;
  o = o * 0.01;
  b = b + 0.01;
  if (i >= 50) {
    n++;
    if (i == 255) {
      i = 0;
    }
  }
  if (n >= 50) {
    m++;
    if (n == 255) {
      n = 0;
    }
  }
  if (m == 255) {
    m = 0;
  }
}

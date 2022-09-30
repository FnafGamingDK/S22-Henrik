void setup(){
  size(110, 30);
}

void draw() {
  background(100,100,100);
  int s = second(); 
  int m = minute(); 
  int h = hour(); 
  textSize(30);
  text(h+":"+m+":"+s, 3, 25);
}

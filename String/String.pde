String str = "Hej med dig";

void setup() {
  size(400, 400);
  textSize(50);
}

void draw() {
  for (int i= 0; i < str.length(); i++){
  text(str.charAt(i), 50+i*30, 100);
  }
 }

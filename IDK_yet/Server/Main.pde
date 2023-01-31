import processing.net.*;

Server server;
int val = 0;
int i = 1;

void setup() {
  size(400, 200);
  server = new Server(this, 10000); 
}

void draw() {
  val = (val + 1 * i) % 255;
  background(0);
  textSize(50);
  text("Mojn", val, height/2);
  server.write(val);
}

void keyPressed() {
  if(key == '+') i++;
  if(key == '-') i--;
  if(key == '0') i = 1;
}

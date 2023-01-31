import processing.net.*;

final String IP = "10.130.145.89";
final int PORT = 10000;

Client client;
int dataIn;

void setup() {
  size(400, 200);
  client = new Client(this, IP, PORT);
}

void draw() {
  dataIn = client.read();
  background(0);
  textSize(50);
  text("Mojn", dataIn, height/2);
}

class Platform {
  PVector pos;
  Platform(float x, float y) {
    pos = new PVector(x, y);
  }
  void show() {
    stroke(255);
    line(pos.x, pos.y, pos.x+100, pos.y);
  }
  boolean collide(PVector p) {
    if (p.x > pos. x && p.y > pos.y && p.x < pos.x+100 && p.y < pos.y+10) {
      return true;
    }
    return false;
  }
}

float x = 620;
float y = 325;
float xspeed = -0.8;
class car {

  void drawing() {
    fill(255);
    rect(x, y, 30, 20);
    x = x + xspeed;
  }
}

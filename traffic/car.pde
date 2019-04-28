float x = 620;
float y = 180;
float xspeed = -0.8;
PShape carShape; //Shape of the car
PImage carImg; //Image of the car
class car {

  void drawing() {
    fill(255);
    carShape = createShape(RECT, x, y, 250, 250);
    carShape.setTexture(carImg);
    shape(carShape);
    x = x + xspeed;
  }
}

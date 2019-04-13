float lightX = 300; //X Position
float lightY = 90;//Y Position
float crclD = 30;// Circle diameter

//COLORS:
//darkRed(96, 21, 11)
//red(255, 0, 0)
//darkYellow(137, 117, 0)
//yellow(255, 233, 0)
//darkGreen(17, 114, 2)
//green(59, 255, 0)

class traffic_light {

  void show() {

    //draw the other forms of the traffic light
    strokeWeight(1.8);
    stroke(0);
    fill(255);
    rectMode(CENTER);
    rect(lightX, lightY + 130, 10, 115);

    fill(0);
    stroke(255);
    rect(lightX, lightY + 35, 40, 110);

    colorMode(RGB);
    ellipseMode(CENTER);

    fill(96, 21, 11);
    ellipse(lightX, lightY, crclD, crclD);

    fill(137, 117, 0);
    ellipse(lightX, lightY + 35, crclD, crclD);

    fill(17, 114, 2);
    ellipse(lightX, lightY + 70, crclD, crclD);
  }

  void checkColor() {
    if (mode == "red") { 
      fill(255, 0, 0);
      ellipse(lightX, lightY, crclD, crclD);
    }

    if (mode == "yellow") {
      fill(255, 233, 0); 
      ellipse(lightX, lightY + 35, crclD, crclD);
    }

    if (mode == "green") {
      fill(59, 255, 0); 
      ellipse(lightX, lightY + 70, crclD, crclD);
    }
  }
}

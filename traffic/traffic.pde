//Objects
Timer timer;
car car;
traffic_light light;

//set the img
PImage street;

//Timer
Timer green_yellowTimer;
Timer yellow_redTimer;
Timer reaction_redTimer;
Timer red_greenTimer;
Timer red_greenTimer2;        
String mode = "green";

void setup() {
  size(600, 400);
  //Initialize the objects
  car = new car();
  light = new traffic_light();
  timer = new Timer(0);

  //initialize the timer
  timer.reset();

  //initialize the images
  street = loadImage("street.jpg");
  carImg = loadImage("car.png");
}

void draw() {
  background(0);  

  //background with the image
  image(street, 0, 0);

  //set the car back to the other side
  if (x < -220) {
    x = 630;
    mode = "green";
    timer.reset();
  }

  //draw the "normal" objects
  light.show();
  car.drawing();
  light.checkColor();

  //check if 1st the timer gets below 0
  if (green_yellowTimer.getTime() < 0) {
    mode = "yellow";
  }

  //check mode(green)
  if (mode == "green") {
    //count down the 1st timer
    green_yellowTimer.countDown();
  }

  //check mode(yellow)
  if (mode == "yellow") {  

    //check if the x cordinate is far away from the light
    if (x > 385) {
      xspeed = -0.55;

      if (x < 385) {
        xspeed = -0.35;
      }
    } else { 
      xspeed = -0.35;

      //count down the next timer
      yellow_redTimer.countDown();

      //check if the timer gets below 0
      if (yellow_redTimer.getTime() < 0) {
        mode = "red";
      }
    }
  }

  //check mode(red)
  if (mode == "red") {
    reaction_redTimer.countDown();
    red_greenTimer.countDown();

    //check if the timer gets below 0   
    if (reaction_redTimer.getTime() < 0) {
      xspeed = 0;
    }

    //check if the timers gets below 0
    if (red_greenTimer.getTime() < 0) {
      mode = "green";
      xspeed = -0.35;
      red_greenTimer2.countDown();
    }
    if (red_greenTimer2.getTime()< 0) {
      mode = "green";
      xspeed = -1;
    }
  }
}

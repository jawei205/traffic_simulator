class Timer {
  float Time;

  Timer(float set) {
    Time = set;
  }
  float  getTime() {
    return(Time);
  }
  void setTime(float set) {
    Time = set;
  }
  void countDown() {
    Time -= 1/frameRate;
  }
  void reset() {
    green_yellowTimer = new Timer(int(random(3, 5)));
    yellow_redTimer = new Timer(1.6);
    reaction_redTimer = new Timer(0.6);
    red_greenTimer = new Timer(3);
    red_greenTimer2 = new Timer(2);
  }
}

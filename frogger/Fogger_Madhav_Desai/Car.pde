class Car extends Rectangle {
  float speed;

  Car(float x, float y, float w, float h, float s) {
    super(x, y, w, h); 
    speed = s;
  }

  void update() {
    x = x + speed;

    if (speed > 0 && x > width + grid) {
      x = -w-grid;
    } else if (speed < 0 && x < -w-grid) {
      x = width + grid;
    }
  }

  void show() {
    
    if (this.y == height-grid*2) {
      image(car1, x, y);
    }
    if (this.y == height-grid*3) {
      image(car2, x, y);
    }
    if (this.y == height-grid*4){
      image(car3, x, y);
    }
    if (this.y <= height-grid*6){
      fill(139, 69, 19);
      rect(x, y, w, h);
    }

  }
}

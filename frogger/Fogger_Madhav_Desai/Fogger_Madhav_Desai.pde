/* ***********************************************************************
* Madhav Desai
* Frogger Course Project
* 10-3
* 1/22/2021

* This program is my own work - M.D   
* Ilearned the basic frogger code mechanism from the Coding Train https://thecodingtrain.com/CodingChallenges/072.1-frogger.html
* Use the arrow keys to control the frog
*/

Frog frog;
Car[] cars;
Log[] logs;

PImage frogC;
PImage car1;
PImage car2;
PImage car3;
PImage log;

float grid = 50;

void resetGame() {
  frog = new Frog(width/2-grid/2, height-grid, grid);
  frog.attach(null);
}

void setup() {
  //startS();
  size(500, 500);
  frogC = loadImage("Frog.png");
  frogC.resize(50, 50);
  car1 = loadImage("Truck1.png");
  car1.resize(100, 50);
  car2 = loadImage("Car2.png");
  car2.resize(50, 50);
  car3 = loadImage("Car3.png");
  car3.resize(50, 50);
  log = loadImage("Log.png");
  //frog = new Frog(width/2-grid/2, height-grid, grid);
  resetGame();

  int index = 0;
  cars = new Car[8];

  // row 1
  for (int i = 0; i < 2; i++) {
    float x = i * 300;
    cars[index] = new Car(x, height-grid*2, grid*2, grid, -2);
    index++;
  }

  // row 2
  for (int i = 0; i < 2; i++) {
    float x = i * 200 + 150;
    cars[index] = new Car(x, height-grid*3, grid, grid, -3);
    index++;
  }

  // row 3
  for (int i = 0; i < 4; i++) {
    float x = i * 150 + 25;
    cars[index] = new Car(x, height-grid*4, grid, grid, 1.2);
    index++;
  }

  //logs_________________________________________________________________

  logs = new Log[7];

  // row 5
  index = 0;
  for (int i = 0; i < 2; i++) {
    float x = i * 250 + 100;
    logs[index] = new Log(x, height-grid*6, grid*3, grid, 2.3);
    index++;
  }
  // row 6
  for (int i = 0; i < 3; i++) {
    float x = i * 200 + 30;
    logs[index] = new Log(x, height-grid*7, grid*2, grid, -1.3);
    index++;
  }
  // row 7
  for (int i = 0; i < 2; i++) {
    float x = i * 400 + 10;
    logs[index] = new Log(x, height-grid*8, grid*4, grid, 0.5);
    index++;
  }
}

void draw() {
  background(0);
  fill(0, 100, 0);
  rect(0, 0, width, grid*2);
  rect(0, height-grid, width, grid);
  rect(0, height-grid*5, width, grid);
  noStroke();
  fill(0, 191, 255);
  rect(0, 100, 500, 150);
  
  for (Car car : cars) {
    car.show();
    car.update();
    if (frog.intersects(car)) {
      resetGame();
      //println("GAME OVER");
    }
  }

  for (Log log : logs) {
    log.show();
    log.update();
  }

  if (frog.y < height-grid*5 && frog.y > grid*1) {
    boolean ok = false;
    for (Log log : logs) {
      if (frog.intersects(log)) {
        ok = true;
        frog.attach(log);
      }
    }
    if (!ok) {
      resetGame();
    }
  } else {
    frog.attach(null);
  }

  frog.update();
  frog.show();
  end();
}

void keyPressed() {

  if (keyCode == UP) {
    frog.move(0, -1);
  } else if (keyCode == DOWN) {
    frog.move(0, 1);
  } else if (keyCode == RIGHT) {
    frog.move(1, 0);
  } else if (keyCode == LEFT) {
    frog.move(-1, 0);
  }
}

void end(){
  textSize(50);
  fill(255);
  if(frog.y <= height - grid*9){
    text("You Win", 100, 200);
    textSize(30);
    text("Click to play again!", 100, 300);
    if(mousePressed){
     resetGame(); 
    }
  }
}

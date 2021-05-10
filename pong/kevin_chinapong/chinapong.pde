/* ***********************************************************************
 * Full Name: Kevin Wu
 * Assignment Name: Paint By Dot
 * Class: Block One Computer Sciences
 * Date Completed: 6/2/2020
 
 * This program is my own work */
 PVector ball;
PVector v;
float pSpeed;
float leftPos;
float diam;
float rectHeight = 50;
float rectWidth = 10;
float multiplier;
int score;
int menu = 0;
boolean easy;
boolean hard;
float[] ballC = {0, 255, 255};

Paddle pleft;
Paddle pright;

import ddf.minim.*;
Minim sF;
AudioPlayer[] player;

void setup() {

  size(1000, 500);
  reset();
  textSize(25);
  textAlign(CENTER);
  ellipseMode(CENTER);

  pleft = new Paddle(20, 0, 10, 50, 0);
  pright = new Paddle( width-30, mouseY, 10, 50, 1); 


  sF = new Minim(this);

  player = new AudioPlayer[2];
  player[0] = sF.loadFile("XP.mp3");
}

void reset() {
  easy = false;
  hard = false;
  diam = 20;
  score = 0;
  v = new PVector(5, 5);
  pSpeed = 10;
  leftPos = 0;
  multiplier = 4;
  ball = new PVector(random(100, 700), random(50, 500));
}

void draw() {  

  println(mouseX, mouseY);

  background(250);

  if (menu == 0) {
    fill(0);
    text("Welcome To KevinPong! Click anywhere to begin", width/3, 200);
    text("Click The Circles To Change Gamemode", width/2, 250);
    if (mousePressed) {
      menu = 1;
    }
  } else if (menu == 1) {

    pleft.move();
    pleft.display();
    pright.move();
    pright.display();

    ball.add(v);

    fill(255, 0, 0);

    for (int i = 1; i < 500; i += 25) {
      rect(width/2, i, 5, 15);            //red line down the middle
    }

    fill(ballC[0], ballC[1], ballC[2]);

    ellipse(ball.x, ball.y, diam, diam);

    fill(0, 255, 255);

    if ( ball.x < pleft.right() + diam/2 && ball.x > 20
      && ball.y > pleft.top() && ball.y < pleft.bottom()+rectHeight*multiplier ) {
      //ball bounce off paddle on left

      for (int i = 0; i < ballC.length; i ++) {
        ballC[i] = random(255);
      }
      v.x = abs(v.x);
    } 

    //right

    if ( ball.x > width-rectWidth*3-diam/2 && ball.x < width-rectWidth
      && ball.y > mouseY-rectHeight/2-diam/2 && ball.y < mouseY+rectHeight/2+diam/2 ) { 
      //ball bounce off paddle on right
      v.x = -abs(v.x);

      for (int i = 0; i < ballC.length; i ++) {
        ballC[i] = random(255);
      }
    } 

    text(score, 900, height-30);
    text("SCORE: ", 850, height-30);
    fill(0, 255, 0);
    text("Easy", 700, height-30);
    fill(255, 0, 0);
    text("Hard", 598, height-30);

    //easy mode
    if (dist(mouseX, mouseY, 750, height-40)<25 && mousePressed) {
      reset();
      fill(0, 255, 150);
      multiplier = 4;
      pSpeed = 5;
      v.x = 4;
      v.y = 4;
      easy = true;
    } else {
      fill(0, 255, 0);
    }
    ellipse(750, height-40, 50, 50);

    if (easy == true && ball.x > width/2) {
      diam = 50;
    } 

    if (easy == true && ball.x < width/2) {
      diam = 20;
    }

    //hard mode
    if (dist(mouseX, mouseY, 650, height-40)<25 && mousePressed) {
      reset();
      fill(255, 0, 150);      
      multiplier = 6;
      pSpeed = 15;
      v.x = 8;
      v.y = 8;
      hard = true;
    } else {
      fill(255, 0, 0);
    }
    ellipse(650, height-40, 50, 50);

    if (hard == true && ball.x < width/2) {
      diam = 50;
    }

    if (hard == true && ball.x > width/2) {
      diam = 20;
    }

    if ( ball.y > height || ball.y < 0  ) {
      v.y *= -1;
    }

    if ( ball.x < 0) {
      ball.x = width/2;
      ball.y = height/2;
      v.x *= -1;
      score++;
    }

    if ( ball.x > width ) {
      player[0].play();
      player[0].rewind();
      reset();
    }
  }
}

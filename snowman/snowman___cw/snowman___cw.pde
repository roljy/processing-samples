/* ***********************************************************************
* Christine Wang
* Exercise 1 - Robot 1: Draw
* 2020 - 21 SEM 1 - Block 3
* Completed 2020-09-17
* This program is my own work - CW   */

//It's Christmas Day but everybody in Santa's workshop is sad because you stole the one gift that was meant for Santa

//click Santa's gift to open
//press 'h' to close the gift
//click the pipe for a life lesson

//I personally added the ribbon/ bow because I loved trying to make snowmen "prettier" when I was in elementary school


PFont CooperBlack;        //load font

int xPos = 800;           //starting x position of elf 1
int yPos = 0;
int xPos2 = -350;          //starting x position of elf 1
int yPos2 = 400;
final int maxImages=5;    //max frames of bow 

boolean gift = true;      //show/hide gift
boolean clicky = false;   //to open gift
boolean pipe = false;     //pipe message

int currentImage;         //starting frame of bow

PImage img4; PImage img3; PImage img5; PImage img6; PImage img7;
PImage img8; PImage img9; PImage img10; PImage img11; PImage oneImage;

void setup() {
  size(800, 800);
  textSize(40);
  smooth(); 
  textAlign(CENTER);
  
  CooperBlack = loadFont("CooperBlack-40.vlw");

  img3 = loadImage("bow.png");   img4 = loadImage("hat.png");   img5 = loadImage("trees.png"); 
  img6 = loadImage("shadow.png");    img7 = loadImage("giftbox.png");   img8 = loadImage("giftboxOPN.png"); 
  img9 = loadImage ("elf.png");   img10 = loadImage ("elfL.png"); img11 = loadImage ("pipe.png");
}


void draw() {
  background(#a3b8f1);

  image (img9, xPos, yPos);        //elf 1
  image (img9, 0, 0, 0, 0);        //moves 5px left and 1px up, reset when offscreen after delay
  xPos -=5;
  yPos +=1;
  if (xPos < -800) {
    xPos = 800;
    yPos = 0;
  }
  image(img6, 30, 60); image(img6, 0, 0, 0, 0);                 
  image(img5, 0, 0); image(img5, 0, 0, 0, 0);            

  noStroke ();                    //body
  fill(255);
  ellipse(230, 470, 140, 140);
  
  noStroke ();                    //head shadow
  fill (200);
  ellipse(230, 395, 85, 90);
  
  noStroke ();                    //head
  fill(255);
  ellipse(230, 390, 90, 90);

  noStroke ();                    //eyes - left + right
  fill (0);
  ellipse (240, 400, 10, 10);
  ellipse (265, 390, 10, 10);

  fill (#8b3821);                  //nose
  triangle(257, 395, 253, 410, 278, 408);
  ellipse(256, 403, 9, 15);

  strokeWeight (7);                //arm shadow
  stroke (200);
  line (200, 450, 200, 480);

  strokeWeight (6);                //arm
  stroke (0);
  line (200, 450, 180, 500);
  line (188, 485, 198, 490);

  strokeWeight (1);                //highlights
  stroke (255);
  line (190, 484, 188, 489);
  noStroke ();
  fill (2);
  ellipse (180, 501, 6, 5);

  image(img4, 0, 0); image(img4, 0, 0, 0, 0);
  image(img11, 35, 50); image(img11, 0, 0, 0, 0);
  image(img7, 0, 150); image(img7, 0, 0, 0, 0); 
  
  //hide the gift
  if (keyPressed)
  {
    if (key == 'h') {
      gift = false;
      clicky = false;
    }
  }
  
  //open the gift
  //mouse clicked in threshold, clicky = true, img8 (gift) shows 
  if ((mousePressed == true) &&(mouseX > 335) && (mouseX <520) && (mouseY > 530) && (mouseY < 720)) {
    clicky = true;
  }
  if (clicky == true) 
  {
    image(img8, 0, 150);
    image(img8, 0, 0, 0, 0);
  }

  //if pipe clicked
  if ((mousePressed == true)&&(mouseX > 250) && (mouseX < 290) && (mouseY > 410) && (mouseY < 450)) {
    pipe = true;
  } else {
    pipe = false;
  }
  
  //pipe message
  if (pipe ==true) {
    fill (255);
    
    textFont(CooperBlack);
    text("don't smoke", width/2, 80);
  }

  image (img10, xPos2, yPos2);         //elf 2
  image (img10, 0, 0, 0, 0);           // moves 3px right and 1px, reset offscreen after some delay
  xPos2 +=3;
  yPos2 +=1;
  if (xPos2 > 600) {
    xPos2 = -350;
    yPos2 = 400;
  }


showNext();                           //bow "slideshow"
}
void showNext() {
  String imageFilename;               //"frames" of pngs are named in ascending numbers, capped at a MAX of 5
  imageFilename=str(currentImage) + "bowR.png";
  oneImage=loadImage(imageFilename);
  currentImage++;
  if (currentImage>maxImages) currentImage=1;
  image(oneImage, 0, 0);
  {
    delay(90);
  }
  image(img3, 0, 0);
  image(img3, 0, 0, 0, 0);
}

/* ***********************************************************************
* Annie Ding
* Assignment 1: Snowman
* Computer Science Block 2
* Date Completed: October 7, 2020

* This program is my own work - A.D.   */

/* This program creates a Snowman, a bird - which follows the mouse, a tree, 
and a rabbit in the night. If the mouse is clicked, the snowman comes to life 
with a magic hat with three shiny jewels and the bird's mouth is open in 
surprise. If the key "s" is pressed, the sun shows up and it is day. If the key 
"b" is pressed, the bunny will jump out and the snowman is surprised. If the key 
"p" is pressed, the snowman has a pipe. If the bird goes into the tree's leaves, 
some leaves fall. If the key "e" is pressed, the snowman gets Pikachu' ears and 
cheeks.
*/

PImage img1; // night background
PImage img2; // snow 
PImage img3; // leaves
PImage img4; // falling leaves
PImage img5; // Pipe
int h = height; // height
float bfx; // x-location of bird
float bfy; // y-location of bird
float easing = 0.05; // make the bird's movements more natural
int cx;// variable used for x-movemennt of bunny
int cy; // variable used for y-movement of bunny
int r = 450; // radius of bunny circular motion
int bunX; // x-position of bunny
int bunY; // y-position of bunny

void setup() {
  strokeWeight(2); // all shapes with smooth edges
  smooth(); 
  size(1000, 700);
  img1=loadImage("snowman background.jpg"); // background
  img2=loadImage("snow.png"); // snowhills
  img3=loadImage("tree leaves.png"); // leaves
  img4=loadImage("leaves falling.png"); // leaves falling
  img5=loadImage("pipe.png"); // Pipe
}

void draw() {
  image(img1, -200, 0); // blue sky + snow

  float targetX = mouseX; // bird follows mouseX with easing
  bfx += (targetX - bfx) * easing;
  float targetY = mouseY; // bird follows mouseY with easing
  bfy += (targetY - bfy) * easing;

  // Sky
  {
    if (keyPressed) { // if key "s" is pressed, it will become day
      if ((key=='s')||(key=='S')) {
        stroke(#BFFDFF, 100); // set stroke to blue, partially transparent
        fill(#BFFDFF, 100); // set fill to blue, partially transparent
        rect(0, 0, width, height); // fill entire screen
        stroke(#FAFF08, 30); // set stroke to yellow, partial transparency
        fill(#FAFF08, 30); // set fill to yellow, partial transparency
        rect(0, 0, width, height); // fill entire screen
        stroke(#FAFF08); // set stroke to yellow
        fill(#FAFF08); // set fill to yellow
        ellipse(0, 0, 350, 350); // sun
      }
    } else {
    }
    stroke(255, 50); // set stroke to white, partial transparency
    fill(255, 50); // set stroke to white, partial transparency
    rect(0, 0, width, height); // fill entire screen
    image(img2, -30, 300); // snowhills
  }

  { 
    if (mousePressed) { // if the mouse is pressed, snowman rises by 30 pixels
      h = height-30;
    } else { 
      h = height;
    }
  }


  // Snowman

// Pikachu Ears- Something representing me (I like Pokemon and expecially Pikachu)
{ if(keyPressed){
  if((key=='e')||(key=='E')){
    stroke(0);
    fill(0);
    ellipse(width/3-35, h-500, 30, 200);
    ellipse(width/3+35, h-500, 30, 200);
    stroke(#EDC213);
    fill(#EDC213);
    ellipse(width/3-35, h-500, 30, 125);
    ellipse(width/3+35, h-500, 30, 125);
  }
}
}

  // Main Body
  stroke(180, 190, 250);
  fill(250);
  ellipse(width/3, h-70, 290, 290); // bottom
  ellipse(width/3, h-270, 200, 200); // middle
  ellipse(width/3, h-432, 150, 150); // head

// Pikachu blushing
{ if(keyPressed){
  if((key=='e')||(key=='E')){
   stroke(255, 50, 50);
   fill(255, 50, 50);
   ellipse(width/3-42, h-420, 30, 20);
   ellipse(width/3+42, h-420, 30, 20);
  }
}
}

  // Arms

  // Left
  stroke(#554530);
  fill(#554530);
  triangle(width/3-96, h-287, width/3-92, h-300, width/3-270, h-390);
  triangle(width/3-252, h-379, width/3-250, h-375, width/3-276, h-370);
  triangle(width/3-252, h-379, width/3-247, h-378, width/3-262, h-408);

  // Right
  stroke(#554530);
  fill(#554530);
  triangle(width/3+96, h-287, width/3+92, h-300, width/3+270, h-390);
  triangle(width/3+252, h-379, width/3+250, h-375, width/3+276, h-370);
  triangle(width/3+252, h-379, width/3+247, h-378, width/3+262, h-408);

  // Coal
  stroke(10, 15, 20); // set stroke to dark, dark gray
  fill(10, 15, 20); // set fill to dark, dark gray
  ellipse(width/3-25, h-437, 15, 15); // left eye
  ellipse(width/3+25, h-437, 15, 15); // right eye
  {
    if (keyPressed) { // if 'b' or 'B' is pressed, snowman is surprised)
      if ((key=='b')||(key=='B')) {
        ellipse(width/3, h-384, 30, 30); // surprised mouth
      } else { // smile
        ellipse(width/3-44, h-400, 10, 10); // most left
        ellipse(width/3+44, h-400, 10, 10); // most right
        ellipse(width/3-24, h-388, 10, 10); // second left
        ellipse(width/3+24, h-388, 10, 10); // second right
        ellipse(width/3, h-384, 10, 10); // centre
      } 
  } else { 
      // smile
      ellipse(width/3-44, h-400, 10, 10); // most left
      ellipse(width/3+44, h-400, 10, 10); // most right
      ellipse(width/3-24, h-388, 10, 10); // second left
      ellipse(width/3+24, h-388, 10, 10); // second right
      ellipse(width/3, h-384, 10, 10); // centre
    }
  }

  // Buttons
  ellipse(width/3, h-315, 20, 20); // top 
  ellipse(width/3, h-260, 20, 20); // middle
  ellipse(width/3, h-205, 20, 20); // bottom

  // Pipe 
 {if(keyPressed){ // If key "P" is pressed, the pipe will show up
   if((key=='p')||(key=='P')){ 
    pushMatrix();
    scale(-1.0, 1.0);
    image(img5, -img5. width/3-180, h-454, 95, 90);
    popMatrix();
  }
 }
 }

  { // eyes shine if mouse pressed
    if (mousePressed) {
      stroke(255);
      fill(255);
      ellipse(width/3-27, h-440, 4, 4);
      ellipse(width/3+22, h-440, 4, 4);
    }
  }
 
 

  // Carrot Nose
  stroke(#FFB039);
  fill(#FFB039);
  triangle(width/3, h-422, width/3, h-403, width/3+55, h-432);

  // Magic Hat
  {
    if (mousePressed) {
      stroke(10, 15, 20);
      fill(10, 15, 20);
      rect(width/3-60, h-605, 120, 105);
      rect(width/3-80, h-505, 160, 25);
      stroke(200);
      fill(200);
      rect(width/3-60, h-530, 120, 22);
      // jewels
      stroke(255, 0, 0);
      fill(255, 0, 0);
      ellipse(width/3, h-565, 20, 40);
      ellipse(width/3-30, h-565, 10, 20);
      ellipse(width/3+30, h-565, 10, 20);
      stroke(255); // set stroke to white
      fill(255); // set fill to white
      // sparkles
      triangle(width/3-5, h-580, width/3-1, h-580, width/3-3, h-590);
      triangle(width/3-5, h-580, width/3-1, h-580, width/3-3, h-570);
      triangle(width/3-3, h-582, width/3-3, h-578, width/3-10, h-580);
      triangle(width/3-3, h-582, width/3-3, h-578, width/3+4, h-580);
      triangle(width/3-33, h-572, width/3-31, h-572, width/3-32, h-576);
      triangle(width/3-33, h-572, width/3-31, h-572, width/3-32, h-568);
      triangle(width/3-32, h-571, width/3-32, h-573, width/3-34, h-572);
      triangle(width/3-32, h-571, width/3-32, h-573, width/3-30, h-572);
      triangle(width/3+29, h-572, width/3+27, h-572, width/3+28, h-576);
      triangle(width/3+29, h-572, width/3+27, h-572, width/3+28, h-568);
      triangle(width/3+28, h-571, width/3+28, h-573, width/3+26, h-572);
      triangle(width/3+28, h-571, width/3+28, h-573, width/3+30, h-572);
      // action lines
      line(width/3-200, h-650, width/3-70, h-600);
      line(width/3+200, h-650, width/3+70, h-600);
      line(width/3-210, h-550, width/3-70, h-550);
      line(width/3+210, h-550, width/3+70, h-550);
      line(width/3-200, h-450, width/3-100, h-500);
      line(width/3+200, h-450, width/3+100, h-500);
      line(width/3-100, h-700, width/3-40, h-620);
      line(width/3+100, h-700, width/3+40, h-620);
      line(width/3, h-700, width/3, h-620);
    }
  }


  // Bird
  {
    if (pmouseX-bfx>0) { // if the mouse goes right, the bird faces right
      stroke(#986D4B);
      fill(#986D4B);
      triangle(bfx-25, bfy, bfx+25, bfy, bfx+5, bfy-70);
      stroke(#A5755A);
      fill(#A5755A);
      ellipse(bfx, bfy, 90, 80); // body
      ellipse(bfx+43, bfy-38, 40, 40); // head
      triangle(bfx-42, bfy+15, bfx-42, bfy-15, bfx-70, bfy-20); // wing
      stroke(#F2A70F);
      fill(#F2A70F);
      { 
        if (mousePressed) { // if mouse is pressed, bird's mouth opens
          triangle(bfx+63, bfy-33, bfx+63, bfy-38, bfx+75, bfy-35);
          triangle(bfx+63, bfy-43, bfx+63, bfy-38, bfx+75, bfy-41);
        } else {
          triangle(bfx+63, bfy-33, bfx+63, bfy-43, bfx+78, bfy-38);
        }
      }
      stroke(#986D4B);
      fill(#986D4B);
      triangle(bfx+25, bfy, bfx-25, bfy, bfx-15, bfy-70);
      stroke(255);
      fill(255);
      ellipse(bfx+48, bfy-43, 12, 12);
      stroke(0);
      fill(0);
      ellipse(bfx+50, bfy-43, 5, 5);
    } else { // if mouse goes left, bird faces left
      stroke(#986D4B);
      fill(#986D4B);
      triangle(bfx+25, bfy, bfx-25, bfy, bfx-5, bfy-70);
      stroke(#A5755A);
      fill(#A5755A);
      ellipse(bfx, bfy, 90, 80);
      ellipse(bfx-43, bfy-38, 40, 40);
      triangle(bfx+42, bfy+15, bfx+42, bfy-15, bfx+70, bfy-20);
      stroke(#F2A70F);
      fill(#F2A70F);
      { 
        if (mousePressed) {
          triangle(bfx-63, bfy-33, bfx-63, bfy-38, bfx-75, bfy-35); // if the mouse is pressed, the bird's mouth opens
          triangle(bfx-63, bfy-43, bfx-63, bfy-38, bfx-75, bfy-41);
        } else {
          triangle(bfx-63, bfy-33, bfx-63, bfy-43, bfx-78, bfy-38);
        }
      }
      stroke(#986D4B);
      fill(#986D4B);
      triangle(bfx-25, bfy, bfx+25, bfy, bfx+15, bfy-70);
      stroke(255);
      fill(255);
      ellipse(bfx-48, bfy-43, 12, 12);
      stroke(0);
      fill(0);
      ellipse(bfx-50, bfy-43, 5, 5);
    }
  }

  // Tree
  stroke(#554530); // Set stroke to brown
  fill(#554530); // Set fill to brown
  rect(930, 0, 50, height); // Draw trunk
  stroke(50, 150, 100); // set stroke to green
  fill(50, 150, 100); // set fill to green
  ellipse(955, 50, 500, 300); // shape of leaves
  {
    if ((bfx>625)&&(bfx<625+600)&&(bfy>-100)&&(bfy<-100+400)) { // If the bird goes into the tree's leaves, some leaves will fall
      image(img4, 675, 175, 600, 200);
    }
  }
  image(img3, 625, -100, 600, 400); // leaves

  {
    if (keyPressed) { // If key "B" is pressed, the bunny will jump into the window
      if ((key=='b')||(key=='B')) {
        float t = millis()/600.0;
        pushMatrix();
        translate(0, height);
        bunX = (int)(cx+r*cos(t));
        bunY = (int)(cy+r*sin(t));

        // Bunny
        stroke(230); // set fill to light gray
        fill(230); // set fill to light gray
        ellipse(bunX+79, bunY+33, 80, 30); // back front leg
        ellipse(bunX-79, bunY+27, 120, 40); // back back leg
        stroke(240); // set fill to light gray
        fill(240); // set fill to light gray
        ellipse(bunX, bunY, 150, 100); // body
        ellipse(bunX+84, bunY+20, 80, 30); // front front leg
        ellipse(bunX-70, bunY+35, 120, 40); // front back leg
        ellipse(bunX-79, bunY-15, 50, 50); // tail
        stroke(230); // set fill to light gray
        fill(230); // set fill to light gray
        ellipse(bunX+84, bunY-90, 20, 90); // ear
        stroke(240); // set stroke to light gray
        fill(240); // set fill to light gray
        ellipse(bunX+80, bunY-50, 70, 70); //head
        ellipse(bunX+74, bunY-90, 20, 90); // ear
        stroke(#FAAC9C); // set stroke to pink
        fill(#FAAC9C); // set fill to pink
        ellipse(bunX+115, bunY-40, 13, 13); // nose
        stroke(0); // Set stroke to black
        fill(0); // set fil to black
        ellipse(bunX+95, bunY-60, 10, 10);
        stroke(255); // set stroke to white
        fill(255); // set fill to white
        ellipse(bunX+97, bunY-62, 3, 3); // eyeshine
        popMatrix();
      }
    }
  }
}

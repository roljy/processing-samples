// snowman.pde
// By Tawfeeq Mannan
// Created 2018/09/07
// Last Edited 2018/09/25

/// Has a snowman in the middle, a tree on the left, a baby snowman
///     on the right waving his arms, and a sun against a blue sky.
/// When the mouse is clicked, the hat begins to follow the mouse,
///     the snowmen stop smiling, it begins to snow, and the ground rises.
/// When the mouse is clicked again, the snow stops, making the little snowman
///     smile, but the big snowman smiles only if the hat back on his head.
/// However, if the ground level is higher than a comfortable for any given snowman,
///     that snowman will always be frowning. If the ground level gets to its neck,
///     it will have a panicked expression, and the big snowman will also flail its
///     arms. If the big snowman is panicked, the sun will flicker different colours.
/// If the user wishes to return the ground level to normal, they can
///     click the sun after stopping the snow or they may wait for the
///     snow to completely fill up the screen. Clicking the sun will also
///     return the hat to its original position.

void setup ()
{
  /// Sets screen size, and framerate. background and ground are done in draw();


  size (660, 600);
  frameRate (60);
}


void draw ()
{
  /// This function draws everything


  background (0, 200, 255); // sky blue


  //---Arm Movement---//
  if (armDiff >= PI/6 || armDiff <= -PI/6)
    armsRising = !armsRising;
  if (armsRising)
    armDiff += PI / 18;
  else
    armDiff -= PI / 18;
  

  //---Snowman---//
  drawSnowman();
  
  
  //---Son---//
  drawSon();


  //---Tree---//
  drawTree();


  if (!mouseIsMoving)
  {
    hat (hatX - 30, hatY - 30); // default position of hat
  }
  else
  {
    hat (mouseX - 30, mouseY - 30); // moving hat
    fill (150);
  }
  
  
  //---Ground---//
  noStroke();
  fill (230, 255, 230); // yellowish white
  if (mouseIsMoving)
  {
    groundHeight += 0.15;
    drawSnow();
  }
  if (groundHeight >= 630)
  {
    groundHeight = 150; // reset if snow gets too high
    mouseIsMoving = false;
    hatX = 400; hatY = 120;
  }
  rect (0, height - groundHeight, width, groundHeight); // ground rect
}


boolean mouseIsMoving = false;
int hatX = 400, hatY = 120;
float groundHeight = 150;
float armDiff = 0;
boolean armsRising = true;
void mouseClicked ()
{
  /// A function that toggles if the hat will move


  if ( sq(mouseX - 250) + sq(mouseY - 100) <= sq(50)  && !mouseIsMoving )
  {
    // sun has been clicked and mouse is not moving: do not move hat, reset all
    
    groundHeight = 150;
    hatX = 400; hatY = 120;
  }
  else
  {
    mouseIsMoving = !mouseIsMoving;
    if (!mouseIsMoving)
    {
      // User has placed the hat down
      hatX = mouseX;
      hatY = mouseY;
    }
  }
}


void hat (int x, int y)
{
  /// A function to draw the hat. x and y represent the top corner of the tall part of hat


  fill (30, 10, 30); // near black
  //rect (370, 90, 60, 60); // top by default
  rect (x, y, 60, 60); // top
  //rect (350, 130, 100, 20); // brim by default
  rect (x - 20, y + 40, 100, 20); // brim
}


void button (int x, int y, int r, int g, int b)
{
  /// A function to draw the buttons on the snowman

  
  stroke (0);
  strokeWeight (1);
  fill (r, g, b);
  ellipseMode (CENTER);
  ellipse (x, y, 15, 15); // main circle
  fill (250); // same white as snowman
  ellipse (x - 2, y - 2, 3, 3);
  ellipse (x + 2, y - 2, 3, 3);
  ellipse (x - 2, y + 2, 3, 3);
  ellipse (x + 2, y + 2, 3, 3);
}


void drawTree ()
{
  /// A function to draw the tree


  noStroke();

  //---Trunk---//
  fill (140, 90, 20); // brown
  rect (90, 150, 40, 300);

  //---Leaves---//
  fill (10, 250, 30); // light green
  triangle (110, 80, 195, 220, 25, 220); // top
  triangle (110, 160, 205, 300, 15, 300); // middle
  triangle (110, 240, 215, 380, 5, 380); // bottom
}


void drawSnow ()
{
  /// Draws the snowstorm
  
  stroke (230, 255, 230);
  strokeWeight (5);
  for (int i = 0; i < 100; i++)
  {
    point (random (660), random (450));
  }
  noStroke();
}


void drawSon ()
{
  /// A function to draw the snowman's son
  
  
  //---Snowballs---//
  fill (250); // white
  noStroke();
  ellipseMode (CENTER);
  ellipse (560, 410, 120, 120); // bottom
  ellipse (560, 330, 100, 100); // top
  
  //---Eyes---//
  fill (15, 0, 15); // near black
  ellipse (540, 310, 10, 10); // Left
  ellipse (580, 310, 10, 10); // Right
  
  //---Nose---//
  stroke (180, 120, 20); // brown orange
  strokeWeight (1);
  fill (255, 150, 20); // orange
  ellipse (560, 330, 20, 20);
  
  //---Mouth---//
  noStroke ();
  fill (15, 0, 15); // near black
  if ( (!mouseIsMoving) && (groundHeight <= 200) )
  {
    // Happy: no snow and the snow is low
    ellipse (545, 350, 7, 7);
    ellipse (552, 354, 7, 7);
    ellipse (560, 355, 7, 7);
    ellipse (568, 354, 7, 7);
    ellipse (575, 350, 7, 7);
  }
  else if ( groundHeight >= 225 )
  {
    // Drowning from the snow
    ellipse (560, 350, 20, 20);
  }
  else
  {
    // Sad.
    ellipse (545, 355, 7, 7);
    ellipse (552, 351, 7, 7);
    ellipse (560, 350, 7, 7);
    ellipse (568, 351, 7, 7);
    ellipse (575, 355, 7, 7);
  }
  
  //---Arms---//
  fill (180, 120, 40); // brown
  
  //Right//
  pushMatrix();
  translate (600, 380);
  rotate (-PI / 6 - armDiff);
  rect (0, 0, 50, 5); // main arm
  pushMatrix();
  translate(40, 0);
  rotate (-PI / 6); // top finger
  rect (0, 0, 10, 5);
  rotate (PI / 3);
  rect (0, 0, 10, 5); // bottom finger
  popMatrix();
  popMatrix();
  
  //Left//
  pushMatrix();
  translate (520, 380);
  rotate (PI + PI / 6 + armDiff);
  rect (0, 0, 50, 5); // main arm
  pushMatrix();
  translate(40, 0);
  rotate (-PI / 6); // bottom finger
  rect (0, 0, 10, 5);
  rotate (PI / 3);
  rect (0, 0, 10, 5); // top finger
  popMatrix();
  popMatrix();
}


void drawSnowman ()
{
  /// A function to draw the snowman (snowballs, hat, eyes, nose, mouth, arms, buttons)


  //---Snowballs---//
  fill (250); // white
  noStroke();
  ellipse (400, 400, 150, 150); // bottom
  ellipse (400, 290, 130, 130); // middle
  ellipse (400, 190, 110, 110); // top


  //---Top Hat---//
  //hat(370, 90);
  // hat() is no longer within this function so that it can be drawn separately to follow the mouse


  //---Eyes---//
  //noStroke();
  fill (15, 0, 15); // near black
  ellipse (380, 180, 10, 10); // Left
  ellipse (420, 180, 10, 10); // Right (side note: 420!!!)


  //---Nose---//
  stroke (180, 120, 20); // brown orange
  strokeWeight (1);
  fill (255, 150, 20); // orange
  triangle (395, 185, 405, 195, 360, 200); // nose


  //---Mouth---//
  //From left to right//
  //Frowns if hat gone//
  //clockwise from top for drowning//
  noStroke ();
  fill (15, 0, 15); // near black
  if ( (!mouseIsMoving) && (380 < hatX && hatX < 420) && (105 < hatY && hatY < 150) && (groundHeight <= 250) )
  {
    // Happy: the hat is placed on the head, the hat isn't moving, and the snow is low
    ellipse (375, 215, 7, 7);
    ellipse (385, 222, 7, 7);
    ellipse (395, 224, 7, 7);
    ellipse (405, 224, 7, 7);
    ellipse (415, 222, 7, 7);
    ellipse (425, 215, 7, 7);
    
    // sun
    fill (255, 255, 100); // yellow
  }
  else if ( groundHeight >= 340 )
  {
    // Drowning from the snow
    ellipse (400, 209, 7, 7);
    
    ellipse (405, 210, 7, 7);
    ellipse (408, 212, 7, 7);
    ellipse (409, 215, 7, 7);
    ellipse (409, 220, 7, 7);
    ellipse (408, 223, 7, 7);
    ellipse (405, 225, 7, 7);
    
    ellipse (400, 226, 7, 7);
    
    ellipse (395, 225, 7, 7);
    ellipse (392, 223, 7, 7);
    ellipse (391, 220, 7, 7);
    ellipse (391, 215, 7, 7);
    ellipse (392, 212, 7, 7);
    ellipse (395, 210, 7, 7);
    
    // sun
    fill (random (255), random (255), random (255)); // random flashes
  }
  else
  {
    // Sad.
    ellipse (375, 220, 7, 7);
    ellipse (385, 217, 7, 7);
    ellipse (395, 216, 7, 7);
    ellipse (405, 216, 7, 7);
    ellipse (415, 217, 7, 7);
    ellipse (425, 220, 7, 7);
    
    // sun
    if (mouseIsMoving)
      fill (200, 200, 200, 200); // slightly transparent grey
    else
      fill (255, 160, 0); // orange
  }
  
  
  //---Sun---//
  ellipse (250, 100, 100, 100);


  //---Pipe---//
  pushMatrix();
  translate (360, 230);
  rotate (-PI / 6);
  fill (90, 60, 20); // dark brown
  rect (0, 0, 10, 10);
  rect (0, 7, 30, 3);
  popMatrix();


  //---Arms---//
  fill (180, 120, 40); // brown

  //Right//
  pushMatrix();
  translate (450, 260);
  if (groundHeight < 340)
    rotate (-PI/6); // not waving
  else
    rotate (-PI/6 - armDiff); // waving
  //rotate (armDiff); // what this line does is left as an exercise for the reader
  rect (0, 0, 90, 5); // main branch
  translate (70, 0);
  pushMatrix();
  rotate (-PI / 6);
  rect (0, 0, 20, 5); // top finger
  popMatrix();
  pushMatrix();
  rotate (PI / 6);
  rect (0, 0, 20, 5); // bottom finger
  popMatrix();
  popMatrix();

  //Left//
  pushMatrix();
  translate (350, 260);
  if (groundHeight < 340)
    rotate (PI + PI/6); // not waving
  else
    rotate (PI + PI/6 + armDiff); // waving
  rect (0, 0, 90, 5); // main branch
  translate (70, 0);
  pushMatrix();
  rotate (-PI / 6);
  rect (0, 0, 20, 5); // bottom finger
  popMatrix();
  pushMatrix();
  rotate (PI / 6);
  rect (0, 0, 20, 5); // top finger
  popMatrix();
  popMatrix();


  //---Buttons---//
  for (int i = 0; i < 5; i++)
  {
    button (400, 250 + 20 * i, 60 * i, 250 - 60 * i, 100);
  }
}

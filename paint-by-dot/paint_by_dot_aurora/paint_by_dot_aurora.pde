/* ***********************************************************************
Aurora Shi
Assignment 2 - Paint by Dot
Computer Science Block 2
Completed October 20, 2020

This program is my own work - A.S. */

//PRESS HELP FOR INSTRUCTIONS

int x = 10;
int y = 255;
PFont font;
PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage undoImage;
PImage redoImage;
PImage saveImage;

int selectedColor=0;
String fn;
boolean undoButton = false;
boolean instructions = false;

void setup() {
  size(1200, 700);
  background(255);
  font = loadFont("paint-by-dot/paint_by_dot_aurora/data/CourierNewPSMT-24.vlw");
  textFont(font);
  img = loadImage("paint-by-dot/paint_by_dot_aurora/data/eye.png");
  img2 = loadImage("paint-by-dot/paint_by_dot_aurora/data/restart.png");
  img3 = loadImage("paint-by-dot/paint_by_dot_aurora/data/color.png");
  img4 = loadImage("paint-by-dot/paint_by_dot_aurora/data/black.png");
  img5 = loadImage("paint-by-dot/paint_by_dot_aurora/data/instruction.png");
  img6 = loadImage("paint-by-dot/paint_by_dot_aurora/data/girl.tif");
  img7 = loadImage("paint-by-dot/paint_by_dot_aurora/data/eyedropper.png");
  drawFrame();
}

void draw() {
  noStroke();
  fill(255);
  rect(0, 0, 200, 700);
  drawMenu();
  drawFrame();
  //for the current brush
  stroke(#676767);
  fill(selectedColor, y);
  ellipse(153, 306, x, x);
  //x and y coordinates
  fill(0);
  if ((mouseX>200)&&(mouseX<1165)&&(mouseY>35)&&(mouseY<630)){
  text("x coordinate:", 200, 680);
  text("y coordinate:", 200, 694);
  text(mouseX-200, 325, 680);
  text(mouseY-35, 325, 694);
}
}

void drawFrame() {
  //gray frame
  fill(#D8D8D8);
  noStroke();
  rect(200, 0, 1200, 35);
  rect(200, 665, 1200, 35);
  rect(1165, 0, 35, 1200);
  
//save load help demo buttons
  stroke(#747474);
 rect(840, 670, 70, 22);
  rect(925, 670, 70, 22);
  rect(1010, 670, 70, 22);
  rect(1095, 670, 70, 22);

  //button text
  fill(0);
  textSize(16);
    text("Demo", 857, 686);
  text("Help", 942, 686);
  text("Save", 1028, 686);
  text("Load", 1110, 686);
}


void drawMenu() {
  //gray background
  fill(#D8D8D8);
  rect(0, 0, 200, 700);
  
  //lighter gray rectangle
  fill(#F0F0F0);
  rect(15, 15, 170, 670);
  
  //colour section
  strokeWeight(1);
  fill(0);
  textSize(25);
  text("Colours", 45, 38);
  
  //colour menus
  image(img3, 25, 48, 150, 155);
  image(img4, 25, 212, 150, 25);

  //eraser, clear, and current brush buttons
  fill(#F0F0F0);
  stroke(#747474);
  rect(25, 283, 45, 45);
  rect(77, 283, 45, 45);
  rect(130, 283, 45, 45);
  
  //eraser, clear, and current brush text
  fill(0);
  textSize(11);
  text("Eraser", 30, 270);
  text("Tool", 36, 279);
  text("Clear", 83, 270);
  text("All", 90, 279);
  text("Current", 132, 270);
  text("Brush", 137, 279);
  
  //eraser and restart images
  image(img2, -21, 199, 210, 210);
  image(img, -52, 199, 207, 207);
  
  //brush size boxes
  textSize(20);
  text("Brush Size", 40, 364);
  fill(#F0F0F0);
  rect(25, 375, 45, 45);
  rect(77, 375, 45, 45);
  rect(130, 375, 45, 45);
  rect(25, 425, 45, 45);
  rect(77, 425, 45, 45);
  rect(130, 425, 45, 45);

  //brush size circles
  noStroke();
  fill(0);
  noStroke();
  ellipse(48, 398, 42, 42);
  ellipse(100, 398, 30, 30);
  ellipse(153, 398, 22, 22);
  ellipse(48, 448, 15, 15);
  ellipse(100, 448, 9, 9);
  ellipse(153, 448, 3, 3);
  stroke(#747474);

  //transparency boxes
  textSize(20);
  fill(0);
  strokeWeight(1);
  text("Transparency", 28, 504);
  fill(#F0F0F0);
  rect(25, 517, 45, 45);
  rect(77, 517, 45, 45);
  rect(130, 517, 45, 45);
  rect(25, 567, 45, 45);
  rect(77, 567, 45, 45);
  rect(130, 567, 45, 45);
  
  //small percent text
  textSize(15);
  fill(0);
  strokeWeight(1);
  text("100%", 30, 557);
  text("85%", 88, 557);
  text("70%", 140, 557);
  text("55%", 35, 607);
  text("40%", 88, 607);
  text("25%", 141, 607);

  //transparency circles
  noStroke();
  ellipse(48, 534, 20, 20);
  fill(0, 210);
  ellipse(100, 534, 20, 20);
  fill(0, 175);
  ellipse(153, 534, 20, 20);
  fill(0, 140);
  ellipse(48, 584, 20, 20);
  fill(0, 100);
  ellipse(100, 584, 20, 20);
  fill(0, 60);
  ellipse(153, 584, 20, 20);
  stroke(#747474);

  //undo and redo boxes
  fill(#F0F0F0);
  rect(25, 635, 70, 40);
  rect(105, 635, 70, 40);

  //undo and redo arrows and text
  noStroke();
  fill(#939393);
  rect(45, 646, 40, 18);
  rect(115, 646, 40, 18);
  triangle(167, 655, 150, 640, 150, 670);
  triangle(33, 655, 50, 640, 50, 670);
  fill(0);
  text("undo", 47, 659);
  text("redo", 118, 659);

  //small lines
  stroke(#BFBFBF);
  line(15, 252, 185, 252);
  line(15, 340, 185, 340);
  line(15, 482, 185, 482);
  line(15, 623, 185, 623);

  //copyright, haha
  textSize(12);
  text("Created by Aurora Shi©", 6, 695);
}

void mouseClicked() {
  //color select
  if ((mouseX>25 && mouseY>48 && mouseX<25+150 && mouseY<48+155) || (mouseX>25 && mouseY>212 && mouseX<25+150 && mouseY<212+25)) {
    selectedColor = get(mouseX, mouseY); 
  } 
  
  //eraser
  else if (mouseX>25 && mouseY>283 && mouseX<25+45 && mouseY<283+45) {
    selectedColor=#FFFFFF;
  } 
  
  //rect to clear
  else if (mouseX>77 && mouseY>283 && mouseX<77+45 && mouseY<283+45) {
    noStroke();
    fill(255); 
    rect(200, 35, 965, 630);
  } 
  
  //brush size
  else if (mouseX>25 && mouseY>375 && mouseX<25+45 && mouseY<375+45) {
    x=42;
  } 
  
  //brush size
  else if (mouseX>77 && mouseY>375 && mouseX<77+45 && mouseY<375+45) {
    x=30;
  } 
  
  //brush size
  else if (mouseX>130 && mouseY>375 && mouseX<130+45 && mouseY<375+45) {
    x=22;
  } 
  
  //brush size
  else if (mouseX>25 && mouseY>425 && mouseX<25+45 && mouseY<425+45) {
    x=15;
  } 
  
  //brush size
  else if (mouseX>77 && mouseY>425 && mouseX<77+45 && mouseY<425+45) {
    x=9;
  } 
  
  //brush size
  else if (mouseX>130 && mouseY>425 && mouseX<130+45 && mouseY<425+45) {
    x=3;
  } 
  
  else if (mouseX>25 && mouseY>517 && mouseX<25+45 && mouseY<517+45) {
    y=255; //transparency
  } 
  
  else if (mouseX>77 && mouseY>517 && mouseX<77+45 && mouseY<517+45) {
    y=200; //transparency
  } 
  
  else if (mouseX>130 && mouseY>517 && mouseX<130+45 && mouseY<517+45) {
    y=155; //transparency
  } 
  
  else if (mouseX>25 && mouseY>567 && mouseX<25+45 && mouseY<567+45) {
    y=120; //transparency
  } 
  
  else if (mouseX>77 && mouseY>567 && mouseX<77+45 && mouseY<567+45) {
    y=80; //transparency
  } 
  
  else if (mouseX>130 && mouseY>567 && mouseX<130+45 && mouseY<567+45) {
    y=40; //transparency
  } 
  
  else if (mouseX>25 && mouseY>635 && mouseX<25+70 && mouseY<635+40) {
    image(undoImage, 0, 0, 1200, 700); //undo
  } 
  
  else if (mouseX>105 && mouseY>635 && mouseX<105+70 && mouseY<635+40) {
    instructions = false; //make sure the instructions dont fail
    image(redoImage, 0, 0, 1200, 700); //redo
  } 
  
  else if (mouseX>1095 && mouseY>670 && mouseX<1095+70 && mouseY<670+22){
    //load
    fn=""; //file name
    selectInput("Load a file to draw:", "fileSelected"); //instruction shown
    while (fn=="") {
      delay(100);
    }
    if (fn!="?"){
    redoImage=loadImage(fn); 
    image(redoImage, 200, 35, 965, 630);
    }
  } 
  
  else if (mouseX>1010 && mouseY>670 && mouseX<1010+70 && mouseY<670+22) {
    //save
    saveImage = get(200, 35, 965, 630);
    fn="";
    selectOutput("Name your saved file:", "fileSelected1");
    while (fn=="") {
      delay(100);
    }
    if (fn!="?") {
      saveImage.save(fn);
    }
    
  } else if (mouseX>925 && mouseY>670 && mouseX<925+70 && mouseY<670+22) {
    instructions = true;
    //my instructions (help)
    image(img5, 400, 80, 580, 550);
    fill(0);
    text("Press X key to close",770,615);
  }
   
   else if (mouseX>840 && mouseY>670 && mouseX<840+70 && mouseY<670+22) {
     //demo
    image(img6,200, 35, 965, 630);
}
}

//for load and save
void fileSelected(File selection) {
  if (selection != null) {
    fn = selection.getAbsolutePath();
  } 
  
  else {
    fn="?";
  }
}

void fileSelected1(File selection) {
  if (selection != null) {
    fn = selection.getAbsolutePath();
 } 
 
 else {
    fn="?";
  }
}

void mouseDragged() {
  //take a photo before every stroke
  if (instructions == false){
  if (mouseX>200) {
    if (undoButton) {
      undoImage = get();
    }
    noStroke();
   //get the redo image
    fill(selectedColor, y);
    ellipse(mouseX, mouseY, x, x);
    redoImage = get();
  }
  }
}

void mousePressed() {
  if (instructions == false){
  if (mouseX>200) {
    if (mousePressed && (mouseX>25) && (mouseY>635) && (mouseX<25+70) && (mouseY<635+40)) {
      undoButton = true;
    }
    //undo and redo
    undoImage = get();
    noStroke();
    fill(selectedColor, y);
    ellipse(mouseX, mouseY, x, x);
    redoImage = get();
  }
  }
}

void mouseReleased() {
  undoButton = false;
}

void keyReleased() {
  //change brush size with keys
  if (x<42) {
    if (keyCode == UP) {
      x=x+5;
    }
  }
  
  if (x>=6) {
    if (keyCode == DOWN) {
      x=x-5;
    }
  }
  if (x>=10) {  
  if (keyCode == LEFT) {
    //change transparency with keys
    y=y-40;
  }
  }
    if (x<=255) {  
  if (keyCode == RIGHT) {
    y=y+40;
  }
    }
  
  if (key == 'x') {
    //close instructions
    instructions = false;
    image(redoImage, 0, 0, 1200, 700);
  }
  }
  
void keyPressed() {
  //eyedropper tool
  if (key == 'a') {
    if ((mouseX>200) && (mouseY>35) && (mouseX<200+965) && (mouseY<35+630)) {
      selectedColor = get(mouseX, mouseY);
      //change cursor to picture
      cursor(img7);
    }
  }
  
  if (key == 26) {
    //control z to undo
    image(undoImage, 0, 0, 1200, 700);
  }
}

void mouseMoved() {
  //change cursor to cross when on canvas
  if ((mouseX>200) &&(mouseX <200+965)&& (mouseY>35) && (mouseY<35+630)) {
    cursor(CROSS);
  } 
  
  else {
      //change hand to cross when not on canvas
    cursor(HAND);
  }
}

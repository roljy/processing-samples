/************************************************************************
 Aurora Shi
 Assignment 1 - Big Piano
 Computer Science Block 2
 Completed November 12, 2020
 
 This program is my own work - A.S. */

//PRESS HELP FOR INSTRUCTIONS

void setup() {
  size(1187, 667);
  piano = loadImage("piano1.png");
  screen = loadImage("screen.png");
  keys = loadImage("keys.png");
  c3k = loadImage("c3.png");
  d3k = loadImage("d3.png");
  e3k = loadImage("e3.png");
  f3k = loadImage("f3.png");
  g3k = loadImage("g3.png");
  a3k = loadImage("a3.png");
  b3k = loadImage("b3.png");
  red = loadImage("red.png");
  six = loadImage("six.png");
  black1 = loadImage("blackkey.png");
  arrow = loadImage("arrow.png");
  drumdisplay = loadImage("drumdis.png");
  songs = loadImage("songname.png");
  helpButton = loadImage("helpbutton.png");
  instructions = loadImage("instruction.png");
  start = loadImage("start.png");


  image(piano, 0, 0, 1187, 667);
  //second octave white keys
  c4 = new SoundFile(this, "c4.wav");
  d4 = new SoundFile(this, "d4.wav");
  e4 = new SoundFile(this, "e4.wav");
  f4 = new SoundFile(this, "f4.wav");
  g4 = new SoundFile(this, "g4.wav");
  a4 = new SoundFile(this, "a4.wav");
  b4 = new SoundFile(this, "b4.wav");
  //first octave white keys
  c3 = new SoundFile(this, "c3.wav");
  d3 = new SoundFile(this, "d3.wav");
  e3 = new SoundFile(this, "e3.wav");
  f3 = new SoundFile(this, "f3.wav");
  g3 = new SoundFile(this, "g3.wav");
  a3 = new SoundFile(this, "a3.wav");
  b3 = new SoundFile(this, "b3.wav");
  //second octave black keys
  cs4 = new SoundFile(this, "c#4.wav");
  ds4 = new SoundFile(this, "d#4.wav");
  fs4 = new SoundFile(this, "f#4.wav");
  gs4 = new SoundFile(this, "g#4.wav");
  as4 = new SoundFile(this, "a#4.wav");
  //first octave black keys
  cs3 = new SoundFile(this, "c#3.wav");
  ds3 = new SoundFile(this, "d#3.wav");
  fs3 = new SoundFile(this, "f#3.wav");
  gs3 = new SoundFile(this, "g#3.wav");
  as3 = new SoundFile(this, "a#3.wav");
  //buttons
  star = new SoundFile(this, "star.wav");
  laputa = new SoundFile(this, "laputa.wav");
  drum = new SoundFile(this, "drum.wav");
  beat = new SoundFile(this, "beat.wav");
  click = new SoundFile(this, "click.wav");
  elise = new SoundFile(this, "elise.wav");
  jojo = new SoundFile(this, "jojo.wav");
  drum2 = new SoundFile(this, "drum2.wav");
  drum3 = new SoundFile(this, "drum3.wav");

  font = loadFont("Serif-60.vlw");
  image(start, 0, 0, 1187, 667);
}
void draw() {
  if (piano1) {
    if (button4 == true) {//add notes when keys button is clicked
      fill(0);
      textFont(font);
      textSize(40);
      text("C", 43, 620);//will write key names when clicked
      text("D", 125, 620);
      text("E", 207, 620);
      text("F", 289, 620);
      text("G", 371, 620);
      text("A", 453, 620);
      text("B", 535, 620);
      text("C", 617, 620);
      text("D", 699, 620);
      text("E", 781, 620);
      text("F", 863, 620);
      text("G", 945, 620);
      text("A", 1027, 620);
      text("B", 1109, 620);
      textSize(20);
      text("Z", 50, 580);//keyboard keys
      text("X", 134, 580);
      text("C", 214, 580);
      text("V", 295, 580);
      text("B", 378, 580);
      text("N", 461, 580);
      text("M", 540, 580);
      text("R", 622, 580);
      text("T", 704, 580);
      text("Y", 786, 580);
      text("U", 868, 580);
      text("I", 955, 580);
      text("O", 1032, 580);
      text("P", 1114, 580);
      //black keys
      fill(255);
      textSize(18);//keyboard keys
      text("S", 94, 420);
      text("D", 175, 420);
      text("G", 327, 420);
      text("H", 421, 420);
      text("J", 519, 420);
      text("5", 669, 420);
      text("6", 752, 420);
      text("8", 902, 420);
      text("9", 997, 420);
      text("0", 1093, 420);
      textSize(23);
      text("C#", 87, 440);//key note names
      text("D#", 168, 440);
      text("F#", 321, 440);
      text("G#", 414, 440);
      text("A#", 509, 440);
      text("C#", 662, 440);
      text("D#", 743, 440);
      text("F#", 896, 440);
      text("G#", 989, 440);
      text("A#", 1084, 440);
    }

    fill(255);
    textFont(font);
    textSize(70);
    beat.rate(x);//change speed of beat if x is changed

    if (button5==true) {//if songs button is pressed and mouse is hovered over the display, songs list will appear
      if ((mouseX>428) && (mouseX<750) && (mouseY>20) &&(mouseY<145)) {
        image(songs, 0, 0, 1187, 667);
      }
    }

    if ((button2==true)) {
      if ((mouseX>428) && (mouseX<750) && (mouseY>20) &&(mouseY<145)) {//if drums button is pressed and mouse is hovered over the display, drums list will appear
        image(drumdisplay, 0, 0, 1187, 667);
      }
    }

    if ((button3==true)) {
      if ((mouseX>428) && (mouseX<750) && (mouseY>20) &&(mouseY<145)) {//if beat is pressed and mouse is hovered over the display, arrows will appear
        image(arrow, 0, 0, 1187, 667);
      }
    }
    if (button==true) {
      if ((mouseX>428) && (mouseX<750) && (mouseY>20) &&(mouseY<145)) {//if volume button is pressed and mouse is hovered over the display, arrows will appear
        image(arrow, 0, 0, 1187, 667);
        textSize(40);
        text(y, 533, 100);
      }
    }

    textSize(70);
  }
}

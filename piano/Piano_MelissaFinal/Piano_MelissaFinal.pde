import processing.sound.*;

int x = 0;
int y = 300; 
int a = 75; 
int b = 250; 
int c = 15; //length of music sheet and piano divider
int d = 550; 
int e =100; 
int f=850;

PFont font;

PImage imgmaryb; 
PImage imgbellsb; 

SoundFile C, D, E, F, G, A, B, Z, H, I, J, K, L, M;

int sheetMusicSelect = -1;
int screen = 0;
int WhiteKeyx = 0; 

Pianob pianob;

void setup() {
  size(800, 850); 
  smooth(); 
  
  imgmaryb = loadImage("piano/Piano_MelissaFinal/data/Maryb.png"); 
  imgbellsb = loadImage("piano/Piano_MelissaFinal/data/Bellsb.gif");
  
  C = new SoundFile(this, "piano/Piano_MelissaFinal/data/c4.mp3");
  D = new SoundFile(this, "piano/Piano_MelissaFinal/data/d4.mp3");
  E = new SoundFile(this, "piano/Piano_MelissaFinal/data/e4.mp3");
  F = new SoundFile(this, "piano/Piano_MelissaFinal/data/f4.mp3");
  G = new SoundFile(this, "piano/Piano_MelissaFinal/data/g4.mp3");
  A = new SoundFile(this, "piano/Piano_MelissaFinal/data/a5.mp3");
  B = new SoundFile(this, "piano/Piano_MelissaFinal/data/b5.mp3");
  Z = new SoundFile(this, "piano/Piano_MelissaFinal/data/c5.mp3");
  C.play();
  D.play();
  E.play();
  F.play();
  G.play();
  A.play();
  B.play();
  Z.play();
  H = new SoundFile(this, "piano/Piano_MelissaFinal/data/c-4.mp3");
  I = new SoundFile(this, "piano/Piano_MelissaFinal/data/d-4.mp3");
  J = new SoundFile(this, "piano/Piano_MelissaFinal/data/f-4.mp3");
  K = new SoundFile(this, "piano/Piano_MelissaFinal/data/g-4.mp3");
  L = new SoundFile(this, "piano/Piano_MelissaFinal/data/a-4.mp3");
  M = new SoundFile(this, "piano/Piano_MelissaFinal/data/c-5.mp3");
  H.play();
  I.play();
  J.play();
  K.play();
  L.play();
  M.play();
  
  
  font=loadFont("piano/Piano_MelissaFinal/data/TimesNewRomanPSMT-48.vlw");
  
  textFont(font);
  
  pianob = new Pianob();  
}

void draw() {
  if (screen == 0) {
    
    textSize(48); 
    background(#F7E1E9);
    text("Choose your piano level", 150, 100, 750, 500);
    //beginner button
    text("Beginner", 150, 200, 350, 225);
    //advanced button
    text("Advanced", 425, 200, 625, 225);
    
  } else if (screen == 1 || screen == 2) {
    background(#F7E1E9); 

    //Options for the sheet music
    if (screen == 1)
      text("Choose your sheet music beginner edition", 150, 100, 500, y);
    else
      text("Choose your sheet music advanced edition", 150, 100, 500, y);
      
    text("Mary Had a Little Lamb", 25, b, 250, y);
    text("Jingle Bells", 325, b, 450, y);
    text("No music", 595, b, 700, y); 

    if(sheetMusicSelect != -1)
      keys();
      
    pianob.musicsheets();
  }
}

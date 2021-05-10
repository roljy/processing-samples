//*******************************************************************************
// Michelle Lok Yee Chan
// Major Project - Nyan Cat Flappy Bird
// Computer Science 10 block 3
// COMPLETION: January 16 2021
// This program is my own work - MLYC
// SONG CREDITS
// (Stardust Ziggy is coming) song is by Kraftamt
// (So Long Twenty Twenty Pantry) song by Stefan Kartenberg
// (Phantom) song by Persona5
//********************************************************************************
import ddf.minim.*;
AudioPlayer nyansong, stardustsong, solongtwentysong, phantomsong;
Minim minim;
PImage nyanspace, nyanpillar, nyanpillardown, nyanspaceblank, nyancat, easyflappy, mediumcity, hardcandy, topPipe, botPipe, arrow;
int bgx, bgy, ny, nx, g, Vny;
int[] pipeX, pipeY; //declaring two arrays 
int score, highScore;
String gameState = "INTRO";
PFont font;
//Classes
intro introGame;
info infoGame;
startgame startGame;
easy easyGame;
medium mediumGame;
hard hardGame;
end endScreen;
reseteasy resetEasy;
resetmedium resetMedium;
resethard resetHard;
void setup()
{
  size(1280, 800);
  //all of my images T^T
  nyanspace = loadImage("nyanspace.jpg");
  nyanspace.resize(width, height);
  nyanpillar = loadImage("nyanpillar.png");
  nyanpillar.resize(150, 400);
  nyanpillardown = loadImage("nyanpillardown.png");
  nyanpillardown.resize(150, 230);
  nyanspaceblank = loadImage("nyanspaceblank.jpg");
  nyanspaceblank.resize(width, height);
  nyancat = loadImage("nyancat.png");
  easyflappy = loadImage("easyflappy.png");
  mediumcity = loadImage("mediumcity.png");
  hardcandy = loadImage("hardcandy.jpg");
  botPipe = loadImage("botpipe.png");
  topPipe = loadImage("toppipe.png");
  arrow = loadImage("arrow.png");
  arrow.resize(40, 30);
  introGame = new intro();
  infoGame = new info();
  startGame = new startgame();
  easyGame = new easy();
  mediumGame = new medium();
  hardGame = new hard();
  endScreen = new end();
  resetEasy = new reseteasy();
  resetMedium = new resetmedium();
  resetHard = new resethard();
  //stage music!
  minim = new Minim(this);
  nyansong = minim.loadFile("nyansong.mp3"); //intro song
  solongtwentysong = minim.loadFile("Solongtwentysong.mp3"); //easy level song
  phantomsong = minim.loadFile("Phantomsong.mp3"); //medium level song
  stardustsong = minim.loadFile("Stardustsong.mp3"); //hard level song
  font = loadFont("AgencyFB-Reg-48.vlw"); 
  textFont(font);
  //the n stands for nyan, g is gravity and the V stands for velocity
  nx = 200;
  ny = 70;
  g = 1; //Gravity == Speed of downward acceleration
  pipeX = new int[5];
  pipeY = new int[pipeX.length];
  //POPULATE THE ARRAY WITH VALUES
  for (int i = 0; i < pipeX.length; i++)
  {
    pipeX[i] = width + 310*i;
    pipeY[i] = (int)random(-350, 0);
  }
}


//MAIN GAME LOOP ("what happens during each game state")
void draw() {
  rectMode(CORNER);
  if (keyPressed) {
    if (key == 'x') {
      exit();
    }
  }
  if (gameState == "INTRO") {
    introGame.introGame();
  } else if (gameState == "START") {
    startGame.startGame();
  } else if (gameState == "INFO") {
    infoGame.infoGame();
  } else if (gameState == "EASY") {
    easyGame.easyGame();
  } else if (gameState == "MEDIUM") {
    mediumGame.mediumGame();
  } else if (gameState == "HARD") {
    hardGame.hardGame();
  } else if (gameState == "LOSEEASY") {
    endScreen.endScreen();
  } else if (gameState == "LOSEMEDIUM") {
    endScreen.endScreen();
  } else if (gameState == "LOSEHARD") {
    endScreen.endScreen();
  } else if (gameState == "RESTARTEASY") {
    resetEasy.resetGameEasy();
  } else if (gameState == "RESTARTMEDIUM") {
    resetMedium.resetGameMedium();
  } else if (gameState == "RESTARTHARD") {
    resetHard.resetGameHard();
  }
}
void displayScore() // how to do the highscore system
{
  if (score>highScore)
  {
    highScore = score;
  }
  //ScoreBoard
  fill(160, 160, 160, 200);
  rect(width-250, 10, 155, 80, 5);
  fill(0);
  textSize(32);
  text("Score: " + score, width - 170, 40);  
  text("High:  " + highScore, width - 170, 80);
  fill(#FFFFBF);
  rect(0, 0, 50, 50);
  image(arrow, 2, 10);
}
void setPipeseasy() { //pipe settings in easy mode
  gameState = "EASY";
  //Move the Pipes
  for (int i = 0; i < pipeX.length; i++)
  {
    image(topPipe, pipeX[i], pipeY[i]);
    image(botPipe, pipeX[i], pipeY[i] + 800);
    pipeX[i]-= 3;
    if (score > 500)
    {
      pipeX[i]--;  //Makes the game speed up after 500 points
    }
    if (score > 1000)
    {
      pipeX[i]--;  //Makes the game speed up after 1000 points
    }
    if (pipeX[i] < -200)
    {
      pipeX[i] = width;
    }

    //Check for Collision
    if (ny > height || ny < 0)
    {
      fill(255, 0, 0, 140);
      rect(90, 70, 320, 44);
      fill(0);
      textSize(24);
      text("OH NO!!!! NYANCAT FELL OFF THE SCREEN...", 250, 104);
      gameState="LOSEEASY";
    }
    if (nx > (pipeX[i]-195) && nx < pipeX[i] + 138)
    {
      //End Game is not in SAFE ZONE
      if (!(ny > pipeY[i] + 350 && ny < pipeY[i] + (350 + 450-65)))  
      {
        gameState="LOSEEASY";
        fill(255, 0, 0, 200);
        textSize(24);
        rect(20, height - 223, 455, 32);
        fill(0);
        text("OH NO! DEATH BY PIPE...", 150, height - 200);
      }
      //Score if pass through pipe
      else
      {
        score++;
      }
    }
  }
}
void setPipesmedium() { //pipe settings in medium mode
  gameState = "MEDIUM";
  //Move the Pipes
  for (int i = 0; i < pipeX.length; i++)
  {
    image(topPipe, pipeX[i], pipeY[i]);
    image(botPipe, pipeX[i], pipeY[i] + 800);
    pipeX[i]-= 7;
    if (score > 500)
    {
      pipeX[i]--;  //Makes the game speed up after 500 points
    }
    if (score > 1000)
    {
      pipeX[i]--;  //Makes the game speed up after 100 points
    }
    if (pipeX[i] < -200)
    {
      pipeX[i] = width;
    }

    //Check for Collision
    if (ny > height || ny < 0)
    {
      fill(255, 0, 0, 140);
      rect(90, 70, 320, 44);
      fill(0);
      textSize(24);
      text("OH NO!!!! NYANCAT FELL OFF THE SCREEN...", 250, 104);
      gameState="LOSEMEDIUM";
    }
    if (nx > (pipeX[i]-195) && nx < pipeX[i] + 138)
    {
      //End Game is not in SAFE ZONE
      if (!(ny > pipeY[i] + 350 && ny < pipeY[i] + (350 + 450-65)))
      {
        gameState = "LOSEMEDIUM";
        fill(255, 0, 0, 200);
        textSize(24);
        rect(20, height - 223, 455, 32);
        fill(0);
        text("OH NO! DEATH BY PIPE...", 150, height - 200);
      }
      //Score if pass through pipe
      else
      {
        score++;
      }
    }
  }
}
void setPipeshard() { //pipe settings in hard mode
  gameState = "HARD";
  g = 2; //gravity shift, harder to control character
  //Move the Pipes
  for (int i = 0; i < pipeX.length; i++)
  {
    image(topPipe, pipeX[i], pipeY[i]);
    image(botPipe, pipeX[i], pipeY[i] + 800);
    pipeX[i]-= 10;
    if (score > 500)
    {
      pipeX[i]--;  //Makes the game speed up after 500 points
    }
    if (score > 1000)
    {
      pipeX[i]--;  //Makes the game speed up after 1000 points
    }
    if (pipeX[i] < -200)
    {
      pipeX[i] = width;
    }

    //Check for Collision
    if (ny > height || ny < 0)
    {
      fill(255, 0, 0, 140);
      rect(90, 70, 320, 44);
      fill(0);
      textSize(24);
      text("OH NO!!!! NYANCAT FELL OFF THE SCREEN...", 250, 104);
      gameState="LOSEHARD";
    }
    if (nx > (pipeX[i]-195) && nx < pipeX[i] + 138)
    { 
      //End Game is not in SAFE ZONE
      if (!(ny > pipeY[i] + 350 && ny < pipeY[i] + (350 + 450-65)))
      {
        gameState="LOSEHARD";
        fill(255, 0, 0, 200);
        textSize(24);
        rect(50, height - 223, 455, 32);
        fill(0);
        text("OH NO! DEATH BY PIPE...", 200, height - 200);
      }
      //Score if pass through pipe
      else
      {
        score++;
      }
    }
  }
}

void nyan() { //Character movement (up button) and setting the velocity for Nyan
  image(nyancat, nx, ny);
  ny = ny + Vny;
  Vny = Vny + g; 
  if (keyPressed) {
    if (keyCode == UP); 
    {
      Vny = -13;
    }
  }
}

void seteasyflappy() //background for easy mode
{
  image(easyflappy, bgx, bgy);
  image(easyflappy, bgx + easyflappy.width, bgy);
  bgx--;
  if (bgx < -easyflappy.width)
  {
    bgx = 0; //RESET images to starting position
  }
}
void setmediumcity() //background for medium mode
{
  image(mediumcity, bgx, bgy);
  image(mediumcity, bgx + mediumcity.width, bgy);
  bgx--;
  if (bgx < -mediumcity.width)
  {
    bgx = 0; //RESET images to starting position
  }
}
void sethardcandy() //background for hard mode
{
  image(hardcandy, bgx, bgy);
  image(hardcandy, bgx + hardcandy.width, bgy);
  bgx--;
  if (bgx < -hardcandy.width)
  {
    bgx = 0; //RESET images to starting position
  }
}
void mousePressed() {
  //Intro to start screen
  if ((mouseX > 365  && mouseX<915 && mouseY>445 && mouseY<575) && gameState == "INTRO") {
    gameState = "START";
  }
  //Intro to info screen
  if ((mouseX > 365  && mouseX<915 && mouseY>590 && mouseY<650) && gameState == "INTRO") {
    gameState = "INFO";
  }
  //Losing easy mode to resetting easy mode
  if ((mouseX > 90 && mouseX < 595 && mouseY > 150 && mouseY < 290) && gameState == "LOSEEASY") {
    gameState = "RESTARTEASY";
  }
  //Losing medium mode to resetting medium mode
  if ((mouseX > 90 && mouseX < 595 && mouseY > 150 && mouseY < 290) && gameState == "LOSEMEDIUM") {
    gameState = "RESTARTMEDIUM";
  }
  //Losing hard mode to resetting hard mode
  if ((mouseX > 90 && mouseX < 595 && mouseY > 150 && mouseY < 290) && gameState == "LOSEHARD") {
    gameState = "RESTARTHARD";
  }
  if ((mouseX>140 && mouseX<190 && mouseY>100&& mouseY<150) && gameState  == "INFO") {
    //rect(140, 100, 50, 50);
    gameState = "INTRO";
  }
  //Difficulty level buttons
  //start to easy level
  if ((dist(mouseX, mouseY, 450, 350) <= 50) && gameState == "START") {
    gameState = "EASY";
  }
  //start to medium level
  if ((dist(mouseX, mouseY, 640, 350) <= 50) && gameState == "START") {
    gameState = "MEDIUM";
  }
  //start to hard level
  if ((dist(mouseX, mouseY, 840, 350) <= 50) && gameState == "START") {
    gameState = "HARD";
  }
  //Back to intro screen buttons (LOCATED AT TOP LEFT SCREEN OF EVERY LEVEL)
  if ((mouseX>0 && mouseX<50 && mouseY>0 && mouseY<50) && gameState == "EASY" || gameState == "LOSEEASY") {
    gameState = "INTRO";
  }
  if ((mouseX>0 && mouseX<50 && mouseY>0 && mouseY<50) && gameState == "MEDIUM" || gameState == "LOSEMEDIUM") {
    gameState = "INTRO";
  }
  if ((mouseX>0 && mouseX<50 && mouseY>0 && mouseY<50) && gameState == "HARD" || gameState == "LOSEHARD") {
    gameState = "INTRO";
  }
}

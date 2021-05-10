class info {
  void infoGame() { //INSTRUCTIONS
    solongtwentysong.pause();
    stardustsong.pause();
    phantomsong.pause();
    stroke(#00FFDB);
    rectMode(CENTER);
    fill(#A6DED6);
    rect(width/2, height/2, 1000, 600);
    textAlign(CENTER);
    textSize(32);
    fill(0);
    text("Welcome to Flayn Bird-- a cross over between Flappy Bird and Nyan Cat!", 650, 250); 
    text("Touching the pipes or top and bottom of the screen means defeat!", 650, 350); 
    text("Try to get the highest score you can! The game will begin as soon as you choose a level!", 650, 450); 
    text("Your control is the up arrow! Try to keep Nyan cat afloat, have fun!", 650, 550);
    stroke(0);
    fill(#FF0000);
    rectMode(CORNER);
    rect(140, 100, 50, 50);
    fill(0);
    text("X", 165, 140);
    gameState = "INFO";
  }
}

class startgame {
  void startGame() { //start screen for choosing levels
    solongtwentysong.pause();
    stardustsong.pause();
    phantomsong.pause();
    image(nyanspaceblank, 0, 0);
    textAlign(CENTER); 
    fill(255);
    textSize(90);
    text("CHOSE YOUR DIFFICULTY!", width/2, 550);
    noStroke();
    fill(#4AF57E);
    ellipse(450, 350, 100, 100);
    fill(#FCFF7C);
    ellipse(width/2, 350, 100, 100);
    fill(#FF90B2);
    ellipse(840, 350, 100, 100);
    gameState = "START";
  }
}

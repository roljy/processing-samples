class intro {
  void introGame() { //introduction page
    solongtwentysong.pause();
    stardustsong.pause();
    phantomsong.pause();
    nyansong.play(); //Nyan Cat in Space Song
    image(nyanspace, bgx, bgy);
    image(nyanspace, bgx + nyanspace.width, bgy);
    bgx = bgx - 1;
    if (bgx < -nyanspace.width)
    {
      bgx = 0; // Resets the background image once the first one passes
    }
    image(nyanpillar, 80, 550);
    image(nyanpillar, 1000, 500);
    image(nyanpillardown, 1000, 0);
    fill(#162D67);
    stroke(255);
    rect(365, 440, 550, 130);
    rect(365, 590, 550, 60);
    textAlign(CENTER); 
    fill(255);
    textSize(90);
    text("NYAN X FLAPPY BIRD: FLAYN CAT", width/2, 370);
    textSize(80);
    text("PLAY", width/2, 525);
    textSize(40);
    text("INSTRUCTIONS", width/2, 640);
    gameState = "INTRO";
  }
}

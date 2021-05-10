class end {
  void endScreen() //Screen that pops up after you lose
  {
    fill(150, 150, 250, 100);
    if (mouseX > 90 && mouseX < 595 && mouseY > 150 && mouseY < 290)
    {
      fill(150, 250, 150, 100);
    }
    rect(90, 150, 505, 140, 5);
    fill(0);
    textSize(40);
    text("Nyancat died     : (", 300, 200);
    text("Click HERE to play again.", 300, 270);
  }
}

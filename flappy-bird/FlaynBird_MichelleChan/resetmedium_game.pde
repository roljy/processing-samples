class resetmedium {
  void resetGameMedium() { //reseting the medium level
    ny = height/2;
    for (int i = 0; i < pipeX.length; i++)
    {
      pipeX[i] = width + 315*i;
      pipeY[i] = (int)random(-200, 0);
    }      
    score = 0;
    gameState = "MEDIUM";
  }
}

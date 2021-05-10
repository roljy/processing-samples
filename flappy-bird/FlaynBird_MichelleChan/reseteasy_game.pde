class reseteasy {
  void resetGameEasy() { //reseting the easy level
    ny = height/2;
      for (int i = 0; i < pipeX.length; i++)
      {
        pipeX[i] = width + 315*i;
        pipeY[i] = (int)random(-200, 0);
      }      
      score = 0;
      gameState = "EASY";
    }
  }

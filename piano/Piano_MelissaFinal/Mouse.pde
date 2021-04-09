void mousePressed() {

  //Choose Level Code
  if (screen == 0) {
    //User chooses beginner level
    if (mouseX>=150 && mouseX<=325 && mouseY>=200 && mouseY<=240) {
      screen = 1;
    }
    //User chooses advanced level
    else if (mouseX>=425 && mouseX<=620 && mouseY>=200 && mouseY<=240) {
      screen = 2;
    }
  } else if (screen == 1 || screen == 2) {
    if (mouseX>=25 && mouseX<=255 && mouseY>=b && mouseY<=y+50) {
      sheetMusicSelect = 1;
    } else if (mouseX>=335 && mouseX<=550 && mouseY>=b && mouseY<=y) {
      sheetMusicSelect = 2;
    } else if (mouseX>=595 && mouseX<=765 && mouseY>=b && mouseY<=y) {
      sheetMusicSelect = 3;
    }
  }

  playNote();
}

void playNote() {
  //keyC1
  if (mouseX>=x && mouseX<=x+100 && mouseY>=y && mouseY<=f) {
    C.play();
  }

  //keyD
  if (mouseX>=x+100 && mouseX<=x+200 && mouseY>=y && mouseY<=f) {
    D.play();
  }
  //keyE
  if (mouseX>=x+200 && mouseX<=x+300 && mouseY>=y && mouseY<=f) {
    E.play();
  }

  //keyF
  if (mouseX>=x+300 && mouseX<=x+400 && mouseY>=y && mouseY<=f) {
    F.play();
  }

  //keyG
  if (mouseX>=x+400 && mouseX<=x+500 && mouseY>=y && mouseY<=f) {
    G.play();
  }

  //keyA
  if (mouseX>=x+500 && mouseX<=x+600 && mouseY>=y && mouseY<=f) {
    A.play();
  }

  //keyB
  if (mouseX>=x+600 && mouseX<=x+700 && mouseY>=y && mouseY<=f) {
    B.play();
  }
  //keyC2
  if (mouseX>=x+700 && mouseX<=x+800 && mouseY>=y && mouseY<=f) {
    Z.play();
  }
  //keyDflat, C sharp
  if (mouseX>=x+65 && mouseX<=x+140 && mouseY>=y && mouseY<=y+300) {
    H.play();
  }
  if ((mouseX>=x && mouseX<=x+100 && mouseY>=y && mouseY<=f) && (mouseX>=x+65 && mouseX<=x+140 && mouseY>=y && mouseY<=y+300)) {
    H.play();
  }
  //keyEflat, D sharp
  if (mouseX>=x+165 && mouseX<=x+240 && mouseY>=y && mouseY<=y+300) {
    I.play();
  }
  if ((mouseX>=x+100 && mouseX<=x+200 && mouseY>=y && mouseY<=f) && (mouseX>=x+165 && mouseX<=x+240 && mouseY>=y && mouseY<=y+300)) {
    I.play();
  }
  if ((mouseX>=x+200 && mouseX<=x+300 && mouseY>=y && mouseY<=f) && (mouseX>=x+165 && mouseX<=x+240 && mouseY>=y && mouseY<=y+300)) {
    I.play();
  }  
  //keyGflat, F sharp
  if (mouseX>=x+365 && mouseX<=x+440 && mouseY>=y && mouseY<=y+300) {
    J.play();
  }
  if ((mouseX>=x+200 && mouseX<=x+300 && mouseY>=y && mouseY<=f) && (mouseX>=x+365 && mouseX<=x+440 && mouseY>=y && mouseY<=y+300)) {
    J.play();
  }
  if ((mouseX>=x+300 && mouseX<=x+400 && mouseY>=y && mouseY<=f) && (mouseX>=x+365 && mouseX<=x+440 && mouseY>=y && mouseY<=y+300)) {
    J.play();
  }
  //keyAflat, G sharp
  if (mouseX>=x+465 && mouseX<=x+540 && mouseY>=y && mouseY<=y+300) {
    K.play();
  }
  if ((mouseX>=x+300 && mouseX<=x+400 && mouseY>=y && mouseY<=f) && (mouseX>=x+465 && mouseX<=x+540 && mouseY>=y && mouseY<=y+300)) {
    K.play();
  }
  if ((mouseX>=x+400 && mouseX<=x+500 && mouseY>=y && mouseY<=f) && (mouseX>=x+465 && mouseX<=x+540 && mouseY>=y && mouseY<=y+300)) {
    K.play();
  }  
  //keyBflat, A sharp
  if (mouseX>=x+565 && mouseX<=x+640 && mouseY>=y && mouseY<=y+300) {
    L.play();
  }
  if ((mouseX>=x+500 && mouseX<=x+600 && mouseY>=y && mouseY<=f) && (mouseX>=x+655 && mouseX<=x+640 && mouseY>=y && mouseY<=y+300)) {
    L.play();
  }
  if ((mouseX>=x+600 && mouseX<=x+700 && mouseY>=y && mouseY<=f) && (mouseX>=x+565 && mouseX<=x+640 && mouseY>=y && mouseY<=y+300)) {
    L.play();
  }  
  //keyDflat, C sharp
  if (mouseX>=x+765 && mouseX<=x+800 && mouseY>=y && mouseY<=y+300) {
    M.play();
  }
  if ((mouseX>=x+700 && mouseX<=x+800 && mouseY>=y && mouseY<=f) && (mouseX>=x+765 && mouseX<=x+800 && mouseY>=y && mouseY<=y+300)) {
    M.play();
  }
}

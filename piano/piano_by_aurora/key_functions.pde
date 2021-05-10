void keyPressed() {//so that piano keys work when keyboard keys are pressed
  if (piano1) {

    //before the 
    if (c3b) {
      if (key == 'z') {
        image(screen, -1, -1, 1187, 667);//same as earlier
        text("C3", 549, 107);
        image(c3k, 0, 0, 1187, 667);
        c3.play(1, y);
        c3b=false;
      }
    }

    if (d3b) {
      if (key == 'x') {
        image(screen, -1, -1, 1187, 667);
        text("D3", 549, 107);
        image(d3k, 0, 0, 1187, 667);
        d3.play(1, y);
        d3b=false;
      }
    }
    if (e3b) {
      if (key == 'c') {
        image(screen, -1, -1, 1187, 667);
        text("E3", 549, 107);
        image(e3k, 0, 0, 1187, 667);
        e3.play(1, y);
        e3b=false;
      }
    }
    if (f3b) {
      if (key == 'v') {
        image(screen, -1, -1, 1187, 667);
        text("F3", 549, 107);
        image(f3k, 0, 0, 1187, 667);
        f3.play(1, y);
        f3b=false;
      }
    }

    if (g3b) {
      if (key == 'b') {
        image(screen, -1, -1, 1187, 667);
        text("G3", 549, 107);
        image(g3k, 0, 0, 1187, 667);
        g3.play(1, y);
        g3b=false;
      }
    }
    if (a3b) {
      if (key == 'n') {
        image(screen, -1, -1, 1187, 667);
        text("A3", 549, 107);
        image(a3k, 0, 0, 1187, 667);
        a3.play(1, y);
        a3b=false;
      }
    }
    if (b3b) {
      if (key == 'm') {
        image(screen, -1, -1, 1187, 667);
        image(b3k, 0, 0, 1187, 667);
        b3.play(1, y);
        text("B3", 549, 107);
        b3b=false;
      }
    }

    if (c4b) {
      if (key == 'r') {
        image(screen, -1, -1, 1187, 667);
        c4.play(1, y);
        text("C4", 549, 107);
        image(c3k, 575, 0, 1187, 667);
        c4b=false;
      }
    }
    if (d4b) {
      if (key == 't') {
        image(screen, -1, -1, 1187, 667);
        text("D4", 549, 107);
        image(d3k, 575, 0, 1187, 667);
        d4.play(1, y);
        d4b=false;
      }
    }
    if (e4b) {
      if (key == 'y') {
        image(screen, -1, -1, 1187, 667);
        text("E4", 549, 107);
        image(e3k, 575, 0, 1187, 667);
        e4.play(1, y);
        e4b=false;
      }
    }
    if (f4b) {
      if (key == 'u') {
        image(screen, -1, -1, 1187, 667);
        text("F4", 549, 107);
        image(f3k, 575, 0, 1187, 667);
        f4.play(1, y);
        f4b=false;
      }
    }
    if (g4b) {
      if (key == 'i') {
        image(screen, -1, -1, 1187, 667);
        text("G4", 549, 107);
        image(g3k, 575, 0, 1187, 667);
        g4.play(1, y);
        g4b=false;
      }
    }
    if (a4b) {
      if (key == 'o') {
        image(screen, -1, -1, 1187, 667);
        text("A4", 549, 107);
        image(a3k, 575, 0, 1187, 667);
        a4.play(1, y);
        a4b=false;
      }
    }
    if (b4b) {
      if (key == 'p') {
        image(screen, -1, -1, 1187, 667);
        b4.play(1, y);
        text("B4", 549, 107);
        image(b3k, 575, 0, 1187, 667);
        b4b=false;
      }
    }

    if (cs3b) {
      if (key == 's') {
        image(screen, -1, -1, 1187, 667);
        cs3.play(1, y);
        text("C#3", 538, 107);
        image(black1, 0, 0, 1187, 667);
        cs3b=false;
      }
    }
    if (ds3b) {
      if (key == 'd') {
        image(screen, -1, -1, 1187, 667);
        ds3.play(1, y);
        text("D#3", 538, 107);
        image(black1, 82, 0, 1187, 667);
        ds3b=false;
      }
    }
    if (fs3b) {
      if (key == 'g') {
        image(screen, -1, -1, 1187, 667);
        fs3.play(1, y);
        text("F#3", 538, 107);
        image(black1, 234, 0, 1187, 667);
        fs3b=false;
      }
    }
    if (gs3b) {
      if (key == 'h') {
        image(screen, -1, -1, 1187, 667);
        gs3.play(1, y);
        text("G#3", 538, 107);
        image(black1, 328, 0, 1187, 667);
        gs3b=false;
      }
    }
    if (as3b) {
      if (key == 'j') {
        image(screen, -1, -1, 1187, 667);
        as3.play(1, y);
        text("A#3", 538, 107);
        image(black1, 423, 0, 1187, 667);
        as3b=false;
      }
    }

    if (cs4b) {
      if (key == '5') {
        image(screen, -1, -1, 1187, 667);
        cs4.play(1, y);
        text("C#4", 538, 107);
        image(black1, 575, 0, 1187, 667);
        cs4b=false;
      }
    }
    if (ds4b) {
      if (key == '6') {
        image(screen, -1, -1, 1187, 667);
        ds4.play(1, y);
        text("D#4", 538, 107);
        image(black1, 657, 0, 1187, 667);
        ds4b=false;
      }
    }
    if (fs4b) {
      if (key == '8') {
        image(screen, -1, -1, 1187, 667);
        fs4.play(1, y);
        text("F#4", 538, 107);
        image(black1, 808, 0, 1187, 667);
        fs4b=false;
      }
    }
    if (gs4b) {
      if (key == '9') {
        image(screen, -1, -1, 1187, 667);
        gs4.play(1, y);
        text("G#4", 538, 107);
        image(black1, 903, 0, 1187, 667);
        gs4b=false;
      }
    }
    if (as4b) {
      if (key == '0') {
        image(screen, -1, -1, 1187, 667);
        as4.play(1, y);
        text("A#4", 538, 107);
        image(black1, 997, 0, 1187, 667);
        as4b=false;
      }
    }

    if (button6==true) {//if any key is pressed when instructions are there, it will go away
      image(undoImage, 0, 0, 1187, 667);
      image(helpButton, 0, 0, 1187, 667);
      button6=false;
      click.play(1, y);
    }
    if (button5==true) {//if song boolean=true, and numbers are pressed, song will play
      if (key == '1') {
        elise.loop(1, y);
        laputa.pause();
        jojo.pause();
        star.pause();
      }
      if (key == '2') {
        laputa.loop(1, y);
        jojo.pause();
        star.pause();
        elise.pause();
      }
      if (key == '3') {
        jojo.loop(1, y);
        laputa.pause();
        star.pause();
        elise.pause();
      }
      if (key == '4') {
        star.loop(1, y);
        laputa.pause();
        jojo.pause();
        elise.pause();
      }
    }
    if (button2==true) {//if any key is pressed when instructions are there, it will go away
      if (key == '1') {
        drum.loop(1, y);
        drum2.pause();
        drum3.pause();
      }
      if (key == '2') {
        drum2.loop(1, y);
        drum.pause();
        drum3.pause();
      }
      if (key == '3') {
        drum3.loop(1, y);
        drum2.pause();
        drum.pause();
      }
    }
  }
}

void keyReleased() {
  if (piano1) {
    image(keys, 0, 0, 1187, 667);//so the keys go back to normal when key released
    if (key=='z') {
      c3b=true;
    }
    if (key=='x') {
      d3b=true;
    }
    if (key=='c') {
      e3b=true;
    }
    if (key=='v') {
      f3b=true;
    }
    if (key=='b') {
      g3b=true;
    }
    if (key=='n') {
      a3b=true;
    }
    if (key=='m') {
      b3b=true;
    }

    if (key=='r') {
      c4b=true;
    }
    if (key=='t') {
      d4b=true;
    }
    if (key=='y') {
      e4b=true;
    }
    if (key=='u') {
      f4b=true;
    }
    if (key=='i') {
      g4b=true;
    }
    if (key=='o') {
      a4b=true;
    }
    if (key=='p') {
      b4b=true;
    }

    if (key=='s') {
      cs3b=true;
    }
    if (key=='d') {
      ds3b=true;
    }
    if (key=='g') {
      fs3b=true;
    }
    if (key=='h') {
      gs3b=true;
    }
    if (key=='j') {
      as3b=true;
    }

    if (key=='5') {
      cs4b=true;
    }
    if (key=='6') {
      ds4b=true;
    }
    if (key=='8') {
      fs4b=true;
    }
    if (key=='9') {
      gs4b=true;
    }
    if (key=='0') {
      as4b=true;
    }
  }
}

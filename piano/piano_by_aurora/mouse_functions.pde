void mousePressed() {
  if (piano1) {
    //this section makes sure the right notes plays when you click on a key
    if ((mouseX>77) && (mouseX<120) && (mouseY>168) &&(mouseY<478)) {//bounds of a key
      image(screen, -1, -1, 1187, 667);//so the screen resets every time
      cs3.play(1, y);//play the note
      text("C#3", 538, 107);//note shows on screen
      image(black1, 0, 0, 1187, 667);//uplaods an image of pressed down key
    } else if ((mouseX>20) && (mouseX<98) && (mouseY>168) &&(mouseY<648)) {
      image(screen, -1, -1, 1187, 667);
      c3.play(1, y);
      text("C3", 549, 107);
      image(c3k, 0, 0, 1187, 667);//uplaods an image of pressed down key
    } else if ((mouseX>160) && (mouseX<203) && (mouseY>168) &&(mouseY<478)) {
      image(screen, -1, -1, 1187, 667);
      ds3.play(1, y);
      text("D#3", 538, 107);
      image(black1, 82, 0, 1187, 667);//uplaods an image of pressed down key
    } else if ((mouseX>312) && (mouseX<355) && (mouseY>168) &&(mouseY<478)) {
      image(screen, -1, -1, 1187, 667);
      fs3.play(1, y);
      text("F#3", 538, 107);
      image(black1, 234, 0, 1187, 667);//uplaods an image of pressed down key
    } else if ((mouseX>407) && (mouseX<450) && (mouseY>168) &&(mouseY<478)) {
      image(screen, -1, -1, 1187, 667);
      gs3.play(1, y);
      text("G#3", 538, 107);
      image(black1, 328, 0, 1187, 667);//uplaods an image of pressed down key
    } else if ((mouseX>502) && (mouseX<545) && (mouseY>168) &&(mouseY<478)) {
      image(screen, -1, -1, 1187, 667);
      as3.play(1, y);
      text("A#3", 538, 107);
      image(black1, 423, 0, 1187, 667);//uplaods an image of pressed down key
    } else if ((mouseX>654) && (mouseX<697) && (mouseY>168) &&(mouseY<478)) {
      image(screen, -1, -1, 1187, 667);
      cs4.play(1, y);
      text("C#4", 538, 107);
      image(black1, 575, 0, 1187, 667);
    } else if ((mouseX>736) && (mouseX<779) && (mouseY>168) &&(mouseY<478)) {
      image(screen, -1, -1, 1187, 667);
      ds4.play(1, y);
      image(black1, 657, 0, 1187, 667);
      text("D#4", 538, 107);
    } else if ((mouseX>889) && (mouseX<932) && (mouseY>168) &&(mouseY<478)) {
      image(screen, -1, -1, 1187, 667);
      fs4.play(1, y);
      text("F#4", 538, 107);
      image(black1, 808, 0, 1187, 667);
    } else if ((mouseX>982) && (mouseX<1025) && (mouseY>168) &&(mouseY<478)) {
      image(screen, -1, -1, 1187, 667);
      gs4.play(1, y);
      text("G#4", 538, 107);
      image(black1, 903, 0, 1187, 667);
    } else if ((mouseX>1077) && (mouseX<1120) && (mouseY>168) &&(mouseY<478)) {
      image(screen, -1, -1, 1187, 667);
      as4.play(1, y);
      text("A#4", 538, 107);
      image(black1, 997, 0, 1187, 667);
    } else if ((mouseX>101) && (mouseX<179) && (mouseY>168) &&(mouseY<648)) {
      image(screen, -1, -1, 1187, 667);
      d3.play(1, y);
      text("D3", 549, 107);
      image(d3k, 0, 0, 1187, 667);
    } else if ((mouseX>183) && (mouseX<261) && (mouseY>168) &&(mouseY<648)) {
      image(screen, -1, -1, 1187, 667);
      e3.play(1, y);
      text("E3", 553, 107);
      image(e3k, 0, 0, 1187, 667);
    } else if ((mouseX>265) && (mouseX<343) && (mouseY>168) &&(mouseY<648)) {
      image(screen, -1, -1, 1187, 667);
      f3.play(1, y);
      text("F3", 553, 107);
      image(f3k, 0, 0, 1187, 667);
    } else if ((mouseX>347) && (mouseX<425) && (mouseY>168) &&(mouseY<648)) {
      image(screen, -1, -1, 1187, 667);
      g3.play(1, y);
      text("G3", 553, 107);
      image(g3k, 0, 0, 1187, 667);
    } else if ((mouseX>430) && (mouseX<508) && (mouseY>168) &&(mouseY<648)) {
      image(screen, -1, -1, 1187, 667);
      a3.play(1, y);
      text("A3", 553, 107);
      image(a3k, 0, 0, 1187, 667);
    } else if ((mouseX>512) && (mouseX<590) && (mouseY>168) &&(mouseY<648)) {
      image(screen, -1, -1, 1187, 667);
      b3.play(1, y);
      image(b3k, 0, 0, 1187, 667);
      text("B3", 554, 107);
    } else if ((mouseX>595) && (mouseX<673) && (mouseY>168) &&(mouseY<648)) {
      image(screen, -1, -1, 1187, 667);
      c4.play(1, y);
      text("C4", 553, 107);
      image(c3k, 575, 0, 1187, 667);
    } else if ((mouseX>678) && (mouseX<756) && (mouseY>168) &&(mouseY<648)) {
      image(screen, -1, -1, 1187, 667);
      d4.play(1, y);
      text("D4", 553, 107);
      image(d3k, 575, 0, 1187, 667);
    } else if ((mouseX>760) && (mouseX<838) && (mouseY>168) &&(mouseY<648)) {
      image(screen, -1, -1, 1187, 667);
      e4.play(1, y);
      text("E4", 553, 107);
      image(e3k, 575, 0, 1187, 667);
    } else if ((mouseX>842) && (mouseX<920) && (mouseY>168) &&(mouseY<648)) {
      image(screen, -1, -1, 1187, 667);
      f4.play(1, y);
      text("F4", 553, 107);
      image(f3k, 575, 0, 1187, 667);
    } else if ((mouseX>923) && (mouseX<1001) && (mouseY>168) &&(mouseY<648)) {
      image(screen, -1, -1, 1187, 667);
      g4.play(1, y);
      text("G4", 553, 107);
      image(g3k, 575, 0, 1187, 667);
    } else if ((mouseX>1005) && (mouseX<1083) && (mouseY>168) &&(mouseY<648)) {
      image(screen, -1, -1, 1187, 667);
      a4.play(1, y);
      text("A4", 553, 107);
      image(a3k, 575, 0, 1187, 667);
    } else if ((mouseX>1087) && (mouseX<1165) && (mouseY>168) &&(mouseY<648)) {
      image(screen, -1, -1, 1187, 667);
      b4.play(1, y);
      text("B4", 553, 107);
      image(b3k, 575, 0, 1187, 667);
    }
  }
}

void mouseReleased() {
  if (piano1) {
    image(keys, 0, 0, 1187, 667); //so the keys go back to normal (rise up) when mouse released
  }
}

void mouseClicked() {
  if (start1) {
    if ((mouseX>518) && (mouseX<669) && (mouseY>255) && (mouseY<295)) {
      piano1=true;
      start1=false;
      click.play();//play button sound
      image(piano, 0, 0, 1187, 667);
    }
  }
  if (piano1) {
    if ((mouseX>79) && (mouseX<150) && (mouseY>69) && (mouseY<144))//first button
      if (button == true) {//if button is not clicked, then
        button= false;
        image(six, -952, 1, 1187, 667);//restore original button no red light
        image(screen, -1, -1, 1187, 667);
        click.play(1, y);//play button sound
      } else if (button == false) {//if button is clicked, then...
        button = true;
        button2=false;
        image(six, -842.5, 1, 1187, 667);
        button3=false;
        image(six, -731, 1, 1187, 667);
        button5=false;
        image(six, -113, 1, 1187, 667);
        drum.pause();
        drum2.pause();
        drum3.pause();
        beat.pause();
        elise.pause();
        star.pause();
        jojo.pause();
        laputa.pause();
        image(red, 0, 0, 1187, 667);//red light
        click.play(1, y);//play button sound
        image(screen, -1, -1, 1187, 667);
        image(arrow, 0, 0, 1187, 667);
        textSize(40);
        text(y, 533, 100);
      }

    if ((mouseX>188) && (mouseX<257) && (mouseY>69) && (mouseY<144))//second button
      if (button2 == true) {
        click.play(1, y);
        button2 = false;
        image(six, -842.5, 1, 1187, 667);
        drum.pause();
        drum2.pause();
        drum3.pause();
        image(screen, -1, -1, 1187, 667);
      } else if (button2 == false) {
        button=false;
        image(six, -952, 1, 1187, 667);
        button5=false;
        image(six, -113, 1, 1187, 667);
        button3=false;
        image(six, -731, 1, 1187, 667);
        click.play(1, y);
        beat.pause();
        elise.pause();
        star.pause();
        jojo.pause();
        laputa.pause();
        button2 = true;
        image(red, 109, 0, 1187, 667);
        image(drumdisplay, 0, 0, 1187, 667);
      }

    if ((mouseX>300) && (mouseX<369) && (mouseY>69) && (mouseY<144)) {//third button
      if (button3 == true) {
        click.play(1, y);
        button3 = false;
        image(six, -731, 1, 1187, 667);
        beat.pause();
        image(screen, -1, -1, 1187, 667);
      } else if (button3 == false) {
        button=false;
        image(six, -952, 1, 1187, 667);
        button2=false;
        image(six, -842.5, 1, 1187, 667);
        button5=false;
        image(six, -113, 1, 1187, 667);
        drum.pause();
        drum2.pause();
        drum3.pause();
        elise.pause();
        star.pause();
        jojo.pause();
        laputa.pause();

        click.play(1, y);
        image(red, 221, 0, 1187, 667);
        button3 = true;
        beat.loop(1, y);
        image(arrow, 0, 0, 1187, 667);
      }
    }

    if ((mouseX>809) && (mouseX<878) && (mouseY>69) && (mouseY<144))//fourth button
      if (button4 == true) {
        click.play(1, y);
        button4= false;
        image(six, -222, 1, 1187, 667);
      } else if (button4 == false) {
        click.play(1, y);
        button4 = true;
        image(red, 730, 0, 1187, 667);
      }

    if ((mouseX>918) && (mouseX<989) && (mouseY>69) && (mouseY<144))//fifth button
      if (button5 == true) {
        click.play(1, y);
        button5 = false;
        image(six, -113, 1, 1187, 667);
        image(screen, -1, -1, 1187, 667);
        jojo.pause();
        star.pause();
        elise.pause();
        laputa.pause();
      } else if (button5 == false) {
        button=false;
        image(six, -952, 1, 1187, 667);
        button2=false;
        image(six, -842.5, 1, 1187, 667);
        button3=false;
        image(six, -731, 1, 1187, 667);
        drum.pause();
        drum2.pause();
        drum3.pause();
        beat.pause();
        click.play(1, y);
        button5 = true;
        image(red, 839, 0, 1187, 667);
        image(songs, 0, 0, 1188, 667);
      }

    if ((mouseX>1031) && (mouseX<1102) && (mouseY>69) && (mouseY<144)) {//sixth button
      if (button6 == false) {
        undoImage = get();
        image(six, -222, 1, 1187, 667);
        click.play(1, y);
        button6 = true;
        image(red, 952, -1, 1187, 667);
        //get screen image before instructions appear
        image(instructions, 0, 0, 1187, 667);
        button4=false;
      } else if (button6 == true) {
        click.play(1, y);
        button6 = false;
        image(helpButton, 0, 0, 1187, 667);
        image(undoImage, 0, 0, 1187, 667);
      }
    } else if (button6 == true) {
      click.play(1, y);
      button6 = false;
      image(helpButton, 0, 0, 1187, 667);
      image(undoImage, 0, 0, 1187, 667);
    }

    //if button 3 is pressed, and the arrow is pressed, the speed of the beat will go up or down
    if (button3 == true) {
      if ((mouseX>470) &&(mouseX<540) &&(mouseY>50) &&(mouseY<120)) {
        if (x<2) {
          x=x+0.1;
          click.play(1, y);
        }
      }
      if ((mouseX>640) &&(mouseX<710) &&(mouseY>50) &&(mouseY<120)) {
        if (x>0.5) {
          x=x-0.1;
          click.play(1, y);
        }
      }
    }
    //if button 5 is pressed and a song is pressed, it will play
    if (button5 == true) {
      if ((mouseX>465) &&(mouseX<630) &&(mouseY>45) &&(mouseY<64)) {
        elise.loop(1, y);
        star.pause();
        laputa.pause();
        jojo.pause();
        click.play(1, y);
      }
      if ((mouseX>465) &&(mouseX<660) &&(mouseY>64) &&(mouseY<83)) {
        laputa.loop(1, y);
        star.pause();
        jojo.pause();
        elise.pause();
        click.play(1, y);
      }
      if ((mouseX>465) &&(mouseX<590) &&(mouseY>83) &&(mouseY<112)) {
        jojo.loop(1, y);
        star.pause();
        laputa.pause();
        elise.pause();
        click.play(1, y);
      }
      if ((mouseX>465) &&(mouseX<660) &&(mouseY>102) &&(mouseY<121)) {
        star.loop(1, y);
        laputa.pause();
        jojo.pause();
        elise.pause();
        click.play(1, y);
      }
    }
    if (button == true) {//if button 1 is pressed, and arrow is pressed, volume will go up and down
      if ((mouseX>470) &&(mouseX<540) &&(mouseY>50) &&(mouseY<120)) {
        if (y<1) {//cant be greater than 1
          y=y+0.1;//volume go up
          click.play(1, y);
        }
      }
      if ((mouseX>640) &&(mouseX<710) &&(mouseY>50) &&(mouseY<120)) {
        if (y>0) {//cant be less than 0
          y=y-0.1;//volume goes down
          click.play(1, y);
        }
        if (y<0) {
          y=0;
        }
      }
    }
    if (button2==true) {//if drums button is pressed...
      if ((mouseX>465) &&(mouseX<536) &&(mouseY>48) &&(mouseY<71)) {//if drums 1 is pressed...
        drum.loop(1, y);
        drum2.pause();//close other drums
        drum3.pause();
        click.play(1, y);
      }
      if ((mouseX>465) &&(mouseX<536) &&(mouseY>71) &&(mouseY<94)) {//if drums 2 is pressed...
        drum2.loop(1, y);
        drum.pause();
        drum3.pause();
        click.play(1, y);
      }
      if ((mouseX>465) &&(mouseX<536) &&(mouseY>94) &&(mouseY<117)) {//if drums 3 is pressed...
        drum3.loop(1, y);
        drum.pause();
        drum2.pause();
        click.play(1, y);
      }
    }
  }
}

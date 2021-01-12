void keys() {
  /*************************************************************************
   * This function draws all the keys on the keyboard and hilights them pink
   * when the user hovers over the key with their mouse.
   *************************************************************************/

  //keyC1
  if (mouseX>=x && mouseX<=x+100 && mouseY>=y && mouseY<=f) {
    fill(#F7E1E9);
    rect(x, y, e, d); 
  } else {
    fill(255); 
    rect(x, y, e, d);
 } if((mouseX>=x && mouseX<=x+100 && mouseY>=y && mouseY<=f) && (mouseX>=x+65 && mouseX<=x+140 && mouseY>=y && mouseY<=y+300)){
    fill(255); 
    rect(x, y, e, d);
 }
  //keyD
  if (mouseX>=x+100 && mouseX<=x+200 && mouseY>=y && mouseY<=f) {
    fill(#F7E1E9);
    rect(x+100, y, e, d);
  } else {
    fill(255); 
    rect(x+100, y, e, d);
  } if ((mouseX>=x+100 && mouseX<=x+200 && mouseY>=y && mouseY<=f) && (mouseX>=x+65 && mouseX<=x+140 && mouseY>=y && mouseY<=y+300)){
    fill(255); 
    rect(x+100, y, e, d);
  }
  if ((mouseX>=x+100 && mouseX<=x+200 && mouseY>=y && mouseY<=f) && (mouseX>=x+165 && mouseX<=x+240 && mouseY>=y && mouseY<=y+300)){
    fill(255); 
    rect(x+100, y, e, d);
  }
  //keyE
  if (mouseX>=x+200 && mouseX<=x+300 && mouseY>=y && mouseY<=f) {
    fill(#F7E1E9);
    rect(x+200, y, e, d);
  } else {
    fill(255); 
    rect(x+200, y, e, d);
  } if ((mouseX>=x+200 && mouseX<=x+200 && mouseY>=y && mouseY<=f) && (mouseX>=x+165 && mouseX<=x+240 && mouseY>=y && mouseY<=y+300)){
    fill(255); 
    rect(x+200, y, e, d);
  }
  //keyF
  if (mouseX>=x+300 && mouseX<=x+400 && mouseY>=y && mouseY<=f) {
    fill(#F7E1E9);
    rect(x+300, y, e, d);
  } else {
    fill(255); 
    rect(x+300, y, e, d);
  } if ((mouseX>=x+300 && mouseX<=x+400 && mouseY>=y && mouseY<=f) && (mouseX>=x+365 && mouseX<=x+440 && mouseY>=y && mouseY<=y+300)){
    fill(255); 
    rect(x+300, y, e, d);
  }

  //keyG
  if (mouseX>=x+400 && mouseX<=x+500 && mouseY>=y && mouseY<=f) {
    fill(#F7E1E9);
    rect(x+400, y, e, d);
  } else {
    fill(255); 
    rect(x+400, y, e, d);
  } if ((mouseX>=x+400 && mouseX<=x+500 && mouseY>=y && mouseY<=f) && (mouseX>=x+365 && mouseX<=x+440 && mouseY>=y && mouseY<=y+300)){
    fill(255); 
    rect(x+400, y, e, d);
  }if ((mouseX>=x+400 && mouseX<=x+500 && mouseY>=y && mouseY<=f) && (mouseX>=x+465 && mouseX<=x+540 && mouseY>=y && mouseY<=y+300)){
    fill(255); 
    rect(x+400, y, e, d);
  }

  //keyA
  if (mouseX>=x+500 && mouseX<=x+600 && mouseY>=y && mouseY<=f) {
    fill(#F7E1E9); 
    rect(x+500, y, e, d);
  } else {
    fill(255); 
    rect(x+500, y, e, d);
  } if ((mouseX>=x+500 && mouseX<=x+600 && mouseY>=y && mouseY<=f) && (mouseX>=x+465 && mouseX<=x+540 && mouseY>=y && mouseY<=y+300)){
    fill(255); 
    rect(x+500, y, e, d);
  }if ((mouseX>=x+500 && mouseX<=x+600 && mouseY>=y && mouseY<=f) && (mouseX>=x+565 && mouseX<=x+640 && mouseY>=y && mouseY<=y+300)){
    fill(255); 
    rect(x+500, y, e, d);
  }

  //keyB
  if (mouseX>=x+600 && mouseX<=x+700 && mouseY>=y && mouseY<=f) {
    fill(#F7E1E9);
    rect(x+600, y, e, d);
  } else {
    fill(255); 
    rect(x+600, y, e, d);
  } if ((mouseX>=x+600 && mouseX<=x+700 && mouseY>=y && mouseY<=f) && (mouseX>=x+565 && mouseX<=x+640 && mouseY>=y && mouseY<=y+300)){
    fill(255); 
    rect(x+600, y, e, d);
  }

  //keyC2
  if (mouseX>=x+700 && mouseX<=x+800 && mouseY>=y && mouseY<=f) {
    fill(#F7E1E9);  
    rect(x+700, y, e, d);
  } else {
    fill(255); 
    rect(x+700, y, 100, d);
  }if ((mouseX>=x+700 && mouseX<=x+800 && mouseY>=y && mouseY<=f) && (mouseX>=x+765 && mouseX<=x+800 && mouseY>=y && mouseY<=y+300)){
    fill(255); 
    rect(x+700, y, e, d);
  }

  //black keys 
  fill(0); 
  //keyDflat, C sharp
   if (mouseX>=x+65 && mouseX<=x+140 && mouseY>=y && mouseY<=y+300) {
    fill(#F7E1E9);  
    rect(x+65, y, a, y);
  } else {
    fill(0); 
   rect(x+65, y, a, y);
  }
   //keyEflat, D sharp
  if (mouseX>=x+165 && mouseX<=x+240 && mouseY>=y && mouseY<=y+300) {
    fill(#F7E1E9);  
     rect(x+165, y, a, y);
  } else {
    fill(0); 
    rect(x+165, y, a, y);
  }
  //keyGflat, F sharp
   if (mouseX>=x+365 && mouseX<=x+440 && mouseY>=y && mouseY<=y+300) {
    fill(#F7E1E9);  
    rect(x+365, y, a, y);
  } else {
    fill(0); 
  rect(x+365, y, a, y);
  }
  //keyAflat, G sharp
   if (mouseX>=x+465 && mouseX<=x+540 && mouseY>=y && mouseY<=y+300) {
    fill(#F7E1E9);  
    rect(x+465, y, a, y);
  } else {
    fill(0); 
   rect(x+465, y, a, y);
  }
  //keyBflat, A sharp
   if (mouseX>=x+565 && mouseX<=x+640 && mouseY>=y && mouseY<=y+300) {
    fill(#F7E1E9);  
    rect(x+565, y, a, y);
  } else {
    fill(0); 
  rect(x+565, y, a, y);
  }
  //keyDflat, C sharp
   if (mouseX>=x+765 && mouseX<=x+800 && mouseY>=y && mouseY<=y+300) {
    fill(#F7E1E9);  
    rect(x+765, y, a, y);
  } else {
    fill(0); 
  rect(x+765, y, a, y); 
  }
  
  if(screen == 1) {
  fill(0);
    text("  C      D     E     F     G      A     B     C", 0, 825);
}}

class Pianob {
  void musicsheets() {
    //screen 3-user chooses Mary Had a little Lamb Beginner Level
    if (sheetMusicSelect == 1) {
      //background(0);
      image(imgmaryb, x, 0, imgmaryb.width/2.5, imgmaryb.height/2.44);
      //music sheet and piano seperator
      fill(#F7E1E9); 
      rect(x, y, 850, c);
    }
    //screen 4-user chooses Jingle Bells Beginner Level
    else if (sheetMusicSelect == 2) {
      //background(0);
      image(imgbellsb, x, 0, imgbellsb.width*1.2, imgbellsb.height/2.5); 
      //music sheet and piano seperator
      fill(#F7E1E9); 
      rect(x, y, 850, c);
    }
    //screen 5-user chooses no music Beginner Level
    else if (sheetMusicSelect == 3) {
      //music sheet and piano seperator
      fill(#F7E1E9); 
      rect(x, y, 850, c);
    }
  }
}  

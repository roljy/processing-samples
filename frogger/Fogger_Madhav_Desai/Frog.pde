class Frog extends Rectangle{
  
  Log attached = null;
  
  Frog(float x, float y, float w){
    super(x, y, w, w);
  }
  
  void attach(Log log){
    attached = log; 
  }
  
  void update(){
    if(attached != null){
      frog.x += attached.speed;
    }
    
    x = constrain(x, 0, width-w);
  }
  
  void show(){
    fill(0, 255, 0);
    image(frogC, x, y); // add image here
  }
  
  void move(float xdir, float ydir){
    x += xdir * grid;
    y += ydir * grid;
  }
}

class Paddle {
float x;
float y;
float rectHeight;
float rectWidth;
int type;
float leftPos;
float PSpeed;

Paddle(float posX, float posY, float rW, float rH, int t) {
  
  PSpeed = pSpeed;
  x = posX;
  y = posY;
  rectHeight = rH;
  rectWidth = rW;
  type = t;
  
}
// 0 is left paddle, 1 is player controlled right paddle

void move() {
  
  if(type == 0) {
    
    y = leftPos;
   
       if (y > 500 - rectHeight*multiplier) {
        pSpeed = -abs(pSpeed);
       } 
       
       else if (y < 0) {
      pSpeed = abs(pSpeed);
    }    
    
    leftPos += pSpeed;
    
      if (dist(mouseX, mouseY, 750, height-40)<25 && mousePressed) {
    leftPos = 50;
  }
  
  if (dist(mouseX, mouseY, 650, height-40)<25 && mousePressed) {
    leftPos = 20;
  }
    
  }   
  
  if(type == 1) {
    y = mouseY-rectHeight/2;
    
    if (mouseY<rectHeight/2) {
      pright.y = 0; //top rectangle to make sure it doesnt go off
    }//screen    
    
      if (mouseY>height-rectHeight/2) {
        pright.y = height-rectHeight; //bottom rectangle with the same role
      }
  }
  
}

void display() {
  fill(0, 255, 0);
  
  if(type == 0) {
  rect(x, y, rectWidth, rectHeight*multiplier);
  }
  
  if(type == 1) {
    rect(x, y, rectWidth, rectHeight);
  }
}

float left(){
    return x-rectWidth/2;
  }
  float right(){
    return x+rectWidth/2;
  }
  float top(){
    return y-rectHeight/2;
  }
  float bottom(){
    return y+rectHeight/2;
  }
}

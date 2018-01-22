Paddle p1;
Paddle p2;
boolean p1Up = false;
boolean p1Down = false;
boolean p2Up = false;
boolean p2Down = false;

void setup(){

size(1000,700);
p1 = new Paddle (50, height/2 +30);
p2 = new Paddle (width - 50, height/2 +30);
}

void  draw(){
 background(0); 
 p1.display();
 p2.display();
 if (p1Up == true){
   p1.moveUp();
 }
 if (p2Up == true){
   p2.moveUp();
 }
 if (p1Down == true){
   p1.moveDown();
 }
 if (p2Down == true){
   p2.moveDown();
 }
 
  
  
  
}

class Paddle {
  
  float x; 
  float y;
  float w = 20;
  float h = 60;
  

  
 Paddle (float _x, float _y){
    y = _y;
    x = _x;
    
  }
  
  void display (){
    fill (255);
    rect(x,y, w,h);
    
  }
  
  void moveUp(){
    y -= 5;
  }
  
  void moveDown(){
    y += 5;
    
  
}
}









void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      p1Up = true;
    }
    if (keyCode == DOWN) {
      p1Down = true;
    }
  }

  if (key == 'w') {
    p2Up = true;
  }

  if (key == 's') {
    p2Down = true;
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      p1Up = false;
    }
    if (keyCode == DOWN) {
      p1Down = false;
    }
  }

  if (key == 'w') {
    p2Up = false;
  }

  if (key == 's') {
    p2Down = false;
  }
}
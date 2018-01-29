class Paddle {
  float x;
  float y;
  float pw;
  float ph;
  int playerNum;

  Paddle(int player) {
    playerNum = player;
    if (player == 0) {
      x = 30;
      y = height/2;
      pw = 15;
      ph = 100;
    } 
    if (player == 1) {
      y = height/2;
      pw = 15;
      ph = 100;
      x = width-30-pw;
    }
  }

  void update() {
    rectMode(CORNER);
    //a corner mode makes shaping the paddle and collisions more simple
    fill(255);
    rect(x, y, pw, ph);

    if (playerNum == 0) {

      if (p1MoveUp) {
        y-=7;
      } 
      if (p1MoveDown) {
        y+=7;
      }
      if (p1MoveLeft) {
        x-=7;
      } 
      if (p1MoveRight) {
        x+=7;
      }
      if (p1Fire) {
        stroke(255, 0, 0);
        strokeWeight(3);
        line(p1.x+10, p1.y+50, width, p1.y+50);
        if (p1.y + 50 > p2.y && p1.y +50 < p2.y +p2.ph){
          p2.ph = p2.ph/1.1;
        }
      
      }
      
      //if (p1Fire){
      //  float fireBalldX = 5;
      //  float fireBallX = p1.x;
      //  fill(255,0,0);
      //  ellipse (x+10 , p1.y+50, 10,10);
      //  x+=5;
    }
 
  if (playerNum == 1) {

    if (p2MoveUp) {
      y-=7;
    } 
    if (p2MoveDown) {
      y+=7;
    }

    if (p2MoveLeft) {
      x-=7;
    } 
    if (p2MoveRight) {
      x+=7;
    }
    
    if (p2Fire) {
        stroke(255,0,0);
        strokeWeight(3);
        line(p2.x-10, p2.y+50, 0, p2.y+50);
        //if (p2.y + 50 > p1.y && p2.y +50 < p1.y +100){
        //  p1.ph = p1.ph/1.1;
        //}
      
      }
  }
}
}




//void cannon(int shotX)
//{
//  boolean strike = false;
//  for (int i = 0; i < 5; i++)
//  {
//    if ((shotX >= (ballx[i]-ballSize/2)) && (shotX <= (ballx[i]+ballSize/2))) {

//      line(p1.x, p1.y+50, mouseX, p1.x);
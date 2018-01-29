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
    } if (player == 1) {
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
    }
    if (playerNum == 1) {
      if (p2MoveUp) {
        y-=7;
      } 
      if (p2MoveDown) {
        y+=7;
      }
    }
  }
}
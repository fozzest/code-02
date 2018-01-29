
//wk 01 Forrest Whitcomb

//Pong


//attempts from last semester, along with the article  http://drdoane.com/thinking-through-a-basic-pong-game-in-processing/, formed my basis for understanding how to make a functional Pong game
//along with material shown in our first lesson, and exampes of collisions, I created the initial, owrking piong game
//further iterations with the paddle class cleaned up how my final code looked, limiting the parameters that had to be put in manually

//still to come: adjusgments to make it my own type of Pong, ie extra baalls, colourful background



Ball b;
Paddle p1;
Paddle p2;

int p1Score;
int p2Score;


void setup() {
  size(1000, 700);
  p1 = new Paddle(0);
  p2 = new Paddle(1);

  b = new Ball();
}

void draw() {
  background(0);

  b.paddleCollide(p1);
  b.paddleCollide(p2);

  b.update();


  p1.update();
  p2.update();



  textSize(200);
  fill(255);
  textAlign(width/2, height/2);

  text(p1Score, width/2 - 150, 200);
  text(p2Score, width/2 + 100, 200);
}

//taken from classroom example
//helps accuratley start and stop key movments in regards to paddle direction


boolean p1MoveUp = false;
boolean p1MoveDown = false;
boolean p2MoveUp = false;
boolean p2MoveDown = false;

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      p2MoveUp = true;
    }
    if (keyCode == DOWN) {
      p2MoveDown = true;
    }
  } else {
    if (key == 'w') {
      p1MoveUp = true;
    }
    if (key == 's') {
      p1MoveDown = true;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      p2MoveUp = false;
    }
    if (keyCode == DOWN) {
      p2MoveDown = false;
    }
  } else {
    if (key == 'w') {
      p1MoveUp = false;
    }
    if (key == 's') {
      p1MoveDown = false;
    }
  }
}
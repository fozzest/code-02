

class Ball {
  float x;   
  float y;   
  float dx;  
  float dy;  

  Ball() {
    x = width/2;
    y = height/2;
    dx = 10;  
    dy =  random(5,-5);
  }


  void update() {
    noStroke();
    fill((random(255,200)),255,255);
    rectMode(CENTER);
    rect(x, y, 30, 30);
    x += dx;
    
    if (x < 0) {
      p2Score++;
      x = width/2;
      y = height/2;
      //make it shoot back at the winner
      dx = -dx;  
      //maintain speed
      dy = random(5,-5);
    }

    if (x > width) {
      p1Score++;
      x = width/2;
      y = height/2;
      //make it shoot back at the winner
      dx = -dx;  
      //maintain speed
      dy = random(5,-5);
    }




    if (y < 0 || y > height) {
      dy *= -1;
      y += dy;
    } else { 
      y += dy;
    }
  }

//collisions have definitley been one of the harder subjects for me, as there is a lot of material and parameters to make not of
//used examples from processing.org
//https://processing.org/examples/circlecollision.html

//the main thing I wasn't doing until looking through examples was accounting for the width and height of the paddle
//this was more of an issue with the height (y-axis), as the natire of the game uses a vertical paddle, with material that stretches far beyond the paddle's vertical centrepoint.

  void paddleCollide(Paddle p) {
    if (x > p.x && x < p.x + p.pw) {
      if (y > p.y && y < p.y + p.ph) {
        dx = -dx;
      }
    }
  }
}
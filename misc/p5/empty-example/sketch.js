function setup() {
  // put setup code here
  createCanvas (600,600);
  console.log("hey");
}

function draw() {
  // put drawing code here
  
  background(255);
  translate (mouseX, mouseY);
  rotate(frameCount);

  triangle(-20,20,0,-20,20,20);
}
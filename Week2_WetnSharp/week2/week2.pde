Drop[] drops = new Drop[5];

void setup() {

  size(600, 600);
  smooth();
  background(255);
  noFill();
  stroke(0);

 
  //the laundry line
  strokeWeight(2);
  beginShape();
  int x = width/2;
  int y = height/2;
  vertex(0, y);
  curveVertex(0, y);
  curveVertex(x-200, y+20);
  curveVertex(x-150, y+30);
  curveVertex(x-100, y+40);
  curveVertex(x-50, y+50);
  curveVertex(x, y+60);
  curveVertex(x+50, y+50);
  curveVertex(x+100, y+40);
  curveVertex(x+150, y+30);
  curveVertex(x+200, y+20);
  curveVertex(width, height/2);
  curveVertex(width, height/2);
  endShape();

  //clothes peg1
  fill(0);
  beginShape();
  int peg1X = 240;
  int pek1Y = 330;
  vertex(peg1X, pek1Y);
  vertex(peg1X+40, pek1Y);
  vertex (peg1X+20, pek1Y+50);
  vertex(peg1X, pek1Y);
  endShape();

  //clothes peg2

  beginShape();
  int peg2X = 320;
  int pek2Y = 330;
  vertex(peg2X, pek2Y);
  vertex(peg2X+40, pek2Y);
  vertex (peg2X+20, pek2Y+50);
  vertex(peg2X, pek2Y);
  endShape();

  //the shirt
  beginShape();
  //the first arm
  vertex (260, 370);
  vertex (210, 400);
  vertex (230, 420);
  vertex (260, 400);
  //the body
  //  vertex (260, 500);
  //  vertex (340, 500);
  //  vertex (340, 400);
  vertex (240, 500);
  vertex (320, 500);
  vertex (340, 400);
  //the second arm
  vertex (370, 420);
  vertex (390, 400);
  vertex (340, 370);
  //the collar
  bezierVertex(280, 450, 240, 280, 280, 450);
  vertex (260, 370);
  endShape();


  for (int i=0;i<drops.length;i++) {
    drops[i] = new Drop();
  }
}

void draw() {
  
 
  
  for (int i=0;i<drops.length;i++) {
    drops[i].drawDrop();
  }
}


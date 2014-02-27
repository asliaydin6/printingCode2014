
class Drop {

  float x;
  float y;

  Drop() {

    x = random (200, 400);
    y = random (400, 600);
  }


  void drawDrop() {

    pushMatrix();
    //translate(width/2, height/2);
    //rotate(PI/6);
    fill(255);
   //ellipse(0, 0, 5, 30);

    for (int i = 2; i < 4; i+=10 ) {
      ellipse(x, y + i*4, i*3, i*8);
      popMatrix();
    }
  }
}


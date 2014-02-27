class Shirt {

  float x= (width/2);
  float y= (height/2);

  Shirt() {
    smooth();
  }

  void display() {
    //the shirt
    beginShape();
    //the first arm
    vertex (x-40, y+70);
    vertex (x-90, y+100);
    vertex (x-70, y+120);
    vertex (x-40, y+100);
    //the body
    //to make the tshirt straight
    //  vertex (260, 500);
    //  vertex (340, 500);
    //  vertex (340, 400);
    //to the side
    vertex (x-60, y+200);
    vertex (x+20, y+200);
    vertex (x+40, y+100);
    //the second arm
    vertex (x+70, y+120);
    vertex (x+90, y+100);
    vertex (x+40, y+70);
    //the collar
    bezierVertex(x-20, y+150, x-60, y-20, x-20, y+150);
    vertex (x-40, y+70);
    endShape();
  }
}


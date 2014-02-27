class Pegs {

  float x = 240;
  float y= 330;

  Pegs() {
  }

  void display() {
    
    //clothes peg1
    fill(0);
    beginShape();
    vertex(x, y);
    vertex(x+40, y);
    vertex (x+20, y+50);
    vertex(x, y);
    endShape();

    //clothes peg2
    beginShape();
    vertex(x+80, y);
    vertex(x+120, y);
    vertex (x+100, y+50);
    vertex(x+80, y);
    endShape();
  }
}


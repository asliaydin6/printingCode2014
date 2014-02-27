class LaundryLine {

  float x = (width/2);
  float y = (height/2);

  LaundryLine() {

  }

  void display() {
    strokeWeight(2);
    beginShape();
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
    curveVertex(x*2, y);
    curveVertex(x*2, y);
    endShape();
  }
}


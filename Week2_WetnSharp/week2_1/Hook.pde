class Hook {

  float x = 400;
  float y = 273;

  Hook() {
  }

  void display() {

    noFill();
    strokeWeight(2);
    stroke(0);
    beginShape();
    vertex(x+37, y+50);
    //bezierVertex(x+68, y-29, x+98, y-28, x+129, y-28);
    bezierVertex(x+124, y+4, x+126, y+45, x+126, y+39);
    bezierVertex(x+126, y+61, x+107, y+80, x+88, y+98);
    vertex(x+98, y+150);
    vertex(x+98, y+150);
    endShape();

    beginShape();
    vertex(x+37, y+50);
    vertex(x+45, y+40);
    vertex(x+47, y+42);
    endShape();

    fill(0);
    ellipse(497, 430, 55, 35);
    
    fill(255);
    noStroke();
    ellipse(497, 456, 60, 35);
    stroke(0);
  }
}


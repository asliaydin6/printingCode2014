import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

import geomerative.*;
import org.apache.batik.svggen.font.table.*;
import org.apache.batik.svggen.font.*;

import processing.pdf.*;

RFont font;

float h = random (0, 1);
float s = random (0, 1);
float b = random (0, 1);

void setup () {
  size(468*2, 684*2);
  smooth();
  beginRecord(PDF, "color.pdf");
  colorMode(HSB, 1, 1, 1);
  background (0.547, .93, .35);

  RG.init(this);
}

void draw() {

  float n = noise(0.15);
  float a = map(n, 0, 1, mouseX, -mouseY);

  pushMatrix();
  translate(90, 0);
  strokeWeight(.015);
  noFill();
  stroke(h++/3, s--*4, b++/4, 45);

  for (int x = 0 ; x < width; x+=n++) {
    for (int y = 0 ; y < height; y+=n++) {
      ellipse(x, y, a+x, a+y);
      rotate(radians(a));
    }
  }
  //  translate(width/2-190, height/2-175);
  //fill(0.058, .96, .98, 100);
  //fill (357/360, .932, .522, 200);
  //fill(200/360, .64, .18);
 fill(59/360,.01, .60);
  
  noStroke();
  font = new RFont("GermaniaOne-Regular.ttf", 60, RFont.CENTER);
  //  font.draw("Life.");
  popMatrix();

  pushMatrix();
  //translate(width/2-75, height/2-100);
  translate(width/2, height/2-100);
  font.draw("Life As We Know It");
  popMatrix();

  pushMatrix();
  translate(width/2, height/2-25);
  font = new RFont("GermaniaOne-Regular.ttf", 36, RFont.CENTER);
  fill(0/360, 0, .96);
  
  noStroke();
  font.draw("Quantified. The Self. Qualified.");
  popMatrix();
  endRecord();
}

void keyPressed() {
  if (key=='s' || key =='S')
    saveFrame("savedImage_###.pdf");
}


import geomerative.*;
import org.apache.batik.svggen.font.table.*;
import org.apache.batik.svggen.font.*;

import processing.pdf.*;

RFont font;

int x;
int y;
void setup()
{
  size(900, 1200);
  smooth();
  noStroke();
  beginRecord(PDF, "color.pdf");
  colorMode(HSB, 360, 100, 100);
  background (223, 37, 50);

  fill(220, 7, 50, 100);
  noStroke();
  rect(0, height-200, width, height);

  RG.init(this);
  pushMatrix();
  fill(255, 0, 100);
  translate(width/2-80, height/2-75);
  font = new RFont ("Roboto-Light.ttf", 60, RFont.LEFT);
  font.draw("ZEN and the Art of");
  popMatrix();

  pushMatrix();
  translate(width/2-250, height/2);
  font.draw("Motorcycle Maintanance");
  popMatrix();

  pushMatrix();
  font = new RFont ("Roboto-Light.ttf", 32, RFont.RIGHT);
  translate(width-50, height-50 );
  font.draw("Robert M. Pirsig");
  popMatrix();

  pushMatrix();
  x = 400;
  y = 600;
  translate(-150, 220);
  noFill();
  stroke(0, 100);
  strokeWeight(30);
  ellipse (x, y/2, 150, 150);
  strokeWeight(3);
  noStroke(); 
  fill(0, 100);
  ellipse (x, y/2, 50, 50);
  noStroke();
  fill(0, 100);
  triangle (x, y/2, x-300, y-300, x-250, y-400);
  popMatrix();

  endRecord();
}


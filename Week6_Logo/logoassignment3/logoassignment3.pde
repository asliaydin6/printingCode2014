import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

import geomerative.*;
import org.apache.batik.svggen.font.table.*;
import org.apache.batik.svggen.font.*;

import processing.pdf.*;

RFont font;
PImage BCKRectangle;

float h = random (0, 1);
float s = random (0, 1);
float b = random (0, 1);

void setup () {
  size(800, 800);
  smooth();
  beginRecord(PDF, "color.pdf");
  colorMode(HSB, 1, 1, 1);
  background (0.547, .93, .35);

  RG.init(this);
  BCKRectangle = loadImage("c.png");
}

void draw() {

  float n = noise(0.15);
  float a = map(n, 0, 1, mouseX, -mouseY);

  pushMatrix();
  translate(90, 0);
  strokeWeight(.015);
  //stroke(1, 1, 0);
  noFill();
  stroke(h++/3, s--*4, b++/4, 45);

  for (int x = 0 ; x < width; x+=n++) {
    for (int y = 0 ; y < height; y+=n++) {
      ellipse(x, y, a+x, a+y);
      rotate(radians(a));
    }
  }
  popMatrix();
  image(BCKRectangle, 0, 0);
  pushMatrix();
  //fill(126/360, 1, 52/100);
  translate(width/2-190, height/2-175);
  fill(0.058, .96, .98);
  noStroke();
  font = new RFont("GermaniaOne-Regular.ttf", 60, RFont.CENTER);
  //rotate(-PI/2);
  font.draw("Life.");
  popMatrix();

  pushMatrix();
  translate(width/2-75, height/2-100);
  font.draw("As We Know It.");
  popMatrix();


  pushMatrix();
  translate(width/2, height-180);
  
//  translate(width/2, height-180);
  font = new RFont("GermaniaOne-Regular.ttf", 36, RFont.CENTER);
  //fill(0.13, .04, .46);
  fill(0/360, 0, .96);
  noStroke();
  font.draw("Quantified.  The Self.  Qualified");
 //font.draw("Quantified.                     Qualified.");
  popMatrix();
  endRecord();
  
  
//  pushMatrix();
//  translate(width/2+10, height-180);
//  font = new RFont("GermaniaOne-Regular.ttf", 48, RFont.CENTER);
// fill(0.058, .96, .98);
//  noStroke();
//  font.draw("The Self.");
//  popMatrix();
//  endRecord();
}

void keyPressed() {
  if (key=='s' || key =='S')
    saveFrame("savedImage_###.pdf");
}


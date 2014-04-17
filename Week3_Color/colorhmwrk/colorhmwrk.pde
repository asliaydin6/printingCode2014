import processing.pdf.*;

import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;


void setup() {
  size(400, 400);
  smooth();
  beginRecord(PDF, "color.pdf");
  colorMode(HSB, 1, 1, 1); 

  //color1 = red
  TColor color1 = TColor.newHSV(0, 1, 1);
  //TColor color1 = TColor.newHSV(random(1), random(1), 1);
  //color2 = yellow
  TColor color2 = TColor.newHSV(50f/360f, 1, 1);
  //TColor color2 = new TColor(color1);
  color2.adjustHSV(0.5, 0, 0);
  //color3 = purple
  TColor color3 = TColor.newHSV(300f/360f, 0.6, 0.3);

  //pink and orange - analagous to red
  TColor color4 = TColor.newHSV(color1.hue() - (30f/360f), 1, 1);
  TColor color5 = TColor.newHSV(color1.hue() + (30f/360f), 1, 1);

   
  background (random(color4.hue(), color5.hue()), random(color4.saturation(), color5.saturation()), random(color4.brightness(), color5.brightness()));

  stroke(random(color3.hue(), color2.hue()), random(color3.saturation(), color2.saturation()), random(color2.brightness(), color3.brightness()));
  strokeWeight (.75);

  for (int i = 0; i < 400; i += 8) {
    //  for (int i = 200; i < 400; i += 8) {
    line(0, i, width/2, 0);
  }
  for (int i = 0; i < 400; i += 8) {
    //  for (int i = 200; i < 400; i += 8) {
    line(width, i, width/2, 0);
  }
  for (int i = 0; i < 400; i += 8) {
    //  for (int i = 0; i < 200; i += 8) {
    line(0, i, width/2, height);
  }
  for (int i = 0; i < 400; i += 8) {
    line(width, i, width/2, height);
  }
  endRecord();
}


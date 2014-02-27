//import processing.pdf.*;


import processing.opengl.*;
import geomerative.*;

//-----------------------------------------------------
Particle p;
ArrayList particles;

RFont font;
RShape s;
float distMin=40;

//-----------------------------------------------------
void setup() {
  size(1200, 400, OPENGL);
  //beginRecord(PDF, "disease.pdf");
  colorMode(HSB, 360, 100, 100);
  smooth();
  particles = new ArrayList();

  RG.init(this);
  RCommand.setSegmentLength(10);

  font = new RFont("FreeSans.ttf", 250, RFont.CENTER);
  RGroup maGroupe = font.toGroup("DISEASE");
  RPoint[] points = maGroupe.getPoints();

  for (int i=0;i<points.length;i++) {
    particles.add(new Particle(points[i].x, points[i].y, 3));
  }
}

//-----------------------------------------------------
void draw() {

  translate(width/2, 300);
  background(60, 100, 10);

  fill(350, 100, 100);
  strokeWeight(.5);
  stroke(350, 100, 100);

  for (int i=0;i<particles.size();i++) {
    Particle p = (Particle) particles.get(i);
    p.draw();

    float dpart=0;
    for (int j =0;j<particles.size();j++) {

      Particle pj = (Particle)particles.get(j);
      dpart = p.distance(pj);

      if (dpart <= distMin) {
        //stroke(255, map(dpart, 0, distMin, 255, 0));
        line(p.x, p.y, pj.x, pj.y);
      }
    }
  }
}
void keyPressed() {
  if (key=='s' || key =='S')
    saveFrame("savedImage_###.pdf");
  //   endRecord();
  //      exit();
}


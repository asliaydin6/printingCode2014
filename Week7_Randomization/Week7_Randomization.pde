import geomerative.*;
import processing.pdf.*;


int x = 300;
int y = 400;


void setup() 
{
  size(600, 600); 
  smooth();
  beginRecord(PDF, "olivetti.pdf");
  background(#FBFAF8);
  strokeWeight(2);
  stroke(#C5C7C4);

  RG.init(this);
  RCommand.setSegmentLength(25);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);

  RShape line = RShape.createLine(0, 400, width, 400);
  RPolygon lineOutline = line.toPolygon();
  // our RShape only holds a single path with a single contour
  // so let's just loop through those points
  for (int i = 0; i < lineOutline.contours[0].points.length; i++)
  {
    // grab each point
    RPoint curPoint = lineOutline.contours[0].points[i];
    curPoint.x += random(-3, 3);
    curPoint.y += random(-3, 3);
  } 

  lineOutline.draw();

  noStroke();

  ///////////////1ST TRAINGLE////////////////
  RShape triangle1 = new RShape();
  fill(#5E9D42);
  triangle1.addMoveTo(x-250, y);
  triangle1.addLineTo(x-240, y-100);
  triangle1.addLineTo(x-340, y-80); 
  triangle1.addLineTo(x-250, y);
  triangle1.draw();

  RShape triangle1a = new RShape();
  fill(#1A3405);
  triangle1a.addMoveTo(x-240, y-100);
  triangle1a.addLineTo(x-350, y-80);
  triangle1a.addLineTo(x-310, y-20); 
  triangle1a.addLineTo(x-240, y-100);
  triangle1a.draw();

  if (triangle1.intersects(triangle1a))
  {
    RShape diff = triangle1.intersection(triangle1a);
    fill(#30540A);
    diff.draw();
  }

  ///////////////2ND TRAINGLE////////////////
  RShape triangle2 = new RShape();
  fill(#8E6509);

  triangle2.addMoveTo(x-250, y);
  triangle2.addLineTo(x-230, y-220);
  triangle2.addLineTo(x-170, y-220); 
  triangle2.addLineTo(x-250, y);
  triangle2.draw();

  RShape triangle2a = new RShape();
  fill(#FEEA29);
  triangle2a.addMoveTo(x-170, y);
  triangle2a.addLineTo(x-170, y-220);
  triangle2a.addLineTo(x-230, y-220); 
  triangle2a.addLineTo(x-170, y);
  triangle2a.draw();

  if (triangle2.intersects(triangle2a))
  {
    RShape diff = triangle2.intersection(triangle2a);
    fill(#E5A60D);
    diff.draw();
  }
  ///////////////3RD TRAINGLE////////////////
  RShape triangle3 = new RShape();
  fill(#1A3405);
  triangle3.addMoveTo(x-170, y+80);
  triangle3.addLineTo(x-170, y-120);
  triangle3.addLineTo(x-130, y-130); 
  triangle3.addLineTo(x-170, y+80);
  triangle3.draw();

  RShape triangle3a = new RShape();
  fill(#5E9D42);
  triangle3a.addMoveTo(x-90, y+100);
  triangle3a.addLineTo(x-130, y-130);
  triangle3a.addLineTo(x-170, y-120); 
  triangle3a.addLineTo(x-90, y+100);
  triangle3a.draw();

  if (triangle3.intersects(triangle3a))
  {
    RShape diff = triangle3.intersection(triangle3a);
    fill(#30540A);
    diff.draw();
  }

  RShape triangle3b = new RShape();
  fill(#FFFFF3);
  triangle3b.addMoveTo(x-157, y+10);
  triangle3b.addLineTo(x-142, y-40);
  triangle3b.addLineTo(x-125, y+10); 
  triangle3b.addLineTo(x-157, y+10);
  triangle3b.draw();

  ///////////////4TH TRAINGLE////////////////
  RShape triangle4 = new RShape();
  fill(#490506);
  triangle4.addMoveTo(x-110, y);
  triangle4.addLineTo(x-142, y-220);
  triangle4.addLineTo(x-30, y-220); 
  triangle4.addLineTo(x-110, y);
  triangle4.draw();

  RShape triangle4a = new RShape();
  fill(#D9250C);
  triangle4a.addMoveTo(x-30, y);
  triangle4a.addLineTo(x-30, y-220);
  triangle4a.addLineTo(x-142, y-220); 
  triangle4a.addLineTo(x-30, y);
  triangle4a.draw();

  if (triangle4.intersects(triangle4a))
  {
    RShape diff = triangle4.intersection(triangle4a);
    fill(#7D0D09);
    diff.draw();
  }

  ///////////////5TH TRAINGLE////////////////
  RShape triangle5 = new RShape();
  fill(#546E7D);
  triangle5.addMoveTo(x-30, y);
  triangle5.addLineTo(x-30, y-120);
  triangle5.addLineTo(x+10, y-120); 
  triangle5.addLineTo(x-30, y);
  triangle5.draw();

  RShape triangle5a = new RShape();
  fill(#BAC7D0);
  triangle5a.addMoveTo(x-30, y-120);
  triangle5a.addLineTo(x+10, y-120);
  triangle5a.addLineTo(x-10, y-60); 
  triangle5a.addLineTo(x-30, y-120);
  triangle5a.draw();

  ///////////////6TH TRAINGLE////////////////
  RShape triangle6 = new RShape();
  fill(#BAC7D0);
  triangle6.addMoveTo(x+10, y-120);
  triangle6.addLineTo(x+70, y+80);
  triangle6.addLineTo(x-10, y+20); 
  triangle6.addLineTo(x+10, y-120);
  triangle6.draw();

  RShape triangle6a = new RShape();
  fill(#BAC7D0);
  triangle6a.addMoveTo(x-10, y+20);
  triangle6a.addLineTo(x+10, y-120);
  triangle6a.addLineTo(x+50, y-180); 
  triangle6a.addLineTo(x-10, y+20);
  triangle6a.draw();

  if (triangle6.intersects(triangle6a))
  {
    RShape diff = triangle6.intersection(triangle6a);
    fill(#546E7D);
    diff.draw();
  }
  ///////////////7TH TRAINGLE////////////////
  RShape triangle7 = new RShape();
  fill(#8E6509);
  triangle7.addMoveTo(x+70, y+80);
  triangle7.addLineTo(x+50, y-180);
  triangle7.addLineTo(x+110, y-120); 
  triangle7.addLineTo(x+70, y+80);
  triangle7.draw();

  RShape triangle7a = new RShape();
  fill(#FEEA29);
  triangle7a.addMoveTo(x+50, y-180);
  triangle7a.addLineTo(x+110, y-120);
  triangle7a.addLineTo(x+115, y+40); 
  triangle7a.addLineTo(x+50, y-180);
  triangle7a.draw();

  if (triangle7.intersects(triangle7a))
  {
    RShape diff = triangle7.intersection(triangle7a);
    fill(#E5A60D);
    diff.draw();
  }

  RShape triangle7b = new RShape();
  fill(#FBFAF8);
  triangle7b.addMoveTo(x+85, 410);
  triangle7b.addLineTo(x+104, 410);
  triangle7b.addLineTo(x+92, 370); 
  triangle7b.addLineTo(x+85, 410);
  triangle7b.draw();


  ///////////////8TH TRAINGLE////////////////

  RShape triangle8 = new RShape();
  fill(#1A3405);
  triangle8.addMoveTo(x+115, y); 
  triangle8.addLineTo(x+110, y-90);
  triangle8.addLineTo(x+150, y-80); 
  triangle8.addLineTo(x+115, y);

  triangle8.draw();

  RShape triangle8a = new RShape();
  fill(#5E9D42);
  triangle8a.addMoveTo(x+155, y);
  triangle8a.addLineTo(x+155, y-80);
  triangle8a.addLineTo(x+110, y-90); 
  triangle8a.addLineTo(x+155, y);
  triangle8a.draw();

  if (triangle8.intersects(triangle8a))
  {
    RShape diff = triangle8.intersection(triangle8a);
    fill(#30540A);
    diff.draw();
  }

  ///////////////9TH TRAINGLE////////////////
  RShape triangle9 = new RShape();
  fill(#490506);
  triangle9.addMoveTo(x+155, y); 
  triangle9.addLineTo(x+155, y/2);
  triangle9.addLineTo(x+205, y-210); 
  triangle9.addLineTo(x+155, y);
  triangle9.draw();

  RShape triangle9a = new RShape();
  fill(#D9250C);
  triangle9a.addMoveTo(x+200, y);
  triangle9a.addLineTo(x+155, y/2);
  triangle9a.addLineTo(x+205, y-210); 
  triangle9a.addLineTo(x+200, y);
  triangle9a.draw();

  if (triangle9.intersects(triangle9a))
  {
    RShape diff = triangle9.intersection(triangle9a);
    fill(#7D0D09);
    diff.draw();
  }

  ///////////////10TH TRAINGLE////////////////
  RShape triangle10 = new RShape();
  fill(#8E6509);
  triangle10.addMoveTo(x+200, y); 
  triangle10.addLineTo(x+203, y-90);
  triangle10.addLineTo(x+300, y-100); 
  triangle10.addLineTo(x+200, y);
  triangle10.draw();

  RShape triangle10a = new RShape();
  fill(#FEEA29);
  triangle10a.addMoveTo(x+300, y);
  triangle10a.addLineTo(x+203, y-90);
  triangle10a.addLineTo(x+300, y-100); 
  triangle10a.addLineTo(x+300, y);
  triangle10a.draw();

  if (triangle10.intersects(triangle10a))
  {
    RShape diff = triangle10.intersection(triangle10a);
    fill(#E5A60D);
    diff.draw();
  }
  endRecord();
}


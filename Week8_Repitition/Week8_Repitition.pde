import processing.pdf.*;
int symbolSize = 50;
float spacing = symbolSize * 0.4;
float noiseVal;
float noiseScale=0.005;

void setup()
{
  size(600, 600);
  smooth();
  beginRecord(PDF, "ocolus.pdf");
  background(230, 230, 230);
  noStroke();


  for (int x = 0; x < width; x += spacing)
  {
    for (int y = 0; y < height; y += spacing)
    {
      //      noiseDetail(3, 0.5);
      //      noiseVal = noise((x) * noiseScale, (y) * noiseScale);
      //      stroke(0 + (noiseVal*160));
      //      point(x,y);
      drawOculus(x, y);
    }


    fill(255);
    beginShape();
    vertex(0, 0);
    vertex(0, height/2);
    curveVertex(150+200, height/2-100);
    curveVertex(200+200, height/2-110);
    curveVertex(300+200, height/2-115);
    curveVertex(400+200, height/2-110);
    curveVertex(450+200, height/2-100);
    // curveVertex(width, height/2);
    vertex(width, height/2);
    vertex(width, 0);
    endShape();


    beginShape();
    vertex(0, height);
    vertex(0, height/2);
    curveVertex(150+200, height/2+100);
    curveVertex(200+200, height/2+110);
    curveVertex(300+200, height/2+115);
    curveVertex(400+200, height/2+110);
    curveVertex(450+200, height/2+100);
    //curveVertex(width, height/2);
    vertex(width, height/2);
    vertex(width, height);
    endShape();
  }
  endRecord();
}
void drawOculus (int x, int y)
{
  pushMatrix();
  translate (x, y);
  for (int i = 0; i < 6; i++) {
    fill(#141918);
    ellipse(x, y, symbolSize * 0.8, symbolSize * 0.5);
    fill(255);
    ellipse(x, y, symbolSize * 0.3, symbolSize * 0.3);
    fill(#5499FF);
    ellipse(x, y, symbolSize * 0.15, symbolSize * 0.15);
    rotate(radians(90));
  }
  popMatrix();
}


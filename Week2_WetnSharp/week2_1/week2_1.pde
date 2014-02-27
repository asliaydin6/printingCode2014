import processing.pdf.*;

Drop[] drops = new Drop[5];
LaundryLine L;
Pegs P;
Shirt S;
Hook H;

void setup() {
  size(600, 600);
  beginRecord (PDF, "wsharp.tiff");
  background(255);
  smooth();

  L = new LaundryLine();  
  P = new Pegs();  
  S = new Shirt();
  H = new Hook();

  for (int i=0;i<drops.length;i++) {
    drops[i] = new Drop();
  }

  L.display();
  P.display();
  S.display();
  H.display();

  for (int i=0;i<drops.length;i++) {
    drops[i].display();
  }

  println("Finished.");
  endRecord();
}


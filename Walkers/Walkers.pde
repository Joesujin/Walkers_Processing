Walker w[] = new Walker[1000];
//import processing.pdf.*;

boolean rec = false;

void setup()
{
  for (int i =0; i < w.length; i++)
  {
    w[i] = new Walker(random(255));
  }
  size (1920, 1080, P2D);
  background(0);
  smooth(8);
}

void draw()
{  
  for (int i =0; i < w.length; i++)
  {
    w[i].step();
    w[i].display();

    if (rec)
    {
       saveFrame("wall/Wall_###.tiff");

      //beginRecord(PDF, "frame-####.pdf");
      //endRecord();
    }
  }
}

void keyPressed()
{
  if (key == 'r' || key == 'R')
  {
    rec = !rec;
  }
}

Walker w[] = new Walker[1000];

boolean rec = false;

void setup()
{
  for(int i =0; i < w.length; i++)
  {
  w[i] = new Walker(random(255));
  }
  size (1920,1080);
  background(0);
  
}

void draw()
{  for(int i =0; i < w.length; i++)
  {
  w[i].step();
  w[i].display();
  
  if(rec)
  {
  saveFrame("wall/pics####.jpg");
  }

  }

}

void keypressed()
{
  if(key == 'r' || key == 'R')
  {
    rec = !rec;
  }
}

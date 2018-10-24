class Walker
{
  float x;
  float y;
  float col;
  int diam = 50;
  
  Walker(float tempC)
  {
    x =width/6;
    y = 0;
    col = tempC;
  }
  
  void step()
  {
    int r = int(random(4));
    
    if ( r == 0)
    x= x+5;
    else if ( r == 1)
    x=x-4;
        else if ( r == 2)
    y = y+5;
        else if ( r == 3)
    y = y-4;
  }
  
  void display()
  {
    fill(0);
    stroke(col,20,50);
    ellipse(x,y,diam,diam);
  }
}

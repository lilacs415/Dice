void setup()
{
  size(500, 600);
  noLoop();
  textAlign(CENTER);
}
void draw()
{
  background((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  int sum = 0;
  for (int i = 25; i < 500; i+=100)
  {
    for (int j = 25; j < 500; j+=100)
    {
    Die jane = new Die(i, j);
    jane.show();
    sum = sum + jane.numPips;
    }
  }
  fill(255);
  rect(165, 515, 170, 45);
  textSize(32);
  fill(0);
  text("Total: " + sum, 250, 550);
}
void mousePressed()
{
  redraw();
}
class Die
{
  int numPips, myX, myY;
  Die(int x, int y)
  {
    numPips = (int)(Math.random()*6+1);
    myX = x;
    myY = y;
  }
  void show()
  {
    fill(255);
    stroke(0);
    strokeWeight(3);
    rect(myX, myY, 50, 50, 5);
    if (numPips == 1)
    {
      fill(0);
      ellipse(myX+25, myY+25, 5, 5);
    }
    if (numPips == 2)
    {
      fill(0);
      ellipse(myX+12, myY+12, 5, 5);
      ellipse(myX+38, myY+38, 5, 5);
    }
    if (numPips == 3)
    {
      fill(0);
      ellipse(myX+25, myY+25, 5, 5);
      ellipse(myX+12, myY+12, 5, 5);
      ellipse(myX+38, myY+38, 5, 5);
    }
    if (numPips == 4)
    {
      fill(0);
      ellipse(myX+12, myY+12, 5, 5);
      ellipse(myX+38, myY+38, 5, 5);
      ellipse(myX+38, myY+12, 5, 5);
      ellipse(myX+12, myY+38, 5, 5);
    }
    if (numPips == 5)
    {
      fill(0);
      ellipse(myX+12, myY+12, 5, 5);
      ellipse(myX+38, myY+38, 5, 5);
      ellipse(myX+38, myY+12, 5, 5);
      ellipse(myX+12, myY+38, 5, 5);
      ellipse(myX+25, myY+25, 5, 5);
    }
    if (numPips == 6)
    {
      fill(0);
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+40, myY+40, 5, 5);
      ellipse(myX+40, myY+10, 5, 5);
      ellipse(myX+10, myY+40, 5, 5);
      ellipse(myX+10, myY+25, 5, 5);
      ellipse(myX+40, myY+25, 5, 5);
    }
  }
}

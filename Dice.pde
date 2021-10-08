int sum = 0;
void setup()
{
  size(500, 500);
  noLoop();
  background(180, 180, 255);
  
}
void draw()
{
  for (int y = 20; y < 460; y+=43) {
    for (int x = 20; x < 460; x+=43) {
      Die bob = new Die(x, y);
      bob.roll();
      bob.show();
      sum = sum + bob.valoo;
    }
  }
  fill(180, 180, 255);
  rect(460, 482, 200, 200);
  textSize(20);
  fill(0, 0, 0);
  text(sum, 460, 498);
  sum = 0;
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int valoo, myX, myY;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    valoo = 0;
  }
  void roll()
  {
    valoo = (int)(Math.random()*6+1);
  }
  void show()
  {
    stroke(0);
    fill(0, 0, 0);
    rect(myX, myY, 30, 30);
    fill(255, 0, 0);
    noStroke();
    if (valoo == 1) {
      ellipse(myX + 15, myY + 15, 4, 4);
    } else if (valoo == 2) {
      fill(255, 255, 0);
      ellipse(myX + 22, myY + 22, 4, 4);
      ellipse(myX + 8, myY + 8, 4, 4);
    } else if (valoo == 3) {
      fill(0, 255, 0);
      ellipse(myX + 15, myY + 15, 4, 4);
      ellipse(myX + 22, myY + 8, 4, 4);
      ellipse(myX + 8, myY + 22, 4, 4);
    } else if (valoo == 4) {
      fill(0, 255, 255);
      ellipse(myX + 22, myY + 8, 4, 4);
      ellipse(myX + 8, myY + 22, 4, 4);
      ellipse(myX + 8, myY + 8, 4, 4);
      ellipse(myX + 22, myY + 22, 4, 4);
    } else if (valoo == 5) {
      fill(255, 0, 255);
      ellipse(myX + 22, myY + 8, 4, 4);
      ellipse(myX + 8, myY + 22, 4, 4);
      ellipse(myX + 8, myY + 8, 4, 4);
      ellipse(myX + 22, myY + 22, 4, 4);
      ellipse(myX + 15, myY + 15, 4, 4);
    } else {
      fill(0, 0, 255);
      ellipse(myX + 8, myY + 8, 4, 4);
      ellipse(myX + 8, myY + 15, 4, 4);
      ellipse(myX + 8, myY + 22, 4, 4);
      ellipse(myX + 22, myY + 8, 4, 4);
      ellipse(myX + 22, myY + 15, 4, 4);
      ellipse(myX + 22, myY + 22, 4, 4);
    }
    //textSize(20);
    //text(valoo, myX + 9, myY+22);

  }
}




void setup()
{
  noLoop();
  size(500, 550);
}
void draw()
{
  //clear();
  //background(170);
  text("HI",0,0);
  int sum = 0;
  for (int j = 0; j < 500; j += 50){
    for (int i = 0; i < 500; i += 50){
      Die dice = new Die(i, j);
      dice.show(); sum += dice.number;
    }
  }
  textSize(26); 
  text("Total: " +sum,187,535);
  //your code here
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY, number;
  Die(int x, int y) //constructor
  {
    myX = x; myY = y;
    number = (int)(Math.random() * 6) + 1;
    System.println(myX);
    System.println(myY);
    System.println(number);
  }
  //void roll()
  //{
    //your code here
  //}
  void show()
  {
    rect(myX, myY, 50, 50, 7);
    fill(0);
    if (number == 1){
      circle(myX + 25, myY + 25, 8);
    }else if (number == 2){
      circle(myX + 10, myY + 10, 8);
      circle(myX + 40, myY + 40, 8);
    }else if (number == 3){
      circle(myX + 25, myY + 25, 8);
      circle(myX + 10, myY + 10, 8);
      circle(myX + 40, myY + 40, 8);
    }else if (number == 4){
      circle(myX + 10, myY + 40, 8);
      circle(myX + 40, myY + 10, 8);
      circle(myX + 10, myY + 10, 8);
      circle(myX + 40, myY + 40, 8);
    }else if (number == 5){
      circle(myX + 25, myY + 25, 8);
      circle(myX + 10, myY + 40, 8);
      circle(myX + 40, myY + 10, 8);
      circle(myX + 10, myY + 10, 8);
      circle(myX + 40, myY + 40, 8);
    }else {
      circle(myX + 10, myY + 40, 8);
      circle(myX + 25, myY + 40, 8);
      circle(myX + 25, myY + 10, 8);
      circle(myX + 40, myY + 10, 8);
      circle(myX + 10, myY + 10, 8);
      circle(myX + 40, myY + 40, 8);
    }
    fill(255);
  }
}

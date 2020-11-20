class Star 
{
  private int myX, myY, myHue;
  public Star(){
   myX=(int)(Math.random()*400);
   myY=(int)(Math.random()*400);
   myHue=color(255, 100, 0);
  }
  public void show(){
    fill(myHue);
    ellipse(myX, myY, 3, 3);
  }
}

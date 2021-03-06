class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 3;   
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;   
    yCorners[0] = -8;   
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    myColor = 255;
    myCenterX = 200;
    myCenterY = 200;  
    myXspeed = 0;
    myYspeed = 0; 
    myPointDirection = 0;     
  }
  public void setXspeed(double x){
    myXspeed=x;
  }
  public void setYspeed(double x){
    myYspeed=x;
  }
  public void hyperspace(){
    background(0);
    myCenterX=(int)(Math.random()*400);
    myCenterY=(int)(Math.random()*400);
    myPointDirection=Math.random()*360;
    myXspeed=0;
    myYspeed=0;
  }
  public float getX(){
    return (float)myCenterX;
  }
  public float getY() {
    return (float)myCenterY; 
  }
  public float getPointDirection(){
    return (float)myPointDirection; 
  }
}

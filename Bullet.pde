class Bullet extends Floater {
  public Bullet (Spaceship bob) {
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myPointDirection = bob.getPointDirection();
    accelerate(6);
    myColor=50;
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move(){
    super.move();
  }
  public float getX(){
    return (float)myCenterX;
  }
  public float getY() {
    return (float)myCenterY; 
  }
}

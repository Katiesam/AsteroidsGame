Spaceship bob = new Spaceship();
Star [] julie = new Star[200];

public void setup() 
{
  size(400,400);
  background(0);
  for (int i=0; i<julie.length; i++){
    julie[i] = new Star(); 
  }
}
public void draw() 
{
  background(0);
  for (int i=0; i<julie.length; i++){
    julie[i].show(); 
  }
  bob.move();
  bob.show();
 
}
public void keyPressed()
{
  if(key=='w'){
    
    bob.accelerate(+1);
  }
  if(key=='s'){
    bob.accelerate(-1); 
  }
  if(key=='a'){
    bob.turn(-10); 
  }
  if(key=='d'){
    bob.turn(10);
  }
  if(key=='h'){
    bob.hyperspace(); 
  }
}

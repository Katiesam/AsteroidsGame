Spaceship bob = new Spaceship();
Star [] julie = new Star[200];
ArrayList <Asteroid> melody = new ArrayList <Asteroid> ();
ArrayList <Bullet> pickle = new ArrayList <Bullet> ();
public void setup() 
{
  size(400,400);
  background(0);
  for (int i=0; i<julie.length; i++){
    julie[i] = new Star(); 
  }
  for(int j=0; j<10; j++){
    melody.add(new Asteroid()); 
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
  for (int h=0; h<melody.size(); h++){
    melody.get(h).show();
    melody.get(h).move();
    if (dist(melody.get(h).getX(), melody.get(h).getY(), bob.getX(), bob.getY()) < 20) {
      melody.remove(h); 
    }
      for (int i=0; i<pickle.size(); i++){
        pickle.get(i).show();
        pickle.get(i).move();
        if (dist(pickle.get(i).getX(), pickle.get(i).getY(), melody.get(h).getX(), melody.get(h).getY()) < 20) {
          pickle.remove(i);
          melody.remove(h);
        }
      }
  }
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
  if(key==' '){
    pickle.add(new Bullet(bob));
  }
}

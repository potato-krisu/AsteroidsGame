Spaceship bob = new Spaceship();
public void setup() {
  size(800, 800);
  bob.setDirectionX(400);
  bob.setDirectionY(400);
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  bob.setDirectionX(0);
  bob.setDirectionY(0);
}
public void keyPressed()
{
  if (key == 'r')
  {
    bob.setX((int)(Math.random()*800));
    bob.setY((int)(Math.random()*800));
    bob.setPointDirection((int)(Math.random()*360));
  }
  else if (key == 'w') {bob.accelerate(10);}
  else if (key == 'a') {bob.turn(-5);}
  else if (key == 's') {bob.accelerate(-10);} 
  else if (key == 'd') {bob.turn(5);}
}

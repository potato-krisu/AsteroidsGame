Spaceship bob = new Spaceship();
public void setup() {
  size(600, 600);
  bob.setDirectionX(300);
  bob.setDirectionY(300);
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
    bob.setX((int)(Math.random()*600));
    bob.setY((int)(Math.random()*600));
    bob.setPointDirection((int)(Math.random()*360));
  }
  else if (key == 'w') {bob.accelerate(10);}
  else if (key == 'a') {bob.turn(-5);}
  else if (key == 's') {bob.accelerate(-10);} 
  else if (key == 'd') {bob.turn(5);}
}

Spaceship bob = new Spaceship();
public void setup() {
  size(800, 800);
  fill(0);
  background(255);
}
public void draw() 
{
  background(255);
  bob.show();
  bob.move();
  bob.setDirectionX(0);
  bob.setDirectionY(0);
  //bob.setX(400);
  //bob.setY(400);
}
public void keyTyped()
{
  if (key == 'r')
  {
    bob.setX((int)(Math.random()*800));
    bob.setY((int)(Math.random()*800));
    bob.setDirectionX(Math.random()*800);
    bob.setDirectionY(Math.random()*800);
    bob.setPointDirection((int)(Math.random()*360));
  }
  if (key == 'w')
  {
    bob.accelerate(2);
    
  }
}

Spaceship bob = new Spaceship();
Asteroid[] a = new Asteroid[10];
public void setup() {
  size(800, 600);
  bob.setDirectionX(400);
  bob.setDirectionY(300);
  for (int i = 0; i < 10; i++)
  {
    a[i] = new Asteroid();
    a[i].setX((int)(Math.random()*800));
    a[i].setY((int)(Math.random()*600));
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  bob.setDirectionX(0);
  bob.setDirectionY(0);
  for (int i = 0; i < 10; i++)
  {
    a[i].show();
    a[i].move();
  }
}
public void keyPressed()
{
  if (key == 'r')
  {
    bob.setX((int)(Math.random()*800));
    bob.setY((int)(Math.random()*600));
    bob.setPointDirection((int)(Math.random()*360));
  } else if (key == 'w') {
    bob.accelerate(10);
  } else if (key == 'a') {
    bob.turn(-5);
  } else if (key == 's') {
    bob.accelerate(-10);
  } else if (key == 'd') {
    bob.turn(5);
  }
}
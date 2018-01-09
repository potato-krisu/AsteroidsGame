Spaceship bob = new Spaceship();
Stars[] sky = new Stars[500];
ArrayList <Asteroid> belt = new ArrayList <Asteroid>();
ArrayList <Bullet> pew = new ArrayList <Bullet>();
public void setup() 
{
  size(900, 600);
  for (int i = 0; i < sky.length; i++)//make stars
  {
    sky[i] = new Stars();
  }  
  for (int i = 0; i < 5; i++)
  {
    belt.add(new Asteroid());
  }
  for (int i = 0; i < pew.size(); i++)
  {
    pew.add(new Bullet(bob));
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < sky.length; i++) //show stars
  {
    sky[i].show();
  }
  for (int i = 0; i < belt.size(); i++)
  {
    belt.get(i).show();
    belt.get(i).move();

    for (int j = 0; j < pew.size()-1; j++)
    {
      if (dist(pew.get(j).getX(), pew.get(j).getY(), belt.get(i).getX(), belt.get(i).getY()) < 30)
      {
        belt.remove(i);
      }
    }
  }

  if (belt.size() <7)
  {
    belt.add(new Asteroid());
  }

  bob.show();
  bob.move();

  for (int i = 0; i < pew.size(); i++)
  {
    pew.get(i).move();
    pew.get(i).show();
  }
}

public void keyTyped()
{
  //hyperspace
  if (key == 'h')
  {
    bob.setX((int)(Math.random()*900));
    bob.setY((int)(Math.random()*600));
    bob.setDirectionX(450);
    bob.setDirectionY(300);
  }  
  //other movements
  else if (key == 'w') {
    bob.accelerate(1);
  } else if (key == 'a') {
    bob.turn(-15);
  } else if (key == 'd') {
    bob.turn(15);
  } else if (key == 32) {
    pew.add(new Bullet(bob));
  }
}
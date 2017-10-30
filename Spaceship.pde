class Spaceship extends Floater
{
  public int xS, yS;
  public Spaceship()
  {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 16;
    yCorners[0] = 0;
    xCorners[1] = -8;
    yCorners[1] = 9;
    xCorners[2] = -5;
    yCorners[2] = 2;
    xCorners[3] = -8;
    yCorners[3] = 0;
    xCorners[4] = -5;
    yCorners[4] = -2;
    xCorners[5] = -8;
    yCorners[5] = -9;
  }
  public void setX(int x) {myCenterX = x;}
  public int getX() {return (int)myCenterX;}
  public void setY(int y) {myCenterY = y;}
  public int getY() {return (int)myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX() {return myDirectionX;}
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY() {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}
  public double getPointDirection() {return myPointDirection;}
}

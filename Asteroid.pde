class Asteroid extends Floater
{
  public Asteroid()
  {
    myColor = 255;
    corners = 11;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 0;
    yCorners[0] = 10;
    xCorners[1] = 6;
    yCorners[1] = 5;
    xCorners[2] = 5;
    yCorners[2] = 3;
    xCorners[3] = 9;
    yCorners[3] = -6;
    xCorners[4] = 3;
    yCorners[4] = -10;
    xCorners[5] = 1;
    yCorners[5] = -9;
    xCorners[6] = -4;
    yCorners[6] = -11;
    xCorners[7] = -9;
    yCorners[7] = -7;
    xCorners[8] = -6;
    yCorners[8] = 0;
    xCorners[9] = -9;
    yCorners[9] = 3;
    xCorners[10] = -7;
    yCorners[10] = 7;
  }
  public void move(){
    myPointDirection+=5;
    myCenterX += 2;    
    myCenterY += 2;
    if(myCenterX >width){myCenterX = 0;}    
    else if (myCenterX<0){myCenterX = width;}    
    if(myCenterY >height){myCenterY = 0;} 
    else if (myCenterY < 0){myCenterY = height;} 
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
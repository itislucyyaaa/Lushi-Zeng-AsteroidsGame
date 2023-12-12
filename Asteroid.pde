class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*400);
    yCorners[0] = (int)(Math.random()*400);
    xCorners[1] = xCorners[0] + 18;
    yCorners[1] = yCorners[0] + 0;
    xCorners[2] = xCorners[0] + 24;
    yCorners[2] = yCorners[0] + 8;
    xCorners[3] = xCorners[0] + 17;
    yCorners[3] = yCorners[0] + 18;
    xCorners[4] = xCorners[0] + 0;
    yCorners[4] = yCorners[0] + 16;
    xCorners[5] = xCorners[0] + 6;
    yCorners[5] = yCorners[0] + 8;
    rotSpeed = (Math.random()*-5)+11;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public void hyperspace(){
    myXspeed=0;
    myYspeed=0;
    myCenterX = (int)(Math.random()*200+200);
    myCenterY = (int)(Math.random()*200+200);
    myPointDirection = (int)(Math.random()*361-180); 
  }
  public void show(){
    fill(255);
    beginShape();
    for (int i = 0; i < corners; i++) {
      vertex(xCorners[i], yCorners[i]);
    }
    endShape(CLOSE);
  }
  public double getX(){
    return xCorners[0];
  }
  public double getY(){
    return yCorners[0];
  }
}

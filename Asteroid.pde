class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 9;
    yCorners[0] = 12;
    xCorners[1] = 27;
    yCorners[1] = 12;
    xCorners[2] = 33;
    yCorners[2] = 20;
    xCorners[3] = 26;
    yCorners[3] = 30;
    xCorners[4] = 9;
    yCorners[4] = 28;
    xCorners[5] = 15;
    yCorners[5] = 20;
    rotSpeed = (Math.random()*-5)+11;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
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

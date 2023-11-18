class Spaceship extends Floater{
  public Spaceship() {
    corners = 4;
    xCorners = new int[]{-16, 20, -16, -4};
    yCorners = new int[]{-16, 0, 16, 0};
    myCenterX = 250;
    myCenterY = 250;
    myColor = color(246, 250, 131);
  }
  public void hyperspace(){
    myXspeed=0;
    myYspeed=0;
    myCenterX = (int)(Math.random()*200+200);
    myCenterY = (int)(Math.random()*200+200);
    myPointDirection = (int)(Math.random()*361-180); 
  }
  public void show() {
    super.show();
  }
}

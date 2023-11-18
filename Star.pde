class Star{
  protected double starX,starY,starSpeed,starAngle;
  protected int starColor;
  public Star(){
    starX=(int)(Math.random()*500);
    starY=(int)(Math.random()*500);
    starColor = color(255,255,255);
  }
  public void move(){
    //starX=starX+(int)(Math.random()*200-100);
    //starY=starY+(int)(Math.random()*200-100);
    starX=(int)(Math.random()*500);
    starY=(int)(Math.random()*500);
  }
  public void show(){
    fill(starColor);
    ellipse((float)starX,(float)starY,5,5);
  }
}

class Ball extends Star{
  public Ball(){
    starX=(int)(Math.random()*500);
    starY=(int)(Math.random()*500);
    starSpeed = (Math.random()*5);
    starAngle = (Math.random()*3*Math.PI);
    starColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  public void move(){
    starX= starX+(Math.cos(starAngle))*starSpeed;
    starY= starY+(Math.sin(starAngle))*starSpeed;
    if(starY<=-500||starY>=1000){
      starY=250;
      starX=250;
    }
  }
  public void show(){
    fill(152,152,152);
    noStroke();
    rect((float)starX,(float)starY,50,50);
  }
}


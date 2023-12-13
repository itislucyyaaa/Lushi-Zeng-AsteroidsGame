Star[] hi;
Spaceship bob;
ArrayList <Asteroid> list;
ArrayList <Bullet> biu; 

public void setup() {
  size(500, 500);
  background(0);
  hi = new Star[70];
  for(int i=0; i<hi.length;i++){
    for(int a=0; a<51; a++){
      hi[a]=new Star();
    }
   hi[i]=new Ball();
  }
  bob = new Spaceship();
  list = new ArrayList <Asteroid>();
  for (int i = 0; i < 10; i++) {
    list.add(new Asteroid());
  }
  biu = new ArrayList <Bullet>();
  frameRate(10);
}

public void draw() {
  background(0);
  for (int i = 0; i < hi.length; i++) {
    hi[i].move();
    hi[i].show();
  }
  bob.show();
  bob.move();
  for (int i = 0; i < list.size(); i++) {
    Asteroid asteroid = list.get(i);
    asteroid.move();
    asteroid.show();
  }
   for (int i=0; i<list.size(); i++){
     list.get(i).move();
     list.get(i).show();
     float d = dist((float)(bob.getX()), (float)(bob.getY()), (float)(list.get(i).getX()), (float)(list.get(i).getY()));
     if(d<20){
       list.remove(i);
       i--;
      }
  }
  for(int i=0; i<biu.size(); i++){
    biu.get(i).move();
    biu.get(i).show();
  }
  for(int a=0; a<biu.size(); a++){
    for(int b=0; b<list.size();b++){
      float d = dist((float)(biu.get(a).getX()), (float)(biu.get(a).getY()),(float)(list.get(b).getX()),(float)(list.get(b).getY()));
      if(d<15 && a!=0 && b!=0){
        biu.remove(a);
        list.remove(b);
        a--;
        b--;
      }
    }
  }
}
public void keyPressed(){
  if(keyPressed){
    if(key == 'a' || key=='A'){
      bob.turn(-10);
    }else if(key == 'd' || key=='D'){
      bob.turn(10);
    }else if(key == 'w' || key=='W'){
      bob.accelerate(1);
    }else if(key == 's' || key=='S'){
      bob.hyperspace();
    }else if(key == ' ' || key == 'b'){
      biu.add(new Bullet(bob));
    }
  }
}

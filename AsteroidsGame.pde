Star[] hi;
Spaceship bob;

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
}

public void keyPressed(){
  if(keyPressed){
    if(key == 'a' || key=='A'){
      bob.turn(-10);
    }
    if(key == 'd' || key=='D'){
      bob.turn(10);
    }
    if(key == 'w' || key=='W'){
      bob.accelerate(1);
    }
    if(key == 's' || key=='S'){
      bob.hyperspace();
    }
  }
}


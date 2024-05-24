/** 
steers left and right randomly
*/
class Bike {
  PVector pos;
  PVector vel;
  ArrayList<PVector> prevPositions;
  
  Bike(){
    pos = new PVector(random(width), random(height));
    vel = PVector.random2D().mult(7);
    prevPositions = new ArrayList<PVector>();
    
  }
  
  void update(){
    prevPositions.add(pos.copy());
    pos.add(vel);
    float steering = map(noise(frameCount/100), 0, 1, -0.1, 0.1);
    
    vel.rotate(steering);
    if (prevPositions.size() > 40){
      prevPositions.remove(0); //not efficient - shifts all elements left one after the removal
    }
    if (pos.x > width || pos.x < 0 || pos.y > height || pos.y < 0){
      pos.x = random(width);
      pos.y = random(height);
    }
    
  }
  
  void display(){
    fill(255, 255, 0, 150);
    circle(pos.x, pos.y, 30);
    
    for (PVector prevPos: prevPositions){
      fill(255, 80);
      noStroke();
      rectMode(CENTER);
      square(prevPos.x, prevPos.y, 10);
    }
  }
}

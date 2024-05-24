class Star {
  PVector pos;
  float speed;
  float depth; //0=at camera; 1=very distant
  
  Star() {
    pos = new PVector(random(0, width), random(0, height));
    speed = random(1, 4);
    depth=random(0.01, 1);
    
  }
  void display() {
    stroke((1-depth) * 255);
    strokeWeight(2);
    float len = 20 * speed * (1 - depth);
    line(pos.x, pos.y, pos.x - len, pos.y);
  }

  void update(float deltaTime) {
    pos.x+= deltaTime * speed * 100;
    if (pos.x > width + 20 * speed) {
      pos.x = -20;
    }
  }
}

class Walker {
  float x;
  float y;
  float range;
  color colour;

  Walker(float r) {
    x = random(width);
    y = random(height);
    range = r;
    colour = color(random(255), random(255), random(255));
  }

  void updateLocation() {
    x += random(range * -1, range);
    y += random(range * -1, range);
  }

  void draw() {
    pushMatrix();
    fill(colour);
    ellipse(x, y, range, range);
    popMatrix();
  }
}

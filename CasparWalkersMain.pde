ArrayList<Walker> walkers;
Bike bike;

Starfield starfield;

float prevTime = millis();

void setup() {
  size(1600, 600);
  createManyWalkers();
  starfield = new Starfield();
  bike = new Bike();
  prevTime = millis();
}

void draw() {
  noStroke();

  background(0);
  
  //used for smoother animation
  float currentTime = millis();
  float  deltaTime = (currentTime - prevTime) / 1000.0; // Convert milliseconds to seconds
  prevTime = currentTime;
  
  starfield.display();
  starfield.update(deltaTime);
  
  bike.display();
  bike.update();
  
  for (Walker walker : walkers) {
    walker.draw();
    walker.updateLocation();
  }
}

void createManyWalkers() {
  walkers = new ArrayList<Walker>();
  for (int i = 0; i < 2; i++) {
    Walker w = new Walker(random(10, 20));
    walkers.add(w);
  }
}

class Starfield {
  ArrayList<Star> stars;

  Starfield() {
    stars = new ArrayList<Star>();
    for (int i = 0; i < 200; i++) {
      Star s = new Star();
      stars.add(s);
    }
  }

  void display() {
    for (Star s : stars) {
      s.display();
    }
  }

  void update(float deltaTime) {
    for (Star s : stars) {
      s.update(deltaTime);
    }
  }
}

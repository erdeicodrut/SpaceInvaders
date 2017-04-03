class SpaceShip {

  public float x,
    y,
    speed = 5;
  public boolean isAlive = true;

  public SpaceShip(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void move(String dir) {
    if (dir == "left") {
      x -= speed;
    }
    if (dir == "right") {
      x += speed;
    }
    if (dir == "down") {
      y += speed;
    }
    if (dir == "up") {
      y -= speed;
    }
  }

  void display(PImage img) {
    imageMode(CENTER);
    image(img, this.x, this.y, Size, Size);
  }
}
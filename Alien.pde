class Alien extends SpaceShip {

  public Alien(float x, float y) {
    super(x, y);
  }
  
  void display(PImage img) {
    imageMode(CENTER);
    image(img, x, y, Size, Size);
  }
}
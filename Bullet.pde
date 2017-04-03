class Bullet {

  public float  x, y;
  public int  speed = 7, Size = 5;

  public Bullet(float x, float y) {
    this.x = x;
    this.y = y;
  }

  // fly away funcion
  public void fly() {
    y -= speed;
  }

  // collision and score +1
  public boolean checkCollision(Alien enemy) {
      return (dist(this.x, this.y, enemy.x, enemy.y) <= (50/2));
  }

  // display function
  public void display() {
    ellipse(x, y, Size, Size);
  }
}